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
      <el-form-item label="教练名称" prop="coachName">
        <el-input
          v-model="queryParams.coachName"
          placeholder="请输入教练名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="课程名称" prop="subname">
        <el-input
          v-model="queryParams.subname"
          placeholder="请输入课程名称"
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
          v-hasPermi="['privatecoachinfo:privatecoachinfo:add']"
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
          v-hasPermi="['privatecoachinfo:privatecoachinfo:edit']"
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
          v-hasPermi="['privatecoachinfo:privatecoachinfo:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['privatecoachinfo:privatecoachinfo:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="privatecoachinfoList" @selection-change="handleSelectionChange">
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
      <el-table-column label="教练名称" align="center" prop="coachName" />
      <el-table-column label="课程名称" align="center" prop="subname" />
      <el-table-column label="购课数量" align="center" prop="count" />
      <el-table-column label="购课总价" align="center" prop="countprice" />
      <el-table-column label="实收金额" align="center" prop="realprice" />
      <el-table-column label="购课日期" align="center" prop="date" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.date, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="课程来源" align="center" prop="state" />
      <el-table-column label="备注" align="center" prop="remark" />
<!--      <el-table-column label="创建时间" align="center" prop="createtime" />-->
<!--      <el-table-column label="修改时间" align="center" prop="modifytime" />-->
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['privatecoachinfo:privatecoachinfo:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['privatecoachinfo:privatecoachinfo:remove']"
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

    <!-- 添加或修改会员私教管理对话框 -->
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
           <el-form-item label="教练名称" prop="coachid">
             <el-select v-model="form.coachid" placeholder="请选择教练名称" >
               <el-option v-for="(item,index) in optionCoachesName" :key="index"
                          :label="item.coachName" :value="item.coachId"></el-option>
             </el-select>
           </el-form-item>
         </el-col>
       </el-row>
        <el-row :gutter="5">
          <el-col :span="12">
            <el-form-item label="课程名称" prop="subjectid">
              <el-select v-model="form.subjectid" placeholder="请选择课程名称" >
                <el-option v-for="(item,index) in optionSubjectsName" :key="index"
                           :label="item.subname" :value="item.subId"></el-option>
              </el-select>
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="购课数量" prop="count">
              <el-input v-model="form.count" placeholder="请输入购课数量" />
            </el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="5">
          <el-col :span="12">
            <el-form-item label="购课总价" prop="countprice">
              <el-input v-model="form.countprice" placeholder="请输入购课总价" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="实收金额" prop="realprice">
              <el-input v-model="form.realprice" placeholder="请输入实收金额" />
            </el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="5">
          <el-col :span="12">
            <el-form-item label="购课日期" prop="date">
              <el-date-picker clearable
                              v-model="form.date"
                              type="date"
                              value-format="yyyy-MM-dd"
                              placeholder="请选择购课日期">
              </el-date-picker>
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="课程来源" prop="state">
              <el-input v-model="form.state" placeholder="请输入课程来源" />
            </el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="5">
          <el-col :span="12">
            <el-form-item label="备注" prop="remark">
              <el-input v-model="form.remark" placeholder="请输入备注" />
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
import { listPrivatecoachinfo, getPrivatecoachinfo, delPrivatecoachinfo, addPrivatecoachinfo, updatePrivatecoachinfo } from "@/api/privatecoachinfo/privatecoachinfo";
import { getAllMembers } from "@/api/member/member";
import { getAllCoaches } from "@/api/coach/coach";
import { getAllSubjects } from "@/api/subject/subject";
export default {
  name: "Privatecoachinfo",
  data() {
    return {
      optionMembersName:[],//查询所有成员信息
      optionCoachesName:[],//查询所有教练信息
      optionSubjectsName:[],//查询所有课程信息
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
      // 会员私教管理表格数据
      privatecoachinfoList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        memberName: null,
        coachName: null,
        subname: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        memberid: [
          { required: true, message: "会员编号不能为空", trigger: "blur" }
        ],
        coachid: [
          { required: true, message: "教练编号不能为空", trigger: "blur" }
        ],
        subjectid: [
          { required: true, message: "课程编号不能为空", trigger: "blur" }
        ],
        count: [
          { required: true, message: "购课数量不能为空", trigger: "blur" }
        ],
        countprice: [
          { required: true, message: "购课总价不能为空", trigger: "blur" }
        ],
        realprice: [
          { required: true, message: "实收金额不能为空", trigger: "blur" }
        ],
        date: [
          { required: true, message: "购课日期不能为空", trigger: "blur" }
        ],
        state: [
          { required: true, message: "课程来源不能为空", trigger: "blur" }
        ],
        remark: [
          { required: true, message: "备注不能为空", trigger: "blur" }
       ]
      }
    };
  },
  created() {
    this.getList();
    this.getAllMember();
    this.getAllCoach();
    this.getAllSubject();
  },
  methods: {
    getAllSubject(){
      getAllSubjects().then(response=>{
        this.optionSubjectsName=response.data;
        console.info(response.data)
      })
    },
    getAllCoach(){
      getAllCoaches().then(response=>{
        this.optionCoachesName=response.data;
      })
    },
    getAllMember(){
      getAllMembers().then(response=>{
        this.optionMembersName=response.data;
      })
    },
    /** 查询会员私教管理列表 */
    getList() {
      this.loading = true;
      listPrivatecoachinfo(this.queryParams).then(response => {
        this.privatecoachinfoList = response.rows;
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
        pid: null,
        memberid: null,
        coachid: null,
        subjectid: null,
        count: null,
        countprice: null,
        realprice: null,
        date: null,
        state: null,
        remark: null,
        admin: null,
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
      this.ids = selection.map(item => item.pid)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加会员私教管理";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const pid = row.pid || this.ids
      getPrivatecoachinfo(pid).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改会员私教管理";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.pid != null) {
            updatePrivatecoachinfo(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addPrivatecoachinfo(this.form).then(response => {
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
      const pids = row.pid || this.ids;
      this.$modal.confirm('是否确认删除会员私教管理编号为"' + pids + '"的数据项？').then(function() {
        return delPrivatecoachinfo(pids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('privatecoachinfo/privatecoachinfo/export', {
        ...this.queryParams
      }, `privatecoachinfo_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
