<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="商品名称" prop="goodsName">
        <el-input
          v-model="queryParams.goodsName"
          placeholder="请输入商品名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
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
          v-hasPermi="['goodinfo:goodinfo:add']"
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
          v-hasPermi="['goodinfo:goodinfo:edit']"
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
          v-hasPermi="['goodinfo:goodinfo:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['goodinfo:goodinfo:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="goodinfoList" @selection-change="handleSelectionChange">
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
      <el-table-column label="商品名称" align="center" prop="goodsName" />
      <el-table-column label="会员名称" align="center" prop="memberName" />
      <el-table-column label="购买商品数量" align="center" prop="count" />
      <el-table-column label="总价" align="center" prop="price" />
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
            v-hasPermi="['goodinfo:goodinfo:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['goodinfo:goodinfo:remove']"
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

    <!-- 添加或修改商品购买信息管理对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="800px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-row :gutter="5">
          <el-col :span="12">
            <el-form-item label="商品名称" prop="goodsid">
              <el-select v-model="form.goodsid" placeholder="请选择商品名称" >
                <el-option v-for="(item,index) in optionGoodsName" :key="index"
                           :label="item.goodsName" :value="item.goodsId"></el-option>
              </el-select>
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="会员名称" prop="memberid">
              <el-select v-model="form.memberid" placeholder="请选择会员名称" >
                <el-option v-for="(item,index) in optionMembersName" :key="index"
                           :label="item.memberName" :value="item.memberId"></el-option>
              </el-select>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row :gutter="5">
          <el-col :span="12">
            <el-form-item label="购买商品数量" prop="count">
              <el-input v-model="form.count" placeholder="请输入购买商品数量" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="总价" prop="price">
              <el-input v-model="form.price" placeholder="请输入总价" />
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
import { listGoodinfo, getGoodinfo, delGoodinfo, addGoodinfo, updateGoodinfo } from "@/api/goodinfo/goodinfo";
import { getAllGoods } from "@/api/goods/goods";
import { getAllMembers } from "@/api/member/member";
export default {
  name: "Goodinfo",
  data() {
    return {
      optionGoodsName:[],//查询所有商品信息
      optionMembersName:[],//查询所有成员信息
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
      // 商品购买信息管理表格数据
      goodinfoList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        goodsid:null,
        goodsName: null,
        memberid: null,
        memberName: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        goodsid: [
          { required: true, message: "商品编号不能为空", trigger: "blur" }
        ],
        memberid: [
          { required: true, message: "会员编号不能为空", trigger: "blur" }
        ],
        count: [
          { required: true, message: "购买商品数量不能为空", trigger: "blur" }
        ],
        price: [
          { required: true, message: "总价不能为空", trigger: "blur" }
        ],
        remark: [
          { required: true, message: "备注不能为空", trigger: "blur" }
        ],
      }
    };
  },
  created() {
    this.getList();
    this.getGood();
    this.getAllMember();
  },
  methods: {
    getAllMember(){
      getAllMembers().then(response=>{
        this.optionMembersName=response.data;
      })
    },
    getGood(){
      getAllGoods().then(response=>{
        this.optionGoodsName=response.data;
      })
    },
    /** 查询商品购买信息管理列表 */
    getList() {
      this.loading = true;
      listGoodinfo(this.queryParams).then(response => {
        this.goodinfoList = response.rows;
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
        goodsid: null,
        memberid: null,
        count: null,
        price: null,
        remark: null,
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
      this.title = "添加商品购买信息管理";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getGoodinfo(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改商品购买信息管理";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != null) {
            updateGoodinfo(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addGoodinfo(this.form).then(response => {
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
      this.$modal.confirm('是否确认删除商品购买信息管理编号为"' + ids + '"的数据项？').then(function() {
        return delGoodinfo(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('goodinfo/goodinfo/export', {
        ...this.queryParams
      }, `goodinfo_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
