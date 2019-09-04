/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : project

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-09-04 18:42:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sp_architectural_sub_system
-- ----------------------------
DROP TABLE IF EXISTS `sp_architectural_sub_system`;
CREATE TABLE `sp_architectural_sub_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `architectural_id` int(11) DEFAULT NULL COMMENT '建筑系统id',
  `sub_system_name` varchar(255) DEFAULT NULL COMMENT '系统名称',
  `sub_system_code` varchar(255) DEFAULT NULL COMMENT '系统编码',
  `work_code` varchar(255) DEFAULT NULL COMMENT '工况代码',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态1有效 0无效',
  `username` varchar(255) DEFAULT NULL COMMENT '创建人姓名',
  `uid` int(11) DEFAULT NULL COMMENT '操作人',
  `created_at` date DEFAULT NULL COMMENT '创建时间',
  `updated_at` date DEFAULT NULL COMMENT '修改时间',
  `edit_uid` int(11) DEFAULT NULL COMMENT '更改人ID',
  `edit_username` varchar(255) DEFAULT NULL COMMENT '更改人姓名',
  PRIMARY KEY (`id`),
  KEY `sub_system_code` (`sub_system_code`(191)) USING BTREE,
  KEY `sub_system_name` (`sub_system_name`(191)) USING BTREE,
  KEY `architectural_id` (`architectural_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_architectural_sub_system
-- ----------------------------
INSERT INTO `sp_architectural_sub_system` VALUES ('2', '6', '基础系统（混凝土条形基础）', '1001-1', 'GK_JC_01', '1', '王海舟', '2', '2019-07-13', '2019-08-12', '6', '王括');
INSERT INTO `sp_architectural_sub_system` VALUES ('3', '6', '基础系统（混凝土构造柱圈梁）', '1001-2', 'GK_JC_02', '1', '王海舟', '2', '2019-07-13', '2019-08-12', '6', '王括');
INSERT INTO `sp_architectural_sub_system` VALUES ('4', '6', '基础系统（混凝土筏板基础）', '1001-03', 'GK_JC_03', '1', '王海舟', '2', '2019-07-13', '2019-08-12', '6', '王括');
INSERT INTO `sp_architectural_sub_system` VALUES ('5', '7', '基础系统（混凝土构造柱圈梁）', '100201', 'GK_JF_02', '1', '王海舟', '2', '2019-07-13', '2019-08-12', '6', '王括');
INSERT INTO `sp_architectural_sub_system` VALUES ('6', '8', '外墙系统', '1003-1', 'WQ-XT-01', '1', '管理员', '1', '2019-07-14', '2019-07-20', '2', '王海舟');
INSERT INTO `sp_architectural_sub_system` VALUES ('7', '8', '外墙系统', '1003-2', 'WQ-XT-2', '1', '管理员', '1', '2019-07-14', '2019-07-20', '2', '王海舟');
INSERT INTO `sp_architectural_sub_system` VALUES ('8', '6', '测试', '1100', ' GJ_JC_04', '1', '王海舟', '2', '2019-07-14', '2019-08-12', '6', '王括');
INSERT INTO `sp_architectural_sub_system` VALUES ('9', '7', '系统工程子系统', '100202', 'GK_JF-03', '1', '王海舟', '2', '2019-07-14', '2019-08-12', '6', '王括');
INSERT INTO `sp_architectural_sub_system` VALUES ('10', '9', '墙体子系统', '1004-01', 'QT-XT-01', '1', '管理员', '1', '2019-07-14', '2019-07-28', '6', '王括');
INSERT INTO `sp_architectural_sub_system` VALUES ('11', '9', '墙体子系统2', '1004-02', 'QT-XT-02', '1', '管理员', '1', '2019-07-14', '2019-07-28', '6', '王括');
INSERT INTO `sp_architectural_sub_system` VALUES ('12', '10', '屋面子系统', '1005-01', 'WM-xt-01', '1', '管理员', '1', '2019-07-14', '2019-08-12', '6', '王括');
INSERT INTO `sp_architectural_sub_system` VALUES ('13', '11', '檐口子系统', '1006-01', 'WY-KF-01', '1', '管理员', '1', '2019-07-14', '2019-07-14', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('14', '12', '楼板子系统', '1007-01', 'LB-XT-01', '1', '管理员', '1', '2019-07-14', '2019-07-28', '6', '王括');
INSERT INTO `sp_architectural_sub_system` VALUES ('15', '13', '吊顶子系统', '1008-1', 'DD-XT-01', '1', '管理员', '1', '2019-07-14', '2019-07-14', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('16', '8', '外墙系统2', '1003-3', 'WQ-xt_3', '1', null, null, '2019-07-20', '2019-07-20', '2', '王海舟');
INSERT INTO `sp_architectural_sub_system` VALUES ('17', '8', '外墙系统2', '1003-3', 'WQ-xt_3', '1', null, null, '2019-07-20', '2019-07-20', '2', '王海舟');
INSERT INTO `sp_architectural_sub_system` VALUES ('18', '19', '子系统名', '子系统编码', '工况', '1', 'test', '4', '2019-07-20', '2019-07-20', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('19', '19', '子系统2', '编码2', 'diam', '1', 'test', '4', '2019-07-20', '2019-07-20', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('20', '9', '外墙系统22', '1004=3', 'WQ-XT-01', '1', '王括', '6', '2019-07-28', '2019-07-28', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('21', '20', '子系统', '编码', '公开啊啊啊', '0', '王括', '6', '2019-08-02', '2019-08-02', '6', '王括');
INSERT INTO `sp_architectural_sub_system` VALUES ('22', '10', '屋面子系统22', '1005-02', 'WM-XT-02', '1', '王括', '6', '2019-08-12', '2019-08-12', null, null);

-- ----------------------------
-- Table structure for sp_architectural_system
-- ----------------------------
DROP TABLE IF EXISTS `sp_architectural_system`;
CREATE TABLE `sp_architectural_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `system_name` varchar(255) DEFAULT NULL COMMENT '系统名称',
  `engineering_name` varchar(255) DEFAULT NULL COMMENT '工程名称',
  `system_code` varchar(255) DEFAULT NULL COMMENT '系统编码',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态1有效 0无效',
  `uid` int(11) DEFAULT NULL COMMENT '操作人',
  `created_at` date DEFAULT NULL COMMENT '创建时间',
  `updated_at` date DEFAULT NULL COMMENT '修改时间',
  `username` varchar(255) DEFAULT NULL COMMENT '创建人姓名',
  `edit_uid` int(11) DEFAULT NULL COMMENT '编辑人ID',
  `edit_username` varchar(255) DEFAULT NULL COMMENT '编辑人姓名',
  PRIMARY KEY (`id`),
  KEY `system_code` (`system_code`(191)) USING BTREE,
  KEY `system_name` (`system_name`(191)) USING BTREE,
  KEY `engineering_name` (`engineering_name`(191)) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_architectural_system
-- ----------------------------
INSERT INTO `sp_architectural_system` VALUES ('6', '基础系统', '基础工程', '1001', '1', '2', '2019-07-14', '2019-08-12', '王海舟', '6', '王括');
INSERT INTO `sp_architectural_system` VALUES ('7', '系统工程', '工程', '1002', '1', '2', '2019-07-14', '2019-08-12', '王海舟', '6', '王括');
INSERT INTO `sp_architectural_system` VALUES ('8', '外墙系统', '墙体工程', '1003', '1', '1', '2019-07-14', '2019-07-20', '管理员', '2', '王海舟');
INSERT INTO `sp_architectural_system` VALUES ('9', '内墙系统', '墙体工程', '1004', '1', '1', '2019-07-14', '2019-07-28', '管理员', '6', '王括');
INSERT INTO `sp_architectural_system` VALUES ('10', '屋面系统', '屋面工程', '1005', '1', '1', '2019-07-14', '2019-08-12', '管理员', '6', '王括');
INSERT INTO `sp_architectural_system` VALUES ('11', '檐口系统', '檐口工程', '1006', '1', '1', '2019-07-14', '2019-07-14', '管理员', null, null);
INSERT INTO `sp_architectural_system` VALUES ('12', '楼板系统', '楼板工程', '1007', '1', '1', '2019-07-14', '2019-07-28', '管理员', '6', '王括');
INSERT INTO `sp_architectural_system` VALUES ('13', '吊顶系统', '吊顶工程', '1008', '1', '1', '2019-07-14', '2019-07-14', '管理员', null, null);
INSERT INTO `sp_architectural_system` VALUES ('14', '外窗系统', '外窗工程', '1009', '1', '1', '2019-07-14', '2019-08-28', '管理员', null, null);
INSERT INTO `sp_architectural_system` VALUES ('15', '外门系统', '外门工程', '1010', '1', '1', '2019-07-14', '2019-07-14', '管理员', null, null);
INSERT INTO `sp_architectural_system` VALUES ('16', '细部装饰系统', '细部装饰工程', '1011', '1', '1', '2019-07-14', '2019-07-14', '管理员', null, null);
INSERT INTO `sp_architectural_system` VALUES ('17', '给排水系统', '给排水工程', '1012', '1', '1', '2019-07-14', '2019-07-14', '管理员', null, null);
INSERT INTO `sp_architectural_system` VALUES ('18', '电器系统', '电器工程', '1013', '1', '1', '2019-07-14', '2019-07-14', '管理员', null, null);
INSERT INTO `sp_architectural_system` VALUES ('19', '测试自己的系统', '工程', '1014', '1', '4', '2019-07-20', '2019-07-20', 'test', null, null);
INSERT INTO `sp_architectural_system` VALUES ('20', '测试', '工程 ', '编码', '1', '6', '2019-08-02', '2019-08-02', '王括', '6', '王括');

-- ----------------------------
-- Table structure for sp_authority
-- ----------------------------
DROP TABLE IF EXISTS `sp_authority`;
CREATE TABLE `sp_authority` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auth_id` varchar(100) DEFAULT NULL COMMENT '权限id',
  `parent_id` varchar(100) DEFAULT NULL COMMENT '父子关系',
  `is_show` tinyint(4) DEFAULT NULL COMMENT '是否展示 1展示 0 不展示',
  `level` tinyint(4) DEFAULT NULL COMMENT '级别',
  `name` varchar(255) DEFAULT NULL COMMENT '权限名称',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标对应的class参数',
  `url` varchar(255) DEFAULT NULL COMMENT '路由路径',
  `status` tinyint(4) DEFAULT NULL COMMENT '是否可用 1可用 0禁用',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL,
  `is_leaf` tinyint(4) DEFAULT '0' COMMENT '是否为叶子节点',
  PRIMARY KEY (`id`),
  KEY `auth_id` (`auth_id`) USING BTREE,
  KEY `parent_id` (`parent_id`) USING BTREE,
  KEY `level` (`level`) USING BTREE,
  KEY `statusshow` (`status`,`is_show`,`auth_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_authority
-- ----------------------------
INSERT INTO `sp_authority` VALUES ('1', '10', '0', '1', '1', '管理员', '&#xe0a0;', '/admin/user_role_list', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('2', '1001', '10', '1', '2', '角色', '', '/admin/role_list', '1', '2', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('3', '100101', '1001', '0', '3', '查询角色', '', '/admin/role_list', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('4', '100102', '1001', '0', '3', '添加角色', '', '/admin/add_role', '1', '2', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('5', '100103', '1001', '0', '3', '编辑角色', '', '/admin/edit_role/{id}', '1', '3', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('7', '100105', '1001', '0', '3', '编辑角色权限', '', '/admin/edit_role_authority', '1', '4', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('8', '1002', '10', '1', '2', '用户', '', '/admin/user_role_list', '1', '3', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('9', '100201', '1002', '0', '3', '查询用户', '', '/admin/user_role_list', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('10', '100202', '1002', '0', '3', '添加用户', '', '/admin/add_user_info', '1', '2', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('11', '100203', '1002', '0', '3', '编辑用户', '', '/admin/edit_user_info', '1', '3', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('12', '100204', '1002', '0', '3', '删除用户', '', '/admin/ban_user', '1', '4', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('13', '100205', '1002', '0', '3', '编辑用户角色', '', '/admin/edit_role_authority', '1', '5', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('14', '1003', '10', '1', '2', '系统配置', '', '/admin/system_list', '1', '6', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('15', '100301', '1003', '0', '3', '查询配置', '', '/admin/system_list', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('16', '100302', '1003', '0', '3', '添加配置', '', '/admin/add_system_list', '1', '2', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('17', '100303', '1003', '0', '3', '编辑配置项', '', '/admin/edit_system_list', '1', '3', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('18', '1004', '10', '1', '2', '菜单列表', '', '/admin/menu_nav_list', '1', '5', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('19', '100401', '1004', '0', '3', '展示菜单列表', '', '/admin/menu_nav_list', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('26', '15', '0', '1', '1', '项目信息管理', '&#xe0b8;', '/project/projectStart', '1', '2', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('27', '1501', '15', '0', '2', '创建项目', '', '/project/createdProject', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('28', '1502', '15', '1', '2', '洽谈项目', '', '/project/projectStart', '1', '2', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('29', '150201', '1502', '0', '3', '查询项目详情信息', '', '/project/projectDetail', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('31', '150202', '1502', '0', '3', '编辑项目', '', '/project/editProject', '1', '2', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('32', '1503', '15', '1', '2', '实施项目', '', '/project/projectConduct', '1', '3', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('33', '150301', '1503', '0', '3', '查询项目详情', '', '/project/projectConductDetail', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('34', '150302', '1503', '0', '3', '编辑项目', '', '/project/editConductProject', '1', '2', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('37', '1504', '15', '1', '2', '竣工项目', '', '/project/projectCompleted', '1', '4', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('38', '150401', '1504', '0', '3', '查询项目详情', '', '/project/projectCompletedDetail', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('41', '1505', '15', '1', '2', '终止项目', '', '/project/projectTermination', '1', '5', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('42', '150501', '1505', '0', '3', '查询项目', '', '/project/projectTerminationDetail', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('44', '20', '0', '1', '1', '预算报价管理', '&#xe096;', '/budget/budgetStart', '1', '4', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('45', '2001', '20', '1', '2', '项目预算管理', '', '/budget/budgetStart', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('46', '200101', '2001', '0', '3', '洽谈预算', '', '/budget/budgetStart', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('47', '200102', '2001', '0', '3', '实施预算', '', '/budget/budgetConduct', '1', '2', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('48', '200103', '2001', '0', '3', '竣工预算', '', '/budget/budgetCompleted', '1', '3', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('49', '200104', '2001', '0', '3', '终止预算', '', '/budget/budgetTermination', '1', '4', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('52', '2002', '20', '1', '2', '项目报价管理', '', '/offer/offerStart', '1', '2', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('53', '200201', '2002', '0', '3', '洽谈报价', '', '/offer/offerStart', '1', '1', '2019-08-19 16:57:25', '2019-08-19 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('54', '200202', '2002', '0', '3', '实施报价', '', '/offer/offerConduct', '1', '2', '2019-08-19 16:57:25', '2019-08-19 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('55', '200203', '2002', '0', '3', '竣工报价', '', '/offer/offerCompleted', '1', '3', '2019-08-19 16:57:25', '2019-08-19 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('56', '200204', '2002', '0', '3', '终止报价', '', '/offer/offerTermination', '1', '4', '2019-08-19 16:57:25', '2019-08-19 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('59', '25', '0', '1', '1', '采购集成管理', '&#xe0d2;', '/purchase/purchaseConduct', '1', '5', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('60', '2501', '25', '1', '2', '实施项目', '', '/purchase/purchaseConduct', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('61', '2502', '25', '1', '2', '竣工项目', '', '', '1', '2', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('62', '250101', '2501', '0', '3', '编辑实施项目', '', '', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('63', '250102', '2501', '0', '3', '采购批次管理', '', '', '1', '2', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('64', '250103', '2501', '0', '3', '采购订单管理', '', '', '1', '3', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('65', '30', '0', '1', '1', '施工安装管理', '&#xe0a9;', '', '1', '6', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('66', '3001', '30', '0', '2', '查询施工列表', '', '', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('67', '3002', '30', '0', '2', '创建施工信息', '', '', '1', '2', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('68', '3003', '30', '0', '2', '编辑施工信息', '', '', '1', '3', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('69', '3004', '30', '0', '2', '删除施工信息', '', '', '1', '4', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('70', '3005', '30', '0', '2', '查看施工详情', '', '', '1', '5', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('71', '35', '0', '1', '1', '建筑设计管理', '&#xe14a;', '/architectural/enginStart', '1', '3', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('72', '3501', '35', '1', '2', '建筑系统', '', '/architectural/index', '1', '2', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('73', '3502', '35', '1', '2', '建筑子系统', '', '/architectural/architectureList', '1', '3', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('74', '350101', '3501', '0', '3', '搜索', '', '/architectural/index', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('75', '350102', '3501', '0', '3', '添加', '', '/architectural/add_architect', '1', '2', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('76', '350103', '3501', '0', '3', '编辑', '', '/architectural/edit_architect', '1', '3', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('77', '40', '0', '1', '1', '部件集成管理', '&#xe00d;', '/material/materialList', '1', '7', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('78', '4001', '40', '0', '2', '搜索部件信息', '', '/material/materialList', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('80', '4002', '40', '0', '2', '查询部件详情', '', '/material/materialDetail', '1', '2', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('82', '4003', '40', '0', '2', '编辑部件', '', '/material/editMaterial', '1', '3', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('83', '45', '0', '1', '1', '供应商管理', '&#xe052;', '/supplier/brandList', '1', '8', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('84', '4501', '45', '1', '2', '品牌信息', '', '/supplier/brandList', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('85', '4502', '45', '1', '2', '供应商信息', '', '/supplier/supplierList', '1', '2', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('86', '450101', '4501', '0', '3', '添加品牌', '', '/supplier/supplierList', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('87', '450102', '4501', '0', '3', '查询品牌', '', '/supplier/supplierList', '1', '2', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('88', '450201', '4502', '0', '3', '创建供应商', '', '/supplier/addSupplier', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('89', '50', '0', '1', '1', '财务信息管理', '&#xe100;', '', '1', '9', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('90', '5001', '50', '0', '2', '查询信息列表', '', '', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('91', '5002', '50', '0', '2', '添加', '', '', '1', '2', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('92', '5003', '50', '0', '2', '编辑', '', '', '1', '3', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('93', '5004', '50', '0', '2', '删除', '', '', '1', '4', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('94', '5005', '50', '0', '2', '查看详情', '', '', '1', '5', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('95', '55', '0', '1', '1', '客户信息管理', '&#xe0aa;', '/customer/customerList', '1', '10', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('96', '5501', '55', '1', '2', '客户信息列表', '', '/customer/customerList', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('97', '5502', '55', '0', '2', '添加客户', '', '/customer/postAddCustomer', '1', '2', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('98', '5503', '55', '0', '2', '编辑客户', '', '/customer/postEditCustomer', '1', '3', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('99', '5504', '55', '0', '2', '删除客户', '', '/customer/postDeleteCustomer', '1', '4', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('101', '60', '0', '1', '1', '系统公告管理', '&#xe052;', '/base/notice_list', '1', '11', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('103', '6002', '60', '1', '2', '查询公告信息', '', '/base/notice_list', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('104', '600201', '6002', '0', '3', '查询公告', '', '/base/notice_list', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('105', '600202', '6002', '0', '3', '添加公告', '', '/base/add_notice', '1', '2', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('107', '350104', '3501', '0', '3', '状态更改', null, '/architectural/edit_architect_status', '1', '4', '2019-07-14 17:00:45', '2019-07-14 17:00:48', '1');
INSERT INTO `sp_authority` VALUES ('108', '350201', '3502', '0', '3', '搜索', null, '/architectural/architectureList', '1', '1', '2019-07-14 17:00:51', '2019-07-14 17:00:55', '1');
INSERT INTO `sp_authority` VALUES ('109', '350202', '3502', '0', '3', '编辑', null, '/architectural/edit_material', '1', '2', '2019-07-14 17:00:59', '2019-07-14 17:01:01', '1');
INSERT INTO `sp_authority` VALUES ('110', '1005', '10', '1', '2', '审核用户', null, '/admin/examine_user', '1', '4', '2019-08-07 11:33:37', '2019-08-07 11:33:40', '0');
INSERT INTO `sp_authority` VALUES ('111', '450103', '4501', '0', '3', '编辑品牌', null, '/supplier/supplierList', '1', '3', null, null, '0');
INSERT INTO `sp_authority` VALUES ('112', '450202', '4502', '0', '3', '编辑供应商', null, '/supplier/editSupplier', '1', '2', '2019-07-23 18:53:56', '2019-07-23 18:53:59', '1');
INSERT INTO `sp_authority` VALUES ('113', '450203', '4502', '0', '3', '删除供应商', null, '/supplier/deleteSupplierBrand', '1', '3', '2019-07-23 18:54:03', '2019-08-21 16:41:50', '1');
INSERT INTO `sp_authority` VALUES ('114', '3500', '35', '1', '2', '项目设计', null, '/architectural/enginStart', '1', '1', '2019-08-07 11:54:07', null, '0');
INSERT INTO `sp_authority` VALUES ('115', '350001', '3500', '0', '3', '洽谈项目', '', '/architectural/enginStart', '1', '1', '2019-07-04 16:57:00', '2019-07-04 16:57:00', '1');
INSERT INTO `sp_authority` VALUES ('116', '35000101', '350001', '0', '4', '查询项目详情信息', '', '/architectural/enginStartDetail', '1', '1', '2019-07-04 16:57:00', '2019-07-04 16:57:00', '1');
INSERT INTO `sp_authority` VALUES ('117', '35000102', '350001', '0', '4', '编辑项目', '', '/architectural/editEngin', '1', '2', '2019-07-04 16:57:00', '2019-07-04 16:57:00', '1');
INSERT INTO `sp_authority` VALUES ('118', '350002', '3500', '0', '3', '实施项目', '', '/architectural/enginConduct', '1', '2', '2019-07-04 16:57:00', '2019-07-04 16:57:00', '1');
INSERT INTO `sp_authority` VALUES ('119', '35000201', '350002', '0', '4', '查询项目详情', '', '/architectural/enginConductDetail', '1', '1', '2019-07-04 16:57:00', '2019-07-04 16:57:00', '1');
INSERT INTO `sp_authority` VALUES ('120', '35000202', '350002', '0', '4', '编辑项目', '', '/architectural/editConductEngin', '1', '2', '2019-07-04 16:57:00', '2019-07-04 16:57:00', '1');
INSERT INTO `sp_authority` VALUES ('121', '350003', '3500', '0', '3', '竣工项目', '', '/architectural/enginCompleted', '1', '3', '2019-07-04 16:57:00', '2019-07-04 16:57:00', '1');
INSERT INTO `sp_authority` VALUES ('122', '35000301', '350003', '0', '4', '查询项目详情', '', '/architectural/enginCompletedDetail', '1', '1', '2019-07-04 16:57:00', '2019-07-04 16:57:00', '1');
INSERT INTO `sp_authority` VALUES ('123', '350004', '3500', '0', '3', '终止项目', '', '/architectural/enginTermination', '1', '4', '2019-07-04 16:57:00', '2019-07-04 16:57:00', '1');
INSERT INTO `sp_authority` VALUES ('124', '35000401', '350004', '0', '4', '查询项目', '', '/architectural/enginTerminationDetail', '1', '1', '2019-07-04 16:57:00', '2019-07-04 16:57:00', '1');
INSERT INTO `sp_authority` VALUES ('125', '20010101', '200101', '0', '4', '编辑洽谈预算', null, '/budget/editStartBudget', '1', '1', '2019-08-12 17:14:16', '2019-08-12 17:14:18', '1');
INSERT INTO `sp_authority` VALUES ('126', '20010102', '200101', '0', '4', '查看洽谈预算', null, '/budget/budgetStartDetail', '1', '2', '2019-08-12 17:14:21', '2019-08-12 17:14:23', '1');
INSERT INTO `sp_authority` VALUES ('127', '20010201', '200102', '0', '4', '编辑实施预算', null, '/budget/editConductBudget', '1', '1', '2019-08-12 17:14:26', '2019-08-12 17:14:30', '1');
INSERT INTO `sp_authority` VALUES ('128', '20010202', '200102', '0', '4', '查看实施预算', null, '/budget/budgetConductDetail', '1', '2', '2019-08-12 17:14:33', '2019-08-12 17:14:35', '1');
INSERT INTO `sp_authority` VALUES ('129', '20010301', '200103', '0', '4', '查看竣工预算', null, '/budget/budgetCompletedDetail', '1', '1', '2019-08-12 17:14:38', '2019-08-12 17:14:41', '1');
INSERT INTO `sp_authority` VALUES ('130', '20010401', '200104', '0', '4', '查看终止预算', null, '/budget/budgetTerminationDetail', '1', '1', '2019-08-12 17:14:44', '2019-08-12 17:14:46', '1');
INSERT INTO `sp_authority` VALUES ('131', '20020102', '200201', '0', '4', '查看洽谈报价', null, '/offer/offerStartDetail', '1', '2', '2019-08-19 16:57:25', '2019-08-19 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('132', '20020101', '200201', '0', '4', '编辑洽谈报价', '', '/offer/editStartOffer', '1', '1', '2019-08-19 16:57:25', '2019-08-19 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('133', '20020201', '200202', '0', '4', '编辑实施报价', '', '/offer/editConductOffer', '1', '1', '2019-08-19 16:57:25', '2019-08-19 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('134', '20020202', '200202', '0', '4', '查看实施报价', '', '/offer/offerConductDetail', '1', '2', '2019-08-19 16:57:25', '2019-08-19 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('135', '20020301', '200203', '0', '4', '查看竣工报价', '', '/offer/offerCompletedDetail', '1', '1', '2019-08-19 16:57:25', '2019-08-19 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('136', '20020401', '200204', '0', '4', '查看终止报价', '', '/offer/offerTerminationDetail', '1', '1', '2019-08-19 16:57:25', '2019-08-19 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('137', '250104', '2501', '0', '3', '物流进度管理', null, null, '1', '4', '2019-08-21 18:22:52', '2019-08-21 18:22:54', '1');
INSERT INTO `sp_authority` VALUES ('138', '600203', '6002', '0', '3', '编辑公告', '', '/base/edit_notice', '1', '3', '2019-08-29 15:48:13', '2019-08-29 15:48:15', '1');
INSERT INTO `sp_authority` VALUES ('139', '600204', '6002', '0', '3', '删除公告', null, '/base/delete_notice', '1', '4', '2019-08-29 17:57:34', '2019-08-29 17:57:36', '1');
INSERT INTO `sp_authority` VALUES ('140', '1006', '10', '1', '2', '部门管理', null, '/admin/departmentList', '1', '1', '2019-08-30 18:05:35', '2019-08-30 18:05:39', '0');
INSERT INTO `sp_authority` VALUES ('141', '100601', '1006', '0', '3', '新增部门', null, '/admin/postDepartment', '1', '1', '2019-09-02 11:05:30', '2019-09-02 11:05:33', '1');
INSERT INTO `sp_authority` VALUES ('142', '100602', '1006', '0', '3', '编辑部门', null, '/admin/postDepartment', '1', '2', '2019-09-02 11:05:35', '2019-09-02 11:05:38', '1');
INSERT INTO `sp_authority` VALUES ('143', '100603', '1006', '0', '3', '删除部门', null, '/admin/deleteDepartment', '1', '3', '2019-09-02 11:05:41', '2019-09-02 11:05:44', '1');

-- ----------------------------
-- Table structure for sp_brand
-- ----------------------------
DROP TABLE IF EXISTS `sp_brand`;
CREATE TABLE `sp_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(255) DEFAULT NULL COMMENT '品牌名称',
  `brand_logo` varchar(100) DEFAULT NULL COMMENT '品牌logo图片',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态 1有效 0无效',
  `createor` varchar(255) DEFAULT NULL,
  `create_uid` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `editor` varchar(255) DEFAULT NULL,
  `edit_uid` int(11) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_brand
-- ----------------------------
INSERT INTO `sp_brand` VALUES ('1', 'SADFSD', null, '1', '王括', '6', '2019-07-23', null, null, null);
INSERT INTO `sp_brand` VALUES ('2', '新品牌1111', null, '1', '王括', '6', '2019-07-23', '王括', '6', '2019-07-25');
INSERT INTO `sp_brand` VALUES ('3', 'asfdasdfa', null, '1', '王括', '6', '2019-07-23', '王括', '6', '2019-07-28');
INSERT INTO `sp_brand` VALUES ('4', '测试品牌', '/img/brand_logo/743a880c5c790133eed3b17f32792a6e', '1', '王括', '6', '2019-07-25', '王括', '6', '2019-07-28');
INSERT INTO `sp_brand` VALUES ('5', '阿斯蒂芬', null, '1', '王括', '6', '2019-07-28', '王括', '6', '2019-07-28');
INSERT INTO `sp_brand` VALUES ('6', '阿斯蒂芬111111111', '/img/brand_logo/e62c2999c6999539800275956d1d94d9', '1', '王括', '6', '2019-07-28', '王括', '6', '2019-07-28');
INSERT INTO `sp_brand` VALUES ('7', '阿斯蒂芬123414', 'http://127.0.0.1/img/brand_logo/2d7d4a9f8660ed6889cbfd258915616f', '1', '王括', '6', '2019-07-28', '王括', '6', '2019-08-02');

-- ----------------------------
-- Table structure for sp_budget
-- ----------------------------
DROP TABLE IF EXISTS `sp_budget`;
CREATE TABLE `sp_budget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `budget_order_number` varchar(100) DEFAULT NULL COMMENT '预算单编号',
  `project_id` int(11) DEFAULT NULL COMMENT '项目id',
  `engin_id` int(11) DEFAULT NULL COMMENT '工程id',
  `budget_status` tinyint(4) DEFAULT '0' COMMENT '预算审核状态 1已审核 0未审核',
  `quotation_date` date DEFAULT NULL COMMENT '报价日期',
  `quotation_limit_day` varchar(255) DEFAULT NULL COMMENT '报价有效期限（天）',
  `freight_price` float(15,2) DEFAULT NULL COMMENT '运输单价',
  `freight_charge` varchar(250) DEFAULT NULL COMMENT '运输费',
  `package_price` float(15,2) DEFAULT NULL COMMENT '包装单价',
  `package_charge` varchar(250) DEFAULT NULL COMMENT '包装费',
  `packing_price` float(15,2) DEFAULT NULL COMMENT '包装费单价',
  `material_total_price` float(15,2) DEFAULT NULL COMMENT '材料总费用',
  `packing_charge` varchar(250) DEFAULT NULL COMMENT '装箱费',
  `construction_price` varchar(250) DEFAULT NULL COMMENT '施工安装单价',
  `construction_charge` varchar(250) DEFAULT NULL COMMENT '施工安装费',
  `direct_project_cost` decimal(15,2) DEFAULT NULL COMMENT '工程造价（直接）',
  `profit_ratio` varchar(250) DEFAULT NULL COMMENT '预估利润占比',
  `profit` varchar(250) DEFAULT NULL COMMENT '预估利润额',
  `tax_ratio` varchar(250) DEFAULT NULL COMMENT '税费占比',
  `tax` varchar(250) DEFAULT NULL COMMENT '税费额',
  `total_budget_price` varchar(250) DEFAULT NULL COMMENT '工程造价总计（元）',
  `purchase_status` varchar(250) DEFAULT NULL COMMENT '是否已生成采购单',
  `created_uid` int(11) DEFAULT NULL COMMENT '创建者',
  `created_at` date DEFAULT NULL COMMENT '创建时间',
  `edit_uid` int(11) DEFAULT NULL COMMENT '编辑者',
  `updated_at` date DEFAULT NULL COMMENT '编辑时间',
  PRIMARY KEY (`id`),
  KEY `enginid` (`engin_id`,`project_id`) USING BTREE,
  KEY `project_id` (`project_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_budget
-- ----------------------------
INSERT INTO `sp_budget` VALUES ('7', 'YSD20190903183754810786', '18', '4', '0', '2019-09-03', '222', '66.00', '59400', '55.00', '49500', '44.00', '154326.45', '39600', '33', '29700', '184026.46', '21', '38645.56', '18', '40080.96', '262752.98', '0', '6', '2019-09-03', '6', '2019-09-03');
INSERT INTO `sp_budget` VALUES ('8', 'YSD20190904170956659969', '19', '8', '0', '2019-09-04', '666', '9.00', '369', '9.00', '369', '12.00', '8963.00', '492', '13', '533', '9496.00', '14', '1329.44', '15', '1623.82', '12449.26', '0', '6', '2019-09-04', '6', '2019-09-04');
INSERT INTO `sp_budget` VALUES ('9', 'YSD20190904112802847171', '20', '10', '0', '2019-09-04', '800', '50.00', '250', '56.00', '280', '57.00', '25735.40', '285', '44', '220', '25955.40', '33', '8565.28', '23', '7939.76', '42460.44', '0', '6', '2019-09-04', '6', '2019-09-04');

-- ----------------------------
-- Table structure for sp_budget_item
-- ----------------------------
DROP TABLE IF EXISTS `sp_budget_item`;
CREATE TABLE `sp_budget_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` varchar(250) DEFAULT NULL COMMENT '项目id',
  `engin_id` varchar(250) DEFAULT NULL COMMENT '工程id',
  `budget_id` varchar(250) DEFAULT NULL COMMENT '预算id',
  `arch_id` varchar(250) DEFAULT NULL COMMENT '建筑设计系统id',
  `sub_arch_id` varchar(250) DEFAULT NULL COMMENT '建筑设计子系统id',
  `mbs_id` int(11) DEFAULT NULL COMMENT '材料品牌供应商表id',
  `material_id` varchar(250) DEFAULT NULL COMMENT '材料id',
  `material_name` varchar(1000) DEFAULT NULL COMMENT '材料名称',
  `characteristic` varchar(250) DEFAULT NULL COMMENT '规格特性要求',
  `material_budget_unit` varchar(250) DEFAULT NULL COMMENT '预算单位',
  `drawing_quantity` varchar(250) DEFAULT NULL COMMENT '工程量（图纸）',
  `loss_ratio` varchar(250) DEFAULT NULL COMMENT '损耗（%）',
  `engineering_quantity` varchar(250) DEFAULT NULL COMMENT '实际工程量',
  `brand_id` varchar(250) DEFAULT NULL COMMENT '品牌',
  `brand_name` varchar(255) DEFAULT NULL COMMENT '品牌名称',
  `supplier_id` int(11) DEFAULT NULL COMMENT '供应商id',
  `supplier` varchar(255) DEFAULT NULL COMMENT '供应商名称',
  `budget_price` varchar(250) DEFAULT NULL COMMENT '预算单价',
  `total_material_price` varchar(250) DEFAULT NULL COMMENT '材料合计总价',
  `created_uid` int(11) DEFAULT NULL COMMENT '创建者',
  `created_at` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `budget_id` (`budget_id`) USING BTREE,
  KEY `material_id` (`material_id`) USING BTREE,
  KEY `brand_id` (`brand_id`) USING BTREE,
  KEY `engin_id` (`engin_id`,`project_id`) USING BTREE,
  KEY `project_id` (`project_id`) USING BTREE,
  KEY `engin` (`engin_id`,`budget_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sp_budget_item
-- ----------------------------
INSERT INTO `sp_budget_item` VALUES ('41', '18', '4', '7', '6', '4', '21', '22', '混凝土2', '特性2', '阿萨德', '111', '6', '117.66', '7', '阿斯蒂芬123414', '2', '灿烂前往', '1', '117.66', '6', '2019-09-03');
INSERT INTO `sp_budget_item` VALUES ('42', '18', '4', '7', '6', '4', '25', '21', '混凝土1', '特性1', '维尔切', '212', '5', '222.6', '5', '阿斯蒂芬', '3', '有限责任公司', '4', '890.4', '6', '2019-09-03');
INSERT INTO `sp_budget_item` VALUES ('43', '18', '4', '7', '13', '15', '22', '38', '我', '阿萨德', '元', '122', '22', '148.84', '6', '阿斯蒂芬111111111', '1', '灿烂前往222222', '10', '1488.4', '6', '2019-09-03');
INSERT INTO `sp_budget_item` VALUES ('44', '18', '4', '7', '13', '15', '24', '37', '去', '阿达', '预算单位', '333', '0', '333', '3', 'asfdasdfa', '1', '灿烂前往222222', '10', '3330', '6', '2019-09-03');
INSERT INTO `sp_budget_item` VALUES ('60', '20', '10', '9', '6', '4', '25', '21', '混凝土1', '特性1', '维尔切', '400', '5', '420', '5', '阿斯蒂芬', '3', '有限责任公司', '4', '1680', '6', '2019-09-04');
INSERT INTO `sp_budget_item` VALUES ('61', '20', '10', '9', '13', '15', '22', '38', '我', '阿萨德', '元', '1532', '22', '1869.04', '6', '阿斯蒂芬111111111', '1', '灿烂前往222222', '10', '18690.4', '6', '2019-09-04');
INSERT INTO `sp_budget_item` VALUES ('62', '20', '10', '9', '13', '15', '24', '37', '去', '阿达', '预算单位', '455', '0', '455', '3', 'asfdasdfa', '1', '灿烂前往222222', '10', '4550', '6', '2019-09-04');
INSERT INTO `sp_budget_item` VALUES ('69', '19', '8', '8', '6', '4', '25', '21', '混凝土1', '特性1', '维尔切', '1000', '5', '1050', '5', '阿斯蒂芬', '3', '有限责任公司', '4', '4200', '6', '2019-09-04');
INSERT INTO `sp_budget_item` VALUES ('70', '19', '8', '8', '6', '4', '21', '22', '混凝土2', '特性2', '阿萨德', '500', '6', '530', '7', '阿斯蒂芬123414', '2', '灿烂前往', '1', '530', '6', '2019-09-04');
INSERT INTO `sp_budget_item` VALUES ('71', '19', '8', '8', '6', '2', '19', '19', '条形1', '要求1', '阿萨德', '260', '5', '273', '5', '阿斯蒂芬', '2', '灿烂前往', '11', '3003', '6', '2019-09-04');

-- ----------------------------
-- Table structure for sp_customer
-- ----------------------------
DROP TABLE IF EXISTS `sp_customer`;
CREATE TABLE `sp_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer` varchar(255) DEFAULT NULL COMMENT '客户名称',
  `type` varchar(255) DEFAULT NULL COMMENT '客户性质',
  `address` varchar(1000) DEFAULT NULL COMMENT '客户地址',
  `contacts` varchar(255) DEFAULT NULL COMMENT '联系人',
  `telephone` varchar(255) DEFAULT NULL COMMENT '电话',
  `phone` varchar(255) DEFAULT NULL COMMENT '手机',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态 1开启 0删除',
  `uid` int(11) DEFAULT NULL COMMENT '创建人id',
  `username` varchar(255) DEFAULT NULL COMMENT '创建人姓名',
  `created_at` date DEFAULT NULL COMMENT '创建时间',
  `edit_uid` int(11) DEFAULT NULL,
  `updated_at` date DEFAULT NULL COMMENT '更改时间',
  PRIMARY KEY (`id`),
  KEY `customer` (`customer`(191)) USING BTREE,
  KEY `type` (`type`(191)) USING BTREE,
  KEY `address` (`address`(191)) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_customer
-- ----------------------------
INSERT INTO `sp_customer` VALUES ('1', '水平有限', '你看着办', '你说那就那', '匿名', '一个不可言语的号码', '数字显示', '邮箱看着办', '1', '6', '呃呃', '2019-07-30', '6', '2019-07-30');
INSERT INTO `sp_customer` VALUES ('2', '测试', '名称', '啊啊大', '我', '1111111111', '阿达', 'everup@163.com', '1', '6', '王括', '2019-07-30', null, null);
INSERT INTO `sp_customer` VALUES ('3', '新客户信息', '人大', '中南海', '旺旺', '15210001023', '18510171111', '11111111111111', '0', '6', '王括', '2019-07-30', '6', '2019-07-30');
INSERT INTO `sp_customer` VALUES ('4', '啊', '是', '的', '否', '个', '好111111111111111', 'everup@163.com', '1', '6', '王括', '2019-07-31', '6', '2019-08-02');
INSERT INTO `sp_customer` VALUES ('5', '王氏', '国企', '河北来源', null, '15515231452', '', 'wagnshi@163.com', '1', '6', '王括', '2019-08-04', null, null);
INSERT INTO `sp_customer` VALUES ('6', '王氏', '国企', '河北来源', null, '15515231452', '', 'wagnshi@163.com', '1', '6', '王括', '2019-08-04', '6', '2019-08-09');
INSERT INTO `sp_customer` VALUES ('7', '王氏', '国企', '河北来源', null, '15515231452', '', 'wagnshi@163.com', '1', '6', '王括', '2019-08-05', '1', '2019-08-28');
INSERT INTO `sp_customer` VALUES ('8', '王氏', '国企', '住建委', null, '13011111111', '010-21234212', 'eee@163.com', '1', '6', '王括', '2019-08-16', '6', '2019-08-16');
INSERT INTO `sp_customer` VALUES ('9', '天津万顺', '民企', '天津东丽', null, '13911111111', '', '', '1', '1', '杨亚君(总经理)', '2019-08-28', null, null);
INSERT INTO `sp_customer` VALUES ('10', '天津万顺', '民企', '天津东丽', null, '13912345678', '022-23456789', '', '1', '1', '杨亚君(总经理)', '2019-08-28', null, null);
INSERT INTO `sp_customer` VALUES ('11', '天津万顺', '民企', '天津东丽', null, '13912345678', '022-23456789', '', '1', '1', '杨亚君(总经理)', '2019-08-28', null, null);
INSERT INTO `sp_customer` VALUES ('12', '天津万顺', '民企', '天津东丽', null, '13912345678', '022-23456789', '', '1', '1', '杨亚君(总经理)', '2019-08-28', null, null);
INSERT INTO `sp_customer` VALUES ('13', '天津万顺', '民企', '天津东丽', null, '13912345678', '022-23456789', '', '1', '1', '杨亚君(总经理)', '2019-08-28', null, null);
INSERT INTO `sp_customer` VALUES ('14', '天津万顺', '民企', '天津东丽', null, '13911111111', '', '', '1', '1', '杨亚君(总经理)', '2019-08-28', null, null);
INSERT INTO `sp_customer` VALUES ('15', '天津万顺', '民企', '天津东丽', null, '13911111111', '022-23456789', '', '1', '1', '杨亚君(总经理)', '2019-08-28', '6', '2019-09-02');
INSERT INTO `sp_customer` VALUES ('16', '王石', '国企', '北京', null, '15241547845', '01056421547', 'test@163.com', '1', '6', '王括', '2019-09-03', null, null);
INSERT INTO `sp_customer` VALUES ('17', '王石', '国企', '北京', null, '15241547845', '01056421547', 'test@163.com', '1', '6', '王括', '2019-09-03', null, null);
INSERT INTO `sp_customer` VALUES ('18', '王石', '国企', '北京', null, '15241547845', '01056421547', 'test@163.com', '1', '6', '王括', '2019-09-03', null, null);
INSERT INTO `sp_customer` VALUES ('19', '王石', '国企', '北京', null, '15241547845', '01056421547', 'test@163.com', '1', '6', '王括', '2019-09-03', '6', '2019-09-04');

-- ----------------------------
-- Table structure for sp_department
-- ----------------------------
DROP TABLE IF EXISTS `sp_department`;
CREATE TABLE `sp_department` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `department` varchar(255) DEFAULT NULL COMMENT '部门名称',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态 1显示 0删除',
  `sort` int(10) DEFAULT NULL COMMENT '排序',
  `banedit` tinyint(4) DEFAULT '1' COMMENT '是否禁止修改 1允许修改 2不允许修改 ',
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_department
-- ----------------------------
INSERT INTO `sp_department` VALUES ('1', '总经办', '1', '1', '1', '1', '王括', '2019-08-30');
INSERT INTO `sp_department` VALUES ('2', '销售部', '1', '2', '1', '1', '王括', '2019-08-30');
INSERT INTO `sp_department` VALUES ('3', '预算部', '1', '3', '2', '1', '王括', '2019-08-30');
INSERT INTO `sp_department` VALUES ('4', '采购部', '1', '4', '2', '1', '王括', '2019-08-30');
INSERT INTO `sp_department` VALUES ('5', '工程部', '1', '5', '1', '1', '王括', '2019-08-30');
INSERT INTO `sp_department` VALUES ('6', '设计部', '1', '6', '2', '1', '王括', '2019-08-30');
INSERT INTO `sp_department` VALUES ('7', '财务部', '1', '7', '1', '1', '王括', '2019-08-30');
INSERT INTO `sp_department` VALUES ('8', '合约部', '1', '8', '2', '1', '王括', '2019-08-30');

-- ----------------------------
-- Table structure for sp_engineering
-- ----------------------------
DROP TABLE IF EXISTS `sp_engineering`;
CREATE TABLE `sp_engineering` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL COMMENT '项目id',
  `engineering_name` varchar(255) DEFAULT NULL COMMENT '工程名称',
  `build_area` float(10,2) DEFAULT NULL COMMENT '建筑面积',
  `build_floor` int(4) DEFAULT '1' COMMENT '建筑楼层（层数）',
  `build_height` float(10,2) DEFAULT NULL COMMENT '建筑高度',
  `indoor_height` float(10,0) DEFAULT NULL COMMENT '室内净高',
  `created_uid` int(11) DEFAULT NULL COMMENT '创建人id',
  `created_at` date DEFAULT NULL COMMENT '创建时间',
  `completed_at` date DEFAULT NULL COMMENT '竣工时间',
  `termination_at` date DEFAULT NULL COMMENT '项目终止时间',
  `edit_uid` int(11) DEFAULT NULL COMMENT '编辑人id',
  `updated_at` date DEFAULT NULL COMMENT '编辑时间',
  `status` tinyint(4) DEFAULT '0' COMMENT '项目类型 0洽谈项目 1实施项目 2竣工项目 4终止项目',
  `contract_code` varchar(255) DEFAULT NULL COMMENT '合同编码',
  `contract_at` date DEFAULT NULL COMMENT '合同签署时间',
  `contract_type` varchar(255) DEFAULT NULL COMMENT '合同类型',
  `contract_num` tinyint(4) DEFAULT NULL COMMENT '合同份数',
  `remark` varchar(1000) DEFAULT NULL COMMENT '备注信息',
  `is_conf_param` tinyint(4) DEFAULT '0' COMMENT '是否进行过建筑设计参数配置 1是 0否',
  `is_conf_architectural` tinyint(4) DEFAULT '0' COMMENT '是否关联过材料  1配置完成 0没有配置',
  `budget_id` int(11) DEFAULT '0' COMMENT '预算表id',
  `offer_id` int(11) DEFAULT '0' COMMENT '报价单id',
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`) USING BTREE,
  KEY `status` (`status`,`project_id`) USING BTREE,
  KEY `engineering_name` (`engineering_name`(191)) USING BTREE,
  KEY `budget_id` (`budget_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_engineering
-- ----------------------------
INSERT INTO `sp_engineering` VALUES ('1', '18', '一期工程', '100.00', '2', '3.00', '11', '6', '2019-08-09', null, '2019-08-16', '6', '2019-08-16', '4', null, null, null, null, null, '0', '1', '0', null);
INSERT INTO `sp_engineering` VALUES ('2', '18', '二期工程', '300.00', '3', '2.50', '11', '6', '2019-08-05', null, null, '6', '2019-08-06', '1', null, null, null, null, null, '0', '1', '0', null);
INSERT INTO `sp_engineering` VALUES ('3', '18', '三期工程', '250.00', '5', '4.00', '11', '6', '2019-08-05', null, null, '6', '2019-08-22', '1', 'HT-2019874542-1542', '2019-08-21', '国际项目', '2', null, '0', '1', '0', null);
INSERT INTO `sp_engineering` VALUES ('4', '18', '四期工程', '900.00', '4', '3.30', '11', '6', '2019-08-05', '2019-09-03', null, '6', '2019-09-03', '2', null, null, null, null, null, '1', '1', '7', null);
INSERT INTO `sp_engineering` VALUES ('5', '19', '一期工程', '100.00', '2', '3.00', '11', '6', '2019-08-05', null, null, '6', '2019-08-06', '2', '1111111111', '2019-08-06', '22222222222222222', '100', null, '0', '0', '0', null);
INSERT INTO `sp_engineering` VALUES ('6', '19', '二期工程', '300.00', '3', '2.50', '11', '6', '2019-08-05', null, null, '6', '2019-08-05', '4', null, null, null, null, null, '0', '0', '0', null);
INSERT INTO `sp_engineering` VALUES ('7', '19', '三期工程', '250.00', '5', '4.00', '11', '6', '2019-08-05', null, null, '6', '2019-08-05', '4', null, null, null, null, null, '0', '0', '0', null);
INSERT INTO `sp_engineering` VALUES ('8', '19', '四期工程', '41.00', '4', '3.30', '11', '6', '2019-08-28', null, null, null, null, '0', null, null, null, null, null, '1', '1', '8', '0');
INSERT INTO `sp_engineering` VALUES ('9', '20', '一期工程', '500.00', '3', '10.00', '11', '6', '2019-08-16', null, '2019-08-28', '1', '2019-08-28', '4', null, null, null, null, null, '0', '0', '0', null);
INSERT INTO `sp_engineering` VALUES ('10', '20', '二期工程', '5.00', '2', '6.00', '11', '6', '2019-08-16', null, null, '1', '2019-08-28', '1', null, null, null, null, null, '1', '1', '9', '18');
INSERT INTO `sp_engineering` VALUES ('11', '20', '三期工程', '1000.00', '5', '5.00', '11', '6', '2019-08-16', null, null, '1', '2019-08-28', '1', null, null, null, null, null, '0', '0', '0', null);
INSERT INTO `sp_engineering` VALUES ('12', '20', '四期工程', '150.00', '2', '4.00', '11', '6', '2019-08-16', null, '2019-08-28', '1', '2019-08-28', '4', null, null, null, null, null, '0', '0', '0', null);
INSERT INTO `sp_engineering` VALUES ('13', '21', 'A-2', '150.00', '2', '4.20', '11', '6', '2019-09-02', null, null, null, null, '0', null, null, null, null, null, '0', '0', '0', null);
INSERT INTO `sp_engineering` VALUES ('14', '21', 'A-1', '200.00', '2', '4.20', '11', '6', '2019-08-28', null, null, null, null, '0', null, null, null, null, null, '0', '0', '0', null);
INSERT INTO `sp_engineering` VALUES ('15', '22', '工程一期', '100.00', '3', '10.00', '11', '6', '2019-09-03', null, null, null, null, '0', null, null, null, null, null, '0', '0', '0', null);
INSERT INTO `sp_engineering` VALUES ('16', '22', '工程2期', '200.00', '5', '15.00', '11', '6', '2019-09-03', null, null, null, null, '0', null, null, null, null, null, '0', '0', '0', null);
INSERT INTO `sp_engineering` VALUES ('17', '22', '工程三期', '300.00', '6', '20.00', '11', '6', '2019-09-03', null, null, null, null, '0', null, null, null, null, null, '1', '1', '0', null);
INSERT INTO `sp_engineering` VALUES ('18', '23', '工程一期', '100.00', '3', '10.00', '11', '6', '2019-09-03', null, null, null, null, '0', null, null, null, null, null, '0', '0', '0', null);
INSERT INTO `sp_engineering` VALUES ('19', '23', '工程2期', '500.00', '5', '20.00', '11', '6', '2019-09-03', null, null, null, null, '0', null, null, null, null, null, '0', '0', '0', null);
INSERT INTO `sp_engineering` VALUES ('20', '24', '工程一期', '100.00', '3', '10.00', '11', '6', '2019-09-03', null, null, null, null, '0', null, null, null, null, null, '0', '0', '0', null);
INSERT INTO `sp_engineering` VALUES ('21', '25', '工程一期111111', '100.00', '3', '10.00', '11', '6', '2019-09-04', null, null, '6', '2019-09-04', '1', null, null, null, null, null, '0', '0', '0', null);
INSERT INTO `sp_engineering` VALUES ('22', '25', '工程2期', '200.00', '5', '16.00', '11', '6', '2019-09-03', null, null, null, null, '0', null, null, null, null, null, '0', '0', '0', null);

-- ----------------------------
-- Table structure for sp_engineering_param
-- ----------------------------
DROP TABLE IF EXISTS `sp_engineering_param`;
CREATE TABLE `sp_engineering_param` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL COMMENT '项目id',
  `engin_id` int(11) DEFAULT NULL COMMENT '工程id',
  `use_time` varchar(255) DEFAULT NULL COMMENT '使用时长（年）',
  `seismic_grade` varchar(255) DEFAULT NULL COMMENT '抗震等级（级）',
  `waterproof_grade` varchar(255) DEFAULT NULL COMMENT '屋面防水等级',
  `refractory_grade` varchar(255) DEFAULT NULL COMMENT '建筑耐火等级',
  `insulation_sound_grade` varchar(255) DEFAULT NULL COMMENT '建筑隔声等级',
  `energy_grade` varchar(255) DEFAULT NULL COMMENT '建筑节能等级',
  `basic_wind_pressure` varchar(255) DEFAULT NULL COMMENT '设计基本风压(千牛/平方米)',
  `basic_snow_pressure` varchar(1000) DEFAULT NULL COMMENT '设计基本雪压(千牛/平方米)',
  `roof_load` varchar(1000) DEFAULT NULL COMMENT '屋面活载荷(千牛/平方米)',
  `floor_load` varbinary(1000) DEFAULT NULL COMMENT '楼面活载荷(千牛/平方米)',
  `floors` int(11) DEFAULT NULL COMMENT '建筑层数',
  `total_area` varchar(1000) DEFAULT NULL COMMENT '总建筑面积（平方米）',
  `floor_height` varchar(1000) DEFAULT NULL COMMENT '长（米）',
  `floor_width` varchar(1000) DEFAULT NULL COMMENT '宽（米）',
  `storey_height` varchar(1000) DEFAULT NULL COMMENT '建筑高度（米）',
  `house_height` varchar(1000) DEFAULT NULL COMMENT '室内净高（米）',
  `house_area` varchar(1000) DEFAULT NULL COMMENT '建筑面积（平方米）',
  `room_position` varchar(1000) DEFAULT NULL COMMENT '房间位置',
  `room_name` varchar(1000) DEFAULT NULL COMMENT '房间名称',
  `room_area` varchar(1000) DEFAULT NULL COMMENT '房间面积',
  `created_uid` int(11) DEFAULT NULL COMMENT '创建人',
  `created_at` date DEFAULT NULL COMMENT '创建时间',
  `edit_uid` int(11) DEFAULT NULL COMMENT '编辑人',
  `updated_at` date DEFAULT NULL COMMENT '编辑时间',
  PRIMARY KEY (`id`),
  KEY `enginid` (`engin_id`,`project_id`) USING BTREE,
  KEY `project_id` (`project_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='工程参数设计';

-- ----------------------------
-- Records of sp_engineering_param
-- ----------------------------
INSERT INTO `sp_engineering_param` VALUES ('1', '19', '8', '1', '2', '3', '3', '3', '3', '1', '2', '3', 0x33, '0', '41', '2', '\"11\"', '[\"4\",\"5\",\"4\",\"3\"]', '[\"3\",\"5\",\"6\",\"5\"]', '[\"2\",\"6\",\"6\",\"27\"]', '[\"1\",\"2\",\"3\"]', '[\"4\",\"5\",\"6\"]', '[\"7\",\"8\",\"9\"]', '6', '2019-09-03', '6', '2019-09-03');
INSERT INTO `sp_engineering_param` VALUES ('2', '18', '4', '70', '7.6', '5', '5', '5', '5', '70', '7.6', '5', 0x35, '0', '900', '50', '\"\\\"40\\\"\"', '[\"5\",\"6\",\"8\",\"7\"]', '[\"4\",\"5\",\"7\",\"6\"]', '[\"200\",\"100\",\"500\",\"100\"]', '[\"\\u4e00\\u5c42\",\"\\u4e00\\u5c42\"]', '[\"\\u4e3b\\u5367\",\"wer\"]', '[\"30\",\"25\"]', '6', '2019-09-03', '6', '2019-09-03');
INSERT INTO `sp_engineering_param` VALUES ('3', '22', '17', '3300', '4', '3', '6', '6', '5', '7', '6', '6', 0x35, '0', '300', '5', '\"6\"', '[\"5\",\"6\",\"6\",\"5\",\"601\",\"6\"]', '[\"6\",\"6\",\"6\",\"6\",\"6\",\"6\"]', '[\"50\",\"50\",\"50\",\"50\",\"50\",\"50\"]', '[\"\\u4e00\\u5c42\",\"\\u4e00\\u5c42\",\"\\u4e00\\u5c42\"]', '[\"\\u4e3b\\u5367\",\"\\u4e3b\\u5367\",\"wer\"]', '[\"59\",\"67\",\"66\"]', '6', '2019-09-03', null, null);
INSERT INTO `sp_engineering_param` VALUES ('4', '20', '10', '1221', '2', '3', '12', '23', '23', '123', '2', '123', 0x33, '0', '5', '123', '\"12\"', '[\"123\",\"213\"]', '[\"3\",\"2\"]', '[\"3\",\"2\"]', '[\"\\u4e00\\u5c42\"]', '[\"\\u4e3b\\u5367\"]', '[\" rewr\"]', '6', '2019-09-03', null, null);

-- ----------------------------
-- Table structure for sp_enginnering_architectural
-- ----------------------------
DROP TABLE IF EXISTS `sp_enginnering_architectural`;
CREATE TABLE `sp_enginnering_architectural` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL COMMENT '项目id',
  `engin_id` int(11) DEFAULT NULL COMMENT '工程id',
  `arch_id` int(11) DEFAULT NULL COMMENT '系统工程id',
  `system_name` varchar(255) DEFAULT NULL COMMENT '系统工程名称',
  `engin_name` varchar(255) DEFAULT NULL COMMENT '工程名称',
  `system_code` varchar(255) DEFAULT NULL COMMENT '系统编码',
  `sub_arch_id` int(11) DEFAULT NULL COMMENT '子系统工程id',
  `sub_system_name` varchar(255) DEFAULT NULL COMMENT '子系统工程名称',
  `sub_system_code` varchar(255) DEFAULT NULL COMMENT '子系统工程编码',
  `work_code` varchar(255) DEFAULT NULL COMMENT '工况代码',
  `uid` int(11) DEFAULT NULL COMMENT '创建者',
  `created_at` date DEFAULT NULL COMMENT '创建时间',
  `edit_uid` int(11) DEFAULT NULL COMMENT '编辑人id',
  `updated_at` date DEFAULT NULL COMMENT '编辑时间',
  PRIMARY KEY (`id`),
  KEY `engin_id` (`project_id`,`engin_id`) USING BTREE,
  KEY `engin` (`engin_id`,`system_code`(191),`sub_system_code`(191)) USING BTREE,
  KEY `engin_atch` (`engin_id`,`arch_id`,`sub_arch_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_enginnering_architectural
-- ----------------------------
INSERT INTO `sp_enginnering_architectural` VALUES ('31', '18', '2', '6', '基础系统', '基础工程', '1001', '2', '基础系统（混凝土条形基础）', '1001-1', 'rrrrrrrr', '6', '2019-08-09', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('32', '18', '2', '6', '基础系统', '基础工程', '1001', '3', '基础系统（混凝土构造柱圈梁）', '1001-2', 'yyyyyyyyy', '6', '2019-08-09', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('33', '18', '2', '6', '基础系统', '基础工程', '1001', '4', '基础系统（混凝土筏板基础）', '1001-03', 'tttttttttt', '6', '2019-08-09', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('34', '18', '2', '7', '系统工程', '工程', '1002', '5', '基础系统（混凝土构造柱圈梁）', '100201', '日日日日日日日日', '6', '2019-08-09', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('35', '18', '2', '8', '外墙系统', '墙体工程', '1003', '6', '外墙系统', '1003-1', '对对对', '6', '2019-08-09', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('36', '18', '2', '7', '系统工程', '工程', '1002', '9', '系统工程子系统', '100202', '啊时代发生的', '6', '2019-08-09', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('37', '18', '2', '8', '外墙系统', '墙体工程', '1003', '17', '外墙系统2', '1003-3', '333333', '6', '2019-08-09', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('38', '18', '4', '6', '基础系统', '基础工程', '1001', '3', '基础系统（混凝土构造柱圈梁）', '1001-2', '测试内容', '6', '2019-08-09', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('39', '18', '4', '6', '基础系统', '基础工程', '1001', '4', '基础系统（混凝土筏板基础）', '1001-03', '工地你的', '6', '2019-08-09', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('40', '18', '4', '9', '内墙系统', '墙体工程', '1004', '10', '墙体子系统', '1004-01', '大WWW', '6', '2019-08-09', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('41', '18', '4', '9', '内墙系统', '墙体工程', '1004', '11', '墙体子系统2', '1004-02', 'EQWER', '6', '2019-08-09', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('42', '18', '4', '11', '檐口系统', '檐口工程', '1006', '13', '檐口子系统', '1006-01', 'ADEEE', '6', '2019-08-09', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('43', '18', '4', '13', '吊顶系统', '吊顶工程', '1008', '15', '吊顶子系统', '1008-1', 'ASDFWEASD', '6', '2019-08-09', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('44', '18', '4', '9', '内墙系统', '墙体工程', '1004', '20', '外墙系统22', '1004=3', 'DAQERSADFAQ', '6', '2019-08-09', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('45', '19', '8', '6', '基础系统', '基础工程', '1001', '2', '基础系统（混凝土条形基础）', '1001-1', '334523452', '6', '2019-08-09', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('46', '19', '8', '6', '基础系统', '基础工程', '1001', '3', '基础系统（混凝土构造柱圈梁）', '1001-2', '===', '6', '2019-08-09', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('47', '19', '8', '6', '基础系统', '基础工程', '1001', '4', '基础系统（混凝土筏板基础）', '1001-03', '766', '6', '2019-08-09', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('48', '19', '8', '6', '基础系统', '基础工程', '1001', '8', '测试', '1100', '4444444444666', '6', '2019-08-09', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('49', '18', '1', '6', '基础系统', '基础工程', '1001', '4', '基础系统（混凝土筏板基础）', '1001-03', 'AAAAAAAA', '6', '2019-08-09', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('50', '18', '3', '6', '基础系统', '基础工程', '1001', '2', '基础系统（混凝土条形基础）', '1001-1', 'GK_JC_01', '6', '2019-08-13', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('51', '18', '3', '6', '基础系统', '基础工程', '1001', '3', '基础系统（混凝土构造柱圈梁）', '1001-2', 'GK_JC_02', '6', '2019-08-13', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('52', '18', '3', '6', '基础系统', '基础工程', '1001', '4', '基础系统（混凝土筏板基础）', '1001-03', 'GK_JC_03', '6', '2019-08-13', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('53', '18', '3', '8', '外墙系统', '墙体工程', '1003', '7', '外墙系统', '1003-2', 'WQ-XT-2', '6', '2019-08-13', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('54', '18', '3', '7', '系统工程', '工程', '1002', '9', '系统工程子系统', '100202', 'GK_JF-03', '6', '2019-08-13', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('55', '18', '3', '8', '外墙系统', '墙体工程', '1003', '16', '外墙系统2', '1003-3', 'WQ-XT_3', '6', '2019-08-13', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('62', '20', '10', '6', '基础系统', '基础工程', '1001', '2', '基础系统（混凝土条形基础）', '1001-1', 'GK_JC_01', '6', '2019-09-03', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('63', '20', '10', '6', '基础系统', '基础工程', '1001', '3', '基础系统（混凝土构造柱圈梁）', '1001-2', 'GK_JC_02	', '6', '2019-09-03', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('64', '20', '10', '6', '基础系统', '基础工程', '1001', '4', '基础系统（混凝土筏板基础）', '1001-03', 'GK_JC_03', '6', '2019-09-03', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('65', '20', '10', '7', '系统工程', '工程', '1002', '5', '基础系统（混凝土构造柱圈梁）', '100201', 'GK_JF_02', '6', '2019-09-03', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('66', '20', '10', '7', '系统工程', '工程', '1002', '9', '系统工程子系统', '100202', 'GK_JF_02', '6', '2019-09-03', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('67', '20', '10', '13', '吊顶系统', '吊顶工程', '1008', '15', '吊顶子系统', '1008-1', 'DD-XT-01	', '6', '2019-09-03', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('68', '22', '17', '6', '基础系统', '基础工程', '1001', '2', '基础系统（混凝土条形基础）', '1001-1', 'GK_JC_01', '6', '2019-09-04', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('69', '22', '17', '6', '基础系统', '基础工程', '1001', '3', '基础系统（混凝土构造柱圈梁）', '1001-2', 'GK_JC_02', '6', '2019-09-04', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('70', '22', '17', '6', '基础系统', '基础工程', '1001', '4', '基础系统（混凝土筏板基础）', '1001-03', 'GK_JC_03', '6', '2019-09-04', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('71', '22', '17', '7', '系统工程', '工程', '1002', '5', '基础系统（混凝土构造柱圈梁）', '100201', 'GK_JF_02', '6', '2019-09-04', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('72', '22', '17', '7', '系统工程', '工程', '1002', '9', '系统工程子系统', '100202', 'GK_JF-03	', '6', '2019-09-04', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('73', '22', '17', '13', '吊顶系统', '吊顶工程', '1008', '15', '吊顶子系统', '1008-1', 'DD-XT-01', '6', '2019-09-04', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('74', '22', '17', '19', '测试自己的系统', '工程', '1014', '18', '子系统名', '子系统编码', 'gg', '6', '2019-09-04', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('75', '22', '17', '19', '测试自己的系统', '工程', '1014', '19', '子系统2', '编码2', 'dd', '6', '2019-09-04', null, null);

-- ----------------------------
-- Table structure for sp_enginnering_dynamic
-- ----------------------------
DROP TABLE IF EXISTS `sp_enginnering_dynamic`;
CREATE TABLE `sp_enginnering_dynamic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL COMMENT '项目id',
  `enginnering_id` int(11) DEFAULT NULL COMMENT '工程id',
  `dynamic_date` date DEFAULT NULL COMMENT '动态时间',
  `dynamic_content` varchar(1000) DEFAULT NULL COMMENT '动态内容',
  `created_uid` int(11) DEFAULT NULL COMMENT '创建人id',
  `created_at` date DEFAULT NULL COMMENT '创建时间',
  `edit_uid` int(11) DEFAULT NULL COMMENT '编辑人id',
  `updated_at` date DEFAULT NULL COMMENT '编辑时间',
  PRIMARY KEY (`id`),
  KEY `enginnering_id` (`enginnering_id`,`created_at`) USING BTREE,
  KEY `project_id` (`project_id`) USING BTREE,
  KEY `enginnering` (`enginnering_id`,`dynamic_date`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_enginnering_dynamic
-- ----------------------------
INSERT INTO `sp_enginnering_dynamic` VALUES ('1', '19', '5', '2019-08-30', '444444444444444444', '6', '2019-08-06', '6', '2019-08-06');
INSERT INTO `sp_enginnering_dynamic` VALUES ('2', '19', '5', '2019-08-14', '555555555555555555', '6', '2019-08-06', '6', '2019-08-06');
INSERT INTO `sp_enginnering_dynamic` VALUES ('3', '19', '5', '2019-08-30', '444444444444444444', null, null, '6', '2019-08-06');
INSERT INTO `sp_enginnering_dynamic` VALUES ('4', '19', '5', '2019-08-14', '555555555555555555', null, null, '6', '2019-08-06');
INSERT INTO `sp_enginnering_dynamic` VALUES ('5', '19', '5', '2019-08-06', '111111111112222222222', '6', '2019-08-06', '6', '2019-08-06');
INSERT INTO `sp_enginnering_dynamic` VALUES ('6', '19', '5', '2019-08-06', '333333', '6', '2019-08-06', '6', '2019-08-06');
INSERT INTO `sp_enginnering_dynamic` VALUES ('7', '19', '5', '2019-08-15', 'asddddddddddddddddddddddd', '6', '2019-08-06', '6', '2019-08-06');
INSERT INTO `sp_enginnering_dynamic` VALUES ('8', '19', '5', '2019-08-30', '444444444444444444', null, null, '6', '2019-08-06');
INSERT INTO `sp_enginnering_dynamic` VALUES ('9', '19', '5', '2019-08-14', '555555555555555555', null, null, '6', '2019-08-06');
INSERT INTO `sp_enginnering_dynamic` VALUES ('10', '19', '5', '2019-08-30', '444444444444444444', null, null, '6', '2019-08-06');
INSERT INTO `sp_enginnering_dynamic` VALUES ('11', '19', '5', '2019-08-14', '555555555555555555', null, null, '6', '2019-08-06');
INSERT INTO `sp_enginnering_dynamic` VALUES ('12', '19', '5', '2019-08-06', '111111111112222222222', null, null, '6', '2019-08-06');
INSERT INTO `sp_enginnering_dynamic` VALUES ('13', '19', '5', '2019-08-06', '333333', null, null, '6', '2019-08-06');
INSERT INTO `sp_enginnering_dynamic` VALUES ('14', '19', '5', '2019-08-15', 'asddddddddddddddddddddddd', null, null, '6', '2019-08-06');
INSERT INTO `sp_enginnering_dynamic` VALUES ('15', '19', '5', '2019-08-21', '111111111111111111111111111111', '6', '2019-08-06', '6', '2019-08-06');
INSERT INTO `sp_enginnering_dynamic` VALUES ('16', '18', '3', '2019-08-21', '创建合同提高', '6', '2019-08-21', null, null);

-- ----------------------------
-- Table structure for sp_examine_user
-- ----------------------------
DROP TABLE IF EXISTS `sp_examine_user`;
CREATE TABLE `sp_examine_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '待审核人',
  `creator` varchar(255) DEFAULT NULL COMMENT '提交审核人',
  `createid` int(11) DEFAULT NULL COMMENT '提交审核人ID',
  `created_at` datetime DEFAULT NULL COMMENT '提交审核时间',
  `examine_name` varchar(255) DEFAULT NULL COMMENT '审核人姓名',
  `examine_uid` int(11) DEFAULT NULL COMMENT '审核人ID',
  `updated_at` datetime DEFAULT NULL COMMENT '审核时间',
  `status` varchar(255) DEFAULT NULL COMMENT '审核状态 1审核通过 0待审核 -1审核不通过',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`) USING BTREE,
  KEY `status` (`status`,`updated_at`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sp_examine_user
-- ----------------------------
INSERT INTO `sp_examine_user` VALUES ('1', '3', '王海舟', '2', '2019-07-20 11:24:29', '王海舟', '2', '2019-07-20 16:33:30', '-1');
INSERT INTO `sp_examine_user` VALUES ('2', '4', '王海舟', '2', '2019-07-20 11:32:29', '王海舟', '2', '2019-07-20 16:27:43', '1');
INSERT INTO `sp_examine_user` VALUES ('3', '4', '王海舟', '2', '2019-07-20 16:28:52', '王海舟', '2', '2019-07-20 16:28:59', '1');
INSERT INTO `sp_examine_user` VALUES ('4', '3', '王海舟', '2', '2019-07-20 16:37:13', '王海舟', '2', '2019-07-20 16:37:20', '1');
INSERT INTO `sp_examine_user` VALUES ('5', '1', '王海舟', '2', '2019-07-20 16:40:02', '王海舟', '2', '2019-07-20 16:40:52', '1');
INSERT INTO `sp_examine_user` VALUES ('7', '4', '王海舟', '2', '2019-07-20 21:33:27', '瑶(总经理)', '1', '2019-07-20 21:34:06', '1');
INSERT INTO `sp_examine_user` VALUES ('8', '6', '瑶(总经理)', '1', '2019-07-22 10:21:48', '瑶(总经理)', '1', '2019-07-22 10:22:12', '-1');
INSERT INTO `sp_examine_user` VALUES ('9', '6', '瑶(总经理)', '1', '2019-07-22 10:22:28', '瑶(总经理)', '1', '2019-07-22 10:28:10', '1');
INSERT INTO `sp_examine_user` VALUES ('11', '3', '瑶(总经理)', '1', '2019-07-22 10:59:51', '瑶(总经理)', '1', '2019-07-22 11:17:51', '1');
INSERT INTO `sp_examine_user` VALUES ('12', '5', '瑶(总经理)', '1', '2019-07-22 11:05:03', '瑶(总经理)', '1', '2019-07-22 11:17:50', '1');
INSERT INTO `sp_examine_user` VALUES ('13', '2', '瑶(总经理)', '1', '2019-07-22 11:05:53', '瑶(总经理)', '1', '2019-07-22 11:17:50', '1');
INSERT INTO `sp_examine_user` VALUES ('15', '7', '瑶(总经理)', '1', '2019-07-22 11:06:58', '瑶(总经理)', '1', '2019-07-22 11:17:47', '1');
INSERT INTO `sp_examine_user` VALUES ('16', '4', '瑶(总经理)', '1', '2019-07-22 11:07:09', '瑶(总经理)', '1', '2019-07-22 11:17:49', '1');
INSERT INTO `sp_examine_user` VALUES ('17', '8', '瑶(总经理)', '1', '2019-07-22 11:08:21', '瑶(总经理)', '1', '2019-07-22 11:17:46', '1');
INSERT INTO `sp_examine_user` VALUES ('18', '9', '瑶(总经理)', '1', '2019-07-22 11:08:56', '瑶(总经理)', '1', '2019-07-22 11:17:45', '1');
INSERT INTO `sp_examine_user` VALUES ('19', '10', '瑶(总经理)', '1', '2019-07-22 11:09:22', '瑶(总经理)', '1', '2019-07-22 11:17:44', '1');
INSERT INTO `sp_examine_user` VALUES ('20', '11', '瑶(总经理)', '1', '2019-07-22 11:09:54', '瑶(总经理)', '1', '2019-07-22 11:17:43', '1');
INSERT INTO `sp_examine_user` VALUES ('21', '12', '瑶(总经理)', '1', '2019-07-22 11:10:42', '瑶(总经理)', '1', '2019-07-22 11:17:43', '1');
INSERT INTO `sp_examine_user` VALUES ('24', '13', '瑶(总经理)', '1', '2019-07-22 11:11:42', '瑶(总经理)', '1', '2019-07-22 11:17:40', '1');
INSERT INTO `sp_examine_user` VALUES ('25', '13', '瑶(总经理)', '1', '2019-07-22 11:18:06', '瑶(总经理)', '1', '2019-07-22 11:18:14', '1');
INSERT INTO `sp_examine_user` VALUES ('26', '8', '瑶(总经理)', '1', '2019-07-22 11:28:46', '瑶(总经理)', '1', '2019-07-22 11:28:50', '1');
INSERT INTO `sp_examine_user` VALUES ('27', '14', '王括', '6', '2019-08-02 16:37:05', '王括', '6', '2019-09-02 11:00:12', '1');
INSERT INTO `sp_examine_user` VALUES ('29', '6', '王括', '6', '2019-09-02 10:56:46', '王括', '6', '2019-09-02 11:00:11', '1');
INSERT INTO `sp_examine_user` VALUES ('30', '7', '王括', '6', '2019-09-02 10:57:46', '王括', '6', '2019-09-02 11:00:14', '1');
INSERT INTO `sp_examine_user` VALUES ('31', '8', '王括', '6', '2019-09-02 10:59:40', '王括', '6', '2019-09-02 11:00:05', '1');
INSERT INTO `sp_examine_user` VALUES ('32', '13', '王括', '6', '2019-09-02 11:46:06', '王括', '6', '2019-09-02 11:48:30', '1');
INSERT INTO `sp_examine_user` VALUES ('33', '12', '王括', '6', '2019-09-02 11:46:23', '王括', '6', '2019-09-02 11:48:28', '1');
INSERT INTO `sp_examine_user` VALUES ('34', '11', '王括', '6', '2019-09-02 11:46:32', '王括', '6', '2019-09-02 11:48:26', '1');
INSERT INTO `sp_examine_user` VALUES ('35', '10', '王括', '6', '2019-09-02 11:46:41', '王括', '6', '2019-09-02 11:48:24', '1');
INSERT INTO `sp_examine_user` VALUES ('36', '9', '王括', '6', '2019-09-02 11:46:50', '王括', '6', '2019-09-02 11:48:22', '1');
INSERT INTO `sp_examine_user` VALUES ('37', '8', '王括', '6', '2019-09-02 11:46:57', '王括', '6', '2019-09-02 11:48:20', '1');
INSERT INTO `sp_examine_user` VALUES ('38', '7', '王括', '6', '2019-09-02 11:47:03', '王括', '6', '2019-09-02 11:48:18', '1');
INSERT INTO `sp_examine_user` VALUES ('39', '5', '王括', '6', '2019-09-02 11:47:12', '王括', '6', '2019-09-02 11:48:15', '1');
INSERT INTO `sp_examine_user` VALUES ('40', '4', '王括', '6', '2019-09-02 11:47:20', '王括', '6', '2019-09-02 11:48:13', '1');
INSERT INTO `sp_examine_user` VALUES ('41', '3', '王括', '6', '2019-09-02 11:47:30', '王括', '6', '2019-09-02 11:48:08', '1');
INSERT INTO `sp_examine_user` VALUES ('42', '2', '王括', '6', '2019-09-02 11:47:40', '王括', '6', '2019-09-02 11:48:08', '1');
INSERT INTO `sp_examine_user` VALUES ('43', '14', '王括', '6', '2019-09-02 11:47:57', '王括', '6', '2019-09-02 11:48:06', '1');
INSERT INTO `sp_examine_user` VALUES ('45', '15', '王括', '6', '2019-09-02 11:54:05', '王括', '6', '2019-09-02 11:54:36', '1');

-- ----------------------------
-- Table structure for sp_manage_authority
-- ----------------------------
DROP TABLE IF EXISTS `sp_manage_authority`;
CREATE TABLE `sp_manage_authority` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manage_id` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` varchar(100) DEFAULT '0' COMMENT '父节点',
  `level` int(4) DEFAULT '1' COMMENT '级别',
  `is_leaf` tinyint(2) DEFAULT '0' COMMENT '是否为叶子节点 1是 0否',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_manage_authority
-- ----------------------------
INSERT INTO `sp_manage_authority` VALUES ('2', '15', '项目信息管理', '0', '1', '0', '2019-07-05 10:18:18', '2019-07-05 10:18:18');
INSERT INTO `sp_manage_authority` VALUES ('3', '20', '预算报价管理', '0', '1', '0', '2019-07-05 10:18:18', '2019-07-05 10:18:18');
INSERT INTO `sp_manage_authority` VALUES ('4', '25', '采购集成管理', '0', '1', '0', '2019-07-05 10:18:18', '2019-07-05 10:18:18');
INSERT INTO `sp_manage_authority` VALUES ('5', '30', '施工安装管理', '0', '1', '0', '2019-07-05 10:18:18', '2019-07-05 10:18:18');
INSERT INTO `sp_manage_authority` VALUES ('6', '35', '建筑设计管理', '0', '1', '0', '2019-07-05 10:18:18', '2019-07-05 10:18:18');
INSERT INTO `sp_manage_authority` VALUES ('7', '40', '部件集成管理', '0', '1', '0', '2019-07-05 10:18:18', '2019-07-05 10:18:18');
INSERT INTO `sp_manage_authority` VALUES ('8', '45', '供应商管理', '0', '1', '0', '2019-07-05 10:18:18', '2019-07-05 10:18:18');
INSERT INTO `sp_manage_authority` VALUES ('9', '50', '财务信息管理', '0', '1', '0', '2019-07-05 10:18:18', '2019-07-05 10:18:18');
INSERT INTO `sp_manage_authority` VALUES ('10', '55', '客户信息管理', '0', '1', '0', '2019-07-05 10:18:18', '2019-07-05 10:18:18');
INSERT INTO `sp_manage_authority` VALUES ('11', '60', '系统公告管理', '0', '1', '0', '2019-07-05 10:18:18', '2019-07-05 10:18:18');
INSERT INTO `sp_manage_authority` VALUES ('12', '3501', '查询建筑系统详情', '35', '2', '1', '2019-07-16 10:31:09', '2019-07-16 10:31:09');
INSERT INTO `sp_manage_authority` VALUES ('13', '3502', '新增建筑系统', '35', '2', '1', '2019-07-16 10:31:09', '2019-07-16 10:31:09');
INSERT INTO `sp_manage_authority` VALUES ('14', '3503', '编辑建筑系统', '35', '2', '1', '2019-07-16 10:31:09', '2019-07-16 10:31:09');
INSERT INTO `sp_manage_authority` VALUES ('15', '3504', '更改建筑系统状态', '35', '2', '1', '2019-07-16 10:31:09', '2019-07-16 10:31:09');
INSERT INTO `sp_manage_authority` VALUES ('16', '3505', '查询建筑系统子系统', '35', '2', '1', '2019-07-16 10:31:09', '2019-07-16 10:31:09');
INSERT INTO `sp_manage_authority` VALUES ('17', '3506', '编辑建筑子系统', '35', '2', '1', '2019-07-16 10:31:09', '2019-07-16 10:31:09');
INSERT INTO `sp_manage_authority` VALUES ('19', '4501', '查询品牌信息', '45', '2', '1', '2019-07-24 15:42:14', '2019-07-24 15:42:14');
INSERT INTO `sp_manage_authority` VALUES ('20', '4502', '新增品牌信息', '45', '2', '1', '2019-07-24 15:42:14', '2019-07-24 15:42:14');
INSERT INTO `sp_manage_authority` VALUES ('21', '4503', '编辑品牌信息', '45', '2', '1', '2019-07-24 15:42:14', '2019-07-24 15:42:14');
INSERT INTO `sp_manage_authority` VALUES ('22', '4510', '查询供应商信息', '45', '2', '1', '2019-07-24 15:42:14', '2019-07-24 15:42:14');
INSERT INTO `sp_manage_authority` VALUES ('23', '4511', '新增供应商', '45', '2', '1', '2019-07-24 15:42:14', '2019-07-24 15:42:14');
INSERT INTO `sp_manage_authority` VALUES ('24', '4512', '编辑供应商', '45', '2', '1', '2019-07-24 15:42:14', '2019-07-24 15:42:14');
INSERT INTO `sp_manage_authority` VALUES ('25', '4513', '删除供应商', '45', '2', '1', '2019-07-24 15:42:14', '2019-07-24 15:42:14');
INSERT INTO `sp_manage_authority` VALUES ('26', '4001', '搜索部件信息', '40', '2', '0', '2019-07-28 18:50:51', '2019-07-28 18:50:51');
INSERT INTO `sp_manage_authority` VALUES ('27', '4002', '查询部件详情', '40', '2', '0', '2019-07-28 18:50:51', '2019-07-28 18:50:51');
INSERT INTO `sp_manage_authority` VALUES ('28', '4003', '编辑部件', '40', '2', '0', '2019-07-28 18:50:51', '2019-07-28 18:50:51');
INSERT INTO `sp_manage_authority` VALUES ('29', '5501', '客户信息列表', '55', '2', '1', '2019-07-30 18:03:23', '2019-07-30 18:03:30');
INSERT INTO `sp_manage_authority` VALUES ('30', '5502', '添加客户', '55', '2', '1', '2019-07-30 18:03:23', '2019-07-30 18:03:23');
INSERT INTO `sp_manage_authority` VALUES ('31', '5503', '编辑客户', '55', '2', '1', '2019-07-30 18:03:40', '2019-07-30 18:03:37');
INSERT INTO `sp_manage_authority` VALUES ('32', '5504', '删除客户', '55', '2', '1', '2019-07-30 18:03:42', '2019-07-30 18:03:44');
INSERT INTO `sp_manage_authority` VALUES ('33', '1501', '创建项目', '15', '2', '1', '2019-08-04 14:36:03', '2019-08-04 14:36:03');
INSERT INTO `sp_manage_authority` VALUES ('34', '1502', '洽谈项目', '15', '2', '1', '2019-08-04 14:36:03', '2019-08-04 14:36:03');
INSERT INTO `sp_manage_authority` VALUES ('35', '150201', '查询项目详情', '1502', '3', '1', '2019-08-04 14:36:03', '2019-08-04 14:36:03');
INSERT INTO `sp_manage_authority` VALUES ('37', '150202', '编辑项目', '1502', '3', '1', '2019-08-04 14:36:32', '2019-08-04 14:36:03');
INSERT INTO `sp_manage_authority` VALUES ('38', '1503', '实施项目', '15', '2', '1', '2019-08-04 14:36:03', '2019-08-04 14:36:03');
INSERT INTO `sp_manage_authority` VALUES ('39', '150301', '查询项目详情', '1503', '3', '1', '2019-08-04 14:36:03', '2019-08-04 14:36:03');
INSERT INTO `sp_manage_authority` VALUES ('40', '150302', '编辑项目', '1503', '3', '1', '2019-08-04 14:36:37', '2019-08-04 14:36:58');
INSERT INTO `sp_manage_authority` VALUES ('43', '1504', '竣工项目', '15', '2', '1', '2019-08-04 14:36:03', '2019-08-04 14:36:20');
INSERT INTO `sp_manage_authority` VALUES ('44', '150401', '查询项目详情', '1504', '3', '1', '2019-08-04 14:36:03', '2019-08-04 14:36:03');
INSERT INTO `sp_manage_authority` VALUES ('45', '150402', '编辑项目', '1504', '3', '1', '2019-08-04 14:36:44', '2019-08-04 14:36:03');
INSERT INTO `sp_manage_authority` VALUES ('47', '1505', '终止项目', '15', '2', '1', '2019-08-04 14:36:03', '2019-08-04 14:36:03');
INSERT INTO `sp_manage_authority` VALUES ('48', '150501', '查询项目详情', '1505', '3', '1', '2019-08-04 14:36:03', '2019-08-04 14:36:03');
INSERT INTO `sp_manage_authority` VALUES ('50', '3507', '项目设计', '35', '2', '0', '2019-08-07 11:57:32', '2019-08-07 11:57:32');
INSERT INTO `sp_manage_authority` VALUES ('51', '350701', '查询洽谈项目详情', '3507', '3', '1', '2019-08-07 11:57:32', '2019-08-07 11:57:32');
INSERT INTO `sp_manage_authority` VALUES ('52', '350702', '编辑洽谈项目', '3507', '3', '1', '2019-08-07 11:57:32', '2019-08-07 11:57:32');
INSERT INTO `sp_manage_authority` VALUES ('55', '350703', '查询实施项目详情', '3507', '3', '1', '2019-08-07 11:57:32', '2019-08-07 11:57:32');
INSERT INTO `sp_manage_authority` VALUES ('56', '350704', '编辑实施项目', '3507', '3', '1', '2019-08-07 11:57:32', '2019-08-07 11:57:32');
INSERT INTO `sp_manage_authority` VALUES ('57', '350705', '查询竣工项目详情', '3507', '3', '1', '2019-08-07 11:57:32', '2019-08-07 11:57:32');
INSERT INTO `sp_manage_authority` VALUES ('58', '350706', '查询终止项目详情', '3507', '3', '1', '2019-08-07 11:57:32', '2019-08-07 11:57:32');
INSERT INTO `sp_manage_authority` VALUES ('60', '200101', '查询洽谈预算详情', '2001', '3', '1', '2019-08-07 11:57:32', '2019-08-07 11:57:32');
INSERT INTO `sp_manage_authority` VALUES ('61', '200102', '编辑洽谈预算', '2001', '3', '1', '2019-08-07 11:57:32', '2019-08-07 11:57:32');
INSERT INTO `sp_manage_authority` VALUES ('62', '200104', '查询实施预算详情', '2001', '3', '1', '2019-08-07 11:57:32', '2019-08-07 11:57:32');
INSERT INTO `sp_manage_authority` VALUES ('63', '200105', '编辑实施预算', '2001', '3', '1', '2019-08-07 11:57:32', '2019-08-07 11:57:32');
INSERT INTO `sp_manage_authority` VALUES ('64', '200107', '查询竣工预算详情', '2001', '3', '1', '2019-08-07 11:57:32', '2019-08-07 11:57:32');
INSERT INTO `sp_manage_authority` VALUES ('65', '200108', '查询终止预算详情', '2001', '3', '1', '2019-08-07 11:57:32', '2019-08-07 11:57:32');
INSERT INTO `sp_manage_authority` VALUES ('66', '200103', '审核洽谈预算', '2001', '3', '1', '2019-08-07 11:57:32', '2019-08-07 11:57:32');
INSERT INTO `sp_manage_authority` VALUES ('67', '200106', '审核实施预算', '2001', '3', '1', '2019-08-07 11:57:32', '2019-08-07 11:57:32');
INSERT INTO `sp_manage_authority` VALUES ('68', '2001', '预算管理', '20', '2', '0', '2019-08-12 17:11:39', '2019-08-12 17:11:42');
INSERT INTO `sp_manage_authority` VALUES ('69', '2002', '报价管理', '20', '2', '0', '2019-08-12 17:11:44', '2019-08-12 17:11:46');
INSERT INTO `sp_manage_authority` VALUES ('70', '200201', '查询洽谈预算详情', '2002', '3', '1', '2019-08-19 15:18:29', '2019-08-19 15:18:29');
INSERT INTO `sp_manage_authority` VALUES ('71', '200202', '编辑洽谈预算', '2002', '3', '1', '2019-08-19 15:18:29', '2019-08-19 15:18:29');
INSERT INTO `sp_manage_authority` VALUES ('72', '200204', '查询实施预算详情', '2002', '3', '1', '2019-08-19 15:18:29', '2019-08-19 15:18:29');
INSERT INTO `sp_manage_authority` VALUES ('73', '200205', '编辑实施预算', '2002', '3', '1', '2019-08-19 15:18:29', '2019-08-19 15:18:29');
INSERT INTO `sp_manage_authority` VALUES ('74', '200207', '查询竣工预算详情', '2002', '3', '1', '2019-08-19 15:18:29', '2019-08-19 15:18:29');
INSERT INTO `sp_manage_authority` VALUES ('75', '200208', '查询终止预算详情', '2002', '3', '1', '2019-08-19 15:18:29', '2019-08-19 15:18:29');
INSERT INTO `sp_manage_authority` VALUES ('76', '200203', '审核洽谈预算', '2002', '3', '1', '2019-08-19 15:18:29', '2019-08-19 15:18:29');
INSERT INTO `sp_manage_authority` VALUES ('77', '200206', '审核实施预算', '2002', '3', '1', '2019-08-19 15:18:29', '2019-08-19 15:18:29');
INSERT INTO `sp_manage_authority` VALUES ('78', '2501', '实施项目', '25', '2', '1', '2019-08-21 17:58:44', '2019-08-21 17:58:49');
INSERT INTO `sp_manage_authority` VALUES ('79', '2502', '竣工项目', '25', '2', '1', '2019-08-21 17:58:47', '2019-08-21 17:58:52');
INSERT INTO `sp_manage_authority` VALUES ('80', '250101', '编辑采购单', '2501', '3', '1', '2019-08-21 18:00:30', '2019-08-21 18:00:33');
INSERT INTO `sp_manage_authority` VALUES ('81', '250102', '采购批次管理', '2501', '3', '1', '2019-08-21 18:00:37', '2019-08-21 18:00:35');
INSERT INTO `sp_manage_authority` VALUES ('82', '250103', '采购订单管理', '2501', '3', '1', '2019-08-22 16:26:32', '2019-08-22 16:26:32');
INSERT INTO `sp_manage_authority` VALUES ('83', '250104', '物流进度管理', '2501', '3', '1', '2019-08-22 16:26:32', '2019-08-22 16:26:32');
INSERT INTO `sp_manage_authority` VALUES ('84', '250105', '指定采购负责人', '2501', '3', '1', '2019-08-22 16:26:32', '2019-08-22 16:26:32');

-- ----------------------------
-- Table structure for sp_material
-- ----------------------------
DROP TABLE IF EXISTS `sp_material`;
CREATE TABLE `sp_material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `architectural_id` int(11) DEFAULT NULL COMMENT '建筑系统id',
  `architectural_sub_id` int(11) DEFAULT NULL COMMENT '建筑子系统id',
  `material_name` varchar(255) DEFAULT NULL COMMENT '材料名称',
  `material_code` varchar(255) DEFAULT NULL COMMENT '关联材料编码',
  `material_type` varchar(255) DEFAULT NULL COMMENT '材料种类',
  `position` varchar(255) DEFAULT NULL COMMENT '位置',
  `purpose` varchar(255) DEFAULT NULL COMMENT '用途',
  `material_number` varchar(255) DEFAULT NULL COMMENT '代码',
  `characteristic` varchar(255) DEFAULT NULL COMMENT '规格要求',
  `waste_rate` varchar(255) DEFAULT NULL COMMENT '损耗（%）',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态 1有效 0无效',
  `uid` int(11) DEFAULT NULL COMMENT '最后一次编辑用户id',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `created_at` date DEFAULT NULL COMMENT '创建时间',
  `updated_at` date DEFAULT NULL COMMENT '修改时间',
  `edit_uid` int(11) DEFAULT NULL COMMENT '编辑人员ID',
  `edit_username` varchar(255) DEFAULT NULL COMMENT '编辑人员名称',
  `material_budget_unit` varchar(255) DEFAULT NULL COMMENT '预算单位',
  `material_purchase_unit` varchar(255) DEFAULT NULL COMMENT '采购单位',
  `pack_specification` varchar(255) DEFAULT NULL COMMENT '包装规格',
  `pack_claim` varchar(1000) DEFAULT NULL COMMENT '包装要求',
  `conversion` float(10,5) DEFAULT NULL COMMENT '单位换算关系',
  `material_length` int(11) DEFAULT NULL COMMENT '长',
  `material_width` int(11) DEFAULT NULL COMMENT '宽',
  `material_height` int(11) DEFAULT NULL COMMENT '高',
  `material_thickness` int(11) DEFAULT NULL COMMENT '厚度',
  `material_diameter` int(11) DEFAULT NULL COMMENT '直径',
  `material_created_uid` int(11) DEFAULT NULL COMMENT '部件创建人id',
  `material_created_at` date DEFAULT NULL COMMENT '部件创建时间',
  `material_edit_uid` int(11) DEFAULT NULL COMMENT '部件编辑人id',
  `material_updated_at` date DEFAULT NULL COMMENT '部件编辑时间',
  PRIMARY KEY (`id`),
  KEY `architectural_sub_id` (`architectural_sub_id`,`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_material
-- ----------------------------
INSERT INTO `sp_material` VALUES ('16', '6', '2', '条形4', '1001-1-4', '条形', '墙壁', '护墙3', 'TX-4', '要求4', '8', '1', '6', '王括', '2019-07-26', '2019-08-12', '6', '王括', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('17', '6', '2', '条形2', '1001-1-2', '条形', '墙壁', '护墙1', 'TX-2', '要求2', '6', '1', '6', '王括', '2019-07-26', '2019-08-12', '6', '王括', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('18', '6', '2', '条形3', '1001-1-3', '条形', '墙壁', '护墙2', 'TX-3', '要求3', '7', '1', '6', '王括', '2019-07-26', '2019-08-12', '6', '王括', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('19', '6', '2', '条形1', '1001-1-1', '条形', '墙壁', '护墙', 'TX -1', '要求1', '5', '1', '6', '王括', '2019-07-26', '2019-08-12', '6', '王括', '阿萨德', '搜索', '12', '31', '11.00000', '1', '23', '12', '321', '332', '6', '2019-07-29', '6', '2019-07-29');
INSERT INTO `sp_material` VALUES ('20', '6', '3', '圈梁', '2', '3', '4', '5', '6', '7', '8', '1', '6', '王括', '2019-07-26', '2019-08-12', '6', '王括', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('21', '6', '4', '混凝土1', '1001-03-01', '种类1', '位置1', '用途1', 'HNT-1', '特性1', '5', '1', '6', '王括', '2019-07-26', '2019-08-12', '6', '王括', '维尔切', '沙发斯蒂芬', '4', '5', '3.00000', '6', '7', '8', '9', '0', '6', '2019-07-29', '6', '2019-08-30');
INSERT INTO `sp_material` VALUES ('22', '6', '4', '混凝土2', '1001-03-02', '种类2', '位置2', '用途2', 'HNT-2', '特性2', '6', '1', '6', '王括', '2019-07-26', '2019-08-12', '6', '王括', '阿萨德', '是是是', '4', '4', '3.00000', '5', '6', '7', '8', '9', '6', '2019-07-29', '6', '2019-08-02');
INSERT INTO `sp_material` VALUES ('23', '7', '5', '1', '2', '3', '4', '5', '6', '345234112341234123412341234', '11', '1', '6', '王括', '2019-07-26', '2019-07-26', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('24', '7', '5', '2', '2', '3', '4', '5', '6', '撒打发士大夫', '2', '1', '6', '王括', '2019-07-26', '2019-07-26', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('25', '7', '5', '3', '2', '3', '5', '5', '6', '啊啊啊啊啊啊啊啊啊啊啊', '3', '1', '6', '王括', '2019-07-26', '2019-07-26', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('26', '7', '5', '4', '2', '3', '4', '5', '6', '的点点滴滴多多多多多多多多多多多多多多多多多', '4', '1', '6', '王括', '2019-07-26', '2019-07-26', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('27', '7', '5', '5', '2', '33', '4', '5', '6', '啊 ', '5', '1', '6', '王括', '2019-07-26', '2019-07-26', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('28', '7', '5', '6', '2', '3', '4', '5', '6', '啊', '5', '0', '6', '王括', '2019-07-26', '2019-07-26', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('29', '7', '9', '系统材料1', '10020201', '种类1', '1231 ', '阿士大夫', '撒啊所发生的', '撒地方', '1', '1', '6', '王括', '2019-07-26', '2019-08-12', '6', '王括', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('30', '7', '9', '系统材料2', '10020202', '种类2', '1231', '阿士大夫三', '阿发', '是是是', '3', '1', '6', '王括', '2019-07-26', '2019-08-12', '6', '王括', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('31', '7', '9', '系统材料3', '10020203', '种类3', '1231', '萨芬的', '阿斯顿发生', '特性', '23', '1', '6', '王括', '2019-07-26', '2019-08-12', '6', '王括', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('32', '7', '9', '系统材料4', '10020204', '种类2', '额阿萨德飞', '打发士大夫', ' 阿萨德阿士大夫', '阿斯顿发送到 ', '2', '1', '6', '王括', '2019-07-26', '2019-08-12', '6', '王括', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('33', '8', '6', '外墙瓦', '1003-1-1', '瓦', '屋顶', '遮阳', '代码', '特性要求', '34', '1', '6', '王括', '2019-07-26', '2019-08-12', '6', '王括', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('34', '8', '16', '222', '1223-2-2', '1231', '123', '1231', '111', '123123123', '131', '1', '6', '王括', '2019-07-26', '2019-07-26', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('35', '8', '16', '222', '12 ', '1231', '123', '1231', '22', '111', '1231', '1', '6', '王括', '2019-07-26', '2019-07-26', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('36', '8', '16', '3333', '1212 ', '1231', '1231 ', '123', '33', '12312', '1231', '1', '6', '王括', '2019-07-26', '2019-07-26', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('37', '13', '15', '去', '去', '认为', '请求王企鹅 ', 'QQWeb', '全文撒旦', '阿达', '0', '1', '6', '王括', '2019-07-26', '2019-07-26', null, null, '预算单位', '采购单位', '规格', '要不', '0.80000', '5', '6', '7', '8', '9', '6', '2019-08-16', null, null);
INSERT INTO `sp_material` VALUES ('38', '13', '15', '我', '额', '去玩儿 ', 'QQWeb ', '请问请问', '阿萨德 ', '阿萨德', '22', '1', '6', '王括', '2019-07-26', '2019-07-26', null, null, '元', '元', '测试规格', '要求不同', '0.99000', '1', '2', '3', '4', '5', '6', '2019-08-16', null, null);

-- ----------------------------
-- Table structure for sp_material_brand_supplier
-- ----------------------------
DROP TABLE IF EXISTS `sp_material_brand_supplier`;
CREATE TABLE `sp_material_brand_supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `material_id` int(11) DEFAULT NULL COMMENT '材料ID',
  `brand_id` int(11) DEFAULT NULL COMMENT '品牌ID',
  `brand_name` varchar(255) DEFAULT NULL COMMENT '品牌名称',
  `supplier_id` int(11) DEFAULT NULL COMMENT '供应商ID',
  `manufactor` varchar(255) DEFAULT NULL COMMENT '厂家名称',
  `supplier` varchar(255) DEFAULT NULL COMMENT '供应商ID',
  `budget_unit_price` float(12,4) DEFAULT NULL COMMENT '预算价格',
  `budget_unit` varchar(255) DEFAULT NULL COMMENT '预算单位',
  `purchase_unit_price` float(12,4) DEFAULT NULL COMMENT '采购价格',
  `purchase_unit` varchar(255) DEFAULT NULL COMMENT '采购单位',
  `offer_unit_price` float(12,4) DEFAULT NULL COMMENT '报价价格',
  `offer_unit` varchar(255) DEFAULT NULL COMMENT '报价单位',
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名称',
  `created_at` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `material_id` (`material_id`,`brand_id`,`supplier_id`) USING BTREE,
  KEY `brand_id` (`brand_id`) USING BTREE,
  KEY `supplier_id` (`supplier_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_material_brand_supplier
-- ----------------------------
INSERT INTO `sp_material_brand_supplier` VALUES ('19', '19', '5', '阿斯蒂芬', '2', '灿烂千阳文化', '灿烂前往', '11.0000', '件', '32.0000', '个', '0.0000', '个', '6', '王括', '2019-07-29');
INSERT INTO `sp_material_brand_supplier` VALUES ('20', '22', '4', '测试品牌', '2', '灿烂千阳文化', '灿烂前往', '3.0000', '件', '3.0000', '个', '0.0000', '个', '6', '王括', '2019-08-02');
INSERT INTO `sp_material_brand_supplier` VALUES ('21', '22', '7', '阿斯蒂芬123414', '2', '灿烂千阳文化', '灿烂前往', '1.0000', '件', '3.0000', '个', '0.0000', '个', '6', '王括', '2019-08-02');
INSERT INTO `sp_material_brand_supplier` VALUES ('22', '38', '6', '阿斯蒂芬111111111', '1', '灿烂千阳文化11111', '灿烂前往222222', '10.0000', '元', '15.0000', '美元', '0.0000', '美元', '6', '王括', '2019-08-16');
INSERT INTO `sp_material_brand_supplier` VALUES ('23', '38', '5', '阿斯蒂芬', '2', '灿烂千阳文化', '灿烂前往', '12.0000', '元', '16.0000', '里拉', '0.0000', '里拉', '6', '王括', '2019-08-16');
INSERT INTO `sp_material_brand_supplier` VALUES ('24', '37', '3', 'asfdasdfa', '1', '灿烂千阳文化11111', '灿烂前往222222', '10.0000', '测试', '8.0000', '越南盾', '0.0000', '越南盾', '6', '王括', '2019-08-16');
INSERT INTO `sp_material_brand_supplier` VALUES ('25', '21', '5', '阿斯蒂芬', '3', '东方风行', '有限责任公司', '4.0000', '件', '6.0000', '个', '110.0000', '个', '6', '王括', '2019-08-30');

-- ----------------------------
-- Table structure for sp_migrations
-- ----------------------------
DROP TABLE IF EXISTS `sp_migrations`;
CREATE TABLE `sp_migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sp_migrations
-- ----------------------------
INSERT INTO `sp_migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `sp_migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');

-- ----------------------------
-- Table structure for sp_notice
-- ----------------------------
DROP TABLE IF EXISTS `sp_notice`;
CREATE TABLE `sp_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` varchar(1000) DEFAULT NULL COMMENT '内容',
  `uid` int(11) DEFAULT NULL COMMENT '操作人id',
  `operator` varchar(100) DEFAULT NULL COMMENT '操作人',
  `pubdate` datetime DEFAULT NULL COMMENT '发布时间',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态1显示 0不显示',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_notice
-- ----------------------------
INSERT INTO `sp_notice` VALUES ('1', '测试标题', '诶人', '2', '王海舟', '2019-07-19 00:00:00', '1', '2019-07-17 16:46:15', '2019-07-20 10:41:25');
INSERT INTO `sp_notice` VALUES ('2', '标题二', 'dlkfjqwkfjasd而快乐阿阿斯顿发斯蒂芬卡技术', '1', '管理员', null, '1', '2019-07-17 16:49:08', '2019-07-17 16:49:17');
INSERT INTO `sp_notice` VALUES ('4', '5', '254', '1', '瑶(总经理)', '2019-07-17 21:59:49', '1', '2019-07-17 21:59:53', '2019-07-17 21:59:53');
INSERT INTO `sp_notice` VALUES ('5', '5', '254', '1', '瑶(总经理)', '2019-07-17 21:59:49', '1', '2019-07-17 22:00:01', '2019-07-17 22:00:01');
INSERT INTO `sp_notice` VALUES ('7', '5', '254撒打发士大夫', '6', '王括', '2019-07-17 21:59:49', '1', '2019-07-17 22:01:50', '2019-08-29 18:13:27');
INSERT INTO `sp_notice` VALUES ('12', '页面', '内容', '1', '瑶(总经理)', '2019-07-17 00:00:00', '1', '2019-07-17 22:08:15', '2019-07-17 22:08:15');
INSERT INTO `sp_notice` VALUES ('13', '标题', '内容现实', '1', '瑶(总经理)', '2019-07-17 00:00:00', '1', '2019-07-17 22:14:17', '2019-07-17 22:14:17');
INSERT INTO `sp_notice` VALUES ('14', '啦啦啦啦啦', '法水电费第三方水电费水电防守打法水电费水电费水电费', '6', '王括', '2019-07-20 00:00:00', '1', '2019-07-19 21:19:24', '2019-08-29 18:09:49');

-- ----------------------------
-- Table structure for sp_offer
-- ----------------------------
DROP TABLE IF EXISTS `sp_offer`;
CREATE TABLE `sp_offer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `offer_order_number` varchar(100) DEFAULT NULL COMMENT '报价单单号',
  `project_id` int(11) DEFAULT NULL COMMENT '项目id',
  `engin_id` int(11) DEFAULT NULL COMMENT '工程id',
  `budget_id` int(11) DEFAULT NULL COMMENT '预算单id',
  `offer_status` tinyint(4) DEFAULT '0' COMMENT '报价单状态 1已审核 0未审核 ',
  `quotation_date` date DEFAULT NULL COMMENT '报价日期',
  `quotation_limit_day` varchar(255) DEFAULT NULL COMMENT '报价有效期限（天）',
  `freight_price` float(15,2) DEFAULT NULL COMMENT '运输单价',
  `freight_charge` varchar(250) DEFAULT NULL COMMENT '运输费',
  `package_price` float(15,2) DEFAULT NULL COMMENT '包装单价',
  `package_charge` varchar(250) DEFAULT NULL COMMENT '包装费',
  `packing_price` float(15,2) DEFAULT NULL COMMENT '包装费单价',
  `material_total_price` float(15,2) DEFAULT NULL COMMENT '材料总费用',
  `packing_charge` varchar(250) DEFAULT NULL COMMENT '装箱费',
  `construction_price` varchar(250) DEFAULT NULL COMMENT '施工安装单价',
  `construction_charge` varchar(250) DEFAULT NULL COMMENT '施工安装费',
  `direct_project_cost` decimal(15,2) DEFAULT NULL COMMENT '工程造价（直接）',
  `profit_ratio` varchar(250) DEFAULT NULL COMMENT '预估利润占比',
  `profit` varchar(250) DEFAULT NULL COMMENT '预估利润额',
  `tax_ratio` varchar(250) DEFAULT NULL COMMENT '税费占比',
  `tax` varchar(250) DEFAULT NULL COMMENT '税费额',
  `total_offer_price` varchar(250) DEFAULT NULL COMMENT '工程造价总计（元）',
  `purchase_status` varchar(250) DEFAULT NULL COMMENT '是否已生成采购单',
  `created_uid` int(11) DEFAULT NULL COMMENT '创建者',
  `created_at` date DEFAULT NULL COMMENT '创建时间',
  `edit_uid` int(11) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `engin_id` (`engin_id`,`project_id`) USING BTREE,
  KEY `project_id` (`project_id`) USING BTREE,
  KEY `budget_id` (`budget_id`) USING BTREE,
  KEY `offer_order_number` (`offer_order_number`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_offer
-- ----------------------------
INSERT INTO `sp_offer` VALUES ('18', 'BJD20190904112813487010', '20', '10', '9', '0', '2019-09-04', '800', '50.00', '250', '56.00', '280', '57.00', '47015.00', '285', '44', '220', '47235.00', '33', '15587.55', '23', '14449.19', '77271.74', '0', '6', '2019-09-04', null, null);

-- ----------------------------
-- Table structure for sp_offer_item
-- ----------------------------
DROP TABLE IF EXISTS `sp_offer_item`;
CREATE TABLE `sp_offer_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` varchar(250) DEFAULT NULL COMMENT '项目id',
  `engin_id` varchar(250) DEFAULT NULL COMMENT '工程id',
  `budget_id` varchar(250) DEFAULT NULL COMMENT '预算id',
  `offer_id` varchar(250) DEFAULT NULL COMMENT '报价id',
  `budget_item_id` int(12) DEFAULT NULL COMMENT '预算详情单id',
  `arch_id` varchar(250) DEFAULT NULL COMMENT '建筑设计系统id',
  `sub_arch_id` varchar(250) DEFAULT NULL COMMENT '建筑设计子系统id',
  `material_id` varchar(250) DEFAULT NULL COMMENT '材料id',
  `material_name` varchar(1000) DEFAULT NULL COMMENT '材料名称',
  `characteristic` varchar(250) DEFAULT NULL COMMENT '规格特性要求',
  `offer_unit` varchar(250) DEFAULT NULL COMMENT '预算单位',
  `drawing_quantity` varchar(250) DEFAULT NULL COMMENT '工程量（图纸）',
  `loss_ratio` varchar(250) DEFAULT NULL COMMENT '损耗（%）',
  `engineering_quantity` varchar(250) DEFAULT NULL COMMENT '实际工程量',
  `brand_id` varchar(250) DEFAULT NULL COMMENT '品牌',
  `brand_name` varchar(255) DEFAULT NULL COMMENT '品牌名称',
  `offer_price` varchar(250) DEFAULT NULL COMMENT '报价单价',
  `total_material_price` varchar(250) DEFAULT NULL COMMENT '材料合计总价',
  `created_uid` int(11) DEFAULT NULL COMMENT '创建者',
  `created_at` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `budget_id` (`budget_id`) USING BTREE,
  KEY `material_id` (`material_id`) USING BTREE,
  KEY `brand_id` (`brand_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sp_offer_item
-- ----------------------------
INSERT INTO `sp_offer_item` VALUES ('40', '20', '10', '9', '18', '60', '6', '4', '21', '混凝土1', '特性1', '个', '400', '5', '420', '5', '阿斯蒂芬', '110', '46200', '6', '2019-09-04');
INSERT INTO `sp_offer_item` VALUES ('41', '20', '10', '9', '18', '61', '13', '15', '38', '我', '阿萨德', '美元', '1532', '22', '1869.04', '6', '阿斯蒂芬111111111', '0', '0', '6', '2019-09-04');
INSERT INTO `sp_offer_item` VALUES ('42', '20', '10', '9', '18', '62', '13', '15', '37', '去', '阿达', '越南盾', '455', '0', '455', '3', 'asfdasdfa', '0', '0', '6', '2019-09-04');

-- ----------------------------
-- Table structure for sp_password_resets
-- ----------------------------
DROP TABLE IF EXISTS `sp_password_resets`;
CREATE TABLE `sp_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`) USING BTREE,
  KEY `password_resets_token_index` (`token`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sp_password_resets
-- ----------------------------
INSERT INTO `sp_password_resets` VALUES ('everup@163.com', '55ddaeb82f8f75854fdcbb622fab18c1a5b92e627e2819a756b5272eb83ae1fa', '2019-06-24 07:18:03');

-- ----------------------------
-- Table structure for sp_project
-- ----------------------------
DROP TABLE IF EXISTS `sp_project`;
CREATE TABLE `sp_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(1000) NOT NULL COMMENT '项目名称',
  `country` varchar(255) DEFAULT NULL COMMENT '国家',
  `province` varchar(255) DEFAULT NULL COMMENT '省',
  `city` varchar(255) DEFAULT NULL COMMENT '市',
  `county` varchar(255) DEFAULT NULL COMMENT '县',
  `address_detail` varchar(255) DEFAULT NULL COMMENT '地址详情',
  `foreign_address` varchar(1000) DEFAULT NULL COMMENT '国外地址',
  `type` varchar(255) DEFAULT NULL COMMENT '项目种类（用途）',
  `source` varchar(255) DEFAULT NULL COMMENT '项目来源',
  `stage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '项目所属阶段',
  `plan_creat_at` date DEFAULT NULL COMMENT '计划建造日期',
  `project_limit_time` int(11) DEFAULT NULL COMMENT '项目工期',
  `success_level` tinyint(4) DEFAULT '1' COMMENT '洽谈指数',
  `environment` varchar(1000) DEFAULT NULL COMMENT '场地自然条件',
  `traffic` varchar(1000) DEFAULT NULL COMMENT '交通条件',
  `material_storage` varchar(1000) DEFAULT NULL COMMENT '材料储放条件',
  `customer_id` int(11) DEFAULT NULL COMMENT '客户id',
  `customer` varchar(255) DEFAULT NULL COMMENT '客户名称',
  `customer_type` varchar(255) DEFAULT NULL COMMENT '客户类型',
  `customer_address` varchar(255) DEFAULT NULL COMMENT '客户地址',
  `customer_contacts` varchar(255) DEFAULT NULL COMMENT '客户联系人',
  `customer_telephone` varchar(255) DEFAULT NULL COMMENT '客户电话1',
  `customer_phone` varchar(255) DEFAULT NULL COMMENT '联系电话2',
  `customer_email` varchar(255) DEFAULT NULL COMMENT '联系人邮箱',
  `is_design` tinyint(2) DEFAULT '0' COMMENT '是否需要设计咨询：1是 0否',
  `is_supply` tinyint(2) DEFAULT '0' COMMENT '是否材料供应 1是 0否',
  `is_guidance` tinyint(2) DEFAULT '0' COMMENT '是否需要施工指导 1是0 否',
  `is_installation` tinyint(2) DEFAULT '0' COMMENT '是否需要施工安装 1是 0否',
  `customer_leader` varchar(255) DEFAULT NULL COMMENT '客户方负责人',
  `customer_job` varchar(255) DEFAULT NULL COMMENT '客户方职位',
  `customer_contact` varchar(255) DEFAULT NULL COMMENT '客户方联系方式',
  `project_leader` varchar(255) DEFAULT NULL COMMENT '项目负责人名称',
  `project_job` varchar(255) DEFAULT NULL COMMENT '项目负责人职位',
  `project_contact` varchar(255) DEFAULT NULL COMMENT '项目负责人联系方式',
  `design_uid` int(11) DEFAULT NULL COMMENT '设计人员id',
  `design_username` varchar(255) DEFAULT NULL COMMENT '设计人员姓名',
  `budget_uid` int(11) DEFAULT NULL COMMENT '预算人员id',
  `budget_username` varchar(255) DEFAULT NULL COMMENT '预算人员姓名',
  `purchase_uid` int(11) DEFAULT NULL COMMENT '采购负责人',
  `purchase_username` varchar(255) DEFAULT NULL COMMENT '采购人员姓名',
  `technical_uid` int(11) DEFAULT NULL COMMENT '技术支持id',
  `technical_username` varchar(255) DEFAULT NULL COMMENT '技术人员姓名',
  `created_uid` int(11) DEFAULT NULL COMMENT '创建人id',
  `created_at` date DEFAULT NULL COMMENT '创建时间',
  `edited_uid` int(11) DEFAULT NULL COMMENT '编辑人uid',
  `updated_at` date DEFAULT NULL COMMENT '编辑时间',
  PRIMARY KEY (`id`),
  KEY `design_uid` (`design_uid`) USING BTREE,
  KEY `budget_uid` (`budget_uid`) USING BTREE,
  KEY `technical_uid` (`technical_uid`) USING BTREE,
  KEY `created_uid` (`created_uid`) USING BTREE,
  KEY `created_at` (`created_at`) USING BTREE,
  KEY `project_name` (`project_name`(191)) USING BTREE,
  KEY `foreign_address` (`foreign_address`(191)) USING BTREE,
  KEY `address_detail` (`address_detail`(191)) USING BTREE,
  KEY `type` (`type`(191),`success_level`) USING BTREE,
  KEY `design_username` (`design_username`(191)) USING BTREE,
  KEY `budget_username` (`budget_username`(191)) USING BTREE,
  KEY `technical_username` (`technical_username`(191)) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_project
-- ----------------------------
INSERT INTO `sp_project` VALUES ('16', ' 建筑工程预算报价清单1111', '中国', '北京', '北京', '朝阳', '诶嘿不对', null, '民营企业', null, '启动', '2019-07-31', '55', '1', '俄式坦克', '歼20', '航母', '1', null, null, null, null, null, null, null, '1', '1', '1', '1', '贾旭明', '经理', null, '张康', '职员', null, '6', '王括', '6', '王括', '6', '王括', '6', '王括', null, null, null, null);
INSERT INTO `sp_project` VALUES ('17', '阿萨德发送到', '中国', '北京', '北京', '朝阳', '诶嘿不对', null, '民营企业', null, '启动', '2019-07-31', '55', '1', '俄式坦克', '歼20', '航母', '1', null, null, null, null, null, null, null, '1', '1', '1', '1', '贾旭明', '经理', null, '张康', '职员', null, '6', '王括', '6', '王括', '6', '王括', '6', '王括', null, null, null, null);
INSERT INTO `sp_project` VALUES ('18', '河北来源观光项目', '中国', '河北省', '保定市', '安新县', '来源石头山', '', '山上建平房', '60', '启动', '2019-08-05', '22', '3', '条件恶劣，均是山路', '羊场小道', '就地取材', '6', '王氏', '国企', '河北来源', null, '15515231452', '', 'wagnshi@163.com', '1', '1', '1', '1', '王氏', '经理', '13215462541', '瑶', '项目经理', '14687454878', '6', '王括', '6', '王括', '6', '王括', '6', '王括', '6', '2019-08-09', null, null);
INSERT INTO `sp_project` VALUES ('19', '河南平顶山', '中国', '河北省', '保定市', '安新县', '来源石头山', '', '山上建平房', '60', '启动', '2019-08-05', '22', '3', '条件恶劣，均是山路', '羊场小道', '就地取材', '7', '王氏', '国企', '河北来源', null, '15515231452', '', 'wagnshi@163.com', '1', '1', '1', '1', '王氏', '经理', '13215462541', '瑶', '项目经理', '14687454878', '6', '王括', '6', '王括', '6', '王括', '6', '王括', '1', '2019-08-28', '6', '2019-08-05');
INSERT INTO `sp_project` VALUES ('20', '铜牛产业园', '中国', '北京市', '北京市市辖区', '朝阳区', '铜牛电影产业午安', '', '小区规划', '北京住建委', '洽谈', '2019-08-31', '180', '5', '市中心', '交通便利', '不适合长期保存', '8', '王氏', '国企', '住建委', null, '13011111111', '010-21234212', 'eee@163.com', '1', '1', '1', '1', '贾旭明', '项目经理', '14299999999', '张康', '总裁', '15225252626', '6', '王括', '6', '王括', '6', '王括', '6', '王括', '6', '2019-08-16', null, null);
INSERT INTO `sp_project` VALUES ('21', '天津欧贸中心项目', '中国', '天津市', '天津市市辖区', '蓟县', '蓟县城关镇', '', '住宅', '直接客户', '规划设计', '2019-09-30', '30', '5', '平整', '良好', '良好', '15', '天津万顺', '民企', '天津东丽', null, '13911111111', '022-23456789', '', '1', '1', '1', '1', '张总', '项目总经理', '13512345678', '李四', '项目经理', '13598745612', '6', '王括', '6', '王括', '6', '王括', '6', '王括', '6', '2019-09-02', null, null);
INSERT INTO `sp_project` VALUES ('22', '测试项目名称', '国内', '北京市', '北京市市辖区', '东城区', '赖金城', '', '工业', '国企', '未知', '2019-09-18', '180', '5', '良好', '便利', '仓库', '16', '王石', '国企', '北京', null, '15241547845', '01056421547', 'test@163.com', '1', '1', '1', '1', '王海', '经理', '16245785478', '李东', '经理', '14514521451', '6', '王括', '6', '王括', '6', '王括', '6', '王括', '6', '2019-09-03', null, null);
INSERT INTO `sp_project` VALUES ('23', '测试项目名称', '国内', '', '', '', '赖金城', '', '工业', '国企', '未知', '2019-09-18', '180', '5', '良好', '便利', '仓库', '17', '王石', '国企', '北京', null, '15241547845', '01056421547', 'test@163.com', '1', '1', '1', '1', '王海', '经理', '16245785478', '李东', '经理', '14514521451', '6', '王括', '6', '王括', '6', '王括', '6', '王括', '6', '2019-09-03', null, null);
INSERT INTO `sp_project` VALUES ('24', '测试项目名称', '国内', '', '', '', '赖金城', '', '工业', '国企', '未知', '2019-09-18', '180', '5', '良好', '便利', '仓库', '18', '王石', '国企', '北京', null, '15241547845', '01056421547', 'test@163.com', '1', '1', '1', '1', '王海', '经理', '16245785478', '李东', '经理', '14514521451', '6', '王括', '6', '王括', '6', '王括', '6', '王括', '6', '2019-09-03', null, null);
INSERT INTO `sp_project` VALUES ('25', '凄凄切切', '国内', '', '', '', '赖金城', '', '工业', '国企', '未知', '2019-09-18', '180', '5', '良好', '便利', '仓库', '19', '王石', '国企', '北京', null, '15241547845', '01056421547', 'test@163.com', '1', '1', '1', '1', '王海', '经理', '16245785478', '李东', '经理', '14514521451', '4', 'test1', '13', 'test11', '6', '王括', '15', 'test', '6', '2019-09-04', null, null);

-- ----------------------------
-- Table structure for sp_purchase
-- ----------------------------
DROP TABLE IF EXISTS `sp_purchase`;
CREATE TABLE `sp_purchase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL COMMENT '项目id',
  `engin_id` int(11) DEFAULT NULL COMMENT '工程id',
  `budget_id` int(11) DEFAULT NULL COMMENT '预算单id',
  `purchase_status` tinyint(4) DEFAULT '0' COMMENT '采购单状态：0 未采购 1 采购中 2 采购完',
  `logistics_status` tinyint(4) DEFAULT '0' COMMENT '物流状态 0 未发货 1运输中 2已到达',
  `batch_status` tinyint(4) DEFAULT '0' COMMENT '批次状态 1有批次信息 0没有批次信息',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `created_uid` int(11) DEFAULT NULL COMMENT '创建人id',
  `created_at` date DEFAULT NULL COMMENT '创建时间',
  `edit_uid` int(11) DEFAULT NULL COMMENT '编辑人id',
  `updated_at` date DEFAULT NULL COMMENT '编辑时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_purchase
-- ----------------------------
INSERT INTO `sp_purchase` VALUES ('1', '18', '3', '1', '0', '0', '1', '显示备注信息', '6', '2019-08-22', '6', '2019-08-23');
INSERT INTO `sp_purchase` VALUES ('2', '20', '10', '2', '1', '0', '1', '测试采购人员', '6', '2019-09-02', '6', '2019-09-02');

-- ----------------------------
-- Table structure for sp_purchase_batch
-- ----------------------------
DROP TABLE IF EXISTS `sp_purchase_batch`;
CREATE TABLE `sp_purchase_batch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL COMMENT '项目id',
  `engin_id` int(11) DEFAULT NULL COMMENT '工程id',
  `purchase_id` int(11) DEFAULT NULL COMMENT '采购id',
  `purchase_number` varchar(100) DEFAULT NULL COMMENT '采购批次',
  `deliver_properties` varchar(255) DEFAULT NULL COMMENT '发货性质：预算内发，预算外补',
  `purchase_at` date DEFAULT NULL COMMENT '采购时间',
  `deliver_time` date DEFAULT NULL COMMENT '发货时间',
  `arrive_time` date DEFAULT NULL COMMENT '到达时间',
  `transport_type` varchar(255) DEFAULT NULL COMMENT '运输方式',
  `load_height` float(10,2) DEFAULT NULL COMMENT '装载长度（米）',
  `load_mode` varchar(255) DEFAULT NULL COMMENT '装载方式',
  `container_size` varchar(255) DEFAULT NULL COMMENT '集装箱尺寸',
  `container_number` float(10,0) DEFAULT NULL COMMENT '集装箱数量',
  `van_specs` varchar(255) DEFAULT NULL COMMENT '货车规格',
  `van_number` float(5,0) DEFAULT NULL COMMENT '货车数量',
  `deliver_address` varchar(1000) DEFAULT NULL COMMENT '发货地址',
  `purchase_order_status` tinyint(4) DEFAULT '0' COMMENT '采购订单状态 0未创建采购单 1已创建采购单',
  `created_uid` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `edit_uid` int(11) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_purchase_batch
-- ----------------------------
INSERT INTO `sp_purchase_batch` VALUES ('1', '18', '3', '1', '1', '2', '2019-08-27', '2019-08-29', '2019-08-14', '12', '123.00', '341', '34', '123412', '123', '11', '3', '0', '6', '2019-08-23', '6', '2019-08-23');
INSERT INTO `sp_purchase_batch` VALUES ('2', '18', '3', '1', '3', '4', '2019-08-31', '2019-08-28', '2019-08-29', '213', '3.00', '234', '123', '1234', '123', '123', '0', '0', '6', '2019-08-23', '6', '2019-08-23');
INSERT INTO `sp_purchase_batch` VALUES ('4', '18', '3', '1', '123', '阿萨德', '2019-08-30', '2019-08-23', '2019-08-31', '阿斯顿发', '11.00', '阿斯顿发', '阿萨德', '1231', '阿斯顿发', '112', '123', '0', '6', '2019-08-23', '6', '2019-08-23');
INSERT INTO `sp_purchase_batch` VALUES ('5', '20', '10', '2', '1', '预算内', '2019-09-02', '2019-09-03', '2019-09-07', '货车', '10.00', '吊装', '22', '1', '3', '1', '北京', '0', '6', '2019-09-02', null, null);
INSERT INTO `sp_purchase_batch` VALUES ('6', '20', '10', '2', '1', '预算内', '2019-09-03', '2019-09-04', '2019-09-08', '货车', '10.00', '吊装', '爱迪生', '2', '撒', '2', '添加', '0', '6', '2019-09-02', null, null);
INSERT INTO `sp_purchase_batch` VALUES ('7', '20', '10', '2', '2', '预算内', '2019-09-04', '2019-09-05', '2019-09-09', '货车', '10.00', '散装', '订单', '3', '阿萨德', '4', '天津', '0', '6', '2019-09-02', null, null);
INSERT INTO `sp_purchase_batch` VALUES ('8', '20', '10', '2', '3', '预算内', '2019-09-05', '2019-09-06', '2019-09-10', '火车', '12.00', '集装箱', '侧卧', '4', '阿士大夫', '5', '河北', '0', '6', '2019-09-02', null, null);

-- ----------------------------
-- Table structure for sp_purchase_order
-- ----------------------------
DROP TABLE IF EXISTS `sp_purchase_order`;
CREATE TABLE `sp_purchase_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL COMMENT '项目id',
  `engin_id` int(11) DEFAULT NULL COMMENT '工程id',
  `purchase_id` int(11) DEFAULT NULL COMMENT '采购id',
  `budget_id` int(11) DEFAULT NULL COMMENT '预算单id',
  `batch_id` int(11) DEFAULT NULL COMMENT '批次id',
  `purchase_order_number` varchar(255) DEFAULT NULL COMMENT '采购单单号',
  `order_created_date` date DEFAULT NULL COMMENT '下单日期',
  `deliver_mode` varchar(255) DEFAULT NULL COMMENT '送货方式',
  `arrival_mode` varchar(255) DEFAULT NULL COMMENT '到达方式',
  `transfer_address` varchar(255) DEFAULT NULL COMMENT '中转站',
  `direct_address` varchar(255) DEFAULT NULL COMMENT '直达地址',
  `transport_mode` varchar(255) DEFAULT NULL COMMENT '运输方式',
  `load_mode` varchar(255) DEFAULT NULL COMMENT '装载方式',
  `vehicle_mode` varchar(255) DEFAULT NULL COMMENT '车辆规格',
  `vehicle_number` int(10) DEFAULT '1' COMMENT '车辆数量',
  `packing_mode` varchar(255) DEFAULT NULL COMMENT '包装要求',
  `purchase_address` varchar(1000) DEFAULT NULL COMMENT '订单采购地点',
  `purchaser` varchar(255) DEFAULT NULL COMMENT '买方联系人',
  `purchaser_phone` varchar(255) DEFAULT NULL COMMENT '买方联系人电话',
  `supplier_id` int(11) DEFAULT NULL COMMENT '供应商id',
  `order_status` tinyint(4) DEFAULT '0' COMMENT '订单状态 0未审核 1已审核',
  `send_number` tinyint(4) DEFAULT '0' COMMENT '发送邮件到供应商次数 默认0',
  `purchase_total_fee` float(15,0) DEFAULT NULL COMMENT '采购总金额',
  `created_uid` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `edit_uid` int(11) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_purchase_order
-- ----------------------------

-- ----------------------------
-- Table structure for sp_purchase_order_item
-- ----------------------------
DROP TABLE IF EXISTS `sp_purchase_order_item`;
CREATE TABLE `sp_purchase_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL COMMENT '项目id',
  `engin_id` int(11) DEFAULT NULL COMMENT '工程id',
  `purchase_id` int(11) DEFAULT NULL COMMENT '采购id',
  `budget_id` int(11) DEFAULT NULL COMMENT '预算单id',
  `budget_item_id` int(11) DEFAULT NULL COMMENT '预算详情id',
  `batch_id` int(11) DEFAULT NULL COMMENT '批次id',
  `order_id` int(11) DEFAULT NULL COMMENT '采购单id',
  `mbs_id` int(11) DEFAULT NULL COMMENT '材料品牌供应商id',
  `material_id` int(11) DEFAULT NULL COMMENT '材料id',
  `brand_id` int(11) DEFAULT NULL COMMENT '品牌id',
  `actual_purchase_quantity` varchar(255) DEFAULT NULL COMMENT '实际采购量',
  `actual_total_fee` varchar(255) DEFAULT NULL COMMENT '实际采购金额',
  `purchase_unit` varchar(255) DEFAULT NULL COMMENT '采购单位',
  `purchase_price` decimal(10,2) DEFAULT NULL COMMENT '采购价格',
  `already_purchased_quantity` varchar(255) DEFAULT NULL COMMENT '已经采购量',
  `uid` int(11) DEFAULT NULL COMMENT '创建人id',
  `created_at` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_purchase_order_item
-- ----------------------------

-- ----------------------------
-- Table structure for sp_role
-- ----------------------------
DROP TABLE IF EXISTS `sp_role`;
CREATE TABLE `sp_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1' COMMENT '是否再用 1 使用 0删除',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '更改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_role
-- ----------------------------
INSERT INTO `sp_role` VALUES ('1', '总经理', '1', '2019-06-26 09:36:44', '2019-06-26 09:36:46');
INSERT INTO `sp_role` VALUES ('2', '超级管理员', '1', '2019-06-29 08:41:44', '2019-06-29 08:41:44');
INSERT INTO `sp_role` VALUES ('3', '财务总监', '1', '2019-06-29 08:42:38', '2019-07-22 11:01:47');
INSERT INTO `sp_role` VALUES ('4', '财务专员', '1', '2019-06-29 08:42:50', '2019-07-22 11:00:55');
INSERT INTO `sp_role` VALUES ('5', '建筑设计师', '1', '2019-07-12 10:26:14', '2019-07-22 11:00:12');
INSERT INTO `sp_role` VALUES ('6', '采购专员', '1', '2019-07-17 21:51:50', '2019-07-22 11:00:47');
INSERT INTO `sp_role` VALUES ('7', '销售总监', '1', '2019-07-19 21:48:14', '2019-07-22 11:01:35');
INSERT INTO `sp_role` VALUES ('8', '采购总监', '1', '2019-07-22 11:02:01', '2019-07-22 11:02:01');
INSERT INTO `sp_role` VALUES ('9', '销售经理', '1', '2019-07-22 11:02:10', '2019-07-22 11:02:10');
INSERT INTO `sp_role` VALUES ('10', '销售总监', '1', '2019-07-22 11:02:18', '2019-07-22 11:02:18');
INSERT INTO `sp_role` VALUES ('11', '工程经理', '1', '2019-07-22 11:02:37', '2019-07-22 11:02:37');
INSERT INTO `sp_role` VALUES ('12', '工程总监', '1', '2019-07-22 11:02:52', '2019-07-22 11:02:52');
INSERT INTO `sp_role` VALUES ('13', '设计总监', '1', '2019-07-22 11:03:32', '2019-07-22 11:03:32');
INSERT INTO `sp_role` VALUES ('14', '预算专员', '1', '2019-07-22 11:03:46', '2019-07-22 11:03:46');
INSERT INTO `sp_role` VALUES ('15', '预算总监', '1', '2019-07-22 11:03:53', '2019-07-22 11:32:15');

-- ----------------------------
-- Table structure for sp_role_authority
-- ----------------------------
DROP TABLE IF EXISTS `sp_role_authority`;
CREATE TABLE `sp_role_authority` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL COMMENT '角色id',
  `auth_id` varchar(100) DEFAULT NULL COMMENT '权限id',
  `parent_auth_id` varchar(100) DEFAULT NULL COMMENT '父级权限id',
  `level` int(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '状态 1 可用 0禁用',
  `operator` varchar(255) DEFAULT NULL COMMENT '最后一次操作人',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status_roleid_authid` (`status`,`role_id`,`auth_id`) USING BTREE,
  KEY `status_level` (`status`,`level`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4105 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_role_authority
-- ----------------------------
INSERT INTO `sp_role_authority` VALUES ('444', '4', '10', '0', '1', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('445', '4', '1001', '10', '2', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('446', '4', '100101', '1001', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('447', '4', '100102', '1001', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('448', '4', '100103', '1001', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('449', '4', '100105', '1001', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('450', '4', '1002', '10', '2', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('451', '4', '100201', '1002', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('452', '4', '100202', '1002', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('453', '4', '100203', '1002', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('454', '4', '100204', '1002', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('455', '4', '100205', '1002', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('456', '4', '1003', '10', '2', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('457', '4', '100301', '1003', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('458', '4', '100302', '1003', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('459', '4', '100303', '1003', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('460', '4', '1004', '10', '2', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('461', '4', '100401', '1004', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('462', '4', '15', '0', '1', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('463', '4', '1501', '15', '2', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('464', '4', '1502', '15', '2', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('465', '4', '150201', '1502', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('466', '4', '150202', '1502', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('467', '4', '150203', '1502', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('468', '4', '1503', '15', '2', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('469', '4', '150301', '1503', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('470', '4', '150302', '1503', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('471', '4', '150303', '1503', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('472', '4', '150304', '1503', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('473', '4', '1504', '15', '2', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('474', '4', '150401', '1504', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('475', '4', '150402', '1504', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('476', '4', '150403', '1504', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('477', '4', '1505', '15', '2', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('478', '4', '150501', '1505', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('479', '4', '150502', '1505', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('480', '4', '20', '0', '1', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('481', '4', '2001', '20', '2', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('482', '4', '200101', '2001', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('483', '4', '200102', '2001', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('484', '4', '200103', '2001', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('485', '4', '200104', '2001', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('486', '4', '200105', '2001', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('487', '4', '200106', '2001', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('488', '4', '2002', '20', '2', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('489', '4', '200201', '2002', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('490', '4', '200202', '2002', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('491', '4', '200203', '2002', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('492', '4', '200204', '2002', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('493', '4', '200205', '2002', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('494', '4', '200206', '2002', '3', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('495', '4', '25', '0', '1', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('496', '4', '2501', '25', '2', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('497', '4', '2502', '25', '2', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('498', '4', '2503', '25', '2', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('499', '4', '2504', '25', '2', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('500', '4', '2505', '25', '2', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('501', '4', '30', '0', '1', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('502', '4', '3001', '30', '2', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('503', '4', '3002', '30', '2', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('504', '4', '3003', '30', '2', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('505', '4', '3004', '30', '2', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('506', '4', '3005', '30', '2', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('507', '4', '35', '0', '1', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('508', '4', '3501', '35', '2', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('509', '4', '3502', '35', '2', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('510', '4', '3503', '35', '2', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('511', '4', '3504', '35', '2', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('512', '4', '3505', '35', '2', '1', '1', '2019-07-10 02:43:34', '2019-07-10 02:43:34');
INSERT INTO `sp_role_authority` VALUES ('1318', '3', '35', '0', '1', '1', '2', '2019-07-20 21:33:46', '2019-07-20 21:33:46');
INSERT INTO `sp_role_authority` VALUES ('1319', '3', '3501', '35', '2', '1', '2', '2019-07-20 21:33:46', '2019-07-20 21:33:46');
INSERT INTO `sp_role_authority` VALUES ('1320', '3', '350101', '3501', '3', '1', '2', '2019-07-20 21:33:46', '2019-07-20 21:33:46');
INSERT INTO `sp_role_authority` VALUES ('1321', '3', '350102', '3501', '3', '1', '2', '2019-07-20 21:33:46', '2019-07-20 21:33:46');
INSERT INTO `sp_role_authority` VALUES ('1322', '3', '350103', '3501', '3', '1', '2', '2019-07-20 21:33:46', '2019-07-20 21:33:46');
INSERT INTO `sp_role_authority` VALUES ('1323', '3', '350104', '3501', '3', '1', '2', '2019-07-20 21:33:46', '2019-07-20 21:33:46');
INSERT INTO `sp_role_authority` VALUES ('1324', '3', '3502', '35', '2', '1', '2', '2019-07-20 21:33:46', '2019-07-20 21:33:46');
INSERT INTO `sp_role_authority` VALUES ('1325', '3', '350201', '3502', '3', '1', '2', '2019-07-20 21:33:46', '2019-07-20 21:33:46');
INSERT INTO `sp_role_authority` VALUES ('1326', '3', '350202', '3502', '3', '1', '2', '2019-07-20 21:33:46', '2019-07-20 21:33:46');
INSERT INTO `sp_role_authority` VALUES ('1327', '5', '15', '0', '1', '1', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1328', '5', '1501', '15', '2', '1', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1329', '5', '1502', '15', '2', '1', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1330', '5', '150201', '1502', '3', '1', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1331', '5', '150202', '1502', '3', '1', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1332', '5', '150203', '1502', '3', '1', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1333', '5', '1503', '15', '2', '1', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1334', '5', '150301', '1503', '3', '1', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1335', '5', '150302', '1503', '3', '1', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1336', '5', '150303', '1503', '3', '1', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1337', '5', '150304', '1503', '3', '1', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1338', '5', '1504', '15', '2', '1', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1339', '5', '150401', '1504', '3', '1', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1340', '5', '150402', '1504', '3', '1', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1341', '5', '150403', '1504', '3', '1', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1342', '5', '1505', '15', '2', '1', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1343', '5', '150501', '1505', '3', '1', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1344', '5', '150502', '1505', '3', '1', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1345', '5', '35', '0', '1', '1', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1346', '5', '3501', '35', '2', '1', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1347', '5', '3502', '35', '2', '1', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1503', '1', '10', '0', '1', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1504', '1', '1001', '10', '2', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1505', '1', '100101', '1001', '3', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1506', '1', '100102', '1001', '3', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1507', '1', '100103', '1001', '3', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1508', '1', '100105', '1001', '3', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1509', '1', '1002', '10', '2', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1510', '1', '100201', '1002', '3', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1511', '1', '100202', '1002', '3', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1512', '1', '100203', '1002', '3', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1513', '1', '100204', '1002', '3', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1514', '1', '100205', '1002', '3', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1515', '1', '1003', '10', '2', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1516', '1', '100301', '1003', '3', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1517', '1', '100302', '1003', '3', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1518', '1', '100303', '1003', '3', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1519', '1', '1004', '10', '2', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1520', '1', '100401', '1004', '3', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1521', '1', '1005', '10', '2', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1522', '1', '15', '0', '1', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1523', '1', '1501', '15', '2', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1524', '1', '1502', '15', '2', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1525', '1', '150201', '1502', '3', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1526', '1', '150202', '1502', '3', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1527', '1', '150203', '1502', '3', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1528', '1', '1503', '15', '2', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1529', '1', '150301', '1503', '3', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1530', '1', '150302', '1503', '3', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1531', '1', '150303', '1503', '3', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1532', '1', '150304', '1503', '3', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1533', '1', '1504', '15', '2', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1534', '1', '150401', '1504', '3', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1535', '1', '150402', '1504', '3', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1536', '1', '150403', '1504', '3', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1537', '1', '1505', '15', '2', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1538', '1', '150501', '1505', '3', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1539', '1', '150502', '1505', '3', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1540', '1', '35', '0', '1', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1541', '1', '3501', '35', '2', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1542', '1', '350101', '3501', '3', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1543', '1', '350102', '3501', '3', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1544', '1', '350103', '3501', '3', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1545', '1', '350104', '3501', '3', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1546', '1', '3502', '35', '2', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1547', '1', '350201', '3502', '3', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1548', '1', '350202', '3502', '3', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1549', '1', '60', '0', '1', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1550', '1', '6001', '60', '2', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1551', '1', '6002', '60', '2', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1552', '1', '600201', '6002', '3', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1553', '1', '600202', '6002', '3', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1554', '1', '600203', '6002', '3', '0', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('1657', '15', '20', '0', '1', '1', '1', '2019-07-22 11:15:44', '2019-07-22 11:15:44');
INSERT INTO `sp_role_authority` VALUES ('1658', '15', '2001', '20', '2', '1', '1', '2019-07-22 11:15:44', '2019-07-22 11:15:44');
INSERT INTO `sp_role_authority` VALUES ('1659', '15', '200101', '2001', '3', '1', '1', '2019-07-22 11:15:44', '2019-07-22 11:15:44');
INSERT INTO `sp_role_authority` VALUES ('1660', '15', '200106', '2001', '3', '1', '1', '2019-07-22 11:15:44', '2019-07-22 11:15:44');
INSERT INTO `sp_role_authority` VALUES ('1661', '15', '2002', '20', '2', '1', '1', '2019-07-22 11:15:44', '2019-07-22 11:15:44');
INSERT INTO `sp_role_authority` VALUES ('1662', '15', '200201', '2002', '3', '1', '1', '2019-07-22 11:15:44', '2019-07-22 11:15:44');
INSERT INTO `sp_role_authority` VALUES ('1663', '15', '200206', '2002', '3', '1', '1', '2019-07-22 11:15:44', '2019-07-22 11:15:44');
INSERT INTO `sp_role_authority` VALUES ('1664', '10', '15', '0', '1', '1', '1', '2019-07-22 11:25:22', '2019-07-22 11:25:22');
INSERT INTO `sp_role_authority` VALUES ('1665', '10', '1501', '15', '2', '1', '1', '2019-07-22 11:25:22', '2019-07-22 11:25:22');
INSERT INTO `sp_role_authority` VALUES ('1666', '10', '1502', '15', '2', '1', '1', '2019-07-22 11:25:22', '2019-07-22 11:25:22');
INSERT INTO `sp_role_authority` VALUES ('1667', '10', '150201', '1502', '3', '1', '1', '2019-07-22 11:25:22', '2019-07-22 11:25:22');
INSERT INTO `sp_role_authority` VALUES ('1668', '10', '150202', '1502', '3', '1', '1', '2019-07-22 11:25:22', '2019-07-22 11:25:22');
INSERT INTO `sp_role_authority` VALUES ('1669', '10', '150203', '1502', '3', '1', '1', '2019-07-22 11:25:22', '2019-07-22 11:25:22');
INSERT INTO `sp_role_authority` VALUES ('1670', '10', '1503', '15', '2', '1', '1', '2019-07-22 11:25:22', '2019-07-22 11:25:22');
INSERT INTO `sp_role_authority` VALUES ('1671', '10', '150301', '1503', '3', '1', '1', '2019-07-22 11:25:22', '2019-07-22 11:25:22');
INSERT INTO `sp_role_authority` VALUES ('1672', '10', '150302', '1503', '3', '1', '1', '2019-07-22 11:25:22', '2019-07-22 11:25:22');
INSERT INTO `sp_role_authority` VALUES ('1673', '10', '150303', '1503', '3', '1', '1', '2019-07-22 11:25:22', '2019-07-22 11:25:22');
INSERT INTO `sp_role_authority` VALUES ('1674', '10', '150304', '1503', '3', '1', '1', '2019-07-22 11:25:22', '2019-07-22 11:25:22');
INSERT INTO `sp_role_authority` VALUES ('1675', '10', '1504', '15', '2', '1', '1', '2019-07-22 11:25:22', '2019-07-22 11:25:22');
INSERT INTO `sp_role_authority` VALUES ('1676', '10', '150401', '1504', '3', '1', '1', '2019-07-22 11:25:22', '2019-07-22 11:25:22');
INSERT INTO `sp_role_authority` VALUES ('1677', '10', '150402', '1504', '3', '1', '1', '2019-07-22 11:25:22', '2019-07-22 11:25:22');
INSERT INTO `sp_role_authority` VALUES ('1678', '10', '150403', '1504', '3', '1', '1', '2019-07-22 11:25:22', '2019-07-22 11:25:22');
INSERT INTO `sp_role_authority` VALUES ('1679', '10', '1505', '15', '2', '1', '1', '2019-07-22 11:25:22', '2019-07-22 11:25:22');
INSERT INTO `sp_role_authority` VALUES ('1680', '10', '150501', '1505', '3', '1', '1', '2019-07-22 11:25:22', '2019-07-22 11:25:22');
INSERT INTO `sp_role_authority` VALUES ('1681', '10', '150502', '1505', '3', '1', '1', '2019-07-22 11:25:22', '2019-07-22 11:25:22');
INSERT INTO `sp_role_authority` VALUES ('1682', '14', '20', '0', '1', '1', '1', '2019-07-22 11:27:31', '2019-07-22 11:27:31');
INSERT INTO `sp_role_authority` VALUES ('1683', '14', '2001', '20', '2', '1', '1', '2019-07-22 11:27:31', '2019-07-22 11:27:31');
INSERT INTO `sp_role_authority` VALUES ('1684', '14', '200101', '2001', '3', '1', '1', '2019-07-22 11:27:31', '2019-07-22 11:27:31');
INSERT INTO `sp_role_authority` VALUES ('1685', '14', '200102', '2001', '3', '1', '1', '2019-07-22 11:27:31', '2019-07-22 11:27:31');
INSERT INTO `sp_role_authority` VALUES ('1686', '14', '200103', '2001', '3', '1', '1', '2019-07-22 11:27:31', '2019-07-22 11:27:31');
INSERT INTO `sp_role_authority` VALUES ('1687', '14', '200104', '2001', '3', '1', '1', '2019-07-22 11:27:31', '2019-07-22 11:27:31');
INSERT INTO `sp_role_authority` VALUES ('1688', '14', '200105', '2001', '3', '1', '1', '2019-07-22 11:27:31', '2019-07-22 11:27:31');
INSERT INTO `sp_role_authority` VALUES ('1689', '14', '200106', '2001', '3', '1', '1', '2019-07-22 11:27:31', '2019-07-22 11:27:31');
INSERT INTO `sp_role_authority` VALUES ('1690', '14', '2002', '20', '2', '1', '1', '2019-07-22 11:27:31', '2019-07-22 11:27:31');
INSERT INTO `sp_role_authority` VALUES ('1691', '14', '200201', '2002', '3', '1', '1', '2019-07-22 11:27:31', '2019-07-22 11:27:31');
INSERT INTO `sp_role_authority` VALUES ('1692', '14', '200202', '2002', '3', '1', '1', '2019-07-22 11:27:31', '2019-07-22 11:27:31');
INSERT INTO `sp_role_authority` VALUES ('1693', '14', '200203', '2002', '3', '1', '1', '2019-07-22 11:27:31', '2019-07-22 11:27:31');
INSERT INTO `sp_role_authority` VALUES ('1694', '14', '200204', '2002', '3', '1', '1', '2019-07-22 11:27:31', '2019-07-22 11:27:31');
INSERT INTO `sp_role_authority` VALUES ('1695', '14', '200205', '2002', '3', '1', '1', '2019-07-22 11:27:31', '2019-07-22 11:27:31');
INSERT INTO `sp_role_authority` VALUES ('1696', '14', '200206', '2002', '3', '1', '1', '2019-07-22 11:27:31', '2019-07-22 11:27:31');
INSERT INTO `sp_role_authority` VALUES ('2734', '2', '10', '0', '1', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2735', '2', '1001', '10', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2736', '2', '100101', '1001', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2737', '2', '100102', '1001', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2738', '2', '100103', '1001', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2739', '2', '100105', '1001', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2740', '2', '1002', '10', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2741', '2', '100201', '1002', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2742', '2', '100202', '1002', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2743', '2', '100203', '1002', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2744', '2', '100204', '1002', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2745', '2', '100205', '1002', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2746', '2', '1003', '10', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2747', '2', '100301', '1003', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2748', '2', '100302', '1003', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2749', '2', '100303', '1003', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2750', '2', '1004', '10', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2751', '2', '100401', '1004', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2752', '2', '15', '0', '1', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2753', '2', '1501', '15', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2754', '2', '1502', '15', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2755', '2', '150201', '1502', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2756', '2', '150202', '1502', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2757', '2', '1503', '15', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2758', '2', '150301', '1503', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2759', '2', '150302', '1503', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2760', '2', '1504', '15', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2761', '2', '150401', '1504', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2762', '2', '1505', '15', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2763', '2', '150501', '1505', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2764', '2', '20', '0', '1', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2765', '2', '2001', '20', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2766', '2', '200101', '2001', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2767', '2', '20010101', '200101', '4', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2768', '2', '20010102', '200101', '4', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2769', '2', '200102', '2001', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2770', '2', '20010201', '200102', '4', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2771', '2', '20010202', '200102', '4', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2772', '2', '200103', '2001', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2773', '2', '20010301', '200103', '4', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2774', '2', '200104', '2001', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2775', '2', '20010401', '200104', '4', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2776', '2', '2002', '20', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2777', '2', '200201', '2002', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2778', '2', '200202', '2002', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2779', '2', '200203', '2002', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2780', '2', '200204', '2002', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2781', '2', '25', '0', '1', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2782', '2', '2501', '25', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2783', '2', '2502', '25', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2784', '2', '2503', '25', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2785', '2', '2504', '25', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2786', '2', '2505', '25', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2787', '2', '30', '0', '1', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2788', '2', '3001', '30', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2789', '2', '3002', '30', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2790', '2', '3003', '30', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2791', '2', '3004', '30', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2792', '2', '3005', '30', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2793', '2', '35', '0', '1', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2794', '2', '3500', '35', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2795', '2', '350001', '3500', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2796', '2', '35000101', '350001', '4', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2797', '2', '35000102', '350001', '4', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2798', '2', '350002', '3500', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2799', '2', '35000201', '350002', '4', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2800', '2', '35000202', '350002', '4', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2801', '2', '350003', '3500', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2802', '2', '35000301', '350003', '4', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2803', '2', '350004', '3500', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2804', '2', '35000401', '350004', '4', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2805', '2', '3501', '35', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2806', '2', '350101', '3501', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2807', '2', '350102', '3501', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2808', '2', '350103', '3501', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2809', '2', '350104', '3501', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2810', '2', '3502', '35', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2811', '2', '350201', '3502', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2812', '2', '350202', '3502', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2813', '2', '40', '0', '1', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2814', '2', '4001', '40', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2815', '2', '4002', '40', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2816', '2', '4003', '40', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2817', '2', '45', '0', '1', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2818', '2', '4501', '45', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2819', '2', '450101', '4501', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2820', '2', '450102', '4501', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2821', '2', '450103', '4501', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2822', '2', '4502', '45', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2823', '2', '450201', '4502', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2824', '2', '450202', '4502', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2825', '2', '450203', '4502', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2826', '2', '50', '0', '1', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2827', '2', '5001', '50', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2828', '2', '5002', '50', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2829', '2', '5003', '50', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2830', '2', '5004', '50', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2831', '2', '5005', '50', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2832', '2', '55', '0', '1', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2833', '2', '5501', '55', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2834', '2', '5502', '55', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2835', '2', '5503', '55', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2836', '2', '5504', '55', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2837', '2', '60', '0', '1', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2838', '2', '6002', '60', '2', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2839', '2', '600201', '6002', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2840', '2', '600202', '6002', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2841', '2', '600203', '6002', '3', '0', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02');
INSERT INTO `sp_role_authority` VALUES ('2842', '2', '10', '0', '1', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2843', '2', '1001', '10', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2844', '2', '100101', '1001', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2845', '2', '100102', '1001', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2846', '2', '100103', '1001', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2847', '2', '100105', '1001', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2848', '2', '1002', '10', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2849', '2', '100201', '1002', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2850', '2', '100202', '1002', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2851', '2', '100203', '1002', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2852', '2', '100204', '1002', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2853', '2', '100205', '1002', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2854', '2', '1003', '10', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2855', '2', '100301', '1003', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2856', '2', '100302', '1003', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2857', '2', '100303', '1003', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2858', '2', '1004', '10', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2859', '2', '100401', '1004', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2860', '2', '15', '0', '1', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2861', '2', '1501', '15', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2862', '2', '1502', '15', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2863', '2', '150201', '1502', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2864', '2', '150202', '1502', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2865', '2', '1503', '15', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2866', '2', '150301', '1503', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2867', '2', '150302', '1503', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2868', '2', '1504', '15', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2869', '2', '150401', '1504', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2870', '2', '1505', '15', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2871', '2', '150501', '1505', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2872', '2', '20', '0', '1', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2873', '2', '2001', '20', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2874', '2', '200101', '2001', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2875', '2', '20010101', '200101', '4', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2876', '2', '20010102', '200101', '4', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2877', '2', '200102', '2001', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2878', '2', '20010201', '200102', '4', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2879', '2', '20010202', '200102', '4', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2880', '2', '200103', '2001', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2881', '2', '20010301', '200103', '4', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2882', '2', '200104', '2001', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2883', '2', '20010401', '200104', '4', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2884', '2', '2002', '20', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2885', '2', '200201', '2002', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2886', '2', '20020101', '200201', '4', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2887', '2', '20020102', '200201', '4', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2888', '2', '200202', '2002', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2889', '2', '20020201', '200202', '4', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2890', '2', '20020202', '200202', '4', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2891', '2', '200203', '2002', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2892', '2', '20020301', '200203', '4', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2893', '2', '200204', '2002', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2894', '2', '20020401', '200204', '4', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2895', '2', '25', '0', '1', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2896', '2', '2501', '25', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2897', '2', '2502', '25', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2898', '2', '2503', '25', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2899', '2', '2504', '25', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2900', '2', '2505', '25', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2901', '2', '30', '0', '1', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2902', '2', '3001', '30', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2903', '2', '3002', '30', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2904', '2', '3003', '30', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2905', '2', '3004', '30', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2906', '2', '3005', '30', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2907', '2', '35', '0', '1', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2908', '2', '3500', '35', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2909', '2', '350001', '3500', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2910', '2', '35000101', '350001', '4', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2911', '2', '35000102', '350001', '4', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2912', '2', '350002', '3500', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2913', '2', '35000201', '350002', '4', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2914', '2', '35000202', '350002', '4', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2915', '2', '350003', '3500', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2916', '2', '35000301', '350003', '4', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2917', '2', '350004', '3500', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2918', '2', '35000401', '350004', '4', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2919', '2', '3501', '35', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2920', '2', '350101', '3501', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2921', '2', '350102', '3501', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2922', '2', '350103', '3501', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2923', '2', '350104', '3501', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2924', '2', '3502', '35', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2925', '2', '350201', '3502', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2926', '2', '350202', '3502', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2927', '2', '40', '0', '1', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2928', '2', '4001', '40', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2929', '2', '4002', '40', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2930', '2', '4003', '40', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2931', '2', '45', '0', '1', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2932', '2', '4501', '45', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2933', '2', '450101', '4501', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2934', '2', '450102', '4501', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2935', '2', '450103', '4501', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2936', '2', '4502', '45', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2937', '2', '450201', '4502', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2938', '2', '450202', '4502', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2939', '2', '450203', '4502', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2940', '2', '50', '0', '1', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2941', '2', '5001', '50', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2942', '2', '5002', '50', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2943', '2', '5003', '50', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2944', '2', '5004', '50', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2945', '2', '5005', '50', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2946', '2', '55', '0', '1', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2947', '2', '5501', '55', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2948', '2', '5502', '55', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2949', '2', '5503', '55', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2950', '2', '5504', '55', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2951', '2', '60', '0', '1', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2952', '2', '6002', '60', '2', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2953', '2', '600201', '6002', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2954', '2', '600202', '6002', '3', '0', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09');
INSERT INTO `sp_role_authority` VALUES ('2955', '2', '10', '0', '1', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2956', '2', '1001', '10', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2957', '2', '100101', '1001', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2958', '2', '100102', '1001', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2959', '2', '100103', '1001', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2960', '2', '100105', '1001', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2961', '2', '1002', '10', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2962', '2', '100201', '1002', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2963', '2', '100202', '1002', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2964', '2', '100203', '1002', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2965', '2', '100204', '1002', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2966', '2', '100205', '1002', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2967', '2', '1003', '10', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2968', '2', '100301', '1003', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2969', '2', '100302', '1003', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2970', '2', '100303', '1003', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2971', '2', '1004', '10', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2972', '2', '100401', '1004', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2973', '2', '15', '0', '1', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2974', '2', '1501', '15', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2975', '2', '1502', '15', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2976', '2', '150201', '1502', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2977', '2', '150202', '1502', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2978', '2', '1503', '15', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2979', '2', '150301', '1503', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2980', '2', '150302', '1503', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2981', '2', '1504', '15', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2982', '2', '150401', '1504', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2983', '2', '1505', '15', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2984', '2', '150501', '1505', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2985', '2', '20', '0', '1', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2986', '2', '2001', '20', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2987', '2', '200101', '2001', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2988', '2', '20010101', '200101', '4', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2989', '2', '20010102', '200101', '4', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2990', '2', '200102', '2001', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2991', '2', '20010201', '200102', '4', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2992', '2', '20010202', '200102', '4', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2993', '2', '200103', '2001', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2994', '2', '20010301', '200103', '4', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2995', '2', '200104', '2001', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2996', '2', '20010401', '200104', '4', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2997', '2', '2002', '20', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2998', '2', '200201', '2002', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('2999', '2', '20020101', '200201', '4', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3000', '2', '20020102', '200201', '4', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3001', '2', '200202', '2002', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3002', '2', '20020201', '200202', '4', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3003', '2', '20020202', '200202', '4', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3004', '2', '200203', '2002', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3005', '2', '20020301', '200203', '4', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3006', '2', '200204', '2002', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3007', '2', '20020401', '200204', '4', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3008', '2', '25', '0', '1', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3009', '2', '2501', '25', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3010', '2', '2502', '25', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3011', '2', '2503', '25', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3012', '2', '2504', '25', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3013', '2', '2505', '25', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3014', '2', '30', '0', '1', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3015', '2', '3001', '30', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3016', '2', '3002', '30', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3017', '2', '3003', '30', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3018', '2', '3004', '30', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3019', '2', '3005', '30', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3020', '2', '35', '0', '1', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3021', '2', '3500', '35', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3022', '2', '350001', '3500', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3023', '2', '35000101', '350001', '4', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3024', '2', '35000102', '350001', '4', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3025', '2', '350002', '3500', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3026', '2', '35000201', '350002', '4', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3027', '2', '35000202', '350002', '4', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3028', '2', '350003', '3500', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3029', '2', '35000301', '350003', '4', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3030', '2', '350004', '3500', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3031', '2', '35000401', '350004', '4', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3032', '2', '3501', '35', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3033', '2', '350101', '3501', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3034', '2', '350102', '3501', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3035', '2', '350103', '3501', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3036', '2', '350104', '3501', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3037', '2', '3502', '35', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3038', '2', '350201', '3502', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3039', '2', '350202', '3502', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3040', '2', '40', '0', '1', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3041', '2', '4001', '40', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3042', '2', '4002', '40', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3043', '2', '4003', '40', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3044', '2', '45', '0', '1', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3045', '2', '4501', '45', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3046', '2', '450101', '4501', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3047', '2', '450102', '4501', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3048', '2', '450103', '4501', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3049', '2', '4502', '45', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3050', '2', '450201', '4502', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3051', '2', '450202', '4502', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3052', '2', '450203', '4502', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3053', '2', '50', '0', '1', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3054', '2', '5001', '50', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3055', '2', '5002', '50', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3056', '2', '5003', '50', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3057', '2', '5004', '50', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3058', '2', '5005', '50', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3059', '2', '55', '0', '1', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3060', '2', '5501', '55', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3061', '2', '5502', '55', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3062', '2', '5503', '55', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3063', '2', '5504', '55', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3064', '2', '60', '0', '1', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3065', '2', '6002', '60', '2', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3066', '2', '600201', '6002', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3067', '2', '600202', '6002', '3', '0', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33');
INSERT INTO `sp_role_authority` VALUES ('3068', '2', '10', '0', '1', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3069', '2', '1001', '10', '2', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3070', '2', '100101', '1001', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3071', '2', '100102', '1001', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3072', '2', '100103', '1001', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3073', '2', '100105', '1001', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3074', '2', '1002', '10', '2', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3075', '2', '100201', '1002', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3076', '2', '100202', '1002', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3077', '2', '100203', '1002', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3078', '2', '100204', '1002', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3079', '2', '100205', '1002', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3080', '2', '1003', '10', '2', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3081', '2', '100301', '1003', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3082', '2', '100302', '1003', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3083', '2', '100303', '1003', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3084', '2', '1004', '10', '2', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3085', '2', '100401', '1004', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3086', '2', '15', '0', '1', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3087', '2', '1501', '15', '2', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3088', '2', '1502', '15', '2', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3089', '2', '150201', '1502', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3090', '2', '150202', '1502', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3091', '2', '1503', '15', '2', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3092', '2', '150301', '1503', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3093', '2', '150302', '1503', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3094', '2', '1504', '15', '2', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3095', '2', '150401', '1504', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3096', '2', '1505', '15', '2', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3097', '2', '150501', '1505', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3098', '2', '20', '0', '1', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3099', '2', '2001', '20', '2', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3100', '2', '200101', '2001', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3101', '2', '20010101', '200101', '4', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3102', '2', '20010102', '200101', '4', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3103', '2', '200102', '2001', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3104', '2', '20010201', '200102', '4', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3105', '2', '20010202', '200102', '4', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3106', '2', '200103', '2001', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3107', '2', '20010301', '200103', '4', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3108', '2', '200104', '2001', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3109', '2', '20010401', '200104', '4', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3110', '2', '2002', '20', '2', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3111', '2', '200201', '2002', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3112', '2', '20020101', '200201', '4', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3113', '2', '20020102', '200201', '4', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3114', '2', '200202', '2002', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3115', '2', '20020201', '200202', '4', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3116', '2', '20020202', '200202', '4', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3117', '2', '200203', '2002', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3118', '2', '20020301', '200203', '4', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3119', '2', '200204', '2002', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3120', '2', '20020401', '200204', '4', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3121', '2', '25', '0', '1', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3122', '2', '2501', '25', '2', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3123', '2', '250101', '2501', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3124', '2', '250102', '2501', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3125', '2', '250103', '2501', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3126', '2', '250104', '2501', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3127', '2', '2502', '25', '2', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3128', '2', '30', '0', '1', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3129', '2', '3001', '30', '2', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3130', '2', '3002', '30', '2', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3131', '2', '3003', '30', '2', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3132', '2', '3004', '30', '2', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3133', '2', '3005', '30', '2', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3134', '2', '35', '0', '1', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3135', '2', '3500', '35', '2', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3136', '2', '350001', '3500', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3137', '2', '35000101', '350001', '4', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3138', '2', '35000102', '350001', '4', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3139', '2', '350002', '3500', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3140', '2', '35000201', '350002', '4', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3141', '2', '35000202', '350002', '4', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3142', '2', '350003', '3500', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3143', '2', '35000301', '350003', '4', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3144', '2', '350004', '3500', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3145', '2', '35000401', '350004', '4', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3146', '2', '3501', '35', '2', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3147', '2', '350101', '3501', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3148', '2', '350102', '3501', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3149', '2', '350103', '3501', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3150', '2', '350104', '3501', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3151', '2', '3502', '35', '2', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3152', '2', '350201', '3502', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3153', '2', '350202', '3502', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3154', '2', '40', '0', '1', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3155', '2', '4001', '40', '2', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3156', '2', '4002', '40', '2', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3157', '2', '4003', '40', '2', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3158', '2', '45', '0', '1', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3159', '2', '4501', '45', '2', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3160', '2', '450101', '4501', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3161', '2', '450102', '4501', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3162', '2', '450103', '4501', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3163', '2', '4502', '45', '2', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3164', '2', '450201', '4502', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3165', '2', '450202', '4502', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3166', '2', '450203', '4502', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3167', '2', '50', '0', '1', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3168', '2', '5001', '50', '2', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3169', '2', '5002', '50', '2', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3170', '2', '5003', '50', '2', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3171', '2', '5004', '50', '2', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3172', '2', '5005', '50', '2', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3173', '2', '55', '0', '1', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3174', '2', '5501', '55', '2', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3175', '2', '5502', '55', '2', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3176', '2', '5503', '55', '2', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3177', '2', '5504', '55', '2', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3178', '2', '60', '0', '1', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3179', '2', '6002', '60', '2', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3180', '2', '600201', '6002', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3181', '2', '600202', '6002', '3', '0', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44');
INSERT INTO `sp_role_authority` VALUES ('3182', '2', '10', '0', '1', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3183', '2', '1001', '10', '2', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3184', '2', '100101', '1001', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3185', '2', '100102', '1001', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3186', '2', '100103', '1001', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3187', '2', '100105', '1001', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3188', '2', '1002', '10', '2', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3189', '2', '100201', '1002', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3190', '2', '100202', '1002', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3191', '2', '100203', '1002', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3192', '2', '100204', '1002', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3193', '2', '100205', '1002', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3194', '2', '1003', '10', '2', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3195', '2', '100301', '1003', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3196', '2', '100302', '1003', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3197', '2', '100303', '1003', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3198', '2', '1004', '10', '2', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3199', '2', '100401', '1004', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3200', '2', '15', '0', '1', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3201', '2', '1501', '15', '2', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3202', '2', '1502', '15', '2', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3203', '2', '150201', '1502', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3204', '2', '150202', '1502', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3205', '2', '1503', '15', '2', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3206', '2', '150301', '1503', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3207', '2', '150302', '1503', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3208', '2', '1504', '15', '2', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3209', '2', '150401', '1504', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3210', '2', '1505', '15', '2', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3211', '2', '150501', '1505', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3212', '2', '20', '0', '1', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3213', '2', '2001', '20', '2', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3214', '2', '200101', '2001', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3215', '2', '20010101', '200101', '4', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3216', '2', '20010102', '200101', '4', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3217', '2', '200102', '2001', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3218', '2', '20010201', '200102', '4', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3219', '2', '20010202', '200102', '4', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3220', '2', '200103', '2001', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3221', '2', '20010301', '200103', '4', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3222', '2', '200104', '2001', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3223', '2', '20010401', '200104', '4', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3224', '2', '2002', '20', '2', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3225', '2', '200201', '2002', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3226', '2', '20020101', '200201', '4', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3227', '2', '20020102', '200201', '4', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3228', '2', '200202', '2002', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3229', '2', '20020201', '200202', '4', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3230', '2', '20020202', '200202', '4', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3231', '2', '200203', '2002', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3232', '2', '20020301', '200203', '4', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3233', '2', '200204', '2002', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3234', '2', '20020401', '200204', '4', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3235', '2', '25', '0', '1', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3236', '2', '2501', '25', '2', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3237', '2', '250101', '2501', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3238', '2', '250102', '2501', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3239', '2', '250103', '2501', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3240', '2', '250104', '2501', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3241', '2', '2502', '25', '2', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3242', '2', '30', '0', '1', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3243', '2', '3001', '30', '2', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3244', '2', '3002', '30', '2', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3245', '2', '3003', '30', '2', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3246', '2', '3004', '30', '2', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3247', '2', '3005', '30', '2', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3248', '2', '35', '0', '1', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3249', '2', '3500', '35', '2', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3250', '2', '350001', '3500', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3251', '2', '35000101', '350001', '4', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3252', '2', '35000102', '350001', '4', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3253', '2', '350002', '3500', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3254', '2', '35000201', '350002', '4', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3255', '2', '35000202', '350002', '4', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3256', '2', '350003', '3500', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3257', '2', '35000301', '350003', '4', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3258', '2', '350004', '3500', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3259', '2', '35000401', '350004', '4', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3260', '2', '3501', '35', '2', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3261', '2', '350101', '3501', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3262', '2', '350102', '3501', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3263', '2', '350103', '3501', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3264', '2', '350104', '3501', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3265', '2', '3502', '35', '2', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3266', '2', '350201', '3502', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3267', '2', '350202', '3502', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3268', '2', '40', '0', '1', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3269', '2', '4001', '40', '2', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3270', '2', '4002', '40', '2', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3271', '2', '4003', '40', '2', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3272', '2', '45', '0', '1', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3273', '2', '4501', '45', '2', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3274', '2', '450101', '4501', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3275', '2', '450102', '4501', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3276', '2', '450103', '4501', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3277', '2', '4502', '45', '2', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3278', '2', '450201', '4502', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3279', '2', '450202', '4502', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3280', '2', '450203', '4502', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3281', '2', '50', '0', '1', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3282', '2', '5001', '50', '2', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3283', '2', '5002', '50', '2', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3284', '2', '5003', '50', '2', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3285', '2', '5004', '50', '2', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3286', '2', '5005', '50', '2', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3287', '2', '55', '0', '1', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3288', '2', '5501', '55', '2', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3289', '2', '5502', '55', '2', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3290', '2', '5503', '55', '2', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3291', '2', '5504', '55', '2', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3292', '2', '60', '0', '1', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3293', '2', '6002', '60', '2', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3294', '2', '600201', '6002', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3295', '2', '600202', '6002', '3', '0', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18');
INSERT INTO `sp_role_authority` VALUES ('3296', '2', '10', '0', '1', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3297', '2', '1001', '10', '2', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3298', '2', '100101', '1001', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3299', '2', '100102', '1001', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3300', '2', '100103', '1001', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3301', '2', '100105', '1001', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3302', '2', '1002', '10', '2', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3303', '2', '100201', '1002', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3304', '2', '100202', '1002', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3305', '2', '100203', '1002', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3306', '2', '100204', '1002', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3307', '2', '100205', '1002', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3308', '2', '1003', '10', '2', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3309', '2', '100301', '1003', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3310', '2', '100302', '1003', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3311', '2', '100303', '1003', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3312', '2', '1004', '10', '2', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3313', '2', '100401', '1004', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3314', '2', '15', '0', '1', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3315', '2', '1501', '15', '2', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3316', '2', '1502', '15', '2', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3317', '2', '150201', '1502', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3318', '2', '150202', '1502', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3319', '2', '1503', '15', '2', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3320', '2', '150301', '1503', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3321', '2', '150302', '1503', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3322', '2', '1504', '15', '2', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3323', '2', '150401', '1504', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3324', '2', '1505', '15', '2', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3325', '2', '150501', '1505', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3326', '2', '20', '0', '1', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3327', '2', '2001', '20', '2', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3328', '2', '200101', '2001', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3329', '2', '20010101', '200101', '4', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3330', '2', '20010102', '200101', '4', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3331', '2', '200102', '2001', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3332', '2', '20010201', '200102', '4', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3333', '2', '20010202', '200102', '4', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3334', '2', '200103', '2001', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3335', '2', '20010301', '200103', '4', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3336', '2', '200104', '2001', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3337', '2', '20010401', '200104', '4', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3338', '2', '2002', '20', '2', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3339', '2', '200201', '2002', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3340', '2', '20020101', '200201', '4', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3341', '2', '20020102', '200201', '4', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3342', '2', '200202', '2002', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3343', '2', '20020201', '200202', '4', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3344', '2', '20020202', '200202', '4', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3345', '2', '200203', '2002', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3346', '2', '20020301', '200203', '4', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3347', '2', '200204', '2002', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3348', '2', '20020401', '200204', '4', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3349', '2', '25', '0', '1', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3350', '2', '2501', '25', '2', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3351', '2', '250101', '2501', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3352', '2', '250102', '2501', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3353', '2', '250103', '2501', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3354', '2', '250104', '2501', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3355', '2', '2502', '25', '2', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3356', '2', '30', '0', '1', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3357', '2', '3001', '30', '2', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3358', '2', '3002', '30', '2', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3359', '2', '3003', '30', '2', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3360', '2', '3004', '30', '2', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3361', '2', '3005', '30', '2', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3362', '2', '35', '0', '1', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3363', '2', '3500', '35', '2', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3364', '2', '350001', '3500', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3365', '2', '35000101', '350001', '4', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3366', '2', '35000102', '350001', '4', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3367', '2', '350002', '3500', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3368', '2', '35000201', '350002', '4', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3369', '2', '35000202', '350002', '4', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3370', '2', '350003', '3500', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3371', '2', '35000301', '350003', '4', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3372', '2', '350004', '3500', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3373', '2', '35000401', '350004', '4', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3374', '2', '3501', '35', '2', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3375', '2', '350101', '3501', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3376', '2', '350102', '3501', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3377', '2', '350103', '3501', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3378', '2', '350104', '3501', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3379', '2', '3502', '35', '2', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3380', '2', '350201', '3502', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3381', '2', '350202', '3502', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3382', '2', '40', '0', '1', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3383', '2', '4001', '40', '2', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3384', '2', '4002', '40', '2', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3385', '2', '4003', '40', '2', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3386', '2', '45', '0', '1', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3387', '2', '4501', '45', '2', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3388', '2', '450101', '4501', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3389', '2', '450102', '4501', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3390', '2', '450103', '4501', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3391', '2', '4502', '45', '2', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3392', '2', '450201', '4502', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3393', '2', '450202', '4502', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3394', '2', '450203', '4502', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3395', '2', '50', '0', '1', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3396', '2', '5001', '50', '2', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3397', '2', '5002', '50', '2', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3398', '2', '5003', '50', '2', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3399', '2', '5004', '50', '2', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3400', '2', '5005', '50', '2', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3401', '2', '55', '0', '1', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3402', '2', '5501', '55', '2', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3403', '2', '5502', '55', '2', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3404', '2', '5503', '55', '2', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3405', '2', '5504', '55', '2', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3406', '2', '60', '0', '1', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3407', '2', '6002', '60', '2', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3408', '2', '600201', '6002', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3409', '2', '600202', '6002', '3', '0', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20');
INSERT INTO `sp_role_authority` VALUES ('3410', '1', '10', '0', '1', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3411', '1', '1001', '10', '2', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3412', '1', '100101', '1001', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3413', '1', '100102', '1001', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3414', '1', '100103', '1001', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3415', '1', '100105', '1001', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3416', '1', '1002', '10', '2', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3417', '1', '100201', '1002', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3418', '1', '100202', '1002', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3419', '1', '100203', '1002', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3420', '1', '100204', '1002', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3421', '1', '100205', '1002', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3422', '1', '1003', '10', '2', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3423', '1', '100301', '1003', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3424', '1', '100302', '1003', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3425', '1', '100303', '1003', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3426', '1', '1004', '10', '2', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3427', '1', '100401', '1004', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3428', '1', '1005', '10', '2', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3429', '1', '15', '0', '1', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3430', '1', '1501', '15', '2', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3431', '1', '1502', '15', '2', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3432', '1', '150201', '1502', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3433', '1', '150202', '1502', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3434', '1', '1503', '15', '2', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3435', '1', '150301', '1503', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3436', '1', '150302', '1503', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3437', '1', '1504', '15', '2', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3438', '1', '150401', '1504', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3439', '1', '1505', '15', '2', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3440', '1', '150501', '1505', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3441', '1', '20', '0', '1', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3442', '1', '2001', '20', '2', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3443', '1', '200101', '2001', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3444', '1', '20010101', '200101', '4', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3445', '1', '20010102', '200101', '4', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3446', '1', '200102', '2001', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3447', '1', '20010201', '200102', '4', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3448', '1', '20010202', '200102', '4', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3449', '1', '200103', '2001', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3450', '1', '20010301', '200103', '4', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3451', '1', '200104', '2001', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3452', '1', '20010401', '200104', '4', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3453', '1', '2002', '20', '2', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3454', '1', '200201', '2002', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3455', '1', '20020101', '200201', '4', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3456', '1', '20020102', '200201', '4', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3457', '1', '200202', '2002', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3458', '1', '20020201', '200202', '4', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3459', '1', '20020202', '200202', '4', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3460', '1', '200203', '2002', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3461', '1', '20020301', '200203', '4', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3462', '1', '200204', '2002', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3463', '1', '20020401', '200204', '4', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3464', '1', '25', '0', '1', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3465', '1', '2501', '25', '2', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3466', '1', '250101', '2501', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3467', '1', '250102', '2501', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3468', '1', '250103', '2501', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3469', '1', '250104', '2501', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3470', '1', '2502', '25', '2', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3471', '1', '30', '0', '1', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3472', '1', '3001', '30', '2', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3473', '1', '3002', '30', '2', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3474', '1', '3003', '30', '2', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3475', '1', '3004', '30', '2', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3476', '1', '3005', '30', '2', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3477', '1', '35', '0', '1', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3478', '1', '3501', '35', '2', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3479', '1', '350101', '3501', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3480', '1', '350102', '3501', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3481', '1', '350103', '3501', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3482', '1', '350104', '3501', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3483', '1', '3502', '35', '2', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3484', '1', '350201', '3502', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3485', '1', '350202', '3502', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3486', '1', '40', '0', '1', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3487', '1', '4001', '40', '2', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3488', '1', '4002', '40', '2', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3489', '1', '4003', '40', '2', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3490', '1', '45', '0', '1', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3491', '1', '4501', '45', '2', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3492', '1', '450101', '4501', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3493', '1', '450102', '4501', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3494', '1', '450103', '4501', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3495', '1', '4502', '45', '2', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3496', '1', '450201', '4502', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3497', '1', '450202', '4502', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3498', '1', '450203', '4502', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3499', '1', '50', '0', '1', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3500', '1', '5001', '50', '2', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3501', '1', '5002', '50', '2', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3502', '1', '5003', '50', '2', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3503', '1', '5004', '50', '2', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3504', '1', '5005', '50', '2', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3505', '1', '55', '0', '1', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3506', '1', '5501', '55', '2', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3507', '1', '5502', '55', '2', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3508', '1', '5503', '55', '2', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3509', '1', '5504', '55', '2', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3510', '1', '60', '0', '1', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3511', '1', '6002', '60', '2', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3512', '1', '600201', '6002', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3513', '1', '600202', '6002', '3', '1', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17');
INSERT INTO `sp_role_authority` VALUES ('3514', '2', '10', '0', '1', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3515', '2', '1001', '10', '2', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3516', '2', '100101', '1001', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3517', '2', '100102', '1001', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3518', '2', '100103', '1001', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3519', '2', '100105', '1001', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3520', '2', '1002', '10', '2', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3521', '2', '100201', '1002', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3522', '2', '100202', '1002', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3523', '2', '100203', '1002', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3524', '2', '100204', '1002', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3525', '2', '100205', '1002', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3526', '2', '1003', '10', '2', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3527', '2', '100301', '1003', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3528', '2', '100302', '1003', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3529', '2', '100303', '1003', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3530', '2', '1004', '10', '2', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3531', '2', '100401', '1004', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3532', '2', '15', '0', '1', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3533', '2', '1501', '15', '2', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3534', '2', '1502', '15', '2', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3535', '2', '150201', '1502', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3536', '2', '150202', '1502', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3537', '2', '1503', '15', '2', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3538', '2', '150301', '1503', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3539', '2', '150302', '1503', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3540', '2', '1504', '15', '2', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3541', '2', '150401', '1504', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3542', '2', '1505', '15', '2', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3543', '2', '150501', '1505', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3544', '2', '20', '0', '1', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3545', '2', '2001', '20', '2', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3546', '2', '200101', '2001', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3547', '2', '20010101', '200101', '4', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3548', '2', '20010102', '200101', '4', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3549', '2', '200102', '2001', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3550', '2', '20010201', '200102', '4', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3551', '2', '20010202', '200102', '4', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3552', '2', '200103', '2001', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3553', '2', '20010301', '200103', '4', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3554', '2', '200104', '2001', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3555', '2', '20010401', '200104', '4', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3556', '2', '2002', '20', '2', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3557', '2', '200201', '2002', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3558', '2', '20020101', '200201', '4', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3559', '2', '20020102', '200201', '4', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3560', '2', '200202', '2002', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3561', '2', '20020201', '200202', '4', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3562', '2', '20020202', '200202', '4', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3563', '2', '200203', '2002', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3564', '2', '20020301', '200203', '4', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3565', '2', '200204', '2002', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3566', '2', '20020401', '200204', '4', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3567', '2', '25', '0', '1', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3568', '2', '2501', '25', '2', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3569', '2', '250101', '2501', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3570', '2', '250102', '2501', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3571', '2', '250103', '2501', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3572', '2', '250104', '2501', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3573', '2', '2502', '25', '2', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3574', '2', '30', '0', '1', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3575', '2', '3001', '30', '2', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3576', '2', '3002', '30', '2', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3577', '2', '3003', '30', '2', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3578', '2', '3004', '30', '2', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3579', '2', '3005', '30', '2', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3580', '2', '35', '0', '1', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3581', '2', '3500', '35', '2', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3582', '2', '350001', '3500', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3583', '2', '35000101', '350001', '4', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3584', '2', '35000102', '350001', '4', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3585', '2', '350002', '3500', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3586', '2', '35000201', '350002', '4', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3587', '2', '35000202', '350002', '4', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3588', '2', '350003', '3500', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3589', '2', '35000301', '350003', '4', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3590', '2', '350004', '3500', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3591', '2', '35000401', '350004', '4', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3592', '2', '3501', '35', '2', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3593', '2', '350101', '3501', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3594', '2', '350102', '3501', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3595', '2', '350103', '3501', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3596', '2', '350104', '3501', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3597', '2', '3502', '35', '2', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3598', '2', '350201', '3502', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3599', '2', '350202', '3502', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3600', '2', '40', '0', '1', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3601', '2', '4001', '40', '2', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3602', '2', '4002', '40', '2', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3603', '2', '4003', '40', '2', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3604', '2', '45', '0', '1', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3605', '2', '4501', '45', '2', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3606', '2', '450101', '4501', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3607', '2', '450102', '4501', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3608', '2', '450103', '4501', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3609', '2', '4502', '45', '2', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3610', '2', '450201', '4502', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3611', '2', '450202', '4502', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3612', '2', '450203', '4502', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3613', '2', '50', '0', '1', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3614', '2', '5001', '50', '2', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3615', '2', '5002', '50', '2', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3616', '2', '5003', '50', '2', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3617', '2', '5004', '50', '2', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3618', '2', '5005', '50', '2', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3619', '2', '55', '0', '1', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3620', '2', '5501', '55', '2', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3621', '2', '5502', '55', '2', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3622', '2', '5503', '55', '2', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3623', '2', '5504', '55', '2', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3624', '2', '60', '0', '1', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3625', '2', '6002', '60', '2', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3626', '2', '600201', '6002', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3627', '2', '600202', '6002', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3628', '2', '600203', '6002', '3', '0', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44');
INSERT INTO `sp_role_authority` VALUES ('3629', '2', '10', '0', '1', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3630', '2', '1001', '10', '2', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3631', '2', '100101', '1001', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3632', '2', '100102', '1001', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3633', '2', '100103', '1001', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3634', '2', '100105', '1001', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3635', '2', '1002', '10', '2', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3636', '2', '100201', '1002', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3637', '2', '100202', '1002', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3638', '2', '100203', '1002', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3639', '2', '100204', '1002', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3640', '2', '100205', '1002', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3641', '2', '1003', '10', '2', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3642', '2', '100301', '1003', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3643', '2', '100302', '1003', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3644', '2', '100303', '1003', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3645', '2', '1004', '10', '2', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3646', '2', '100401', '1004', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3647', '2', '15', '0', '1', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3648', '2', '1501', '15', '2', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3649', '2', '1502', '15', '2', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3650', '2', '150201', '1502', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3651', '2', '150202', '1502', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3652', '2', '1503', '15', '2', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3653', '2', '150301', '1503', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3654', '2', '150302', '1503', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3655', '2', '1504', '15', '2', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3656', '2', '150401', '1504', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3657', '2', '1505', '15', '2', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3658', '2', '150501', '1505', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3659', '2', '20', '0', '1', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3660', '2', '2001', '20', '2', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3661', '2', '200101', '2001', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3662', '2', '20010101', '200101', '4', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3663', '2', '20010102', '200101', '4', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3664', '2', '200102', '2001', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3665', '2', '20010201', '200102', '4', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3666', '2', '20010202', '200102', '4', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3667', '2', '200103', '2001', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3668', '2', '20010301', '200103', '4', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3669', '2', '200104', '2001', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3670', '2', '20010401', '200104', '4', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3671', '2', '2002', '20', '2', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3672', '2', '200201', '2002', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3673', '2', '20020101', '200201', '4', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3674', '2', '20020102', '200201', '4', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3675', '2', '200202', '2002', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3676', '2', '20020201', '200202', '4', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3677', '2', '20020202', '200202', '4', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3678', '2', '200203', '2002', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3679', '2', '20020301', '200203', '4', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3680', '2', '200204', '2002', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3681', '2', '20020401', '200204', '4', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3682', '2', '25', '0', '1', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3683', '2', '2501', '25', '2', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3684', '2', '250101', '2501', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3685', '2', '250102', '2501', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3686', '2', '250103', '2501', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3687', '2', '250104', '2501', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3688', '2', '2502', '25', '2', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3689', '2', '30', '0', '1', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3690', '2', '3001', '30', '2', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3691', '2', '3002', '30', '2', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3692', '2', '3003', '30', '2', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3693', '2', '3004', '30', '2', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3694', '2', '3005', '30', '2', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3695', '2', '35', '0', '1', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3696', '2', '3500', '35', '2', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3697', '2', '350001', '3500', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3698', '2', '35000101', '350001', '4', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3699', '2', '35000102', '350001', '4', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3700', '2', '350002', '3500', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3701', '2', '35000201', '350002', '4', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3702', '2', '35000202', '350002', '4', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3703', '2', '350003', '3500', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3704', '2', '35000301', '350003', '4', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3705', '2', '350004', '3500', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3706', '2', '35000401', '350004', '4', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3707', '2', '3501', '35', '2', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3708', '2', '350101', '3501', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3709', '2', '350102', '3501', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3710', '2', '350103', '3501', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3711', '2', '350104', '3501', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3712', '2', '3502', '35', '2', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3713', '2', '350201', '3502', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3714', '2', '350202', '3502', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3715', '2', '40', '0', '1', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3716', '2', '4001', '40', '2', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3717', '2', '4002', '40', '2', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3718', '2', '4003', '40', '2', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3719', '2', '45', '0', '1', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3720', '2', '4501', '45', '2', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3721', '2', '450101', '4501', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3722', '2', '450102', '4501', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3723', '2', '450103', '4501', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3724', '2', '4502', '45', '2', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3725', '2', '450201', '4502', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3726', '2', '450202', '4502', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3727', '2', '450203', '4502', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3728', '2', '50', '0', '1', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3729', '2', '5001', '50', '2', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3730', '2', '5002', '50', '2', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3731', '2', '5003', '50', '2', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3732', '2', '5004', '50', '2', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3733', '2', '5005', '50', '2', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3734', '2', '55', '0', '1', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3735', '2', '5501', '55', '2', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3736', '2', '5502', '55', '2', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3737', '2', '5503', '55', '2', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3738', '2', '5504', '55', '2', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3739', '2', '60', '0', '1', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3740', '2', '6002', '60', '2', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3741', '2', '600201', '6002', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3742', '2', '600202', '6002', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3743', '2', '600203', '6002', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3744', '2', '600204', '6002', '3', '0', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25');
INSERT INTO `sp_role_authority` VALUES ('3745', '2', '10', '0', '1', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3746', '2', '1001', '10', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3747', '2', '100101', '1001', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3748', '2', '100102', '1001', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3749', '2', '100103', '1001', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3750', '2', '100105', '1001', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3751', '2', '1002', '10', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3752', '2', '100201', '1002', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3753', '2', '100202', '1002', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3754', '2', '100203', '1002', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3755', '2', '100204', '1002', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3756', '2', '100205', '1002', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3757', '2', '1003', '10', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3758', '2', '100301', '1003', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3759', '2', '100302', '1003', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3760', '2', '100303', '1003', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3761', '2', '1004', '10', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3762', '2', '100401', '1004', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3763', '2', '1005', '10', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3764', '2', '1006', '10', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3765', '2', '100602', '1006', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3766', '2', '15', '0', '1', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3767', '2', '1501', '15', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3768', '2', '1502', '15', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3769', '2', '150201', '1502', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3770', '2', '150202', '1502', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3771', '2', '1503', '15', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3772', '2', '150301', '1503', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3773', '2', '150302', '1503', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3774', '2', '1504', '15', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3775', '2', '150401', '1504', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3776', '2', '1505', '15', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3777', '2', '150501', '1505', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3778', '2', '20', '0', '1', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3779', '2', '2001', '20', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3780', '2', '200101', '2001', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3781', '2', '20010101', '200101', '4', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3782', '2', '20010102', '200101', '4', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3783', '2', '200102', '2001', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3784', '2', '20010201', '200102', '4', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3785', '2', '20010202', '200102', '4', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3786', '2', '200103', '2001', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3787', '2', '20010301', '200103', '4', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3788', '2', '200104', '2001', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3789', '2', '20010401', '200104', '4', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3790', '2', '2002', '20', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3791', '2', '200201', '2002', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3792', '2', '20020101', '200201', '4', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3793', '2', '20020102', '200201', '4', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3794', '2', '200202', '2002', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3795', '2', '20020201', '200202', '4', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3796', '2', '20020202', '200202', '4', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3797', '2', '200203', '2002', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3798', '2', '20020301', '200203', '4', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3799', '2', '200204', '2002', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3800', '2', '20020401', '200204', '4', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3801', '2', '25', '0', '1', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3802', '2', '2501', '25', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3803', '2', '250101', '2501', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3804', '2', '250102', '2501', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3805', '2', '250103', '2501', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3806', '2', '250104', '2501', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3807', '2', '2502', '25', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3808', '2', '30', '0', '1', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3809', '2', '3001', '30', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3810', '2', '3002', '30', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3811', '2', '3003', '30', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3812', '2', '3004', '30', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3813', '2', '3005', '30', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3814', '2', '35', '0', '1', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3815', '2', '3500', '35', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3816', '2', '350001', '3500', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3817', '2', '35000101', '350001', '4', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3818', '2', '35000102', '350001', '4', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3819', '2', '350002', '3500', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3820', '2', '35000201', '350002', '4', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3821', '2', '35000202', '350002', '4', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3822', '2', '350003', '3500', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3823', '2', '35000301', '350003', '4', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3824', '2', '350004', '3500', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3825', '2', '35000401', '350004', '4', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3826', '2', '3501', '35', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3827', '2', '350101', '3501', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3828', '2', '350102', '3501', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3829', '2', '350103', '3501', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3830', '2', '350104', '3501', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3831', '2', '3502', '35', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3832', '2', '350201', '3502', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3833', '2', '350202', '3502', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3834', '2', '40', '0', '1', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3835', '2', '4001', '40', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3836', '2', '4002', '40', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3837', '2', '4003', '40', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3838', '2', '45', '0', '1', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3839', '2', '4501', '45', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3840', '2', '450101', '4501', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3841', '2', '450102', '4501', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3842', '2', '450103', '4501', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3843', '2', '4502', '45', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3844', '2', '450201', '4502', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3845', '2', '450202', '4502', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3846', '2', '450203', '4502', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3847', '2', '50', '0', '1', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3848', '2', '5001', '50', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3849', '2', '5002', '50', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3850', '2', '5003', '50', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3851', '2', '5004', '50', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3852', '2', '5005', '50', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3853', '2', '55', '0', '1', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3854', '2', '5501', '55', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3855', '2', '5502', '55', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3856', '2', '5503', '55', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3857', '2', '5504', '55', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3858', '2', '60', '0', '1', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3859', '2', '6002', '60', '2', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3860', '2', '600201', '6002', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3861', '2', '600202', '6002', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3862', '2', '600203', '6002', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3863', '2', '600204', '6002', '3', '0', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31');
INSERT INTO `sp_role_authority` VALUES ('3864', '2', '10', '0', '1', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3865', '2', '1001', '10', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3866', '2', '100101', '1001', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3867', '2', '100102', '1001', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3868', '2', '100103', '1001', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3869', '2', '100105', '1001', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3870', '2', '1002', '10', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3871', '2', '100201', '1002', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3872', '2', '100202', '1002', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3873', '2', '100203', '1002', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3874', '2', '100204', '1002', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3875', '2', '100205', '1002', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3876', '2', '1003', '10', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3877', '2', '100301', '1003', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3878', '2', '100302', '1003', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3879', '2', '100303', '1003', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3880', '2', '1004', '10', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3881', '2', '100401', '1004', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3882', '2', '1005', '10', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3883', '2', '1006', '10', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3884', '2', '100601', '1006', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3885', '2', '100602', '1006', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3886', '2', '15', '0', '1', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3887', '2', '1501', '15', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3888', '2', '1502', '15', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3889', '2', '150201', '1502', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3890', '2', '150202', '1502', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3891', '2', '1503', '15', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3892', '2', '150301', '1503', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3893', '2', '150302', '1503', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3894', '2', '1504', '15', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3895', '2', '150401', '1504', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3896', '2', '1505', '15', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3897', '2', '150501', '1505', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3898', '2', '20', '0', '1', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3899', '2', '2001', '20', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3900', '2', '200101', '2001', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3901', '2', '20010101', '200101', '4', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3902', '2', '20010102', '200101', '4', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3903', '2', '200102', '2001', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3904', '2', '20010201', '200102', '4', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3905', '2', '20010202', '200102', '4', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3906', '2', '200103', '2001', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3907', '2', '20010301', '200103', '4', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3908', '2', '200104', '2001', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3909', '2', '20010401', '200104', '4', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3910', '2', '2002', '20', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3911', '2', '200201', '2002', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3912', '2', '20020101', '200201', '4', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3913', '2', '20020102', '200201', '4', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3914', '2', '200202', '2002', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3915', '2', '20020201', '200202', '4', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3916', '2', '20020202', '200202', '4', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3917', '2', '200203', '2002', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3918', '2', '20020301', '200203', '4', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3919', '2', '200204', '2002', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3920', '2', '20020401', '200204', '4', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3921', '2', '25', '0', '1', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3922', '2', '2501', '25', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3923', '2', '250101', '2501', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3924', '2', '250102', '2501', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3925', '2', '250103', '2501', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3926', '2', '250104', '2501', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3927', '2', '2502', '25', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3928', '2', '30', '0', '1', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3929', '2', '3001', '30', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3930', '2', '3002', '30', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3931', '2', '3003', '30', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3932', '2', '3004', '30', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3933', '2', '3005', '30', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3934', '2', '35', '0', '1', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3935', '2', '3500', '35', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3936', '2', '350001', '3500', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3937', '2', '35000101', '350001', '4', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3938', '2', '35000102', '350001', '4', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3939', '2', '350002', '3500', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3940', '2', '35000201', '350002', '4', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3941', '2', '35000202', '350002', '4', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3942', '2', '350003', '3500', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3943', '2', '35000301', '350003', '4', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3944', '2', '350004', '3500', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3945', '2', '35000401', '350004', '4', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3946', '2', '3501', '35', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3947', '2', '350101', '3501', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3948', '2', '350102', '3501', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3949', '2', '350103', '3501', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3950', '2', '350104', '3501', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3951', '2', '3502', '35', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3952', '2', '350201', '3502', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3953', '2', '350202', '3502', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3954', '2', '40', '0', '1', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3955', '2', '4001', '40', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3956', '2', '4002', '40', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3957', '2', '4003', '40', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3958', '2', '45', '0', '1', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3959', '2', '4501', '45', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3960', '2', '450101', '4501', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3961', '2', '450102', '4501', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3962', '2', '450103', '4501', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3963', '2', '4502', '45', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3964', '2', '450201', '4502', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3965', '2', '450202', '4502', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3966', '2', '450203', '4502', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3967', '2', '50', '0', '1', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3968', '2', '5001', '50', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3969', '2', '5002', '50', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3970', '2', '5003', '50', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3971', '2', '5004', '50', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3972', '2', '5005', '50', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3973', '2', '55', '0', '1', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3974', '2', '5501', '55', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3975', '2', '5502', '55', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3976', '2', '5503', '55', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3977', '2', '5504', '55', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3978', '2', '60', '0', '1', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3979', '2', '6002', '60', '2', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3980', '2', '600201', '6002', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3981', '2', '600202', '6002', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3982', '2', '600203', '6002', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3983', '2', '600204', '6002', '3', '0', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3984', '2', '10', '0', '1', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3985', '2', '1001', '10', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3986', '2', '100101', '1001', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3987', '2', '100102', '1001', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3988', '2', '100103', '1001', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3989', '2', '100105', '1001', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3990', '2', '1002', '10', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3991', '2', '100201', '1002', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3992', '2', '100202', '1002', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3993', '2', '100203', '1002', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3994', '2', '100204', '1002', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3995', '2', '100205', '1002', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3996', '2', '1003', '10', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3997', '2', '100301', '1003', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3998', '2', '100302', '1003', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('3999', '2', '100303', '1003', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4000', '2', '1004', '10', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4001', '2', '100401', '1004', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4002', '2', '1005', '10', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4003', '2', '1006', '10', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4004', '2', '100601', '1006', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4005', '2', '100602', '1006', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4006', '2', '100603', '1006', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4007', '2', '15', '0', '1', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4008', '2', '1501', '15', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4009', '2', '1502', '15', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4010', '2', '150201', '1502', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4011', '2', '150202', '1502', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4012', '2', '1503', '15', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4013', '2', '150301', '1503', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4014', '2', '150302', '1503', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4015', '2', '1504', '15', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4016', '2', '150401', '1504', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4017', '2', '1505', '15', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4018', '2', '150501', '1505', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4019', '2', '20', '0', '1', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4020', '2', '2001', '20', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4021', '2', '200101', '2001', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4022', '2', '20010101', '200101', '4', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4023', '2', '20010102', '200101', '4', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4024', '2', '200102', '2001', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4025', '2', '20010201', '200102', '4', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4026', '2', '20010202', '200102', '4', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4027', '2', '200103', '2001', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4028', '2', '20010301', '200103', '4', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4029', '2', '200104', '2001', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4030', '2', '20010401', '200104', '4', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4031', '2', '2002', '20', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4032', '2', '200201', '2002', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4033', '2', '20020101', '200201', '4', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4034', '2', '20020102', '200201', '4', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4035', '2', '200202', '2002', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4036', '2', '20020201', '200202', '4', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4037', '2', '20020202', '200202', '4', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4038', '2', '200203', '2002', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4039', '2', '20020301', '200203', '4', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4040', '2', '200204', '2002', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4041', '2', '20020401', '200204', '4', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4042', '2', '25', '0', '1', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4043', '2', '2501', '25', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4044', '2', '250101', '2501', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4045', '2', '250102', '2501', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4046', '2', '250103', '2501', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4047', '2', '250104', '2501', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4048', '2', '2502', '25', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4049', '2', '30', '0', '1', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4050', '2', '3001', '30', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4051', '2', '3002', '30', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4052', '2', '3003', '30', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4053', '2', '3004', '30', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4054', '2', '3005', '30', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4055', '2', '35', '0', '1', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4056', '2', '3500', '35', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4057', '2', '350001', '3500', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4058', '2', '35000101', '350001', '4', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4059', '2', '35000102', '350001', '4', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4060', '2', '350002', '3500', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4061', '2', '35000201', '350002', '4', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4062', '2', '35000202', '350002', '4', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4063', '2', '350003', '3500', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4064', '2', '35000301', '350003', '4', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4065', '2', '350004', '3500', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4066', '2', '35000401', '350004', '4', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4067', '2', '3501', '35', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4068', '2', '350101', '3501', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4069', '2', '350102', '3501', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4070', '2', '350103', '3501', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4071', '2', '350104', '3501', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4072', '2', '3502', '35', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4073', '2', '350201', '3502', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4074', '2', '350202', '3502', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4075', '2', '40', '0', '1', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4076', '2', '4001', '40', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4077', '2', '4002', '40', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4078', '2', '4003', '40', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4079', '2', '45', '0', '1', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4080', '2', '4501', '45', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4081', '2', '450101', '4501', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4082', '2', '450102', '4501', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4083', '2', '450103', '4501', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4084', '2', '4502', '45', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4085', '2', '450201', '4502', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4086', '2', '450202', '4502', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4087', '2', '450203', '4502', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4088', '2', '50', '0', '1', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4089', '2', '5001', '50', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4090', '2', '5002', '50', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4091', '2', '5003', '50', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4092', '2', '5004', '50', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4093', '2', '5005', '50', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4094', '2', '55', '0', '1', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4095', '2', '5501', '55', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4096', '2', '5502', '55', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4097', '2', '5503', '55', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4098', '2', '5504', '55', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4099', '2', '60', '0', '1', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4100', '2', '6002', '60', '2', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4101', '2', '600201', '6002', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4102', '2', '600202', '6002', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4103', '2', '600203', '6002', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');
INSERT INTO `sp_role_authority` VALUES ('4104', '2', '600204', '6002', '3', '1', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02');

-- ----------------------------
-- Table structure for sp_role_manage_authority
-- ----------------------------
DROP TABLE IF EXISTS `sp_role_manage_authority`;
CREATE TABLE `sp_role_manage_authority` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL COMMENT '角色id',
  `manage_auth_id` int(11) DEFAULT NULL COMMENT '管理员权限id',
  `parent_id` int(11) DEFAULT NULL COMMENT '父级id',
  `level` tinyint(2) DEFAULT NULL COMMENT '级别',
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `operator` varchar(255) DEFAULT NULL COMMENT '操作人',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '状态 1可用 0禁用',
  PRIMARY KEY (`id`),
  KEY `role_id_manage_auth_id` (`status`,`role_id`,`manage_auth_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1044 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_role_manage_authority
-- ----------------------------
INSERT INTO `sp_role_manage_authority` VALUES ('53', '5', '35', '0', '1', '建筑设计管理', '1', '2019-07-16 15:30:46', '2019-07-16 15:34:14', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('54', '5', '3501', '35', '2', '查询建筑系统详情', '1', '2019-07-16 15:30:46', '2019-07-16 15:34:14', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('55', '5', '3502', '35', '2', '新增建筑系统', '1', '2019-07-16 15:30:46', '2019-07-16 15:34:14', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('56', '5', '3503', '35', '2', '编辑建筑系统', '1', '2019-07-16 15:30:46', '2019-07-16 15:34:14', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('57', '5', '3504', '35', '2', '更改建筑系统状态', '1', '2019-07-16 15:30:46', '2019-07-16 15:34:14', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('58', '5', '3505', '35', '2', '查询建筑系统子系统', '1', '2019-07-16 15:30:46', '2019-07-16 15:34:14', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('59', '5', '3506', '35', '2', '新增建筑子系统', '1', '2019-07-16 15:30:46', '2019-07-16 15:34:14', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('60', '5', '3507', '35', '2', '编辑建筑子系统', '1', '2019-07-16 15:30:46', '2019-07-16 15:34:14', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('61', '5', '30', '0', '1', '施工安装管理', '1', '2019-07-16 15:33:30', '2019-07-16 15:34:14', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('62', '5', '35', '0', '1', '建筑设计管理', '1', '2019-07-16 15:33:30', '2019-07-16 15:34:14', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('63', '5', '3501', '35', '2', '查询建筑系统详情', '1', '2019-07-16 15:33:30', '2019-07-16 15:34:14', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('64', '5', '3502', '35', '2', '新增建筑系统', '1', '2019-07-16 15:33:30', '2019-07-16 15:34:14', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('65', '5', '3503', '35', '2', '编辑建筑系统', '1', '2019-07-16 15:33:30', '2019-07-16 15:34:14', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('66', '5', '3504', '35', '2', '更改建筑系统状态', '1', '2019-07-16 15:33:30', '2019-07-16 15:34:14', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('67', '5', '3505', '35', '2', '查询建筑系统子系统', '1', '2019-07-16 15:33:30', '2019-07-16 15:34:14', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('68', '5', '3506', '35', '2', '新增建筑子系统', '1', '2019-07-16 15:33:30', '2019-07-16 15:34:14', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('69', '5', '3507', '35', '2', '编辑建筑子系统', '1', '2019-07-16 15:33:30', '2019-07-16 15:34:14', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('70', '5', '25', '0', '1', '采购集成管理', '1', '2019-07-16 15:34:14', '2019-07-16 15:35:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('71', '5', '30', '0', '1', '施工安装管理', '1', '2019-07-16 15:34:14', '2019-07-16 15:35:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('72', '5', '35', '0', '1', '建筑设计管理', '1', '2019-07-16 15:34:14', '2019-07-16 15:35:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('73', '5', '3501', '35', '2', '查询建筑系统详情', '1', '2019-07-16 15:34:14', '2019-07-16 15:35:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('74', '5', '3502', '35', '2', '新增建筑系统', '1', '2019-07-16 15:34:14', '2019-07-16 15:35:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('75', '5', '3503', '35', '2', '编辑建筑系统', '1', '2019-07-16 15:34:14', '2019-07-16 15:35:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('76', '5', '3504', '35', '2', '更改建筑系统状态', '1', '2019-07-16 15:34:14', '2019-07-16 15:35:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('77', '5', '3505', '35', '2', '查询建筑系统子系统', '1', '2019-07-16 15:34:14', '2019-07-16 15:35:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('78', '5', '3506', '35', '2', '新增建筑子系统', '1', '2019-07-16 15:34:14', '2019-07-16 15:35:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('79', '5', '3507', '35', '2', '编辑建筑子系统', '1', '2019-07-16 15:34:14', '2019-07-16 15:35:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('80', '5', '15', '0', '1', '项目信息管理', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('81', '5', '20', '0', '1', '预算报价管理', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('82', '5', '25', '0', '1', '采购集成管理', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('83', '5', '30', '0', '1', '施工安装管理', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('84', '5', '35', '0', '1', '建筑设计管理', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('85', '5', '3501', '35', '2', '查询建筑系统详情', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('86', '5', '3502', '35', '2', '新增建筑系统', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('87', '5', '3503', '35', '2', '编辑建筑系统', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('88', '5', '3504', '35', '2', '更改建筑系统状态', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('89', '5', '3505', '35', '2', '查询建筑系统子系统', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('90', '5', '3506', '35', '2', '新增建筑子系统', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('91', '5', '3507', '35', '2', '编辑建筑子系统', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('92', '1', '15', '0', '1', '项目信息管理', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('93', '1', '20', '0', '1', '预算报价管理', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('94', '1', '25', '0', '1', '采购集成管理', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('95', '1', '30', '0', '1', '施工安装管理', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('96', '1', '35', '0', '1', '建筑设计管理', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('97', '1', '40', '0', '1', '部件集成管理', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('98', '1', '45', '0', '1', '供应商管理', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('99', '1', '55', '0', '1', '财务信息管理', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('100', '1', '60', '0', '1', '客户信息管理', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('101', '1', '65', '0', '1', '基础信息管理', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('102', '1', '3501', '35', '2', '查询建筑系统详情', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('103', '1', '3502', '35', '2', '新增建筑系统', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('104', '1', '3503', '35', '2', '编辑建筑系统', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('105', '1', '3504', '35', '2', '更改建筑系统状态', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('106', '1', '3505', '35', '2', '查询建筑系统子系统', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('107', '1', '3506', '35', '2', '新增建筑子系统', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('108', '1', '3507', '35', '2', '编辑建筑子系统', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('109', '2', '65', '0', '1', '基础信息管理', '2', '2019-07-17 10:01:11', '2019-07-20 16:58:19', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('110', '5', '35', '0', '1', '建筑设计管理', '2', '2019-07-20 16:58:36', '2019-07-20 16:59:05', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('111', '5', '3501', '35', '2', '查询建筑系统详情', '2', '2019-07-20 16:58:36', '2019-07-20 16:59:05', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('112', '5', '3502', '35', '2', '新增建筑系统', '2', '2019-07-20 16:58:36', '2019-07-20 16:59:05', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('113', '5', '3503', '35', '2', '编辑建筑系统', '2', '2019-07-20 16:58:36', '2019-07-20 16:59:05', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('114', '5', '3504', '35', '2', '更改建筑系统状态', '2', '2019-07-20 16:58:36', '2019-07-20 16:59:05', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('115', '5', '3505', '35', '2', '查询建筑系统子系统', '2', '2019-07-20 16:58:36', '2019-07-20 16:59:05', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('116', '5', '3506', '35', '2', '新增建筑子系统', '2', '2019-07-20 16:58:36', '2019-07-20 16:59:05', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('117', '5', '3507', '35', '2', '编辑建筑子系统', '2', '2019-07-20 16:58:36', '2019-07-20 16:59:05', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('118', '5', '35', '0', '1', '建筑设计管理', '2', '2019-07-20 16:59:05', '2019-07-20 16:59:11', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('119', '5', '3501', '35', '2', '查询建筑系统详情', '2', '2019-07-20 16:59:05', '2019-07-20 16:59:11', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('120', '5', '3502', '35', '2', '新增建筑系统', '2', '2019-07-20 16:59:05', '2019-07-20 16:59:11', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('121', '5', '3503', '35', '2', '编辑建筑系统', '2', '2019-07-20 16:59:05', '2019-07-20 16:59:11', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('122', '5', '3504', '35', '2', '更改建筑系统状态', '2', '2019-07-20 16:59:05', '2019-07-20 16:59:11', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('123', '5', '3505', '35', '2', '查询建筑系统子系统', '2', '2019-07-20 16:59:05', '2019-07-20 16:59:11', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('124', '5', '3506', '35', '2', '新增建筑子系统', '2', '2019-07-20 16:59:05', '2019-07-20 16:59:11', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('125', '5', '3507', '35', '2', '编辑建筑子系统', '2', '2019-07-20 16:59:05', '2019-07-20 16:59:11', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('126', '5', '15', '0', '1', '项目信息管理', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('127', '5', '20', '0', '1', '预算报价管理', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('128', '5', '25', '0', '1', '采购集成管理', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('129', '5', '30', '0', '1', '施工安装管理', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('130', '5', '35', '0', '1', '建筑设计管理', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('131', '5', '3501', '35', '2', '查询建筑系统详情', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('132', '5', '3502', '35', '2', '新增建筑系统', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('133', '5', '3503', '35', '2', '编辑建筑系统', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('134', '5', '3504', '35', '2', '更改建筑系统状态', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('135', '5', '3505', '35', '2', '查询建筑系统子系统', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('136', '5', '3506', '35', '2', '新增建筑子系统', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('137', '5', '3507', '35', '2', '编辑建筑子系统', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('138', '5', '15', '0', '1', '项目信息管理', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('139', '5', '20', '0', '1', '预算报价管理', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('140', '5', '25', '0', '1', '采购集成管理', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('141', '5', '30', '0', '1', '施工安装管理', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('142', '5', '35', '0', '1', '建筑设计管理', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('143', '5', '3501', '35', '2', '查询建筑系统详情', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('144', '5', '3502', '35', '2', '新增建筑系统', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('145', '5', '3503', '35', '2', '编辑建筑系统', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('146', '5', '3504', '35', '2', '更改建筑系统状态', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('147', '5', '3505', '35', '2', '查询建筑系统子系统', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('148', '5', '3506', '35', '2', '新增建筑子系统', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('149', '5', '3507', '35', '2', '编辑建筑子系统', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('150', '5', '35', '0', '1', '建筑设计管理', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('151', '5', '3501', '35', '2', '查询建筑系统详情', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('152', '5', '3502', '35', '2', '新增建筑系统', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('153', '5', '3503', '35', '2', '编辑建筑系统', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('154', '5', '3504', '35', '2', '更改建筑系统状态', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('155', '5', '3505', '35', '2', '查询建筑系统子系统', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('156', '5', '3506', '35', '2', '新增建筑子系统', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('157', '5', '3507', '35', '2', '编辑建筑子系统', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('158', '5', '35', '0', '1', '建筑设计管理', '2', '2019-07-20 17:03:32', '2019-07-20 17:09:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('159', '5', '3501', '35', '2', '查询建筑系统详情', '2', '2019-07-20 17:03:32', '2019-07-20 17:09:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('160', '5', '3502', '35', '2', '新增建筑系统', '2', '2019-07-20 17:03:32', '2019-07-20 17:09:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('161', '5', '3503', '35', '2', '编辑建筑系统', '2', '2019-07-20 17:03:32', '2019-07-20 17:09:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('162', '5', '3504', '35', '2', '更改建筑系统状态', '2', '2019-07-20 17:03:32', '2019-07-20 17:09:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('163', '5', '3505', '35', '2', '查询建筑系统子系统', '2', '2019-07-20 17:03:32', '2019-07-20 17:09:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('164', '5', '3506', '35', '2', '新增建筑子系统', '2', '2019-07-20 17:03:32', '2019-07-20 17:09:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('165', '5', '3507', '35', '2', '编辑建筑子系统', '2', '2019-07-20 17:03:32', '2019-07-20 17:09:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('166', '5', '35', '0', '1', '建筑设计管理', '2', '2019-07-20 17:09:40', '2019-07-20 17:10:10', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('167', '5', '3501', '35', '2', '查询建筑系统详情', '2', '2019-07-20 17:09:40', '2019-07-20 17:10:10', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('168', '5', '3502', '35', '2', '新增建筑系统', '2', '2019-07-20 17:09:40', '2019-07-20 17:10:10', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('169', '5', '3503', '35', '2', '编辑建筑系统', '2', '2019-07-20 17:09:40', '2019-07-20 17:10:10', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('170', '5', '3504', '35', '2', '更改建筑系统状态', '2', '2019-07-20 17:09:40', '2019-07-20 17:10:10', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('171', '5', '3505', '35', '2', '查询建筑系统子系统', '2', '2019-07-20 17:09:40', '2019-07-20 17:10:10', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('172', '5', '3506', '35', '2', '新增建筑子系统', '2', '2019-07-20 17:09:40', '2019-07-20 17:10:10', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('173', '5', '3507', '35', '2', '编辑建筑子系统', '2', '2019-07-20 17:09:40', '2019-07-20 17:10:10', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('174', '5', '35', '0', '1', '建筑设计管理', '1', '2019-07-20 17:10:10', '2019-07-20 21:39:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('175', '5', '3501', '35', '2', '查询建筑系统详情', '1', '2019-07-20 17:10:10', '2019-07-20 21:39:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('176', '5', '3502', '35', '2', '新增建筑系统', '1', '2019-07-20 17:10:10', '2019-07-20 21:39:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('177', '5', '3503', '35', '2', '编辑建筑系统', '1', '2019-07-20 17:10:10', '2019-07-20 21:39:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('178', '5', '3504', '35', '2', '更改建筑系统状态', '1', '2019-07-20 17:10:10', '2019-07-20 21:39:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('179', '5', '3505', '35', '2', '查询建筑系统子系统', '1', '2019-07-20 17:10:10', '2019-07-20 21:39:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('180', '5', '3506', '35', '2', '新增建筑子系统', '1', '2019-07-20 17:10:10', '2019-07-20 21:39:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('181', '5', '3507', '35', '2', '编辑建筑子系统', '1', '2019-07-20 17:10:10', '2019-07-20 21:39:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('182', '5', '35', '0', '1', '建筑设计管理', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('183', '5', '3501', '35', '2', '查询建筑系统详情', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('184', '5', '3502', '35', '2', '新增建筑系统', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('185', '5', '3503', '35', '2', '编辑建筑系统', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('186', '5', '3504', '35', '2', '更改建筑系统状态', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('187', '5', '3505', '35', '2', '查询建筑系统子系统', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('188', '5', '3506', '35', '2', '编辑建筑子系统', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('189', '5', '3507', '35', '2', '', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('190', '1', '35', '0', '1', '建筑设计管理', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('191', '1', '3501', '35', '2', '查询建筑系统详情', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('192', '1', '3502', '35', '2', '新增建筑系统', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('193', '1', '3503', '35', '2', '编辑建筑系统', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('194', '1', '3504', '35', '2', '更改建筑系统状态', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('195', '1', '3505', '35', '2', '查询建筑系统子系统', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('196', '1', '3506', '35', '2', '编辑建筑子系统', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('197', '1', '3507', '35', '2', '', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('198', '1', '15', '0', '1', '项目信息管理', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('199', '1', '20', '0', '1', '预算报价管理', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('200', '1', '25', '0', '1', '采购集成管理', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('201', '1', '30', '0', '1', '施工安装管理', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('202', '1', '35', '0', '1', '建筑设计管理', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('203', '1', '40', '0', '1', '部件集成管理', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('204', '1', '45', '0', '1', '供应商管理', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('205', '1', '55', '0', '1', '财务信息管理', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('206', '1', '60', '0', '1', '客户信息管理', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('207', '1', '65', '0', '1', '基础信息管理', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('208', '1', '3501', '35', '2', '查询建筑系统详情', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('209', '1', '3502', '35', '2', '新增建筑系统', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('210', '1', '3503', '35', '2', '编辑建筑系统', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('211', '1', '3504', '35', '2', '更改建筑系统状态', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('212', '1', '3505', '35', '2', '查询建筑系统子系统', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('213', '1', '3506', '35', '2', '编辑建筑子系统', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('214', '1', '3507', '35', '2', '', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('215', '1', '15', '0', '1', '项目信息管理', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('216', '1', '20', '0', '1', '预算报价管理', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('217', '1', '25', '0', '1', '采购集成管理', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('218', '1', '30', '0', '1', '施工安装管理', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('219', '1', '35', '0', '1', '建筑设计管理', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('220', '1', '40', '0', '1', '部件集成管理', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('221', '1', '45', '0', '1', '供应商管理', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('222', '1', '55', '0', '1', '财务信息管理', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('223', '1', '60', '0', '1', '客户信息管理', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('224', '1', '65', '0', '1', '基础信息管理', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('225', '1', '3501', '35', '2', '查询建筑系统详情', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('226', '1', '3502', '35', '2', '新增建筑系统', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('227', '1', '3503', '35', '2', '编辑建筑系统', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('228', '1', '3504', '35', '2', '更改建筑系统状态', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('229', '1', '3505', '35', '2', '查询建筑系统子系统', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('230', '1', '3506', '35', '2', '编辑建筑子系统', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('231', '1', '3507', '35', '2', '', '1', '2019-07-22 10:12:01', '2019-08-28 11:06:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('232', '2', '15', '0', '1', '项目信息管理', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('233', '2', '20', '0', '1', '预算报价管理', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('234', '2', '25', '0', '1', '采购集成管理', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('235', '2', '30', '0', '1', '施工安装管理', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('236', '2', '35', '0', '1', '建筑设计管理', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('237', '2', '40', '0', '1', '部件集成管理', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('238', '2', '45', '0', '1', '供应商管理', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('239', '2', '55', '0', '1', '财务信息管理', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('240', '2', '60', '0', '1', '客户信息管理', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('241', '2', '65', '0', '1', '基础信息管理', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('242', '2', '3501', '35', '2', '查询建筑系统详情', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('243', '2', '3502', '35', '2', '新增建筑系统', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('244', '2', '3503', '35', '2', '编辑建筑系统', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('245', '2', '3504', '35', '2', '更改建筑系统状态', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('246', '2', '3505', '35', '2', '查询建筑系统子系统', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('247', '2', '3506', '35', '2', '编辑建筑子系统', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('248', '2', '3507', '35', '2', '', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('249', '10', '15', '0', '1', '项目信息管理', '1', '2019-07-22 11:25:22', '2019-07-22 11:25:22', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('250', '14', '20', '0', '1', '预算报价管理', '1', '2019-07-22 11:27:31', '2019-07-22 11:27:31', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('251', '2', '15', '0', '1', '项目信息管理', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('252', '2', '20', '0', '1', '预算报价管理', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('253', '2', '25', '0', '1', '采购集成管理', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('254', '2', '30', '0', '1', '施工安装管理', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('255', '2', '35', '0', '1', '建筑设计管理', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('256', '2', '40', '0', '1', '部件集成管理', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('257', '2', '45', '0', '1', '供应商管理', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('258', '2', '55', '0', '1', '财务信息管理', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('259', '2', '60', '0', '1', '客户信息管理', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('260', '2', '65', '0', '1', '基础信息管理', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('261', '2', '3501', '35', '2', '查询建筑系统详情', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('262', '2', '3502', '35', '2', '新增建筑系统', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('263', '2', '3503', '35', '2', '编辑建筑系统', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('264', '2', '3504', '35', '2', '更改建筑系统状态', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('265', '2', '3505', '35', '2', '查询建筑系统子系统', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('266', '2', '3506', '35', '2', '编辑建筑子系统', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('267', '2', '3507', '35', '2', '', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('268', '2', '15', '0', '1', '项目信息管理', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('269', '2', '20', '0', '1', '预算报价管理', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('270', '2', '25', '0', '1', '采购集成管理', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('271', '2', '30', '0', '1', '施工安装管理', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('272', '2', '35', '0', '1', '建筑设计管理', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('273', '2', '40', '0', '1', '部件集成管理', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('274', '2', '45', '0', '1', '供应商管理', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('275', '2', '55', '0', '1', '财务信息管理', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('276', '2', '60', '0', '1', '客户信息管理', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('277', '2', '65', '0', '1', '基础信息管理', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('278', '2', '3501', '35', '2', '查询建筑系统详情', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('279', '2', '3502', '35', '2', '新增建筑系统', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('280', '2', '3503', '35', '2', '编辑建筑系统', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('281', '2', '3504', '35', '2', '更改建筑系统状态', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('282', '2', '3505', '35', '2', '查询建筑系统子系统', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('283', '2', '3506', '35', '2', '编辑建筑子系统', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('284', '2', '3507', '35', '2', '', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('285', '2', '15', '0', '1', '项目信息管理', '6', '2019-07-23 19:32:47', '2019-07-25 10:42:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('286', '2', '20', '0', '1', '预算报价管理', '6', '2019-07-23 19:32:47', '2019-07-25 10:42:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('287', '2', '25', '0', '1', '采购集成管理', '6', '2019-07-23 19:32:47', '2019-07-25 10:42:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('288', '2', '30', '0', '1', '施工安装管理', '6', '2019-07-23 19:32:47', '2019-07-25 10:42:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('289', '2', '35', '0', '1', '建筑设计管理', '6', '2019-07-23 19:32:47', '2019-07-25 10:42:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('290', '2', '40', '0', '1', '部件集成管理', '6', '2019-07-23 19:32:47', '2019-07-25 10:42:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('291', '2', '45', '0', '1', '供应商管理', '6', '2019-07-23 19:32:47', '2019-07-25 10:42:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('292', '2', '55', '0', '1', '财务信息管理', '6', '2019-07-23 19:32:47', '2019-07-25 10:42:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('293', '2', '60', '0', '1', '客户信息管理', '6', '2019-07-23 19:32:47', '2019-07-25 10:42:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('294', '2', '65', '0', '1', '基础信息管理', '6', '2019-07-23 19:32:47', '2019-07-25 10:42:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('295', '2', '3501', '35', '2', '查询建筑系统详情', '6', '2019-07-23 19:32:47', '2019-07-25 10:42:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('296', '2', '3502', '35', '2', '新增建筑系统', '6', '2019-07-23 19:32:47', '2019-07-25 10:42:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('297', '2', '3503', '35', '2', '编辑建筑系统', '6', '2019-07-23 19:32:47', '2019-07-25 10:42:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('298', '2', '3504', '35', '2', '更改建筑系统状态', '6', '2019-07-23 19:32:47', '2019-07-25 10:42:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('299', '2', '3505', '35', '2', '查询建筑系统子系统', '6', '2019-07-23 19:32:47', '2019-07-25 10:42:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('300', '2', '3506', '35', '2', '编辑建筑子系统', '6', '2019-07-23 19:32:47', '2019-07-25 10:42:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('301', '2', '15', '0', '1', '项目信息管理', '6', '2019-07-25 10:42:53', '2019-07-28 15:55:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('302', '2', '20', '0', '1', '预算报价管理', '6', '2019-07-25 10:42:53', '2019-07-28 15:55:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('303', '2', '25', '0', '1', '采购集成管理', '6', '2019-07-25 10:42:53', '2019-07-28 15:55:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('304', '2', '30', '0', '1', '施工安装管理', '6', '2019-07-25 10:42:53', '2019-07-28 15:55:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('305', '2', '35', '0', '1', '建筑设计管理', '6', '2019-07-25 10:42:53', '2019-07-28 15:55:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('306', '2', '40', '0', '1', '部件集成管理', '6', '2019-07-25 10:42:53', '2019-07-28 15:55:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('307', '2', '45', '0', '1', '供应商管理', '6', '2019-07-25 10:42:53', '2019-07-28 15:55:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('308', '2', '55', '0', '1', '财务信息管理', '6', '2019-07-25 10:42:53', '2019-07-28 15:55:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('309', '2', '60', '0', '1', '客户信息管理', '6', '2019-07-25 10:42:53', '2019-07-28 15:55:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('310', '2', '65', '0', '1', '基础信息管理', '6', '2019-07-25 10:42:53', '2019-07-28 15:55:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('311', '2', '3501', '35', '2', '查询建筑系统详情', '6', '2019-07-25 10:42:53', '2019-07-28 15:55:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('312', '2', '3502', '35', '2', '新增建筑系统', '6', '2019-07-25 10:42:53', '2019-07-28 15:55:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('313', '2', '3503', '35', '2', '编辑建筑系统', '6', '2019-07-25 10:42:53', '2019-07-28 15:55:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('314', '2', '3504', '35', '2', '更改建筑系统状态', '6', '2019-07-25 10:42:53', '2019-07-28 15:55:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('315', '2', '3505', '35', '2', '查询建筑系统子系统', '6', '2019-07-25 10:42:53', '2019-07-28 15:55:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('316', '2', '3506', '35', '2', '编辑建筑子系统', '6', '2019-07-25 10:42:53', '2019-07-28 15:55:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('317', '2', '4501', '45', '2', '查询品牌信息', '6', '2019-07-25 10:42:53', '2019-07-28 15:55:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('318', '2', '4502', '45', '2', '新增品牌信息', '6', '2019-07-25 10:42:53', '2019-07-28 15:55:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('319', '2', '4503', '45', '2', '编辑品牌信息', '6', '2019-07-25 10:42:53', '2019-07-28 15:55:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('320', '2', '4510', '45', '2', '查询供应商信息', '6', '2019-07-25 10:42:53', '2019-07-28 15:55:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('321', '2', '4511', '45', '2', '新增供应商', '6', '2019-07-25 10:42:53', '2019-07-28 15:55:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('322', '2', '4512', '45', '2', '编辑供应商', '6', '2019-07-25 10:42:53', '2019-07-28 15:55:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('323', '2', '4513', '45', '2', '删除供应商', '6', '2019-07-25 10:42:53', '2019-07-28 15:55:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('324', '2', '15', '0', '1', '项目信息管理', '6', '2019-07-28 15:55:34', '2019-08-02 11:44:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('325', '2', '20', '0', '1', '预算报价管理', '6', '2019-07-28 15:55:34', '2019-08-02 11:44:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('326', '2', '25', '0', '1', '采购集成管理', '6', '2019-07-28 15:55:34', '2019-08-02 11:44:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('327', '2', '30', '0', '1', '施工安装管理', '6', '2019-07-28 15:55:34', '2019-08-02 11:44:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('328', '2', '35', '0', '1', '建筑设计管理', '6', '2019-07-28 15:55:34', '2019-08-02 11:44:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('329', '2', '40', '0', '1', '部件集成管理', '6', '2019-07-28 15:55:34', '2019-08-02 11:44:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('330', '2', '45', '0', '1', '供应商管理', '6', '2019-07-28 15:55:34', '2019-08-02 11:44:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('331', '2', '55', '0', '1', '财务信息管理', '6', '2019-07-28 15:55:34', '2019-08-02 11:44:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('332', '2', '60', '0', '1', '客户信息管理', '6', '2019-07-28 15:55:34', '2019-08-02 11:44:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('333', '2', '65', '0', '1', '基础信息管理', '6', '2019-07-28 15:55:34', '2019-08-02 11:44:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('334', '2', '3501', '35', '2', '查询建筑系统详情', '6', '2019-07-28 15:55:34', '2019-08-02 11:44:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('335', '2', '3502', '35', '2', '新增建筑系统', '6', '2019-07-28 15:55:34', '2019-08-02 11:44:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('336', '2', '3503', '35', '2', '编辑建筑系统', '6', '2019-07-28 15:55:34', '2019-08-02 11:44:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('337', '2', '3504', '35', '2', '更改建筑系统状态', '6', '2019-07-28 15:55:34', '2019-08-02 11:44:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('338', '2', '3505', '35', '2', '查询建筑系统子系统', '6', '2019-07-28 15:55:34', '2019-08-02 11:44:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('339', '2', '3506', '35', '2', '编辑建筑子系统', '6', '2019-07-28 15:55:34', '2019-08-02 11:44:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('340', '2', '4501', '45', '2', '查询品牌信息', '6', '2019-07-28 15:55:34', '2019-08-02 11:44:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('341', '2', '4502', '45', '2', '新增品牌信息', '6', '2019-07-28 15:55:34', '2019-08-02 11:44:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('342', '2', '4503', '45', '2', '编辑品牌信息', '6', '2019-07-28 15:55:34', '2019-08-02 11:44:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('343', '2', '4510', '45', '2', '查询供应商信息', '6', '2019-07-28 15:55:34', '2019-08-02 11:44:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('344', '2', '4511', '45', '2', '新增供应商', '6', '2019-07-28 15:55:34', '2019-08-02 11:44:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('345', '2', '4512', '45', '2', '编辑供应商', '6', '2019-07-28 15:55:34', '2019-08-02 11:44:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('346', '2', '4513', '45', '2', '删除供应商', '6', '2019-07-28 15:55:34', '2019-08-02 11:44:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('347', '2', '15', '0', '1', '项目信息管理', '6', '2019-08-02 11:44:20', '2019-08-05 15:39:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('348', '2', '20', '0', '1', '预算报价管理', '6', '2019-08-02 11:44:20', '2019-08-05 15:39:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('349', '2', '25', '0', '1', '采购集成管理', '6', '2019-08-02 11:44:20', '2019-08-05 15:39:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('350', '2', '30', '0', '1', '施工安装管理', '6', '2019-08-02 11:44:20', '2019-08-05 15:39:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('351', '2', '35', '0', '1', '建筑设计管理', '6', '2019-08-02 11:44:20', '2019-08-05 15:39:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('352', '2', '40', '0', '1', '部件集成管理', '6', '2019-08-02 11:44:20', '2019-08-05 15:39:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('353', '2', '45', '0', '1', '供应商管理', '6', '2019-08-02 11:44:20', '2019-08-05 15:39:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('354', '2', '55', '0', '1', '客户信息管理', '6', '2019-08-02 11:44:20', '2019-08-05 15:39:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('355', '2', '60', '0', '1', '系统公告管理', '6', '2019-08-02 11:44:20', '2019-08-05 15:39:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('356', '2', '3501', '35', '2', '查询建筑系统详情', '6', '2019-08-02 11:44:20', '2019-08-05 15:39:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('357', '2', '3502', '35', '2', '新增建筑系统', '6', '2019-08-02 11:44:20', '2019-08-05 15:39:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('358', '2', '3503', '35', '2', '编辑建筑系统', '6', '2019-08-02 11:44:20', '2019-08-05 15:39:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('359', '2', '3504', '35', '2', '更改建筑系统状态', '6', '2019-08-02 11:44:20', '2019-08-05 15:39:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('360', '2', '3505', '35', '2', '查询建筑系统子系统', '6', '2019-08-02 11:44:20', '2019-08-05 15:39:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('361', '2', '3506', '35', '2', '编辑建筑子系统', '6', '2019-08-02 11:44:20', '2019-08-05 15:39:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('362', '2', '4501', '45', '2', '查询品牌信息', '6', '2019-08-02 11:44:20', '2019-08-05 15:39:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('363', '2', '4502', '45', '2', '新增品牌信息', '6', '2019-08-02 11:44:20', '2019-08-05 15:39:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('364', '2', '4503', '45', '2', '编辑品牌信息', '6', '2019-08-02 11:44:20', '2019-08-05 15:39:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('365', '2', '4510', '45', '2', '查询供应商信息', '6', '2019-08-02 11:44:20', '2019-08-05 15:39:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('366', '2', '4511', '45', '2', '新增供应商', '6', '2019-08-02 11:44:20', '2019-08-05 15:39:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('367', '2', '4512', '45', '2', '编辑供应商', '6', '2019-08-02 11:44:20', '2019-08-05 15:39:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('368', '2', '4513', '45', '2', '删除供应商', '6', '2019-08-02 11:44:20', '2019-08-05 15:39:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('369', '2', '15', '0', '1', '项目信息管理', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('370', '2', '20', '0', '1', '预算报价管理', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('371', '2', '25', '0', '1', '采购集成管理', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('372', '2', '30', '0', '1', '施工安装管理', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('373', '2', '35', '0', '1', '建筑设计管理', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('374', '2', '40', '0', '1', '部件集成管理', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('375', '2', '45', '0', '1', '供应商管理', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('376', '2', '55', '0', '1', '客户信息管理', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('377', '2', '60', '0', '1', '系统公告管理', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('378', '2', '3501', '35', '2', '查询建筑系统详情', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('379', '2', '3502', '35', '2', '新增建筑系统', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('380', '2', '3503', '35', '2', '编辑建筑系统', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('381', '2', '3504', '35', '2', '更改建筑系统状态', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('382', '2', '3505', '35', '2', '查询建筑系统子系统', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('383', '2', '3506', '35', '2', '编辑建筑子系统', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('384', '2', '4501', '45', '2', '查询品牌信息', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('385', '2', '4502', '45', '2', '新增品牌信息', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('386', '2', '4503', '45', '2', '编辑品牌信息', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('387', '2', '4510', '45', '2', '查询供应商信息', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('388', '2', '4511', '45', '2', '新增供应商', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('389', '2', '4512', '45', '2', '编辑供应商', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('390', '2', '4513', '45', '2', '删除供应商', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('391', '2', '1501', '15', '2', '创建项目', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('392', '2', '1502', '15', '2', '洽谈项目', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('393', '2', '150201', '1502', '3', '编辑项目', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('394', '2', '150202', '1502', '3', '查询项目详情', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('395', '2', '1503', '15', '2', '实施项目', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('396', '2', '150301', '1503', '3', '查询项目', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('397', '2', '150302', '1503', '3', '编辑项目', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('398', '2', '150303', '1503', '3', '删除项目', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('399', '2', '150304', '1503', '3', '查询项目详情', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('400', '2', '1504', '15', '2', '竣工项目', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('401', '2', '150401', '1504', '3', '查询项目', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('402', '2', '150402', '1504', '3', '编辑项目', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('403', '2', '150403', '1504', '3', '查询项目详情', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('404', '2', '1505', '15', '2', '终止项目', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('405', '2', '150501', '1505', '3', '查询项目', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('406', '2', '150502', '1505', '3', '查询项目详情', '6', '2019-08-05 15:39:35', '2019-08-07 10:52:40', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('407', '2', '15', '0', '1', '项目信息管理', '6', '2019-08-07 10:52:40', '2019-08-09 15:54:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('408', '2', '20', '0', '1', '预算报价管理', '6', '2019-08-07 10:52:40', '2019-08-09 15:54:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('409', '2', '25', '0', '1', '采购集成管理', '6', '2019-08-07 10:52:40', '2019-08-09 15:54:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('410', '2', '30', '0', '1', '施工安装管理', '6', '2019-08-07 10:52:40', '2019-08-09 15:54:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('411', '2', '35', '0', '1', '建筑设计管理', '6', '2019-08-07 10:52:40', '2019-08-09 15:54:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('412', '2', '40', '0', '1', '部件集成管理', '6', '2019-08-07 10:52:40', '2019-08-09 15:54:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('413', '2', '45', '0', '1', '供应商管理', '6', '2019-08-07 10:52:40', '2019-08-09 15:54:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('414', '2', '55', '0', '1', '客户信息管理', '6', '2019-08-07 10:52:40', '2019-08-09 15:54:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('415', '2', '60', '0', '1', '系统公告管理', '6', '2019-08-07 10:52:40', '2019-08-09 15:54:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('416', '2', '3501', '35', '2', '查询建筑系统详情', '6', '2019-08-07 10:52:40', '2019-08-09 15:54:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('417', '2', '3502', '35', '2', '新增建筑系统', '6', '2019-08-07 10:52:40', '2019-08-09 15:54:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('418', '2', '3503', '35', '2', '编辑建筑系统', '6', '2019-08-07 10:52:40', '2019-08-09 15:54:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('419', '2', '3504', '35', '2', '更改建筑系统状态', '6', '2019-08-07 10:52:40', '2019-08-09 15:54:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('420', '2', '3505', '35', '2', '查询建筑系统子系统', '6', '2019-08-07 10:52:40', '2019-08-09 15:54:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('421', '2', '3506', '35', '2', '编辑建筑子系统', '6', '2019-08-07 10:52:40', '2019-08-09 15:54:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('422', '2', '4501', '45', '2', '查询品牌信息', '6', '2019-08-07 10:52:40', '2019-08-09 15:54:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('423', '2', '4502', '45', '2', '新增品牌信息', '6', '2019-08-07 10:52:40', '2019-08-09 15:54:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('424', '2', '4503', '45', '2', '编辑品牌信息', '6', '2019-08-07 10:52:40', '2019-08-09 15:54:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('425', '2', '4510', '45', '2', '查询供应商信息', '6', '2019-08-07 10:52:40', '2019-08-09 15:54:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('426', '2', '4511', '45', '2', '新增供应商', '6', '2019-08-07 10:52:40', '2019-08-09 15:54:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('427', '2', '4512', '45', '2', '编辑供应商', '6', '2019-08-07 10:52:40', '2019-08-09 15:54:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('428', '2', '4513', '45', '2', '删除供应商', '6', '2019-08-07 10:52:40', '2019-08-09 15:54:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('429', '2', '1501', '15', '2', '创建项目', '6', '2019-08-07 10:52:40', '2019-08-09 15:54:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('430', '2', '1502', '15', '2', '洽谈项目', '6', '2019-08-07 10:52:40', '2019-08-09 15:54:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('431', '2', '150201', '1502', '3', '查询项目详情', '6', '2019-08-07 10:52:40', '2019-08-09 15:54:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('432', '2', '150202', '1502', '3', '编辑项目', '6', '2019-08-07 10:52:40', '2019-08-09 15:54:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('433', '2', '1503', '15', '2', '实施项目', '6', '2019-08-07 10:52:40', '2019-08-09 15:54:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('434', '2', '150301', '1503', '3', '查询项目详情', '6', '2019-08-07 10:52:40', '2019-08-09 15:54:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('435', '2', '150302', '1503', '3', '编辑项目', '6', '2019-08-07 10:52:40', '2019-08-09 15:54:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('436', '2', '1504', '15', '2', '竣工项目', '6', '2019-08-07 10:52:40', '2019-08-09 15:54:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('437', '2', '150401', '1504', '3', '查询项目详情', '6', '2019-08-07 10:52:40', '2019-08-09 15:54:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('438', '2', '150402', '1504', '3', '编辑项目', '6', '2019-08-07 10:52:40', '2019-08-09 15:54:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('439', '2', '1505', '15', '2', '终止项目', '6', '2019-08-07 10:52:40', '2019-08-09 15:54:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('440', '2', '150501', '1505', '3', '查询项目详情', '6', '2019-08-07 10:52:40', '2019-08-09 15:54:35', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('441', '2', '15', '0', '1', '项目信息管理', '6', '2019-08-09 15:54:35', '2019-08-12 17:21:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('442', '2', '20', '0', '1', '预算报价管理', '6', '2019-08-09 15:54:35', '2019-08-12 17:21:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('443', '2', '25', '0', '1', '采购集成管理', '6', '2019-08-09 15:54:35', '2019-08-12 17:21:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('444', '2', '30', '0', '1', '施工安装管理', '6', '2019-08-09 15:54:35', '2019-08-12 17:21:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('445', '2', '35', '0', '1', '建筑设计管理', '6', '2019-08-09 15:54:35', '2019-08-12 17:21:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('446', '2', '40', '0', '1', '部件集成管理', '6', '2019-08-09 15:54:35', '2019-08-12 17:21:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('447', '2', '45', '0', '1', '供应商管理', '6', '2019-08-09 15:54:35', '2019-08-12 17:21:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('448', '2', '55', '0', '1', '客户信息管理', '6', '2019-08-09 15:54:35', '2019-08-12 17:21:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('449', '2', '60', '0', '1', '系统公告管理', '6', '2019-08-09 15:54:35', '2019-08-12 17:21:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('450', '2', '3501', '35', '2', '查询建筑系统详情', '6', '2019-08-09 15:54:35', '2019-08-12 17:21:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('451', '2', '3502', '35', '2', '新增建筑系统', '6', '2019-08-09 15:54:35', '2019-08-12 17:21:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('452', '2', '3503', '35', '2', '编辑建筑系统', '6', '2019-08-09 15:54:35', '2019-08-12 17:21:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('453', '2', '3504', '35', '2', '更改建筑系统状态', '6', '2019-08-09 15:54:35', '2019-08-12 17:21:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('454', '2', '3505', '35', '2', '查询建筑系统子系统', '6', '2019-08-09 15:54:35', '2019-08-12 17:21:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('455', '2', '3506', '35', '2', '编辑建筑子系统', '6', '2019-08-09 15:54:35', '2019-08-12 17:21:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('456', '2', '4501', '45', '2', '查询品牌信息', '6', '2019-08-09 15:54:35', '2019-08-12 17:21:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('457', '2', '4502', '45', '2', '新增品牌信息', '6', '2019-08-09 15:54:35', '2019-08-12 17:21:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('458', '2', '4503', '45', '2', '编辑品牌信息', '6', '2019-08-09 15:54:35', '2019-08-12 17:21:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('459', '2', '4510', '45', '2', '查询供应商信息', '6', '2019-08-09 15:54:35', '2019-08-12 17:21:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('460', '2', '4511', '45', '2', '新增供应商', '6', '2019-08-09 15:54:35', '2019-08-12 17:21:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('461', '2', '4512', '45', '2', '编辑供应商', '6', '2019-08-09 15:54:35', '2019-08-12 17:21:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('462', '2', '4513', '45', '2', '删除供应商', '6', '2019-08-09 15:54:35', '2019-08-12 17:21:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('463', '2', '1501', '15', '2', '创建项目', '6', '2019-08-09 15:54:35', '2019-08-12 17:21:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('464', '2', '1502', '15', '2', '洽谈项目', '6', '2019-08-09 15:54:35', '2019-08-12 17:21:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('465', '2', '150201', '1502', '3', '查询项目详情', '6', '2019-08-09 15:54:35', '2019-08-12 17:21:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('466', '2', '150202', '1502', '3', '编辑项目', '6', '2019-08-09 15:54:35', '2019-08-12 17:21:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('467', '2', '1503', '15', '2', '实施项目', '6', '2019-08-09 15:54:35', '2019-08-12 17:21:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('468', '2', '150301', '1503', '3', '查询项目详情', '6', '2019-08-09 15:54:35', '2019-08-12 17:21:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('469', '2', '150302', '1503', '3', '编辑项目', '6', '2019-08-09 15:54:35', '2019-08-12 17:21:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('470', '2', '1504', '15', '2', '竣工项目', '6', '2019-08-09 15:54:35', '2019-08-12 17:21:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('471', '2', '150401', '1504', '3', '查询项目详情', '6', '2019-08-09 15:54:35', '2019-08-12 17:21:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('472', '2', '150402', '1504', '3', '编辑项目', '6', '2019-08-09 15:54:35', '2019-08-12 17:21:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('473', '2', '1505', '15', '2', '终止项目', '6', '2019-08-09 15:54:35', '2019-08-12 17:21:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('474', '2', '150501', '1505', '3', '查询项目详情', '6', '2019-08-09 15:54:35', '2019-08-12 17:21:36', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('475', '2', '15', '0', '1', '项目信息管理', '6', '2019-08-12 17:21:36', '2019-08-16 15:52:07', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('476', '2', '20', '0', '1', '预算报价管理', '6', '2019-08-12 17:21:36', '2019-08-16 15:52:07', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('477', '2', '25', '0', '1', '采购集成管理', '6', '2019-08-12 17:21:36', '2019-08-16 15:52:07', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('478', '2', '30', '0', '1', '施工安装管理', '6', '2019-08-12 17:21:36', '2019-08-16 15:52:07', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('479', '2', '35', '0', '1', '建筑设计管理', '6', '2019-08-12 17:21:36', '2019-08-16 15:52:07', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('480', '2', '40', '0', '1', '部件集成管理', '6', '2019-08-12 17:21:36', '2019-08-16 15:52:07', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('481', '2', '45', '0', '1', '供应商管理', '6', '2019-08-12 17:21:36', '2019-08-16 15:52:07', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('482', '2', '55', '0', '1', '客户信息管理', '6', '2019-08-12 17:21:36', '2019-08-16 15:52:07', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('483', '2', '60', '0', '1', '系统公告管理', '6', '2019-08-12 17:21:36', '2019-08-16 15:52:07', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('484', '2', '3501', '35', '2', '查询建筑系统详情', '6', '2019-08-12 17:21:36', '2019-08-16 15:52:07', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('485', '2', '3502', '35', '2', '新增建筑系统', '6', '2019-08-12 17:21:36', '2019-08-16 15:52:07', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('486', '2', '3503', '35', '2', '编辑建筑系统', '6', '2019-08-12 17:21:36', '2019-08-16 15:52:07', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('487', '2', '3504', '35', '2', '更改建筑系统状态', '6', '2019-08-12 17:21:36', '2019-08-16 15:52:07', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('488', '2', '3505', '35', '2', '查询建筑系统子系统', '6', '2019-08-12 17:21:36', '2019-08-16 15:52:07', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('489', '2', '3506', '35', '2', '编辑建筑子系统', '6', '2019-08-12 17:21:36', '2019-08-16 15:52:07', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('490', '2', '4501', '45', '2', '查询品牌信息', '6', '2019-08-12 17:21:36', '2019-08-16 15:52:07', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('491', '2', '4502', '45', '2', '新增品牌信息', '6', '2019-08-12 17:21:36', '2019-08-16 15:52:07', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('492', '2', '4503', '45', '2', '编辑品牌信息', '6', '2019-08-12 17:21:36', '2019-08-16 15:52:07', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('493', '2', '4510', '45', '2', '查询供应商信息', '6', '2019-08-12 17:21:36', '2019-08-16 15:52:07', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('494', '2', '4511', '45', '2', '新增供应商', '6', '2019-08-12 17:21:36', '2019-08-16 15:52:07', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('495', '2', '4512', '45', '2', '编辑供应商', '6', '2019-08-12 17:21:36', '2019-08-16 15:52:07', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('496', '2', '4513', '45', '2', '删除供应商', '6', '2019-08-12 17:21:36', '2019-08-16 15:52:07', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('497', '2', '1501', '15', '2', '创建项目', '6', '2019-08-12 17:21:36', '2019-08-16 15:52:07', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('498', '2', '1502', '15', '2', '洽谈项目', '6', '2019-08-12 17:21:36', '2019-08-16 15:52:07', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('499', '2', '150201', '1502', '3', '查询项目详情', '6', '2019-08-12 17:21:36', '2019-08-16 15:52:07', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('500', '2', '150202', '1502', '3', '编辑项目', '6', '2019-08-12 17:21:36', '2019-08-16 15:52:07', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('501', '2', '1503', '15', '2', '实施项目', '6', '2019-08-12 17:21:36', '2019-08-16 15:52:07', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('502', '2', '150301', '1503', '3', '查询项目详情', '6', '2019-08-12 17:21:36', '2019-08-16 15:52:07', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('503', '2', '150302', '1503', '3', '编辑项目', '6', '2019-08-12 17:21:36', '2019-08-16 15:52:07', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('504', '2', '1504', '15', '2', '竣工项目', '6', '2019-08-12 17:21:36', '2019-08-16 15:52:07', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('505', '2', '150401', '1504', '3', '查询项目详情', '6', '2019-08-12 17:21:36', '2019-08-16 15:52:07', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('506', '2', '150402', '1504', '3', '编辑项目', '6', '2019-08-12 17:21:36', '2019-08-16 15:52:07', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('507', '2', '1505', '15', '2', '终止项目', '6', '2019-08-12 17:21:36', '2019-08-16 15:52:07', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('508', '2', '150501', '1505', '3', '查询项目详情', '6', '2019-08-12 17:21:36', '2019-08-16 15:52:07', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('509', '2', '15', '0', '1', '项目信息管理', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('510', '2', '20', '0', '1', '预算报价管理', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('511', '2', '25', '0', '1', '采购集成管理', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('512', '2', '30', '0', '1', '施工安装管理', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('513', '2', '35', '0', '1', '建筑设计管理', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('514', '2', '40', '0', '1', '部件集成管理', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('515', '2', '45', '0', '1', '供应商管理', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('516', '2', '55', '0', '1', '客户信息管理', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('517', '2', '60', '0', '1', '系统公告管理', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('518', '2', '3501', '35', '2', '查询建筑系统详情', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('519', '2', '3502', '35', '2', '新增建筑系统', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('520', '2', '3503', '35', '2', '编辑建筑系统', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('521', '2', '3504', '35', '2', '更改建筑系统状态', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('522', '2', '3505', '35', '2', '查询建筑系统子系统', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('523', '2', '3506', '35', '2', '编辑建筑子系统', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('524', '2', '4501', '45', '2', '查询品牌信息', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('525', '2', '4502', '45', '2', '新增品牌信息', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('526', '2', '4503', '45', '2', '编辑品牌信息', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('527', '2', '4510', '45', '2', '查询供应商信息', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('528', '2', '4511', '45', '2', '新增供应商', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('529', '2', '4512', '45', '2', '编辑供应商', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('530', '2', '4513', '45', '2', '删除供应商', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('531', '2', '1501', '15', '2', '创建项目', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('532', '2', '1502', '15', '2', '洽谈项目', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('533', '2', '150201', '1502', '3', '查询项目详情', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('534', '2', '150202', '1502', '3', '编辑项目', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('535', '2', '1503', '15', '2', '实施项目', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('536', '2', '150301', '1503', '3', '查询项目详情', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('537', '2', '150302', '1503', '3', '编辑项目', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('538', '2', '1504', '15', '2', '竣工项目', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('539', '2', '150401', '1504', '3', '查询项目详情', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('540', '2', '150402', '1504', '3', '编辑项目', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('541', '2', '1505', '15', '2', '终止项目', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('542', '2', '150501', '1505', '3', '查询项目详情', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('543', '2', '200103', '2001', '3', '审核洽谈预算', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('544', '2', '200106', '2001', '3', '审核实施预算', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('545', '2', '2001', '20', '2', '预算管理', '6', '2019-08-16 15:52:07', '2019-08-19 15:33:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('546', '2', '15', '0', '1', '项目信息管理', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('547', '2', '20', '0', '1', '预算报价管理', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('548', '2', '25', '0', '1', '采购集成管理', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('549', '2', '30', '0', '1', '施工安装管理', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('550', '2', '35', '0', '1', '建筑设计管理', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('551', '2', '40', '0', '1', '部件集成管理', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('552', '2', '45', '0', '1', '供应商管理', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('553', '2', '55', '0', '1', '客户信息管理', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('554', '2', '60', '0', '1', '系统公告管理', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('555', '2', '3501', '35', '2', '查询建筑系统详情', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('556', '2', '3502', '35', '2', '新增建筑系统', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('557', '2', '3503', '35', '2', '编辑建筑系统', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('558', '2', '3504', '35', '2', '更改建筑系统状态', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('559', '2', '3505', '35', '2', '查询建筑系统子系统', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('560', '2', '3506', '35', '2', '编辑建筑子系统', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('561', '2', '4501', '45', '2', '查询品牌信息', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('562', '2', '4502', '45', '2', '新增品牌信息', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('563', '2', '4503', '45', '2', '编辑品牌信息', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('564', '2', '4510', '45', '2', '查询供应商信息', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('565', '2', '4511', '45', '2', '新增供应商', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('566', '2', '4512', '45', '2', '编辑供应商', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('567', '2', '4513', '45', '2', '删除供应商', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('568', '2', '1501', '15', '2', '创建项目', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('569', '2', '1502', '15', '2', '洽谈项目', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('570', '2', '150201', '1502', '3', '查询项目详情', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('571', '2', '150202', '1502', '3', '编辑项目', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('572', '2', '1503', '15', '2', '实施项目', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('573', '2', '150301', '1503', '3', '查询项目详情', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('574', '2', '150302', '1503', '3', '编辑项目', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('575', '2', '1504', '15', '2', '竣工项目', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('576', '2', '150401', '1504', '3', '查询项目详情', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('577', '2', '150402', '1504', '3', '编辑项目', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('578', '2', '1505', '15', '2', '终止项目', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('579', '2', '150501', '1505', '3', '查询项目详情', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('580', '2', '200103', '2001', '3', '审核洽谈预算', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('581', '2', '200106', '2001', '3', '审核实施预算', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('582', '2', '2001', '20', '2', '预算管理', '6', '2019-08-19 15:33:02', '2019-08-20 15:46:09', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('583', '2', '15', '0', '1', '项目信息管理', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('584', '2', '20', '0', '1', '预算报价管理', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('585', '2', '25', '0', '1', '采购集成管理', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('586', '2', '30', '0', '1', '施工安装管理', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('587', '2', '35', '0', '1', '建筑设计管理', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('588', '2', '40', '0', '1', '部件集成管理', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('589', '2', '45', '0', '1', '供应商管理', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('590', '2', '55', '0', '1', '客户信息管理', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('591', '2', '60', '0', '1', '系统公告管理', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('592', '2', '3501', '35', '2', '查询建筑系统详情', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('593', '2', '3502', '35', '2', '新增建筑系统', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('594', '2', '3503', '35', '2', '编辑建筑系统', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('595', '2', '3504', '35', '2', '更改建筑系统状态', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('596', '2', '3505', '35', '2', '查询建筑系统子系统', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('597', '2', '3506', '35', '2', '编辑建筑子系统', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('598', '2', '4501', '45', '2', '查询品牌信息', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('599', '2', '4502', '45', '2', '新增品牌信息', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('600', '2', '4503', '45', '2', '编辑品牌信息', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('601', '2', '4510', '45', '2', '查询供应商信息', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('602', '2', '4511', '45', '2', '新增供应商', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('603', '2', '4512', '45', '2', '编辑供应商', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('604', '2', '4513', '45', '2', '删除供应商', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('605', '2', '1501', '15', '2', '创建项目', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('606', '2', '1502', '15', '2', '洽谈项目', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('607', '2', '150201', '1502', '3', '查询项目详情', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('608', '2', '150202', '1502', '3', '编辑项目', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('609', '2', '1503', '15', '2', '实施项目', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('610', '2', '150301', '1503', '3', '查询项目详情', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('611', '2', '150302', '1503', '3', '编辑项目', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('612', '2', '1504', '15', '2', '竣工项目', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('613', '2', '150401', '1504', '3', '查询项目详情', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('614', '2', '150402', '1504', '3', '编辑项目', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('615', '2', '1505', '15', '2', '终止项目', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('616', '2', '150501', '1505', '3', '查询项目详情', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('617', '2', '200103', '2001', '3', '审核洽谈预算', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('618', '2', '200106', '2001', '3', '审核实施预算', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('619', '2', '2001', '20', '2', '预算管理', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('620', '2', '2002', '20', '2', '报价管理', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('621', '2', '200203', '2002', '3', '审核洽谈预算', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('622', '2', '200206', '2002', '3', '审核实施预算', '6', '2019-08-20 15:46:09', '2019-08-21 18:23:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('623', '2', '15', '0', '1', '项目信息管理', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('624', '2', '20', '0', '1', '预算报价管理', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('625', '2', '25', '0', '1', '采购集成管理', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('626', '2', '30', '0', '1', '施工安装管理', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('627', '2', '35', '0', '1', '建筑设计管理', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('628', '2', '40', '0', '1', '部件集成管理', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('629', '2', '45', '0', '1', '供应商管理', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('630', '2', '55', '0', '1', '客户信息管理', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('631', '2', '60', '0', '1', '系统公告管理', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('632', '2', '3501', '35', '2', '查询建筑系统详情', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('633', '2', '3502', '35', '2', '新增建筑系统', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('634', '2', '3503', '35', '2', '编辑建筑系统', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('635', '2', '3504', '35', '2', '更改建筑系统状态', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('636', '2', '3505', '35', '2', '查询建筑系统子系统', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('637', '2', '3506', '35', '2', '编辑建筑子系统', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('638', '2', '4501', '45', '2', '查询品牌信息', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('639', '2', '4502', '45', '2', '新增品牌信息', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('640', '2', '4503', '45', '2', '编辑品牌信息', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('641', '2', '4510', '45', '2', '查询供应商信息', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('642', '2', '4511', '45', '2', '新增供应商', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('643', '2', '4512', '45', '2', '编辑供应商', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('644', '2', '4513', '45', '2', '删除供应商', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('645', '2', '1501', '15', '2', '创建项目', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('646', '2', '1502', '15', '2', '洽谈项目', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('647', '2', '150201', '1502', '3', '查询项目详情', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('648', '2', '150202', '1502', '3', '编辑项目', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('649', '2', '1503', '15', '2', '实施项目', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('650', '2', '150301', '1503', '3', '查询项目详情', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('651', '2', '150302', '1503', '3', '编辑项目', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('652', '2', '1504', '15', '2', '竣工项目', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('653', '2', '150401', '1504', '3', '查询项目详情', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('654', '2', '150402', '1504', '3', '编辑项目', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('655', '2', '1505', '15', '2', '终止项目', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('656', '2', '150501', '1505', '3', '查询项目详情', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('657', '2', '200103', '2001', '3', '审核洽谈预算', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('658', '2', '200106', '2001', '3', '审核实施预算', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('659', '2', '2001', '20', '2', '预算管理', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('660', '2', '2002', '20', '2', '报价管理', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('661', '2', '200203', '2002', '3', '审核洽谈预算', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('662', '2', '200206', '2002', '3', '审核实施预算', '6', '2019-08-21 18:23:33', '2019-08-22 11:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('663', '2', '15', '0', '1', '项目信息管理', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('664', '2', '20', '0', '1', '预算报价管理', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('665', '2', '25', '0', '1', '采购集成管理', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('666', '2', '30', '0', '1', '施工安装管理', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('667', '2', '35', '0', '1', '建筑设计管理', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('668', '2', '40', '0', '1', '部件集成管理', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('669', '2', '45', '0', '1', '供应商管理', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('670', '2', '55', '0', '1', '客户信息管理', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('671', '2', '60', '0', '1', '系统公告管理', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('672', '2', '3501', '35', '2', '查询建筑系统详情', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('673', '2', '3502', '35', '2', '新增建筑系统', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('674', '2', '3503', '35', '2', '编辑建筑系统', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('675', '2', '3504', '35', '2', '更改建筑系统状态', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('676', '2', '3505', '35', '2', '查询建筑系统子系统', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('677', '2', '3506', '35', '2', '编辑建筑子系统', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('678', '2', '4501', '45', '2', '查询品牌信息', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('679', '2', '4502', '45', '2', '新增品牌信息', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('680', '2', '4503', '45', '2', '编辑品牌信息', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('681', '2', '4510', '45', '2', '查询供应商信息', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('682', '2', '4511', '45', '2', '新增供应商', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('683', '2', '4512', '45', '2', '编辑供应商', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('684', '2', '4513', '45', '2', '删除供应商', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('685', '2', '1501', '15', '2', '创建项目', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('686', '2', '1502', '15', '2', '洽谈项目', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('687', '2', '150201', '1502', '3', '查询项目详情', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('688', '2', '150202', '1502', '3', '编辑项目', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('689', '2', '1503', '15', '2', '实施项目', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('690', '2', '150301', '1503', '3', '查询项目详情', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('691', '2', '150302', '1503', '3', '编辑项目', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('692', '2', '1504', '15', '2', '竣工项目', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('693', '2', '150401', '1504', '3', '查询项目详情', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('694', '2', '150402', '1504', '3', '编辑项目', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('695', '2', '1505', '15', '2', '终止项目', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('696', '2', '150501', '1505', '3', '查询项目详情', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('697', '2', '200103', '2001', '3', '审核洽谈预算', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('698', '2', '200106', '2001', '3', '审核实施预算', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('699', '2', '2001', '20', '2', '预算管理', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('700', '2', '2002', '20', '2', '报价管理', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('701', '2', '200203', '2002', '3', '审核洽谈预算', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('702', '2', '200206', '2002', '3', '审核实施预算', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('703', '2', '2501', '25', '2', '实施项目', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('704', '2', '250101', '2501', '3', '编辑采购单', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('705', '2', '250102', '2501', '3', '指定采购负责人', '6', '2019-08-22 11:04:44', '2019-08-23 16:26:18', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('706', '2', '15', '0', '1', '项目信息管理', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('707', '2', '20', '0', '1', '预算报价管理', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('708', '2', '25', '0', '1', '采购集成管理', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('709', '2', '30', '0', '1', '施工安装管理', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('710', '2', '35', '0', '1', '建筑设计管理', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('711', '2', '40', '0', '1', '部件集成管理', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('712', '2', '45', '0', '1', '供应商管理', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('713', '2', '55', '0', '1', '客户信息管理', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('714', '2', '60', '0', '1', '系统公告管理', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('715', '2', '3501', '35', '2', '查询建筑系统详情', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('716', '2', '3502', '35', '2', '新增建筑系统', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('717', '2', '3503', '35', '2', '编辑建筑系统', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('718', '2', '3504', '35', '2', '更改建筑系统状态', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('719', '2', '3505', '35', '2', '查询建筑系统子系统', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('720', '2', '3506', '35', '2', '编辑建筑子系统', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('721', '2', '4501', '45', '2', '查询品牌信息', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('722', '2', '4502', '45', '2', '新增品牌信息', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('723', '2', '4503', '45', '2', '编辑品牌信息', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('724', '2', '4510', '45', '2', '查询供应商信息', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('725', '2', '4511', '45', '2', '新增供应商', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('726', '2', '4512', '45', '2', '编辑供应商', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('727', '2', '4513', '45', '2', '删除供应商', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('728', '2', '1501', '15', '2', '创建项目', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('729', '2', '1502', '15', '2', '洽谈项目', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('730', '2', '150201', '1502', '3', '查询项目详情', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('731', '2', '150202', '1502', '3', '编辑项目', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('732', '2', '1503', '15', '2', '实施项目', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('733', '2', '150301', '1503', '3', '查询项目详情', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('734', '2', '150302', '1503', '3', '编辑项目', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('735', '2', '1504', '15', '2', '竣工项目', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('736', '2', '150401', '1504', '3', '查询项目详情', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('737', '2', '150402', '1504', '3', '编辑项目', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('738', '2', '1505', '15', '2', '终止项目', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('739', '2', '150501', '1505', '3', '查询项目详情', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('740', '2', '200103', '2001', '3', '审核洽谈预算', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('741', '2', '200106', '2001', '3', '审核实施预算', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('742', '2', '2001', '20', '2', '预算管理', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('743', '2', '2002', '20', '2', '报价管理', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('744', '2', '200203', '2002', '3', '审核洽谈预算', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('745', '2', '200206', '2002', '3', '审核实施预算', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('746', '2', '2501', '25', '2', '实施项目', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('747', '2', '250101', '2501', '3', '编辑采购单', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('748', '2', '250102', '2501', '3', '采购批次管理', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('749', '2', '250105', '2501', '3', '指定采购负责人', '6', '2019-08-23 16:26:18', '2019-08-29 15:51:20', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('750', '1', '15', '0', '1', '项目信息管理', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('751', '1', '20', '0', '1', '预算报价管理', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('752', '1', '25', '0', '1', '采购集成管理', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('753', '1', '30', '0', '1', '施工安装管理', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('754', '1', '35', '0', '1', '建筑设计管理', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('755', '1', '40', '0', '1', '部件集成管理', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('756', '1', '45', '0', '1', '供应商管理', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('757', '1', '50', '0', '1', '财务信息管理', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('758', '1', '55', '0', '1', '客户信息管理', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('759', '1', '60', '0', '1', '系统公告管理', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('760', '1', '3501', '35', '2', '查询建筑系统详情', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('761', '1', '3502', '35', '2', '新增建筑系统', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('762', '1', '3503', '35', '2', '编辑建筑系统', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('763', '1', '3504', '35', '2', '更改建筑系统状态', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('764', '1', '3505', '35', '2', '查询建筑系统子系统', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('765', '1', '3506', '35', '2', '编辑建筑子系统', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('766', '1', '4501', '45', '2', '查询品牌信息', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('767', '1', '4502', '45', '2', '新增品牌信息', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('768', '1', '4503', '45', '2', '编辑品牌信息', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('769', '1', '4510', '45', '2', '查询供应商信息', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('770', '1', '4511', '45', '2', '新增供应商', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('771', '1', '4512', '45', '2', '编辑供应商', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('772', '1', '4513', '45', '2', '删除供应商', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('773', '1', '4001', '40', '2', '搜索部件信息', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('774', '1', '4002', '40', '2', '查询部件详情', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('775', '1', '4003', '40', '2', '编辑部件', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('776', '1', '5501', '55', '2', '客户信息列表', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('777', '1', '5502', '55', '2', '添加客户', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('778', '1', '5503', '55', '2', '编辑客户', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('779', '1', '5504', '55', '2', '删除客户', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('780', '1', '1501', '15', '2', '创建项目', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('781', '1', '1502', '15', '2', '洽谈项目', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('782', '1', '150201', '1502', '3', '查询项目详情', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('783', '1', '150202', '1502', '3', '编辑项目', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('784', '1', '1503', '15', '2', '实施项目', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('785', '1', '150301', '1503', '3', '查询项目详情', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('786', '1', '150302', '1503', '3', '编辑项目', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('787', '1', '1504', '15', '2', '竣工项目', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('788', '1', '150401', '1504', '3', '查询项目详情', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('789', '1', '150402', '1504', '3', '编辑项目', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('790', '1', '1505', '15', '2', '终止项目', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('791', '1', '150501', '1505', '3', '查询项目详情', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('792', '1', '3507', '35', '2', '项目设计', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('793', '1', '350701', '3507', '3', '查询洽谈项目详情', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('794', '1', '350702', '3507', '3', '编辑洽谈项目', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('795', '1', '350703', '3507', '3', '查询实施项目详情', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('796', '1', '350704', '3507', '3', '编辑实施项目', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('797', '1', '350705', '3507', '3', '查询竣工项目详情', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('798', '1', '350706', '3507', '3', '查询终止项目详情', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('799', '1', '200101', '2001', '3', '查询洽谈预算详情', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('800', '1', '200102', '2001', '3', '编辑洽谈预算', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('801', '1', '200104', '2001', '3', '查询实施预算详情', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('802', '1', '200105', '2001', '3', '编辑实施预算', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('803', '1', '200107', '2001', '3', '查询竣工预算详情', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('804', '1', '200108', '2001', '3', '查询终止预算详情', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('805', '1', '200103', '2001', '3', '审核洽谈预算', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('806', '1', '200106', '2001', '3', '审核实施预算', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('807', '1', '2001', '20', '2', '预算管理', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('808', '1', '2002', '20', '2', '报价管理', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('809', '1', '200201', '2002', '3', '查询洽谈预算详情', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('810', '1', '200202', '2002', '3', '编辑洽谈预算', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('811', '1', '200204', '2002', '3', '查询实施预算详情', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('812', '1', '200205', '2002', '3', '编辑实施预算', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('813', '1', '200207', '2002', '3', '查询竣工预算详情', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('814', '1', '200208', '2002', '3', '查询终止预算详情', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('815', '1', '200203', '2002', '3', '审核洽谈预算', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('816', '1', '200206', '2002', '3', '审核实施预算', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('817', '1', '2501', '25', '2', '实施项目', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('818', '1', '2502', '25', '2', '竣工项目', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('819', '1', '250101', '2501', '3', '编辑采购单', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('820', '1', '250102', '2501', '3', '采购批次管理', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('821', '1', '250103', '2501', '3', '采购订单管理', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('822', '1', '250104', '2501', '3', '物流进度管理', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('823', '1', '250105', '2501', '3', '指定采购负责人', '1', '2019-08-28 11:06:17', '2019-08-28 11:06:17', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('824', '2', '15', '0', '1', '项目信息管理', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('825', '2', '20', '0', '1', '预算报价管理', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('826', '2', '25', '0', '1', '采购集成管理', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('827', '2', '30', '0', '1', '施工安装管理', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('828', '2', '35', '0', '1', '建筑设计管理', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('829', '2', '40', '0', '1', '部件集成管理', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('830', '2', '45', '0', '1', '供应商管理', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('831', '2', '55', '0', '1', '客户信息管理', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('832', '2', '60', '0', '1', '系统公告管理', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('833', '2', '3501', '35', '2', '查询建筑系统详情', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('834', '2', '3502', '35', '2', '新增建筑系统', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('835', '2', '3503', '35', '2', '编辑建筑系统', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('836', '2', '3504', '35', '2', '更改建筑系统状态', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('837', '2', '3505', '35', '2', '查询建筑系统子系统', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('838', '2', '3506', '35', '2', '编辑建筑子系统', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('839', '2', '4501', '45', '2', '查询品牌信息', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('840', '2', '4502', '45', '2', '新增品牌信息', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('841', '2', '4503', '45', '2', '编辑品牌信息', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('842', '2', '4510', '45', '2', '查询供应商信息', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('843', '2', '4511', '45', '2', '新增供应商', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('844', '2', '4512', '45', '2', '编辑供应商', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('845', '2', '4513', '45', '2', '删除供应商', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('846', '2', '1501', '15', '2', '创建项目', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('847', '2', '1502', '15', '2', '洽谈项目', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('848', '2', '150201', '1502', '3', '查询项目详情', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('849', '2', '150202', '1502', '3', '编辑项目', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('850', '2', '1503', '15', '2', '实施项目', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('851', '2', '150301', '1503', '3', '查询项目详情', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('852', '2', '150302', '1503', '3', '编辑项目', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('853', '2', '1504', '15', '2', '竣工项目', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('854', '2', '150401', '1504', '3', '查询项目详情', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('855', '2', '150402', '1504', '3', '编辑项目', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('856', '2', '1505', '15', '2', '终止项目', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('857', '2', '150501', '1505', '3', '查询项目详情', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('858', '2', '200103', '2001', '3', '审核洽谈预算', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('859', '2', '200106', '2001', '3', '审核实施预算', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('860', '2', '2001', '20', '2', '预算管理', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('861', '2', '2002', '20', '2', '报价管理', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('862', '2', '200203', '2002', '3', '审核洽谈预算', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('863', '2', '200206', '2002', '3', '审核实施预算', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('864', '2', '2501', '25', '2', '实施项目', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('865', '2', '250101', '2501', '3', '编辑采购单', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('866', '2', '250102', '2501', '3', '采购批次管理', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('867', '2', '250105', '2501', '3', '指定采购负责人', '6', '2019-08-29 15:51:20', '2019-08-29 18:04:44', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('868', '2', '15', '0', '1', '项目信息管理', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('869', '2', '20', '0', '1', '预算报价管理', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('870', '2', '25', '0', '1', '采购集成管理', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('871', '2', '30', '0', '1', '施工安装管理', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('872', '2', '35', '0', '1', '建筑设计管理', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('873', '2', '40', '0', '1', '部件集成管理', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('874', '2', '45', '0', '1', '供应商管理', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('875', '2', '55', '0', '1', '客户信息管理', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('876', '2', '60', '0', '1', '系统公告管理', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('877', '2', '3501', '35', '2', '查询建筑系统详情', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('878', '2', '3502', '35', '2', '新增建筑系统', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('879', '2', '3503', '35', '2', '编辑建筑系统', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('880', '2', '3504', '35', '2', '更改建筑系统状态', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('881', '2', '3505', '35', '2', '查询建筑系统子系统', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('882', '2', '3506', '35', '2', '编辑建筑子系统', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('883', '2', '4501', '45', '2', '查询品牌信息', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('884', '2', '4502', '45', '2', '新增品牌信息', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('885', '2', '4503', '45', '2', '编辑品牌信息', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('886', '2', '4510', '45', '2', '查询供应商信息', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('887', '2', '4511', '45', '2', '新增供应商', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('888', '2', '4512', '45', '2', '编辑供应商', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('889', '2', '4513', '45', '2', '删除供应商', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('890', '2', '1501', '15', '2', '创建项目', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('891', '2', '1502', '15', '2', '洽谈项目', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('892', '2', '150201', '1502', '3', '查询项目详情', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('893', '2', '150202', '1502', '3', '编辑项目', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('894', '2', '1503', '15', '2', '实施项目', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('895', '2', '150301', '1503', '3', '查询项目详情', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('896', '2', '150302', '1503', '3', '编辑项目', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('897', '2', '1504', '15', '2', '竣工项目', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('898', '2', '150401', '1504', '3', '查询项目详情', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('899', '2', '150402', '1504', '3', '编辑项目', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('900', '2', '1505', '15', '2', '终止项目', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('901', '2', '150501', '1505', '3', '查询项目详情', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('902', '2', '200103', '2001', '3', '审核洽谈预算', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('903', '2', '200106', '2001', '3', '审核实施预算', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('904', '2', '2001', '20', '2', '预算管理', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('905', '2', '2002', '20', '2', '报价管理', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('906', '2', '200203', '2002', '3', '审核洽谈预算', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('907', '2', '200206', '2002', '3', '审核实施预算', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('908', '2', '2501', '25', '2', '实施项目', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('909', '2', '250101', '2501', '3', '编辑采购单', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('910', '2', '250102', '2501', '3', '采购批次管理', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('911', '2', '250105', '2501', '3', '指定采购负责人', '6', '2019-08-29 18:04:44', '2019-08-30 18:18:25', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('912', '2', '15', '0', '1', '项目信息管理', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('913', '2', '20', '0', '1', '预算报价管理', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('914', '2', '25', '0', '1', '采购集成管理', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('915', '2', '30', '0', '1', '施工安装管理', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('916', '2', '35', '0', '1', '建筑设计管理', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('917', '2', '40', '0', '1', '部件集成管理', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('918', '2', '45', '0', '1', '供应商管理', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('919', '2', '55', '0', '1', '客户信息管理', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('920', '2', '60', '0', '1', '系统公告管理', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('921', '2', '3501', '35', '2', '查询建筑系统详情', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('922', '2', '3502', '35', '2', '新增建筑系统', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('923', '2', '3503', '35', '2', '编辑建筑系统', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('924', '2', '3504', '35', '2', '更改建筑系统状态', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('925', '2', '3505', '35', '2', '查询建筑系统子系统', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('926', '2', '3506', '35', '2', '编辑建筑子系统', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('927', '2', '4501', '45', '2', '查询品牌信息', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('928', '2', '4502', '45', '2', '新增品牌信息', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('929', '2', '4503', '45', '2', '编辑品牌信息', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('930', '2', '4510', '45', '2', '查询供应商信息', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('931', '2', '4511', '45', '2', '新增供应商', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('932', '2', '4512', '45', '2', '编辑供应商', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('933', '2', '4513', '45', '2', '删除供应商', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('934', '2', '1501', '15', '2', '创建项目', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('935', '2', '1502', '15', '2', '洽谈项目', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('936', '2', '150201', '1502', '3', '查询项目详情', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('937', '2', '150202', '1502', '3', '编辑项目', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('938', '2', '1503', '15', '2', '实施项目', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('939', '2', '150301', '1503', '3', '查询项目详情', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('940', '2', '150302', '1503', '3', '编辑项目', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('941', '2', '1504', '15', '2', '竣工项目', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('942', '2', '150401', '1504', '3', '查询项目详情', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('943', '2', '150402', '1504', '3', '编辑项目', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('944', '2', '1505', '15', '2', '终止项目', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('945', '2', '150501', '1505', '3', '查询项目详情', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('946', '2', '200103', '2001', '3', '审核洽谈预算', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('947', '2', '200106', '2001', '3', '审核实施预算', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('948', '2', '2001', '20', '2', '预算管理', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('949', '2', '2002', '20', '2', '报价管理', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('950', '2', '200203', '2002', '3', '审核洽谈预算', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('951', '2', '200206', '2002', '3', '审核实施预算', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('952', '2', '2501', '25', '2', '实施项目', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('953', '2', '250101', '2501', '3', '编辑采购单', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('954', '2', '250102', '2501', '3', '采购批次管理', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('955', '2', '250105', '2501', '3', '指定采购负责人', '6', '2019-08-30 18:18:25', '2019-08-30 18:19:31', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('956', '2', '15', '0', '1', '项目信息管理', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('957', '2', '20', '0', '1', '预算报价管理', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('958', '2', '25', '0', '1', '采购集成管理', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('959', '2', '30', '0', '1', '施工安装管理', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('960', '2', '35', '0', '1', '建筑设计管理', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('961', '2', '40', '0', '1', '部件集成管理', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('962', '2', '45', '0', '1', '供应商管理', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('963', '2', '55', '0', '1', '客户信息管理', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('964', '2', '60', '0', '1', '系统公告管理', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('965', '2', '3501', '35', '2', '查询建筑系统详情', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('966', '2', '3502', '35', '2', '新增建筑系统', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('967', '2', '3503', '35', '2', '编辑建筑系统', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('968', '2', '3504', '35', '2', '更改建筑系统状态', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('969', '2', '3505', '35', '2', '查询建筑系统子系统', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('970', '2', '3506', '35', '2', '编辑建筑子系统', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('971', '2', '4501', '45', '2', '查询品牌信息', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('972', '2', '4502', '45', '2', '新增品牌信息', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('973', '2', '4503', '45', '2', '编辑品牌信息', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('974', '2', '4510', '45', '2', '查询供应商信息', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('975', '2', '4511', '45', '2', '新增供应商', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('976', '2', '4512', '45', '2', '编辑供应商', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('977', '2', '4513', '45', '2', '删除供应商', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('978', '2', '1501', '15', '2', '创建项目', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('979', '2', '1502', '15', '2', '洽谈项目', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('980', '2', '150201', '1502', '3', '查询项目详情', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('981', '2', '150202', '1502', '3', '编辑项目', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('982', '2', '1503', '15', '2', '实施项目', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('983', '2', '150301', '1503', '3', '查询项目详情', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('984', '2', '150302', '1503', '3', '编辑项目', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('985', '2', '1504', '15', '2', '竣工项目', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('986', '2', '150401', '1504', '3', '查询项目详情', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('987', '2', '150402', '1504', '3', '编辑项目', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('988', '2', '1505', '15', '2', '终止项目', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('989', '2', '150501', '1505', '3', '查询项目详情', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('990', '2', '200103', '2001', '3', '审核洽谈预算', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('991', '2', '200106', '2001', '3', '审核实施预算', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('992', '2', '2001', '20', '2', '预算管理', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('993', '2', '2002', '20', '2', '报价管理', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('994', '2', '200203', '2002', '3', '审核洽谈预算', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('995', '2', '200206', '2002', '3', '审核实施预算', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('996', '2', '2501', '25', '2', '实施项目', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('997', '2', '250101', '2501', '3', '编辑采购单', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('998', '2', '250102', '2501', '3', '采购批次管理', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('999', '2', '250105', '2501', '3', '指定采购负责人', '6', '2019-08-30 18:19:31', '2019-09-02 10:01:02', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1000', '2', '15', '0', '1', '项目信息管理', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1001', '2', '20', '0', '1', '预算报价管理', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1002', '2', '25', '0', '1', '采购集成管理', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1003', '2', '30', '0', '1', '施工安装管理', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1004', '2', '35', '0', '1', '建筑设计管理', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1005', '2', '40', '0', '1', '部件集成管理', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1006', '2', '45', '0', '1', '供应商管理', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1007', '2', '55', '0', '1', '客户信息管理', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1008', '2', '60', '0', '1', '系统公告管理', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1009', '2', '3501', '35', '2', '查询建筑系统详情', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1010', '2', '3502', '35', '2', '新增建筑系统', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1011', '2', '3503', '35', '2', '编辑建筑系统', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1012', '2', '3504', '35', '2', '更改建筑系统状态', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1013', '2', '3505', '35', '2', '查询建筑系统子系统', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1014', '2', '3506', '35', '2', '编辑建筑子系统', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1015', '2', '4501', '45', '2', '查询品牌信息', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1016', '2', '4502', '45', '2', '新增品牌信息', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1017', '2', '4503', '45', '2', '编辑品牌信息', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1018', '2', '4510', '45', '2', '查询供应商信息', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1019', '2', '4511', '45', '2', '新增供应商', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1020', '2', '4512', '45', '2', '编辑供应商', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1021', '2', '4513', '45', '2', '删除供应商', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1022', '2', '1501', '15', '2', '创建项目', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1023', '2', '1502', '15', '2', '洽谈项目', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1024', '2', '150201', '1502', '3', '查询项目详情', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1025', '2', '150202', '1502', '3', '编辑项目', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1026', '2', '1503', '15', '2', '实施项目', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1027', '2', '150301', '1503', '3', '查询项目详情', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1028', '2', '150302', '1503', '3', '编辑项目', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1029', '2', '1504', '15', '2', '竣工项目', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1030', '2', '150401', '1504', '3', '查询项目详情', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1031', '2', '150402', '1504', '3', '编辑项目', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1032', '2', '1505', '15', '2', '终止项目', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1033', '2', '150501', '1505', '3', '查询项目详情', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1034', '2', '200103', '2001', '3', '审核洽谈预算', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1035', '2', '200106', '2001', '3', '审核实施预算', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1036', '2', '2001', '20', '2', '预算管理', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1037', '2', '2002', '20', '2', '报价管理', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1038', '2', '200203', '2002', '3', '审核洽谈预算', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1039', '2', '200206', '2002', '3', '审核实施预算', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1040', '2', '2501', '25', '2', '实施项目', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1041', '2', '250101', '2501', '3', '编辑采购单', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1042', '2', '250102', '2501', '3', '采购批次管理', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1043', '2', '250105', '2501', '3', '指定采购负责人', '6', '2019-09-02 10:01:02', '2019-09-02 10:01:02', '1');

-- ----------------------------
-- Table structure for sp_supplier
-- ----------------------------
DROP TABLE IF EXISTS `sp_supplier`;
CREATE TABLE `sp_supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier` varchar(255) DEFAULT NULL COMMENT '供应商名称',
  `manufactor` varchar(255) DEFAULT NULL COMMENT '厂家名称',
  `address` varchar(1000) DEFAULT NULL COMMENT '供应商地址',
  `contacts` varchar(255) DEFAULT NULL COMMENT '联系人',
  `telephone` varchar(255) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(255) DEFAULT NULL COMMENT '电子邮箱',
  `creator` int(11) DEFAULT NULL COMMENT '创建人id',
  `creat_user_name` varchar(255) DEFAULT NULL COMMENT '创建人姓名',
  `created_at` date DEFAULT NULL COMMENT '创建时间',
  `modifier` int(11) unsigned zerofill DEFAULT NULL COMMENT '编辑人员id',
  `modify_user_name` varchar(255) DEFAULT NULL COMMENT '编辑人员姓名',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态 1有效 0无效',
  PRIMARY KEY (`id`),
  KEY `manufactor` (`manufactor`(191)) USING BTREE,
  KEY `supplier` (`supplier`(191)) USING BTREE,
  KEY `address` (`address`(191)) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_supplier
-- ----------------------------
INSERT INTO `sp_supplier` VALUES ('1', '灿烂前往222222', '灿烂千阳文化11111', '北京朝阳区3333', '旺旺44', '15210001023', 'everup@163.com', '6', '王括', '2019-07-24', '00000000006', '王括', '2019-08-02 00:00:00', '1');
INSERT INTO `sp_supplier` VALUES ('2', '灿烂前往', '灿烂千阳文化', '北京朝阳区', '旺旺', '15210001023', 'everup@163.com', '6', '王括', '2019-07-24', '00000000006', '王括', '2019-07-28 00:00:00', '1');
INSERT INTO `sp_supplier` VALUES ('3', '有限责任公司', '东方风行', '东八里在', '旺旺', '15210007070', 'admin@163.com', '6', '王括', '2019-07-28', null, null, null, '1');

-- ----------------------------
-- Table structure for sp_supplier_brand
-- ----------------------------
DROP TABLE IF EXISTS `sp_supplier_brand`;
CREATE TABLE `sp_supplier_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `brand_id` int(11) DEFAULT NULL COMMENT '品牌ID',
  `supplier_id` int(11) DEFAULT NULL COMMENT '供应商ID',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态1有效 0无效',
  `createor` varchar(255) DEFAULT NULL COMMENT '创建人',
  `create_uid` int(11) DEFAULT NULL COMMENT '创建人ID',
  `created_at` date DEFAULT NULL COMMENT '创建时间',
  `editor` varchar(255) DEFAULT NULL COMMENT '编辑人',
  `edit_uid` int(11) DEFAULT NULL COMMENT '编辑人id',
  `updated_at` date DEFAULT NULL COMMENT '编辑时间',
  PRIMARY KEY (`id`),
  KEY `brand` (`status`,`brand_id`) USING BTREE,
  KEY `supplier_id` (`status`,`supplier_id`) USING BTREE,
  KEY `brand_id_supplier_id` (`status`,`brand_id`,`supplier_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_supplier_brand
-- ----------------------------
INSERT INTO `sp_supplier_brand` VALUES ('52', '1', '2', '1', '王括', '6', '2019-07-28', null, null, null);
INSERT INTO `sp_supplier_brand` VALUES ('53', '2', '2', '1', '王括', '6', '2019-07-28', null, null, null);
INSERT INTO `sp_supplier_brand` VALUES ('54', '3', '2', '1', '王括', '6', '2019-07-28', null, null, null);
INSERT INTO `sp_supplier_brand` VALUES ('55', '4', '2', '1', '王括', '6', '2019-07-28', null, null, null);
INSERT INTO `sp_supplier_brand` VALUES ('56', '5', '2', '1', '王括', '6', '2019-07-28', null, null, null);
INSERT INTO `sp_supplier_brand` VALUES ('58', '1', '3', '1', '王括', '6', '2019-07-28', null, null, null);
INSERT INTO `sp_supplier_brand` VALUES ('59', '2', '3', '1', '王括', '6', '2019-07-28', null, null, null);
INSERT INTO `sp_supplier_brand` VALUES ('60', '3', '3', '1', '王括', '6', '2019-07-28', null, null, null);
INSERT INTO `sp_supplier_brand` VALUES ('61', '4', '3', '1', '王括', '6', '2019-07-28', null, null, null);
INSERT INTO `sp_supplier_brand` VALUES ('62', '5', '3', '1', '王括', '6', '2019-07-28', null, null, null);
INSERT INTO `sp_supplier_brand` VALUES ('63', '6', '3', '1', '王括', '6', '2019-07-28', null, null, null);
INSERT INTO `sp_supplier_brand` VALUES ('73', '7', '2', '1', '王括', '6', '2019-08-02', null, null, null);
INSERT INTO `sp_supplier_brand` VALUES ('74', '3', '1', '1', '王括', '6', '2019-08-02', null, null, null);
INSERT INTO `sp_supplier_brand` VALUES ('75', '4', '1', '1', '王括', '6', '2019-08-02', null, null, null);
INSERT INTO `sp_supplier_brand` VALUES ('76', '5', '1', '1', '王括', '6', '2019-08-02', null, null, null);
INSERT INTO `sp_supplier_brand` VALUES ('77', '6', '1', '1', '王括', '6', '2019-08-02', null, null, null);
INSERT INTO `sp_supplier_brand` VALUES ('78', '7', '1', '0', '王括', '6', '2019-08-02', null, null, null);

-- ----------------------------
-- Table structure for sp_system_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `sp_system_operation_log`;
CREATE TABLE `sp_system_operation_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户id',
  `url` varchar(255) DEFAULT NULL COMMENT '请求路径',
  `user_agent` varchar(1000) DEFAULT NULL COMMENT '浏览器配置',
  `ip` varchar(255) DEFAULT NULL COMMENT 'ip地址',
  `param` varchar(4000) DEFAULT NULL COMMENT '请求参数',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `created_at` (`created_at`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6675 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_system_operation_log
-- ----------------------------
INSERT INTO `sp_system_operation_log` VALUES ('6655', '6', 'customer/customerList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-09-04 18:01:43');
INSERT INTO `sp_system_operation_log` VALUES ('6656', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-09-04 18:01:47');
INSERT INTO `sp_system_operation_log` VALUES ('6657', '6', 'supplier/supplierList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-09-04 18:01:49');
INSERT INTO `sp_system_operation_log` VALUES ('6658', '6', 'supplier/editSupplier/2', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-09-04 18:01:51');
INSERT INTO `sp_system_operation_log` VALUES ('6659', '6', 'budget/budgetStart', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-09-04 18:09:03');
INSERT INTO `sp_system_operation_log` VALUES ('6660', '6', 'purchase/purchaseConduct', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-09-04 18:09:04');
INSERT INTO `sp_system_operation_log` VALUES ('6661', '6', 'purchase/purchaseOrderManage/10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-09-04 18:09:06');
INSERT INTO `sp_system_operation_log` VALUES ('6662', '6', 'purchase/createPurchaseOrder/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-09-04 18:09:07');
INSERT INTO `sp_system_operation_log` VALUES ('6663', '6', 'purchase/createPurchaseOrder/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-09-04 18:11:08');
INSERT INTO `sp_system_operation_log` VALUES ('6664', '6', 'purchase/createPurchaseOrder/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-09-04 18:23:26');
INSERT INTO `sp_system_operation_log` VALUES ('6665', '6', 'purchase/createPurchaseOrder/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-09-04 18:24:42');
INSERT INTO `sp_system_operation_log` VALUES ('6666', '6', 'purchase/createPurchaseOrder/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-09-04 18:32:17');
INSERT INTO `sp_system_operation_log` VALUES ('6667', '6', 'purchase/createPurchaseOrder/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-09-04 18:34:30');
INSERT INTO `sp_system_operation_log` VALUES ('6668', '6', 'purchase/createPurchaseOrder/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-09-04 18:35:53');
INSERT INTO `sp_system_operation_log` VALUES ('6669', '6', 'purchase/createPurchaseOrder/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-09-04 18:35:58');
INSERT INTO `sp_system_operation_log` VALUES ('6670', '6', 'purchase/createPurchaseOrder/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-09-04 18:36:37');
INSERT INTO `sp_system_operation_log` VALUES ('6671', '6', 'purchase/createPurchaseOrder/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-09-04 18:37:21');
INSERT INTO `sp_system_operation_log` VALUES ('6672', '6', 'purchase/createPurchaseOrder/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-09-04 18:37:43');
INSERT INTO `sp_system_operation_log` VALUES ('6673', '6', 'purchase/createPurchaseOrder/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-09-04 18:41:16');
INSERT INTO `sp_system_operation_log` VALUES ('6674', '6', 'purchase/createPurchaseOrder/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-09-04 18:41:43');

-- ----------------------------
-- Table structure for sp_system_setting
-- ----------------------------
DROP TABLE IF EXISTS `sp_system_setting`;
CREATE TABLE `sp_system_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field` varchar(255) DEFAULT NULL COMMENT '字段名',
  `name` varchar(1000) DEFAULT NULL COMMENT '值',
  `remark` varchar(255) DEFAULT NULL COMMENT '描述',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field` (`field`(191)) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_system_setting
-- ----------------------------
INSERT INTO `sp_system_setting` VALUES ('1', 'project_name', '中华第一网', '项目名称', '2019-06-27 11:05:58', '2019-06-27 08:51:09');
INSERT INTO `sp_system_setting` VALUES ('2', 'aaa', 'vvvvvvvvvvvvv', 'ddd', '2019-06-27 08:21:35', '2019-06-27 08:53:31');
INSERT INTO `sp_system_setting` VALUES ('3', 'asdfas', 'dddd', 'ssss', '2019-06-27 08:25:29', '2019-06-27 08:25:29');
INSERT INTO `sp_system_setting` VALUES ('4', 'ad', '财务人员1111', 'dd', '2019-06-27 08:35:57', '2019-06-29 08:55:00');
INSERT INTO `sp_system_setting` VALUES ('5', 'ad', 'ddddddddddddddd', 'dd', '2019-06-27 08:36:31', '2019-06-27 08:54:37');
INSERT INTO `sp_system_setting` VALUES ('6', 'test', 'sys', 'desc', '2019-06-27 08:56:35', '2019-06-27 08:56:35');
INSERT INTO `sp_system_setting` VALUES ('7', '0asdfa', '0dfas', '0dasdf', '2019-06-29 05:43:25', '2019-06-29 05:45:25');
INSERT INTO `sp_system_setting` VALUES ('8', '0aaaaaaaa', '0dddddddd', '0sssssssss', '2019-06-29 05:43:58', '2019-06-29 05:46:18');
INSERT INTO `sp_system_setting` VALUES ('9', '0', '0', '0', '2019-06-29 05:44:28', '2019-06-29 05:44:28');
INSERT INTO `sp_system_setting` VALUES ('10', '11111111', '333333333', '222222222', '2019-06-29 05:46:37', '2019-06-29 05:46:37');

-- ----------------------------
-- Table structure for sp_users
-- ----------------------------
DROP TABLE IF EXISTS `sp_users`;
CREATE TABLE `sp_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department_id` int(11) DEFAULT NULL COMMENT '部门id',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1' COMMENT '用户状态 0待审核 1活跃 -1审核未通过 -2禁止用户',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sp_users
-- ----------------------------
INSERT INTO `sp_users` VALUES ('1', '杨亚君(总经理)', 'admin@163.com', '$2y$10$E3jO81KFtRTmhK47CIVF8OSBJUuakYqR02iOyDVUlIvYOaruqciBW', null, 'XFSpxNh2GwLPZnwb3Rq36ZeIarhYE5wjefI5bk4DJ8zOAibmzemIt9U2YvvN', '2019-08-28 11:05:06', '2019-08-28 11:05:06', '1');
INSERT INTO `sp_users` VALUES ('2', 'test4', 'test4@qq.com', '$2y$10$oTPkMarBLf81rggDre0pE.R2gsQWyU0zIj92JTzYGjPC.iEKYviw.', '2', 'y095m6Z0JOuchRM1E46AU3qXykve1GRLkrdWI8qps6MjDAzJkbK92McnOTeo', '2019-07-22 11:05:53', '2019-09-02 11:48:08', '1');
INSERT INTO `sp_users` VALUES ('3', 'test2', 'test2@qq.com', '$2y$10$aKSLnSHm5wcw886HooDdmuXMkjjpw7WwZVR4pKzcZnLnFxzuU5nge', '6', null, '2019-07-22 10:59:51', '2019-09-02 11:48:08', '1');
INSERT INTO `sp_users` VALUES ('4', 'test1', 'test1@qq.com', '$2y$10$d.GnIWS4eZ/vaSwHeKM8ReUwxUkUp6dULcAFtkBPWdeFM2HsrhXDK', '6', '2qGuCWul8d3fSU5qboEZq31Wq3LZdNiSuYSSbnj1E0EgIt053VCm6F7GIflR', '2019-07-22 11:07:09', '2019-09-02 11:48:13', '1');
INSERT INTO `sp_users` VALUES ('5', 'test3', 'test3@qq.com', '$2y$10$rP2v69M86nhP6iu3e5O3a.g6INplFnfw0y4wRVaCiIotQM4IqZRpu', '6', null, '2019-07-22 11:05:03', '2019-09-02 11:48:15', '1');
INSERT INTO `sp_users` VALUES ('6', '王括', 'everup@163.com', '$2y$10$4ln/6wTn65YCk40M5azi5enoxwL2F1oh179Joi7WDhL23BqPDECPi', '4', 'OQcNi9DTwjX7tldsexZ912IcsOP8yV4LzAsNIPaGOybII8zgBLjDJc6tMjEu', '2019-09-02 10:56:46', '2019-09-02 11:00:11', '1');
INSERT INTO `sp_users` VALUES ('7', 'test5', 'test5@qq.com', '$2y$10$GDj6tdpsmW8rvD0bhi61F.4W5u75CUgl.l/YrVTlIRe3HUxoT.E9e', '2', 'yodaiDFf7X6Pl8doFE2GUGlhtpOMASLesgWGjCwDeGJuWnI3CeBKuFNgVXQV', '2019-09-02 10:57:46', '2019-09-02 11:48:18', '1');
INSERT INTO `sp_users` VALUES ('8', 'test6', 'test6@qq.com', '$2y$10$jETr86w49EhZGsAMwAkleeomZY3BZln3Gi5N4y2saqNq2R7KktTHS', '3', 'vIgfFv85klz0eA5g0hTYqVPUi0B7URgf406wiLCcFAoklmoPR9NWg46pDZ3e', '2019-07-22 11:08:21', '2019-09-02 11:48:20', '1');
INSERT INTO `sp_users` VALUES ('9', 'test7', 'test7@qq.com', '$2y$10$Vt7XualSar7inVPa/L0KAO3QniMm2pZr76U5jaXixhcqPLEGNggRK', '3', null, '2019-07-22 11:08:56', '2019-09-02 11:48:22', '1');
INSERT INTO `sp_users` VALUES ('10', 'test8', 'test8@qq.com', '$2y$10$Kztt9fauNc5vA4jcI48ohOzdNtDKn2CtaK8yWuDZncAkJYAN1z8tm', '5', null, '2019-07-22 11:09:22', '2019-09-02 11:48:24', '1');
INSERT INTO `sp_users` VALUES ('11', 'test9', 'test9@qq.com', '$2y$10$4ln/6wTn65YCk40M5azi5enoxwL2F1oh179Joi7WDhL23BqPDECPi', '5', null, '2019-07-22 11:09:54', '2019-09-02 11:48:26', '1');
INSERT INTO `sp_users` VALUES ('12', 'test10', 'test10@qq.com', '$2y$10$hc7cNJhcXocWuDVAH2bulej1e25Z4iMWBVEpEwp/F4xmhAqm07252', '2', null, '2019-07-22 11:10:42', '2019-09-02 11:48:28', '1');
INSERT INTO `sp_users` VALUES ('13', 'test11', 'test11@qq.com', '$2y$10$1VSCKro0bW4652VedicnQO8GRTRNDbWwUVZF4/PNmxbhEBXxbNP2C', '3', null, '2019-07-22 11:11:42', '2019-09-02 11:48:30', '1');
INSERT INTO `sp_users` VALUES ('14', 'admin', '497686205@qq.com', '$2y$10$23w8iI0kX4QmMIUucTxOOulmVWUr/Euq8RdCHbfYfRG.YBVaHb71m', '4', null, '2019-08-02 16:37:05', '2019-09-02 11:48:06', '1');
INSERT INTO `sp_users` VALUES ('15', 'test', 'test@163.com', '$2y$10$K8lSQkqYbI/0uHLFnx5WVuPC1Fl.GtMrpx0Nh1jKWnXrruT4SMw82', '8', null, '2019-09-02 11:52:55', '2019-09-02 11:54:36', '1');

-- ----------------------------
-- Table structure for sp_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sp_user_role`;
CREATE TABLE `sp_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `role_id` int(11) DEFAULT NULL COMMENT '角色id',
  `role_name` varchar(255) DEFAULT NULL COMMENT '角色名称',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态：1再用 0删除',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_user_role
-- ----------------------------
INSERT INTO `sp_user_role` VALUES ('1', '1', '1', '管理员', '0', '2019-06-26 18:05:21', '2019-08-28 11:05:06');
INSERT INTO `sp_user_role` VALUES ('2', '5', '1', '管理员', '0', '2019-07-09 06:41:20', '2019-09-02 11:47:12');
INSERT INTO `sp_user_role` VALUES ('3', '5', '1', '管理员', '0', '2019-07-09 07:02:09', '2019-09-02 11:47:12');
INSERT INTO `sp_user_role` VALUES ('4', '5', '2', '销售人员', '0', '2019-07-09 07:02:09', '2019-09-02 11:47:12');
INSERT INTO `sp_user_role` VALUES ('5', '2', '2', '销售人员', '0', '2019-07-09 07:02:16', '2019-09-02 11:47:40');
INSERT INTO `sp_user_role` VALUES ('6', '2', '3', '财务人员', '0', '2019-07-09 07:02:16', '2019-09-02 11:47:40');
INSERT INTO `sp_user_role` VALUES ('7', '6', '1', '管理员', '0', '2019-07-09 07:34:24', '2019-09-02 10:56:46');
INSERT INTO `sp_user_role` VALUES ('8', '6', '1', '管理员', '0', '2019-07-09 07:34:50', '2019-09-02 10:56:46');
INSERT INTO `sp_user_role` VALUES ('9', '2', '1', null, '0', null, '2019-09-02 11:47:40');
INSERT INTO `sp_user_role` VALUES ('10', '2', '1', '管理员', '0', '2019-07-13 15:26:27', '2019-09-02 11:47:40');
INSERT INTO `sp_user_role` VALUES ('11', '2', '2', '销售人员', '0', '2019-07-13 15:26:27', '2019-09-02 11:47:40');
INSERT INTO `sp_user_role` VALUES ('12', '2', '3', '财务人员', '0', '2019-07-13 15:26:27', '2019-09-02 11:47:40');
INSERT INTO `sp_user_role` VALUES ('13', '2', '5', '建筑工程管理', '0', '2019-07-13 15:26:27', '2019-09-02 11:47:40');
INSERT INTO `sp_user_role` VALUES ('14', '2', '1', '管理员', '0', '2019-07-14 14:17:52', '2019-09-02 11:47:40');
INSERT INTO `sp_user_role` VALUES ('15', '2', '5', '建筑工程管理', '0', '2019-07-14 14:17:52', '2019-09-02 11:47:40');
INSERT INTO `sp_user_role` VALUES ('16', '5', '1', '总经理', '0', '2019-07-16 16:24:20', '2019-09-02 11:47:12');
INSERT INTO `sp_user_role` VALUES ('17', '5', '2', '超级管理员', '0', '2019-07-16 16:24:20', '2019-09-02 11:47:12');
INSERT INTO `sp_user_role` VALUES ('18', '5', '3', '财务人员', '0', '2019-07-16 16:24:31', '2019-09-02 11:47:12');
INSERT INTO `sp_user_role` VALUES ('19', '1', '1', '总经理', '0', '2019-07-16 16:24:50', '2019-08-28 11:05:06');
INSERT INTO `sp_user_role` VALUES ('20', '2', '2', '超级管理员', '0', '2019-07-16 16:25:01', '2019-09-02 11:47:40');
INSERT INTO `sp_user_role` VALUES ('21', '2', '5', '建筑工程管理', '0', '2019-07-16 16:25:01', '2019-09-02 11:47:40');
INSERT INTO `sp_user_role` VALUES ('22', '6', '2', '超级管理员', '0', '2019-07-16 16:26:03', '2019-09-02 10:56:46');
INSERT INTO `sp_user_role` VALUES ('23', '1', '1', '总经理', '0', '2019-07-16 16:26:45', '2019-08-28 11:05:06');
INSERT INTO `sp_user_role` VALUES ('24', '2', '2', '超级管理员', '0', '2019-07-16 16:27:15', '2019-09-02 11:47:40');
INSERT INTO `sp_user_role` VALUES ('25', '2', '5', '建筑工程管理', '0', '2019-07-16 16:27:15', '2019-09-02 11:47:40');
INSERT INTO `sp_user_role` VALUES ('26', '4', '1', '总经理', '0', '2019-07-20 11:32:29', '2019-09-02 11:47:20');
INSERT INTO `sp_user_role` VALUES ('27', '4', '2', '超级管理员', '0', '2019-07-20 11:32:29', '2019-09-02 11:47:20');
INSERT INTO `sp_user_role` VALUES ('28', '4', '3', '财务人员', '0', '2019-07-20 11:32:29', '2019-09-02 11:47:20');
INSERT INTO `sp_user_role` VALUES ('29', '4', '4', '财务人员1', '0', '2019-07-20 11:32:29', '2019-09-02 11:47:20');
INSERT INTO `sp_user_role` VALUES ('30', '4', '4', '财务人员1', '0', '2019-07-20 16:28:52', '2019-09-02 11:47:20');
INSERT INTO `sp_user_role` VALUES ('31', '1', '1', '总经理', '0', '2019-07-20 16:40:02', '2019-08-28 11:05:06');
INSERT INTO `sp_user_role` VALUES ('32', '4', '5', '建筑工程管理', '0', '2019-07-20 21:33:02', '2019-09-02 11:47:20');
INSERT INTO `sp_user_role` VALUES ('33', '4', '3', '财务人员', '0', '2019-07-20 21:33:27', '2019-09-02 11:47:20');
INSERT INTO `sp_user_role` VALUES ('34', '6', '2', '超级管理员', '0', '2019-07-22 10:21:48', '2019-09-02 10:56:46');
INSERT INTO `sp_user_role` VALUES ('35', '4', '5', '建筑设计管理', '0', '2019-07-22 10:59:00', '2019-09-02 11:47:20');
INSERT INTO `sp_user_role` VALUES ('36', '3', '5', '建筑设计管理', '0', '2019-07-22 10:59:51', '2019-09-02 11:47:30');
INSERT INTO `sp_user_role` VALUES ('37', '5', '13', '设计总监', '0', '2019-07-22 11:05:03', '2019-09-02 11:47:12');
INSERT INTO `sp_user_role` VALUES ('38', '2', '9', '销售经理', '0', '2019-07-22 11:05:53', '2019-09-02 11:47:40');
INSERT INTO `sp_user_role` VALUES ('39', '7', '10', '销售总监', '0', '2019-07-22 11:06:25', '2019-09-02 11:47:03');
INSERT INTO `sp_user_role` VALUES ('40', '7', '10', '销售总监', '0', '2019-07-22 11:06:58', '2019-09-02 11:47:03');
INSERT INTO `sp_user_role` VALUES ('41', '4', '5', '建筑设计师', '0', '2019-07-22 11:07:09', '2019-09-02 11:47:20');
INSERT INTO `sp_user_role` VALUES ('42', '8', '14', '预算专员', '0', '2019-07-22 11:08:21', '2019-09-02 11:46:57');
INSERT INTO `sp_user_role` VALUES ('43', '9', '15', '预算总监', '0', '2019-07-22 11:08:56', '2019-09-02 11:46:50');
INSERT INTO `sp_user_role` VALUES ('44', '10', '11', '工程经理', '0', '2019-07-22 11:09:22', '2019-09-02 11:46:41');
INSERT INTO `sp_user_role` VALUES ('45', '11', '12', '工程总监', '0', '2019-07-22 11:09:54', '2019-09-02 11:46:32');
INSERT INTO `sp_user_role` VALUES ('46', '12', '9', '销售经理', '0', '2019-07-22 11:10:42', '2019-09-02 11:46:23');
INSERT INTO `sp_user_role` VALUES ('47', '13', '14', '预算专员', '0', '2019-07-22 11:11:24', '2019-09-02 11:46:06');
INSERT INTO `sp_user_role` VALUES ('48', '13', '12', '工程总监', '0', '2019-07-22 11:11:38', '2019-09-02 11:46:06');
INSERT INTO `sp_user_role` VALUES ('49', '13', '14', '预算专员', '0', '2019-07-22 11:11:38', '2019-09-02 11:46:06');
INSERT INTO `sp_user_role` VALUES ('50', '13', '14', '预算专员', '0', '2019-07-22 11:11:42', '2019-09-02 11:46:06');
INSERT INTO `sp_user_role` VALUES ('51', '14', '6', '采购专员', '0', '2019-08-02 16:37:05', '2019-09-02 11:47:57');
INSERT INTO `sp_user_role` VALUES ('52', '1', '1', '总经理', '1', '2019-08-28 11:05:06', '2019-08-28 11:05:06');
INSERT INTO `sp_user_role` VALUES ('53', '6', '2', '超级管理员', '0', '2019-09-02 10:54:53', '2019-09-02 10:56:46');
INSERT INTO `sp_user_role` VALUES ('54', '6', '2', '超级管理员', '1', '2019-09-02 10:56:46', '2019-09-02 10:56:46');
INSERT INTO `sp_user_role` VALUES ('55', '7', '10', '销售总监', '0', '2019-09-02 10:57:46', '2019-09-02 11:47:03');
INSERT INTO `sp_user_role` VALUES ('56', '8', '14', '预算专员', '0', '2019-09-02 10:59:40', '2019-09-02 11:46:57');
INSERT INTO `sp_user_role` VALUES ('57', '13', '14', '预算专员', '1', '2019-09-02 11:46:06', '2019-09-02 11:46:06');
INSERT INTO `sp_user_role` VALUES ('58', '12', '9', '销售经理', '1', '2019-09-02 11:46:23', '2019-09-02 11:46:23');
INSERT INTO `sp_user_role` VALUES ('59', '11', '12', '工程总监', '1', '2019-09-02 11:46:32', '2019-09-02 11:46:32');
INSERT INTO `sp_user_role` VALUES ('60', '10', '11', '工程经理', '1', '2019-09-02 11:46:41', '2019-09-02 11:46:41');
INSERT INTO `sp_user_role` VALUES ('61', '9', '15', '预算总监', '1', '2019-09-02 11:46:50', '2019-09-02 11:46:50');
INSERT INTO `sp_user_role` VALUES ('62', '8', '14', '预算专员', '1', '2019-09-02 11:46:57', '2019-09-02 11:46:57');
INSERT INTO `sp_user_role` VALUES ('63', '7', '10', '销售总监', '1', '2019-09-02 11:47:03', '2019-09-02 11:47:03');
INSERT INTO `sp_user_role` VALUES ('64', '5', '13', '设计总监', '1', '2019-09-02 11:47:12', '2019-09-02 11:47:12');
INSERT INTO `sp_user_role` VALUES ('65', '4', '5', '建筑设计师', '1', '2019-09-02 11:47:20', '2019-09-02 11:47:20');
INSERT INTO `sp_user_role` VALUES ('66', '3', '5', '建筑设计师', '1', '2019-09-02 11:47:30', '2019-09-02 11:47:30');
INSERT INTO `sp_user_role` VALUES ('67', '2', '9', '销售经理', '1', '2019-09-02 11:47:40', '2019-09-02 11:47:40');
INSERT INTO `sp_user_role` VALUES ('68', '14', '6', '采购专员', '1', '2019-09-02 11:47:57', '2019-09-02 11:47:57');
INSERT INTO `sp_user_role` VALUES ('69', '15', '12', '工程总监', '0', '2019-09-02 11:52:56', '2019-09-02 11:54:05');
INSERT INTO `sp_user_role` VALUES ('70', '15', '12', '工程总监', '1', '2019-09-02 11:54:05', '2019-09-02 11:54:05');
