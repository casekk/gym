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
          v-hasPermi="['member:member:add']"
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
          v-hasPermi="['member:member:edit']"
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
          v-hasPermi="['member:member:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['member:member:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="memberList" @selection-change="handleSelectionChange">
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
      <el-table-column label="会员电话" align="center" prop="memberPhone" />
      <el-table-column label="会员性别" align="center" prop="memberSex" />
      <el-table-column label="会员年龄" align="center" prop="memberAge" />
      <el-table-column label="会员卡类型" align="center" prop="memberTypes" >
        <template v-slot="scope">
          <el-tag type="info" v-if="scope.row.memberTypes==1">
            日卡
          </el-tag>
          <el-tag type="danger" v-if="scope.row.memberTypes==2">
            周卡
          </el-tag>
          <el-tag type="warning" v-if="scope.row.memberTypes==3">
            月卡
          </el-tag>
          <el-tag  v-if="scope.row.memberTypes==4">
            季卡
          </el-tag>
          <el-tag type="success" v-if="scope.row.memberTypes==5">
            年卡
          </el-tag>
        </template>
      </el-table-column>
      <el-table-column label="成为会员时间" align="center" prop="menberDate" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.menberDate, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="会员生日" align="center" prop="birthday" />
      <el-table-column label="会员状态" align="center" prop="memberStatic" >
        <template v-slot="scope">
          <el-tag type="success" v-if="scope.row.memberStatic==1">
            健身中
          </el-tag>
          <el-tag type="warning" v-if="scope.row.memberStatic==2">
            休息中
          </el-tag>
        </template>
      </el-table-column>
      <el-table-column label="会员金额" align="center" prop="memberbalance" />
      <el-table-column label="续费时间" align="center" prop="memberxufei" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.memberxufei, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
<!--      <el-table-column label="创建时间" align="center" prop="createtime" />-->
<!--      <el-table-column label="修改时间" align="center" prop="modifytime" />-->
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['member:member:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['member:member:remove']"
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

    <!-- 添加或修改会员管理对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="800px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-row :gutter="5">
          <el-col :span="12">
            <el-form-item label="会员名称" prop="memberName">
              <el-input v-model="form.memberName" placeholder="请输入会员名称" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="会员电话" prop="memberPhone">
              <el-input v-model="form.memberPhone" placeholder="请输入会员电话" />
            </el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="5">
          <el-col :span="12">
            <el-form-item label="会员年龄" prop="memberAge">
              <el-input v-model="form.memberAge" placeholder="请输入会员年龄" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="会员性别" prop="memberSex">
              <el-select v-model="form.memberSex" placeholder="请选择性别">
                <el-option label="男" value="男"></el-option>
                <el-option label="女" value="女"></el-option>
              </el-select>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="5">
          <el-col :span="12">
            <el-form-item label="会员卡类型" prop="memberTypes">
              <el-select v-model="form.memberTypes" placeholder="请选择会员卡类型">
                <el-option v-for="(item,index) in optionTypesName" :key="index"
                           :label="item.typeName" :value="item.typeId"></el-option>
              </el-select>
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="成为会员时间" prop="menberDate">
              <el-date-picker clearable
                              v-model="form.menberDate"
                              type="date"
                              value-format="yyyy-MM-dd"
                              placeholder="请选择成为会员时间">
              </el-date-picker>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="5">
          <el-col :span="12">
            <el-form-item label="会员生日" prop="birthday">
              <el-date-picker v-model="form.birthday" placeholder="请输入会员生日" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="会员状态" prop="memberStatic">
              <el-input v-model="form.memberStatic" placeholder="请输入会员状态" />
            </el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="5">
          <el-col :span="12">
            <el-form-item label="会员金额" prop="memberbalance">
              <el-input v-model="form.memberbalance" placeholder="请输入会员金额" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="续费时间" prop="memberxufei">
              <el-date-picker clearable
                              v-model="form.memberxufei"
                              type="date"
                              value-format="yyyy-MM-dd"
                              placeholder="请选择续费时间">
              </el-date-picker>
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
import { listMember, getMember, delMember, addMember, updateMember } from "@/api/member/member";
import { getAllTypes } from "@/api/membertype/membertype";

export default {
  name: "Member",
  data() {
    return {
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
      // 会员管理表格数据
      memberList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        memberName: null,
        memberTypes: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        memberName: [
          { required: true, message: "会员名称不能为空", trigger: "blur" }
        ],
        memberPhone: [
          { required: true, message: "会员电话不能为空", trigger: "blur" }
        ],
        memberSex: [
          { required: true, message: "会员性别不能为空", trigger: "change" }
        ],
        memberAge: [
          { required: true, message: "会员年龄不能为空", trigger: "blur" }
        ],
        memberTypes: [
          { required: true, message: "会员卡类型不能为空", trigger: "blur" }
        ],
        menberDate: [
          { required: true, message: "成为会员时间不能为空", trigger: "blur" }
        ],
        birthday: [
          { required: true, message: "会员生日不能为空", trigger: "blur" }
        ],
      }
    };
  },
  created() {
    this.getList();
    this.getAllType();
  },
  methods: {
    getAllType(){
      getAllTypes().then(response=>{
        this.optionTypesName=response.data;
        console.info(response.data)
      })
    },
    /** 查询会员管理列表 */
    getList() {
      this.loading = true;
      listMember(this.queryParams).then(response => {
        this.memberList = response.rows;
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
        memberId: null,
        memberName: null,
        memberPhone: null,
        memberSex: null,
        memberAge: null,
        memberTypes: null,
        menberDate: null,
        birthday: null,
        memberStatic: null,
        memberbalance: null,
        memberxufei: null,
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
      this.ids = selection.map(item => item.memberId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加会员管理";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const memberId = row.memberId || this.ids
      getMember(memberId).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改会员管理";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.memberId != null) {
            updateMember(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addMember(this.form).then(response => {
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
      const memberIds = row.memberId || this.ids;
      this.$modal.confirm('是否确认删除会员管理编号为"' + memberIds + '"的数据项？').then(function() {
        return delMember(memberIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('member/member/export', {
        ...this.queryParams
      }, `member_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
