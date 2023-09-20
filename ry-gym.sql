/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80027
 Source Host           : localhost:3306
 Source Schema         : ry-gym

 Target Server Type    : MySQL
 Target Server Version : 80027
 File Encoding         : 65001

 Date: 20/09/2023 23:58:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for adminuser
-- ----------------------------
DROP TABLE IF EXISTS `adminuser`;
CREATE TABLE `adminuser`  (
  `adminId` int NOT NULL AUTO_INCREMENT,
  `adminName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `adminPassword` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`adminId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of adminuser
-- ----------------------------
INSERT INTO `adminuser` VALUES (1, 'admin', '0192023a7bbd73250516f069df18b500');
INSERT INTO `adminuser` VALUES (7, 'liujian', '0192023a7bbd73250516f069df18b500');

-- ----------------------------
-- Table structure for chongzhi
-- ----------------------------
DROP TABLE IF EXISTS `chongzhi`;
CREATE TABLE `chongzhi`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '充值记录编号',
  `memberid` int NULL DEFAULT NULL COMMENT '会员编号',
  `typeid` int NULL DEFAULT NULL COMMENT '会员卡编号',
  `money` int NULL DEFAULT NULL COMMENT '续费金额',
  `ssmoney` int NULL DEFAULT NULL COMMENT '实收金额',
  `zlmoney` int NULL DEFAULT NULL COMMENT '找零金额',
  `date` datetime NULL DEFAULT NULL COMMENT '续费日期',
  `czjine` int NULL DEFAULT NULL COMMENT '充值金额',
  `beizhu` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `czStatic` int NULL DEFAULT NULL COMMENT '充值状态',
  `createtime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `modifytime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `deleted` int NULL DEFAULT 0 COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 90 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chongzhi
-- ----------------------------
INSERT INTO `chongzhi` VALUES (6, 38, 2, 150, 150, 0, '2021-07-07 18:58:24', 0, '', 2, NULL, NULL, 0);
INSERT INTO `chongzhi` VALUES (8, 34, 1, 500, 1000, 0, '2021-07-08 15:29:09', 0, '', 2, NULL, NULL, 0);
INSERT INTO `chongzhi` VALUES (10, 34, NULL, 500, 500, 0, '2021-07-08 15:31:49', 0, '', 1, NULL, NULL, 0);
INSERT INTO `chongzhi` VALUES (11, 25, NULL, 500, 500, 0, '2021-07-08 15:33:08', 0, '', 1, NULL, NULL, 0);
INSERT INTO `chongzhi` VALUES (12, 26, 5, 50, 100, 50, '2021-07-08 15:37:17', 0, '', 2, NULL, NULL, 0);
INSERT INTO `chongzhi` VALUES (13, 26, 1, 500, 1000, 500, '2021-07-08 15:38:22', 0, '', 2, NULL, NULL, 0);
INSERT INTO `chongzhi` VALUES (14, 26, 1, 500, 500, 0, '2021-07-08 15:40:44', 0, '', 2, NULL, NULL, 0);
INSERT INTO `chongzhi` VALUES (15, 26, 1, 500, 500, 0, '2021-07-08 15:42:03', 0, '', 2, NULL, NULL, 0);
INSERT INTO `chongzhi` VALUES (16, 34, 5, 50, 50, 0, '2021-07-08 15:43:00', 0, '', 2, NULL, NULL, 0);
INSERT INTO `chongzhi` VALUES (17, 34, 3, 1000, 1000, 0, '2021-07-08 15:43:33', 0, '', 2, NULL, NULL, 0);
INSERT INTO `chongzhi` VALUES (18, 34, 1, 500, 500, 0, '2021-07-08 15:43:51', 0, '', 2, NULL, NULL, 0);
INSERT INTO `chongzhi` VALUES (19, 34, 2, 150, 1000, 850, '2021-07-08 15:44:37', 0, '', 2, NULL, NULL, 0);
INSERT INTO `chongzhi` VALUES (20, 34, 1, 500, 500, 0, '2021-07-08 15:46:55', 0, '', 2, NULL, NULL, 0);
INSERT INTO `chongzhi` VALUES (32, 25, 1, 500, 500, 0, '2021-07-08 17:43:37', 0, '', 2, NULL, NULL, 0);
INSERT INTO `chongzhi` VALUES (57, 26, NULL, -10, 200, 0, '2021-07-08 18:25:19', 0, '', 1, NULL, NULL, 0);
INSERT INTO `chongzhi` VALUES (58, 26, NULL, 50, 200, 0, '2021-07-08 18:25:35', 0, '', 1, NULL, NULL, 0);
INSERT INTO `chongzhi` VALUES (60, 26, 5, 50, 100, 50, '2021-07-08 18:37:19', 0, '', 2, NULL, NULL, 0);
INSERT INTO `chongzhi` VALUES (61, 25, 2, 150, 200, 50, '2021-07-11 16:28:03', 0, '', 2, NULL, NULL, 0);
INSERT INTO `chongzhi` VALUES (63, 25, 1, 500, 2000, 1500, '2021-07-11 16:43:37', 0, '', 2, NULL, NULL, 0);
INSERT INTO `chongzhi` VALUES (64, 25, 1, 500, 500, 0, '2021-07-11 16:53:43', 0, '', 2, NULL, NULL, 0);
INSERT INTO `chongzhi` VALUES (65, 43, 1, 500, 400, -100, '2021-07-11 16:54:09', 0, '', 2, NULL, NULL, 0);
INSERT INTO `chongzhi` VALUES (66, 35, 2, 150, 200, 50, '2021-07-11 16:54:41', 0, '', 2, NULL, NULL, 0);
INSERT INTO `chongzhi` VALUES (67, 25, 1, 500, 1, -499, '2021-07-11 16:55:47', 0, '', 2, NULL, NULL, 0);
INSERT INTO `chongzhi` VALUES (68, 25, 3, 1000, 1000, 0, '2021-07-11 16:57:01', 0, '', 2, NULL, NULL, 0);
INSERT INTO `chongzhi` VALUES (72, 25, NULL, 200, 200, 0, '2021-07-11 17:03:03', 0, '', 1, NULL, NULL, 0);
INSERT INTO `chongzhi` VALUES (77, 25, NULL, 200, 200, 0, '2021-07-11 17:13:21', 0, '', 1, NULL, NULL, 0);
INSERT INTO `chongzhi` VALUES (78, 26, NULL, 200, 200, 0, '2021-07-11 17:13:37', 0, '', 1, NULL, NULL, 0);
INSERT INTO `chongzhi` VALUES (81, 25, 1, 1000, 1000, 0, '2021-07-11 17:14:32', 0, '', 2, NULL, NULL, 0);
INSERT INTO `chongzhi` VALUES (82, 25, NULL, 200, 200, 0, '2021-07-11 17:14:40', 0, '', 1, NULL, NULL, 0);
INSERT INTO `chongzhi` VALUES (83, 35, NULL, 200, 200, 0, '2021-07-11 17:16:31', 0, '', 1, NULL, NULL, 0);
INSERT INTO `chongzhi` VALUES (84, 37, 3, 1000, 1000, 0, '2021-07-03 15:33:32', 0, '', 2, NULL, NULL, 0);
INSERT INTO `chongzhi` VALUES (85, 35, 1, 500, 500, 0, '2021-07-03 15:33:56', 0, '', 2, NULL, NULL, 0);
INSERT INTO `chongzhi` VALUES (86, 25, NULL, 500, 500, 0, '2021-07-03 15:34:32', 0, '', 1, NULL, NULL, 0);
INSERT INTO `chongzhi` VALUES (87, 34, NULL, 1000, 1000, 0, '2021-07-03 15:35:37', 0, '', 1, NULL, NULL, 0);
INSERT INTO `chongzhi` VALUES (88, 37, NULL, 1000, 1000, 0, '2021-07-03 15:35:58', 0, '', 1, NULL, NULL, 0);
INSERT INTO `chongzhi` VALUES (89, 25, 1, 50, 50, 0, '2023-09-12 00:00:00', 100, '100', 0, '2023-09-12 18:18:28', NULL, 0);

-- ----------------------------
-- Table structure for coach
-- ----------------------------
DROP TABLE IF EXISTS `coach`;
CREATE TABLE `coach`  (
  `coachId` int NOT NULL AUTO_INCREMENT COMMENT '教练编号',
  `coachName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教练名称',
  `coachPhone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教练电话',
  `coachSex` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教练性别',
  `coachAge` int NULL DEFAULT NULL COMMENT '教练年龄',
  `coachData` date NULL DEFAULT NULL COMMENT '入职时间',
  `teach` int NULL DEFAULT NULL COMMENT '教龄',
  `coachWages` double NULL DEFAULT NULL COMMENT '工资',
  `coachAddress` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `coachStatic` int NULL DEFAULT 0 COMMENT '教练状态',
  `createtime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `modifytime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `deleted` int NULL DEFAULT 0,
  PRIMARY KEY (`coachId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coach
-- ----------------------------
INSERT INTO `coach` VALUES (2, '张起灵', '13243253432', '女', 22, '2020-08-02', 2, 6000, '张家古楼', 0, NULL, NULL, 0);
INSERT INTO `coach` VALUES (3, '蓝忘机', '13324332344', '女', 20, '2020-08-02', 2, 10000, '云深不知处', 0, NULL, NULL, 0);
INSERT INTO `coach` VALUES (4, '花城', '13324245453', '男', 25, '2021-07-10', 3, 12000, '仙乐国', 0, NULL, NULL, 0);
INSERT INTO `coach` VALUES (11, '婉儿', '13342244112', '男', 18, '2021-07-01', 2, 16500, '长留', 1, NULL, NULL, 0);
INSERT INTO `coach` VALUES (12, '白凤九', '13433324335', '男', 20, '2020-10-07', 1, 18000, '青丘', 1, NULL, NULL, 0);
INSERT INTO `coach` VALUES (14, '张含', '15299985622', '男', 35, '2021-07-02', 5, 10000, '北京丰台', 1, NULL, NULL, 0);
INSERT INTO `coach` VALUES (16, '周命', '15785456231', '男', 22, '2021-07-06', 2, 12000, '陕西西安', 0, NULL, NULL, 0);
INSERT INTO `coach` VALUES (17, '袁教练', '12314324891', '女', 24, '2023-09-11', 2, 10000, '陕西宝鸡', 1, NULL, '2023-09-12 18:04:58', 1);

-- ----------------------------
-- Table structure for equipment
-- ----------------------------
DROP TABLE IF EXISTS `equipment`;
CREATE TABLE `equipment`  (
  `eqId` int NOT NULL AUTO_INCREMENT COMMENT '器材编号',
  `eqName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '器材名',
  `eqText` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '器材说明',
  `createtime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `modifytime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `deleted` int NULL DEFAULT 0 COMMENT '删除标记',
  `num` int NULL DEFAULT NULL COMMENT '器材数量',
  PRIMARY KEY (`eqId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of equipment
-- ----------------------------
INSERT INTO `equipment` VALUES (6, '动感单车', '塑身', NULL, NULL, 0, 2);
INSERT INTO `equipment` VALUES (9, '跑步机', '跑步', '2023-09-12 15:56:59', NULL, 0, 4);
INSERT INTO `equipment` VALUES (10, '杠铃', '增肌', '2023-09-12 15:58:28', NULL, 0, 7);
INSERT INTO `equipment` VALUES (11, '哑铃', '增肌', '2023-09-12 17:59:44', NULL, 1, 10);
INSERT INTO `equipment` VALUES (12, '呼啦圈', '瘦腰', '2023-09-18 09:03:10', NULL, 0, 20);

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (7, 'equipment', '器材表', NULL, NULL, 'Equipment', 'crud', 'com.ruoyi.gym', 'equipment', 'equipment', '器材管理', 'ruoyi', '0', '/', '{\"parentMenuId\":2012}', 'admin', '2023-09-12 11:51:04', '', '2023-09-12 11:52:18', NULL);
INSERT INTO `gen_table` VALUES (9, 'subject', '课程表', NULL, NULL, 'Subject', 'crud', 'com.ruoyi.gym', 'subject', 'subject', '课程管理', 'ruoyi', '0', '/', '{\"parentMenuId\":2012}', 'admin', '2023-09-12 16:01:42', '', '2023-09-12 16:02:55', NULL);
INSERT INTO `gen_table` VALUES (11, 'goods', '商品表', NULL, NULL, 'Goods', 'crud', 'com.ruoyi.gym', 'goods', 'goods', '商品管理', 'ruoyi', '0', '/', '{\"parentMenuId\":2012}', 'admin', '2023-09-12 16:30:28', '', '2023-09-12 16:31:41', NULL);
INSERT INTO `gen_table` VALUES (12, 'goodinfo', '商品购买信息表', NULL, NULL, 'Goodinfo', 'crud', 'com.ruoyi.gym', 'goodinfo', 'goodinfo', '商品购买信息管理', 'ruoyi', '0', '/', '{\"parentMenuId\":2012}', 'admin', '2023-09-12 16:43:06', '', '2023-09-12 17:17:39', NULL);
INSERT INTO `gen_table` VALUES (13, 'coach', '教练表', NULL, NULL, 'Coach', 'crud', 'com.ruoyi.gym', 'coach', 'coach', '教练管理', 'ruoyi', '0', '/', '{\"parentMenuId\":2012}', 'admin', '2023-09-12 16:51:52', '', '2023-09-12 16:54:24', NULL);
INSERT INTO `gen_table` VALUES (14, 'member', '成员表', NULL, NULL, 'Member', 'crud', 'com.ruoyi.gym', 'member', 'member', '会员管理', 'ruoyi', '0', '/', '{\"parentMenuId\":2012}', 'admin', '2023-09-12 17:03:21', '', '2023-09-12 17:08:23', NULL);
INSERT INTO `gen_table` VALUES (15, 'membertype', '会员卡表', NULL, NULL, 'Membertype', 'crud', 'com.ruoyi.gym', 'membertype', 'membertype', '会员卡管理', 'ruoyi', '0', '/', '{\"parentMenuId\":2012}', 'admin', '2023-09-12 17:25:40', '', '2023-09-12 17:27:57', NULL);
INSERT INTO `gen_table` VALUES (16, 'privatecoachinfo', '会员私教表', NULL, NULL, 'Privatecoachinfo', 'crud', 'com.ruoyi.gym', 'privatecoachinfo', 'privatecoachinfo', '会员私教管理', 'ruoyi', '0', '/', '{\"parentMenuId\":2012}', 'admin', '2023-09-12 17:33:38', '', '2023-09-12 17:35:38', NULL);
INSERT INTO `gen_table` VALUES (18, 'chongzhi', '充值表', NULL, NULL, 'Chongzhi', 'crud', 'com.ruoyi.gym', 'chongzhi', 'chongzhi', '充值管理', 'ruoyi', '0', '/', '{\"parentMenuId\":2012}', 'admin', '2023-09-12 17:46:42', '', '2023-09-12 17:48:15', NULL);
INSERT INTO `gen_table` VALUES (19, 'loos', '', NULL, NULL, 'Loos', 'crud', 'com.ruoyi.system', 'system', 'loos', NULL, 'ruoyi', '0', '/', NULL, 'admin', '2023-09-13 11:39:25', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (20, 'store', '门店表', NULL, NULL, 'Store', 'crud', 'com.ruoyi.gym', 'store', 'store', '门店管理', '魏浩浩', '0', '/', '{\"parentMenuId\":2012}', 'admin', '2023-09-18 17:41:21', '', '2023-09-18 17:47:11', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 212 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (54, 7, 'eqId', '器材编号', 'int', 'Long', 'eqId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-09-12 11:51:04', '', '2023-09-12 11:52:18');
INSERT INTO `gen_table_column` VALUES (55, 7, 'eqName', '器材名', 'varchar(20)', 'String', 'eqName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-09-12 11:51:04', '', '2023-09-12 11:52:18');
INSERT INTO `gen_table_column` VALUES (56, 7, 'eqText', '器材说明', 'varchar(50)', 'String', 'eqText', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 3, 'admin', '2023-09-12 11:51:04', '', '2023-09-12 11:52:18');
INSERT INTO `gen_table_column` VALUES (57, 7, 'createtime', '创建时间', 'varchar(50)', 'String', 'createtime', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 4, 'admin', '2023-09-12 11:51:04', '', '2023-09-12 11:52:18');
INSERT INTO `gen_table_column` VALUES (58, 7, 'modifytime', '修改时间', 'varchar(50)', 'String', 'modifytime', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 5, 'admin', '2023-09-12 11:51:04', '', '2023-09-12 11:52:18');
INSERT INTO `gen_table_column` VALUES (59, 7, 'deleted', '删除标记', 'int', 'Long', 'deleted', '0', '0', NULL, '0', '0', '0', '0', 'EQ', 'input', '', 6, 'admin', '2023-09-12 11:51:04', '', '2023-09-12 11:52:18');
INSERT INTO `gen_table_column` VALUES (73, 9, 'subId', '课程编号', 'int', 'Long', 'subId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-09-12 16:01:42', '', '2023-09-12 16:02:55');
INSERT INTO `gen_table_column` VALUES (74, 9, 'subname', '课程名', 'varchar(20)', 'String', 'subname', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-09-12 16:01:42', '', '2023-09-12 16:02:55');
INSERT INTO `gen_table_column` VALUES (75, 9, 'sellingPrice', '课程单价', 'double', 'Long', 'sellingPrice', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 3, 'admin', '2023-09-12 16:01:42', '', '2023-09-12 16:02:55');
INSERT INTO `gen_table_column` VALUES (76, 9, 'createtime', '创建时间', 'varchar(50)', 'String', 'createtime', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 4, 'admin', '2023-09-12 16:01:42', '', '2023-09-12 16:02:55');
INSERT INTO `gen_table_column` VALUES (77, 9, 'modifytime', '修改时间', 'varchar(50)', 'String', 'modifytime', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 5, 'admin', '2023-09-12 16:01:42', '', '2023-09-12 16:02:55');
INSERT INTO `gen_table_column` VALUES (78, 9, 'deleted', '删除标记', 'int', 'Long', 'deleted', '0', '0', NULL, '0', '0', '0', '0', 'EQ', 'input', '', 6, 'admin', '2023-09-12 16:01:42', '', '2023-09-12 16:02:55');
INSERT INTO `gen_table_column` VALUES (93, 11, 'goodsId', '商品编号', 'int', 'Long', 'goodsId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-09-12 16:30:28', '', '2023-09-12 16:31:41');
INSERT INTO `gen_table_column` VALUES (94, 11, 'goodsName', '商品名称', 'varchar(50)', 'String', 'goodsName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-09-12 16:30:28', '', '2023-09-12 16:31:41');
INSERT INTO `gen_table_column` VALUES (95, 11, 'unit', '单位', 'varchar(20)', 'String', 'unit', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 3, 'admin', '2023-09-12 16:30:28', '', '2023-09-12 16:31:41');
INSERT INTO `gen_table_column` VALUES (96, 11, 'unitPrice', '进价', 'double', 'Long', 'unitPrice', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2023-09-12 16:30:28', '', '2023-09-12 16:31:41');
INSERT INTO `gen_table_column` VALUES (97, 11, 'sellPrice', '售价', 'double', 'Long', 'sellPrice', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2023-09-12 16:30:28', '', '2023-09-12 16:31:41');
INSERT INTO `gen_table_column` VALUES (98, 11, 'inventory', '库存', 'int', 'Long', 'inventory', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2023-09-12 16:30:28', '', '2023-09-12 16:31:41');
INSERT INTO `gen_table_column` VALUES (99, 11, 'remark', '备注', 'varchar(100)', 'String', 'remark', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 7, 'admin', '2023-09-12 16:30:28', '', '2023-09-12 16:31:41');
INSERT INTO `gen_table_column` VALUES (100, 11, 'createtime', '创建时间', 'varchar(50)', 'String', 'createtime', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 8, 'admin', '2023-09-12 16:30:28', '', '2023-09-12 16:31:41');
INSERT INTO `gen_table_column` VALUES (101, 11, 'modifytime', '修改时间', 'varchar(50)', 'String', 'modifytime', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 9, 'admin', '2023-09-12 16:30:28', '', '2023-09-12 16:31:41');
INSERT INTO `gen_table_column` VALUES (102, 11, 'deleted', '删除标记', 'int', 'Long', 'deleted', '0', '0', NULL, '0', '0', '0', '0', 'EQ', 'input', '', 10, 'admin', '2023-09-12 16:30:28', '', '2023-09-12 16:31:41');
INSERT INTO `gen_table_column` VALUES (103, 12, 'id', '商品购买记录编号', 'int', 'Long', 'id', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-09-12 16:43:06', '', '2023-09-12 17:17:39');
INSERT INTO `gen_table_column` VALUES (104, 12, 'goodsid', '商品编号', 'int', 'Long', 'goodsid', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-09-12 16:43:06', '', '2023-09-12 17:17:39');
INSERT INTO `gen_table_column` VALUES (105, 12, 'memberid', '会员编号', 'int', 'Long', 'memberid', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-09-12 16:43:06', '', '2023-09-12 17:17:39');
INSERT INTO `gen_table_column` VALUES (106, 12, 'count', '购买商品数量', 'int', 'Long', 'count', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2023-09-12 16:43:06', '', '2023-09-12 17:17:39');
INSERT INTO `gen_table_column` VALUES (107, 12, 'price', '总价', 'double', 'Long', 'price', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2023-09-12 16:43:06', '', '2023-09-12 17:17:39');
INSERT INTO `gen_table_column` VALUES (108, 12, 'remark', '备注', 'varchar(100)', 'String', 'remark', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 6, 'admin', '2023-09-12 16:43:06', '', '2023-09-12 17:17:39');
INSERT INTO `gen_table_column` VALUES (109, 12, 'createtime', '创建时间', 'varchar(50)', 'String', 'createtime', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 7, 'admin', '2023-09-12 16:43:06', '', '2023-09-12 17:17:39');
INSERT INTO `gen_table_column` VALUES (110, 12, 'modifytime', '修改时间', 'varchar(50)', 'String', 'modifytime', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 8, 'admin', '2023-09-12 16:43:06', '', '2023-09-12 17:17:39');
INSERT INTO `gen_table_column` VALUES (111, 12, 'deleted', '删除标记', 'int', 'Long', 'deleted', '0', '0', NULL, '0', '0', '0', '0', 'EQ', 'input', '', 9, 'admin', '2023-09-12 16:43:06', '', '2023-09-12 17:17:39');
INSERT INTO `gen_table_column` VALUES (112, 13, 'coachId', '教练编号', 'int', 'Long', 'coachId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-09-12 16:51:52', '', '2023-09-12 16:54:24');
INSERT INTO `gen_table_column` VALUES (113, 13, 'coachName', '教练名称', 'varchar(20)', 'String', 'coachName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-09-12 16:51:52', '', '2023-09-12 16:54:24');
INSERT INTO `gen_table_column` VALUES (114, 13, 'coachPhone', '教练电话', 'varchar(50)', 'String', 'coachPhone', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 3, 'admin', '2023-09-12 16:51:52', '', '2023-09-12 16:54:24');
INSERT INTO `gen_table_column` VALUES (115, 13, 'coachSex', '教练性别', 'int', 'Long', 'coachSex', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'select', '', 4, 'admin', '2023-09-12 16:51:52', '', '2023-09-12 16:54:24');
INSERT INTO `gen_table_column` VALUES (116, 13, 'coachAge', '教练年龄', 'int', 'Long', 'coachAge', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2023-09-12 16:51:52', '', '2023-09-12 16:54:24');
INSERT INTO `gen_table_column` VALUES (117, 13, 'coachData', '入职时间', 'date', 'Date', 'coachData', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'datetime', '', 6, 'admin', '2023-09-12 16:51:52', '', '2023-09-12 16:54:24');
INSERT INTO `gen_table_column` VALUES (118, 13, 'teach', '教龄', 'int', 'Long', 'teach', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 7, 'admin', '2023-09-12 16:51:52', '', '2023-09-12 16:54:24');
INSERT INTO `gen_table_column` VALUES (119, 13, 'coachWages', '工资', 'double', 'Long', 'coachWages', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 8, 'admin', '2023-09-12 16:51:52', '', '2023-09-12 16:54:24');
INSERT INTO `gen_table_column` VALUES (120, 13, 'coachAddress', '地址', 'varchar(100)', 'String', 'coachAddress', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-09-12 16:51:52', '', '2023-09-12 16:54:24');
INSERT INTO `gen_table_column` VALUES (121, 13, 'coachStatic', '教练状态', 'int', 'Long', 'coachStatic', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-09-12 16:51:52', '', '2023-09-12 16:54:24');
INSERT INTO `gen_table_column` VALUES (122, 13, 'createtime', '创建时间', 'varchar(50)', 'String', 'createtime', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 11, 'admin', '2023-09-12 16:51:52', '', '2023-09-12 16:54:24');
INSERT INTO `gen_table_column` VALUES (123, 13, 'modifytime', '修改时间', 'varchar(50)', 'String', 'modifytime', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 12, 'admin', '2023-09-12 16:51:52', '', '2023-09-12 16:54:24');
INSERT INTO `gen_table_column` VALUES (124, 13, 'deleted', '删除标记', 'int', 'Long', 'deleted', '0', '0', NULL, '0', '0', '0', '0', 'EQ', 'input', '', 13, 'admin', '2023-09-12 16:51:52', '', '2023-09-12 16:54:24');
INSERT INTO `gen_table_column` VALUES (125, 14, 'memberId', '会员编号', 'int', 'Long', 'memberId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-09-12 17:03:21', '', '2023-09-12 17:08:23');
INSERT INTO `gen_table_column` VALUES (126, 14, 'memberName', '会员名称', 'varchar(20)', 'String', 'memberName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-09-12 17:03:21', '', '2023-09-12 17:08:23');
INSERT INTO `gen_table_column` VALUES (127, 14, 'memberPhone', '会员电话', 'varchar(20)', 'String', 'memberPhone', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 3, 'admin', '2023-09-12 17:03:21', '', '2023-09-12 17:08:23');
INSERT INTO `gen_table_column` VALUES (128, 14, 'memberSex', '会员性别', 'int', 'Long', 'memberSex', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'select', '', 4, 'admin', '2023-09-12 17:03:21', '', '2023-09-12 17:08:23');
INSERT INTO `gen_table_column` VALUES (129, 14, 'memberAge', '会员年龄', 'int', 'Long', 'memberAge', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2023-09-12 17:03:21', '', '2023-09-12 17:08:23');
INSERT INTO `gen_table_column` VALUES (130, 14, 'memberTypes', '会员卡类型', 'int', 'Long', 'memberTypes', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-09-12 17:03:21', '', '2023-09-12 17:08:23');
INSERT INTO `gen_table_column` VALUES (131, 14, 'menberDate', '成为会员时间', 'date', 'Date', 'menberDate', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'datetime', '', 7, 'admin', '2023-09-12 17:03:21', '', '2023-09-12 17:08:23');
INSERT INTO `gen_table_column` VALUES (132, 14, 'birthday', '会员生日', 'varchar(20)', 'String', 'birthday', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 8, 'admin', '2023-09-12 17:03:21', '', '2023-09-12 17:08:23');
INSERT INTO `gen_table_column` VALUES (133, 14, 'memberStatic', '会员状态', 'int', 'Long', 'memberStatic', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 9, 'admin', '2023-09-12 17:03:21', '', '2023-09-12 17:08:23');
INSERT INTO `gen_table_column` VALUES (134, 14, 'memberbalance', '会员金额', 'float', 'Long', 'memberbalance', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'input', '', 10, 'admin', '2023-09-12 17:03:21', '', '2023-09-12 17:08:23');
INSERT INTO `gen_table_column` VALUES (135, 14, 'memberxufei', '续费时间', 'date', 'Date', 'memberxufei', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'datetime', '', 11, 'admin', '2023-09-12 17:03:21', '', '2023-09-12 17:08:23');
INSERT INTO `gen_table_column` VALUES (136, 14, 'createtime', '创建时间', 'varchar(50)', 'String', 'createtime', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 12, 'admin', '2023-09-12 17:03:21', '', '2023-09-12 17:08:23');
INSERT INTO `gen_table_column` VALUES (137, 14, 'modifytime', '修改时间', 'varchar(50)', 'String', 'modifytime', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 13, 'admin', '2023-09-12 17:03:21', '', '2023-09-12 17:08:23');
INSERT INTO `gen_table_column` VALUES (138, 14, 'deleted', '删除标记', 'int', 'Long', 'deleted', '0', '0', NULL, '0', '0', '0', '0', 'EQ', 'input', '', 14, 'admin', '2023-09-12 17:03:21', '', '2023-09-12 17:08:23');
INSERT INTO `gen_table_column` VALUES (139, 15, 'typeId', '会员卡类型编号', 'int', 'Long', 'typeId', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-09-12 17:25:40', '', '2023-09-12 17:27:57');
INSERT INTO `gen_table_column` VALUES (140, 15, 'typeName', '会员卡名称', 'varchar(20)', 'String', 'typeName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-09-12 17:25:40', '', '2023-09-12 17:27:57');
INSERT INTO `gen_table_column` VALUES (141, 15, 'typeciShu', '会员卡有效次数', 'int', 'Long', 'typeciShu', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 3, 'admin', '2023-09-12 17:25:40', '', '2023-09-12 17:27:57');
INSERT INTO `gen_table_column` VALUES (142, 15, 'typeDay', '会员卡有效天数', 'int', 'Long', 'typeDay', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2023-09-12 17:25:40', '', '2023-09-12 17:27:57');
INSERT INTO `gen_table_column` VALUES (143, 15, 'typemoney', '售价', 'float', 'Long', 'typemoney', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2023-09-12 17:25:40', '', '2023-09-12 17:27:57');
INSERT INTO `gen_table_column` VALUES (144, 15, 'createtime', '创建时间', 'varchar(50)', 'String', 'createtime', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 6, 'admin', '2023-09-12 17:25:40', '', '2023-09-12 17:27:57');
INSERT INTO `gen_table_column` VALUES (145, 15, 'modifytime', '修改时间', 'varchar(50)', 'String', 'modifytime', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 7, 'admin', '2023-09-12 17:25:40', '', '2023-09-12 17:27:57');
INSERT INTO `gen_table_column` VALUES (146, 15, 'deleted', '删除标记', 'int', 'Long', 'deleted', '0', '0', NULL, '0', '0', '0', '0', 'EQ', 'input', '', 8, 'admin', '2023-09-12 17:25:40', '', '2023-09-12 17:27:57');
INSERT INTO `gen_table_column` VALUES (147, 16, 'pid', '私教课记录编号', 'int', 'Long', 'pid', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-09-12 17:33:38', '', '2023-09-12 17:35:38');
INSERT INTO `gen_table_column` VALUES (148, 16, 'memberid', '会员编号', 'int', 'Long', 'memberid', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-09-12 17:33:38', '', '2023-09-12 17:35:38');
INSERT INTO `gen_table_column` VALUES (149, 16, 'coachid', '教练编号', 'int', 'Long', 'coachid', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-09-12 17:33:38', '', '2023-09-12 17:35:38');
INSERT INTO `gen_table_column` VALUES (150, 16, 'subjectid', '课程编号', 'int', 'Long', 'subjectid', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-09-12 17:33:38', '', '2023-09-12 17:35:38');
INSERT INTO `gen_table_column` VALUES (151, 16, 'count', '购课数量', 'int', 'Long', 'count', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2023-09-12 17:33:38', '', '2023-09-12 17:35:38');
INSERT INTO `gen_table_column` VALUES (152, 16, 'countprice', '购课总价', 'double', 'Long', 'countprice', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2023-09-12 17:33:38', '', '2023-09-12 17:35:38');
INSERT INTO `gen_table_column` VALUES (153, 16, 'realprice', '实收金额', 'double', 'Long', 'realprice', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 7, 'admin', '2023-09-12 17:33:38', '', '2023-09-12 17:35:38');
INSERT INTO `gen_table_column` VALUES (154, 16, 'date', '购课日期', 'date', 'Date', 'date', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'datetime', '', 8, 'admin', '2023-09-12 17:33:38', '', '2023-09-12 17:35:38');
INSERT INTO `gen_table_column` VALUES (155, 16, 'state', '课程来源', 'int', 'Long', 'state', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 9, 'admin', '2023-09-12 17:33:38', '', '2023-09-12 17:35:38');
INSERT INTO `gen_table_column` VALUES (156, 16, 'remark', '备注', 'varchar(20)', 'String', 'remark', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 10, 'admin', '2023-09-12 17:33:38', '', '2023-09-12 17:35:38');
INSERT INTO `gen_table_column` VALUES (157, 16, 'admin', '管理员', 'varchar(20)', 'String', 'admin', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 11, 'admin', '2023-09-12 17:33:38', '', '2023-09-12 17:35:38');
INSERT INTO `gen_table_column` VALUES (158, 16, 'createtime', '创建时间', 'varchar(50)', 'String', 'createtime', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 12, 'admin', '2023-09-12 17:33:38', '', '2023-09-12 17:35:38');
INSERT INTO `gen_table_column` VALUES (159, 16, 'modifytime', '修改时间', 'varchar(50)', 'String', 'modifytime', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 13, 'admin', '2023-09-12 17:33:38', '', '2023-09-12 17:35:38');
INSERT INTO `gen_table_column` VALUES (160, 16, 'deleted', '删除标记', 'int', 'Long', 'deleted', '0', '0', NULL, '0', '0', '0', '0', 'EQ', 'input', '', 14, 'admin', '2023-09-12 17:33:38', '', '2023-09-12 17:35:38');
INSERT INTO `gen_table_column` VALUES (174, 18, 'id', '充值记录编号', 'int', 'Long', 'id', '1', '1', NULL, '0', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-09-12 17:46:42', '', '2023-09-12 17:48:15');
INSERT INTO `gen_table_column` VALUES (175, 18, 'memberid', '会员编号', 'int', 'Long', 'memberid', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-09-12 17:46:42', '', '2023-09-12 17:48:15');
INSERT INTO `gen_table_column` VALUES (176, 18, 'typeid', '会员卡编号', 'int', 'Long', 'typeid', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-09-12 17:46:42', '', '2023-09-12 17:48:15');
INSERT INTO `gen_table_column` VALUES (177, 18, 'money', '续费金额', 'int', 'Long', 'money', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 4, 'admin', '2023-09-12 17:46:42', '', '2023-09-12 17:48:15');
INSERT INTO `gen_table_column` VALUES (178, 18, 'ssmoney', '实收金额', 'int', 'Long', 'ssmoney', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 5, 'admin', '2023-09-12 17:46:42', '', '2023-09-12 17:48:15');
INSERT INTO `gen_table_column` VALUES (179, 18, 'zlmoney', '找零金额', 'int', 'Long', 'zlmoney', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2023-09-12 17:46:42', '', '2023-09-12 17:48:15');
INSERT INTO `gen_table_column` VALUES (180, 18, 'date', '续费日期', 'datetime', 'Date', 'date', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'datetime', '', 7, 'admin', '2023-09-12 17:46:42', '', '2023-09-12 17:48:15');
INSERT INTO `gen_table_column` VALUES (181, 18, 'czjine', '充值金额', 'int', 'Long', 'czjine', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 8, 'admin', '2023-09-12 17:46:42', '', '2023-09-12 17:48:15');
INSERT INTO `gen_table_column` VALUES (182, 18, 'beizhu', '备注', 'varchar(50)', 'String', 'beizhu', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 9, 'admin', '2023-09-12 17:46:42', '', '2023-09-12 17:48:15');
INSERT INTO `gen_table_column` VALUES (183, 18, 'czStatic', '充值状态', 'int', 'Long', 'czStatic', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 10, 'admin', '2023-09-12 17:46:42', '', '2023-09-12 17:48:15');
INSERT INTO `gen_table_column` VALUES (184, 18, 'createtime', '创建时间', 'varchar(50)', 'String', 'createtime', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 11, 'admin', '2023-09-12 17:46:42', '', '2023-09-12 17:48:15');
INSERT INTO `gen_table_column` VALUES (185, 18, 'modifytime', '修改时间', 'varchar(50)', 'String', 'modifytime', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 12, 'admin', '2023-09-12 17:46:42', '', '2023-09-12 17:48:15');
INSERT INTO `gen_table_column` VALUES (186, 18, 'deleted', '删除标记', 'int', 'Long', 'deleted', '0', '0', NULL, '0', '0', '0', '0', 'EQ', 'input', '', 13, 'admin', '2023-09-12 17:46:42', '', '2023-09-12 17:48:15');
INSERT INTO `gen_table_column` VALUES (187, 19, 'loosId', NULL, 'int', 'Long', 'loosId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-09-13 11:39:25', '', NULL);
INSERT INTO `gen_table_column` VALUES (188, 19, 'loosName', NULL, 'varchar(20)', 'String', 'loosName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-09-13 11:39:25', '', NULL);
INSERT INTO `gen_table_column` VALUES (189, 19, 'loosImages', NULL, 'varchar(50)', 'String', 'loosImages', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-09-13 11:39:25', '', NULL);
INSERT INTO `gen_table_column` VALUES (190, 19, 'loosAddress', NULL, 'varchar(50)', 'String', 'loosAddress', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-09-13 11:39:25', '', NULL);
INSERT INTO `gen_table_column` VALUES (191, 19, 'loosjdate', NULL, 'datetime', 'Date', 'loosjdate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2023-09-13 11:39:25', '', NULL);
INSERT INTO `gen_table_column` VALUES (192, 19, 'loosStatus', NULL, 'int', 'Long', 'loosStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 6, 'admin', '2023-09-13 11:39:25', '', NULL);
INSERT INTO `gen_table_column` VALUES (193, 19, 'scavenger', NULL, 'varchar(50)', 'String', 'scavenger', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-09-13 11:39:25', '', NULL);
INSERT INTO `gen_table_column` VALUES (194, 19, 'scavengerPhone', NULL, 'varchar(50)', 'String', 'scavengerPhone', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-09-13 11:39:25', '', NULL);
INSERT INTO `gen_table_column` VALUES (195, 19, 'ReceiveName', NULL, 'varchar(20)', 'String', 'ReceiveName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 9, 'admin', '2023-09-13 11:39:25', '', NULL);
INSERT INTO `gen_table_column` VALUES (196, 19, 'ReceivePhone', NULL, 'varchar(20)', 'String', 'ReceivePhone', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-09-13 11:39:25', '', NULL);
INSERT INTO `gen_table_column` VALUES (197, 19, 'loosldate', NULL, 'datetime', 'Date', 'loosldate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 11, 'admin', '2023-09-13 11:39:25', '', NULL);
INSERT INTO `gen_table_column` VALUES (198, 19, 'admin', NULL, 'varchar(50)', 'String', 'admin', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2023-09-13 11:39:25', '', NULL);
INSERT INTO `gen_table_column` VALUES (199, 20, 'id', '门店主键', 'int', 'Long', 'id', '1', '1', '0', '0', NULL, '1', NULL, 'EQ', 'input', '', 1, 'admin', '2023-09-18 17:41:22', '', '2023-09-18 17:47:11');
INSERT INTO `gen_table_column` VALUES (200, 20, 'name', '门店姓名', 'varchar(255)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-09-18 17:41:22', '', '2023-09-18 17:47:11');
INSERT INTO `gen_table_column` VALUES (201, 20, 'num', '门店编号', 'int', 'Long', 'num', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 3, 'admin', '2023-09-18 17:41:22', '', '2023-09-18 17:47:11');
INSERT INTO `gen_table_column` VALUES (202, 20, 'city', '所在城市', 'varchar(30)', 'String', 'city', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-09-18 17:41:22', '', '2023-09-18 17:47:11');
INSERT INTO `gen_table_column` VALUES (203, 20, 'province', '省份名称', 'varchar(255)', 'String', 'province', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-09-18 17:41:22', '', '2023-09-18 17:47:11');
INSERT INTO `gen_table_column` VALUES (204, 20, 'address', '门店地址', 'varchar(50)', 'String', 'address', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 6, 'admin', '2023-09-18 17:41:22', '', '2023-09-18 17:47:11');
INSERT INTO `gen_table_column` VALUES (205, 20, 'quantity', '员工数量', 'int', 'Long', 'quantity', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 7, 'admin', '2023-09-18 17:41:22', '', '2023-09-18 17:47:11');
INSERT INTO `gen_table_column` VALUES (206, 20, 'shopowner', '店长', 'varchar(50)', 'String', 'shopowner', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 8, 'admin', '2023-09-18 17:41:22', '', '2023-09-18 17:47:11');
INSERT INTO `gen_table_column` VALUES (207, 20, 'shop_phone', '店长电话', 'varchar(50)', 'String', 'shopPhone', '0', '0', '1', '1', '1', '1', '0', 'EQ', 'input', '', 9, 'admin', '2023-09-18 17:41:22', '', '2023-09-18 17:47:11');
INSERT INTO `gen_table_column` VALUES (208, 20, 'remarks', '门店简介', 'text', 'String', 'remarks', '0', '0', NULL, '1', '1', '1', '0', 'EQ', 'textarea', '', 10, 'admin', '2023-09-18 17:41:22', '', '2023-09-18 17:47:11');
INSERT INTO `gen_table_column` VALUES (209, 20, 'createtime', '创建时间', 'varchar(50)', 'String', 'createtime', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 11, 'admin', '2023-09-18 17:41:22', '', '2023-09-18 17:47:11');
INSERT INTO `gen_table_column` VALUES (210, 20, 'modifytime', '修改时间', 'varchar(50)', 'String', 'modifytime', '0', '0', NULL, '0', '0', '1', '0', 'EQ', 'input', '', 12, 'admin', '2023-09-18 17:41:22', '', '2023-09-18 17:47:11');
INSERT INTO `gen_table_column` VALUES (211, 20, 'deleted', '删除标记', 'int', 'Long', 'deleted', '0', '0', NULL, '0', '0', '0', '0', 'EQ', 'input', '', 13, 'admin', '2023-09-18 17:41:22', '', '2023-09-18 17:47:11');

-- ----------------------------
-- Table structure for goodinfo
-- ----------------------------
DROP TABLE IF EXISTS `goodinfo`;
CREATE TABLE `goodinfo`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '商品购买记录编号',
  `goodsid` int NULL DEFAULT NULL COMMENT '商品编号',
  `memberid` int NULL DEFAULT NULL COMMENT '会员编号',
  `count` int NULL DEFAULT NULL COMMENT '购买商品数量',
  `price` double NULL DEFAULT NULL COMMENT '总价',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `createtime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `modifytime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `deleted` int NULL DEFAULT 0 COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goodinfo
-- ----------------------------
INSERT INTO `goodinfo` VALUES (9, 3, 25, 2, 10, '', NULL, NULL, 0);
INSERT INTO `goodinfo` VALUES (12, 4, 26, 5, 5, '', NULL, NULL, 0);
INSERT INTO `goodinfo` VALUES (14, 5, 34, 6, 30, '', NULL, NULL, 0);
INSERT INTO `goodinfo` VALUES (15, 2, 37, 2, 10, '', NULL, NULL, 0);
INSERT INTO `goodinfo` VALUES (16, 2, 25, 10, 20, '1', '2023-09-14 15:53:00', NULL, 0);
INSERT INTO `goodinfo` VALUES (18, 2, 42, 10, 30, '1', '2023-09-18 09:33:36', NULL, 0);
INSERT INTO `goodinfo` VALUES (19, 2, 26, 3, 9, '666', '2023-09-19 15:24:47', NULL, 0);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `goodsId` int NOT NULL AUTO_INCREMENT COMMENT '商品编号',
  `goodsName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `unit` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位',
  `unitPrice` double NULL DEFAULT NULL COMMENT '进价',
  `sellPrice` double NULL DEFAULT NULL COMMENT '售价',
  `inventory` int NULL DEFAULT NULL COMMENT '库存',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `createtime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `modifytime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `deleted` int NULL DEFAULT 0 COMMENT '删除标记',
  PRIMARY KEY (`goodsId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (2, '可口可乐', '瓶', 2, 5, 35, '1', NULL, NULL, 0);
INSERT INTO `goods` VALUES (3, '百事可乐', '瓶', 2, 5, 3, '', NULL, NULL, 0);
INSERT INTO `goods` VALUES (4, '小布丁雪糕', '根', 0.5, 1, 13, '', NULL, NULL, 0);
INSERT INTO `goods` VALUES (5, '压缩饼干', '块', 2, 5, 24, '', NULL, NULL, 0);
INSERT INTO `goods` VALUES (7, '脉动', '瓶', 3, 6, 0, '', NULL, NULL, 0);
INSERT INTO `goods` VALUES (8, '毛巾', '个', 10, 20, 0, '', NULL, '2023-09-12 18:01:35', 0);
INSERT INTO `goods` VALUES (9, '农夫山泉', '瓶', 1, 2, 100, '1', NULL, '2023-09-12 16:42:49', 1);

-- ----------------------------
-- Table structure for loos
-- ----------------------------
DROP TABLE IF EXISTS `loos`;
CREATE TABLE `loos`  (
  `loosId` int NOT NULL AUTO_INCREMENT,
  `loosName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `loosImages` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `loosAddress` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `loosjdate` datetime NULL DEFAULT NULL,
  `loosStatus` int NULL DEFAULT NULL,
  `scavenger` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `scavengerPhone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ReceiveName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ReceivePhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `loosldate` datetime NULL DEFAULT NULL,
  `admin` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`loosId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of loos
-- ----------------------------
INSERT INTO `loos` VALUES (1, '车钥匙', '1', '厕所门口', '2021-07-10 00:00:00', 1, '张三', '13355660000', '22', '25525', '2021-07-12 00:00:00', 'admin');
INSERT INTO `loos` VALUES (6, '手机', '1', '前台', '2021-07-01 00:00:00', 1, '王能', '15299952320', '张宏', '15899965478', '2021-07-02 00:00:00', 'admin');
INSERT INTO `loos` VALUES (7, '钱包', '1', '动感单车旁', '2021-07-01 00:00:00', 0, '李镇', '15966325478', NULL, NULL, NULL, 'admin');
INSERT INTO `loos` VALUES (8, '包', '1', '门口', '2021-07-02 00:00:00', 0, '刘伟', '15326587548', NULL, NULL, NULL, 'admin');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member`  (
  `memberId` int NOT NULL AUTO_INCREMENT COMMENT '会员编号',
  `memberName` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '会员名称',
  `memberPhone` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '会员电话',
  `memberSex` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '会员性别',
  `memberAge` int NULL DEFAULT NULL COMMENT '会员年龄',
  `memberTypes` int NULL DEFAULT NULL COMMENT '会员卡类型',
  `menberDate` date NULL DEFAULT NULL COMMENT '成为会员时间',
  `birthday` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '会员生日',
  `memberStatic` int NULL DEFAULT NULL COMMENT '会员状态',
  `memberbalance` float NULL DEFAULT 0 COMMENT '会员金额',
  `memberxufei` date NULL DEFAULT NULL COMMENT '续费时间',
  `createtime` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `modifytime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `deleted` int NULL DEFAULT 0 COMMENT '删除标记',
  PRIMARY KEY (`memberId`) USING BTREE,
  INDEX `fk-member-membertype`(`memberTypes`) USING BTREE,
  CONSTRAINT `fk-member-membertype` FOREIGN KEY (`memberTypes`) REFERENCES `membertype` (`typeId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES (25, '刘建', '13456789087', '男', 23, 3, '2021-07-06', '08-24', 1, 390, '2021-07-03', NULL, NULL, 0);
INSERT INTO `member` VALUES (26, 'Tom', '15266668585', '男', 24, 2, '2021-07-06', '08-07', 1, -5, '2021-06-02', NULL, NULL, 0);
INSERT INTO `member` VALUES (34, '王泽明', '17858966255', '男', 19, 5, '2021-07-06', '05-08', 2, 820, '2021-07-10', NULL, NULL, 0);
INSERT INTO `member` VALUES (35, '张红', '18799256874', '女', 23, 1, '2021-07-07', '04-08', 1, -7, '2021-08-31', NULL, NULL, 1);
INSERT INTO `member` VALUES (37, '王芳', '15299950487', '女', 22, 3, '2021-07-07', '04-21', 1, 990, '2021-08-01', NULL, NULL, 0);
INSERT INTO `member` VALUES (38, '李明', '15699588547', '男', 22, 3, '2021-07-07', '04-21', 1, 0, '2021-07-03', NULL, NULL, 0);
INSERT INTO `member` VALUES (42, 'jerry', '15266528547', '男', 25, 2, '2021-07-08', '04-08', 1, -7, '2021-06-02', NULL, NULL, 0);
INSERT INTO `member` VALUES (43, '方蓝', '13456789876', '女', 22, 5, '2021-07-10', '04-29', 1, 0, '2021-07-10', NULL, NULL, 0);
INSERT INTO `member` VALUES (44, '赵静', '15288888888', '女', 25, 3, '2021-07-12', '04-22', 1, 0, '2021-07-03', NULL, NULL, 0);
INSERT INTO `member` VALUES (45, '孙戏', '18566584785', '男', 35, 3, '2021-07-03', '05-03', 1, -2, '2021-07-03', NULL, NULL, 0);
INSERT INTO `member` VALUES (47, 'yyy', '12428596757', '女', 20, 1, '2023-09-11', '07-04', 1, 1000, '2023-09-28', '2023-09-12 18:07:56', '2023-09-12 18:09:09', 0);
INSERT INTO `member` VALUES (48, '大刘', '19891152512', '男', 21, 2, '2023-04-10', '2017-09-03T16:00:00.000Z', 1, 211, '2023-09-11', '2023-09-18 11:23:58', NULL, 0);
INSERT INTO `member` VALUES (49, '我', '19891152512', '女', 21, 1, '2023-09-30', '2023-09-29T16:00:00.000Z', 1, 211, '2023-09-24', '2023-09-18 11:24:49', NULL, 0);

-- ----------------------------
-- Table structure for membertype
-- ----------------------------
DROP TABLE IF EXISTS `membertype`;
CREATE TABLE `membertype`  (
  `typeId` int NOT NULL AUTO_INCREMENT COMMENT '会员卡类型编号',
  `typeName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '会员卡名称',
  `typeciShu` int NULL DEFAULT NULL COMMENT '会员卡有效次数',
  `typeDay` int NULL DEFAULT NULL COMMENT '会员卡有效天数',
  `typemoney` float NULL DEFAULT NULL COMMENT '售价',
  `createtime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `modifytime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `deleted` int NULL DEFAULT 0 COMMENT '删除标记',
  `remarkCard` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '会员卡备注',
  PRIMARY KEY (`typeId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of membertype
-- ----------------------------
INSERT INTO `membertype` VALUES (1, '季卡', 0, 90, 500, NULL, NULL, 0, '好大多数');
INSERT INTO `membertype` VALUES (2, '月卡', 0, 30, 150, NULL, NULL, 0, '大赛');
INSERT INTO `membertype` VALUES (3, '年卡', 0, 365, 1000, NULL, NULL, 0, '');
INSERT INTO `membertype` VALUES (5, '周卡', 0, 7, 50, NULL, NULL, 0, '');
INSERT INTO `membertype` VALUES (6, '日卡', 2, 1, 50, '2023-09-12 18:10:36', NULL, 0, '');
INSERT INTO `membertype` VALUES (7, '超级年卡', 30, 180, 300, '2023-09-18 10:34:05', NULL, 0, '666');

-- ----------------------------
-- Table structure for privatecoachinfo
-- ----------------------------
DROP TABLE IF EXISTS `privatecoachinfo`;
CREATE TABLE `privatecoachinfo`  (
  `pid` int NOT NULL AUTO_INCREMENT COMMENT '私教课记录编号',
  `memberid` int NULL DEFAULT NULL COMMENT '会员编号',
  `coachid` int NULL DEFAULT NULL COMMENT '教练编号',
  `subjectid` int NULL DEFAULT NULL COMMENT '课程编号',
  `count` int NULL DEFAULT NULL COMMENT '购课数量',
  `countprice` double NULL DEFAULT NULL COMMENT '购课总价',
  `realprice` double NULL DEFAULT NULL COMMENT '实收金额',
  `date` date NULL DEFAULT NULL COMMENT '购课日期',
  `state` int NULL DEFAULT NULL COMMENT '课程来源',
  `remark` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `createtime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `modifytime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `deleted` int NULL DEFAULT 0 COMMENT '删除标记',
  PRIMARY KEY (`pid`) USING BTREE,
  INDEX `fk_pri_subject`(`subjectid`) USING BTREE,
  INDEX `fk_pri_coach`(`coachid`) USING BTREE,
  INDEX `fk_pri_member`(`memberid`) USING BTREE,
  CONSTRAINT `fk_pri_coach` FOREIGN KEY (`coachid`) REFERENCES `coach` (`coachId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_pri_member` FOREIGN KEY (`memberid`) REFERENCES `member` (`memberId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_pri_subject` FOREIGN KEY (`subjectid`) REFERENCES `subject` (`subId`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of privatecoachinfo
-- ----------------------------
INSERT INTO `privatecoachinfo` VALUES (3, 25, 16, 1, 1, 200, 30, '2021-07-07', 1, '', NULL, NULL, 0);
INSERT INTO `privatecoachinfo` VALUES (13, 26, 14, 2, 22, 660, 500.5, '2021-07-15', 1, '', NULL, NULL, 0);
INSERT INTO `privatecoachinfo` VALUES (14, 38, 14, 4, 25, 16650, 18888.858, '2021-07-16', 1, '', NULL, NULL, 0);
INSERT INTO `privatecoachinfo` VALUES (16, 34, 11, 1, 5, 150, 200, '2021-07-02', 1, '', NULL, NULL, 0);
INSERT INTO `privatecoachinfo` VALUES (17, 25, 4, 5, 5, 100, 100, '2021-07-01', 1, '', NULL, NULL, 0);
INSERT INTO `privatecoachinfo` VALUES (20, 25, 2, 2, 2, 2, 2, '2023-09-12', 2, '2', '2023-09-12 18:16:49', NULL, 0);

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '已触发的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '任务详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '暂停的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '调度器状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '触发器详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '门店主键',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '门店姓名',
  `num` int NULL DEFAULT NULL COMMENT '门店编号',
  `city` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '所在城市',
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '省份名称',
  `address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '门店地址',
  `quantity` int NULL DEFAULT NULL COMMENT '员工数量',
  `shopowner` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '店长',
  `shop_phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '店长电话',
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '门店简介',
  `createtime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建时间',
  `modifytime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '修改时间',
  `deleted` int NULL DEFAULT 0 COMMENT '删除标记',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of store
-- ----------------------------
INSERT INTO `store` VALUES (1, '亚特体育俱乐部', 1, '西安市', '陕西', '陕西省西安市金花北路369号新兴俊景园3楼', 10, '梁亚东', '18365918712', '陕西亚特体育俱乐部股份有限公司创始于2001年，通过直营连锁健身俱乐部为客户提供功能齐全、设备专业、服务多元的全方位运动健身服务，是西安地区规模最大，产业综合实力最强的运动健身龙头企业。　　　', NULL, NULL, 0);
INSERT INTO `store` VALUES (2, '瑞力健身', 2, '西安市', '陕西', '陕西省西安市汉城南路92号西北方向170米', 10, '李亚连', '181 4230 5730', '陕西省西安市汉城南路92号西北方向170米', NULL, NULL, 0);
INSERT INTO `store` VALUES (3, '晨风健身会所', 3, '延安市', '陕西', '陕西省延安市延川县北新街西50米', 10, '陈小妹', '0911 833 3666', '晨风健身会所', NULL, NULL, 0);
INSERT INTO `store` VALUES (4, '玉军健身俱乐部', 4, '淄博市', '山东', '山东省淄博市新建一路第五季5楼', 10, '李黎', '0533 872 6688', '健身', NULL, NULL, 0);
INSERT INTO `store` VALUES (5, '润龙健身俱乐部', 5, '淄博市', '山东', '山东省淄博市松龄西路银座新天地3楼', 10, '程小娜', '0533 555 5955', '健身', NULL, NULL, 0);
INSERT INTO `store` VALUES (6, '凹凸秀健身', 6, '北京', '北京', '北京市国瑞北路78号', 10, '杨萌萌', '010 5621 8323', '美女健身', NULL, NULL, 0);
INSERT INTO `store` VALUES (7, '中航健身会', 7, '深圳市', '广东', '广东省深圳市深南大道6012-1号', 10, '王岚', '0755 8297 3277', '中航健身', NULL, NULL, 0);
INSERT INTO `store` VALUES (8, '领动健身', 8, '太原市', '山西', '山西省太原市旱西关街三桥大厦对面', 10, '田成文', '0351 327 2000', '健身', NULL, NULL, 0);
INSERT INTO `store` VALUES (9, '杭州市健身中心', 9, '杭州市', '浙江', '浙江省杭州市中山北路572号3-6层', 10, '李为民', '0571 8506 0945', '为民健身', NULL, NULL, 0);
INSERT INTO `store` VALUES (10, '郑州市莱喜健身俱乐部', 10, '郑州市', '河南', '河南省郑州市长江路兴华南街交汇处西100米路南', 10, '史新黎', '0371 5555 3116', '使得', NULL, NULL, 0);

-- ----------------------------
-- Table structure for subject
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject`  (
  `subId` int NOT NULL AUTO_INCREMENT COMMENT '课程编号',
  `subname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名',
  `sellingPrice` double NULL DEFAULT NULL COMMENT '课程单价',
  `createtime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建时间',
  `modifytime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改时间',
  `deleted` int NULL DEFAULT 0 COMMENT '删除标记',
  `beginTime` datetime NULL DEFAULT NULL COMMENT '开课时间',
  `endTime` datetime NULL DEFAULT NULL COMMENT '结课时间',
  PRIMARY KEY (`subId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES (1, '健身球', 30, NULL, NULL, 0, '2023-09-19 09:06:39', '2023-09-20 09:06:44');
INSERT INTO `subject` VALUES (2, '跑步机', 35, NULL, NULL, 0, '2023-09-19 09:06:48', '2023-09-22 09:06:52');
INSERT INTO `subject` VALUES (4, '压力车', 50, NULL, NULL, 0, '2023-08-08 09:06:56', '2023-08-27 09:07:01');
INSERT INTO `subject` VALUES (5, '仰卧起坐', 20, NULL, NULL, 0, NULL, NULL);
INSERT INTO `subject` VALUES (6, '健身操', 50, NULL, '2023-09-12 18:01:20', 0, NULL, NULL);
INSERT INTO `subject` VALUES (7, '瑜伽课', 88, '2023-09-12 16:17:25', NULL, 1, NULL, NULL);
INSERT INTO `subject` VALUES (8, '啦啦操', 2000, '2023-09-18 09:27:08', NULL, 0, '2023-09-01 00:00:00', '2023-09-19 00:00:00');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2023-09-11 15:28:17', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2023-09-11 15:28:17', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2023-09-11 15:28:17', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'false', 'Y', 'admin', '2023-09-11 15:28:17', 'admin', '2023-09-11 16:41:39', '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2023-09-11 15:28:17', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2023-09-11 15:28:17', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-09-11 15:27:50', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-09-11 15:27:50', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-09-11 15:27:50', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-09-11 15:27:50', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-09-11 15:27:50', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-09-11 15:27:50', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-09-11 15:27:50', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-09-11 15:27:50', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-09-11 15:27:50', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-09-11 15:27:50', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2023-09-11 15:28:15', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-09-11 15:28:15', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-09-11 15:28:15', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2023-09-11 15:28:15', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2023-09-11 15:28:15', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2023-09-11 15:28:15', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2023-09-11 15:28:15', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2023-09-11 15:28:15', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2023-09-11 15:28:15', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2023-09-11 15:28:15', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2023-09-11 15:28:15', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2023-09-11 15:28:15', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2023-09-11 15:28:15', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2023-09-11 15:28:15', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2023-09-11 15:28:15', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2023-09-11 15:28:15', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2023-09-11 15:28:15', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-09-11 15:28:15', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-09-11 15:28:15', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-09-11 15:28:15', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-09-11 15:28:15', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2023-09-11 15:28:15', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-09-11 15:28:15', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-09-11 15:28:15', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-09-11 15:28:15', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-09-11 15:28:15', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-09-11 15:28:15', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2023-09-11 15:28:15', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2023-09-11 15:28:15', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2023-09-11 15:28:13', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2023-09-11 15:28:13', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2023-09-11 15:28:13', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2023-09-11 15:28:13', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2023-09-11 15:28:13', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2023-09-11 15:28:13', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2023-09-11 15:28:13', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2023-09-11 15:28:13', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2023-09-11 15:28:13', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2023-09-11 15:28:13', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2023-09-11 15:28:21', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2023-09-11 15:28:21', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2023-09-11 15:28:21', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status`) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 149 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-11 15:30:00');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-11 16:38:30');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-11 17:11:13');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-11 17:43:13');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-12 08:39:37');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-12 11:50:52');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-12 14:43:40');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-12 15:15:54');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-13 08:39:16');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-13 14:43:48');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-13 15:19:52');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-13 15:52:16');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-14 08:41:57');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-14 09:31:44');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-14 15:12:44');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-14 15:52:26');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-17 20:36:53');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-18 08:48:03');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-18 10:14:53');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-18 11:00:28');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-09-18 11:13:16');
INSERT INTO `sys_logininfor` VALUES (121, '大刘', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-18 11:13:29');
INSERT INTO `sys_logininfor` VALUES (122, '大刘', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-09-18 11:16:40');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-18 11:17:13');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-18 15:02:12');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-18 16:24:13');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-18 16:52:05');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-18 17:03:26');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-19 08:59:30');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-19 09:34:56');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-09-19 10:17:40');
INSERT INTO `sys_logininfor` VALUES (131, '大刘', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-19 10:17:49');
INSERT INTO `sys_logininfor` VALUES (132, '大刘', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-09-19 10:18:20');
INSERT INTO `sys_logininfor` VALUES (133, '大刘', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-19 10:18:22');
INSERT INTO `sys_logininfor` VALUES (134, '大刘', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-19 10:55:59');
INSERT INTO `sys_logininfor` VALUES (135, '大刘', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-09-19 10:56:17');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-19 11:03:14');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-19 11:39:54');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-19 15:23:17');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-19 16:04:04');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-19 16:56:06');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-19 17:39:04');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-09-19 17:39:18');
INSERT INTO `sys_logininfor` VALUES (143, '大刘', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-19 17:39:24');
INSERT INTO `sys_logininfor` VALUES (144, '大刘', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-09-19 17:40:19');
INSERT INTO `sys_logininfor` VALUES (145, '大刘', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-19 17:40:23');
INSERT INTO `sys_logininfor` VALUES (146, '大刘', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-09-19 17:41:22');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-19 17:41:28');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-09-20 15:06:57');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2091 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2023-09-11 15:27:59', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', 1, 0, 'M', '1', '0', '', 'monitor', 'admin', '2023-09-11 15:27:59', 'admin', '2023-09-11 16:41:18', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2023-09-11 15:27:59', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 4, 'http://ruoyi.vip', NULL, '', 0, 0, 'M', '1', '0', '', 'guide', 'admin', '2023-09-11 15:27:59', 'admin', '2023-09-11 16:38:56', '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2023-09-11 15:27:59', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2023-09-11 15:27:59', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2023-09-11 15:27:59', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2023-09-11 15:27:59', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2023-09-11 15:27:59', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2023-09-11 15:27:59', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2023-09-11 15:27:59', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2023-09-11 15:27:59', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2023-09-11 15:27:59', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2023-09-11 15:27:59', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2023-09-11 15:27:59', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2023-09-11 15:27:59', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2023-09-11 15:27:59', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2023-09-11 15:27:59', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2023-09-11 15:27:59', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '1', '0', 'tool:build:list', 'build', 'admin', '2023-09-11 15:27:59', 'admin', '2023-09-11 16:41:03', '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2023-09-11 15:27:59', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '1', '0', 'tool:swagger:list', 'swagger', 'admin', '2023-09-11 15:27:59', 'admin', '2023-09-11 16:41:09', '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2023-09-11 15:27:59', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2023-09-11 15:27:59', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2023-09-11 15:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2023-09-11 15:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2023-09-11 15:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2023-09-11 15:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2023-09-11 15:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2023-09-11 15:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2023-09-11 15:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2023-09-11 15:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2023-09-11 15:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2023-09-11 15:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2023-09-11 15:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2023-09-11 15:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2023-09-11 15:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2023-09-11 15:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2023-09-11 15:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2023-09-11 15:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2023-09-11 15:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2023-09-11 15:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2023-09-11 15:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2023-09-11 15:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2023-09-11 15:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2023-09-11 15:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2023-09-11 15:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2023-09-11 15:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2023-09-11 15:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2023-09-11 15:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2023-09-11 15:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2023-09-11 15:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2023-09-11 15:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2023-09-11 15:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2023-09-11 15:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2023-09-11 15:27:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2023-09-11 15:28:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2023-09-11 15:28:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2023-09-11 15:28:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2023-09-11 15:28:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2023-09-11 15:28:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2023-09-11 15:28:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2023-09-11 15:28:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2023-09-11 15:28:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2023-09-11 15:28:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2023-09-11 15:28:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2023-09-11 15:28:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2023-09-11 15:28:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2023-09-11 15:28:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2023-09-11 15:28:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2023-09-11 15:28:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2023-09-11 15:28:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2023-09-11 15:28:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2023-09-11 15:28:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2023-09-11 15:28:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2023-09-11 15:28:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2023-09-11 15:28:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2023-09-11 15:28:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2023-09-11 15:28:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 116, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2023-09-11 15:28:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 116, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2023-09-11 15:28:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 116, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2023-09-11 15:28:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 116, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2023-09-11 15:28:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 116, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2023-09-11 15:28:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 116, 6, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2023-09-11 15:28:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2012, '数据管理', 0, 0, 'shuju', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'chart', 'admin', '2023-09-11 18:29:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2019, '器材管理', 2012, 1, 'equipment', 'equipment/equipment/index', NULL, 1, 0, 'C', '0', '0', 'equipment:equipment:list', 'table', 'admin', '2023-09-12 11:55:17', 'admin', '2023-09-12 18:21:02', '器材管理菜单');
INSERT INTO `sys_menu` VALUES (2020, '器材管理查询', 2019, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'equipment:equipment:query', '#', 'admin', '2023-09-12 11:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2021, '器材管理新增', 2019, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'equipment:equipment:add', '#', 'admin', '2023-09-12 11:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2022, '器材管理修改', 2019, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'equipment:equipment:edit', '#', 'admin', '2023-09-12 11:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2023, '器材管理删除', 2019, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'equipment:equipment:remove', '#', 'admin', '2023-09-12 11:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2024, '器材管理导出', 2019, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'equipment:equipment:export', '#', 'admin', '2023-09-12 11:55:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2031, '课程管理', 2012, 1, 'subject', 'subject/subject/index', NULL, 1, 0, 'C', '0', '0', 'subject:subject:list', 'dict', 'admin', '2023-09-12 16:06:29', 'admin', '2023-09-12 18:21:11', '课程管理菜单');
INSERT INTO `sys_menu` VALUES (2032, '课程管理查询', 2031, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'subject:subject:query', '#', 'admin', '2023-09-12 16:06:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2033, '课程管理新增', 2031, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'subject:subject:add', '#', 'admin', '2023-09-12 16:06:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2034, '课程管理修改', 2031, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'subject:subject:edit', '#', 'admin', '2023-09-12 16:06:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2035, '课程管理删除', 2031, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'subject:subject:remove', '#', 'admin', '2023-09-12 16:06:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2036, '课程管理导出', 2031, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'subject:subject:export', '#', 'admin', '2023-09-12 16:06:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2043, '商品管理', 2012, 1, 'goods', 'goods/goods/index', NULL, 1, 0, 'C', '0', '0', 'goods:goods:list', 'clipboard', 'admin', '2023-09-12 16:36:35', 'admin', '2023-09-12 18:21:19', '商品管理菜单');
INSERT INTO `sys_menu` VALUES (2044, '商品管理查询', 2043, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'goods:goods:query', '#', 'admin', '2023-09-12 16:36:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2045, '商品管理新增', 2043, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'goods:goods:add', '#', 'admin', '2023-09-12 16:36:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2046, '商品管理修改', 2043, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'goods:goods:edit', '#', 'admin', '2023-09-12 16:36:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2047, '商品管理删除', 2043, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'goods:goods:remove', '#', 'admin', '2023-09-12 16:36:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2048, '商品管理导出', 2043, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'goods:goods:export', '#', 'admin', '2023-09-12 16:36:35', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2049, '教练管理', 2012, 1, 'coach', 'coach/coach/index', NULL, 1, 0, 'C', '0', '0', 'coach:coach:list', 'guide', 'admin', '2023-09-12 16:59:17', 'admin', '2023-09-12 18:21:32', '教练管理菜单');
INSERT INTO `sys_menu` VALUES (2050, '教练管理查询', 2049, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'coach:coach:query', '#', 'admin', '2023-09-12 16:59:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2051, '教练管理新增', 2049, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'coach:coach:add', '#', 'admin', '2023-09-12 16:59:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2052, '教练管理修改', 2049, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'coach:coach:edit', '#', 'admin', '2023-09-12 16:59:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2053, '教练管理删除', 2049, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'coach:coach:remove', '#', 'admin', '2023-09-12 16:59:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2054, '教练管理导出', 2049, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'coach:coach:export', '#', 'admin', '2023-09-12 16:59:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2055, '会员管理', 2012, 1, 'member', 'member/member/index', NULL, 1, 0, 'C', '0', '0', 'member:member:list', 'date-range', 'admin', '2023-09-12 17:13:39', 'admin', '2023-09-12 18:21:42', '会员管理菜单');
INSERT INTO `sys_menu` VALUES (2056, '会员管理查询', 2055, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'member:member:query', '#', 'admin', '2023-09-12 17:13:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2057, '会员管理新增', 2055, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'member:member:add', '#', 'admin', '2023-09-12 17:13:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2058, '会员管理修改', 2055, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'member:member:edit', '#', 'admin', '2023-09-12 17:13:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2059, '会员管理删除', 2055, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'member:member:remove', '#', 'admin', '2023-09-12 17:13:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2060, '会员管理导出', 2055, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'member:member:export', '#', 'admin', '2023-09-12 17:13:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2061, '商品购买信息管理', 2012, 1, 'goodinfo', 'goodinfo/goodinfo/index', NULL, 1, 0, 'C', '0', '0', 'goodinfo:goodinfo:list', 'money', 'admin', '2023-09-12 17:21:25', 'admin', '2023-09-12 18:21:54', '商品购买信息管理菜单');
INSERT INTO `sys_menu` VALUES (2062, '商品购买信息管理查询', 2061, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'goodinfo:goodinfo:query', '#', 'admin', '2023-09-12 17:21:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2063, '商品购买信息管理新增', 2061, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'goodinfo:goodinfo:add', '#', 'admin', '2023-09-12 17:21:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2064, '商品购买信息管理修改', 2061, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'goodinfo:goodinfo:edit', '#', 'admin', '2023-09-12 17:21:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2065, '商品购买信息管理删除', 2061, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'goodinfo:goodinfo:remove', '#', 'admin', '2023-09-12 17:21:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2066, '商品购买信息管理导出', 2061, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'goodinfo:goodinfo:export', '#', 'admin', '2023-09-12 17:21:25', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2067, '会员卡管理', 2012, 1, 'membertype', 'membertype/membertype/index', NULL, 1, 0, 'C', '0', '0', 'membertype:membertype:list', 'code', 'admin', '2023-09-12 17:31:56', 'admin', '2023-09-12 18:22:03', '会员卡管理菜单');
INSERT INTO `sys_menu` VALUES (2068, '会员卡管理查询', 2067, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'membertype:membertype:query', '#', 'admin', '2023-09-12 17:31:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2069, '会员卡管理新增', 2067, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'membertype:membertype:add', '#', 'admin', '2023-09-12 17:31:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2070, '会员卡管理修改', 2067, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'membertype:membertype:edit', '#', 'admin', '2023-09-12 17:31:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2071, '会员卡管理删除', 2067, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'membertype:membertype:remove', '#', 'admin', '2023-09-12 17:31:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2072, '会员卡管理导出', 2067, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'membertype:membertype:export', '#', 'admin', '2023-09-12 17:31:56', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2073, '会员私教管理', 2012, 1, 'privatecoachinfo', 'privatecoachinfo/privatecoachinfo/index', NULL, 1, 0, 'C', '0', '0', 'privatecoachinfo:privatecoachinfo:list', 'people', 'admin', '2023-09-12 17:41:26', 'admin', '2023-09-12 18:22:15', '会员私教管理菜单');
INSERT INTO `sys_menu` VALUES (2074, '会员私教管理查询', 2073, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'privatecoachinfo:privatecoachinfo:query', '#', 'admin', '2023-09-12 17:41:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2075, '会员私教管理新增', 2073, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'privatecoachinfo:privatecoachinfo:add', '#', 'admin', '2023-09-12 17:41:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2076, '会员私教管理修改', 2073, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'privatecoachinfo:privatecoachinfo:edit', '#', 'admin', '2023-09-12 17:41:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2077, '会员私教管理删除', 2073, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'privatecoachinfo:privatecoachinfo:remove', '#', 'admin', '2023-09-12 17:41:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2078, '会员私教管理导出', 2073, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'privatecoachinfo:privatecoachinfo:export', '#', 'admin', '2023-09-12 17:41:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2079, '充值管理', 2012, 1, 'chongzhi', 'chongzhi/chongzhi/index', NULL, 1, 0, 'C', '0', '0', 'chongzhi:chongzhi:list', 'excel', 'admin', '2023-09-12 17:48:38', 'admin', '2023-09-12 18:22:28', '充值管理菜单');
INSERT INTO `sys_menu` VALUES (2080, '充值管理查询', 2079, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'chongzhi:chongzhi:query', '#', 'admin', '2023-09-12 17:48:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2081, '充值管理新增', 2079, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'chongzhi:chongzhi:add', '#', 'admin', '2023-09-12 17:48:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2082, '充值管理修改', 2079, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'chongzhi:chongzhi:edit', '#', 'admin', '2023-09-12 17:48:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2083, '充值管理删除', 2079, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'chongzhi:chongzhi:remove', '#', 'admin', '2023-09-12 17:48:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2084, '充值管理导出', 2079, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'chongzhi:chongzhi:export', '#', 'admin', '2023-09-12 17:48:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2085, '门店管理', 2012, 1, 'store', 'store/store/index', NULL, 1, 0, 'C', '0', '0', 'store:store:list', 'peoples', 'admin', '2023-09-18 17:47:39', 'admin', '2023-09-18 18:04:09', '门店管理菜单');
INSERT INTO `sys_menu` VALUES (2086, '门店管理查询', 2085, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'store:store:query', '#', 'admin', '2023-09-18 17:47:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2087, '门店管理新增', 2085, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'store:store:add', '#', 'admin', '2023-09-18 17:47:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2088, '门店管理修改', 2085, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'store:store:edit', '#', 'admin', '2023-09-18 17:47:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2089, '门店管理删除', 2085, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'store:store:remove', '#', 'admin', '2023-09-18 17:47:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2090, '门店管理导出', 2085, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'store:store:export', '#', 'admin', '2023-09-18 17:47:39', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2023-09-11 15:28:24', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2023-09-11 15:28:24', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type`) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status`) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 264 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2023-09-11 15:27:59\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":4,\"menuName\":\"若依官网\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"http://ruoyi.vip\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-11 16:38:56', 27);
INSERT INTO `sys_oper_log` VALUES (101, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"tool/build/index\",\"createTime\":\"2023-09-11 15:27:59\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":115,\"menuName\":\"表单构建\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":3,\"path\":\"build\",\"perms\":\"tool:build:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-11 16:41:03', 29);
INSERT INTO `sys_oper_log` VALUES (102, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"tool/swagger/index\",\"createTime\":\"2023-09-11 15:27:59\",\"icon\":\"swagger\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":117,\"menuName\":\"系统接口\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":3,\"path\":\"swagger\",\"perms\":\"tool:swagger:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-11 16:41:09', 31);
INSERT INTO `sys_oper_log` VALUES (103, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2023-09-11 15:27:59\",\"icon\":\"monitor\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2,\"menuName\":\"系统监控\",\"menuType\":\"M\",\"orderNum\":2,\"params\":{},\"parentId\":0,\"path\":\"monitor\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-11 16:41:18', 13);
INSERT INTO `sys_oper_log` VALUES (104, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', NULL, '/system/config', '127.0.0.1', '内网IP', '{\"configId\":4,\"configKey\":\"sys.account.captchaEnabled\",\"configName\":\"账号自助-验证码开关\",\"configType\":\"Y\",\"configValue\":\"false\",\"createBy\":\"admin\",\"createTime\":\"2023-09-11 15:28:17\",\"params\":{},\"remark\":\"是否开启验证码功能（true开启，false关闭）\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-11 16:41:40', 21);
INSERT INTO `sys_oper_log` VALUES (105, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"equipment\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-11 17:11:50', 116);
INSERT INTO `sys_oper_log` VALUES (106, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"equipment\",\"className\":\"Equipment\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"器械ID\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-11 17:11:50\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Num\",\"columnComment\":\"器械编号\",\"columnId\":2,\"columnName\":\"num\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-11 17:11:50\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"num\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"器械名称\",\"columnId\":3,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-11 17:11:50\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Type\",\"columnComment\":\"器械类型\",\"columnId\":4,\"columnName\":\"type\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-11 17:11:50\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"type\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":fa', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-11 17:18:02', 66);
INSERT INTO `sys_oper_log` VALUES (107, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"equipment\"}', NULL, 0, NULL, '2023-09-11 18:05:04', 280);
INSERT INTO `sys_oper_log` VALUES (108, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"course\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-11 18:13:32', 135);
INSERT INTO `sys_oper_log` VALUES (109, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"course\",\"className\":\"Course\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"课程主键\",\"columnId\":10,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-11 18:13:32\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"课程名称\",\"columnId\":11,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-11 18:13:32\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Type\",\"columnComment\":\"课程类型\",\"columnId\":12,\"columnName\":\"type\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-11 18:13:32\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"type\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Desc\",\"columnComment\":\"课程简介\",\"columnId\":13,\"columnName\":\"desc\",\"columnType\":\"tinytext\",\"createBy\":\"admin\",\"createTime\":\"2023-09-11 18:13:32\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"desc\",\"javaType\":\"String\",\"list\":true,\"params\":{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-11 18:15:30', 80);
INSERT INTO `sys_oper_log` VALUES (110, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"course\"}', NULL, 0, NULL, '2023-09-11 18:22:10', 78);
INSERT INTO `sys_oper_log` VALUES (111, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"chart\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"数据管理\",\"menuType\":\"M\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"path\":\"shuju\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-11 18:29:15', 50);
INSERT INTO `sys_oper_log` VALUES (112, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"equipment/equipment/index\",\"createTime\":\"2023-09-11 17:18:39\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2000,\"menuName\":\"器械管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2012,\"path\":\"equipment\",\"perms\":\"equipment:equipment:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-11 18:29:34', 38);
INSERT INTO `sys_oper_log` VALUES (113, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"course/course/index\",\"createTime\":\"2023-09-11 18:23:13\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2006,\"menuName\":\"课程管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2012,\"path\":\"course\",\"perms\":\"course:course:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-11 18:29:41', 17);
INSERT INTO `sys_oper_log` VALUES (114, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"coach\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-11 18:30:12', 142);
INSERT INTO `sys_oper_log` VALUES (115, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"coach\",\"className\":\"Coach\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"教练主键\",\"columnId\":18,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-11 18:30:12\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Num\",\"columnComment\":\"教练编号\",\"columnId\":19,\"columnName\":\"num\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-11 18:30:12\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"javaField\":\"num\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"教练名称\",\"columnId\":20,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-11 18:30:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Gender\",\"columnComment\":\"教练性别\",\"columnId\":21,\"columnName\":\"gender\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-11 18:30:12\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"gender\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":fals', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 08:41:55', 78);
INSERT INTO `sys_oper_log` VALUES (116, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"coach\"}', NULL, 0, NULL, '2023-09-12 08:51:15', 80);
INSERT INTO `sys_oper_log` VALUES (117, '器械管理', 1, 'com.ruoyi.web.controller.gym.EquipmentController.add()', 'POST', 1, 'admin', NULL, '/equipment/equipment', '127.0.0.1', '内网IP', '{\"createtime\":\"2023-09-12 08:54:36\",\"name\":\"跑步机\",\"quantity\":20,\"remarks\":\"跑步机跑步机跑步机跑步机\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'num\' doesn\'t have a default value\r\n### The error may exist in com/ruoyi/gym/mapper/EquipmentMapper.java (best guess)\r\n### The error may involve com.ruoyi.gym.mapper.EquipmentMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO equipment  ( name,  quantity, remarks,  createtime )  VALUES  ( ?,  ?, ?,  ? )\r\n### Cause: java.sql.SQLException: Field \'num\' doesn\'t have a default value\n; Field \'num\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'num\' doesn\'t have a default value', '2023-09-12 08:54:36', 157);
INSERT INTO `sys_oper_log` VALUES (118, '器械管理', 1, 'com.ruoyi.web.controller.gym.EquipmentController.add()', 'POST', 1, 'admin', NULL, '/equipment/equipment', '127.0.0.1', '内网IP', '{\"createtime\":\"2023-09-12 08:55:36\",\"name\":\"跑步机\",\"quantity\":20,\"remarks\":\"跑步机跑步机跑步机跑步机\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'num\' doesn\'t have a default value\r\n### The error may exist in com/ruoyi/gym/mapper/EquipmentMapper.java (best guess)\r\n### The error may involve com.ruoyi.gym.mapper.EquipmentMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO equipment  ( name,  quantity, remarks,  createtime )  VALUES  ( ?,  ?, ?,  ? )\r\n### Cause: java.sql.SQLException: Field \'num\' doesn\'t have a default value\n; Field \'num\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'num\' doesn\'t have a default value', '2023-09-12 08:55:36', 11);
INSERT INTO `sys_oper_log` VALUES (119, '课程管理', 1, 'com.ruoyi.web.controller.gym.CourseController.add()', 'POST', 1, 'admin', NULL, '/course/course', '127.0.0.1', '内网IP', '{\"classbegin\":\"2022-08-22\",\"createtime\":\"2023-09-12 08:56:17\",\"desc\":\"瑜伽课\",\"name\":\"瑜伽课\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin,\n\ncreatetime )  VALUES  ( \'瑜伽课\',\n\n\'瑜伽课\',\n\'2022-08-2\' at line 3\r\n### The error may exist in com/ruoyi/gym/mapper/CourseMapper.java (best guess)\r\n### The error may involve com.ruoyi.gym.mapper.CourseMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO course  ( name,  desc, classbegin,  createtime )  VALUES  ( ?,  ?, ?,  ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin,\n\ncreatetime )  VALUES  ( \'瑜伽课\',\n\n\'瑜伽课\',\n\'2022-08-2\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin,\n\ncreatetime )  VALUES  ( \'瑜伽课\',\n\n\'瑜伽课\',\n\'2022-08-2\' at line 3', '2023-09-12 08:56:17', 22);
INSERT INTO `sys_oper_log` VALUES (120, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"equipment\",\"className\":\"Equipment\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"器械ID\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-11 17:11:50\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2023-09-11 17:18:02\",\"usableColumn\":false},{\"capJavaField\":\"Num\",\"columnComment\":\"器械编号\",\"columnId\":2,\"columnName\":\"num\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-11 17:11:50\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"num\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2023-09-11 17:18:02\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"器械名称\",\"columnId\":3,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-11 17:11:50\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2023-09-11 17:18:02\",\"usableColumn\":false},{\"capJavaField\":\"Type\",\"columnComment\":\"器械类型\",\"columnId\":4,\"columnName\":\"type\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-11 17:11:50\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 08:56:48', 174);
INSERT INTO `sys_oper_log` VALUES (121, '课程管理', 1, 'com.ruoyi.web.controller.gym.CourseController.add()', 'POST', 1, 'admin', NULL, '/course/course', '127.0.0.1', '内网IP', '{\"classbegin\":\"2022-08-30\",\"createtime\":\"2023-09-12 08:58:17\",\"desc\":\"瑜伽课瑜伽课瑜伽课\",\"name\":\"瑜伽课\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin,\n\ncreatetime )  VALUES  ( \'瑜伽课\',\n\n\'瑜伽课瑜伽课瑜�\' at line 3\r\n### The error may exist in com/ruoyi/gym/mapper/CourseMapper.java (best guess)\r\n### The error may involve com.ruoyi.gym.mapper.CourseMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO course  ( name,  desc, classbegin,  createtime )  VALUES  ( ?,  ?, ?,  ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin,\n\ncreatetime )  VALUES  ( \'瑜伽课\',\n\n\'瑜伽课瑜伽课瑜�\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin,\n\ncreatetime )  VALUES  ( \'瑜伽课\',\n\n\'瑜伽课瑜伽课瑜�\' at line 3', '2023-09-12 08:58:17', 5);
INSERT INTO `sys_oper_log` VALUES (122, '教练管理', 1, 'com.ruoyi.web.controller.gym.CoachController.add()', 'POST', 1, 'admin', NULL, '/coach/coach', '127.0.0.1', '内网IP', '{\"age\":\"30\",\"createtime\":\"2023-09-12 08:59:39\",\"entry\":\"2022-9-8\",\"gender\":\"女\",\"message\":\"张教练\",\"name\":\"张教练\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`coach`, CONSTRAINT `coach_ibfk_1` FOREIGN KEY (`id`) REFERENCES `store` (`id`))\r\n### The error may exist in com/ruoyi/gym/mapper/CoachMapper.java (best guess)\r\n### The error may involve com.ruoyi.gym.mapper.CoachMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO coach  ( name, gender, age, entry, message,  createtime )  VALUES  ( ?, ?, ?, ?, ?,  ? )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`coach`, CONSTRAINT `coach_ibfk_1` FOREIGN KEY (`id`) REFERENCES `store` (`id`))\n; Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`coach`, CONSTRAINT `coach_ibfk_1` FOREIGN KEY (`id`) REFERENCES `store` (`id`)); nested exception is java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`coach`, CONSTRAINT `coach_ibfk_1` FOREIGN KEY (`id`) REFERENCES `store` (`id`))', '2023-09-12 08:59:40', 20);
INSERT INTO `sys_oper_log` VALUES (123, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"equipment\",\"className\":\"Equipment\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"器械ID\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-11 17:11:50\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2023-09-12 08:56:48\",\"usableColumn\":false},{\"capJavaField\":\"Num\",\"columnComment\":\"器械编号\",\"columnId\":2,\"columnName\":\"num\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-11 17:11:50\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"num\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2023-09-12 08:56:48\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"器械名称\",\"columnId\":3,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-11 17:11:50\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2023-09-12 08:56:48\",\"usableColumn\":false},{\"capJavaField\":\"Type\",\"columnComment\":\"器械类型\",\"columnId\":4,\"columnName\":\"type\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-11 17:11:50\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 09:02:08', 188);
INSERT INTO `sys_oper_log` VALUES (124, '器械管理', 1, 'com.ruoyi.web.controller.gym.EquipmentController.add()', 'POST', 1, 'admin', NULL, '/equipment/equipment', '127.0.0.1', '内网IP', '{\"createtime\":\"2023-09-12 09:06:04\",\"name\":\"跑步机1\",\"quantity\":20,\"remarks\":\"跑步机1跑步机1跑步机1跑步机1\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'num\' doesn\'t have a default value\r\n### The error may exist in com/ruoyi/gym/mapper/EquipmentMapper.java (best guess)\r\n### The error may involve com.ruoyi.gym.mapper.EquipmentMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO equipment  ( name,  quantity, remarks,  createtime )  VALUES  ( ?,  ?, ?,  ? )\r\n### Cause: java.sql.SQLException: Field \'num\' doesn\'t have a default value\n; Field \'num\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'num\' doesn\'t have a default value', '2023-09-12 09:06:04', 95);
INSERT INTO `sys_oper_log` VALUES (125, '器械管理', 1, 'com.ruoyi.web.controller.gym.EquipmentController.add()', 'POST', 1, 'admin', NULL, '/equipment/equipment', '127.0.0.1', '内网IP', '{\"createtime\":\"2023-09-12 09:08:21\",\"name\":\"跑步机1\",\"quantity\":20,\"remarks\":\"跑步机1跑步机1跑步机1跑步机1\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'num\' doesn\'t have a default value\r\n### The error may exist in com/ruoyi/gym/mapper/EquipmentMapper.java (best guess)\r\n### The error may involve com.ruoyi.gym.mapper.EquipmentMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO equipment  ( name,  quantity, remarks,  createtime )  VALUES  ( ?,  ?, ?,  ? )\r\n### Cause: java.sql.SQLException: Field \'num\' doesn\'t have a default value\n; Field \'num\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'num\' doesn\'t have a default value', '2023-09-12 09:08:21', 13);
INSERT INTO `sys_oper_log` VALUES (126, '器械管理', 1, 'com.ruoyi.web.controller.gym.EquipmentController.add()', 'POST', 1, 'admin', NULL, '/equipment/equipment', '127.0.0.1', '内网IP', '{\"createtime\":\"2023-09-12 09:09:26\",\"name\":\"跑步机1\",\"num\":\"155081b5-e837-44fd-88f8-636a89fcb00d\",\"quantity\":80,\"remarks\":\"跑步机1跑步机1跑步机1跑步机1\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Data truncated for column \'num\' at row 1\r\n### The error may exist in com/ruoyi/gym/mapper/EquipmentMapper.java (best guess)\r\n### The error may involve com.ruoyi.gym.mapper.EquipmentMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO equipment  ( num, name,  quantity, remarks,  createtime )  VALUES  ( ?, ?,  ?, ?,  ? )\r\n### Cause: java.sql.SQLException: Data truncated for column \'num\' at row 1\n; Data truncated for column \'num\' at row 1; nested exception is java.sql.SQLException: Data truncated for column \'num\' at row 1', '2023-09-12 09:09:26', 466);
INSERT INTO `sys_oper_log` VALUES (127, '器械管理', 1, 'com.ruoyi.web.controller.gym.EquipmentController.add()', 'POST', 1, 'admin', NULL, '/equipment/equipment', '127.0.0.1', '内网IP', '{\"createtime\":\"2023-09-12 09:10:17\",\"name\":\"跑步机1\",\"num\":\"21c4bfdf-ebc8-46cc-b8a3-5edca62e7962\",\"quantity\":80,\"remarks\":\"跑步机1跑步机1跑步机1跑步机1\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Data truncated for column \'num\' at row 1\r\n### The error may exist in com/ruoyi/gym/mapper/EquipmentMapper.java (best guess)\r\n### The error may involve com.ruoyi.gym.mapper.EquipmentMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO equipment  ( num, name,  quantity, remarks,  createtime )  VALUES  ( ?, ?,  ?, ?,  ? )\r\n### Cause: java.sql.SQLException: Data truncated for column \'num\' at row 1\n; Data truncated for column \'num\' at row 1; nested exception is java.sql.SQLException: Data truncated for column \'num\' at row 1', '2023-09-12 09:10:17', 12);
INSERT INTO `sys_oper_log` VALUES (128, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"equipment\",\"className\":\"Equipment\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"器械ID\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-11 17:11:50\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2023-09-12 09:02:08\",\"usableColumn\":false},{\"capJavaField\":\"Num\",\"columnComment\":\"器械编号\",\"columnId\":2,\"columnName\":\"num\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-11 17:11:50\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"num\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2023-09-12 09:02:08\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"器械名称\",\"columnId\":3,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-11 17:11:50\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2023-09-12 09:02:08\",\"usableColumn\":false},{\"capJavaField\":\"Type\",\"columnComment\":\"器械类型\",\"columnId\":4,\"columnName\":\"type\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-11 17:11:50\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 09:11:17', 191);
INSERT INTO `sys_oper_log` VALUES (129, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/1', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 09:14:26', 49);
INSERT INTO `sys_oper_log` VALUES (130, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"equipment\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 09:14:32', 109);
INSERT INTO `sys_oper_log` VALUES (131, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"equipment\",\"className\":\"Equipment\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"器械ID\",\"columnId\":29,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 09:14:32\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Num\",\"columnComment\":\"器械编号\",\"columnId\":30,\"columnName\":\"num\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 09:14:32\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"javaField\":\"num\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"器械名称\",\"columnId\":31,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 09:14:32\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Type\",\"columnComment\":\"器械类型\",\"columnId\":32,\"columnName\":\"type\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 09:14:32\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"type\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":f', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 09:15:58', 115);
INSERT INTO `sys_oper_log` VALUES (132, '器械管理', 1, 'com.ruoyi.web.controller.gym.EquipmentController.add()', 'POST', 1, 'admin', NULL, '/equipment/equipment', '127.0.0.1', '内网IP', '{\"id\":1,\"name\":\"跑步机1\",\"quantity\":80,\"remarks\":\"跑步机1跑步机1跑步机1跑步机1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 09:22:07', 52);
INSERT INTO `sys_oper_log` VALUES (133, '器械管理', 3, 'com.ruoyi.web.controller.gym.EquipmentController.remove()', 'DELETE', 1, 'admin', NULL, '/equipment/equipment/1', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 09:24:26', 45);
INSERT INTO `sys_oper_log` VALUES (134, '器械管理', 1, 'com.ruoyi.web.controller.gym.EquipmentController.add()', 'POST', 1, 'admin', NULL, '/equipment/equipment', '127.0.0.1', '内网IP', '{\"id\":2,\"name\":\"跑步机\",\"quantity\":80,\"remarks\":\"跑步机跑步机跑步机跑步机\",\"type\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 09:24:49', 12);
INSERT INTO `sys_oper_log` VALUES (135, '课程管理', 1, 'com.ruoyi.web.controller.gym.CourseController.add()', 'POST', 1, 'admin', NULL, '/course/course', '127.0.0.1', '内网IP', '{\"classbegin\":\"11\",\"createtime\":\"2023-09-12 09:25:20\",\"desc\":\"11\",\"name\":\"11\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin,\n\ncreatetime )  VALUES  ( \'11\',\n\n\'11\',\n\'11\',\n\n\'2023-09-12 09:25\' at line 3\r\n### The error may exist in com/ruoyi/gym/mapper/CourseMapper.java (best guess)\r\n### The error may involve com.ruoyi.gym.mapper.CourseMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO course  ( name,  desc, classbegin,  createtime )  VALUES  ( ?,  ?, ?,  ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin,\n\ncreatetime )  VALUES  ( \'11\',\n\n\'11\',\n\'11\',\n\n\'2023-09-12 09:25\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin,\n\ncreatetime )  VALUES  ( \'11\',\n\n\'11\',\n\'11\',\n\n\'2023-09-12 09:25\' at line 3', '2023-09-12 09:25:20', 112);
INSERT INTO `sys_oper_log` VALUES (136, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/2', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 09:25:33', 66);
INSERT INTO `sys_oper_log` VALUES (137, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"course\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 09:25:38', 103);
INSERT INTO `sys_oper_log` VALUES (138, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"course\",\"className\":\"Course\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"课程主键\",\"columnId\":38,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 09:25:38\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"课程名称\",\"columnId\":39,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 09:25:38\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Type\",\"columnComment\":\"课程类型\",\"columnId\":40,\"columnName\":\"type\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 09:25:38\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"type\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":5,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Desc\",\"columnComment\":\"课程简介\",\"columnId\":41,\"columnName\":\"desc\",\"columnType\":\"tinytext\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 09:25:38\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"desc\",\"javaType\":\"String\",\"list\":true,\"params\":{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 09:26:59', 101);
INSERT INTO `sys_oper_log` VALUES (139, '课程管理', 1, 'com.ruoyi.web.controller.gym.CourseController.add()', 'POST', 1, 'admin', NULL, '/course/course', '127.0.0.1', '内网IP', '{\"classbegin\":\"2020-09-08\",\"desc\":\"瑜伽课瑜伽课瑜伽课瑜伽课\",\"name\":\"瑜伽课\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin )  VALUES  ( \'瑜伽课\',\n\n\'瑜伽课瑜伽课瑜伽课瑜伽�\' at line 3\r\n### The error may exist in com/ruoyi/gym/mapper/CourseMapper.java (best guess)\r\n### The error may involve com.ruoyi.gym.mapper.CourseMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO course  ( name,  desc, classbegin )  VALUES  ( ?,  ?, ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin )  VALUES  ( \'瑜伽课\',\n\n\'瑜伽课瑜伽课瑜伽课瑜伽�\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin )  VALUES  ( \'瑜伽课\',\n\n\'瑜伽课瑜伽课瑜伽课瑜伽�\' at line 3', '2023-09-12 09:32:26', 121);
INSERT INTO `sys_oper_log` VALUES (140, '课程管理', 1, 'com.ruoyi.web.controller.gym.CourseController.add()', 'POST', 1, 'admin', NULL, '/course/course', '127.0.0.1', '内网IP', '{\"classbegin\":\"2022-09-08\",\"desc\":\"瑜伽课瑜伽课瑜伽课瑜伽课\",\"name\":\"瑜伽课\",\"type\":\"塑身\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin )  VALUES  ( \'瑜伽课\',\n\'塑身\',\n\'瑜伽课瑜伽课瑜伽�\' at line 3\r\n### The error may exist in com/ruoyi/gym/mapper/CourseMapper.java (best guess)\r\n### The error may involve com.ruoyi.gym.mapper.CourseMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO course  ( name, type, desc, classbegin )  VALUES  ( ?, ?, ?, ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin )  VALUES  ( \'瑜伽课\',\n\'塑身\',\n\'瑜伽课瑜伽课瑜伽�\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin )  VALUES  ( \'瑜伽课\',\n\'塑身\',\n\'瑜伽课瑜伽课瑜伽�\' at line 3', '2023-09-12 09:34:26', 4);
INSERT INTO `sys_oper_log` VALUES (141, '课程管理', 1, 'com.ruoyi.web.controller.gym.CourseController.add()', 'POST', 1, 'admin', NULL, '/course/course', '127.0.0.1', '内网IP', '{\"classbegin\":\"2022-09-08\",\"desc\":\"瑜伽课瑜伽课瑜伽课瑜伽课\",\"name\":\"瑜伽课\",\"type\":\"塑身\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin )  VALUES  ( \'瑜伽课\',\n\'塑身\',\n\'瑜伽课瑜伽课瑜伽�\' at line 3\r\n### The error may exist in com/ruoyi/gym/mapper/CourseMapper.java (best guess)\r\n### The error may involve com.ruoyi.gym.mapper.CourseMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO course  ( name, type, desc, classbegin )  VALUES  ( ?, ?, ?, ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin )  VALUES  ( \'瑜伽课\',\n\'塑身\',\n\'瑜伽课瑜伽课瑜伽�\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin )  VALUES  ( \'瑜伽课\',\n\'塑身\',\n\'瑜伽课瑜伽课瑜伽�\' at line 3', '2023-09-12 09:35:18', 8);
INSERT INTO `sys_oper_log` VALUES (142, '课程管理', 1, 'com.ruoyi.web.controller.gym.CourseController.add()', 'POST', 1, 'admin', NULL, '/course/course', '127.0.0.1', '内网IP', '{\"classbegin\":\"20220908\",\"desc\":\"瑜伽课瑜伽课瑜伽课瑜伽课\",\"name\":\"瑜伽课\",\"type\":\"塑身\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin )  VALUES  ( \'瑜伽课\',\n\'塑身\',\n\'瑜伽课瑜伽课瑜伽�\' at line 3\r\n### The error may exist in com/ruoyi/gym/mapper/CourseMapper.java (best guess)\r\n### The error may involve com.ruoyi.gym.mapper.CourseMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO course  ( name, type, desc, classbegin )  VALUES  ( ?, ?, ?, ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin )  VALUES  ( \'瑜伽课\',\n\'塑身\',\n\'瑜伽课瑜伽课瑜伽�\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin )  VALUES  ( \'瑜伽课\',\n\'塑身\',\n\'瑜伽课瑜伽课瑜伽�\' at line 3', '2023-09-12 09:44:45', 6);
INSERT INTO `sys_oper_log` VALUES (143, '课程管理', 1, 'com.ruoyi.web.controller.gym.CourseController.add()', 'POST', 1, 'admin', NULL, '/course/course', '127.0.0.1', '内网IP', '{\"classbegin\":\"20220222\",\"desc\":\"瑜伽课\",\"name\":\"瑜伽课\",\"type\":\"塑身\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin )  VALUES  ( \'瑜伽课\',\n\'塑身\',\n\'瑜伽课\',\n\'20220222\' )\' at line 3\r\n### The error may exist in com/ruoyi/gym/mapper/CourseMapper.java (best guess)\r\n### The error may involve com.ruoyi.gym.mapper.CourseMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO course  ( name, type, desc, classbegin )  VALUES  ( ?, ?, ?, ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin )  VALUES  ( \'瑜伽课\',\n\'塑身\',\n\'瑜伽课\',\n\'20220222\' )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin )  VALUES  ( \'瑜伽课\',\n\'塑身\',\n\'瑜伽课\',\n\'20220222\' )\' at line 3', '2023-09-12 09:45:41', 6);
INSERT INTO `sys_oper_log` VALUES (144, '课程管理', 1, 'com.ruoyi.web.controller.gym.CourseController.add()', 'POST', 1, 'admin', NULL, '/course/course', '127.0.0.1', '内网IP', '{\"classbegin\":\"20220222\",\"desc\":\"瑜伽课\",\"name\":\"瑜伽课\",\"type\":\"塑身\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin )  VALUES  ( \'瑜伽课\',\n\'塑身\',\n\'瑜伽课\',\n\'20220222\' )\' at line 3\r\n### The error may exist in com/ruoyi/gym/mapper/CourseMapper.java (best guess)\r\n### The error may involve com.ruoyi.gym.mapper.CourseMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO course  ( name, type, desc, classbegin )  VALUES  ( ?, ?, ?, ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin )  VALUES  ( \'瑜伽课\',\n\'塑身\',\n\'瑜伽课\',\n\'20220222\' )\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin )  VALUES  ( \'瑜伽课\',\n\'塑身\',\n\'瑜伽课\',\n\'20220222\' )\' at line 3', '2023-09-12 09:49:55', 110);
INSERT INTO `sys_oper_log` VALUES (145, '课程管理', 1, 'com.ruoyi.web.controller.gym.CourseController.add()', 'POST', 1, 'admin', NULL, '/course/course', '127.0.0.1', '内网IP', '{\"classbegin\":\"20220222\",\"createtime\":\"2023-09-12 10:12:20\",\"desc\":\"瑜伽课瑜伽课\",\"name\":\"瑜伽课\",\"type\":\"塑身\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin,\n\ncreatetime )  VALUES  ( \'瑜伽课\',\n\'塑身\',\n\'瑜伽课瑜�\' at line 3\r\n### The error may exist in com/ruoyi/gym/mapper/CourseMapper.java (best guess)\r\n### The error may involve com.ruoyi.gym.mapper.CourseMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO course  ( name, type, desc, classbegin,  createtime )  VALUES  ( ?, ?, ?, ?,  ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin,\n\ncreatetime )  VALUES  ( \'瑜伽课\',\n\'塑身\',\n\'瑜伽课瑜�\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin,\n\ncreatetime )  VALUES  ( \'瑜伽课\',\n\'塑身\',\n\'瑜伽课瑜�\' at line 3', '2023-09-12 10:12:20', 141);
INSERT INTO `sys_oper_log` VALUES (146, '课程管理', 1, 'com.ruoyi.web.controller.gym.CourseController.add()', 'POST', 1, 'admin', NULL, '/course/course', '127.0.0.1', '内网IP', '{\"classbegin\":\"20220222\",\"createtime\":\"2023-09-12 10:15:32\",\"desc\":\"瑜伽课瑜伽课\",\"name\":\"瑜伽课\",\"type\":\"塑身\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin,\n\ncreatetime )  VALUES  ( \'瑜伽课\',\n\'塑身\',\n\'瑜伽课瑜�\' at line 3\r\n### The error may exist in com/ruoyi/gym/mapper/CourseMapper.java (best guess)\r\n### The error may involve com.ruoyi.gym.mapper.CourseMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO course  ( name, type, desc, classbegin,  createtime )  VALUES  ( ?, ?, ?, ?,  ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin,\n\ncreatetime )  VALUES  ( \'瑜伽课\',\n\'塑身\',\n\'瑜伽课瑜�\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin,\n\ncreatetime )  VALUES  ( \'瑜伽课\',\n\'塑身\',\n\'瑜伽课瑜�\' at line 3', '2023-09-12 10:15:32', 16);
INSERT INTO `sys_oper_log` VALUES (147, '课程管理', 1, 'com.ruoyi.web.controller.gym.CourseController.add()', 'POST', 1, 'admin', NULL, '/course/course', '127.0.0.1', '内网IP', '{\"classbegin\":\"666\",\"createtime\":\"2023-09-12 10:18:55\",\"desc\":\"666\",\"name\":\"666\",\"type\":\"666\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin,\n\ncreatetime )  VALUES  ( \'666\',\n\'666\',\n\'666\',\n\'666\',\n\n\'2023-09\' at line 3\r\n### The error may exist in com/ruoyi/gym/mapper/CourseMapper.java (best guess)\r\n### The error may involve com.ruoyi.gym.mapper.CourseMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO course  ( name, type, desc, classbegin,  createtime )  VALUES  ( ?, ?, ?, ?,  ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin,\n\ncreatetime )  VALUES  ( \'666\',\n\'666\',\n\'666\',\n\'666\',\n\n\'2023-09\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin,\n\ncreatetime )  VALUES  ( \'666\',\n\'666\',\n\'666\',\n\'666\',\n\n\'2023-09\' at line 3', '2023-09-12 10:18:55', 10);
INSERT INTO `sys_oper_log` VALUES (148, '课程管理', 1, 'com.ruoyi.web.controller.gym.CourseController.add()', 'POST', 1, 'admin', NULL, '/course/course', '127.0.0.1', '内网IP', '{\"classbegin\":\"666\",\"createtime\":\"2023-09-12 10:19:44\",\"desc\":\"666\",\"name\":\"666\",\"type\":\"666\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin,\n\ncreatetime )  VALUES  ( \'666\',\n\'666\',\n\'666\',\n\'666\',\n\n\'2023-09\' at line 3\r\n### The error may exist in com/ruoyi/gym/mapper/CourseMapper.java (best guess)\r\n### The error may involve com.ruoyi.gym.mapper.CourseMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO course  ( name, type, desc, classbegin,  createtime )  VALUES  ( ?, ?, ?, ?,  ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin,\n\ncreatetime )  VALUES  ( \'666\',\n\'666\',\n\'666\',\n\'666\',\n\n\'2023-09\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin,\n\ncreatetime )  VALUES  ( \'666\',\n\'666\',\n\'666\',\n\'666\',\n\n\'2023-09\' at line 3', '2023-09-12 10:19:44', 4);
INSERT INTO `sys_oper_log` VALUES (149, '课程管理', 1, 'com.ruoyi.web.controller.gym.CourseController.add()', 'POST', 1, 'admin', NULL, '/course/course', '127.0.0.1', '内网IP', '{\"classbegin\":\"666\",\"createtime\":\"2023-09-12 10:19:49\",\"desc\":\"666\",\"name\":\"666\",\"type\":\"666\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin,\n\ncreatetime )  VALUES  ( \'666\',\n\'666\',\n\'666\',\n\'666\',\n\n\'2023-09\' at line 3\r\n### The error may exist in com/ruoyi/gym/mapper/CourseMapper.java (best guess)\r\n### The error may involve com.ruoyi.gym.mapper.CourseMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO course  ( name, type, desc, classbegin,  createtime )  VALUES  ( ?, ?, ?, ?,  ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin,\n\ncreatetime )  VALUES  ( \'666\',\n\'666\',\n\'666\',\n\'666\',\n\n\'2023-09\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin,\n\ncreatetime )  VALUES  ( \'666\',\n\'666\',\n\'666\',\n\'666\',\n\n\'2023-09\' at line 3', '2023-09-12 10:19:49', 7);
INSERT INTO `sys_oper_log` VALUES (150, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/5', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 10:20:27', 52);
INSERT INTO `sys_oper_log` VALUES (151, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"course\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 10:20:32', 123);
INSERT INTO `sys_oper_log` VALUES (152, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"course\",\"className\":\"Course\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"课程主键\",\"columnId\":46,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 10:20:32\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"课程名称\",\"columnId\":47,\"columnName\":\"name\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 10:20:32\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Type\",\"columnComment\":\"课程类型\",\"columnId\":48,\"columnName\":\"type\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 10:20:32\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"javaField\":\"type\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Desc\",\"columnComment\":\"课程简介\",\"columnId\":49,\"columnName\":\"desc\",\"columnType\":\"tinytext\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 10:20:32\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"javaField\":\"desc\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"requi', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 10:22:04', 112);
INSERT INTO `sys_oper_log` VALUES (153, '课程管理', 1, 'com.ruoyi.web.controller.gym.CourseController.add()', 'POST', 1, 'admin', NULL, '/course/course', '127.0.0.1', '内网IP', '{\"classbegin\":\"111\",\"createtime\":\"2023-09-12 10:27:20\",\"desc\":\"111\",\"name\":\"111\",\"type\":\"111\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin,\n\ncreatetime )  VALUES  ( \'111\',\n\'111\',\n\'111\',\n\'111\',\n\n\'2023-09\' at line 3\r\n### The error may exist in com/ruoyi/gym/mapper/CourseMapper.java (best guess)\r\n### The error may involve com.ruoyi.gym.mapper.CourseMapper.insert-Inline\r\n### The error occurred while setting parameters\r\n### SQL: INSERT INTO course  ( name, type, desc, classbegin,  createtime )  VALUES  ( ?, ?, ?, ?,  ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin,\n\ncreatetime )  VALUES  ( \'111\',\n\'111\',\n\'111\',\n\'111\',\n\n\'2023-09\' at line 3\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'desc,\nclassbegin,\n\ncreatetime )  VALUES  ( \'111\',\n\'111\',\n\'111\',\n\'111\',\n\n\'2023-09\' at line 3', '2023-09-12 10:27:20', 12);
INSERT INTO `sys_oper_log` VALUES (154, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/3,4,6', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 10:47:51', 42);
INSERT INTO `sys_oper_log` VALUES (155, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"equipment\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 11:51:04', 60);
INSERT INTO `sys_oper_log` VALUES (156, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"equipment\",\"className\":\"Equipment\",\"columns\":[{\"capJavaField\":\"EqId\",\"columnComment\":\"器材编号\",\"columnId\":54,\"columnName\":\"eqId\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 11:51:04\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"javaField\":\"eqId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"EqName\",\"columnComment\":\"器材名\",\"columnId\":55,\"columnName\":\"eqName\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 11:51:04\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"eqName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"EqText\",\"columnComment\":\"器材说明\",\"columnId\":56,\"columnName\":\"eqText\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 11:51:04\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"eqText\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":7,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Createtime\",\"columnComment\":\"创建时间\",\"columnId\":57,\"columnName\":\"createtime\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 11:51:04\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"javaField\":\"createtime\",\"javaType\":\"String', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 11:52:18', 53);
INSERT INTO `sys_oper_log` VALUES (157, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2000', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', 0, NULL, '2023-09-12 11:52:38', 6);
INSERT INTO `sys_oper_log` VALUES (158, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2001', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 11:53:35', 24);
INSERT INTO `sys_oper_log` VALUES (159, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2002', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 11:53:38', 27);
INSERT INTO `sys_oper_log` VALUES (160, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"equipment\"}', NULL, 0, NULL, '2023-09-12 12:03:28', 43);
INSERT INTO `sys_oper_log` VALUES (161, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"coach\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 15:26:51', 239);
INSERT INTO `sys_oper_log` VALUES (162, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"coach\",\"className\":\"Coach\",\"columns\":[{\"capJavaField\":\"CoachId\",\"columnComment\":\"教练编号\",\"columnId\":60,\"columnName\":\"coachId\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 15:26:51\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"javaField\":\"coachId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CoachName\",\"columnComment\":\"教练名称\",\"columnId\":61,\"columnName\":\"coachName\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 15:26:51\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"coachName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CoachPhone\",\"columnComment\":\"教练电话\",\"columnId\":62,\"columnName\":\"coachPhone\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 15:26:51\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"coachPhone\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":8,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CoachSex\",\"columnComment\":\"教练性别\",\"columnId\":63,\"columnName\":\"coachSex\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 15:26:51\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"coa', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 15:28:21', 89);
INSERT INTO `sys_oper_log` VALUES (163, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"coach\"}', NULL, 0, NULL, '2023-09-12 15:42:53', 43);
INSERT INTO `sys_oper_log` VALUES (164, '器材管理', 1, 'com.ruoyi.web.controller.gym.EquipmentController.add()', 'POST', 1, 'admin', NULL, '/equipment/equipment', '127.0.0.1', '内网IP', '{\"eqId\":8,\"eqName\":\"跑步机\",\"eqText\":\"跑步机跑步机跑步机跑步机\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 15:55:17', 47);
INSERT INTO `sys_oper_log` VALUES (165, '器材管理', 3, 'com.ruoyi.web.controller.gym.EquipmentController.remove()', 'DELETE', 1, 'admin', NULL, '/equipment/equipment/1', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 15:56:27', 32);
INSERT INTO `sys_oper_log` VALUES (166, '器材管理', 1, 'com.ruoyi.web.controller.gym.EquipmentController.add()', 'POST', 1, 'admin', NULL, '/equipment/equipment', '127.0.0.1', '内网IP', '{\"createtime\":\"2023-09-12 15:56:59\",\"eqId\":9,\"eqName\":\"跑步机\",\"eqText\":\"跑步\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 15:56:59', 31);
INSERT INTO `sys_oper_log` VALUES (167, '器材管理', 3, 'com.ruoyi.web.controller.gym.EquipmentController.remove()', 'DELETE', 1, 'admin', NULL, '/equipment/equipment/8', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 15:57:45', 18);
INSERT INTO `sys_oper_log` VALUES (168, '器材管理', 1, 'com.ruoyi.web.controller.gym.EquipmentController.add()', 'POST', 1, 'admin', NULL, '/equipment/equipment', '127.0.0.1', '内网IP', '{\"createtime\":\"2023-09-12 15:58:28\",\"eqId\":10,\"eqName\":\"杠铃\",\"eqText\":\"增肌\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 15:58:28', 15);
INSERT INTO `sys_oper_log` VALUES (169, '器材管理', 3, 'com.ruoyi.web.controller.gym.EquipmentController.remove()', 'DELETE', 1, 'admin', NULL, '/equipment/equipment/7', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 15:58:34', 6);
INSERT INTO `sys_oper_log` VALUES (170, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"subject\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 16:01:42', 117);
INSERT INTO `sys_oper_log` VALUES (171, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"subject\",\"className\":\"Subject\",\"columns\":[{\"capJavaField\":\"SubId\",\"columnComment\":\"课程编号\",\"columnId\":73,\"columnName\":\"subId\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 16:01:42\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"javaField\":\"subId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Subname\",\"columnComment\":\"课程名\",\"columnId\":74,\"columnName\":\"subname\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 16:01:42\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"subname\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"SellingPrice\",\"columnComment\":\"课程单价\",\"columnId\":75,\"columnName\":\"sellingPrice\",\"columnType\":\"double\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 16:01:42\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"sellingPrice\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":9,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Createtime\",\"columnComment\":\"创建时间\",\"columnId\":76,\"columnName\":\"createtime\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 16:01:42\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"javaField\":\"createtime\",\"java', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 16:02:55', 87);
INSERT INTO `sys_oper_log` VALUES (172, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"subject\"}', NULL, 0, NULL, '2023-09-12 16:06:55', 103);
INSERT INTO `sys_oper_log` VALUES (173, '课程管理', 1, 'com.ruoyi.web.controller.gym.SubjectController.add()', 'POST', 1, 'admin', NULL, '/subject/subject', '127.0.0.1', '内网IP', '{\"createtime\":\"2023-09-12 16:17:25\",\"sellingPrice\":88,\"subId\":7,\"subname\":\"瑜伽课\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 16:17:25', 82);
INSERT INTO `sys_oper_log` VALUES (174, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"member\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 16:18:15', 154);
INSERT INTO `sys_oper_log` VALUES (175, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"member\",\"className\":\"Member\",\"columns\":[{\"capJavaField\":\"MemberId\",\"columnComment\":\"会员编号\",\"columnId\":79,\"columnName\":\"MemberId\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 16:18:15\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"javaField\":\"MemberId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"MemberName\",\"columnComment\":\"会员名称\",\"columnId\":80,\"columnName\":\"MemberName\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 16:18:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"MemberName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"MemberPhone\",\"columnComment\":\"会员电话\",\"columnId\":81,\"columnName\":\"MemberPhone\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 16:18:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"MemberPhone\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":10,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"MemberSex\",\"columnComment\":\"会员性别\",\"columnId\":82,\"columnName\":\"MemberSex\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 16:18:15\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 16:20:12', 107);
INSERT INTO `sys_oper_log` VALUES (176, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"member\"}', NULL, 0, NULL, '2023-09-12 16:25:46', 72);
INSERT INTO `sys_oper_log` VALUES (177, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"goods\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 16:30:28', 160);
INSERT INTO `sys_oper_log` VALUES (178, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"goods\",\"className\":\"Goods\",\"columns\":[{\"capJavaField\":\"GoodsId\",\"columnComment\":\"商品编号\",\"columnId\":93,\"columnName\":\"goodsId\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 16:30:28\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"javaField\":\"goodsId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"GoodsName\",\"columnComment\":\"商品名称\",\"columnId\":94,\"columnName\":\"goodsName\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 16:30:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"goodsName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Unit\",\"columnComment\":\"单位\",\"columnId\":95,\"columnName\":\"unit\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 16:30:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"unit\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":11,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"UnitPrice\",\"columnComment\":\"进价\",\"columnId\":96,\"columnName\":\"unitPrice\",\"columnType\":\"double\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 16:30:28\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"unitPrice\",\"javaTy', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 16:31:41', 62);
INSERT INTO `sys_oper_log` VALUES (179, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"goods\"}', NULL, 0, NULL, '2023-09-12 16:31:50', 67);
INSERT INTO `sys_oper_log` VALUES (180, '商品管理', 1, 'com.ruoyi.web.controller.gym.GoodsController.add()', 'POST', 1, 'admin', NULL, '/goods/goods', '127.0.0.1', '内网IP', '{\"goodsId\":9,\"goodsName\":\"农夫山泉\",\"inventory\":100,\"remark\":1,\"sellPrice\":2,\"unit\":\"瓶\",\"unitPrice\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 16:41:35', 46);
INSERT INTO `sys_oper_log` VALUES (181, '商品管理', 2, 'com.ruoyi.web.controller.gym.GoodsController.edit()', 'PUT', 1, 'admin', NULL, '/goods/goods', '127.0.0.1', '内网IP', '{\"deleted\":0,\"goodsId\":9,\"goodsName\":\"农夫山泉\",\"inventory\":100,\"modifytime\":\"2023-09-12 16:42:49\",\"remark\":0,\"sellPrice\":2,\"unit\":\"瓶\",\"unitPrice\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 16:42:49', 42);
INSERT INTO `sys_oper_log` VALUES (182, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"goodinfo\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 16:43:06', 117);
INSERT INTO `sys_oper_log` VALUES (183, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/8', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 16:51:47', 70);
INSERT INTO `sys_oper_log` VALUES (184, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"coach\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 16:51:52', 162);
INSERT INTO `sys_oper_log` VALUES (185, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"coach\",\"className\":\"Coach\",\"columns\":[{\"capJavaField\":\"CoachId\",\"columnComment\":\"教练编号\",\"columnId\":112,\"columnName\":\"coachId\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 16:51:52\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"javaField\":\"coachId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CoachName\",\"columnComment\":\"教练名称\",\"columnId\":113,\"columnName\":\"coachName\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 16:51:52\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"coachName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CoachPhone\",\"columnComment\":\"教练电话\",\"columnId\":114,\"columnName\":\"coachPhone\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 16:51:52\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"coachPhone\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":13,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CoachSex\",\"columnComment\":\"教练性别\",\"columnId\":115,\"columnName\":\"coachSex\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 16:51:52\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaFiel', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 16:54:24', 102);
INSERT INTO `sys_oper_log` VALUES (186, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"coach\"}', NULL, 0, NULL, '2023-09-12 16:59:32', 114);
INSERT INTO `sys_oper_log` VALUES (187, '教练管理', 1, 'com.ruoyi.web.controller.gym.CoachController.add()', 'POST', 1, 'admin', NULL, '/coach/coach', '127.0.0.1', '内网IP', '{\"coachAddress\":\"陕西宝鸡\",\"coachAge\":24,\"coachData\":\"2023-09-11\",\"coachId\":17,\"coachName\":\"袁教练\",\"coachPhone\":\"12314324891\",\"coachStatic\":1,\"coachWages\":10000,\"teach\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 17:02:58', 80);
INSERT INTO `sys_oper_log` VALUES (188, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/10', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 17:03:15', 56);
INSERT INTO `sys_oper_log` VALUES (189, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"member\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 17:03:21', 149);
INSERT INTO `sys_oper_log` VALUES (190, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"member\",\"className\":\"Member\",\"columns\":[{\"capJavaField\":\"MemberId\",\"columnComment\":\"会员编号\",\"columnId\":125,\"columnName\":\"memberId\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 17:03:21\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"javaField\":\"memberId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"MemberName\",\"columnComment\":\"会员名称\",\"columnId\":126,\"columnName\":\"memberName\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 17:03:21\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"memberName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"MemberPhone\",\"columnComment\":\"会员电话\",\"columnId\":127,\"columnName\":\"memberPhone\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 17:03:21\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"memberPhone\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":14,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"MemberSex\",\"columnComment\":\"会员性别\",\"columnId\":128,\"columnName\":\"memberSex\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 17:03:21\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 17:08:23', 87);
INSERT INTO `sys_oper_log` VALUES (191, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"member\"}', NULL, 0, NULL, '2023-09-12 17:12:14', 47);
INSERT INTO `sys_oper_log` VALUES (192, '会员管理', 1, 'com.ruoyi.web.controller.gym.MemberController.add()', 'POST', 1, 'admin', NULL, '/member/member', '127.0.0.1', '内网IP', '{\"birthday\":\"2002-07-04\",\"memberAge\":20,\"memberName\":\"yyw\",\"memberPhone\":\"18220798973\",\"memberStatic\":1,\"memberTypes\":0,\"memberbalance\":10000,\"memberxufei\":\"2023-09-28\",\"menberDate\":\"2023-09-12\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`member`, CONSTRAINT `fk-member-membertype` FOREIGN KEY (`memberTypes`) REFERENCES `membertype` (`TypeId`))\r\n### The error may exist in file [D:\\idea\\IdeaProject\\RuoYi-Vue-master\\ruoyi-gym\\target\\classes\\mapper\\MemberMapper.xml]\r\n### The error may involve com.ruoyi.gym.mapper.MemberMapper.insertMember-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into member          ( memberName,             memberPhone,                          memberAge,             memberTypes,             menberDate,             birthday,             memberStatic,             memberbalance,             memberxufei )           values ( ?,             ?,                          ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`member`, CONSTRAINT `fk-member-membertype` FOREIGN KEY (`memberTypes`) REFERENCES `membertype` (`TypeId`))\n; Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`member`, CONSTRAINT `fk-member-membertype` FOREIGN KEY (`memberTypes`) REFERENCES `membertype` (`TypeId`)); nested exception is java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`member`, CONSTRAINT `fk-member-membertype` FOREIGN KEY (`memberTypes`) REFERENCES `membertype` (`TypeId`))', '2023-09-12 17:14:53', 126);
INSERT INTO `sys_oper_log` VALUES (193, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"goodinfo\",\"className\":\"Goodinfo\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"商品购买记录编号\",\"columnId\":103,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 16:43:06\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Goodsid\",\"columnComment\":\"商品编号\",\"columnId\":104,\"columnName\":\"goodsid\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 16:43:06\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"goodsid\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Memberid\",\"columnComment\":\"会员编号\",\"columnId\":105,\"columnName\":\"memberid\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 16:43:06\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"memberid\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":12,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Count\",\"columnComment\":\"购买商品数量\",\"columnId\":106,\"columnName\":\"count\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 16:43:06\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"count\",\"javaType\":\"Long\",\"list\":true,\"par', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 17:17:39', 95);
INSERT INTO `sys_oper_log` VALUES (194, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"goodinfo\"}', NULL, 0, NULL, '2023-09-12 17:21:47', 70);
INSERT INTO `sys_oper_log` VALUES (195, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"membertype\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 17:25:40', 124);
INSERT INTO `sys_oper_log` VALUES (196, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"membertype\",\"className\":\"Membertype\",\"columns\":[{\"capJavaField\":\"TypeId\",\"columnComment\":\"会员卡类型编号\",\"columnId\":139,\"columnName\":\"typeId\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 17:25:40\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"javaField\":\"typeId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":15,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TypeName\",\"columnComment\":\"会员卡名称\",\"columnId\":140,\"columnName\":\"typeName\",\"columnType\":\"varchar(20)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 17:25:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"typeName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":15,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TypeciShu\",\"columnComment\":\"会员卡有效次数\",\"columnId\":141,\"columnName\":\"typeciShu\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 17:25:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"typeciShu\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":15,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"TypeDay\",\"columnComment\":\"会员卡有效天数\",\"columnId\":142,\"columnName\":\"typeDay\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 17:25:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 17:27:57', 77);
INSERT INTO `sys_oper_log` VALUES (197, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"membertype\"}', NULL, 0, NULL, '2023-09-12 17:32:12', 102);
INSERT INTO `sys_oper_log` VALUES (198, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"privatecoachinfo\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 17:33:38', 187);
INSERT INTO `sys_oper_log` VALUES (199, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"privatecoachinfo\",\"className\":\"Privatecoachinfo\",\"columns\":[{\"capJavaField\":\"Pid\",\"columnComment\":\"私教课记录编号\",\"columnId\":147,\"columnName\":\"pid\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 17:33:38\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"javaField\":\"pid\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":16,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Memberid\",\"columnComment\":\"会员编号\",\"columnId\":148,\"columnName\":\"memberid\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 17:33:38\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"memberid\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":16,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Coachid\",\"columnComment\":\"教练编号\",\"columnId\":149,\"columnName\":\"coachid\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 17:33:38\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"coachid\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":16,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Subjectid\",\"columnComment\":\"课程编号\",\"columnId\":150,\"columnName\":\"subjectid\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 17:33:38\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"subjectid\",\"javaT', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 17:35:38', 113);
INSERT INTO `sys_oper_log` VALUES (200, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"privatecoachinfo\"}', NULL, 0, NULL, '2023-09-12 17:41:38', 90);
INSERT INTO `sys_oper_log` VALUES (201, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"chongzhi\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 17:45:07', 226);
INSERT INTO `sys_oper_log` VALUES (202, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/17', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 17:45:43', 23);
INSERT INTO `sys_oper_log` VALUES (203, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"chongzhi\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 17:46:42', 116);
INSERT INTO `sys_oper_log` VALUES (204, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"chongzhi\",\"className\":\"Chongzhi\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"充值记录编号\",\"columnId\":174,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 17:46:42\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":18,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Memberid\",\"columnComment\":\"会员编号\",\"columnId\":175,\"columnName\":\"memberid\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 17:46:42\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"memberid\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":18,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Typeid\",\"columnComment\":\"会员卡编号\",\"columnId\":176,\"columnName\":\"typeid\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 17:46:42\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"typeid\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":18,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Money\",\"columnComment\":\"续费金额\",\"columnId\":177,\"columnName\":\"money\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-12 17:46:42\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"money\",\"javaType\":\"Long\",\"list\":true,\"params\":{', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 17:48:15', 70);
INSERT INTO `sys_oper_log` VALUES (205, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"chongzhi\"}', NULL, 0, NULL, '2023-09-12 17:51:53', 48);
INSERT INTO `sys_oper_log` VALUES (206, '器材管理', 1, 'com.ruoyi.web.controller.gym.EquipmentController.add()', 'POST', 1, 'admin', NULL, '/equipment/equipment', '127.0.0.1', '内网IP', '{\"createtime\":\"2023-09-12 17:59:44\",\"eqId\":11,\"eqName\":\"哑铃\",\"eqText\":\"增肌\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 17:59:44', 58);
INSERT INTO `sys_oper_log` VALUES (207, '课程管理', 2, 'com.ruoyi.web.controller.gym.SubjectController.edit()', 'PUT', 1, 'admin', NULL, '/subject/subject', '127.0.0.1', '内网IP', '{\"deleted\":0,\"modifytime\":\"2023-09-12 18:01:20\",\"sellingPrice\":50,\"subId\":6,\"subname\":\"健身操\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 18:01:20', 25);
INSERT INTO `sys_oper_log` VALUES (208, '商品管理', 2, 'com.ruoyi.web.controller.gym.GoodsController.edit()', 'PUT', 1, 'admin', NULL, '/goods/goods', '127.0.0.1', '内网IP', '{\"deleted\":0,\"goodsId\":8,\"goodsName\":\"毛巾\",\"inventory\":0,\"modifytime\":\"2023-09-12 18:01:35\",\"remark\":0,\"sellPrice\":20,\"unit\":\"个\",\"unitPrice\":10}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 18:01:35', 21);
INSERT INTO `sys_oper_log` VALUES (209, '教练管理', 2, 'com.ruoyi.web.controller.gym.CoachController.edit()', 'PUT', 1, 'admin', NULL, '/coach/coach', '127.0.0.1', '内网IP', '{\"coachAddress\":\"陕西宝鸡\",\"coachAge\":24,\"coachData\":\"2023-09-11\",\"coachId\":17,\"coachName\":\"袁教练\",\"coachPhone\":\"12314324891\",\"coachSex\":\"女\",\"coachStatic\":1,\"coachWages\":10000,\"deleted\":0,\"modifytime\":\"2023-09-12 18:04:58\",\"teach\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 18:04:58', 46);
INSERT INTO `sys_oper_log` VALUES (210, '会员管理', 1, 'com.ruoyi.web.controller.gym.MemberController.add()', 'POST', 1, 'admin', NULL, '/member/member', '127.0.0.1', '内网IP', '{\"birthday\":\"20020704\",\"createtime\":\"2023-09-12 18:07:56\",\"memberAge\":20,\"memberId\":47,\"memberName\":\"yyy\",\"memberPhone\":\"12428596757\",\"memberStatic\":1,\"memberTypes\":1,\"memberbalance\":1000,\"memberxufei\":\"2023-09-28\",\"menberDate\":\"2023-09-11\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 18:07:56', 56);
INSERT INTO `sys_oper_log` VALUES (211, '会员管理', 2, 'com.ruoyi.web.controller.gym.MemberController.edit()', 'PUT', 1, 'admin', NULL, '/member/member', '127.0.0.1', '内网IP', '{\"birthday\":\"07-04\",\"createtime\":\"2023-09-12 18:07:56\",\"deleted\":0,\"memberAge\":20,\"memberId\":47,\"memberName\":\"yyy\",\"memberPhone\":\"12428596757\",\"memberSex\":0,\"memberStatic\":1,\"memberTypes\":1,\"memberbalance\":1000,\"memberxufei\":\"2023-09-28\",\"menberDate\":\"2023-09-11\",\"modifytime\":\"2023-09-12 18:09:09\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 18:09:09', 19);
INSERT INTO `sys_oper_log` VALUES (212, '会员卡管理', 1, 'com.ruoyi.web.controller.gym.MembertypeController.add()', 'POST', 1, 'admin', NULL, '/membertype/membertype', '127.0.0.1', '内网IP', '{\"createtime\":\"2023-09-12 18:10:36\",\"typeDay\":1,\"typeId\":6,\"typeName\":\"日卡\",\"typeciShu\":2,\"typemoney\":50}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 18:10:36', 21);
INSERT INTO `sys_oper_log` VALUES (213, '会员私教管理', 1, 'com.ruoyi.web.controller.gym.PrivatecoachinfoController.add()', 'POST', 1, 'admin', NULL, '/privatecoachinfo/privatecoachinfo', '127.0.0.1', '内网IP', '{\"admin\":\"22\",\"coachid\":22,\"count\":22,\"countprice\":22,\"createtime\":\"2023-09-12 18:12:07\",\"date\":\"2023-09-12\",\"memberid\":22,\"realprice\":22,\"state\":22,\"subjectid\":22}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'remark\' in \'class com.ruoyi.gym.domain.Privatecoachinfo\'', '2023-09-12 18:12:07', 25);
INSERT INTO `sys_oper_log` VALUES (214, '会员私教管理', 1, 'com.ruoyi.web.controller.gym.PrivatecoachinfoController.add()', 'POST', 1, 'admin', NULL, '/privatecoachinfo/privatecoachinfo', '127.0.0.1', '内网IP', '{\"admin\":\"11\",\"coachid\":11,\"count\":11,\"countprice\":11,\"createtime\":\"2023-09-12 18:14:42\",\"date\":\"2023-09-12\",\"memberid\":11,\"realprice\":11,\"remark\":11,\"state\":11,\"subjectid\":11}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`privatecoachinfo`, CONSTRAINT `fk_pri_subject` FOREIGN KEY (`subjectid`) REFERENCES `subject` (`subId`))\r\n### The error may exist in file [D:\\idea\\IdeaProject\\RuoYi-Vue-master\\ruoyi-gym\\target\\classes\\mapper\\PrivatecoachinfoMapper.xml]\r\n### The error may involve com.ruoyi.gym.mapper.PrivatecoachinfoMapper.insertPrivatecoachinfo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into privatecoachinfo          ( memberid,             coachid,             subjectid,             count,             countprice,             realprice,             date,             state,             remark,             admin,             createtime )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`privatecoachinfo`, CONSTRAINT `fk_pri_subject` FOREIGN KEY (`subjectid`) REFERENCES `subject` (`subId`))\n; Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`privatecoachinfo`, CONSTRAINT `fk_pri_subject` FOREIGN KEY (`subjectid`) REFERENCES `subject` (`subId`)); nested exception is java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`privatecoachinfo`, CONSTRAINT `fk_pri_subject` FOREIGN KEY (`subjectid`) REFERENCES `subject` (`subId`))', '2023-09-12 18:14:42', 41);
INSERT INTO `sys_oper_log` VALUES (215, '会员私教管理', 1, 'com.ruoyi.web.controller.gym.PrivatecoachinfoController.add()', 'POST', 1, 'admin', NULL, '/privatecoachinfo/privatecoachinfo', '127.0.0.1', '内网IP', '{\"admin\":\"2\",\"coachid\":2,\"count\":2,\"countprice\":2,\"createtime\":\"2023-09-12 18:15:44\",\"date\":\"2023-09-12\",\"memberid\":1,\"realprice\":2,\"remark\":2,\"state\":2,\"subjectid\":2}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`privatecoachinfo`, CONSTRAINT `fk_pri_member` FOREIGN KEY (`memberid`) REFERENCES `member` (`memberId`))\r\n### The error may exist in file [D:\\idea\\IdeaProject\\RuoYi-Vue-master\\ruoyi-gym\\target\\classes\\mapper\\PrivatecoachinfoMapper.xml]\r\n### The error may involve com.ruoyi.gym.mapper.PrivatecoachinfoMapper.insertPrivatecoachinfo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into privatecoachinfo          ( memberid,             coachid,             subjectid,             count,             countprice,             realprice,             date,             state,             remark,             admin,             createtime )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`privatecoachinfo`, CONSTRAINT `fk_pri_member` FOREIGN KEY (`memberid`) REFERENCES `member` (`memberId`))\n; Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`privatecoachinfo`, CONSTRAINT `fk_pri_member` FOREIGN KEY (`memberid`) REFERENCES `member` (`memberId`)); nested exception is java.sql.SQLIntegrityConstraintViolationException: Cannot add or update a child row: a foreign key constraint fails (`ry-vue`.`privatecoachinfo`, CONSTRAINT `fk_pri_member` FOREIGN KEY (`memberid`) REFERENCES `member` (`memberId`))', '2023-09-12 18:15:44', 10);
INSERT INTO `sys_oper_log` VALUES (216, '会员私教管理', 1, 'com.ruoyi.web.controller.gym.PrivatecoachinfoController.add()', 'POST', 1, 'admin', NULL, '/privatecoachinfo/privatecoachinfo', '127.0.0.1', '内网IP', '{\"admin\":\"2\",\"coachid\":2,\"count\":2,\"countprice\":2,\"createtime\":\"2023-09-12 18:16:49\",\"date\":\"2023-09-12\",\"memberid\":25,\"pid\":20,\"realprice\":2,\"remark\":2,\"state\":2,\"subjectid\":2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 18:16:49', 12);
INSERT INTO `sys_oper_log` VALUES (217, '充值管理', 1, 'com.ruoyi.web.controller.gym.ChongzhiController.add()', 'POST', 1, 'admin', NULL, '/chongzhi/chongzhi', '127.0.0.1', '内网IP', '{\"beizhu\":\"100\",\"createtime\":\"2023-09-12 18:18:28\",\"czStatic\":0,\"czjine\":100,\"date\":\"2023-09-12\",\"id\":89,\"memberid\":25,\"money\":50,\"params\":{},\"ssmoney\":50,\"typeid\":1,\"zlmoney\":0}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 18:18:29', 21);
INSERT INTO `sys_oper_log` VALUES (218, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"equipment/equipment/index\",\"createTime\":\"2023-09-12 11:55:17\",\"icon\":\"table\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2019,\"menuName\":\"器材管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2012,\"path\":\"equipment\",\"perms\":\"equipment:equipment:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 18:21:02', 21);
INSERT INTO `sys_oper_log` VALUES (219, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"subject/subject/index\",\"createTime\":\"2023-09-12 16:06:29\",\"icon\":\"dict\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2031,\"menuName\":\"课程管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2012,\"path\":\"subject\",\"perms\":\"subject:subject:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 18:21:11', 12);
INSERT INTO `sys_oper_log` VALUES (220, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"goods/goods/index\",\"createTime\":\"2023-09-12 16:36:35\",\"icon\":\"clipboard\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2043,\"menuName\":\"商品管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2012,\"path\":\"goods\",\"perms\":\"goods:goods:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 18:21:19', 20);
INSERT INTO `sys_oper_log` VALUES (221, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"coach/coach/index\",\"createTime\":\"2023-09-12 16:59:17\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2049,\"menuName\":\"教练管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2012,\"path\":\"coach\",\"perms\":\"coach:coach:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 18:21:33', 13);
INSERT INTO `sys_oper_log` VALUES (222, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"member/member/index\",\"createTime\":\"2023-09-12 17:13:39\",\"icon\":\"date-range\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2055,\"menuName\":\"会员管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2012,\"path\":\"member\",\"perms\":\"member:member:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 18:21:42', 18);
INSERT INTO `sys_oper_log` VALUES (223, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"goodinfo/goodinfo/index\",\"createTime\":\"2023-09-12 17:21:25\",\"icon\":\"money\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2061,\"menuName\":\"商品购买信息管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2012,\"path\":\"goodinfo\",\"perms\":\"goodinfo:goodinfo:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 18:21:54', 14);
INSERT INTO `sys_oper_log` VALUES (224, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"membertype/membertype/index\",\"createTime\":\"2023-09-12 17:31:56\",\"icon\":\"code\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2067,\"menuName\":\"会员卡管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2012,\"path\":\"membertype\",\"perms\":\"membertype:membertype:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 18:22:04', 18);
INSERT INTO `sys_oper_log` VALUES (225, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"privatecoachinfo/privatecoachinfo/index\",\"createTime\":\"2023-09-12 17:41:26\",\"icon\":\"people\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2073,\"menuName\":\"会员私教管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2012,\"path\":\"privatecoachinfo\",\"perms\":\"privatecoachinfo:privatecoachinfo:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 18:22:15', 15);
INSERT INTO `sys_oper_log` VALUES (226, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"chongzhi/chongzhi/index\",\"createTime\":\"2023-09-12 17:48:38\",\"icon\":\"excel\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2079,\"menuName\":\"充值管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2012,\"path\":\"chongzhi\",\"perms\":\"chongzhi:chongzhi:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-12 18:22:28', 17);
INSERT INTO `sys_oper_log` VALUES (227, '器材管理', 3, 'com.ruoyi.web.controller.gym.EquipmentController.remove()', 'DELETE', 1, 'admin', NULL, '/equipment/equipment/11', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 11:08:44', 30);
INSERT INTO `sys_oper_log` VALUES (228, '课程管理', 3, 'com.ruoyi.web.controller.gym.SubjectController.remove()', 'DELETE', 1, 'admin', NULL, '/subject/subject/7', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 11:14:03', 38);
INSERT INTO `sys_oper_log` VALUES (229, '商品管理', 3, 'com.ruoyi.web.controller.gym.GoodsController.remove()', 'DELETE', 1, 'admin', NULL, '/goods/goods/9', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 11:14:31', 20);
INSERT INTO `sys_oper_log` VALUES (230, '教练管理', 3, 'com.ruoyi.web.controller.gym.CoachController.remove()', 'DELETE', 1, 'admin', NULL, '/coach/coach/17', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 11:14:52', 8);
INSERT INTO `sys_oper_log` VALUES (231, '会员管理', 3, 'com.ruoyi.web.controller.gym.MemberController.remove()', 'DELETE', 1, 'admin', NULL, '/member/member/35', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 11:22:48', 50);
INSERT INTO `sys_oper_log` VALUES (232, '商品购买信息管理', 3, 'com.ruoyi.web.controller.gym.GoodinfoController.remove()', 'DELETE', 1, 'admin', NULL, '/goodinfo/goodinfo/14', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 11:23:11', 12);
INSERT INTO `sys_oper_log` VALUES (233, '会员卡管理', 3, 'com.ruoyi.web.controller.gym.MembertypeController.remove()', 'DELETE', 1, 'admin', NULL, '/membertype/membertype/6', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 11:23:35', 13);
INSERT INTO `sys_oper_log` VALUES (234, '会员私教管理', 3, 'com.ruoyi.web.controller.gym.PrivatecoachinfoController.remove()', 'DELETE', 1, 'admin', NULL, '/privatecoachinfo/privatecoachinfo/20', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 11:23:56', 9);
INSERT INTO `sys_oper_log` VALUES (235, '充值管理', 3, 'com.ruoyi.web.controller.gym.ChongzhiController.remove()', 'DELETE', 1, 'admin', NULL, '/chongzhi/chongzhi/11', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 11:24:22', 13);
INSERT INTO `sys_oper_log` VALUES (236, '会员卡管理', 3, 'com.ruoyi.web.controller.gym.MembertypeController.remove()', 'DELETE', 1, 'admin', NULL, '/membertype/membertype/6', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 11:26:21', 10);
INSERT INTO `sys_oper_log` VALUES (237, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"loos\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-13 11:39:25', 159);
INSERT INTO `sys_oper_log` VALUES (238, '商品购买信息管理', 1, 'com.ruoyi.web.controller.gym.GoodinfoController.add()', 'POST', 1, 'admin', NULL, '/goodinfo/goodinfo', '127.0.0.1', '内网IP', '{\"count\":10,\"createtime\":\"2023-09-14 15:53:00\",\"goodsid\":2,\"id\":16,\"memberid\":25,\"price\":20,\"remark\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-14 15:53:00', 27);
INSERT INTO `sys_oper_log` VALUES (239, '器材管理', 1, 'com.ruoyi.web.controller.gym.EquipmentController.add()', 'POST', 1, 'admin', NULL, '/equipment/equipment', '127.0.0.1', '内网IP', '{\"createtime\":\"2023-09-18 09:03:10\",\"eqId\":12,\"eqName\":\"呼啦圈\",\"eqText\":\"瘦腰\",\"num\":\"20\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-18 09:03:10', 27);
INSERT INTO `sys_oper_log` VALUES (240, '课程管理', 1, 'com.ruoyi.web.controller.gym.SubjectController.add()', 'POST', 1, 'admin', NULL, '/subject/subject', '127.0.0.1', '内网IP', '{\"beginTime\":\"2023-09-01\",\"createtime\":\"2023-09-18 09:27:08\",\"endTime\":\"2023-09-19\",\"sellingPrice\":2000,\"subId\":8,\"subname\":\"啦啦操\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-18 09:27:08', 30);
INSERT INTO `sys_oper_log` VALUES (241, '商品购买信息管理', 1, 'com.ruoyi.web.controller.gym.GoodinfoController.add()', 'POST', 1, 'admin', NULL, '/goodinfo/goodinfo', '127.0.0.1', '内网IP', '{\"count\":100,\"createtime\":\"2023-09-18 09:28:15\",\"goodsid\":2,\"id\":17,\"memberid\":26,\"price\":300,\"remark\":6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-18 09:28:15', 17);
INSERT INTO `sys_oper_log` VALUES (242, '商品购买信息管理', 1, 'com.ruoyi.web.controller.gym.GoodinfoController.add()', 'POST', 1, 'admin', NULL, '/goodinfo/goodinfo', '127.0.0.1', '内网IP', '{\"count\":1222,\"createtime\":\"2023-09-18 09:32:35\",\"goodsid\":2,\"memberid\":26,\"price\":121,\"remark\":21}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-09-18 09:32:35', 20);
INSERT INTO `sys_oper_log` VALUES (243, '商品购买信息管理', 1, 'com.ruoyi.web.controller.gym.GoodinfoController.add()', 'POST', 1, 'admin', NULL, '/goodinfo/goodinfo', '127.0.0.1', '内网IP', '{\"count\":10,\"createtime\":\"2023-09-18 09:33:36\",\"goodsid\":2,\"id\":18,\"memberid\":42,\"price\":30,\"remark\":1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-18 09:33:36', 24);
INSERT INTO `sys_oper_log` VALUES (244, '会员卡管理', 1, 'com.ruoyi.web.controller.gym.MembertypeController.add()', 'POST', 1, 'admin', NULL, '/membertype/membertype', '127.0.0.1', '内网IP', '{\"createtime\":\"2023-09-18 10:26:39\",\"remarkCard\":\"666\",\"typeDay\":30,\"typeName\":\"超级年卡\",\"typeciShu\":3,\"typemoney\":20}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'remarkCard\' in \'field list\'\r\n### The error may exist in file [C:\\Users\\WeiHao\\Desktop\\小组项目\\RuoYi-Vue-master\\ruoyi-gym\\target\\classes\\mapper\\MembertypeMapper.xml]\r\n### The error may involve com.ruoyi.gym.mapper.MembertypeMapper.insertMembertype-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into membertype          ( typeName,             typeciShu,             typeDay,             typemoney,             createtime,                                       remarkCard )           values ( ?,             ?,             ?,             ?,             ?,                                       ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'remarkCard\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'remarkCard\' in \'field list\'', '2023-09-18 10:26:39', 56);
INSERT INTO `sys_oper_log` VALUES (245, '会员卡管理', 1, 'com.ruoyi.web.controller.gym.MembertypeController.add()', 'POST', 1, 'admin', NULL, '/membertype/membertype', '127.0.0.1', '内网IP', '{\"createtime\":\"2023-09-18 10:34:05\",\"remarkCard\":\"666\",\"typeDay\":180,\"typeId\":7,\"typeName\":\"超级年卡\",\"typeciShu\":30,\"typemoney\":300}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-18 10:34:05', 28);
INSERT INTO `sys_oper_log` VALUES (246, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":100,\"email\":\"842523441@qq.com\",\"nickName\":\"大刘\",\"params\":{},\"phonenumber\":\"19891152512\",\"postIds\":[],\"roleIds\":[],\"sex\":\"0\",\"status\":\"0\",\"userId\":100,\"userName\":\"大刘\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-18 11:08:07', 106);
INSERT INTO `sys_oper_log` VALUES (247, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2012,2019,2031,2043,2049,2067,2073,2079,2020,2024,2032,2036,2044,2048,2050,2054,2068,2072,2074,2078,2080,2084],\"params\":{},\"roleId\":100,\"roleKey\":\"huiyuan \",\"roleName\":\"会员\",\"roleSort\":3,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-18 11:12:57', 29);
INSERT INTO `sys_oper_log` VALUES (248, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-09-18 11:08:07\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"若依科技\",\"leader\":\"若依\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"deptId\":100,\"email\":\"842523441@qq.com\",\"loginIp\":\"\",\"nickName\":\"大刘\",\"params\":{},\"phonenumber\":\"19891152512\",\"postIds\":[],\"roleIds\":[100],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":100,\"userName\":\"大刘\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-18 11:13:10', 27);
INSERT INTO `sys_oper_log` VALUES (249, '器材管理', 5, 'com.ruoyi.web.controller.gym.EquipmentController.export()', 'POST', 1, '大刘', NULL, '/equipment/equipment/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2023-09-18 11:13:41', 733);
INSERT INTO `sys_oper_log` VALUES (250, '会员管理', 1, 'com.ruoyi.gym.controller.MemberController.add()', 'POST', 1, 'admin', NULL, '/member/member', '127.0.0.1', '内网IP', '{\"birthday\":\"2023-09-29T16:00:00.000Z\",\"createtime\":\"2023-09-18 11:19:51\",\"memberAge\":21,\"memberName\":\"大刘\",\"memberPhone\":\"19891152532\",\"memberSex\":\"男\",\"memberStatic\":1,\"memberTypes\":2,\"memberbalance\":12000,\"memberxufei\":\"2023-09-25\",\"menberDate\":\"2023-09-24\"}', NULL, 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'birthday\' at row 1\r\n### The error may exist in file [C:\\Users\\WeiHao\\Desktop\\小组项目\\RuoYi-Vue-master\\ruoyi-gym\\target\\classes\\mapper\\MemberMapper.xml]\r\n### The error may involve com.ruoyi.gym.mapper.MemberMapper.insertMember-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into member          ( memberName,             memberPhone,             memberSex,             memberAge,             memberTypes,             menberDate,             birthday,             memberStatic,             memberbalance,             memberxufei,             createtime )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'birthday\' at row 1\n; Data truncation: Data too long for column \'birthday\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'birthday\' at row 1', '2023-09-18 11:19:51', 51);
INSERT INTO `sys_oper_log` VALUES (251, '会员管理', 1, 'com.ruoyi.gym.controller.MemberController.add()', 'POST', 1, 'admin', NULL, '/member/member', '127.0.0.1', '内网IP', '{\"birthday\":\"2023-09-29T16:00:00.000Z\",\"createtime\":\"2023-09-18 11:19:59\",\"memberAge\":21,\"memberName\":\"大刘\",\"memberPhone\":\"19891152532\",\"memberSex\":\"男\",\"memberStatic\":1,\"memberTypes\":2,\"memberbalance\":12000,\"memberxufei\":\"2023-09-25\",\"menberDate\":\"2023-09-24\"}', NULL, 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'birthday\' at row 1\r\n### The error may exist in file [C:\\Users\\WeiHao\\Desktop\\小组项目\\RuoYi-Vue-master\\ruoyi-gym\\target\\classes\\mapper\\MemberMapper.xml]\r\n### The error may involve com.ruoyi.gym.mapper.MemberMapper.insertMember-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into member          ( memberName,             memberPhone,             memberSex,             memberAge,             memberTypes,             menberDate,             birthday,             memberStatic,             memberbalance,             memberxufei,             createtime )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'birthday\' at row 1\n; Data truncation: Data too long for column \'birthday\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'birthday\' at row 1', '2023-09-18 11:19:59', 4);
INSERT INTO `sys_oper_log` VALUES (252, '会员管理', 1, 'com.ruoyi.gym.controller.MemberController.add()', 'POST', 1, 'admin', NULL, '/member/member', '127.0.0.1', '内网IP', '{\"birthday\":\"2023-09-29T16:00:00.000Z\",\"createtime\":\"2023-09-18 11:20:14\",\"memberAge\":21,\"memberName\":\"大刘\",\"memberPhone\":\"19891152532\",\"memberSex\":\"男\",\"memberStatic\":1,\"memberTypes\":2,\"memberbalance\":1200,\"memberxufei\":\"2023-09-25\",\"menberDate\":\"2023-09-24\"}', NULL, 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'birthday\' at row 1\r\n### The error may exist in file [C:\\Users\\WeiHao\\Desktop\\小组项目\\RuoYi-Vue-master\\ruoyi-gym\\target\\classes\\mapper\\MemberMapper.xml]\r\n### The error may involve com.ruoyi.gym.mapper.MemberMapper.insertMember-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into member          ( memberName,             memberPhone,             memberSex,             memberAge,             memberTypes,             menberDate,             birthday,             memberStatic,             memberbalance,             memberxufei,             createtime )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'birthday\' at row 1\n; Data truncation: Data too long for column \'birthday\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'birthday\' at row 1', '2023-09-18 11:20:14', 3);
INSERT INTO `sys_oper_log` VALUES (253, '会员管理', 1, 'com.ruoyi.gym.controller.MemberController.add()', 'POST', 1, 'admin', NULL, '/member/member', '127.0.0.1', '内网IP', '{\"birthday\":\"2023-09-29T16:00:00.000Z\",\"createtime\":\"2023-09-18 11:20:46\",\"memberAge\":21,\"memberName\":\"大刘\",\"memberPhone\":\"19891152532\",\"memberSex\":\"男\",\"memberStatic\":1,\"memberTypes\":2,\"memberbalance\":1200,\"memberxufei\":\"2023-09-12\",\"menberDate\":\"2023-09-24\"}', NULL, 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'birthday\' at row 1\r\n### The error may exist in file [C:\\Users\\WeiHao\\Desktop\\小组项目\\RuoYi-Vue-master\\ruoyi-gym\\target\\classes\\mapper\\MemberMapper.xml]\r\n### The error may involve com.ruoyi.gym.mapper.MemberMapper.insertMember-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into member          ( memberName,             memberPhone,             memberSex,             memberAge,             memberTypes,             menberDate,             birthday,             memberStatic,             memberbalance,             memberxufei,             createtime )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'birthday\' at row 1\n; Data truncation: Data too long for column \'birthday\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'birthday\' at row 1', '2023-09-18 11:20:46', 3);
INSERT INTO `sys_oper_log` VALUES (254, '会员管理', 1, 'com.ruoyi.gym.controller.MemberController.add()', 'POST', 1, 'admin', NULL, '/member/member', '127.0.0.1', '内网IP', '{\"birthday\":\"2023-09-29T16:00:00.000Z\",\"createtime\":\"2023-09-18 11:20:55\",\"memberAge\":21,\"memberName\":\"大刘\",\"memberPhone\":\"19891152532\",\"memberSex\":\"男\",\"memberStatic\":1,\"memberTypes\":2,\"memberbalance\":1200,\"memberxufei\":\"2023-09-12\",\"menberDate\":\"2023-09-04\"}', NULL, 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'birthday\' at row 1\r\n### The error may exist in file [C:\\Users\\WeiHao\\Desktop\\小组项目\\RuoYi-Vue-master\\ruoyi-gym\\target\\classes\\mapper\\MemberMapper.xml]\r\n### The error may involve com.ruoyi.gym.mapper.MemberMapper.insertMember-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into member          ( memberName,             memberPhone,             memberSex,             memberAge,             memberTypes,             menberDate,             birthday,             memberStatic,             memberbalance,             memberxufei,             createtime )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'birthday\' at row 1\n; Data truncation: Data too long for column \'birthday\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'birthday\' at row 1', '2023-09-18 11:20:55', 4);
INSERT INTO `sys_oper_log` VALUES (255, '会员管理', 1, 'com.ruoyi.gym.controller.MemberController.add()', 'POST', 1, 'admin', NULL, '/member/member', '127.0.0.1', '内网IP', '{\"birthday\":\"2023-09-02T16:00:00.000Z\",\"createtime\":\"2023-09-18 11:22:09\",\"memberAge\":21,\"memberName\":\"大刘\",\"memberPhone\":\"19891152512\",\"memberSex\":\"男\",\"memberStatic\":1,\"memberTypes\":2,\"memberbalance\":122,\"memberxufei\":\"2023-09-18\",\"menberDate\":\"2023-09-04\"}', NULL, 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'birthday\' at row 1\r\n### The error may exist in file [C:\\Users\\WeiHao\\Desktop\\小组项目\\RuoYi-Vue-master\\ruoyi-gym\\target\\classes\\mapper\\MemberMapper.xml]\r\n### The error may involve com.ruoyi.gym.mapper.MemberMapper.insertMember-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into member          ( memberName,             memberPhone,             memberSex,             memberAge,             memberTypes,             menberDate,             birthday,             memberStatic,             memberbalance,             memberxufei,             createtime )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'birthday\' at row 1\n; Data truncation: Data too long for column \'birthday\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'birthday\' at row 1', '2023-09-18 11:22:09', 4);
INSERT INTO `sys_oper_log` VALUES (256, '会员管理', 1, 'com.ruoyi.gym.controller.MemberController.add()', 'POST', 1, 'admin', NULL, '/member/member', '127.0.0.1', '内网IP', '{\"birthday\":\"2017-09-03T16:00:00.000Z\",\"createtime\":\"2023-09-18 11:23:58\",\"memberAge\":21,\"memberId\":48,\"memberName\":\"大刘\",\"memberPhone\":\"19891152512\",\"memberSex\":\"男\",\"memberStatic\":1,\"memberTypes\":2,\"memberbalance\":211,\"memberxufei\":\"2023-09-11\",\"menberDate\":\"2023-04-10\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-18 11:23:58', 16);
INSERT INTO `sys_oper_log` VALUES (257, '会员管理', 1, 'com.ruoyi.gym.controller.MemberController.add()', 'POST', 1, 'admin', NULL, '/member/member', '127.0.0.1', '内网IP', '{\"birthday\":\"2023-09-29T16:00:00.000Z\",\"createtime\":\"2023-09-18 11:24:49\",\"memberAge\":21,\"memberId\":49,\"memberName\":\"我\",\"memberPhone\":\"19891152512\",\"memberSex\":\"女\",\"memberStatic\":1,\"memberTypes\":1,\"memberbalance\":211,\"memberxufei\":\"2023-09-24\",\"menberDate\":\"2023-09-30\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-18 11:24:49', 11);
INSERT INTO `sys_oper_log` VALUES (258, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"store\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-18 17:41:22', 110);
INSERT INTO `sys_oper_log` VALUES (259, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"store\",\"className\":\"Store\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"门店主键\",\"columnId\":199,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-18 17:41:22\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":20,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"门店姓名\",\"columnId\":200,\"columnName\":\"name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-18 17:41:22\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":20,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Num\",\"columnComment\":\"门店编号\",\"columnId\":201,\"columnName\":\"num\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-09-18 17:41:22\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"num\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":20,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"City\",\"columnComment\":\"所在城市\",\"columnId\":202,\"columnName\":\"city\",\"columnType\":\"varchar(30)\",\"createBy\":\"admin\",\"createTime\":\"2023-09-18 17:41:22\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"city\",\"javaType\":\"String\",\"l', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-18 17:47:11', 46);
INSERT INTO `sys_oper_log` VALUES (260, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"store\"}', NULL, 0, NULL, '2023-09-18 17:47:54', 74);
INSERT INTO `sys_oper_log` VALUES (261, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"store/store/index\",\"createTime\":\"2023-09-18 17:47:39\",\"icon\":\"peoples\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2085,\"menuName\":\"门店管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2012,\"path\":\"store\",\"perms\":\"store:store:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-18 18:04:10', 27);
INSERT INTO `sys_oper_log` VALUES (262, '商品购买信息管理', 1, 'com.ruoyi.web.controller.gym.GoodinfoController.add()', 'POST', 1, 'admin', NULL, '/goodinfo/goodinfo', '127.0.0.1', '内网IP', '{\"count\":3,\"createtime\":\"2023-09-19 15:24:47\",\"goodsid\":2,\"id\":19,\"memberid\":26,\"price\":9,\"remark\":666}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-09-19 15:24:47', 39);
INSERT INTO `sys_oper_log` VALUES (263, '器材管理', 5, 'com.ruoyi.web.controller.gym.EquipmentController.export()', 'POST', 1, 'admin', NULL, '/equipment/equipment/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2023-09-20 15:18:45', 746);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2023-09-11 15:27:54', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2023-09-11 15:27:54', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2023-09-11 15:27:54', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2023-09-11 15:27:54', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2023-09-11 15:27:57', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2023-09-11 15:27:57', '', NULL, '普通角色');
INSERT INTO `sys_role` VALUES (100, '会员', 'huiyuan ', 3, '1', 1, 1, '0', '0', 'admin', '2023-09-18 11:12:57', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 117);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (100, 2012);
INSERT INTO `sys_role_menu` VALUES (100, 2019);
INSERT INTO `sys_role_menu` VALUES (100, 2020);
INSERT INTO `sys_role_menu` VALUES (100, 2024);
INSERT INTO `sys_role_menu` VALUES (100, 2031);
INSERT INTO `sys_role_menu` VALUES (100, 2032);
INSERT INTO `sys_role_menu` VALUES (100, 2036);
INSERT INTO `sys_role_menu` VALUES (100, 2043);
INSERT INTO `sys_role_menu` VALUES (100, 2044);
INSERT INTO `sys_role_menu` VALUES (100, 2048);
INSERT INTO `sys_role_menu` VALUES (100, 2049);
INSERT INTO `sys_role_menu` VALUES (100, 2050);
INSERT INTO `sys_role_menu` VALUES (100, 2054);
INSERT INTO `sys_role_menu` VALUES (100, 2067);
INSERT INTO `sys_role_menu` VALUES (100, 2068);
INSERT INTO `sys_role_menu` VALUES (100, 2072);
INSERT INTO `sys_role_menu` VALUES (100, 2073);
INSERT INTO `sys_role_menu` VALUES (100, 2074);
INSERT INTO `sys_role_menu` VALUES (100, 2078);
INSERT INTO `sys_role_menu` VALUES (100, 2079);
INSERT INTO `sys_role_menu` VALUES (100, 2080);
INSERT INTO `sys_role_menu` VALUES (100, 2084);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-09-20 15:06:58', 'admin', '2023-09-11 15:27:52', '', '2023-09-20 15:06:57', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-09-11 15:27:52', 'admin', '2023-09-11 15:27:52', '', NULL, '测试员');
INSERT INTO `sys_user` VALUES (100, 100, '大刘', '大刘', '00', '842523441@qq.com', '19891152512', '0', '', '$2a$10$DWNDUxT4esBy3/KRjQeiwux.cSU91KBKSHEgXXZtmEZSBCCDe1ZQe', '0', '0', '127.0.0.1', '2023-09-19 17:40:24', 'admin', '2023-09-18 11:08:07', 'admin', '2023-09-19 17:40:23', NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (100, 100);

SET FOREIGN_KEY_CHECKS = 1;
