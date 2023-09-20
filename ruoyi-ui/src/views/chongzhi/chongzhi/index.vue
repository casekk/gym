<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="会员名称" prop="memberName">
        <el-input
          v-model="queryParams.memberName"
          placeholder="请输入会员名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="会员类型" prop="typeName">
        <el-input
          v-model="queryParams.typeName"
          placeholder="请输入会员类型"
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
          v-hasPermi="['chongzhi:chongzhi:add']"
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
          v-hasPermi="['chongzhi:chongzhi:edit']"
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
          v-hasPermi="['chongzhi:chongzhi:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['chongzhi:chongzhi:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="chongzhiList" @selection-change="handleSelectionChange">
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

          </el-form>
        </template>
      </el-table-column>

      <el-table-column label="会员名称" align="center" prop="memberName" />
      <el-table-column label="会员类型" align="center" prop="typeName" />
      <el-table-column label="续费金额" align="center" prop="money" />
      <el-table-column label="实收金额" align="center" prop="ssmoney" />
      <el-table-column label="找零金额" align="center" prop="zlmoney" />
      <el-table-column label="续费日期" align="center" prop="date" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.date, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="充值金额" align="center" prop="czjine" />
      <el-table-column label="备注" align="center" prop="beizhu" />
      <el-table-column label="充值状态" align="center" prop="czStatic" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['chongzhi:chongzhi:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['chongzhi:chongzhi:remove']"
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

    <!-- 添加或修改充值管理对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="800px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-row :gutter="5">
          <el-col :span="12">
            <el-form-item label="会员名称" prop="memberid">
              <el-select v-model="form.memberid" placeholder="请选择会员名称" >
                <el-option v-for="(item,index) in optionMembersName" :key="index"
                           :label="item.memberName" :value="item.memberId"></el-option>
              </el-select>
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="会员类型" prop="typeid">
              <el-select v-model="form.typeid" placeholder="请选择会员类型" >
                <el-option v-for="(item,index) in optionTypesName" :key="index"
                           :label="item.typeName" :value="item.typeId"></el-option>
              </el-select>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="5">
          <el-col :span="12">
            <el-form-item label="续费金额" prop="money">
              <el-input v-model="form.money" placeholder="请输入续费金额" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="实收金额" prop="ssmoney">
              <el-input v-model="form.ssmoney" placeholder="请输入实收金额" />
            </el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="5">
          <el-col :span="12">
            <el-form-item label="找零金额" prop="zlmoney">
              <el-input v-model="form.zlmoney" placeholder="请输入找零金额" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="续费日期" prop="date">
              <el-date-picker clearable
                              v-model="form.date"
                              type="date"
                              value-format="yyyy-MM-dd"
                              placeholder="请选择续费日期">
              </el-date-picker>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="5">
          <el-col :span="12">
            <el-form-item label="充值金额" prop="czjine">
              <el-input v-model="form.czjine" placeholder="请输入充值金额" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="备注" prop="beizhu">
              <el-input v-model="form.beizhu" placeholder="请输入备注" />
            </el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="5">
          <el-col :span="12">
            <el-form-item label="充值状态" prop="czStatic">
              <el-input v-model="form.czStatic" placeholder="请输入充值状态" />
            </el-form-item>
          </el-col>
        </el-row>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listChongzhi, getChongzhi, delChongzhi, addChongzhi, updateChongzhi } from "@/api/chongzhi/chongzhi";
import { getAllMembers } from "@/api/member/member";
import { getAllTypes } from "@/api/membertype/membertype";
export default {
  name: "Chongzhi",
  data() {
    return {
      optionMembersName:[],//查询所有成员信息
      optionTypesName:[],//查询所有会员类型名称
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
      // 充值管理表格数据
      chongzhiList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        memberName: null,
        typeName: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        memberid: [
          { required: true, message: "会员编号不能为空", trigger: "blur" }
        ],
        typeid: [
          { required: true, message: "会员卡编号不能为空", trigger: "blur" }
        ],
        money: [
          { required: true, message: "续费金额不能为空", trigger: "blur" }
        ],
        ssmoney: [
          { required: true, message: "实收金额不能为空", trigger: "blur" }
        ],
        zlmoney: [
          { required: true, message: "找零金额不能为空", trigger: "blur" }
        ],
        date: [
          { required: true, message: "续费日期不能为空", trigger: "blur" }
        ],
        czjine: [
          { required: true, message: "充值金额不能为空", trigger: "blur" }
        ],
        beizhu: [
          { required: true, message: "备注不能为空", trigger: "blur" }
        ],
        czStatic: [
          { required: true, message: "充值状态不能为空", trigger: "blur" }
        ],
      }
    };
  },
  created() {
    this.getList();
    this.getAllMember();
    this.getAllType();
  },
  methods: {
    getAllType(){
      getAllTypes().then(response=>{
        this.optionTypesName=response.data;
      })
    },
    getAllMember(){
      getAllMembers().then(response=>{
        this.optionMembersName=response.data;
        console.info(response.data);
      })
    },
    /** 查询充值管理列表 */
    getList() {
      this.loading = true;
      listChongzhi(this.queryParams).then(response => {
        this.chongzhiList = response.rows;
        this.total = response.total;
        this.loading = false;
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
        id: null,
        memberid: null,
        typeid: null,
        money: null,
        ssmoney: null,
        zlmoney: null,
        date: null,
        czjine: null,
        beizhu: null,
        czStatic: null,
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
      this.ids = selection.map(item => item.id)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加充值管理";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getChongzhi(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改充值管理";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != null) {
            updateChongzhi(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addChongzhi(this.form).then(response => {
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
      const ids = row.id || this.ids;
      this.$modal.confirm('是否确认删除充值管理编号为"' + ids + '"的数据项？').then(function() {
        return delChongzhi(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('chongzhi/chongzhi/export', {
        ...this.queryParams
      }, `chongzhi_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
