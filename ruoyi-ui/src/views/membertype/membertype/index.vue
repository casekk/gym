<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="会员卡名称" prop="typeName">
        <el-input
          v-model="queryParams.typeName"
          placeholder="请输入会员卡名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['membertype:membertype:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['membertype:membertype:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['membertype:membertype:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['membertype:membertype:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="membertypeList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column type="expand">
        <template slot-scope="props">
          <el-form label-position="left">
            <el-form-item label="创建时间">
              <span>{{ props.row.createtime }}</span>
            </el-form-item>

            <el-form-item label="修改时间">
              <span>{{ props.row.modifytime }}</span>
            </el-form-item>

            <el-form-item label="会员卡简介">
              <span>{{ props.row.remarkCard }}</span>
            </el-form-item>

          </el-form>
        </template>
      </el-table-column>
      <el-table-column label="会员卡名称" align="center" prop="typeName" />
      <el-table-column label="会员卡有效次数" align="center" prop="typeciShu" />
      <el-table-column label="会员卡有效天数" align="center" prop="typeDay" />
      <el-table-column label="售价" align="center" prop="typemoney" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['membertype:membertype:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['membertype:membertype:remove']"
          >删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改会员卡管理对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="会员卡名称" prop="typeName">
          <el-input v-model="form.typeName" placeholder="请输入会员卡名称" />
        </el-form-item>
        <el-form-item label="会员卡有效次数" prop="typeciShu">
          <el-input v-model="form.typeciShu" placeholder="请输入会员卡有效次数" />
        </el-form-item>
        <el-form-item label="会员卡有效天数" prop="typeDay">
          <el-input v-model="form.typeDay" placeholder="请输入会员卡有效天数" />
        </el-form-item>
        <el-form-item label="售价" prop="typemoney">
          <el-input v-model="form.typemoney" placeholder="请输入售价" />
        </el-form-item>
        <el-form-item label="卡简介" prop="remarkCard">
          <el-input v-model="form.remarkCard" placeholder="请输入卡简介" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listMembertype, getMembertype, delMembertype, addMembertype, updateMembertype } from "@/api/membertype/membertype";

export default {
  name: "Membertype",
  data() {
    return {
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 会员卡管理表格数据
      membertypeList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        typeName: null,
        remarkCard:null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        typeName: [
          { required: true, message: "会员卡名称不能为空", trigger: "blur" }
        ],
        typeciShu: [
          { required: true, message: "会员卡有效次数不能为空", trigger: "blur" }
        ],
        typeDay: [
          { required: true, message: "会员卡有效天数不能为空", trigger: "blur" }
        ],
        typemoney: [
          { required: true, message: "售价不能为空", trigger: "blur" }
        ],
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询会员卡管理列表 */
    getList() {
      this.loading = true;
      listMembertype(this.queryParams).then(response => {
        this.membertypeList = response.rows;
        this.total = response.total;
        this.loading = false;
        console.info(response.rows)
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        typeId: null,
        typeName: null,
        typeciShu: null,
        typeDay: null,
        typemoney: null,
        createtime: null,
        modifytime: null,
        deleted: null
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.typeId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加会员卡管理";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const typeId = row.typeId || this.ids
      getMembertype(typeId).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改会员卡管理";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.typeId != null) {
            updateMembertype(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addMembertype(this.form).then(response => {
              this.$modal.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const typeIds = row.typeId || this.ids;
      this.$modal.confirm('是否确认删除会员卡管理编号为"' + typeIds + '"的数据项？').then(function() {
        return delMembertype(typeIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('membertype/membertype/export', {
        ...this.queryParams
      }, `membertype_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
