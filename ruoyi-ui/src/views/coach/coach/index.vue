<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="教练名称" prop="coachName">
        <el-input
          v-model="queryParams.coachName"
          placeholder="请输入教练名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="地址" prop="coachAddress">
        <el-input
          v-model="queryParams.coachAddress"
          placeholder="请输入地址"
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
          v-hasPermi="['coach:coach:add']"
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
          v-hasPermi="['coach:coach:edit']"
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
          v-hasPermi="['coach:coach:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['coach:coach:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="coachList" @selection-change="handleSelectionChange">
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
      <el-table-column label="教练名称" align="center" prop="coachName" />
      <el-table-column label="教练电话" align="center" prop="coachPhone" />
      <el-table-column label="教练性别" align="center" prop="coachSex" />
      <el-table-column label="教练年龄" align="center" prop="coachAge" />
      <el-table-column label="入职时间" align="center" prop="coachData" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.coachData, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="教龄" align="center" prop="teach" />
      <el-table-column label="工资" align="center" prop="coachWages" />
      <el-table-column label="地址" align="center" prop="coachAddress" />
      <el-table-column label="教练状态" align="center" prop="coachStatic" >
        <template v-slot="scope">
          <el-tag type="success" v-if="scope.row.coachStatic==0">
            工作中
          </el-tag>
          <el-tag type="warning" v-if="scope.row.coachStatic==1">
            休假中
          </el-tag>
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
            v-hasPermi="['coach:coach:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['coach:coach:remove']"
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

    <!-- 添加或修改教练管理对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="800px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-row :gutter="5">
          <el-col :span="12">
            <el-form-item label="教练名称" prop="coachName">
              <el-input v-model="form.coachName" placeholder="请输入教练名称" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="教练电话" prop="coachPhone">
              <el-input v-model="form.coachPhone" placeholder="请输入教练电话" />
            </el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="5">
          <el-col :span="12">
            <el-form-item label="教练年龄" prop="coachAge">
              <el-input v-model="form.coachAge" placeholder="请输入教练年龄" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="教练性别" prop="coachSex">
              <el-select v-model="form.coachSex" placeholder="请选择性别">
                <el-option label="男" value="男"></el-option>
                <el-option label="女" value="女"></el-option>
              </el-select>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="5">
          <el-col :span="12">
            <el-form-item label="入职时间" prop="coachData">
              <el-date-picker clearable
                              v-model="form.coachData"
                              type="date"
                              value-format="yyyy-MM-dd"
                              placeholder="请选择入职时间">
              </el-date-picker>
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="教龄" prop="teach">
              <el-input v-model="form.teach" placeholder="请输入教龄" />
            </el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="5">
          <el-col :span="12">
            <el-form-item label="工资" prop="coachWages">
              <el-input v-model="form.coachWages" placeholder="请输入工资" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="地址" prop="coachAddress">
              <el-input v-model="form.coachAddress" placeholder="请输入地址" />
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
import { listCoach, getCoach, delCoach, addCoach, updateCoach } from "@/api/coach/coach";

export default {
  name: "Coach",
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
      // 教练管理表格数据
      coachList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        coachName: null,
        coachAddress: null,
        coachStatic: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        coachName: [
          { required: true, message: "教练名称不能为空", trigger: "blur" }
        ],
        coachPhone: [
          { required: true, message: "教练电话不能为空", trigger: "blur" }
        ],
        coachSex: [
          { required: true, message: "教练性别不能为空", trigger: "change" }
        ],
        coachAge: [
          { required: true, message: "教练年龄不能为空", trigger: "blur" }
        ],
        coachData: [
          { required: true, message: "入职时间不能为空", trigger: "blur" }
        ],
        teach: [
          { required: true, message: "教龄不能为空", trigger: "blur" }
        ],
        coachWages: [
          { required: true, message: "工资不能为空", trigger: "blur" }
        ],
        coachAddress: [
          { required: true, message: "地址不能为空", trigger: "blur" }
        ],
        coachStatic: [
          { required: true, message: "教练状态不能为空", trigger: "blur" }
        ],
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询教练管理列表 */
    getList() {
      this.loading = true;
      listCoach(this.queryParams).then(response => {
        this.coachList = response.rows;
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
        coachId: null,
        coachName: null,
        coachPhone: null,
        coachSex: null,
        coachAge: null,
        coachData: null,
        teach: null,
        coachWages: null,
        coachAddress: null,
        coachStatic: null,
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
      this.ids = selection.map(item => item.coachId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加教练管理";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const coachId = row.coachId || this.ids
      getCoach(coachId).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改教练管理";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.coachId != null) {
            updateCoach(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addCoach(this.form).then(response => {
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
      const coachIds = row.coachId || this.ids;
      this.$modal.confirm('是否确认删除教练管理编号为"' + coachIds + '"的数据项？').then(function() {
        return delCoach(coachIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('coach/coach/export', {
        ...this.queryParams
      }, `coach_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
