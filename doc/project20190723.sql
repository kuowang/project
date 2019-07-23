/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : project

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-07-23 19:34:46
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
  `sort` int(6) DEFAULT NULL COMMENT '排序',
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_architectural_sub_system
-- ----------------------------
INSERT INTO `sp_architectural_sub_system` VALUES ('2', '6', '基础系统（混凝土条形基础）', '1001-1', 'GK_JC_01', '0', '1', '王海舟', '2', '2019-07-13', '2019-07-20', '2', '王海舟');
INSERT INTO `sp_architectural_sub_system` VALUES ('3', '6', '基础系统（混凝土构造柱圈梁）', '1001-2', 'GK_JC_02', '1', '2', '王海舟', '2', '2019-07-13', '2019-07-20', '2', '王海舟');
INSERT INTO `sp_architectural_sub_system` VALUES ('4', '6', '基础系统（混凝土筏板基础）', '1001-03', 'GK_JC_03', '1', '3', '王海舟', '2', '2019-07-13', '2019-07-20', '2', '王海舟');
INSERT INTO `sp_architectural_sub_system` VALUES ('5', '7', '基础系统（混凝土构造柱圈梁）', '100201', 'GK_JF_02', '1', '1', '王海舟', '2', '2019-07-13', '2019-07-20', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('6', '8', '外墙系统', '1003-1', 'WQ-XT-01', '1', '1', '管理员', '1', '2019-07-14', '2019-07-20', '2', '王海舟');
INSERT INTO `sp_architectural_sub_system` VALUES ('7', '8', '外墙系统', '1003-2', 'WQ-XT-2', '1', '2', '管理员', '1', '2019-07-14', '2019-07-20', '2', '王海舟');
INSERT INTO `sp_architectural_sub_system` VALUES ('8', '6', '测试', '1100', ' GJ', '1', '7', '王海舟', '2', '2019-07-14', '2019-07-20', '2', '王海舟');
INSERT INTO `sp_architectural_sub_system` VALUES ('9', '7', '系统工程子系统', '100202', 'GK_JF-03', '1', '2', '王海舟', '2', '2019-07-14', '2019-07-20', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('10', '9', '墙体子系统', '1004-01', 'QT-XT-01', '1', '1', '管理员', '1', '2019-07-14', '2019-07-14', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('11', '9', '墙体子系统2', '1004-02', 'QT-XT-02', '1', '2', '管理员', '1', '2019-07-14', '2019-07-14', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('12', '10', '屋面子系统', '1005-01', 'WM-xt-01', '1', '1', '管理员', '1', '2019-07-14', '2019-07-14', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('13', '11', '檐口子系统', '1006-01', 'WY-KF-01', '1', '1', '管理员', '1', '2019-07-14', '2019-07-14', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('14', '12', '楼板子系统', '1007-01', 'LB-XT-01', '1', '1', '管理员', '1', '2019-07-14', '2019-07-14', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('15', '13', '吊顶子系统', '1008-1', 'DD-XT-01', '1', '1', '管理员', '1', '2019-07-14', '2019-07-14', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('16', '8', '外墙系统2', '1003-3', 'WQ-xt_3', '1', '3', null, null, '2019-07-20', '2019-07-20', '2', '王海舟');
INSERT INTO `sp_architectural_sub_system` VALUES ('17', '8', '外墙系统2', '1003-3', 'WQ-xt_3', '1', '4', null, null, '2019-07-20', '2019-07-20', '2', '王海舟');
INSERT INTO `sp_architectural_sub_system` VALUES ('18', '19', '子系统名', '子系统编码', '工况', '1', '1', 'test', '4', '2019-07-20', '2019-07-20', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('19', '19', '子系统2', '编码2', 'diam', '0', '3', 'test', '4', '2019-07-20', '2019-07-20', null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_architectural_system
-- ----------------------------
INSERT INTO `sp_architectural_system` VALUES ('6', '基础系统', '基础工程', '1001', '1', '2', '2019-07-14', '2019-07-20', '王海舟', '2', '王海舟');
INSERT INTO `sp_architectural_system` VALUES ('7', '系统工程', '工程', '1002', '1', '2', '2019-07-14', '2019-07-20', '王海舟', null, null);
INSERT INTO `sp_architectural_system` VALUES ('8', '外墙系统', '墙体工程', '1003', '1', '1', '2019-07-14', '2019-07-20', '管理员', '2', '王海舟');
INSERT INTO `sp_architectural_system` VALUES ('9', '内墙系统', '墙体工程', '1004', '1', '1', '2019-07-14', '2019-07-14', '管理员', null, null);
INSERT INTO `sp_architectural_system` VALUES ('10', '屋面系统', '屋面工程', '1005', '1', '1', '2019-07-14', '2019-07-14', '管理员', null, null);
INSERT INTO `sp_architectural_system` VALUES ('11', '檐口系统', '檐口工程', '1006', '1', '1', '2019-07-14', '2019-07-14', '管理员', null, null);
INSERT INTO `sp_architectural_system` VALUES ('12', '楼板系统', '楼板工程', '1007', '1', '1', '2019-07-14', '2019-07-14', '管理员', null, null);
INSERT INTO `sp_architectural_system` VALUES ('13', '吊顶系统', '吊顶工程', '1008', '1', '1', '2019-07-14', '2019-07-14', '管理员', null, null);
INSERT INTO `sp_architectural_system` VALUES ('14', '外窗系统', '外窗工程', '1009', '0', '1', '2019-07-14', '2019-07-20', '管理员', null, null);
INSERT INTO `sp_architectural_system` VALUES ('15', '外门系统', '外门工程', '1010', '1', '1', '2019-07-14', '2019-07-14', '管理员', null, null);
INSERT INTO `sp_architectural_system` VALUES ('16', '细部装饰系统', '细部装饰工程', '1011', '1', '1', '2019-07-14', '2019-07-14', '管理员', null, null);
INSERT INTO `sp_architectural_system` VALUES ('17', '给排水系统', '给排水工程', '1012', '1', '1', '2019-07-14', '2019-07-14', '管理员', null, null);
INSERT INTO `sp_architectural_system` VALUES ('18', '电器系统', '电器工程', '1013', '1', '1', '2019-07-14', '2019-07-14', '管理员', null, null);
INSERT INTO `sp_architectural_system` VALUES ('19', '测试自己的系统', '工程', 'XT-01', '1', '4', '2019-07-20', '2019-07-20', 'test', null, null);

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
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL,
  `is_leaf` tinyint(4) DEFAULT '0' COMMENT '是否为叶子节点',
  PRIMARY KEY (`id`),
  KEY `auth_id` (`auth_id`) USING BTREE,
  KEY `parent_id` (`parent_id`) USING BTREE,
  KEY `level` (`level`) USING BTREE,
  KEY `statusshow` (`status`,`is_show`,`auth_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_authority
-- ----------------------------
INSERT INTO `sp_authority` VALUES ('1', '10', '0', '1', '1', '管理员', '&#xe0a0;', '/admin/user_role_list', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('2', '1001', '10', '1', '2', '角色', '', '/admin/role_list', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('3', '100101', '1001', '0', '3', '查询角色', '', '/admin/role_list', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('4', '100102', '1001', '0', '3', '添加角色', '', '/admin/add_role', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('5', '100103', '1001', '0', '3', '编辑角色', '', '/admin/edit_role/{id}', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('7', '100105', '1001', '0', '3', '编辑角色权限', '', '/admin/edit_role_authority', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('8', '1002', '10', '1', '2', '用户', '', '/admin/user_role_list', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('9', '100201', '1002', '0', '3', '查询用户', '', '/admin/user_role_list', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('10', '100202', '1002', '0', '3', '添加用户', '', '/admin/add_user_info', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('11', '100203', '1002', '0', '3', '编辑用户', '', '/admin/edit_user_info', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('12', '100204', '1002', '0', '3', '删除用户', '', '/admin/ban_user', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('13', '100205', '1002', '0', '3', '编辑用户角色', '', '/admin/edit_role_authority', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('14', '1003', '10', '1', '2', '系统配置', '', '/admin/system_list', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('15', '100301', '1003', '0', '3', '查询配置', '', '/admin/system_list', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('16', '100302', '1003', '0', '3', '添加配置', '', '/admin/add_system_list', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('17', '100303', '1003', '0', '3', '编辑配置项', '', '/admin/edit_system_list', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('18', '1004', '10', '1', '2', '菜单列表', '', '/admin/menu_nav_list', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('19', '100401', '1004', '0', '3', '展示菜单列表', '', '/admin/menu_nav_list', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('26', '15', '0', '1', '1', '项目信息管理', '&#xe0b8;', '/project/index', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('27', '1501', '15', '1', '2', '创建项目', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('28', '1502', '15', '1', '2', '洽谈项目', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('29', '150201', '1502', '0', '3', '编辑项目', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('30', '150202', '1502', '0', '3', '删除项目', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('31', '150203', '1502', '0', '3', '查询项目详情信息', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('32', '1503', '15', '1', '2', '实施项目', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('33', '150301', '1503', '0', '3', '查询项目', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('34', '150302', '1503', '0', '3', '编辑项目', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('35', '150303', '1503', '0', '3', '删除项目', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('36', '150304', '1503', '0', '3', '查询项目详情', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('37', '1504', '15', '1', '2', '竣工项目', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('38', '150401', '1504', '0', '3', '查询项目', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('39', '150402', '1504', '0', '3', '编辑项目', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('40', '150403', '1504', '0', '3', '查询项目详情', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('41', '1505', '15', '1', '2', '终止项目', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('42', '150501', '1505', '0', '3', '查询项目', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('43', '150502', '1505', '0', '3', '查询项目详情', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('44', '20', '0', '1', '1', '预算报价管理', '&#xe096;', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('45', '2001', '20', '1', '2', '项目预算管理', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('46', '200101', '2001', '0', '3', '查询项目', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('47', '200102', '2001', '0', '3', '创建预算', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('48', '200103', '2001', '0', '3', '编辑预算', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('49', '200104', '2001', '0', '3', '导出预算表格', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('50', '200105', '2001', '0', '3', '取消预算', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('51', '200106', '2001', '0', '3', '查询预算详情', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('52', '2002', '20', '1', '2', '项目报价管理', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('53', '200201', '2002', '0', '3', '查询项目', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('54', '200202', '2002', '0', '3', '查询报价', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('55', '200203', '2002', '0', '3', '创建报价', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('56', '200204', '2002', '0', '3', '编辑报价', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('57', '200205', '2002', '0', '3', '报价单导出', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('58', '200206', '2002', '0', '3', '查询报价单详情', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('59', '25', '0', '1', '1', '采购集成管理', '&#xe0d2;', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('60', '2501', '25', '0', '2', '查询采购列表', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('61', '2502', '25', '0', '2', '采购详情', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('62', '2503', '25', '0', '2', '编辑采购详情', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('63', '2504', '25', '0', '2', '创建采购', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('64', '2505', '25', '0', '2', '删除采购', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('65', '30', '0', '1', '1', '施工安装管理', '&#xe0a9;', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('66', '3001', '30', '0', '2', '查询施工列表', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('67', '3002', '30', '0', '2', '创建施工信息', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('68', '3003', '30', '0', '2', '编辑施工信息', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('69', '3004', '30', '0', '2', '删除施工信息', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('70', '3005', '30', '0', '2', '查看施工详情', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('71', '35', '0', '1', '1', '建筑设计管理', '&#xe14a;', '/architectural/index', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('72', '3501', '35', '1', '2', '建筑系统', '', '/architectural/index', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('73', '3502', '35', '1', '2', '建筑子系统', '', '/architectural/architectureList', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('74', '350101', '3501', '0', '3', '搜索', '', '/architectural/index', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('75', '350102', '3501', '0', '3', '添加', '', '/architectural/add_architect', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('76', '350103', '3501', '0', '3', '编辑', '', '/architectural/edit_architect', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('77', '40', '0', '1', '1', '部件集成管理', '&#xe00d;', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('78', '4001', '40', '0', '2', '查询信息列表', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('79', '4002', '40', '0', '2', '添加', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('80', '4003', '40', '0', '2', '编辑', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('81', '4004', '40', '0', '2', '删除', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('82', '4005', '40', '0', '2', '查看详情', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('83', '45', '0', '1', '1', '供应商管理', '&#xe052;', '/supplier/brandList', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('84', '4501', '45', '1', '2', '品牌信息', '', '/supplier/brandList', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('85', '4502', '45', '1', '2', '供应商信息', '', '/supplier/supplierList', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('86', '450101', '4501', '0', '3', '添加品牌', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('87', '450102', '4501', '0', '3', '查询品牌', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('88', '450201', '4502', '0', '3', '查看详情', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('89', '50', '0', '1', '1', '财务信息管理', '&#xe100;', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('90', '5001', '50', '0', '2', '查询信息列表', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('91', '5002', '50', '0', '2', '添加', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('92', '5003', '50', '0', '2', '编辑', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('93', '5004', '50', '0', '2', '删除', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('94', '5005', '50', '0', '2', '查看详情', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('95', '55', '0', '1', '1', '客户信息管理', '&#xe0aa;', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('96', '5501', '55', '0', '2', '查询信息列表', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('97', '5502', '55', '0', '2', '添加', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('98', '5503', '55', '0', '2', '编辑', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('99', '5504', '55', '0', '2', '删除', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('100', '5505', '55', '0', '2', '查看详情', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('101', '60', '0', '1', '1', '基础信息管理', '&#xe052;', '/base/notice_list', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('102', '6001', '60', '1', '2', '地址库查询', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('103', '6002', '60', '1', '2', '查询公告信息', '', '/base/notice_list', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('104', '600201', '6002', '0', '3', '查询公告', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('105', '600202', '6002', '0', '3', '添加公告', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('106', '600203', '6002', '0', '3', '编辑公告', null, null, '1', '2019-07-17 17:40:35', '2019-07-17 17:40:38', '1');
INSERT INTO `sp_authority` VALUES ('107', '350104', '3501', '0', '3', '状态更改', null, '/architectural/edit_architect_status', '1', '2019-07-14 17:00:45', '2019-07-14 17:00:48', '1');
INSERT INTO `sp_authority` VALUES ('108', '350201', '3502', '0', '3', '搜索', null, '/architectural/architectureList', '1', '2019-07-14 17:00:51', '2019-07-14 17:00:55', '1');
INSERT INTO `sp_authority` VALUES ('109', '350202', '3502', '0', '3', '编辑', null, '/architectural/edit_material', '1', '2019-07-14 17:00:59', '2019-07-14 17:01:01', '1');
INSERT INTO `sp_authority` VALUES ('110', '1005', '10', '1', '2', '审核用户', null, '/admin/examine_user', '1', null, null, '0');
INSERT INTO `sp_authority` VALUES ('111', '450103', '4501', '0', '3', '编辑品牌', null, null, '1', null, null, '0');
INSERT INTO `sp_authority` VALUES ('112', '450202', '4502', '0', '3', '创建供应商', null, null, '1', '2019-07-23 18:53:56', '2019-07-23 18:53:59', '1');
INSERT INTO `sp_authority` VALUES ('113', '450203', '4502', '0', '3', '编辑供应商', null, null, '1', '2019-07-23 18:54:03', null, '1');

-- ----------------------------
-- Table structure for sp_brand
-- ----------------------------
DROP TABLE IF EXISTS `sp_brand`;
CREATE TABLE `sp_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(255) DEFAULT NULL COMMENT '品牌名称',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态 1有效 0无效',
  `createor` varchar(255) DEFAULT NULL,
  `create_uid` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `editor` varchar(255) DEFAULT NULL,
  `edit_uid` int(11) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_brand
-- ----------------------------
INSERT INTO `sp_brand` VALUES ('1', 'SADFSD', '1', '王括', '6', '2019-07-23', null, null, null);
INSERT INTO `sp_brand` VALUES ('2', '新品牌1111', '1', '王括', '6', '2019-07-23', '王括', '6', '2019-07-23');
INSERT INTO `sp_brand` VALUES ('3', 'asfdasdfa', '1', '王括', '6', '2019-07-23', '王括', '6', '2019-07-23');

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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

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
INSERT INTO `sp_manage_authority` VALUES ('9', '55', '财务信息管理', '0', '1', '0', '2019-07-05 10:18:18', '2019-07-05 10:18:18');
INSERT INTO `sp_manage_authority` VALUES ('10', '60', '客户信息管理', '0', '1', '0', '2019-07-05 10:18:18', '2019-07-05 10:18:18');
INSERT INTO `sp_manage_authority` VALUES ('11', '65', '基础信息管理', '0', '1', '0', '2019-07-05 10:18:18', '2019-07-05 10:18:18');
INSERT INTO `sp_manage_authority` VALUES ('12', '3501', '查询建筑系统详情', '35', '2', '1', '2019-07-16 10:31:09', '2019-07-16 10:31:09');
INSERT INTO `sp_manage_authority` VALUES ('13', '3502', '新增建筑系统', '35', '2', '1', '2019-07-16 10:31:09', '2019-07-16 10:31:09');
INSERT INTO `sp_manage_authority` VALUES ('14', '3503', '编辑建筑系统', '35', '2', '1', '2019-07-16 10:31:09', '2019-07-16 10:31:09');
INSERT INTO `sp_manage_authority` VALUES ('15', '3504', '更改建筑系统状态', '35', '2', '1', '2019-07-16 10:31:09', '2019-07-16 10:31:09');
INSERT INTO `sp_manage_authority` VALUES ('16', '3505', '查询建筑系统子系统', '35', '2', '1', '2019-07-16 10:31:09', '2019-07-16 10:31:09');
INSERT INTO `sp_manage_authority` VALUES ('17', '3506', '编辑建筑子系统', '35', '2', '1', '2019-07-16 10:31:09', '2019-07-16 10:31:09');

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
  `sort` int(10) DEFAULT NULL COMMENT '排序',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态 1有效 0无效',
  `uid` int(11) DEFAULT NULL COMMENT '最后一次编辑用户id',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名',
  `created_at` date DEFAULT NULL COMMENT '创建时间',
  `updated_at` date DEFAULT NULL COMMENT '修改时间',
  `edit_uid` int(11) DEFAULT NULL COMMENT '编辑人员ID',
  `edit_username` varchar(255) DEFAULT NULL COMMENT '编辑人员名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_material
-- ----------------------------
INSERT INTO `sp_material` VALUES ('1', '6', '2', '啊', '是', '的', '否', '个', '阿斯顿发送到', '啊', '12.312', '11', '1', '2', '王海舟', null, '2019-07-20', null, null);
INSERT INTO `sp_material` VALUES ('2', '6', '2', '第二行', '编码', '是', '位置', '用途', '代码', '要', '11231', '2', '0', '2', '王海舟', '2019-07-14', '2019-07-20', null, null);
INSERT INTO `sp_material` VALUES ('3', '6', '2', '新材料', '编码', '中路', '位置', '用户', '代码 ', '是爱上了对方', '11', '12', '1', null, null, '2019-07-20', '2019-07-20', null, null);
INSERT INTO `sp_material` VALUES ('4', '19', '19', '新材料', '编码', '中路', '位置', '用户', '代码 ', '是爱上了对方', '11', '1', '0', null, null, '2019-07-20', '2019-07-20', null, null);
INSERT INTO `sp_material` VALUES ('5', '19', '19', '新材料', '编码', '中路', '位置', '用户', '代码 ', '士大夫收到', '11', '2', '1', null, null, '2019-07-20', '2019-07-20', null, null);

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
INSERT INTO `sp_notice` VALUES ('3', '4', '5', '1', '瑶(总经理)', '2019-07-17 00:00:00', '1', '2019-07-17 21:59:01', '2019-07-17 21:59:01');
INSERT INTO `sp_notice` VALUES ('4', '5', '254', '1', '瑶(总经理)', '2019-07-17 21:59:49', '1', '2019-07-17 21:59:53', '2019-07-17 21:59:53');
INSERT INTO `sp_notice` VALUES ('5', '5', '254', '1', '瑶(总经理)', '2019-07-17 21:59:49', '1', '2019-07-17 22:00:01', '2019-07-17 22:00:01');
INSERT INTO `sp_notice` VALUES ('6', '5', '254', '1', '瑶(总经理)', '2019-07-17 21:59:49', '1', '2019-07-17 22:01:43', '2019-07-17 22:01:43');
INSERT INTO `sp_notice` VALUES ('7', '5', '254', '1', '瑶(总经理)', '2019-07-17 21:59:49', '1', '2019-07-17 22:01:50', '2019-07-17 22:01:50');
INSERT INTO `sp_notice` VALUES ('8', '5', '254', '1', '瑶(总经理)', '2019-07-17 21:59:49', '1', '2019-07-17 22:02:04', '2019-07-17 22:02:04');
INSERT INTO `sp_notice` VALUES ('9', '5', '254', '1', '瑶(总经理)', '2019-07-17 21:59:49', '1', '2019-07-17 22:02:17', '2019-07-17 22:02:17');
INSERT INTO `sp_notice` VALUES ('10', '5', '254', '1', '瑶(总经理)', '2019-07-17 21:59:49', '1', '2019-07-17 22:02:26', '2019-07-17 22:02:26');
INSERT INTO `sp_notice` VALUES ('11', '1', '2', '1', '瑶(总经理)', '2019-07-17 00:00:00', '1', '2019-07-17 22:06:03', '2019-07-17 22:06:03');
INSERT INTO `sp_notice` VALUES ('12', '页面', '内容', '1', '瑶(总经理)', '2019-07-17 00:00:00', '1', '2019-07-17 22:08:15', '2019-07-17 22:08:15');
INSERT INTO `sp_notice` VALUES ('13', '标题', '内容现实', '1', '瑶(总经理)', '2019-07-17 00:00:00', '1', '2019-07-17 22:14:17', '2019-07-17 22:14:17');
INSERT INTO `sp_notice` VALUES ('14', '啦啦啦啦啦', '大手大脚撒娇肯定会将安徽的尽快哈萨克机会大是单价好发斯蒂芬斯蒂芬防水福道大厦防守打法水电费第三方水电费水电防守打法水电费水电费水电费', '1', '瑶(总经理)', '2019-07-20 00:00:00', '1', '2019-07-19 21:19:24', '2019-07-22 14:57:38');

-- ----------------------------
-- Table structure for sp_password_resets
-- ----------------------------
DROP TABLE IF EXISTS `sp_password_resets`;
CREATE TABLE `sp_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
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
  `uh_project_id` int(11) NOT NULL AUTO_INCREMENT,
  `submission_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `project_name` varchar(250) NOT NULL,
  `project_type` varchar(150) NOT NULL,
  `province` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `county` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `negotiation_date` date NOT NULL,
  `implementation_date` date NOT NULL,
  `completion_date` date NOT NULL,
  `project_style` varchar(250) NOT NULL,
  `project_sub_style` varchar(250) NOT NULL,
  `customer_name` varchar(250) NOT NULL,
  `customer_type` varchar(150) NOT NULL,
  `customer_addr` varchar(250) NOT NULL,
  `project_leader` varchar(250) NOT NULL,
  `tel` varchar(250) NOT NULL,
  `customer_demand` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `changed_by` varchar(250) NOT NULL,
  `changed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `project_source` varchar(150) NOT NULL,
  `director_name` varchar(250) NOT NULL,
  `remark` text NOT NULL,
  `source_name` varchar(250) NOT NULL,
  `second_status` varchar(250) NOT NULL,
  `third_status` varchar(250) NOT NULL,
  `is_offer` varchar(100) NOT NULL,
  `is_drawing` varchar(100) NOT NULL,
  `negotiation_index` varchar(150) NOT NULL,
  PRIMARY KEY (`uh_project_id`),
  KEY `status` (`status`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sp_project
-- ----------------------------
INSERT INTO `sp_project` VALUES ('2', '2016-07-12 10:25:51', '1002', '项目测试11', '1', '北京', '北京市', '西城区', '创业园区', '2016-09-06', '0000-00-00', '0000-00-00', '1', '', '王括', '国企', '', '', '', '', '0', '1002', '2016-09-06 00:00:00', '', '', '', '', '', '', '', '', '1');
INSERT INTO `sp_project` VALUES ('3', '2016-07-20 10:31:24', '1002', '项目开发12', '2', '', '', '0', 'kaif', '2016-09-06', '0000-00-00', '0000-00-00', '1', '', '王括', '国企', '', '', '', '', '0', '1002', '2016-11-03 14:42:41', '1', '阿斯蒂芬', '', '', '初期咨询', '', '0', '1', '2');
INSERT INTO `sp_project` VALUES ('4', '2016-07-12 19:01:19', '1002', '项目开发', '2', '', '', '0', '水平真', '2016-09-05', '2016-10-11', '2016-10-18', '9', '度假别墅|办公|宿舍|分类', '王括', '国企', '测试1', '测试人1', '13537270727', '设计咨询|材料供应|施工指导', '0', '1002', '2016-10-18 17:32:23', '1', '阿斯蒂芬', '', '', '初期咨询', '无具体方案图纸', '', '', '3');
INSERT INTO `sp_project` VALUES ('5', '2016-07-13 10:20:23', '1002', '项目测试1', '2', '', '', '0', '北京是朝阳区', '2016-09-06', '0000-00-00', '0000-00-00', '9', '111', '王括', '国企', '22', '33', '44', '设计咨询|施工安装', '0', '1002', '2016-09-06 00:00:00', '', '', '', '', '', '', '', '', '2');
INSERT INTO `sp_project` VALUES ('6', '2016-07-29 16:18:39', '1002', '山东东营湿地公园卫生间项目1', '1', '天津', '天津市', '滨海新区', '山东廊房', '2016-09-05', '0000-00-00', '0000-00-00', '1', '', '阿德法是', '国企', '', '', '', '', '0', '1002', '2016-11-03 14:40:50', '2', '阿斯蒂芬', '撒旦发射点发', '5', '初期咨询', '', '', '', '1');
INSERT INTO `sp_project` VALUES ('7', '2016-08-13 16:21:04', '1002', '河南项目', '1', '', '', '', '测试地址', '2016-09-05', '0000-00-00', '0000-00-00', '1', '会所|其他分类', 'wwww', '国企', '', '', '', '设计咨询', '0', '1001', '2016-10-12 17:17:56', '1', 'w', '', '', '初期咨询', '无具体方案图纸', '', '', '1');
INSERT INTO `sp_project` VALUES ('8', '2016-08-13 16:36:44', '1002', '项目测试版本', '2', '天津', '天津市', '西青区', '详细地址', '2016-09-06', '0000-00-00', '0000-00-00', '1', '', '阿德法是', '国企', '', '', '', '', '0', '1002', '2016-09-06 00:00:00', '', '', '', '', '', '', '', '', '2');
INSERT INTO `sp_project` VALUES ('9', '2016-08-19 18:12:22', '1005', '新西兰', '1', '北京', '北京市', '朝阳区', '新西兰石油管道项目', '2016-10-12', '2018-10-27', '0000-00-00', '9', '其类', '阿德法是', '国企', '', '', '', '', '0', '1002', '2016-11-03 15:13:24', '2', '阿斯蒂芬', '', '4', '初期咨询', '', '1', '0', '1');
INSERT INTO `sp_project` VALUES ('10', '2016-08-30 17:45:23', '1002', '河南项目测试', '1', '河南省', '焦作市', '中站区', '测试位置', '2016-09-05', '0000-00-00', '0000-00-00', '9', '酒店|会所|其他分类', '王括', '国企', '', '', '', '设计咨询|材料供应', '-1', '1002', '2016-12-05 15:32:13', '1', '阿斯蒂芬', '', '', '项目终止', '', '1', '1', '4');
INSERT INTO `sp_project` VALUES ('11', '2016-09-05 14:58:56', '1002', '测试项目工程', '1', '北京', '北京市', '石景山区', '水平真111', '2016-09-01', '2016-09-07', '2016-09-30', '9', '酒店|会所|宿舍|其类', '阿德法是', '国企', '测试1', '测试人1', '151234254121', '设计咨询|材料供应|施工安装', '-1', '1002', '2016-12-05 15:31:56', '1', '阿斯蒂芬', '', '', '项目终止', '', '', '', '5');
INSERT INTO `sp_project` VALUES ('12', '2016-09-08 11:01:45', '1002', '河南液化气交通项目', '1', '河南省', '三门峡市', '卢氏县', '水平真', '2016-09-08', '0000-00-00', '0000-00-00', '9', '酒店|度假别墅|宿舍|其类', '测试客户', '国企', '22', '测试人', '13537270727', '设计咨询|材料供应|施工指导|施工安装', '0', '1002', '2016-09-21 15:27:59', '', '', '', '', '', '', '', '', '3');
INSERT INTO `sp_project` VALUES ('13', '2016-09-27 14:59:03', '1001', '测试项目', '1', '广东省', '东莞市', '', '测试地址', '2016-09-27', '0000-00-00', '0000-00-00', '9', '酒店|公厕', '大苏打', '国企', '', '', '', '设计咨询|材料供应|施工指导|施工安装', '1', '1002', '2017-02-23 11:27:04', '1', 'asd ', '', '', '已签署设计合同', '方案设计阶段', '', '', '2');
INSERT INTO `sp_project` VALUES ('14', '2016-10-12 15:36:57', '1001', '项目测试栏目', '1', '北京', '北京市', '', '东八里庄东里', '2016-10-12', '2016-11-01', '2017-10-31', '1', '', '王括', '国企', '测试地址位置', '刘士名', '15215421578', '设计咨询|施工安装', '0', '1002', '2016-10-24 10:42:59', '3', '翟雪辉', '测试备注内容', '中间商', '初期咨询', '有具体方案图纸', '', '', '1');
INSERT INTO `sp_project` VALUES ('16', '2016-11-03 11:01:43', '1002', '项目测试版本', '1', '天津', '天津市', '河东区', '水平真', '2016-11-03', '2016-11-09', '0000-00-00', '9', '酒店|111', '王括', '国企', '测试1', '测试人', '13537270727', '设计咨询|材料供应|施工指导|施工安装', '1', '1002', '2016-11-03 11:15:21', '2', '阿斯蒂芬', 'asdfas', '2', '已签署设计合同', '', '', '', '');
INSERT INTO `sp_project` VALUES ('19', '2016-12-05 17:38:35', '1002', '项目测试版本', '1', '北京', '北京市', '东城区', '北京是朝阳区', '2016-12-05', '2016-12-05', '0000-00-00', '1', '', '阿德法是', '政府单位', '', '测试人', '', '设计咨询|材料供应|施工指导|施工安装', '0', '', '2016-12-05 17:38:35', '1', '阿斯蒂芬', '', '', '初期咨询', '', '0', '1', '1');
INSERT INTO `sp_project` VALUES ('20', '2016-12-05 17:48:43', '1002', ' 建筑工程预算报价清单1111', '2', '', '', '', '水平真', '2016-12-23', '2016-12-14', '2017-01-26', '1', '', '王括', '国企', '', '测试人1', '', '设计咨询|材料供应|施工指导|施工安装', '1', '1002', '2017-01-23 18:04:54', '1', '阿斯蒂芬', '', '', '已签署设计合同', '', '1', '0', '5');
INSERT INTO `sp_project` VALUES ('21', '2017-01-11 17:51:00', '1002', '阿萨德发送到', '1', '北京', '北京市', '西城区', '阿萨德发', '2017-01-11', '2017-01-11', '2017-01-11', '1', '', '阿斯蒂芬', '国企', '', '阿斯蒂芬', '', '设计咨询|材料供应|施工指导|施工安装', '0', '', '2017-01-11 17:51:00', '1', '阿斯蒂芬', '', '', '初期咨询', '', '0', '1', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=2004 DEFAULT CHARSET=utf8mb4;

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
INSERT INTO `sp_role_authority` VALUES ('711', '2', '10', '0', '1', '0', '2', '2019-07-10 03:26:01', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('712', '2', '1001', '10', '2', '0', '2', '2019-07-10 03:26:01', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('713', '2', '100101', '1001', '3', '0', '2', '2019-07-10 03:26:01', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('714', '2', '100102', '1001', '3', '0', '2', '2019-07-10 03:26:01', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('715', '2', '100103', '1001', '3', '0', '2', '2019-07-10 03:26:01', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('716', '2', '100105', '1001', '3', '0', '2', '2019-07-10 03:26:01', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('717', '2', '1002', '10', '2', '0', '2', '2019-07-10 03:26:01', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('718', '2', '100201', '1002', '3', '0', '2', '2019-07-10 03:26:01', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('719', '2', '100202', '1002', '3', '0', '2', '2019-07-10 03:26:01', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('720', '2', '100203', '1002', '3', '0', '2', '2019-07-10 03:26:01', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('721', '2', '100204', '1002', '3', '0', '2', '2019-07-10 03:26:01', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('722', '2', '100205', '1002', '3', '0', '2', '2019-07-10 03:26:01', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('723', '2', '1003', '10', '2', '0', '2', '2019-07-10 03:26:01', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('724', '2', '100301', '1003', '3', '0', '2', '2019-07-10 03:26:01', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('725', '2', '100302', '1003', '3', '0', '2', '2019-07-10 03:26:01', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('726', '2', '100303', '1003', '3', '0', '2', '2019-07-10 03:26:01', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('727', '2', '1004', '10', '2', '0', '2', '2019-07-10 03:26:01', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('728', '2', '100401', '1004', '3', '0', '2', '2019-07-10 03:26:01', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('780', '5', '35', '0', '1', '0', '1', '2019-07-14 14:17:29', '2019-07-16 15:34:14');
INSERT INTO `sp_role_authority` VALUES ('781', '5', '3501', '35', '2', '0', '1', '2019-07-14 14:17:29', '2019-07-16 15:34:14');
INSERT INTO `sp_role_authority` VALUES ('782', '5', '350101', '3501', '3', '0', '1', '2019-07-14 14:17:29', '2019-07-16 15:34:14');
INSERT INTO `sp_role_authority` VALUES ('783', '5', '350102', '3501', '3', '0', '1', '2019-07-14 14:17:29', '2019-07-16 15:34:14');
INSERT INTO `sp_role_authority` VALUES ('784', '5', '350103', '3501', '3', '0', '1', '2019-07-14 14:17:29', '2019-07-16 15:34:14');
INSERT INTO `sp_role_authority` VALUES ('785', '5', '350104', '3501', '3', '0', '1', '2019-07-14 14:17:29', '2019-07-16 15:34:14');
INSERT INTO `sp_role_authority` VALUES ('786', '5', '350105', '3501', '3', '0', '1', '2019-07-14 14:17:29', '2019-07-16 15:34:14');
INSERT INTO `sp_role_authority` VALUES ('787', '5', '3502', '35', '2', '0', '1', '2019-07-14 14:17:29', '2019-07-16 15:34:14');
INSERT INTO `sp_role_authority` VALUES ('833', '1', '10', '0', '1', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('834', '1', '1001', '10', '2', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('835', '1', '100101', '1001', '3', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('836', '1', '100102', '1001', '3', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('837', '1', '100103', '1001', '3', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('838', '1', '100105', '1001', '3', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('839', '1', '1002', '10', '2', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('840', '1', '100201', '1002', '3', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('841', '1', '100202', '1002', '3', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('842', '1', '100203', '1002', '3', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('843', '1', '100204', '1002', '3', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('844', '1', '100205', '1002', '3', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('845', '1', '1003', '10', '2', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('846', '1', '100301', '1003', '3', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('847', '1', '100302', '1003', '3', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('848', '1', '100303', '1003', '3', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('849', '1', '1004', '10', '2', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('850', '1', '100401', '1004', '3', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('851', '1', '15', '0', '1', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('852', '1', '1501', '15', '2', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('853', '1', '1502', '15', '2', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('854', '1', '150201', '1502', '3', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('855', '1', '150202', '1502', '3', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('856', '1', '150203', '1502', '3', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('857', '1', '1503', '15', '2', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('858', '1', '150301', '1503', '3', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('859', '1', '150302', '1503', '3', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('860', '1', '150303', '1503', '3', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('861', '1', '150304', '1503', '3', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('862', '1', '1504', '15', '2', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('863', '1', '150401', '1504', '3', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('864', '1', '150402', '1504', '3', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('865', '1', '150403', '1504', '3', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('866', '1', '1505', '15', '2', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('867', '1', '150501', '1505', '3', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('868', '1', '150502', '1505', '3', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('869', '1', '35', '0', '1', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('870', '1', '3501', '35', '2', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('871', '1', '350101', '3501', '3', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('872', '1', '350102', '3501', '3', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('873', '1', '350103', '3501', '3', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('874', '1', '350104', '3501', '3', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('875', '1', '3502', '35', '2', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('876', '1', '350201', '3502', '3', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('877', '1', '350202', '3502', '3', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('878', '1', '45', '0', '1', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('879', '1', '4501', '45', '2', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('880', '1', '4502', '45', '2', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('881', '1', '4503', '45', '2', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('882', '1', '4504', '45', '2', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('883', '1', '4505', '45', '2', '0', '1', '2019-07-15 13:58:46', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('905', '5', '35', '0', '1', '0', '1', '2019-07-16 15:30:46', '2019-07-16 15:34:14');
INSERT INTO `sp_role_authority` VALUES ('906', '5', '3501', '35', '2', '0', '1', '2019-07-16 15:30:46', '2019-07-16 15:34:14');
INSERT INTO `sp_role_authority` VALUES ('907', '5', '350101', '3501', '3', '0', '1', '2019-07-16 15:30:46', '2019-07-16 15:34:14');
INSERT INTO `sp_role_authority` VALUES ('908', '5', '350102', '3501', '3', '0', '1', '2019-07-16 15:30:46', '2019-07-16 15:34:14');
INSERT INTO `sp_role_authority` VALUES ('909', '5', '350103', '3501', '3', '0', '1', '2019-07-16 15:30:46', '2019-07-16 15:34:14');
INSERT INTO `sp_role_authority` VALUES ('910', '5', '350104', '3501', '3', '0', '1', '2019-07-16 15:30:46', '2019-07-16 15:34:14');
INSERT INTO `sp_role_authority` VALUES ('911', '5', '3502', '35', '2', '0', '1', '2019-07-16 15:30:46', '2019-07-16 15:34:14');
INSERT INTO `sp_role_authority` VALUES ('912', '5', '35', '0', '1', '0', '1', '2019-07-16 15:33:30', '2019-07-16 15:34:14');
INSERT INTO `sp_role_authority` VALUES ('913', '5', '3501', '35', '2', '0', '1', '2019-07-16 15:33:30', '2019-07-16 15:34:14');
INSERT INTO `sp_role_authority` VALUES ('914', '5', '350101', '3501', '3', '0', '1', '2019-07-16 15:33:30', '2019-07-16 15:34:14');
INSERT INTO `sp_role_authority` VALUES ('915', '5', '350102', '3501', '3', '0', '1', '2019-07-16 15:33:30', '2019-07-16 15:34:14');
INSERT INTO `sp_role_authority` VALUES ('916', '5', '350103', '3501', '3', '0', '1', '2019-07-16 15:33:30', '2019-07-16 15:34:14');
INSERT INTO `sp_role_authority` VALUES ('917', '5', '350104', '3501', '3', '0', '1', '2019-07-16 15:33:30', '2019-07-16 15:34:14');
INSERT INTO `sp_role_authority` VALUES ('918', '5', '3502', '35', '2', '0', '1', '2019-07-16 15:33:30', '2019-07-16 15:34:14');
INSERT INTO `sp_role_authority` VALUES ('919', '5', '35', '0', '1', '0', '1', '2019-07-16 15:34:14', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('920', '5', '3501', '35', '2', '0', '1', '2019-07-16 15:34:14', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('921', '5', '350101', '3501', '3', '0', '1', '2019-07-16 15:34:14', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('922', '5', '350102', '3501', '3', '0', '1', '2019-07-16 15:34:14', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('923', '5', '350103', '3501', '3', '0', '1', '2019-07-16 15:34:14', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('924', '5', '350104', '3501', '3', '0', '1', '2019-07-16 15:34:14', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('925', '5', '3502', '35', '2', '0', '1', '2019-07-16 15:34:14', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('926', '5', '10', '0', '1', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('927', '5', '1001', '10', '2', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('928', '5', '100101', '1001', '3', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('929', '5', '100102', '1001', '3', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('930', '5', '100103', '1001', '3', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('931', '5', '100105', '1001', '3', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('932', '5', '1002', '10', '2', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('933', '5', '100201', '1002', '3', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('934', '5', '100202', '1002', '3', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('935', '5', '100203', '1002', '3', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('936', '5', '100204', '1002', '3', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('937', '5', '100205', '1002', '3', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('938', '5', '1003', '10', '2', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('939', '5', '100301', '1003', '3', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('940', '5', '100302', '1003', '3', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('941', '5', '100303', '1003', '3', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('942', '5', '1004', '10', '2', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('943', '5', '100401', '1004', '3', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('944', '5', '1005', '10', '2', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('945', '5', '15', '0', '1', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('946', '5', '1501', '15', '2', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('947', '5', '1502', '15', '2', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('948', '5', '150201', '1502', '3', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('949', '5', '150202', '1502', '3', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('950', '5', '150203', '1502', '3', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('951', '5', '1503', '15', '2', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('952', '5', '150301', '1503', '3', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('953', '5', '150302', '1503', '3', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('954', '5', '150303', '1503', '3', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('955', '5', '150304', '1503', '3', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('956', '5', '1504', '15', '2', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('957', '5', '150401', '1504', '3', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('958', '5', '150402', '1504', '3', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('959', '5', '150403', '1504', '3', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('960', '5', '1505', '15', '2', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('961', '5', '150501', '1505', '3', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('962', '5', '150502', '1505', '3', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('963', '5', '35', '0', '1', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('964', '5', '3501', '35', '2', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('965', '5', '350101', '3501', '3', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('966', '5', '350102', '3501', '3', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('967', '5', '350103', '3501', '3', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('968', '5', '350104', '3501', '3', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('969', '5', '3502', '35', '2', '0', '2', '2019-07-16 15:35:15', '2019-07-20 16:58:36');
INSERT INTO `sp_role_authority` VALUES ('970', '1', '10', '0', '1', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('971', '1', '1001', '10', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('972', '1', '100101', '1001', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('973', '1', '100102', '1001', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('974', '1', '100103', '1001', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('975', '1', '100105', '1001', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('976', '1', '1002', '10', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('977', '1', '100201', '1002', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('978', '1', '100202', '1002', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('979', '1', '100203', '1002', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('980', '1', '100204', '1002', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('981', '1', '100205', '1002', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('982', '1', '1003', '10', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('983', '1', '100301', '1003', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('984', '1', '100302', '1003', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('985', '1', '100303', '1003', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('986', '1', '1004', '10', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('987', '1', '100401', '1004', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('988', '1', '1005', '10', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('989', '1', '15', '0', '1', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('990', '1', '1501', '15', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('991', '1', '1502', '15', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('992', '1', '150201', '1502', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('993', '1', '150202', '1502', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('994', '1', '150203', '1502', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('995', '1', '1503', '15', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('996', '1', '150301', '1503', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('997', '1', '150302', '1503', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('998', '1', '150303', '1503', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('999', '1', '150304', '1503', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1000', '1', '1504', '15', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1001', '1', '150401', '1504', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1002', '1', '150402', '1504', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1003', '1', '150403', '1504', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1004', '1', '1505', '15', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1005', '1', '150501', '1505', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1006', '1', '150502', '1505', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1007', '1', '20', '0', '1', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1008', '1', '2001', '20', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1009', '1', '200101', '2001', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1010', '1', '200102', '2001', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1011', '1', '200103', '2001', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1012', '1', '200104', '2001', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1013', '1', '200105', '2001', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1014', '1', '200106', '2001', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1015', '1', '2002', '20', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1016', '1', '200201', '2002', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1017', '1', '200202', '2002', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1018', '1', '200203', '2002', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1019', '1', '200204', '2002', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1020', '1', '200205', '2002', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1021', '1', '200206', '2002', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1022', '1', '25', '0', '1', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1023', '1', '2501', '25', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1024', '1', '2502', '25', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1025', '1', '2503', '25', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1026', '1', '2504', '25', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1027', '1', '2505', '25', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1028', '1', '30', '0', '1', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1029', '1', '3001', '30', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1030', '1', '3002', '30', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1031', '1', '3003', '30', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1032', '1', '3004', '30', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1033', '1', '3005', '30', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1034', '1', '35', '0', '1', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1035', '1', '3501', '35', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1036', '1', '350101', '3501', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1037', '1', '350102', '3501', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1038', '1', '350103', '3501', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1039', '1', '350104', '3501', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1040', '1', '3502', '35', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1041', '1', '350201', '3502', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1042', '1', '350202', '3502', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1043', '1', '40', '0', '1', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1044', '1', '4001', '40', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1045', '1', '4002', '40', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1046', '1', '4003', '40', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1047', '1', '4004', '40', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1048', '1', '4005', '40', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1049', '1', '45', '0', '1', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1050', '1', '4501', '45', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1051', '1', '4502', '45', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1052', '1', '4503', '45', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1053', '1', '4504', '45', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1054', '1', '4505', '45', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1055', '1', '50', '0', '1', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1056', '1', '5001', '50', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1057', '1', '5002', '50', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1058', '1', '5003', '50', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1059', '1', '5004', '50', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1060', '1', '5005', '50', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1061', '1', '55', '0', '1', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1062', '1', '5501', '55', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1063', '1', '5502', '55', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1064', '1', '5503', '55', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1065', '1', '5504', '55', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1066', '1', '5505', '55', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1067', '1', '60', '0', '1', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1068', '1', '6001', '60', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1069', '1', '6002', '60', '2', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1070', '1', '600201', '6002', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1071', '1', '600202', '6002', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1072', '1', '600203', '6002', '3', '0', '1', '2019-07-16 16:25:40', '2019-07-20 22:09:26');
INSERT INTO `sp_role_authority` VALUES ('1073', '2', '10', '0', '1', '0', '2', '2019-07-17 10:01:11', '2019-07-20 16:58:19');
INSERT INTO `sp_role_authority` VALUES ('1074', '2', '1001', '10', '2', '0', '2', '2019-07-17 10:01:11', '2019-07-20 16:58:19');
INSERT INTO `sp_role_authority` VALUES ('1075', '2', '100101', '1001', '3', '0', '2', '2019-07-17 10:01:11', '2019-07-20 16:58:19');
INSERT INTO `sp_role_authority` VALUES ('1076', '2', '100102', '1001', '3', '0', '2', '2019-07-17 10:01:11', '2019-07-20 16:58:19');
INSERT INTO `sp_role_authority` VALUES ('1077', '2', '100103', '1001', '3', '0', '2', '2019-07-17 10:01:11', '2019-07-20 16:58:19');
INSERT INTO `sp_role_authority` VALUES ('1078', '2', '100105', '1001', '3', '0', '2', '2019-07-17 10:01:11', '2019-07-20 16:58:19');
INSERT INTO `sp_role_authority` VALUES ('1079', '2', '1002', '10', '2', '0', '2', '2019-07-17 10:01:11', '2019-07-20 16:58:19');
INSERT INTO `sp_role_authority` VALUES ('1080', '2', '100201', '1002', '3', '0', '2', '2019-07-17 10:01:11', '2019-07-20 16:58:19');
INSERT INTO `sp_role_authority` VALUES ('1081', '2', '100202', '1002', '3', '0', '2', '2019-07-17 10:01:11', '2019-07-20 16:58:19');
INSERT INTO `sp_role_authority` VALUES ('1082', '2', '100203', '1002', '3', '0', '2', '2019-07-17 10:01:11', '2019-07-20 16:58:19');
INSERT INTO `sp_role_authority` VALUES ('1083', '2', '100204', '1002', '3', '0', '2', '2019-07-17 10:01:11', '2019-07-20 16:58:19');
INSERT INTO `sp_role_authority` VALUES ('1084', '2', '100205', '1002', '3', '0', '2', '2019-07-17 10:01:11', '2019-07-20 16:58:19');
INSERT INTO `sp_role_authority` VALUES ('1085', '2', '1003', '10', '2', '0', '2', '2019-07-17 10:01:11', '2019-07-20 16:58:19');
INSERT INTO `sp_role_authority` VALUES ('1086', '2', '100301', '1003', '3', '0', '2', '2019-07-17 10:01:11', '2019-07-20 16:58:19');
INSERT INTO `sp_role_authority` VALUES ('1087', '2', '100302', '1003', '3', '0', '2', '2019-07-17 10:01:11', '2019-07-20 16:58:19');
INSERT INTO `sp_role_authority` VALUES ('1088', '2', '100303', '1003', '3', '0', '2', '2019-07-17 10:01:11', '2019-07-20 16:58:19');
INSERT INTO `sp_role_authority` VALUES ('1089', '2', '1004', '10', '2', '0', '2', '2019-07-17 10:01:11', '2019-07-20 16:58:19');
INSERT INTO `sp_role_authority` VALUES ('1090', '2', '100401', '1004', '3', '0', '2', '2019-07-17 10:01:11', '2019-07-20 16:58:19');
INSERT INTO `sp_role_authority` VALUES ('1091', '2', '60', '0', '1', '0', '2', '2019-07-17 10:01:11', '2019-07-20 16:58:19');
INSERT INTO `sp_role_authority` VALUES ('1092', '2', '6001', '60', '2', '0', '2', '2019-07-17 10:01:11', '2019-07-20 16:58:19');
INSERT INTO `sp_role_authority` VALUES ('1093', '2', '6002', '60', '2', '0', '2', '2019-07-17 10:01:11', '2019-07-20 16:58:19');
INSERT INTO `sp_role_authority` VALUES ('1094', '2', '600201', '6002', '3', '0', '2', '2019-07-17 10:01:11', '2019-07-20 16:58:19');
INSERT INTO `sp_role_authority` VALUES ('1095', '2', '600202', '6002', '3', '0', '2', '2019-07-17 10:01:11', '2019-07-20 16:58:19');
INSERT INTO `sp_role_authority` VALUES ('1096', '2', '600203', '6002', '3', '0', '2', '2019-07-17 10:01:11', '2019-07-20 16:58:19');
INSERT INTO `sp_role_authority` VALUES ('1097', '2', '10', '0', '1', '0', '1', '2019-07-20 16:58:19', '2019-07-22 10:21:21');
INSERT INTO `sp_role_authority` VALUES ('1098', '2', '1001', '10', '2', '0', '1', '2019-07-20 16:58:19', '2019-07-22 10:21:21');
INSERT INTO `sp_role_authority` VALUES ('1099', '2', '100101', '1001', '3', '0', '1', '2019-07-20 16:58:19', '2019-07-22 10:21:21');
INSERT INTO `sp_role_authority` VALUES ('1100', '2', '100102', '1001', '3', '0', '1', '2019-07-20 16:58:19', '2019-07-22 10:21:21');
INSERT INTO `sp_role_authority` VALUES ('1101', '2', '100103', '1001', '3', '0', '1', '2019-07-20 16:58:19', '2019-07-22 10:21:21');
INSERT INTO `sp_role_authority` VALUES ('1102', '2', '100105', '1001', '3', '0', '1', '2019-07-20 16:58:19', '2019-07-22 10:21:21');
INSERT INTO `sp_role_authority` VALUES ('1103', '2', '1002', '10', '2', '0', '1', '2019-07-20 16:58:19', '2019-07-22 10:21:21');
INSERT INTO `sp_role_authority` VALUES ('1104', '2', '100201', '1002', '3', '0', '1', '2019-07-20 16:58:19', '2019-07-22 10:21:21');
INSERT INTO `sp_role_authority` VALUES ('1105', '2', '100202', '1002', '3', '0', '1', '2019-07-20 16:58:19', '2019-07-22 10:21:21');
INSERT INTO `sp_role_authority` VALUES ('1106', '2', '100203', '1002', '3', '0', '1', '2019-07-20 16:58:19', '2019-07-22 10:21:21');
INSERT INTO `sp_role_authority` VALUES ('1107', '2', '100204', '1002', '3', '0', '1', '2019-07-20 16:58:19', '2019-07-22 10:21:21');
INSERT INTO `sp_role_authority` VALUES ('1108', '2', '100205', '1002', '3', '0', '1', '2019-07-20 16:58:19', '2019-07-22 10:21:21');
INSERT INTO `sp_role_authority` VALUES ('1109', '2', '1003', '10', '2', '0', '1', '2019-07-20 16:58:19', '2019-07-22 10:21:21');
INSERT INTO `sp_role_authority` VALUES ('1110', '2', '100301', '1003', '3', '0', '1', '2019-07-20 16:58:19', '2019-07-22 10:21:21');
INSERT INTO `sp_role_authority` VALUES ('1111', '2', '100302', '1003', '3', '0', '1', '2019-07-20 16:58:19', '2019-07-22 10:21:21');
INSERT INTO `sp_role_authority` VALUES ('1112', '2', '100303', '1003', '3', '0', '1', '2019-07-20 16:58:19', '2019-07-22 10:21:21');
INSERT INTO `sp_role_authority` VALUES ('1113', '2', '1004', '10', '2', '0', '1', '2019-07-20 16:58:19', '2019-07-22 10:21:21');
INSERT INTO `sp_role_authority` VALUES ('1114', '2', '100401', '1004', '3', '0', '1', '2019-07-20 16:58:19', '2019-07-22 10:21:21');
INSERT INTO `sp_role_authority` VALUES ('1115', '5', '15', '0', '1', '0', '2', '2019-07-20 16:58:36', '2019-07-20 16:59:05');
INSERT INTO `sp_role_authority` VALUES ('1116', '5', '1501', '15', '2', '0', '2', '2019-07-20 16:58:36', '2019-07-20 16:59:05');
INSERT INTO `sp_role_authority` VALUES ('1117', '5', '1502', '15', '2', '0', '2', '2019-07-20 16:58:36', '2019-07-20 16:59:05');
INSERT INTO `sp_role_authority` VALUES ('1118', '5', '150201', '1502', '3', '0', '2', '2019-07-20 16:58:36', '2019-07-20 16:59:05');
INSERT INTO `sp_role_authority` VALUES ('1119', '5', '150202', '1502', '3', '0', '2', '2019-07-20 16:58:36', '2019-07-20 16:59:05');
INSERT INTO `sp_role_authority` VALUES ('1120', '5', '150203', '1502', '3', '0', '2', '2019-07-20 16:58:36', '2019-07-20 16:59:05');
INSERT INTO `sp_role_authority` VALUES ('1121', '5', '1503', '15', '2', '0', '2', '2019-07-20 16:58:36', '2019-07-20 16:59:05');
INSERT INTO `sp_role_authority` VALUES ('1122', '5', '150301', '1503', '3', '0', '2', '2019-07-20 16:58:36', '2019-07-20 16:59:05');
INSERT INTO `sp_role_authority` VALUES ('1123', '5', '150302', '1503', '3', '0', '2', '2019-07-20 16:58:36', '2019-07-20 16:59:05');
INSERT INTO `sp_role_authority` VALUES ('1124', '5', '150303', '1503', '3', '0', '2', '2019-07-20 16:58:36', '2019-07-20 16:59:05');
INSERT INTO `sp_role_authority` VALUES ('1125', '5', '150304', '1503', '3', '0', '2', '2019-07-20 16:58:36', '2019-07-20 16:59:05');
INSERT INTO `sp_role_authority` VALUES ('1126', '5', '1504', '15', '2', '0', '2', '2019-07-20 16:58:36', '2019-07-20 16:59:05');
INSERT INTO `sp_role_authority` VALUES ('1127', '5', '150401', '1504', '3', '0', '2', '2019-07-20 16:58:36', '2019-07-20 16:59:05');
INSERT INTO `sp_role_authority` VALUES ('1128', '5', '150402', '1504', '3', '0', '2', '2019-07-20 16:58:36', '2019-07-20 16:59:05');
INSERT INTO `sp_role_authority` VALUES ('1129', '5', '150403', '1504', '3', '0', '2', '2019-07-20 16:58:36', '2019-07-20 16:59:05');
INSERT INTO `sp_role_authority` VALUES ('1130', '5', '1505', '15', '2', '0', '2', '2019-07-20 16:58:36', '2019-07-20 16:59:05');
INSERT INTO `sp_role_authority` VALUES ('1131', '5', '150501', '1505', '3', '0', '2', '2019-07-20 16:58:36', '2019-07-20 16:59:05');
INSERT INTO `sp_role_authority` VALUES ('1132', '5', '150502', '1505', '3', '0', '2', '2019-07-20 16:58:36', '2019-07-20 16:59:05');
INSERT INTO `sp_role_authority` VALUES ('1133', '5', '35', '0', '1', '0', '2', '2019-07-20 16:58:36', '2019-07-20 16:59:05');
INSERT INTO `sp_role_authority` VALUES ('1134', '5', '3501', '35', '2', '0', '2', '2019-07-20 16:58:36', '2019-07-20 16:59:05');
INSERT INTO `sp_role_authority` VALUES ('1135', '5', '350101', '3501', '3', '0', '2', '2019-07-20 16:58:36', '2019-07-20 16:59:05');
INSERT INTO `sp_role_authority` VALUES ('1136', '5', '350102', '3501', '3', '0', '2', '2019-07-20 16:58:36', '2019-07-20 16:59:05');
INSERT INTO `sp_role_authority` VALUES ('1137', '5', '350103', '3501', '3', '0', '2', '2019-07-20 16:58:36', '2019-07-20 16:59:05');
INSERT INTO `sp_role_authority` VALUES ('1138', '5', '350104', '3501', '3', '0', '2', '2019-07-20 16:58:36', '2019-07-20 16:59:05');
INSERT INTO `sp_role_authority` VALUES ('1139', '5', '3502', '35', '2', '0', '2', '2019-07-20 16:58:36', '2019-07-20 16:59:05');
INSERT INTO `sp_role_authority` VALUES ('1140', '5', '35', '0', '1', '0', '2', '2019-07-20 16:59:05', '2019-07-20 16:59:11');
INSERT INTO `sp_role_authority` VALUES ('1141', '5', '3501', '35', '2', '0', '2', '2019-07-20 16:59:05', '2019-07-20 16:59:11');
INSERT INTO `sp_role_authority` VALUES ('1142', '5', '350101', '3501', '3', '0', '2', '2019-07-20 16:59:05', '2019-07-20 16:59:11');
INSERT INTO `sp_role_authority` VALUES ('1143', '5', '350102', '3501', '3', '0', '2', '2019-07-20 16:59:05', '2019-07-20 16:59:11');
INSERT INTO `sp_role_authority` VALUES ('1144', '5', '350103', '3501', '3', '0', '2', '2019-07-20 16:59:05', '2019-07-20 16:59:11');
INSERT INTO `sp_role_authority` VALUES ('1145', '5', '350104', '3501', '3', '0', '2', '2019-07-20 16:59:05', '2019-07-20 16:59:11');
INSERT INTO `sp_role_authority` VALUES ('1146', '5', '3502', '35', '2', '0', '2', '2019-07-20 16:59:05', '2019-07-20 16:59:11');
INSERT INTO `sp_role_authority` VALUES ('1147', '5', '10', '0', '1', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1148', '5', '1001', '10', '2', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1149', '5', '100101', '1001', '3', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1150', '5', '100102', '1001', '3', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1151', '5', '100103', '1001', '3', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1152', '5', '100105', '1001', '3', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1153', '5', '1002', '10', '2', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1154', '5', '100201', '1002', '3', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1155', '5', '100202', '1002', '3', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1156', '5', '100203', '1002', '3', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1157', '5', '100204', '1002', '3', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1158', '5', '100205', '1002', '3', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1159', '5', '1003', '10', '2', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1160', '5', '100301', '1003', '3', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1161', '5', '100302', '1003', '3', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1162', '5', '100303', '1003', '3', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1163', '5', '1004', '10', '2', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1164', '5', '100401', '1004', '3', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1165', '5', '1005', '10', '2', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1166', '5', '15', '0', '1', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1167', '5', '1501', '15', '2', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1168', '5', '1502', '15', '2', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1169', '5', '150201', '1502', '3', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1170', '5', '150202', '1502', '3', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1171', '5', '150203', '1502', '3', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1172', '5', '1503', '15', '2', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1173', '5', '150301', '1503', '3', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1174', '5', '150302', '1503', '3', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1175', '5', '150303', '1503', '3', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1176', '5', '150304', '1503', '3', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1177', '5', '1504', '15', '2', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1178', '5', '150401', '1504', '3', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1179', '5', '150402', '1504', '3', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1180', '5', '150403', '1504', '3', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1181', '5', '1505', '15', '2', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1182', '5', '150501', '1505', '3', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1183', '5', '150502', '1505', '3', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1184', '5', '35', '0', '1', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1185', '5', '3501', '35', '2', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1186', '5', '350101', '3501', '3', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1187', '5', '350102', '3501', '3', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1188', '5', '350103', '3501', '3', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1189', '5', '350104', '3501', '3', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1190', '5', '3502', '35', '2', '0', '2', '2019-07-20 16:59:11', '2019-07-20 17:02:24');
INSERT INTO `sp_role_authority` VALUES ('1191', '5', '10', '0', '1', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1192', '5', '1001', '10', '2', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1193', '5', '100101', '1001', '3', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1194', '5', '100102', '1001', '3', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1195', '5', '100103', '1001', '3', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1196', '5', '100105', '1001', '3', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1197', '5', '1002', '10', '2', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1198', '5', '100201', '1002', '3', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1199', '5', '100202', '1002', '3', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1200', '5', '100203', '1002', '3', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1201', '5', '100204', '1002', '3', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1202', '5', '100205', '1002', '3', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1203', '5', '1003', '10', '2', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1204', '5', '100301', '1003', '3', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1205', '5', '100302', '1003', '3', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1206', '5', '100303', '1003', '3', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1207', '5', '1004', '10', '2', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1208', '5', '100401', '1004', '3', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1209', '5', '1005', '10', '2', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1210', '5', '15', '0', '1', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1211', '5', '1501', '15', '2', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1212', '5', '1502', '15', '2', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1213', '5', '150201', '1502', '3', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1214', '5', '150202', '1502', '3', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1215', '5', '150203', '1502', '3', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1216', '5', '1503', '15', '2', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1217', '5', '150301', '1503', '3', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1218', '5', '150302', '1503', '3', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1219', '5', '150303', '1503', '3', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1220', '5', '150304', '1503', '3', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1221', '5', '1504', '15', '2', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1222', '5', '150401', '1504', '3', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1223', '5', '150402', '1504', '3', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1224', '5', '150403', '1504', '3', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1225', '5', '1505', '15', '2', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1226', '5', '150501', '1505', '3', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1227', '5', '150502', '1505', '3', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1228', '5', '35', '0', '1', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1229', '5', '3501', '35', '2', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1230', '5', '350101', '3501', '3', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1231', '5', '350102', '3501', '3', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1232', '5', '350103', '3501', '3', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1233', '5', '350104', '3501', '3', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1234', '5', '3502', '35', '2', '0', '2', '2019-07-20 17:02:24', '2019-07-20 17:02:35');
INSERT INTO `sp_role_authority` VALUES ('1235', '5', '10', '0', '1', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1236', '5', '1001', '10', '2', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1237', '5', '100101', '1001', '3', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1238', '5', '100102', '1001', '3', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1239', '5', '100103', '1001', '3', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1240', '5', '100105', '1001', '3', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1241', '5', '1002', '10', '2', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1242', '5', '100201', '1002', '3', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1243', '5', '100202', '1002', '3', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1244', '5', '100203', '1002', '3', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1245', '5', '100204', '1002', '3', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1246', '5', '100205', '1002', '3', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1247', '5', '1003', '10', '2', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1248', '5', '100301', '1003', '3', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1249', '5', '100302', '1003', '3', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1250', '5', '100303', '1003', '3', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1251', '5', '1004', '10', '2', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1252', '5', '100401', '1004', '3', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1253', '5', '1005', '10', '2', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1254', '5', '15', '0', '1', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1255', '5', '1501', '15', '2', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1256', '5', '1502', '15', '2', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1257', '5', '150201', '1502', '3', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1258', '5', '150202', '1502', '3', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1259', '5', '150203', '1502', '3', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1260', '5', '1503', '15', '2', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1261', '5', '150301', '1503', '3', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1262', '5', '150302', '1503', '3', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1263', '5', '150303', '1503', '3', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1264', '5', '150304', '1503', '3', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1265', '5', '1504', '15', '2', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1266', '5', '150401', '1504', '3', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1267', '5', '150402', '1504', '3', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1268', '5', '150403', '1504', '3', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1269', '5', '1505', '15', '2', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1270', '5', '150501', '1505', '3', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1271', '5', '150502', '1505', '3', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1272', '5', '35', '0', '1', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1273', '5', '3501', '35', '2', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1274', '5', '350101', '3501', '3', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1275', '5', '350102', '3501', '3', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1276', '5', '350103', '3501', '3', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1277', '5', '350104', '3501', '3', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1278', '5', '3502', '35', '2', '0', '2', '2019-07-20 17:02:35', '2019-07-20 17:03:32');
INSERT INTO `sp_role_authority` VALUES ('1279', '5', '35', '0', '1', '0', '2', '2019-07-20 17:03:32', '2019-07-20 17:09:40');
INSERT INTO `sp_role_authority` VALUES ('1280', '5', '3501', '35', '2', '0', '2', '2019-07-20 17:03:32', '2019-07-20 17:09:40');
INSERT INTO `sp_role_authority` VALUES ('1281', '5', '350101', '3501', '3', '0', '2', '2019-07-20 17:03:32', '2019-07-20 17:09:40');
INSERT INTO `sp_role_authority` VALUES ('1282', '5', '350102', '3501', '3', '0', '2', '2019-07-20 17:03:32', '2019-07-20 17:09:40');
INSERT INTO `sp_role_authority` VALUES ('1283', '5', '350103', '3501', '3', '0', '2', '2019-07-20 17:03:32', '2019-07-20 17:09:40');
INSERT INTO `sp_role_authority` VALUES ('1284', '5', '350104', '3501', '3', '0', '2', '2019-07-20 17:03:32', '2019-07-20 17:09:40');
INSERT INTO `sp_role_authority` VALUES ('1285', '5', '3502', '35', '2', '0', '2', '2019-07-20 17:03:32', '2019-07-20 17:09:40');
INSERT INTO `sp_role_authority` VALUES ('1286', '5', '35', '0', '1', '0', '2', '2019-07-20 17:09:40', '2019-07-20 17:10:10');
INSERT INTO `sp_role_authority` VALUES ('1287', '5', '3501', '35', '2', '0', '2', '2019-07-20 17:09:40', '2019-07-20 17:10:10');
INSERT INTO `sp_role_authority` VALUES ('1288', '5', '350101', '3501', '3', '0', '2', '2019-07-20 17:09:40', '2019-07-20 17:10:10');
INSERT INTO `sp_role_authority` VALUES ('1289', '5', '350102', '3501', '3', '0', '2', '2019-07-20 17:09:40', '2019-07-20 17:10:10');
INSERT INTO `sp_role_authority` VALUES ('1290', '5', '350103', '3501', '3', '0', '2', '2019-07-20 17:09:40', '2019-07-20 17:10:10');
INSERT INTO `sp_role_authority` VALUES ('1291', '5', '350104', '3501', '3', '0', '2', '2019-07-20 17:09:40', '2019-07-20 17:10:10');
INSERT INTO `sp_role_authority` VALUES ('1292', '5', '3502', '35', '2', '0', '2', '2019-07-20 17:09:40', '2019-07-20 17:10:10');
INSERT INTO `sp_role_authority` VALUES ('1293', '5', '15', '0', '1', '0', '1', '2019-07-20 17:10:10', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1294', '5', '1501', '15', '2', '0', '1', '2019-07-20 17:10:10', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1295', '5', '1502', '15', '2', '0', '1', '2019-07-20 17:10:10', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1296', '5', '150201', '1502', '3', '0', '1', '2019-07-20 17:10:10', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1297', '5', '150202', '1502', '3', '0', '1', '2019-07-20 17:10:10', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1298', '5', '150203', '1502', '3', '0', '1', '2019-07-20 17:10:10', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1299', '5', '1503', '15', '2', '0', '1', '2019-07-20 17:10:10', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1300', '5', '150301', '1503', '3', '0', '1', '2019-07-20 17:10:10', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1301', '5', '150302', '1503', '3', '0', '1', '2019-07-20 17:10:10', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1302', '5', '150303', '1503', '3', '0', '1', '2019-07-20 17:10:10', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1303', '5', '150304', '1503', '3', '0', '1', '2019-07-20 17:10:10', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1304', '5', '1504', '15', '2', '0', '1', '2019-07-20 17:10:10', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1305', '5', '150401', '1504', '3', '0', '1', '2019-07-20 17:10:10', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1306', '5', '150402', '1504', '3', '0', '1', '2019-07-20 17:10:10', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1307', '5', '150403', '1504', '3', '0', '1', '2019-07-20 17:10:10', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1308', '5', '1505', '15', '2', '0', '1', '2019-07-20 17:10:10', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1309', '5', '150501', '1505', '3', '0', '1', '2019-07-20 17:10:10', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1310', '5', '150502', '1505', '3', '0', '1', '2019-07-20 17:10:10', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1311', '5', '35', '0', '1', '0', '1', '2019-07-20 17:10:10', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1312', '5', '3501', '35', '2', '0', '1', '2019-07-20 17:10:10', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1313', '5', '350101', '3501', '3', '0', '1', '2019-07-20 17:10:10', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1314', '5', '350102', '3501', '3', '0', '1', '2019-07-20 17:10:10', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1315', '5', '350103', '3501', '3', '0', '1', '2019-07-20 17:10:10', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1316', '5', '350104', '3501', '3', '0', '1', '2019-07-20 17:10:10', '2019-07-20 21:39:50');
INSERT INTO `sp_role_authority` VALUES ('1317', '5', '3502', '35', '2', '0', '1', '2019-07-20 17:10:10', '2019-07-20 21:39:50');
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
INSERT INTO `sp_role_authority` VALUES ('1348', '1', '10', '0', '1', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1349', '1', '1001', '10', '2', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1350', '1', '100101', '1001', '3', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1351', '1', '100102', '1001', '3', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1352', '1', '100103', '1001', '3', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1353', '1', '100105', '1001', '3', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1354', '1', '1002', '10', '2', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1355', '1', '100201', '1002', '3', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1356', '1', '100202', '1002', '3', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1357', '1', '100203', '1002', '3', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1358', '1', '100204', '1002', '3', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1359', '1', '100205', '1002', '3', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1360', '1', '1003', '10', '2', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1361', '1', '100301', '1003', '3', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1362', '1', '100302', '1003', '3', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1363', '1', '100303', '1003', '3', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1364', '1', '1004', '10', '2', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1365', '1', '100401', '1004', '3', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1366', '1', '1005', '10', '2', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1367', '1', '15', '0', '1', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1368', '1', '1501', '15', '2', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1369', '1', '1502', '15', '2', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1370', '1', '150201', '1502', '3', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1371', '1', '150202', '1502', '3', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1372', '1', '150203', '1502', '3', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1373', '1', '1503', '15', '2', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1374', '1', '150301', '1503', '3', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1375', '1', '150302', '1503', '3', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1376', '1', '150303', '1503', '3', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1377', '1', '150304', '1503', '3', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1378', '1', '1504', '15', '2', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1379', '1', '150401', '1504', '3', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1380', '1', '150402', '1504', '3', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1381', '1', '150403', '1504', '3', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1382', '1', '1505', '15', '2', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1383', '1', '150501', '1505', '3', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1384', '1', '150502', '1505', '3', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1385', '1', '35', '0', '1', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1386', '1', '3501', '35', '2', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1387', '1', '350101', '3501', '3', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1388', '1', '350102', '3501', '3', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1389', '1', '350103', '3501', '3', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1390', '1', '350104', '3501', '3', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1391', '1', '3502', '35', '2', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1392', '1', '350201', '3502', '3', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1393', '1', '350202', '3502', '3', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1394', '1', '60', '0', '1', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1395', '1', '6001', '60', '2', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1396', '1', '6002', '60', '2', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1397', '1', '600201', '6002', '3', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1398', '1', '600202', '6002', '3', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1399', '1', '600203', '6002', '3', '0', '1', '2019-07-20 22:09:26', '2019-07-22 10:08:35');
INSERT INTO `sp_role_authority` VALUES ('1400', '1', '10', '0', '1', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1401', '1', '1001', '10', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1402', '1', '100101', '1001', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1403', '1', '100102', '1001', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1404', '1', '100103', '1001', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1405', '1', '100105', '1001', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1406', '1', '1002', '10', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1407', '1', '100201', '1002', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1408', '1', '100202', '1002', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1409', '1', '100203', '1002', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1410', '1', '100204', '1002', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1411', '1', '100205', '1002', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1412', '1', '1003', '10', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1413', '1', '100301', '1003', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1414', '1', '100302', '1003', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1415', '1', '100303', '1003', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1416', '1', '1004', '10', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1417', '1', '100401', '1004', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1418', '1', '1005', '10', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1419', '1', '15', '0', '1', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1420', '1', '1501', '15', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1421', '1', '1502', '15', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1422', '1', '150201', '1502', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1423', '1', '150202', '1502', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1424', '1', '150203', '1502', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1425', '1', '1503', '15', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1426', '1', '150301', '1503', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1427', '1', '150302', '1503', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1428', '1', '150303', '1503', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1429', '1', '150304', '1503', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1430', '1', '1504', '15', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1431', '1', '150401', '1504', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1432', '1', '150402', '1504', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1433', '1', '150403', '1504', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1434', '1', '1505', '15', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1435', '1', '150501', '1505', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1436', '1', '150502', '1505', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1437', '1', '20', '0', '1', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1438', '1', '2001', '20', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1439', '1', '200101', '2001', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1440', '1', '200102', '2001', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1441', '1', '200103', '2001', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1442', '1', '200104', '2001', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1443', '1', '200105', '2001', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1444', '1', '200106', '2001', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1445', '1', '2002', '20', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1446', '1', '200201', '2002', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1447', '1', '200202', '2002', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1448', '1', '200203', '2002', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1449', '1', '200204', '2002', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1450', '1', '200205', '2002', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1451', '1', '200206', '2002', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1452', '1', '25', '0', '1', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1453', '1', '2501', '25', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1454', '1', '2502', '25', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1455', '1', '2503', '25', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1456', '1', '2504', '25', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1457', '1', '2505', '25', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1458', '1', '30', '0', '1', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1459', '1', '3001', '30', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1460', '1', '3002', '30', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1461', '1', '3003', '30', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1462', '1', '3004', '30', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1463', '1', '3005', '30', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1464', '1', '35', '0', '1', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1465', '1', '3501', '35', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1466', '1', '350101', '3501', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1467', '1', '350102', '3501', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1468', '1', '350103', '3501', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1469', '1', '350104', '3501', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1470', '1', '3502', '35', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1471', '1', '350201', '3502', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1472', '1', '350202', '3502', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1473', '1', '40', '0', '1', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1474', '1', '4001', '40', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1475', '1', '4002', '40', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1476', '1', '4003', '40', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1477', '1', '4004', '40', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1478', '1', '4005', '40', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1479', '1', '45', '0', '1', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1480', '1', '4501', '45', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1481', '1', '4502', '45', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1482', '1', '4503', '45', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1483', '1', '4504', '45', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1484', '1', '4505', '45', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1485', '1', '50', '0', '1', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1486', '1', '5001', '50', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1487', '1', '5002', '50', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1488', '1', '5003', '50', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1489', '1', '5004', '50', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1490', '1', '5005', '50', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1491', '1', '55', '0', '1', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1492', '1', '5501', '55', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1493', '1', '5502', '55', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1494', '1', '5503', '55', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1495', '1', '5504', '55', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1496', '1', '5505', '55', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1497', '1', '60', '0', '1', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1498', '1', '6001', '60', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1499', '1', '6002', '60', '2', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1500', '1', '600201', '6002', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1501', '1', '600202', '6002', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1502', '1', '600203', '6002', '3', '0', '1', '2019-07-22 10:08:35', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1503', '1', '10', '0', '1', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1504', '1', '1001', '10', '2', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1505', '1', '100101', '1001', '3', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1506', '1', '100102', '1001', '3', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1507', '1', '100103', '1001', '3', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1508', '1', '100105', '1001', '3', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1509', '1', '1002', '10', '2', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1510', '1', '100201', '1002', '3', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1511', '1', '100202', '1002', '3', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1512', '1', '100203', '1002', '3', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1513', '1', '100204', '1002', '3', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1514', '1', '100205', '1002', '3', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1515', '1', '1003', '10', '2', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1516', '1', '100301', '1003', '3', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1517', '1', '100302', '1003', '3', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1518', '1', '100303', '1003', '3', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1519', '1', '1004', '10', '2', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1520', '1', '100401', '1004', '3', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1521', '1', '1005', '10', '2', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1522', '1', '15', '0', '1', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1523', '1', '1501', '15', '2', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1524', '1', '1502', '15', '2', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1525', '1', '150201', '1502', '3', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1526', '1', '150202', '1502', '3', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1527', '1', '150203', '1502', '3', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1528', '1', '1503', '15', '2', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1529', '1', '150301', '1503', '3', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1530', '1', '150302', '1503', '3', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1531', '1', '150303', '1503', '3', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1532', '1', '150304', '1503', '3', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1533', '1', '1504', '15', '2', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1534', '1', '150401', '1504', '3', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1535', '1', '150402', '1504', '3', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1536', '1', '150403', '1504', '3', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1537', '1', '1505', '15', '2', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1538', '1', '150501', '1505', '3', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1539', '1', '150502', '1505', '3', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1540', '1', '35', '0', '1', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1541', '1', '3501', '35', '2', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1542', '1', '350101', '3501', '3', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1543', '1', '350102', '3501', '3', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1544', '1', '350103', '3501', '3', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1545', '1', '350104', '3501', '3', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1546', '1', '3502', '35', '2', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1547', '1', '350201', '3502', '3', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1548', '1', '350202', '3502', '3', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1549', '1', '60', '0', '1', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1550', '1', '6001', '60', '2', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1551', '1', '6002', '60', '2', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1552', '1', '600201', '6002', '3', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1553', '1', '600202', '6002', '3', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1554', '1', '600203', '6002', '3', '1', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01');
INSERT INTO `sp_role_authority` VALUES ('1555', '2', '10', '0', '1', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1556', '2', '1001', '10', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1557', '2', '100101', '1001', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1558', '2', '100102', '1001', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1559', '2', '100103', '1001', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1560', '2', '100105', '1001', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1561', '2', '1002', '10', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1562', '2', '100201', '1002', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1563', '2', '100202', '1002', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1564', '2', '100203', '1002', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1565', '2', '100204', '1002', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1566', '2', '100205', '1002', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1567', '2', '1003', '10', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1568', '2', '100301', '1003', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1569', '2', '100302', '1003', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1570', '2', '100303', '1003', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1571', '2', '1004', '10', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1572', '2', '100401', '1004', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1573', '2', '15', '0', '1', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1574', '2', '1501', '15', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1575', '2', '1502', '15', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1576', '2', '150201', '1502', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1577', '2', '150202', '1502', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1578', '2', '150203', '1502', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1579', '2', '1503', '15', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1580', '2', '150301', '1503', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1581', '2', '150302', '1503', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1582', '2', '150303', '1503', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1583', '2', '150304', '1503', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1584', '2', '1504', '15', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1585', '2', '150401', '1504', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1586', '2', '150402', '1504', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1587', '2', '150403', '1504', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1588', '2', '1505', '15', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1589', '2', '150501', '1505', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1590', '2', '150502', '1505', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1591', '2', '20', '0', '1', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1592', '2', '2001', '20', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1593', '2', '200101', '2001', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1594', '2', '200102', '2001', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1595', '2', '200103', '2001', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1596', '2', '200104', '2001', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1597', '2', '200105', '2001', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1598', '2', '200106', '2001', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1599', '2', '2002', '20', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1600', '2', '200201', '2002', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1601', '2', '200202', '2002', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1602', '2', '200203', '2002', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1603', '2', '200204', '2002', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1604', '2', '200205', '2002', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1605', '2', '200206', '2002', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1606', '2', '25', '0', '1', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1607', '2', '2501', '25', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1608', '2', '2502', '25', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1609', '2', '2503', '25', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1610', '2', '2504', '25', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1611', '2', '2505', '25', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1612', '2', '30', '0', '1', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1613', '2', '3001', '30', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1614', '2', '3002', '30', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1615', '2', '3003', '30', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1616', '2', '3004', '30', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1617', '2', '3005', '30', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1618', '2', '35', '0', '1', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1619', '2', '3501', '35', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1620', '2', '350101', '3501', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1621', '2', '350102', '3501', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1622', '2', '350103', '3501', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1623', '2', '350104', '3501', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1624', '2', '3502', '35', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1625', '2', '350201', '3502', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1626', '2', '350202', '3502', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1627', '2', '40', '0', '1', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1628', '2', '4001', '40', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1629', '2', '4002', '40', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1630', '2', '4003', '40', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1631', '2', '4004', '40', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1632', '2', '4005', '40', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1633', '2', '45', '0', '1', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1634', '2', '4501', '45', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1635', '2', '4502', '45', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1636', '2', '4503', '45', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1637', '2', '4504', '45', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1638', '2', '4505', '45', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1639', '2', '50', '0', '1', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1640', '2', '5001', '50', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1641', '2', '5002', '50', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1642', '2', '5003', '50', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1643', '2', '5004', '50', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1644', '2', '5005', '50', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1645', '2', '55', '0', '1', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1646', '2', '5501', '55', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1647', '2', '5502', '55', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1648', '2', '5503', '55', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1649', '2', '5504', '55', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1650', '2', '5505', '55', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1651', '2', '60', '0', '1', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1652', '2', '6001', '60', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1653', '2', '6002', '60', '2', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1654', '2', '600201', '6002', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1655', '2', '600202', '6002', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
INSERT INTO `sp_role_authority` VALUES ('1656', '2', '600203', '6002', '3', '0', '6', '2019-07-22 10:21:21', '2019-07-23 11:28:35');
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
INSERT INTO `sp_role_authority` VALUES ('1697', '2', '10', '0', '1', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1698', '2', '1001', '10', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1699', '2', '100101', '1001', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1700', '2', '100102', '1001', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1701', '2', '100103', '1001', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1702', '2', '100105', '1001', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1703', '2', '1002', '10', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1704', '2', '100201', '1002', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1705', '2', '100202', '1002', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1706', '2', '100203', '1002', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1707', '2', '100204', '1002', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1708', '2', '100205', '1002', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1709', '2', '1003', '10', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1710', '2', '100301', '1003', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1711', '2', '100302', '1003', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1712', '2', '100303', '1003', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1713', '2', '1004', '10', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1714', '2', '100401', '1004', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1715', '2', '15', '0', '1', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1716', '2', '1501', '15', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1717', '2', '1502', '15', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1718', '2', '150201', '1502', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1719', '2', '150202', '1502', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1720', '2', '150203', '1502', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1721', '2', '1503', '15', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1722', '2', '150301', '1503', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1723', '2', '150302', '1503', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1724', '2', '150303', '1503', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1725', '2', '150304', '1503', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1726', '2', '1504', '15', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1727', '2', '150401', '1504', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1728', '2', '150402', '1504', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1729', '2', '150403', '1504', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1730', '2', '1505', '15', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1731', '2', '150501', '1505', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1732', '2', '150502', '1505', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1733', '2', '20', '0', '1', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1734', '2', '2001', '20', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1735', '2', '200101', '2001', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1736', '2', '200102', '2001', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1737', '2', '200103', '2001', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1738', '2', '200104', '2001', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1739', '2', '200105', '2001', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1740', '2', '200106', '2001', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1741', '2', '2002', '20', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1742', '2', '200201', '2002', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1743', '2', '200202', '2002', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1744', '2', '200203', '2002', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1745', '2', '200204', '2002', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1746', '2', '200205', '2002', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1747', '2', '200206', '2002', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1748', '2', '25', '0', '1', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1749', '2', '2501', '25', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1750', '2', '2502', '25', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1751', '2', '2503', '25', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1752', '2', '2504', '25', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1753', '2', '2505', '25', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1754', '2', '30', '0', '1', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1755', '2', '3001', '30', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1756', '2', '3002', '30', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1757', '2', '3003', '30', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1758', '2', '3004', '30', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1759', '2', '3005', '30', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1760', '2', '35', '0', '1', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1761', '2', '3501', '35', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1762', '2', '350101', '3501', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1763', '2', '350102', '3501', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1764', '2', '350103', '3501', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1765', '2', '350104', '3501', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1766', '2', '3502', '35', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1767', '2', '350201', '3502', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1768', '2', '350202', '3502', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1769', '2', '40', '0', '1', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1770', '2', '4001', '40', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1771', '2', '4002', '40', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1772', '2', '4003', '40', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1773', '2', '4004', '40', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1774', '2', '4005', '40', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1775', '2', '45', '0', '1', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1776', '2', '4501', '45', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1777', '2', '450101', '4501', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1778', '2', '450102', '2501', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1779', '2', '4502', '45', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1780', '2', '4505', '45', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1781', '2', '50', '0', '1', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1782', '2', '5001', '50', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1783', '2', '5002', '50', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1784', '2', '5003', '50', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1785', '2', '5004', '50', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1786', '2', '5005', '50', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1787', '2', '55', '0', '1', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1788', '2', '5501', '55', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1789', '2', '5502', '55', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1790', '2', '5503', '55', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1791', '2', '5504', '55', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1792', '2', '5505', '55', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1793', '2', '60', '0', '1', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1794', '2', '6001', '60', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1795', '2', '6002', '60', '2', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1796', '2', '600201', '6002', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1797', '2', '600202', '6002', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1798', '2', '600203', '6002', '3', '0', '6', '2019-07-23 11:28:35', '2019-07-23 17:21:24');
INSERT INTO `sp_role_authority` VALUES ('1799', '2', '10', '0', '1', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1800', '2', '1001', '10', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1801', '2', '100101', '1001', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1802', '2', '100102', '1001', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1803', '2', '100103', '1001', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1804', '2', '100105', '1001', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1805', '2', '1002', '10', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1806', '2', '100201', '1002', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1807', '2', '100202', '1002', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1808', '2', '100203', '1002', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1809', '2', '100204', '1002', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1810', '2', '100205', '1002', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1811', '2', '1003', '10', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1812', '2', '100301', '1003', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1813', '2', '100302', '1003', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1814', '2', '100303', '1003', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1815', '2', '1004', '10', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1816', '2', '100401', '1004', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1817', '2', '15', '0', '1', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1818', '2', '1501', '15', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1819', '2', '1502', '15', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1820', '2', '150201', '1502', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1821', '2', '150202', '1502', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1822', '2', '150203', '1502', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1823', '2', '1503', '15', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1824', '2', '150301', '1503', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1825', '2', '150302', '1503', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1826', '2', '150303', '1503', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1827', '2', '150304', '1503', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1828', '2', '1504', '15', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1829', '2', '150401', '1504', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1830', '2', '150402', '1504', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1831', '2', '150403', '1504', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1832', '2', '1505', '15', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1833', '2', '150501', '1505', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1834', '2', '150502', '1505', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1835', '2', '20', '0', '1', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1836', '2', '2001', '20', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1837', '2', '200101', '2001', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1838', '2', '200102', '2001', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1839', '2', '200103', '2001', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1840', '2', '200104', '2001', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1841', '2', '200105', '2001', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1842', '2', '200106', '2001', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1843', '2', '2002', '20', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1844', '2', '200201', '2002', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1845', '2', '200202', '2002', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1846', '2', '200203', '2002', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1847', '2', '200204', '2002', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1848', '2', '200205', '2002', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1849', '2', '200206', '2002', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1850', '2', '25', '0', '1', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1851', '2', '2501', '25', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1852', '2', '2502', '25', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1853', '2', '2503', '25', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1854', '2', '2504', '25', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1855', '2', '2505', '25', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1856', '2', '30', '0', '1', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1857', '2', '3001', '30', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1858', '2', '3002', '30', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1859', '2', '3003', '30', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1860', '2', '3004', '30', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1861', '2', '3005', '30', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1862', '2', '35', '0', '1', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1863', '2', '3501', '35', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1864', '2', '350101', '3501', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1865', '2', '350102', '3501', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1866', '2', '350103', '3501', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1867', '2', '350104', '3501', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1868', '2', '3502', '35', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1869', '2', '350201', '3502', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1870', '2', '350202', '3502', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1871', '2', '40', '0', '1', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1872', '2', '4001', '40', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1873', '2', '4002', '40', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1874', '2', '4003', '40', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1875', '2', '4004', '40', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1876', '2', '4005', '40', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1877', '2', '45', '0', '1', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1878', '2', '4501', '45', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1879', '2', '450101', '4501', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1880', '2', '450102', '4501', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1881', '2', '450103', '4501', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1882', '2', '4502', '45', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1883', '2', '4505', '45', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1884', '2', '50', '0', '1', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1885', '2', '5001', '50', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1886', '2', '5002', '50', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1887', '2', '5003', '50', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1888', '2', '5004', '50', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1889', '2', '5005', '50', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1890', '2', '55', '0', '1', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1891', '2', '5501', '55', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1892', '2', '5502', '55', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1893', '2', '5503', '55', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1894', '2', '5504', '55', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1895', '2', '5505', '55', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1896', '2', '60', '0', '1', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1897', '2', '6001', '60', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1898', '2', '6002', '60', '2', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1899', '2', '600201', '6002', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1900', '2', '600202', '6002', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1901', '2', '600203', '6002', '3', '0', '6', '2019-07-23 17:21:24', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1902', '2', '10', '0', '1', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1903', '2', '1001', '10', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1904', '2', '100101', '1001', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1905', '2', '100102', '1001', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1906', '2', '100103', '1001', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1907', '2', '100105', '1001', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1908', '2', '1002', '10', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1909', '2', '100201', '1002', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1910', '2', '100202', '1002', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1911', '2', '100203', '1002', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1912', '2', '100204', '1002', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1913', '2', '100205', '1002', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1914', '2', '1003', '10', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1915', '2', '100301', '1003', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1916', '2', '100302', '1003', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1917', '2', '100303', '1003', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1918', '2', '1004', '10', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1919', '2', '100401', '1004', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1920', '2', '15', '0', '1', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1921', '2', '1501', '15', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1922', '2', '1502', '15', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1923', '2', '150201', '1502', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1924', '2', '150202', '1502', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1925', '2', '150203', '1502', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1926', '2', '1503', '15', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1927', '2', '150301', '1503', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1928', '2', '150302', '1503', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1929', '2', '150303', '1503', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1930', '2', '150304', '1503', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1931', '2', '1504', '15', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1932', '2', '150401', '1504', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1933', '2', '150402', '1504', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1934', '2', '150403', '1504', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1935', '2', '1505', '15', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1936', '2', '150501', '1505', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1937', '2', '150502', '1505', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1938', '2', '20', '0', '1', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1939', '2', '2001', '20', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1940', '2', '200101', '2001', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1941', '2', '200102', '2001', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1942', '2', '200103', '2001', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1943', '2', '200104', '2001', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1944', '2', '200105', '2001', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1945', '2', '200106', '2001', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1946', '2', '2002', '20', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1947', '2', '200201', '2002', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1948', '2', '200202', '2002', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1949', '2', '200203', '2002', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1950', '2', '200204', '2002', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1951', '2', '200205', '2002', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1952', '2', '200206', '2002', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1953', '2', '25', '0', '1', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1954', '2', '2501', '25', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1955', '2', '2502', '25', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1956', '2', '2503', '25', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1957', '2', '2504', '25', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1958', '2', '2505', '25', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1959', '2', '30', '0', '1', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1960', '2', '3001', '30', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1961', '2', '3002', '30', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1962', '2', '3003', '30', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1963', '2', '3004', '30', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1964', '2', '3005', '30', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1965', '2', '35', '0', '1', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1966', '2', '3501', '35', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1967', '2', '350101', '3501', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1968', '2', '350102', '3501', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1969', '2', '350103', '3501', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1970', '2', '350104', '3501', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1971', '2', '3502', '35', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1972', '2', '350201', '3502', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1973', '2', '350202', '3502', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1974', '2', '40', '0', '1', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1975', '2', '4001', '40', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1976', '2', '4002', '40', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1977', '2', '4003', '40', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1978', '2', '4004', '40', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1979', '2', '4005', '40', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1980', '2', '45', '0', '1', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1981', '2', '4501', '45', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1982', '2', '450101', '4501', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1983', '2', '450102', '4501', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1984', '2', '450103', '4501', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1985', '2', '4502', '45', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1986', '2', '50', '0', '1', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1987', '2', '5001', '50', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1988', '2', '5002', '50', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1989', '2', '5003', '50', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1990', '2', '5004', '50', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1991', '2', '5005', '50', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1992', '2', '55', '0', '1', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1993', '2', '5501', '55', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1994', '2', '5502', '55', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1995', '2', '5503', '55', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1996', '2', '5504', '55', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1997', '2', '5505', '55', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1998', '2', '60', '0', '1', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('1999', '2', '6001', '60', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('2000', '2', '6002', '60', '2', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('2001', '2', '600201', '6002', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('2002', '2', '600202', '6002', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');
INSERT INTO `sp_role_authority` VALUES ('2003', '2', '600203', '6002', '3', '1', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47');

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
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4;

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
INSERT INTO `sp_role_manage_authority` VALUES ('215', '1', '15', '0', '1', '项目信息管理', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('216', '1', '20', '0', '1', '预算报价管理', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('217', '1', '25', '0', '1', '采购集成管理', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('218', '1', '30', '0', '1', '施工安装管理', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('219', '1', '35', '0', '1', '建筑设计管理', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('220', '1', '40', '0', '1', '部件集成管理', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('221', '1', '45', '0', '1', '供应商管理', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('222', '1', '55', '0', '1', '财务信息管理', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('223', '1', '60', '0', '1', '客户信息管理', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('224', '1', '65', '0', '1', '基础信息管理', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('225', '1', '3501', '35', '2', '查询建筑系统详情', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('226', '1', '3502', '35', '2', '新增建筑系统', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('227', '1', '3503', '35', '2', '编辑建筑系统', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('228', '1', '3504', '35', '2', '更改建筑系统状态', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('229', '1', '3505', '35', '2', '查询建筑系统子系统', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('230', '1', '3506', '35', '2', '编辑建筑子系统', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('231', '1', '3507', '35', '2', '', '1', '2019-07-22 10:12:01', '2019-07-22 10:12:01', '1');
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
INSERT INTO `sp_role_manage_authority` VALUES ('285', '2', '15', '0', '1', '项目信息管理', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('286', '2', '20', '0', '1', '预算报价管理', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('287', '2', '25', '0', '1', '采购集成管理', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('288', '2', '30', '0', '1', '施工安装管理', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('289', '2', '35', '0', '1', '建筑设计管理', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('290', '2', '40', '0', '1', '部件集成管理', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('291', '2', '45', '0', '1', '供应商管理', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('292', '2', '55', '0', '1', '财务信息管理', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('293', '2', '60', '0', '1', '客户信息管理', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('294', '2', '65', '0', '1', '基础信息管理', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('295', '2', '3501', '35', '2', '查询建筑系统详情', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('296', '2', '3502', '35', '2', '新增建筑系统', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('297', '2', '3503', '35', '2', '编辑建筑系统', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('298', '2', '3504', '35', '2', '更改建筑系统状态', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('299', '2', '3505', '35', '2', '查询建筑系统子系统', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('300', '2', '3506', '35', '2', '编辑建筑子系统', '6', '2019-07-23 19:32:47', '2019-07-23 19:32:47', '1');

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
  `status` tinyint(4) DEFAULT NULL COMMENT '状态 1有效 0无效',
  PRIMARY KEY (`id`),
  KEY `manufactor` (`manufactor`(191)) USING BTREE,
  KEY `supplier` (`supplier`(191)) USING BTREE,
  KEY `address` (`address`(191)) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_supplier
-- ----------------------------

-- ----------------------------
-- Table structure for sp_supplier_brand
-- ----------------------------
DROP TABLE IF EXISTS `sp_supplier_brand`;
CREATE TABLE `sp_supplier_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `brand_id` int(11) DEFAULT NULL COMMENT '品牌ID',
  `supplier_id` int(11) DEFAULT NULL COMMENT '供应商ID',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态1有效 0无效',
  `createor` varchar(255) DEFAULT NULL COMMENT '创建人',
  `create_uid` int(11) DEFAULT NULL COMMENT '创建人ID',
  `created_at` date DEFAULT NULL COMMENT '创建时间',
  `editor` varchar(255) DEFAULT NULL COMMENT '编辑人',
  `edit_uid` int(11) DEFAULT NULL COMMENT '编辑人id',
  `updated_at` date DEFAULT NULL COMMENT '编辑时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_supplier_brand
-- ----------------------------

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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1404 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_system_operation_log
-- ----------------------------
INSERT INTO `sp_system_operation_log` VALUES ('1', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-15 14:49:05');
INSERT INTO `sp_system_operation_log` VALUES ('2', '1', 'admin/system_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-15 14:49:07');
INSERT INTO `sp_system_operation_log` VALUES ('3', '1', 'admin/menu_nav_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-15 14:49:08');
INSERT INTO `sp_system_operation_log` VALUES ('4', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-15 14:49:10');
INSERT INTO `sp_system_operation_log` VALUES ('5', '1', 'architectural/add_architect', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-15 14:49:12');
INSERT INTO `sp_system_operation_log` VALUES ('6', '1', 'architectural/architect_detail/6', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-15 14:49:15');
INSERT INTO `sp_system_operation_log` VALUES ('7', '1', 'architectural/edit_architect/6', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-15 14:49:20');
INSERT INTO `sp_system_operation_log` VALUES ('8', '1', 'architectural/add_architect', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-15 14:50:13');
INSERT INTO `sp_system_operation_log` VALUES ('9', '1', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-15 14:50:14');
INSERT INTO `sp_system_operation_log` VALUES ('10', '1', 'architectural/edit_material/2', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-15 14:50:54');
INSERT INTO `sp_system_operation_log` VALUES ('11', '1', 'architectural/post_edit_material/2', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"material_id\":[\"2\",\"1\"],\"material_name\":[\"\\u7b2c\\u4e8c\\u884c\",\"\\u554a\"],\"material_code\":[\"\\u7f16\\u7801\",\"\\u662f\"],\"material_type\":[\"\\u662f\",\"\\u7684\"],\"position\":[\"\\u4f4d\\u7f6e\",\"\\u5426\"],\"purpose\":[\"\\u7528\\u9014\",\"\\u4e2a\"],\"material_number\":[\"\\u4ee3\\u7801\",\"\\u963f\\u65af\\u987f\\u53d1\\u9001\\u5230\"],\"characteristic\":[\"\\u8981\",\"\\u554a\"],\"waste_rate\":[\"11231\",\"12.312\"],\"sort\":[\"2\",\"11\"],\"status\":[\"1\",\"1\"]}', '2019-07-15 14:50:56');
INSERT INTO `sp_system_operation_log` VALUES ('12', '1', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u7f16\\u8f91\\u5173\\u8054\\u6750\\u6599\\u6210\\u529f\"}', '2019-07-15 14:50:57');
INSERT INTO `sp_system_operation_log` VALUES ('13', '0', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 10:15:48');
INSERT INTO `sp_system_operation_log` VALUES ('14', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 10:15:59');
INSERT INTO `sp_system_operation_log` VALUES ('15', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 10:16:04');
INSERT INTO `sp_system_operation_log` VALUES ('16', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 10:28:04');
INSERT INTO `sp_system_operation_log` VALUES ('17', '1', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 10:30:40');
INSERT INTO `sp_system_operation_log` VALUES ('18', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 10:33:17');
INSERT INTO `sp_system_operation_log` VALUES ('19', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 10:33:19');
INSERT INTO `sp_system_operation_log` VALUES ('20', '1', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 10:33:21');
INSERT INTO `sp_system_operation_log` VALUES ('21', '1', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 10:36:28');
INSERT INTO `sp_system_operation_log` VALUES ('22', '1', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 10:43:38');
INSERT INTO `sp_system_operation_log` VALUES ('23', '1', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 10:44:53');
INSERT INTO `sp_system_operation_log` VALUES ('24', '1', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 10:47:51');
INSERT INTO `sp_system_operation_log` VALUES ('25', '1', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 10:49:57');
INSERT INTO `sp_system_operation_log` VALUES ('26', '1', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 10:53:27');
INSERT INTO `sp_system_operation_log` VALUES ('27', '1', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 10:54:51');
INSERT INTO `sp_system_operation_log` VALUES ('28', '1', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 10:55:57');
INSERT INTO `sp_system_operation_log` VALUES ('29', '1', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 10:59:03');
INSERT INTO `sp_system_operation_log` VALUES ('30', '1', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 10:59:46');
INSERT INTO `sp_system_operation_log` VALUES ('31', '1', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 12:43:16');
INSERT INTO `sp_system_operation_log` VALUES ('32', '1', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 12:44:17');
INSERT INTO `sp_system_operation_log` VALUES ('33', '1', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 14:16:55');
INSERT INTO `sp_system_operation_log` VALUES ('34', '1', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 14:17:54');
INSERT INTO `sp_system_operation_log` VALUES ('35', '1', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 14:22:53');
INSERT INTO `sp_system_operation_log` VALUES ('36', '1', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 14:25:56');
INSERT INTO `sp_system_operation_log` VALUES ('37', '1', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 14:26:37');
INSERT INTO `sp_system_operation_log` VALUES ('38', '1', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 14:28:19');
INSERT INTO `sp_system_operation_log` VALUES ('39', '1', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 14:31:53');
INSERT INTO `sp_system_operation_log` VALUES ('40', '1', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 14:32:26');
INSERT INTO `sp_system_operation_log` VALUES ('41', '1', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 14:36:45');
INSERT INTO `sp_system_operation_log` VALUES ('42', '1', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 14:37:15');
INSERT INTO `sp_system_operation_log` VALUES ('43', '1', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 14:40:07');
INSERT INTO `sp_system_operation_log` VALUES ('44', '1', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 14:42:51');
INSERT INTO `sp_system_operation_log` VALUES ('45', '1', 'admin/post_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"manage_id\":{\"4\":\"35\",\"5\":\"3501\",\"6\":\"3502\",\"7\":\"3503\",\"8\":\"3504\",\"9\":\"3505\",\"10\":\"3506\",\"11\":\"3507\"}}', '2019-07-16 15:27:35');
INSERT INTO `sp_system_operation_log` VALUES ('46', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"status\":\"2\",\"notice\":\"\\u6ca1\\u6709\\u7ed9\\u8be5\\u89d2\\u8272\\u6dfb\\u52a0\\u4efb\\u4f55\\u6743\\u9650\"}', '2019-07-16 15:27:35');
INSERT INTO `sp_system_operation_log` VALUES ('47', '1', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 15:27:43');
INSERT INTO `sp_system_operation_log` VALUES ('48', '1', 'admin/post_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"auth_id\":{\"64\":\"35\",\"65\":\"3501\",\"66\":\"350101\",\"67\":\"350102\",\"68\":\"350103\",\"69\":\"350104\",\"70\":\"3502\"},\"manage_id\":{\"4\":\"35\",\"5\":\"3501\",\"6\":\"3502\",\"7\":\"3503\",\"8\":\"3504\",\"9\":\"3505\",\"10\":\"3506\",\"11\":\"3507\"}}', '2019-07-16 15:27:49');
INSERT INTO `sp_system_operation_log` VALUES ('49', '1', 'admin/post_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"auth_id\":{\"64\":\"35\",\"65\":\"3501\",\"66\":\"350101\",\"67\":\"350102\",\"68\":\"350103\",\"69\":\"350104\",\"70\":\"3502\"},\"manage_id\":{\"4\":\"35\",\"5\":\"3501\",\"6\":\"3502\",\"7\":\"3503\",\"8\":\"3504\",\"9\":\"3505\",\"10\":\"3506\",\"11\":\"3507\"}}', '2019-07-16 15:28:33');
INSERT INTO `sp_system_operation_log` VALUES ('50', '1', 'admin/post_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"auth_id\":{\"64\":\"35\",\"65\":\"3501\",\"66\":\"350101\",\"67\":\"350102\",\"68\":\"350103\",\"69\":\"350104\",\"70\":\"3502\"},\"manage_id\":{\"4\":\"35\",\"5\":\"3501\",\"6\":\"3502\",\"7\":\"3503\",\"8\":\"3504\",\"9\":\"3505\",\"10\":\"3506\",\"11\":\"3507\"}}', '2019-07-16 15:29:28');
INSERT INTO `sp_system_operation_log` VALUES ('51', '1', 'admin/post_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"auth_id\":{\"64\":\"35\",\"65\":\"3501\",\"66\":\"350101\",\"67\":\"350102\",\"68\":\"350103\",\"69\":\"350104\",\"70\":\"3502\"},\"manage_id\":{\"4\":\"35\",\"5\":\"3501\",\"6\":\"3502\",\"7\":\"3503\",\"8\":\"3504\",\"9\":\"3505\",\"10\":\"3506\",\"11\":\"3507\"}}', '2019-07-16 15:30:41');
INSERT INTO `sp_system_operation_log` VALUES ('52', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u89d2\\u8272\\u5206\\u914d\\u6743\\u9650\\u6210\\u529f\"}', '2019-07-16 15:31:17');
INSERT INTO `sp_system_operation_log` VALUES ('53', '1', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 15:31:26');
INSERT INTO `sp_system_operation_log` VALUES ('54', '1', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 15:32:10');
INSERT INTO `sp_system_operation_log` VALUES ('55', '1', 'admin/post_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"auth_id\":{\"64\":\"35\",\"65\":\"3501\",\"66\":\"350101\",\"67\":\"350102\",\"68\":\"350103\",\"69\":\"350104\",\"70\":\"3502\"},\"manage_id\":{\"3\":\"30\",\"4\":\"35\",\"5\":\"3501\",\"6\":\"3502\",\"7\":\"3503\",\"8\":\"3504\",\"9\":\"3505\",\"10\":\"3506\",\"11\":\"3507\"}}', '2019-07-16 15:33:30');
INSERT INTO `sp_system_operation_log` VALUES ('56', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u89d2\\u8272\\u5206\\u914d\\u6743\\u9650\\u6210\\u529f\"}', '2019-07-16 15:33:30');
INSERT INTO `sp_system_operation_log` VALUES ('57', '1', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 15:34:08');
INSERT INTO `sp_system_operation_log` VALUES ('58', '1', 'admin/post_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"auth_id\":{\"64\":\"35\",\"65\":\"3501\",\"66\":\"350101\",\"67\":\"350102\",\"68\":\"350103\",\"69\":\"350104\",\"70\":\"3502\"},\"manage_id\":{\"2\":\"25\",\"3\":\"30\",\"4\":\"35\",\"5\":\"3501\",\"6\":\"3502\",\"7\":\"3503\",\"8\":\"3504\",\"9\":\"3505\",\"10\":\"3506\",\"11\":\"3507\"}}', '2019-07-16 15:34:14');
INSERT INTO `sp_system_operation_log` VALUES ('59', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u89d2\\u8272\\u5206\\u914d\\u6743\\u9650\\u6210\\u529f\"}', '2019-07-16 15:34:14');
INSERT INTO `sp_system_operation_log` VALUES ('60', '1', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 15:35:08');
INSERT INTO `sp_system_operation_log` VALUES ('61', '1', 'admin/post_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"auth_id\":{\"0\":\"10\",\"1\":\"1001\",\"2\":\"100101\",\"3\":\"100102\",\"4\":\"100103\",\"5\":\"100105\",\"6\":\"1002\",\"7\":\"100201\",\"8\":\"100202\",\"9\":\"100203\",\"10\":\"100204\",\"11\":\"100205\",\"12\":\"1003\",\"13\":\"100301\",\"14\":\"100302\",\"15\":\"100303\",\"16\":\"1004\",\"17\":\"100401\",\"18\":\"1005\",\"19\":\"15\",\"20\":\"1501\",\"21\":\"1502\",\"22\":\"150201\",\"23\":\"150202\",\"24\":\"150203\",\"25\":\"1503\",\"26\":\"150301\",\"27\":\"150302\",\"28\":\"150303\",\"29\":\"150304\",\"30\":\"1504\",\"31\":\"150401\",\"32\":\"150402\",\"33\":\"150403\",\"34\":\"1505\",\"35\":\"150501\",\"36\":\"150502\",\"64\":\"35\",\"65\":\"3501\",\"66\":\"350101\",\"67\":\"350102\",\"68\":\"350103\",\"69\":\"350104\",\"70\":\"3502\"},\"manage_id\":[\"15\",\"20\",\"25\",\"30\",\"35\",\"3501\",\"3502\",\"3503\",\"3504\",\"3505\",\"3506\",\"3507\"]}', '2019-07-16 15:35:15');
INSERT INTO `sp_system_operation_log` VALUES ('62', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u89d2\\u8272\\u5206\\u914d\\u6743\\u9650\\u6210\\u529f\"}', '2019-07-16 15:35:16');
INSERT INTO `sp_system_operation_log` VALUES ('63', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 16:23:17');
INSERT INTO `sp_system_operation_log` VALUES ('64', '1', 'admin/edit_user_info/3', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 16:23:25');
INSERT INTO `sp_system_operation_log` VALUES ('65', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 16:23:29');
INSERT INTO `sp_system_operation_log` VALUES ('66', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 16:24:13');
INSERT INTO `sp_system_operation_log` VALUES ('67', '1', 'admin/edit_user_info/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 16:24:17');
INSERT INTO `sp_system_operation_log` VALUES ('68', '1', 'admin/post_edit_user', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"id\":\"5\",\"username\":\"18510174992\",\"email\":\"wang@163.com\",\"password\":\"\",\"repPassword\":\"\",\"roleid\":[\"1\",\"2\"]}', '2019-07-16 16:24:20');
INSERT INTO `sp_system_operation_log` VALUES ('69', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u7f16\\u8f91\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-16 16:24:20');
INSERT INTO `sp_system_operation_log` VALUES ('70', '1', 'admin/edit_user_info/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 16:24:25');
INSERT INTO `sp_system_operation_log` VALUES ('71', '1', 'admin/post_edit_user', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"id\":\"5\",\"username\":\"18510174992\",\"email\":\"wang@163.com\",\"password\":\"\",\"repPassword\":\"\",\"roleid\":[\"3\"]}', '2019-07-16 16:24:31');
INSERT INTO `sp_system_operation_log` VALUES ('72', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u7f16\\u8f91\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-16 16:24:31');
INSERT INTO `sp_system_operation_log` VALUES ('73', '1', 'admin/edit_user_info/1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 16:24:39');
INSERT INTO `sp_system_operation_log` VALUES ('74', '1', 'admin/post_edit_user', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"id\":\"1\",\"username\":\"\\u603b\\u7ecf\\u7406\",\"email\":\"admin@163.com\",\"password\":\"\",\"repPassword\":\"\",\"roleid\":[\"1\"]}', '2019-07-16 16:24:50');
INSERT INTO `sp_system_operation_log` VALUES ('75', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u7f16\\u8f91\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-16 16:24:51');
INSERT INTO `sp_system_operation_log` VALUES ('76', '1', 'admin/edit_user_info/2', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 16:24:54');
INSERT INTO `sp_system_operation_log` VALUES ('77', '1', 'admin/post_edit_user', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"id\":\"2\",\"username\":\"\\u7476\",\"email\":\"everup@163.com\",\"password\":\"\",\"repPassword\":\"\",\"roleid\":[\"2\",\"5\"]}', '2019-07-16 16:25:01');
INSERT INTO `sp_system_operation_log` VALUES ('78', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u7f16\\u8f91\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-16 16:25:01');
INSERT INTO `sp_system_operation_log` VALUES ('79', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 16:25:18');
INSERT INTO `sp_system_operation_log` VALUES ('80', '1', 'admin/edit_role_authority/1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 16:25:22');
INSERT INTO `sp_system_operation_log` VALUES ('81', '1', 'admin/post_role_authority/1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"auth_id\":[\"10\",\"1001\",\"100101\",\"100102\",\"100103\",\"100105\",\"1002\",\"100201\",\"100202\",\"100203\",\"100204\",\"100205\",\"1003\",\"100301\",\"100302\",\"100303\",\"1004\",\"100401\",\"1005\",\"15\",\"1501\",\"1502\",\"150201\",\"150202\",\"150203\",\"1503\",\"150301\",\"150302\",\"150303\",\"150304\",\"1504\",\"150401\",\"150402\",\"150403\",\"1505\",\"150501\",\"150502\",\"20\",\"2001\",\"200101\",\"200102\",\"200103\",\"200104\",\"200105\",\"200106\",\"2002\",\"200201\",\"200202\",\"200203\",\"200204\",\"200205\",\"200206\",\"25\",\"2501\",\"2502\",\"2503\",\"2504\",\"2505\",\"30\",\"3001\",\"3002\",\"3003\",\"3004\",\"3005\",\"35\",\"3501\",\"350101\",\"350102\",\"350103\",\"350104\",\"3502\",\"350201\",\"350202\",\"40\",\"4001\",\"4002\",\"4003\",\"4004\",\"4005\",\"45\",\"4501\",\"4502\",\"4503\",\"4504\",\"4505\",\"50\",\"5001\",\"5002\",\"5003\",\"5004\",\"5005\",\"55\",\"5501\",\"5502\",\"5503\",\"5504\",\"5505\",\"60\",\"6001\",\"6002\",\"600201\",\"600202\",\"600203\"],\"manage_id\":[\"15\",\"20\",\"25\",\"30\",\"35\",\"3501\",\"3502\",\"3503\",\"3504\",\"3505\",\"3506\",\"3507\",\"40\",\"45\",\"55\",\"60\",\"65\"]}', '2019-07-16 16:25:40');
INSERT INTO `sp_system_operation_log` VALUES ('82', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u89d2\\u8272\\u5206\\u914d\\u6743\\u9650\\u6210\\u529f\"}', '2019-07-16 16:25:40');
INSERT INTO `sp_system_operation_log` VALUES ('83', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 16:25:55');
INSERT INTO `sp_system_operation_log` VALUES ('84', '1', 'admin/edit_user_info/6', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 16:25:59');
INSERT INTO `sp_system_operation_log` VALUES ('85', '1', 'admin/post_edit_user', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"id\":\"6\",\"username\":\"\\u738b\\u62ec\",\"email\":\"497686205@qq.com\",\"password\":\"\",\"repPassword\":\"\",\"roleid\":[\"2\"]}', '2019-07-16 16:26:03');
INSERT INTO `sp_system_operation_log` VALUES ('86', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u7f16\\u8f91\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-16 16:26:03');
INSERT INTO `sp_system_operation_log` VALUES ('87', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 16:26:11');
INSERT INTO `sp_system_operation_log` VALUES ('88', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 16:26:13');
INSERT INTO `sp_system_operation_log` VALUES ('89', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 16:26:21');
INSERT INTO `sp_system_operation_log` VALUES ('90', '1', 'admin/edit_user_info/1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 16:26:23');
INSERT INTO `sp_system_operation_log` VALUES ('91', '1', 'admin/post_edit_user', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"id\":\"1\",\"username\":\"\\u7476(\\u603b\\u7ecf\\u7406)\",\"email\":\"admin@163.com\",\"password\":\"\",\"repPassword\":\"\",\"roleid\":[\"1\"]}', '2019-07-16 16:26:45');
INSERT INTO `sp_system_operation_log` VALUES ('92', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u7f16\\u8f91\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-16 16:26:45');
INSERT INTO `sp_system_operation_log` VALUES ('93', '1', 'admin/ban_user/2', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 16:26:49');
INSERT INTO `sp_system_operation_log` VALUES ('94', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u7981\\u7528\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-16 16:26:49');
INSERT INTO `sp_system_operation_log` VALUES ('95', '1', 'admin/no_ban_user/2', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 16:26:57');
INSERT INTO `sp_system_operation_log` VALUES ('96', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u5f00\\u542f\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-16 16:26:57');
INSERT INTO `sp_system_operation_log` VALUES ('97', '1', 'admin/edit_user_info/2', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 16:27:00');
INSERT INTO `sp_system_operation_log` VALUES ('98', '1', 'admin/post_edit_user', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"id\":\"2\",\"username\":\"\\u738b\\u6d77\\u821f\",\"email\":\"everup@163.com\",\"password\":\"\",\"repPassword\":\"\",\"roleid\":[\"2\",\"5\"]}', '2019-07-16 16:27:15');
INSERT INTO `sp_system_operation_log` VALUES ('99', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u7f16\\u8f91\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-16 16:27:16');
INSERT INTO `sp_system_operation_log` VALUES ('100', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 18:01:41');
INSERT INTO `sp_system_operation_log` VALUES ('101', '1', 'admin/edit_role_authority/2', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 18:01:56');
INSERT INTO `sp_system_operation_log` VALUES ('102', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-16 18:02:17');
INSERT INTO `sp_system_operation_log` VALUES ('103', '0', 'admin/role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 10:00:42');
INSERT INTO `sp_system_operation_log` VALUES ('104', '2', 'admin/role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 10:00:54');
INSERT INTO `sp_system_operation_log` VALUES ('105', '2', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 10:00:57');
INSERT INTO `sp_system_operation_log` VALUES ('106', '2', 'admin/role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 10:00:59');
INSERT INTO `sp_system_operation_log` VALUES ('107', '2', 'admin/edit_role_authority/2', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 10:01:02');
INSERT INTO `sp_system_operation_log` VALUES ('108', '2', 'admin/post_role_authority/2', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"auth_id\":{\"0\":\"10\",\"1\":\"1001\",\"2\":\"100101\",\"3\":\"100102\",\"4\":\"100103\",\"5\":\"100105\",\"6\":\"1002\",\"7\":\"100201\",\"8\":\"100202\",\"9\":\"100203\",\"10\":\"100204\",\"11\":\"100205\",\"12\":\"1003\",\"13\":\"100301\",\"14\":\"100302\",\"15\":\"100303\",\"16\":\"1004\",\"17\":\"100401\",\"97\":\"60\",\"98\":\"6001\",\"99\":\"6002\",\"100\":\"600201\",\"101\":\"600202\",\"102\":\"600203\"},\"manage_id\":{\"16\":\"65\"}}', '2019-07-17 10:01:11');
INSERT INTO `sp_system_operation_log` VALUES ('109', '2', 'admin/role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u89d2\\u8272\\u5206\\u914d\\u6743\\u9650\\u6210\\u529f\"}', '2019-07-17 10:01:12');
INSERT INTO `sp_system_operation_log` VALUES ('110', '2', 'base/notice_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 10:01:34');
INSERT INTO `sp_system_operation_log` VALUES ('111', '2', 'base/notice_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 10:01:49');
INSERT INTO `sp_system_operation_log` VALUES ('112', '2', 'base/notice_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 10:03:18');
INSERT INTO `sp_system_operation_log` VALUES ('113', '2', 'base/notice_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 10:05:06');
INSERT INTO `sp_system_operation_log` VALUES ('114', '2', 'base/notice_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 10:07:38');
INSERT INTO `sp_system_operation_log` VALUES ('115', '2', 'home', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 16:49:53');
INSERT INTO `sp_system_operation_log` VALUES ('116', '2', 'project/index', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 16:49:55');
INSERT INTO `sp_system_operation_log` VALUES ('117', '2', 'base/notice_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 16:49:57');
INSERT INTO `sp_system_operation_log` VALUES ('118', '2', 'base/notice_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 16:55:03');
INSERT INTO `sp_system_operation_log` VALUES ('119', '2', 'base/notice_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 16:58:20');
INSERT INTO `sp_system_operation_log` VALUES ('120', '2', 'base/notice_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 16:59:03');
INSERT INTO `sp_system_operation_log` VALUES ('121', '2', 'base/notice_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 17:01:25');
INSERT INTO `sp_system_operation_log` VALUES ('122', '2', 'base/notice_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 17:01:33');
INSERT INTO `sp_system_operation_log` VALUES ('123', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 17:01:43');
INSERT INTO `sp_system_operation_log` VALUES ('124', '2', 'project/index', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 17:01:48');
INSERT INTO `sp_system_operation_log` VALUES ('125', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 17:01:49');
INSERT INTO `sp_system_operation_log` VALUES ('126', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 17:29:27');
INSERT INTO `sp_system_operation_log` VALUES ('127', '2', 'base/notice_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 17:29:31');
INSERT INTO `sp_system_operation_log` VALUES ('128', '2', 'admin/add_role', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 17:29:34');
INSERT INTO `sp_system_operation_log` VALUES ('129', '2', 'admin/edit_role/1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 17:29:38');
INSERT INTO `sp_system_operation_log` VALUES ('130', '2', 'admin/edit_role/1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 17:29:42');
INSERT INTO `sp_system_operation_log` VALUES ('131', '2', 'admin/add_role', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 17:39:04');
INSERT INTO `sp_system_operation_log` VALUES ('132', '2', 'base/notice_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 17:39:07');
INSERT INTO `sp_system_operation_log` VALUES ('133', '2', 'base/notice_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 17:40:03');
INSERT INTO `sp_system_operation_log` VALUES ('134', '2', 'base/add_notice', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 17:40:05');
INSERT INTO `sp_system_operation_log` VALUES ('135', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 17:40:10');
INSERT INTO `sp_system_operation_log` VALUES ('136', '2', 'admin/role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 17:40:14');
INSERT INTO `sp_system_operation_log` VALUES ('137', '2', 'admin/edit_role_authority/2', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 17:40:17');
INSERT INTO `sp_system_operation_log` VALUES ('138', '2', 'admin/edit_role_authority/2', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 17:40:45');
INSERT INTO `sp_system_operation_log` VALUES ('139', '2', 'base/notice_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 17:40:54');
INSERT INTO `sp_system_operation_log` VALUES ('140', '2', 'base/edit_notice/2', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 17:42:04');
INSERT INTO `sp_system_operation_log` VALUES ('141', '2', 'base/edit_notice/2', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 17:42:15');
INSERT INTO `sp_system_operation_log` VALUES ('142', '1', 'home', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 20:58:38');
INSERT INTO `sp_system_operation_log` VALUES ('143', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 20:58:42');
INSERT INTO `sp_system_operation_log` VALUES ('144', '1', 'base/add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 20:58:45');
INSERT INTO `sp_system_operation_log` VALUES ('145', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\\u6d4b\\u8bd5\"}', '2019-07-17 20:59:07');
INSERT INTO `sp_system_operation_log` VALUES ('146', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\\u6d4b\\u8bd5\"}', '2019-07-17 20:59:10');
INSERT INTO `sp_system_operation_log` VALUES ('147', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 21:12:46');
INSERT INTO `sp_system_operation_log` VALUES ('148', '1', 'base/add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 21:25:54');
INSERT INTO `sp_system_operation_log` VALUES ('149', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 21:28:29');
INSERT INTO `sp_system_operation_log` VALUES ('150', '1', 'base/add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 21:28:31');
INSERT INTO `sp_system_operation_log` VALUES ('151', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 21:29:00');
INSERT INTO `sp_system_operation_log` VALUES ('152', '1', 'base/add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 21:29:01');
INSERT INTO `sp_system_operation_log` VALUES ('153', '1', 'base/add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 21:31:40');
INSERT INTO `sp_system_operation_log` VALUES ('154', '1', 'base/add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 21:34:03');
INSERT INTO `sp_system_operation_log` VALUES ('155', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 21:37:54');
INSERT INTO `sp_system_operation_log` VALUES ('156', '1', 'base/add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 21:37:55');
INSERT INTO `sp_system_operation_log` VALUES ('157', '1', 'base/add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 21:43:50');
INSERT INTO `sp_system_operation_log` VALUES ('158', '1', 'base/add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 21:50:14');
INSERT INTO `sp_system_operation_log` VALUES ('159', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\"}', '2019-07-17 21:51:22');
INSERT INTO `sp_system_operation_log` VALUES ('160', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\"}', '2019-07-17 21:51:25');
INSERT INTO `sp_system_operation_log` VALUES ('161', '1', 'base/add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 21:51:30');
INSERT INTO `sp_system_operation_log` VALUES ('162', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 21:51:36');
INSERT INTO `sp_system_operation_log` VALUES ('163', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 21:51:37');
INSERT INTO `sp_system_operation_log` VALUES ('164', '1', 'admin/add_role', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 21:51:39');
INSERT INTO `sp_system_operation_log` VALUES ('165', '1', 'admin/post_role', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"name\":\"\\u91c7\\u8d2d\\u4eba\\u5458\"}', '2019-07-17 21:51:50');
INSERT INTO `sp_system_operation_log` VALUES ('166', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 21:52:20');
INSERT INTO `sp_system_operation_log` VALUES ('167', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 21:52:39');
INSERT INTO `sp_system_operation_log` VALUES ('168', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 21:53:00');
INSERT INTO `sp_system_operation_log` VALUES ('169', '1', 'base/add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 21:53:48');
INSERT INTO `sp_system_operation_log` VALUES ('170', '1', 'base/add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 21:54:50');
INSERT INTO `sp_system_operation_log` VALUES ('171', '1', 'base/add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 21:55:27');
INSERT INTO `sp_system_operation_log` VALUES ('172', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 21:56:41');
INSERT INTO `sp_system_operation_log` VALUES ('173', '1', 'base/post_add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 21:56:42');
INSERT INTO `sp_system_operation_log` VALUES ('174', '1', 'base/post_add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 21:56:46');
INSERT INTO `sp_system_operation_log` VALUES ('175', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 21:57:39');
INSERT INTO `sp_system_operation_log` VALUES ('176', '1', 'base/add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 21:57:40');
INSERT INTO `sp_system_operation_log` VALUES ('177', '1', 'base/post_add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"title\":\"1\",\"content\":\"2\",\"status\":\"1\",\"pubdate\":\"2019-07-17 00:00:00\"}', '2019-07-17 21:57:50');
INSERT INTO `sp_system_operation_log` VALUES ('178', '1', 'base/post_add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"title\":\"1\",\"content\":\"2\",\"status\":\"1\",\"pubdate\":\"2019-07-17 00:00:00\"}', '2019-07-17 21:57:55');
INSERT INTO `sp_system_operation_log` VALUES ('179', '1', 'base/post_add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"title\":\"1\",\"content\":\"2\",\"status\":\"1\",\"pubdate\":\"2019-07-17 00:00:00\"}', '2019-07-17 21:58:01');
INSERT INTO `sp_system_operation_log` VALUES ('180', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\"}', '2019-07-17 21:58:19');
INSERT INTO `sp_system_operation_log` VALUES ('181', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\"}', '2019-07-17 21:58:20');
INSERT INTO `sp_system_operation_log` VALUES ('182', '1', 'base/add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 21:58:21');
INSERT INTO `sp_system_operation_log` VALUES ('183', '1', 'base/post_add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"title\":\"4\",\"content\":\"5\",\"status\":\"1\",\"pubdate\":\"2019-07-17 00:00:00\"}', '2019-07-17 21:58:30');
INSERT INTO `sp_system_operation_log` VALUES ('184', '1', 'base/post_add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"title\":\"4\",\"content\":\"5\",\"status\":\"1\",\"pubdate\":\"2019-07-17 00:00:00\"}', '2019-07-17 21:59:01');
INSERT INTO `sp_system_operation_log` VALUES ('185', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\"}', '2019-07-17 21:59:35');
INSERT INTO `sp_system_operation_log` VALUES ('186', '1', 'base/add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 21:59:37');
INSERT INTO `sp_system_operation_log` VALUES ('187', '1', 'base/post_add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"title\":\"5\",\"content\":\"254\",\"status\":\"1\",\"pubdate\":\"2019-07-17 21:59:49\"}', '2019-07-17 21:59:53');
INSERT INTO `sp_system_operation_log` VALUES ('188', '1', 'base/post_add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"title\":\"5\",\"content\":\"254\",\"status\":\"1\",\"pubdate\":\"2019-07-17 21:59:49\"}', '2019-07-17 22:00:01');
INSERT INTO `sp_system_operation_log` VALUES ('189', '1', 'base/post_add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"title\":\"5\",\"content\":\"254\",\"status\":\"1\",\"pubdate\":\"2019-07-17 21:59:49\"}', '2019-07-17 22:01:42');
INSERT INTO `sp_system_operation_log` VALUES ('190', '1', 'base/post_add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"title\":\"5\",\"content\":\"254\",\"status\":\"1\",\"pubdate\":\"2019-07-17 21:59:49\"}', '2019-07-17 22:01:50');
INSERT INTO `sp_system_operation_log` VALUES ('191', '1', 'base/post_add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"title\":\"5\",\"content\":\"254\",\"status\":\"1\",\"pubdate\":\"2019-07-17 21:59:49\"}', '2019-07-17 22:02:04');
INSERT INTO `sp_system_operation_log` VALUES ('192', '1', 'base/post_add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"title\":\"5\",\"content\":\"254\",\"status\":\"1\",\"pubdate\":\"2019-07-17 21:59:49\"}', '2019-07-17 22:02:17');
INSERT INTO `sp_system_operation_log` VALUES ('193', '1', 'base/post_add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"title\":\"5\",\"content\":\"254\",\"status\":\"1\",\"pubdate\":\"2019-07-17 21:59:49\"}', '2019-07-17 22:02:26');
INSERT INTO `sp_system_operation_log` VALUES ('194', '1', 'base/add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 22:05:53');
INSERT INTO `sp_system_operation_log` VALUES ('195', '1', 'base/post_add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"title\":\"1\",\"content\":\"2\",\"status\":\"1\",\"pubdate\":\"2019-07-17 00:00:00\"}', '2019-07-17 22:06:03');
INSERT INTO `sp_system_operation_log` VALUES ('196', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\"}', '2019-07-17 22:06:12');
INSERT INTO `sp_system_operation_log` VALUES ('197', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\"}', '2019-07-17 22:08:03');
INSERT INTO `sp_system_operation_log` VALUES ('198', '1', 'base/add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 22:08:04');
INSERT INTO `sp_system_operation_log` VALUES ('199', '1', 'base/post_add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"title\":\"\\u9875\\u9762\",\"content\":\"\\u5185\\u5bb9\",\"status\":\"1\",\"pubdate\":\"2019-07-17 00:00:00\"}', '2019-07-17 22:08:15');
INSERT INTO `sp_system_operation_log` VALUES ('200', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\"}', '2019-07-17 22:08:15');
INSERT INTO `sp_system_operation_log` VALUES ('201', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\"}', '2019-07-17 22:08:36');
INSERT INTO `sp_system_operation_log` VALUES ('202', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"rows\":\"2\",\"page\":\"2\"}', '2019-07-17 22:08:38');
INSERT INTO `sp_system_operation_log` VALUES ('203', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"rows\":\"2\",\"page\":\"3\"}', '2019-07-17 22:08:39');
INSERT INTO `sp_system_operation_log` VALUES ('204', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"rows\":\"2\",\"page\":\"4\"}', '2019-07-17 22:08:40');
INSERT INTO `sp_system_operation_log` VALUES ('205', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"rows\":\"2\",\"page\":\"5\"}', '2019-07-17 22:08:41');
INSERT INTO `sp_system_operation_log` VALUES ('206', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"rows\":\"2\",\"page\":\"6\"}', '2019-07-17 22:08:43');
INSERT INTO `sp_system_operation_log` VALUES ('207', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"rows\":\"2\",\"page\":\"2\"}', '2019-07-17 22:08:45');
INSERT INTO `sp_system_operation_log` VALUES ('208', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"rows\":\"2\",\"page\":\"1\"}', '2019-07-17 22:08:47');
INSERT INTO `sp_system_operation_log` VALUES ('209', '1', 'base/add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 22:11:57');
INSERT INTO `sp_system_operation_log` VALUES ('210', '1', 'base/add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 22:13:21');
INSERT INTO `sp_system_operation_log` VALUES ('211', '1', 'base/add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 22:13:39');
INSERT INTO `sp_system_operation_log` VALUES ('212', '1', 'base/add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 22:13:48');
INSERT INTO `sp_system_operation_log` VALUES ('213', '1', 'base/add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 22:13:51');
INSERT INTO `sp_system_operation_log` VALUES ('214', '1', 'base/post_add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"title\":\"\\u6807\\u9898\",\"content\":\"\\u5185\\u5bb9\\u73b0\\u5b9e\",\"status\":\"1\",\"pubdate\":\"2019-07-17 00:00:00\"}', '2019-07-17 22:14:17');
INSERT INTO `sp_system_operation_log` VALUES ('215', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"rows\":\"2\",\"page\":\"1\"}', '2019-07-17 22:14:17');
INSERT INTO `sp_system_operation_log` VALUES ('216', '1', 'base/add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 22:14:19');
INSERT INTO `sp_system_operation_log` VALUES ('217', '1', 'base/add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 22:16:16');
INSERT INTO `sp_system_operation_log` VALUES ('218', '1', 'base/post_add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"title\":\"\",\"content\":\"\",\"status\":\"1\",\"pubdate\":\"\"}', '2019-07-17 22:16:24');
INSERT INTO `sp_system_operation_log` VALUES ('219', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"rows\":\"2\",\"page\":\"1\"}', '2019-07-17 22:19:14');
INSERT INTO `sp_system_operation_log` VALUES ('220', '1', 'base/add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 22:19:15');
INSERT INTO `sp_system_operation_log` VALUES ('221', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"rows\":\"2\",\"page\":\"1\"}', '2019-07-17 22:20:11');
INSERT INTO `sp_system_operation_log` VALUES ('222', '1', 'base/add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 22:20:12');
INSERT INTO `sp_system_operation_log` VALUES ('223', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"rows\":\"2\",\"page\":\"1\"}', '2019-07-17 22:21:00');
INSERT INTO `sp_system_operation_log` VALUES ('224', '1', 'base/add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-17 22:21:01');
INSERT INTO `sp_system_operation_log` VALUES ('225', '1', 'base/post_add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"title\":\"\",\"content\":\"\",\"status\":\"1\",\"pubdate\":\"2019-07-17 22:21:30\"}', '2019-07-17 22:21:31');
INSERT INTO `sp_system_operation_log` VALUES ('226', '1', 'home', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-19 21:00:22');
INSERT INTO `sp_system_operation_log` VALUES ('227', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-19 21:00:27');
INSERT INTO `sp_system_operation_log` VALUES ('228', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-19 21:02:24');
INSERT INTO `sp_system_operation_log` VALUES ('229', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\\u6d4b\\u8bd5\"}', '2019-07-19 21:02:30');
INSERT INTO `sp_system_operation_log` VALUES ('230', '1', 'base/post_edit_notice/1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"title\":\"\\u6d4b\\u8bd5\\u6807\\u9898\",\"status\":\"1\",\"pubdate\":\"2019-07-19 00:00:00\",\"content\":\"\\u8bf6\\u4eba\"}', '2019-07-19 21:02:45');
INSERT INTO `sp_system_operation_log` VALUES ('231', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\\u6d4b\\u8bd5\"}', '2019-07-19 21:02:46');
INSERT INTO `sp_system_operation_log` VALUES ('232', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\\u6d4b\\u8bd5\"}', '2019-07-19 21:05:02');
INSERT INTO `sp_system_operation_log` VALUES ('233', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\\u6d4b\\u8bd5\"}', '2019-07-19 21:05:48');
INSERT INTO `sp_system_operation_log` VALUES ('234', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\\u6d4b\\u8bd5\"}', '2019-07-19 21:13:02');
INSERT INTO `sp_system_operation_log` VALUES ('235', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\\u6d4b\\u8bd5\"}', '2019-07-19 21:17:54');
INSERT INTO `sp_system_operation_log` VALUES ('236', '1', 'base/post_add_notice', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"title\":\"\\u6d4b\\u8bd5\\u6807\\u9898\",\"status\":\"1\",\"pubdate\":\"2019-07-19 00:00:00\",\"content\":\"\\u6c83\\u5c14\\u7279\\u7b2c\\u4e09\\u65b9 \"}', '2019-07-19 21:19:24');
INSERT INTO `sp_system_operation_log` VALUES ('237', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\\u6d4b\\u8bd5\"}', '2019-07-19 21:19:24');
INSERT INTO `sp_system_operation_log` VALUES ('238', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\"}', '2019-07-19 21:19:35');
INSERT INTO `sp_system_operation_log` VALUES ('239', '1', 'base/post_edit_notice/14', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"title\":\"\\u6d4b\\u8bd5\\u6807\\u9898\",\"status\":\"1\",\"pubdate\":\"2019-07-20 00:00:00\",\"content\":\"\\u6c83\\u5c14\\u7279\\u7b2c\\u4e09\\u65b9\"}', '2019-07-19 21:20:03');
INSERT INTO `sp_system_operation_log` VALUES ('240', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\"}', '2019-07-19 21:20:03');
INSERT INTO `sp_system_operation_log` VALUES ('241', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\"}', '2019-07-19 21:21:46');
INSERT INTO `sp_system_operation_log` VALUES ('242', '1', 'home', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-19 21:22:23');
INSERT INTO `sp_system_operation_log` VALUES ('243', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-19 21:22:25');
INSERT INTO `sp_system_operation_log` VALUES ('244', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-19 21:22:26');
INSERT INTO `sp_system_operation_log` VALUES ('245', '1', 'admin/edit_user_info/6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-19 21:22:29');
INSERT INTO `sp_system_operation_log` VALUES ('246', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-19 21:22:32');
INSERT INTO `sp_system_operation_log` VALUES ('247', '1', 'admin/add_role', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-19 21:22:33');
INSERT INTO `sp_system_operation_log` VALUES ('248', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-19 21:44:48');
INSERT INTO `sp_system_operation_log` VALUES ('249', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-19 21:45:26');
INSERT INTO `sp_system_operation_log` VALUES ('250', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-19 21:45:58');
INSERT INTO `sp_system_operation_log` VALUES ('251', '1', 'admin/post_role', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-19 21:46:05');
INSERT INTO `sp_system_operation_log` VALUES ('252', '1', 'admin/post_role', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-19 21:46:24');
INSERT INTO `sp_system_operation_log` VALUES ('253', '1', 'admin/post_role', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-19 21:46:42');
INSERT INTO `sp_system_operation_log` VALUES ('254', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-19 21:47:50');
INSERT INTO `sp_system_operation_log` VALUES ('255', '1', 'admin/post_role', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"id\":\"6\",\"name\":\"\\u91c7\\u8d2d\\u4eba\\u5458\"}', '2019-07-19 21:47:55');
INSERT INTO `sp_system_operation_log` VALUES ('256', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-19 21:47:55');
INSERT INTO `sp_system_operation_log` VALUES ('257', '1', 'admin/post_role', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"id\":\"6\",\"name\":\"\\u91c7\\u8d2d\\u4eba\\u54581\"}', '2019-07-19 21:48:00');
INSERT INTO `sp_system_operation_log` VALUES ('258', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-19 21:48:00');
INSERT INTO `sp_system_operation_log` VALUES ('259', '1', 'admin/post_role', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"id\":\"0\",\"name\":\"\\u9879\\u76ee\\u7ba1\\u7406\"}', '2019-07-19 21:48:14');
INSERT INTO `sp_system_operation_log` VALUES ('260', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-19 21:48:14');
INSERT INTO `sp_system_operation_log` VALUES ('261', '1', 'admin/post_role', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"id\":\"7\",\"name\":\"\\u9879\\u76ee\\u7ba1\\u74061\"}', '2019-07-19 21:48:21');
INSERT INTO `sp_system_operation_log` VALUES ('262', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-19 21:48:22');
INSERT INTO `sp_system_operation_log` VALUES ('263', '1', 'admin/edit_role_authority/7', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-19 21:48:26');
INSERT INTO `sp_system_operation_log` VALUES ('264', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-19 21:48:28');
INSERT INTO `sp_system_operation_log` VALUES ('265', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-19 21:48:32');
INSERT INTO `sp_system_operation_log` VALUES ('266', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-19 21:48:33');
INSERT INTO `sp_system_operation_log` VALUES ('267', '1', 'admin/menu_nav_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-19 21:48:37');
INSERT INTO `sp_system_operation_log` VALUES ('268', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-19 21:49:12');
INSERT INTO `sp_system_operation_log` VALUES ('269', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-19 21:49:15');
INSERT INTO `sp_system_operation_log` VALUES ('270', '1', 'home', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 10:40:27');
INSERT INTO `sp_system_operation_log` VALUES ('271', '2', 'home', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 10:40:45');
INSERT INTO `sp_system_operation_log` VALUES ('272', '2', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 10:40:55');
INSERT INTO `sp_system_operation_log` VALUES ('273', '2', 'base/post_edit_notice/14', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"title\":\"\\u6d4b\\u8bd5\\u6807\\u9898\",\"status\":\"1\",\"pubdate\":\"2019-07-20 00:00:00\",\"content\":\"\\u6c83\\u5c14\\u7279\\u7b2c\\u4e09\\u65b9\"}', '2019-07-20 10:41:14');
INSERT INTO `sp_system_operation_log` VALUES ('274', '2', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 10:41:14');
INSERT INTO `sp_system_operation_log` VALUES ('275', '2', 'base/post_edit_notice/1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"title\":\"\\u6d4b\\u8bd5\\u6807\\u9898\",\"status\":\"1\",\"pubdate\":\"2019-07-19 00:00:00\",\"content\":\"\\u8bf6\\u4eba\"}', '2019-07-20 10:41:25');
INSERT INTO `sp_system_operation_log` VALUES ('276', '2', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 10:41:25');
INSERT INTO `sp_system_operation_log` VALUES ('277', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 10:41:44');
INSERT INTO `sp_system_operation_log` VALUES ('278', '2', 'admin/add_user_info', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 10:49:20');
INSERT INTO `sp_system_operation_log` VALUES ('279', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 11:24:20');
INSERT INTO `sp_system_operation_log` VALUES ('280', '2', 'admin/edit_user_info/3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 11:24:26');
INSERT INTO `sp_system_operation_log` VALUES ('281', '2', 'admin/post_edit_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"id\":\"3\",\"username\":\"\\u738b\\u6d77\\u6d32\",\"email\":\"497686206@qq.com\",\"password\":\"\",\"repPassword\":\"\"}', '2019-07-20 11:24:29');
INSERT INTO `sp_system_operation_log` VALUES ('282', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u7f16\\u8f91\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-20 11:24:29');
INSERT INTO `sp_system_operation_log` VALUES ('283', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u7f16\\u8f91\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-20 11:27:27');
INSERT INTO `sp_system_operation_log` VALUES ('284', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u7f16\\u8f91\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-20 11:27:46');
INSERT INTO `sp_system_operation_log` VALUES ('285', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u7f16\\u8f91\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-20 11:30:31');
INSERT INTO `sp_system_operation_log` VALUES ('286', '2', 'admin/edit_user_info/4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 11:32:24');
INSERT INTO `sp_system_operation_log` VALUES ('287', '2', 'admin/post_edit_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"id\":\"4\",\"username\":\"test\",\"email\":\"test@qq.com\",\"password\":\"\",\"repPassword\":\"\",\"roleid\":[\"1\",\"2\",\"3\",\"4\"]}', '2019-07-20 11:32:29');
INSERT INTO `sp_system_operation_log` VALUES ('288', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u7f16\\u8f91\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-20 11:32:29');
INSERT INTO `sp_system_operation_log` VALUES ('289', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 11:35:28');
INSERT INTO `sp_system_operation_log` VALUES ('290', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 12:08:50');
INSERT INTO `sp_system_operation_log` VALUES ('291', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 12:09:49');
INSERT INTO `sp_system_operation_log` VALUES ('292', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 12:10:52');
INSERT INTO `sp_system_operation_log` VALUES ('293', '0', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 15:46:13');
INSERT INTO `sp_system_operation_log` VALUES ('294', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 15:49:45');
INSERT INTO `sp_system_operation_log` VALUES ('295', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 15:49:48');
INSERT INTO `sp_system_operation_log` VALUES ('296', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 15:53:26');
INSERT INTO `sp_system_operation_log` VALUES ('297', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 15:53:49');
INSERT INTO `sp_system_operation_log` VALUES ('298', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 15:54:03');
INSERT INTO `sp_system_operation_log` VALUES ('299', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 15:54:20');
INSERT INTO `sp_system_operation_log` VALUES ('300', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 15:57:33');
INSERT INTO `sp_system_operation_log` VALUES ('301', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:00:56');
INSERT INTO `sp_system_operation_log` VALUES ('302', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:01:24');
INSERT INTO `sp_system_operation_log` VALUES ('303', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:02:28');
INSERT INTO `sp_system_operation_log` VALUES ('304', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:02:52');
INSERT INTO `sp_system_operation_log` VALUES ('305', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:03:04');
INSERT INTO `sp_system_operation_log` VALUES ('306', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:03:14');
INSERT INTO `sp_system_operation_log` VALUES ('307', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"type\":\"-1\"}', '2019-07-20 16:03:29');
INSERT INTO `sp_system_operation_log` VALUES ('308', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"type\":\"1\"}', '2019-07-20 16:03:34');
INSERT INTO `sp_system_operation_log` VALUES ('309', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"type\":\"-1\"}', '2019-07-20 16:03:37');
INSERT INTO `sp_system_operation_log` VALUES ('310', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"type\":\"0\"}', '2019-07-20 16:03:41');
INSERT INTO `sp_system_operation_log` VALUES ('311', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"type\":\"0\"}', '2019-07-20 16:03:44');
INSERT INTO `sp_system_operation_log` VALUES ('312', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"type\":\"0\"}', '2019-07-20 16:03:45');
INSERT INTO `sp_system_operation_log` VALUES ('313', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"type\":\"0\"}', '2019-07-20 16:05:22');
INSERT INTO `sp_system_operation_log` VALUES ('314', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"type\":\"-1\"}', '2019-07-20 16:05:26');
INSERT INTO `sp_system_operation_log` VALUES ('315', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"type\":\"0\"}', '2019-07-20 16:05:29');
INSERT INTO `sp_system_operation_log` VALUES ('316', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"type\":\"0\"}', '2019-07-20 16:07:26');
INSERT INTO `sp_system_operation_log` VALUES ('317', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"type\":\"0\"}', '2019-07-20 16:09:50');
INSERT INTO `sp_system_operation_log` VALUES ('318', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"type\":\"1\"}', '2019-07-20 16:11:22');
INSERT INTO `sp_system_operation_log` VALUES ('319', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"type\":\"-1\"}', '2019-07-20 16:11:25');
INSERT INTO `sp_system_operation_log` VALUES ('320', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"type\":\"0\"}', '2019-07-20 16:11:30');
INSERT INTO `sp_system_operation_log` VALUES ('321', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"type\":\"0\"}', '2019-07-20 16:14:29');
INSERT INTO `sp_system_operation_log` VALUES ('322', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"type\":\"0\"}', '2019-07-20 16:15:54');
INSERT INTO `sp_system_operation_log` VALUES ('323', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"type\":\"0\"}', '2019-07-20 16:23:57');
INSERT INTO `sp_system_operation_log` VALUES ('324', '2', 'admin/examine_status/2/1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:24:00');
INSERT INTO `sp_system_operation_log` VALUES ('325', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u5ba1\\u6838\\u901a\\u8fc7\"}', '2019-07-20 16:24:00');
INSERT INTO `sp_system_operation_log` VALUES ('326', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u5ba1\\u6838\\u901a\\u8fc7\"}', '2019-07-20 16:27:40');
INSERT INTO `sp_system_operation_log` VALUES ('327', '2', 'admin/examine_status/2/1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:27:43');
INSERT INTO `sp_system_operation_log` VALUES ('328', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u5ba1\\u6838\\u901a\\u8fc7\"}', '2019-07-20 16:27:43');
INSERT INTO `sp_system_operation_log` VALUES ('329', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"type\":\"1\"}', '2019-07-20 16:27:47');
INSERT INTO `sp_system_operation_log` VALUES ('330', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"type\":\"0\"}', '2019-07-20 16:27:58');
INSERT INTO `sp_system_operation_log` VALUES ('331', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"type\":\"1\"}', '2019-07-20 16:28:09');
INSERT INTO `sp_system_operation_log` VALUES ('332', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:28:22');
INSERT INTO `sp_system_operation_log` VALUES ('333', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\"}', '2019-07-20 16:28:33');
INSERT INTO `sp_system_operation_log` VALUES ('334', '2', 'admin/edit_user_info/4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:28:46');
INSERT INTO `sp_system_operation_log` VALUES ('335', '2', 'admin/post_edit_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"id\":\"4\",\"username\":\"test\",\"email\":\"test@qq.com\",\"password\":\"\",\"repPassword\":\"\",\"roleid\":[\"4\"]}', '2019-07-20 16:28:52');
INSERT INTO `sp_system_operation_log` VALUES ('336', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u7f16\\u8f91\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-20 16:28:52');
INSERT INTO `sp_system_operation_log` VALUES ('337', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:28:56');
INSERT INTO `sp_system_operation_log` VALUES ('338', '2', 'admin/examine_status/3/1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:28:59');
INSERT INTO `sp_system_operation_log` VALUES ('339', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u5ba1\\u6838\\u901a\\u8fc7\"}', '2019-07-20 16:28:59');
INSERT INTO `sp_system_operation_log` VALUES ('340', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"type\":\"1\"}', '2019-07-20 16:29:04');
INSERT INTO `sp_system_operation_log` VALUES ('341', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"type\":\"1\"}', '2019-07-20 16:29:29');
INSERT INTO `sp_system_operation_log` VALUES ('342', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"type\":\"1\"}', '2019-07-20 16:30:07');
INSERT INTO `sp_system_operation_log` VALUES ('343', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"type\":\"0\"}', '2019-07-20 16:30:15');
INSERT INTO `sp_system_operation_log` VALUES ('344', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"type\":\"0\"}', '2019-07-20 16:30:41');
INSERT INTO `sp_system_operation_log` VALUES ('345', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:30:46');
INSERT INTO `sp_system_operation_log` VALUES ('346', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:30:52');
INSERT INTO `sp_system_operation_log` VALUES ('347', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"type\":\"1\"}', '2019-07-20 16:30:55');
INSERT INTO `sp_system_operation_log` VALUES ('348', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:31:04');
INSERT INTO `sp_system_operation_log` VALUES ('349', '2', 'admin/examine_status/1/0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:31:14');
INSERT INTO `sp_system_operation_log` VALUES ('350', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"2\",\"notice\":\"\\u7528\\u6237\\u5ba1\\u6838\\u4e0d\\u901a\\u8fc7\"}', '2019-07-20 16:31:14');
INSERT INTO `sp_system_operation_log` VALUES ('351', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:31:34');
INSERT INTO `sp_system_operation_log` VALUES ('352', '2', 'admin/examine_status/1/0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:31:38');
INSERT INTO `sp_system_operation_log` VALUES ('353', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u7528\\u6237\\u5ba1\\u6838\\u4e0d\\u901a\\u8fc7\"}', '2019-07-20 16:31:38');
INSERT INTO `sp_system_operation_log` VALUES ('354', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"type\":\"0\"}', '2019-07-20 16:31:41');
INSERT INTO `sp_system_operation_log` VALUES ('355', '2', 'admin/examine_status/1/0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:31:47');
INSERT INTO `sp_system_operation_log` VALUES ('356', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u7528\\u6237\\u5ba1\\u6838\\u4e0d\\u901a\\u8fc7\"}', '2019-07-20 16:31:47');
INSERT INTO `sp_system_operation_log` VALUES ('357', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"type\":\"0\"}', '2019-07-20 16:31:50');
INSERT INTO `sp_system_operation_log` VALUES ('358', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"type\":\"0\"}', '2019-07-20 16:33:05');
INSERT INTO `sp_system_operation_log` VALUES ('359', '2', 'admin/examine_status/1/0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:33:30');
INSERT INTO `sp_system_operation_log` VALUES ('360', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u7528\\u6237\\u5ba1\\u6838\\u4e0d\\u901a\\u8fc7\"}', '2019-07-20 16:33:30');
INSERT INTO `sp_system_operation_log` VALUES ('361', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"type\":\"-1\"}', '2019-07-20 16:33:34');
INSERT INTO `sp_system_operation_log` VALUES ('362', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"type\":\"1\"}', '2019-07-20 16:33:42');
INSERT INTO `sp_system_operation_log` VALUES ('363', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:33:55');
INSERT INTO `sp_system_operation_log` VALUES ('364', '2', 'admin/no_ban_user/3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:34:05');
INSERT INTO `sp_system_operation_log` VALUES ('365', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u5f00\\u542f\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-20 16:34:06');
INSERT INTO `sp_system_operation_log` VALUES ('366', '2', 'admin/ban_user/1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:34:21');
INSERT INTO `sp_system_operation_log` VALUES ('367', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u7981\\u7528\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-20 16:34:21');
INSERT INTO `sp_system_operation_log` VALUES ('368', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:34:27');
INSERT INTO `sp_system_operation_log` VALUES ('369', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"type\":\"0\"}', '2019-07-20 16:34:30');
INSERT INTO `sp_system_operation_log` VALUES ('370', '2', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:34:31');
INSERT INTO `sp_system_operation_log` VALUES ('371', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:34:34');
INSERT INTO `sp_system_operation_log` VALUES ('372', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:36:39');
INSERT INTO `sp_system_operation_log` VALUES ('373', '2', 'admin/ban_user/3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:37:03');
INSERT INTO `sp_system_operation_log` VALUES ('374', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u7981\\u7528\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-20 16:37:03');
INSERT INTO `sp_system_operation_log` VALUES ('375', '2', 'admin/no_ban_user/3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:37:13');
INSERT INTO `sp_system_operation_log` VALUES ('376', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u5f00\\u542f\\u7528\\u6237\\u6210\\u529f,\\u5f85\\u5ba1\\u6838\"}', '2019-07-20 16:37:13');
INSERT INTO `sp_system_operation_log` VALUES ('377', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:37:17');
INSERT INTO `sp_system_operation_log` VALUES ('378', '2', 'admin/examine_status/4/1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:37:20');
INSERT INTO `sp_system_operation_log` VALUES ('379', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u5ba1\\u6838\\u901a\\u8fc7\"}', '2019-07-20 16:37:21');
INSERT INTO `sp_system_operation_log` VALUES ('380', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:37:23');
INSERT INTO `sp_system_operation_log` VALUES ('381', '2', 'admin/ban_user/2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:37:27');
INSERT INTO `sp_system_operation_log` VALUES ('382', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u7981\\u7528\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-20 16:37:28');
INSERT INTO `sp_system_operation_log` VALUES ('383', '2', 'admin/ban_user/3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:37:37');
INSERT INTO `sp_system_operation_log` VALUES ('384', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u7981\\u7528\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-20 16:37:37');
INSERT INTO `sp_system_operation_log` VALUES ('385', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:37:42');
INSERT INTO `sp_system_operation_log` VALUES ('386', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:38:02');
INSERT INTO `sp_system_operation_log` VALUES ('387', '2', 'admin/edit_user_info/1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:39:59');
INSERT INTO `sp_system_operation_log` VALUES ('388', '2', 'admin/post_edit_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"id\":\"1\",\"username\":\"\\u7476(\\u603b\\u7ecf\\u7406)\",\"email\":\"admin@163.com\",\"password\":\"\",\"repPassword\":\"\",\"roleid\":[\"1\"]}', '2019-07-20 16:40:02');
INSERT INTO `sp_system_operation_log` VALUES ('389', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u7f16\\u8f91\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-20 16:40:02');
INSERT INTO `sp_system_operation_log` VALUES ('390', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:40:49');
INSERT INTO `sp_system_operation_log` VALUES ('391', '2', 'admin/examine_status/5/1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:40:52');
INSERT INTO `sp_system_operation_log` VALUES ('392', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u5ba1\\u6838\\u901a\\u8fc7\"}', '2019-07-20 16:40:53');
INSERT INTO `sp_system_operation_log` VALUES ('393', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"type\":\"0\"}', '2019-07-20 16:40:55');
INSERT INTO `sp_system_operation_log` VALUES ('394', '2', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:41:32');
INSERT INTO `sp_system_operation_log` VALUES ('395', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:41:33');
INSERT INTO `sp_system_operation_log` VALUES ('396', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:41:36');
INSERT INTO `sp_system_operation_log` VALUES ('397', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:41:38');
INSERT INTO `sp_system_operation_log` VALUES ('398', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:41:40');
INSERT INTO `sp_system_operation_log` VALUES ('399', '2', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"type\":\"1\"}', '2019-07-20 16:41:44');
INSERT INTO `sp_system_operation_log` VALUES ('400', '2', 'admin/system_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:41:48');
INSERT INTO `sp_system_operation_log` VALUES ('401', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:41:51');
INSERT INTO `sp_system_operation_log` VALUES ('402', '2', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:41:52');
INSERT INTO `sp_system_operation_log` VALUES ('403', '2', 'admin/edit_role_authority/7', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:41:54');
INSERT INTO `sp_system_operation_log` VALUES ('404', '2', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:42:03');
INSERT INTO `sp_system_operation_log` VALUES ('405', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:42:08');
INSERT INTO `sp_system_operation_log` VALUES ('406', '2', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:42:16');
INSERT INTO `sp_system_operation_log` VALUES ('407', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:42:21');
INSERT INTO `sp_system_operation_log` VALUES ('408', '2', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:42:22');
INSERT INTO `sp_system_operation_log` VALUES ('409', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:42:24');
INSERT INTO `sp_system_operation_log` VALUES ('410', '2', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:42:30');
INSERT INTO `sp_system_operation_log` VALUES ('411', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:44:26');
INSERT INTO `sp_system_operation_log` VALUES ('412', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:54:08');
INSERT INTO `sp_system_operation_log` VALUES ('413', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:54:49');
INSERT INTO `sp_system_operation_log` VALUES ('414', '2', 'home', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:54:53');
INSERT INTO `sp_system_operation_log` VALUES ('415', '2', 'home', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:55:57');
INSERT INTO `sp_system_operation_log` VALUES ('416', '2', 'home', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:56:08');
INSERT INTO `sp_system_operation_log` VALUES ('417', '2', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:56:11');
INSERT INTO `sp_system_operation_log` VALUES ('418', '2', 'project/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:56:14');
INSERT INTO `sp_system_operation_log` VALUES ('419', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:56:16');
INSERT INTO `sp_system_operation_log` VALUES ('420', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:57:36');
INSERT INTO `sp_system_operation_log` VALUES ('421', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:57:47');
INSERT INTO `sp_system_operation_log` VALUES ('422', '2', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:57:56');
INSERT INTO `sp_system_operation_log` VALUES ('423', '2', 'admin/edit_role_authority/2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:58:01');
INSERT INTO `sp_system_operation_log` VALUES ('424', '2', 'admin/post_role_authority/2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"auth_id\":[\"10\",\"1001\",\"100101\",\"100102\",\"100103\",\"100105\",\"1002\",\"100201\",\"100202\",\"100203\",\"100204\",\"100205\",\"1003\",\"100301\",\"100302\",\"100303\",\"1004\",\"100401\"]}', '2019-07-20 16:58:19');
INSERT INTO `sp_system_operation_log` VALUES ('425', '2', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u89d2\\u8272\\u5206\\u914d\\u6743\\u9650\\u6210\\u529f\"}', '2019-07-20 16:58:20');
INSERT INTO `sp_system_operation_log` VALUES ('426', '2', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:58:24');
INSERT INTO `sp_system_operation_log` VALUES ('427', '2', 'admin/post_role_authority/5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"auth_id\":{\"19\":\"15\",\"20\":\"1501\",\"21\":\"1502\",\"22\":\"150201\",\"23\":\"150202\",\"24\":\"150203\",\"25\":\"1503\",\"26\":\"150301\",\"27\":\"150302\",\"28\":\"150303\",\"29\":\"150304\",\"30\":\"1504\",\"31\":\"150401\",\"32\":\"150402\",\"33\":\"150403\",\"34\":\"1505\",\"35\":\"150501\",\"36\":\"150502\",\"64\":\"35\",\"65\":\"3501\",\"66\":\"350101\",\"67\":\"350102\",\"68\":\"350103\",\"69\":\"350104\",\"70\":\"3502\"},\"manage_id\":{\"4\":\"35\",\"5\":\"3501\",\"6\":\"3502\",\"7\":\"3503\",\"8\":\"3504\",\"9\":\"3505\",\"10\":\"3506\",\"11\":\"3507\"}}', '2019-07-20 16:58:36');
INSERT INTO `sp_system_operation_log` VALUES ('428', '2', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u89d2\\u8272\\u5206\\u914d\\u6743\\u9650\\u6210\\u529f\"}', '2019-07-20 16:58:36');
INSERT INTO `sp_system_operation_log` VALUES ('429', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:58:41');
INSERT INTO `sp_system_operation_log` VALUES ('430', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:58:45');
INSERT INTO `sp_system_operation_log` VALUES ('431', '2', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:58:52');
INSERT INTO `sp_system_operation_log` VALUES ('432', '2', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:58:54');
INSERT INTO `sp_system_operation_log` VALUES ('433', '2', 'admin/post_role_authority/5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"auth_id\":{\"64\":\"35\",\"65\":\"3501\",\"66\":\"350101\",\"67\":\"350102\",\"68\":\"350103\",\"69\":\"350104\",\"70\":\"3502\"},\"manage_id\":{\"4\":\"35\",\"5\":\"3501\",\"6\":\"3502\",\"7\":\"3503\",\"8\":\"3504\",\"9\":\"3505\",\"10\":\"3506\",\"11\":\"3507\"}}', '2019-07-20 16:59:05');
INSERT INTO `sp_system_operation_log` VALUES ('434', '2', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u89d2\\u8272\\u5206\\u914d\\u6743\\u9650\\u6210\\u529f\"}', '2019-07-20 16:59:05');
INSERT INTO `sp_system_operation_log` VALUES ('435', '2', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:59:07');
INSERT INTO `sp_system_operation_log` VALUES ('436', '2', 'admin/post_role_authority/5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"auth_id\":{\"0\":\"10\",\"1\":\"1001\",\"2\":\"100101\",\"3\":\"100102\",\"4\":\"100103\",\"5\":\"100105\",\"6\":\"1002\",\"7\":\"100201\",\"8\":\"100202\",\"9\":\"100203\",\"10\":\"100204\",\"11\":\"100205\",\"12\":\"1003\",\"13\":\"100301\",\"14\":\"100302\",\"15\":\"100303\",\"16\":\"1004\",\"17\":\"100401\",\"18\":\"1005\",\"19\":\"15\",\"20\":\"1501\",\"21\":\"1502\",\"22\":\"150201\",\"23\":\"150202\",\"24\":\"150203\",\"25\":\"1503\",\"26\":\"150301\",\"27\":\"150302\",\"28\":\"150303\",\"29\":\"150304\",\"30\":\"1504\",\"31\":\"150401\",\"32\":\"150402\",\"33\":\"150403\",\"34\":\"1505\",\"35\":\"150501\",\"36\":\"150502\",\"64\":\"35\",\"65\":\"3501\",\"66\":\"350101\",\"67\":\"350102\",\"68\":\"350103\",\"69\":\"350104\",\"70\":\"3502\"},\"manage_id\":[\"15\",\"20\",\"25\",\"30\",\"35\",\"3501\",\"3502\",\"3503\",\"3504\",\"3505\",\"3506\",\"3507\"]}', '2019-07-20 16:59:11');
INSERT INTO `sp_system_operation_log` VALUES ('437', '2', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u89d2\\u8272\\u5206\\u914d\\u6743\\u9650\\u6210\\u529f\"}', '2019-07-20 16:59:12');
INSERT INTO `sp_system_operation_log` VALUES ('438', '2', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 16:59:30');
INSERT INTO `sp_system_operation_log` VALUES ('439', '2', 'admin/post_role_authority/5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"auth_id\":{\"64\":\"35\",\"65\":\"3501\",\"66\":\"350101\",\"67\":\"350102\",\"68\":\"350103\",\"69\":\"350104\",\"70\":\"3502\"},\"manage_id\":{\"4\":\"35\",\"5\":\"3501\",\"6\":\"3502\",\"7\":\"3503\",\"8\":\"3504\",\"9\":\"3505\",\"10\":\"3506\",\"11\":\"3507\"}}', '2019-07-20 17:00:29');
INSERT INTO `sp_system_operation_log` VALUES ('440', '2', 'admin/post_role_authority/5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"auth_id\":{\"64\":\"35\",\"65\":\"3501\",\"66\":\"350101\",\"67\":\"350102\",\"68\":\"350103\",\"69\":\"350104\",\"70\":\"3502\"},\"manage_id\":{\"4\":\"35\",\"5\":\"3501\",\"6\":\"3502\",\"7\":\"3503\",\"8\":\"3504\",\"9\":\"3505\",\"10\":\"3506\",\"11\":\"3507\"}}', '2019-07-20 17:01:09');
INSERT INTO `sp_system_operation_log` VALUES ('441', '2', 'admin/post_role_authority/5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"auth_id\":{\"0\":\"10\",\"1\":\"1001\",\"2\":\"100101\",\"3\":\"100102\",\"4\":\"100103\",\"5\":\"100105\",\"6\":\"1002\",\"7\":\"100201\",\"8\":\"100202\",\"9\":\"100203\",\"10\":\"100204\",\"11\":\"100205\",\"12\":\"1003\",\"13\":\"100301\",\"14\":\"100302\",\"15\":\"100303\",\"16\":\"1004\",\"17\":\"100401\",\"18\":\"1005\",\"19\":\"15\",\"20\":\"1501\",\"21\":\"1502\",\"22\":\"150201\",\"23\":\"150202\",\"24\":\"150203\",\"25\":\"1503\",\"26\":\"150301\",\"27\":\"150302\",\"28\":\"150303\",\"29\":\"150304\",\"30\":\"1504\",\"31\":\"150401\",\"32\":\"150402\",\"33\":\"150403\",\"34\":\"1505\",\"35\":\"150501\",\"36\":\"150502\",\"64\":\"35\",\"65\":\"3501\",\"66\":\"350101\",\"67\":\"350102\",\"68\":\"350103\",\"69\":\"350104\",\"70\":\"3502\"},\"manage_id\":[\"15\",\"20\",\"25\",\"30\",\"35\",\"3501\",\"3502\",\"3503\",\"3504\",\"3505\",\"3506\",\"3507\"]}', '2019-07-20 17:01:36');
INSERT INTO `sp_system_operation_log` VALUES ('442', '2', 'admin/post_role_authority/5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"auth_id\":{\"0\":\"10\",\"1\":\"1001\",\"2\":\"100101\",\"3\":\"100102\",\"4\":\"100103\",\"5\":\"100105\",\"6\":\"1002\",\"7\":\"100201\",\"8\":\"100202\",\"9\":\"100203\",\"10\":\"100204\",\"11\":\"100205\",\"12\":\"1003\",\"13\":\"100301\",\"14\":\"100302\",\"15\":\"100303\",\"16\":\"1004\",\"17\":\"100401\",\"18\":\"1005\",\"19\":\"15\",\"20\":\"1501\",\"21\":\"1502\",\"22\":\"150201\",\"23\":\"150202\",\"24\":\"150203\",\"25\":\"1503\",\"26\":\"150301\",\"27\":\"150302\",\"28\":\"150303\",\"29\":\"150304\",\"30\":\"1504\",\"31\":\"150401\",\"32\":\"150402\",\"33\":\"150403\",\"34\":\"1505\",\"35\":\"150501\",\"36\":\"150502\",\"64\":\"35\",\"65\":\"3501\",\"66\":\"350101\",\"67\":\"350102\",\"68\":\"350103\",\"69\":\"350104\",\"70\":\"3502\"},\"manage_id\":[\"15\",\"20\",\"25\",\"30\",\"35\",\"3501\",\"3502\",\"3503\",\"3504\",\"3505\",\"3506\",\"3507\"]}', '2019-07-20 17:02:24');
INSERT INTO `sp_system_operation_log` VALUES ('443', '2', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u89d2\\u8272\\u5206\\u914d\\u6743\\u9650\\u6210\\u529f\"}', '2019-07-20 17:02:24');
INSERT INTO `sp_system_operation_log` VALUES ('444', '2', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 17:02:27');
INSERT INTO `sp_system_operation_log` VALUES ('445', '2', 'admin/post_role_authority/5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"auth_id\":{\"0\":\"10\",\"1\":\"1001\",\"2\":\"100101\",\"3\":\"100102\",\"4\":\"100103\",\"5\":\"100105\",\"6\":\"1002\",\"7\":\"100201\",\"8\":\"100202\",\"9\":\"100203\",\"10\":\"100204\",\"11\":\"100205\",\"12\":\"1003\",\"13\":\"100301\",\"14\":\"100302\",\"15\":\"100303\",\"16\":\"1004\",\"17\":\"100401\",\"18\":\"1005\",\"19\":\"15\",\"20\":\"1501\",\"21\":\"1502\",\"22\":\"150201\",\"23\":\"150202\",\"24\":\"150203\",\"25\":\"1503\",\"26\":\"150301\",\"27\":\"150302\",\"28\":\"150303\",\"29\":\"150304\",\"30\":\"1504\",\"31\":\"150401\",\"32\":\"150402\",\"33\":\"150403\",\"34\":\"1505\",\"35\":\"150501\",\"36\":\"150502\",\"64\":\"35\",\"65\":\"3501\",\"66\":\"350101\",\"67\":\"350102\",\"68\":\"350103\",\"69\":\"350104\",\"70\":\"3502\"},\"manage_id\":{\"4\":\"35\",\"5\":\"3501\",\"6\":\"3502\",\"7\":\"3503\",\"8\":\"3504\",\"9\":\"3505\",\"10\":\"3506\",\"11\":\"3507\"}}', '2019-07-20 17:02:35');
INSERT INTO `sp_system_operation_log` VALUES ('446', '2', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u89d2\\u8272\\u5206\\u914d\\u6743\\u9650\\u6210\\u529f\"}', '2019-07-20 17:02:35');
INSERT INTO `sp_system_operation_log` VALUES ('447', '2', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 17:02:39');
INSERT INTO `sp_system_operation_log` VALUES ('448', '2', 'admin/post_role_authority/5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"auth_id\":{\"64\":\"35\",\"65\":\"3501\",\"66\":\"350101\",\"67\":\"350102\",\"68\":\"350103\",\"69\":\"350104\",\"70\":\"3502\"},\"manage_id\":{\"4\":\"35\",\"5\":\"3501\",\"6\":\"3502\",\"7\":\"3503\",\"8\":\"3504\",\"9\":\"3505\",\"10\":\"3506\",\"11\":\"3507\"}}', '2019-07-20 17:03:32');
INSERT INTO `sp_system_operation_log` VALUES ('449', '2', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u89d2\\u8272\\u5206\\u914d\\u6743\\u9650\\u6210\\u529f\"}', '2019-07-20 17:03:32');
INSERT INTO `sp_system_operation_log` VALUES ('450', '2', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u89d2\\u8272\\u5206\\u914d\\u6743\\u9650\\u6210\\u529f\"}', '2019-07-20 17:06:16');
INSERT INTO `sp_system_operation_log` VALUES ('451', '2', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 17:06:19');
INSERT INTO `sp_system_operation_log` VALUES ('452', '2', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 17:06:24');
INSERT INTO `sp_system_operation_log` VALUES ('453', '2', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 17:07:12');
INSERT INTO `sp_system_operation_log` VALUES ('454', '2', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 17:07:38');
INSERT INTO `sp_system_operation_log` VALUES ('455', '2', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 17:07:40');
INSERT INTO `sp_system_operation_log` VALUES ('456', '2', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 17:07:40');
INSERT INTO `sp_system_operation_log` VALUES ('457', '2', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 17:09:32');
INSERT INTO `sp_system_operation_log` VALUES ('458', '2', 'admin/post_role_authority/5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"auth_id\":{\"64\":\"35\",\"65\":\"3501\",\"66\":\"350101\",\"67\":\"350102\",\"68\":\"350103\",\"69\":\"350104\",\"70\":\"3502\"},\"manage_id\":{\"4\":\"35\",\"5\":\"3501\",\"6\":\"3502\",\"7\":\"3503\",\"8\":\"3504\",\"9\":\"3505\",\"10\":\"3506\",\"11\":\"3507\"}}', '2019-07-20 17:09:40');
INSERT INTO `sp_system_operation_log` VALUES ('459', '2', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u89d2\\u8272\\u5206\\u914d\\u6743\\u9650\\u6210\\u529f\"}', '2019-07-20 17:09:41');
INSERT INTO `sp_system_operation_log` VALUES ('460', '2', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 17:09:44');
INSERT INTO `sp_system_operation_log` VALUES ('461', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 17:09:56');
INSERT INTO `sp_system_operation_log` VALUES ('462', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 17:09:58');
INSERT INTO `sp_system_operation_log` VALUES ('463', '2', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 17:10:02');
INSERT INTO `sp_system_operation_log` VALUES ('464', '2', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 17:10:06');
INSERT INTO `sp_system_operation_log` VALUES ('465', '2', 'admin/post_role_authority/5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"auth_id\":{\"19\":\"15\",\"20\":\"1501\",\"21\":\"1502\",\"22\":\"150201\",\"23\":\"150202\",\"24\":\"150203\",\"25\":\"1503\",\"26\":\"150301\",\"27\":\"150302\",\"28\":\"150303\",\"29\":\"150304\",\"30\":\"1504\",\"31\":\"150401\",\"32\":\"150402\",\"33\":\"150403\",\"34\":\"1505\",\"35\":\"150501\",\"36\":\"150502\",\"64\":\"35\",\"65\":\"3501\",\"66\":\"350101\",\"67\":\"350102\",\"68\":\"350103\",\"69\":\"350104\",\"70\":\"3502\"},\"manage_id\":{\"4\":\"35\",\"5\":\"3501\",\"6\":\"3502\",\"7\":\"3503\",\"8\":\"3504\",\"9\":\"3505\",\"10\":\"3506\",\"11\":\"3507\"}}', '2019-07-20 17:10:10');
INSERT INTO `sp_system_operation_log` VALUES ('466', '2', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u89d2\\u8272\\u5206\\u914d\\u6743\\u9650\\u6210\\u529f\"}', '2019-07-20 17:10:11');
INSERT INTO `sp_system_operation_log` VALUES ('467', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 17:10:13');
INSERT INTO `sp_system_operation_log` VALUES ('468', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 17:12:00');
INSERT INTO `sp_system_operation_log` VALUES ('469', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 17:15:09');
INSERT INTO `sp_system_operation_log` VALUES ('470', '2', 'architectural/edit_architect/6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 17:15:11');
INSERT INTO `sp_system_operation_log` VALUES ('471', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"2\",\"notice\":\"\\u4ec5\\u6709\\u521b\\u5efa\\u7528\\u6237\\u624d\\u80fd\\u7f16\\u8f91\"}', '2019-07-20 17:15:11');
INSERT INTO `sp_system_operation_log` VALUES ('472', '2', 'architectural/edit_architect/6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 17:15:19');
INSERT INTO `sp_system_operation_log` VALUES ('473', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"2\",\"notice\":\"\\u4ec5\\u6709\\u521b\\u5efa\\u7528\\u6237\\u624d\\u80fd\\u7f16\\u8f91\"}', '2019-07-20 17:15:19');
INSERT INTO `sp_system_operation_log` VALUES ('474', '2', 'architectural/edit_architect/6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 17:16:28');
INSERT INTO `sp_system_operation_log` VALUES ('475', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"2\",\"notice\":\"\\u4ec5\\u6709\\u521b\\u5efa\\u7528\\u6237\\u624d\\u80fd\\u7f16\\u8f91\"}', '2019-07-20 17:16:28');
INSERT INTO `sp_system_operation_log` VALUES ('476', '2', 'architectural/edit_architect/6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 17:17:14');
INSERT INTO `sp_system_operation_log` VALUES ('477', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"2\",\"notice\":\"\\u4ec5\\u6709\\u521b\\u5efa\\u7528\\u6237\\u624d\\u80fd\\u7f16\\u8f91\"}', '2019-07-20 17:17:14');
INSERT INTO `sp_system_operation_log` VALUES ('478', '2', 'architectural/edit_architect/6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 17:18:19');
INSERT INTO `sp_system_operation_log` VALUES ('479', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"2\",\"notice\":\"\\u4ec5\\u6709\\u521b\\u5efa\\u7528\\u6237\\u624d\\u80fd\\u7f16\\u8f91\"}', '2019-07-20 17:18:20');
INSERT INTO `sp_system_operation_log` VALUES ('480', '2', 'architectural/edit_architect/6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 17:18:21');
INSERT INTO `sp_system_operation_log` VALUES ('481', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"2\",\"notice\":\"\\u4ec5\\u6709\\u521b\\u5efa\\u7528\\u6237\\u624d\\u80fd\\u7f16\\u8f91\"}', '2019-07-20 17:18:22');
INSERT INTO `sp_system_operation_log` VALUES ('482', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 17:18:25');
INSERT INTO `sp_system_operation_log` VALUES ('483', '2', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 17:18:29');
INSERT INTO `sp_system_operation_log` VALUES ('484', '2', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 17:18:34');
INSERT INTO `sp_system_operation_log` VALUES ('485', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 17:19:50');
INSERT INTO `sp_system_operation_log` VALUES ('486', '2', 'architectural/edit_architect/6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 17:19:52');
INSERT INTO `sp_system_operation_log` VALUES ('487', '2', 'architectural/edit_architect/6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 17:20:37');
INSERT INTO `sp_system_operation_log` VALUES ('488', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 17:20:56');
INSERT INTO `sp_system_operation_log` VALUES ('489', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\"}', '2019-07-20 17:21:37');
INSERT INTO `sp_system_operation_log` VALUES ('490', '2', 'architectural/edit_architect/6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 17:21:54');
INSERT INTO `sp_system_operation_log` VALUES ('491', '0', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 19:24:42');
INSERT INTO `sp_system_operation_log` VALUES ('492', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 19:24:44');
INSERT INTO `sp_system_operation_log` VALUES ('493', '2', 'architectural/add_architect', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 19:24:58');
INSERT INTO `sp_system_operation_log` VALUES ('494', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 19:25:36');
INSERT INTO `sp_system_operation_log` VALUES ('495', '2', 'architectural/architect_detail/6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 19:25:38');
INSERT INTO `sp_system_operation_log` VALUES ('496', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"2\",\"notice\":\"\\u4ec5\\u6709\\u521b\\u5efa\\u7528\\u6237\\u548c\\u7ba1\\u7406\\u5458\\u624d\\u80fd\\u67e5\\u770b\"}', '2019-07-20 19:25:38');
INSERT INTO `sp_system_operation_log` VALUES ('497', '2', 'architectural/architect_detail/6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 19:25:47');
INSERT INTO `sp_system_operation_log` VALUES ('498', '2', 'architectural/edit_architect/6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 19:25:51');
INSERT INTO `sp_system_operation_log` VALUES ('499', '2', 'architectural/post_edit_architect', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"id\":\"6\",\"system_name\":\"\\u57fa\\u7840\\u7cfb\\u7edf\",\"engineering_name\":\"\\u57fa\\u7840\\u5de5\\u7a0b\",\"system_code\":\"1001\",\"status\":\"1\",\"sub_id\":[\"2\",\"3\",\"4\",\"8\"],\"sub_system_name\":[\"\\u57fa\\u7840\\u7cfb\\u7edf\\uff08\\u6df7\\u51dd\\u571f\\u6761\\u5f62\\u57fa\\u7840\\uff09\",\"\\u57fa\\u7840\\u7cfb\\u7edf\\uff08\\u6df7\\u51dd\\u571f\\u6784\\u9020\\u67f1\\u5708\\u6881\\uff09\",\"\\u57fa\\u7840\\u7cfb\\u7edf\\uff08\\u6df7\\u51dd\\u571f\\u7b4f\\u677f\\u57fa\\u7840\\uff09\",\"\\u6d4b\\u8bd5\"],\"sub_system_code\":[\"1001-1\",\"1001-2\",\"1001-03\",\"1100\"],\"work_code\":[\"GK_JC_01\",\"GK_JC_02\",\"GK_JC_03\",\" GJ\"],\"sub_status\":[\"0\",\"1\",\"1\",\"1\"],\"sort\":[\"1\",\"2\",\"3\",\"7\"]}', '2019-07-20 19:25:54');
INSERT INTO `sp_system_operation_log` VALUES ('500', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u521b\\u5efa\\u5efa\\u7b51\\u7cfb\\u7edf\\u6210\\u529f\"}', '2019-07-20 19:25:54');
INSERT INTO `sp_system_operation_log` VALUES ('501', '2', 'architectural/edit_architect/6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 19:25:59');
INSERT INTO `sp_system_operation_log` VALUES ('502', '2', 'architectural/edit_architect/7', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 19:26:09');
INSERT INTO `sp_system_operation_log` VALUES ('503', '2', 'architectural/post_edit_architect', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"id\":\"7\",\"system_name\":\"\\u7cfb\\u7edf\\u5de5\\u7a0b\",\"engineering_name\":\"\\u5de5\\u7a0b\",\"system_code\":\"1002\",\"status\":\"1\",\"sub_id\":[\"5\",\"9\"],\"sub_system_name\":[\"\\u57fa\\u7840\\u7cfb\\u7edf\\uff08\\u6df7\\u51dd\\u571f\\u6784\\u9020\\u67f1\\u5708\\u6881\\uff09\",\"\\u7cfb\\u7edf\\u5de5\\u7a0b\\u5b50\\u7cfb\\u7edf\"],\"sub_system_code\":[\"100201\",\"100202\"],\"work_code\":[\"GK_JF_02\",\"GK_JF-03\"],\"sub_status\":[\"1\",\"1\"],\"sort\":[\"1\",\"2\"]}', '2019-07-20 19:26:11');
INSERT INTO `sp_system_operation_log` VALUES ('504', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u521b\\u5efa\\u5efa\\u7b51\\u7cfb\\u7edf\\u6210\\u529f\"}', '2019-07-20 19:26:11');
INSERT INTO `sp_system_operation_log` VALUES ('505', '2', 'architectural/edit_architect/8', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 19:28:08');
INSERT INTO `sp_system_operation_log` VALUES ('506', '2', 'architectural/post_edit_architect', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"id\":\"8\",\"system_name\":\"\\u5916\\u5899\\u7cfb\\u7edf\",\"engineering_name\":\"\\u5899\\u4f53\\u5de5\\u7a0b\",\"system_code\":\"1003\",\"status\":\"1\",\"sub_id\":[\"6\",\"7\"],\"sub_system_name\":[\"\\u5916\\u5899\\u7cfb\\u7edf\",\"\\u5916\\u5899\\u7cfb\\u7edf\"],\"sub_system_code\":[\"1003-1\",\"1003-2\"],\"work_code\":[\"WQ-XT-01\",\"WQ-XT-2\"],\"sub_status\":[\"1\",\"1\"],\"sort\":[\"1\",\"2\"]}', '2019-07-20 19:28:11');
INSERT INTO `sp_system_operation_log` VALUES ('507', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u521b\\u5efa\\u5efa\\u7b51\\u7cfb\\u7edf\\u6210\\u529f\"}', '2019-07-20 19:28:11');
INSERT INTO `sp_system_operation_log` VALUES ('508', '2', 'architectural/edit_architect/8', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 19:28:36');
INSERT INTO `sp_system_operation_log` VALUES ('509', '2', 'architectural/post_edit_architect', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"id\":\"8\",\"system_name\":\"\\u5916\\u5899\\u7cfb\\u7edf\",\"engineering_name\":\"\\u5899\\u4f53\\u5de5\\u7a0b\",\"system_code\":\"1003\",\"status\":\"1\",\"sub_id\":[\"6\",\"7\",\"0\"],\"sub_system_name\":[\"\\u5916\\u5899\\u7cfb\\u7edf\",\"\\u5916\\u5899\\u7cfb\\u7edf\",\"\\u5916\\u5899\\u7cfb\\u7edf2\"],\"sub_system_code\":[\"1003-1\",\"1003-2\",\"1003-3\"],\"work_code\":[\"WQ-XT-01\",\"WQ-XT-2\",\"WQ-xt_3\"],\"sub_status\":[\"1\",\"1\",\"1\"],\"sort\":[\"1\",\"2\",\"WQ-xt_33\"]}', '2019-07-20 19:29:06');
INSERT INTO `sp_system_operation_log` VALUES ('510', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u521b\\u5efa\\u5efa\\u7b51\\u7cfb\\u7edf\\u6210\\u529f\"}', '2019-07-20 19:29:06');
INSERT INTO `sp_system_operation_log` VALUES ('511', '2', 'architectural/architect_detail/8', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 19:29:10');
INSERT INTO `sp_system_operation_log` VALUES ('512', '2', 'architectural/edit_architect/8', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 19:29:20');
INSERT INTO `sp_system_operation_log` VALUES ('513', '2', 'architectural/post_edit_architect', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"id\":\"8\",\"system_name\":\"\\u5916\\u5899\\u7cfb\\u7edf\",\"engineering_name\":\"\\u5899\\u4f53\\u5de5\\u7a0b\",\"system_code\":\"1003\",\"status\":\"1\",\"sub_id\":[\"6\",\"7\",\"16\"],\"sub_system_name\":[\"\\u5916\\u5899\\u7cfb\\u7edf\",\"\\u5916\\u5899\\u7cfb\\u7edf\",\"\\u5916\\u5899\\u7cfb\\u7edf2\"],\"sub_system_code\":[\"1003-1\",\"1003-2\",\"1003-3\"],\"work_code\":[\"WQ-XT-01\",\"WQ-XT-2\",\"WQ-xt_3\"],\"sub_status\":[\"1\",\"1\",\"1\"],\"sort\":[\"1\",\"2\",\"3\"]}', '2019-07-20 19:29:24');
INSERT INTO `sp_system_operation_log` VALUES ('514', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u521b\\u5efa\\u5efa\\u7b51\\u7cfb\\u7edf\\u6210\\u529f\"}', '2019-07-20 19:29:24');
INSERT INTO `sp_system_operation_log` VALUES ('515', '2', 'architectural/edit_architect/8', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 19:29:27');
INSERT INTO `sp_system_operation_log` VALUES ('516', '2', 'architectural/post_edit_architect', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"id\":\"8\",\"system_name\":\"\\u5916\\u5899\\u7cfb\\u7edf\",\"engineering_name\":\"\\u5899\\u4f53\\u5de5\\u7a0b\",\"system_code\":\"1003\",\"status\":\"1\",\"sub_id\":[\"6\",\"7\",\"16\",\"0\"],\"sub_system_name\":[\"\\u5916\\u5899\\u7cfb\\u7edf\",\"\\u5916\\u5899\\u7cfb\\u7edf\",\"\\u5916\\u5899\\u7cfb\\u7edf2\",\"\\u5916\\u5899\\u7cfb\\u7edf2\"],\"sub_system_code\":[\"1003-1\",\"1003-2\",\"1003-3\",\"1003-3\"],\"work_code\":[\"WQ-XT-01\",\"WQ-XT-2\",\"WQ-xt_3\",\"WQ-xt_3\"],\"sub_status\":[\"1\",\"1\",\"1\",\"1\"],\"sort\":[\"1\",\"2\",\"3\",\"4\"]}', '2019-07-20 19:29:46');
INSERT INTO `sp_system_operation_log` VALUES ('517', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u521b\\u5efa\\u5efa\\u7b51\\u7cfb\\u7edf\\u6210\\u529f\"}', '2019-07-20 19:29:46');
INSERT INTO `sp_system_operation_log` VALUES ('518', '2', 'architectural/edit_architect/8', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 19:29:53');
INSERT INTO `sp_system_operation_log` VALUES ('519', '2', 'architectural/architect_detail/8', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 19:29:59');
INSERT INTO `sp_system_operation_log` VALUES ('520', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 19:30:05');
INSERT INTO `sp_system_operation_log` VALUES ('521', '2', 'architectural/edit_architect_status/8/0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 19:30:12');
INSERT INTO `sp_system_operation_log` VALUES ('522', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"2\",\"notice\":\"\\u4ec5\\u6709\\u521b\\u5efa\\u7528\\u6237\\u624d\\u80fd\\u66f4\\u6539\\u72b6\\u6001\"}', '2019-07-20 19:30:12');
INSERT INTO `sp_system_operation_log` VALUES ('523', '2', 'architectural/edit_architect_status/14/0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 19:32:59');
INSERT INTO `sp_system_operation_log` VALUES ('524', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 19:32:59');
INSERT INTO `sp_system_operation_log` VALUES ('525', '2', 'architectural/edit_architect_status/14/1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 19:33:05');
INSERT INTO `sp_system_operation_log` VALUES ('526', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 19:33:05');
INSERT INTO `sp_system_operation_log` VALUES ('527', '2', 'architectural/edit_architect_status/14/0', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 19:33:07');
INSERT INTO `sp_system_operation_log` VALUES ('528', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 19:33:07');
INSERT INTO `sp_system_operation_log` VALUES ('529', '2', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 19:33:19');
INSERT INTO `sp_system_operation_log` VALUES ('530', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 19:33:25');
INSERT INTO `sp_system_operation_log` VALUES ('531', '2', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 19:40:19');
INSERT INTO `sp_system_operation_log` VALUES ('532', '2', 'architectural/material_detail/2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 19:40:43');
INSERT INTO `sp_system_operation_log` VALUES ('533', '2', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 20:51:37');
INSERT INTO `sp_system_operation_log` VALUES ('534', '2', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 20:52:56');
INSERT INTO `sp_system_operation_log` VALUES ('535', '2', 'architectural/edit_material/2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 20:53:00');
INSERT INTO `sp_system_operation_log` VALUES ('536', '2', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 20:53:02');
INSERT INTO `sp_system_operation_log` VALUES ('537', '2', 'architectural/material_detail/2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 20:53:31');
INSERT INTO `sp_system_operation_log` VALUES ('538', '2', 'architectural/material_detail/2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 20:53:39');
INSERT INTO `sp_system_operation_log` VALUES ('539', '2', 'architectural/edit_material/2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 20:59:56');
INSERT INTO `sp_system_operation_log` VALUES ('540', '2', 'architectural/post_edit_material/2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"material_id\":[\"2\",\"1\"],\"material_name\":[\"\\u7b2c\\u4e8c\\u884c\",\"\\u554a\"],\"material_code\":[\"\\u7f16\\u7801\",\"\\u662f\"],\"material_type\":[\"\\u662f\",\"\\u7684\"],\"position\":[\"\\u4f4d\\u7f6e\",\"\\u5426\"],\"purpose\":[\"\\u7528\\u9014\",\"\\u4e2a\"],\"material_number\":[\"\\u4ee3\\u7801\",\"\\u963f\\u65af\\u987f\\u53d1\\u9001\\u5230\"],\"characteristic\":[\"\\u8981\",\"\\u554a\"],\"waste_rate\":[\"11231\",\"12.312\"],\"sort\":[\"2\",\"11\"],\"status\":[\"1\",\"1\"]}', '2019-07-20 20:59:58');
INSERT INTO `sp_system_operation_log` VALUES ('541', '2', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u7f16\\u8f91\\u5173\\u8054\\u6750\\u6599\\u6210\\u529f\"}', '2019-07-20 20:59:58');
INSERT INTO `sp_system_operation_log` VALUES ('542', '2', 'architectural/edit_material/2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:01:01');
INSERT INTO `sp_system_operation_log` VALUES ('543', '2', 'architectural/post_edit_material/2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"material_id\":[\"2\",\"1\"],\"material_name\":[\"\\u7b2c\\u4e8c\\u884c\",\"\\u554a\"],\"material_code\":[\"\\u7f16\\u7801\",\"\\u662f\"],\"material_type\":[\"\\u662f\",\"\\u7684\"],\"position\":[\"\\u4f4d\\u7f6e\",\"\\u5426\"],\"purpose\":[\"\\u7528\\u9014\",\"\\u4e2a\"],\"material_number\":[\"\\u4ee3\\u7801\",\"\\u963f\\u65af\\u987f\\u53d1\\u9001\\u5230\"],\"characteristic\":[\"\\u8981\",\"\\u554a\"],\"waste_rate\":[\"11231\",\"12.312\"],\"sort\":[\"2\",\"11\"],\"status\":[\"0\",\"1\"]}', '2019-07-20 21:01:13');
INSERT INTO `sp_system_operation_log` VALUES ('544', '2', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u7f16\\u8f91\\u5173\\u8054\\u6750\\u6599\\u6210\\u529f\"}', '2019-07-20 21:01:14');
INSERT INTO `sp_system_operation_log` VALUES ('545', '2', 'architectural/edit_material/2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:02:34');
INSERT INTO `sp_system_operation_log` VALUES ('546', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:11:04');
INSERT INTO `sp_system_operation_log` VALUES ('547', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:14:38');
INSERT INTO `sp_system_operation_log` VALUES ('548', '2', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:14:42');
INSERT INTO `sp_system_operation_log` VALUES ('549', '2', 'architectural/edit_material/2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:14:44');
INSERT INTO `sp_system_operation_log` VALUES ('550', '2', 'architectural/post_edit_material/2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"material_id\":[\"2\",\"1\",\"0\"],\"material_name\":[\"\\u7b2c\\u4e8c\\u884c\",\"\\u554a\",\"\\u65b0\\u6750\\u6599\"],\"material_code\":[\"\\u7f16\\u7801\",\"\\u662f\",\"\\u7f16\\u7801\"],\"material_type\":[\"\\u662f\",\"\\u7684\",\"\\u4e2d\\u8def\"],\"position\":[\"\\u4f4d\\u7f6e\",\"\\u5426\",\"\\u4f4d\\u7f6e\"],\"purpose\":[\"\\u7528\\u9014\",\"\\u4e2a\",\"\\u7528\\u6237\"],\"material_number\":[\"\\u4ee3\\u7801\",\"\\u963f\\u65af\\u987f\\u53d1\\u9001\\u5230\",\"\\u4ee3\\u7801 \"],\"characteristic\":[\"\\u8981\",\"\\u554a\",\"\\u662f\\u7231\\u4e0a\\u4e86\\u5bf9\\u65b9\"],\"waste_rate\":[\"11231\",\"12.312\",\"11\"],\"sort\":[\"2\",\"11\",\"12\"],\"status\":[\"0\",\"1\",\"1\"]}', '2019-07-20 21:24:36');
INSERT INTO `sp_system_operation_log` VALUES ('551', '2', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u7f16\\u8f91\\u5173\\u8054\\u6750\\u6599\\u6210\\u529f\"}', '2019-07-20 21:24:36');
INSERT INTO `sp_system_operation_log` VALUES ('552', '2', 'architectural/material_detail/2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:24:39');
INSERT INTO `sp_system_operation_log` VALUES ('553', '2', 'architectural/edit_material/3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:27:23');
INSERT INTO `sp_system_operation_log` VALUES ('554', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:28:56');
INSERT INTO `sp_system_operation_log` VALUES ('555', '2', 'architectural/edit_architect/6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:28:58');
INSERT INTO `sp_system_operation_log` VALUES ('556', '2', 'architectural/post_edit_architect', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"id\":\"6\",\"system_name\":\"\\u57fa\\u7840\\u7cfb\\u7edf\",\"engineering_name\":\"\\u57fa\\u7840\\u5de5\\u7a0b\",\"system_code\":\"1001\",\"status\":\"1\",\"sub_id\":[\"2\",\"3\",\"4\",\"8\"],\"sub_system_name\":[\"\\u57fa\\u7840\\u7cfb\\u7edf\\uff08\\u6df7\\u51dd\\u571f\\u6761\\u5f62\\u57fa\\u7840\\uff09\",\"\\u57fa\\u7840\\u7cfb\\u7edf\\uff08\\u6df7\\u51dd\\u571f\\u6784\\u9020\\u67f1\\u5708\\u6881\\uff09\",\"\\u57fa\\u7840\\u7cfb\\u7edf\\uff08\\u6df7\\u51dd\\u571f\\u7b4f\\u677f\\u57fa\\u7840\\uff09\",\"\\u6d4b\\u8bd5\"],\"sub_system_code\":[\"1001-1\",\"1001-2\",\"1001-03\",\"1100\"],\"work_code\":[\"GK_JC_01\",\"GK_JC_02\",\"GK_JC_03\",\" GJ\"],\"sub_status\":[\"0\",\"1\",\"1\",\"1\"],\"sort\":[\"1\",\"2\",\"3\",\"7\"]}', '2019-07-20 21:29:00');
INSERT INTO `sp_system_operation_log` VALUES ('557', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u521b\\u5efa\\u5efa\\u7b51\\u7cfb\\u7edf\\u6210\\u529f\"}', '2019-07-20 21:29:01');
INSERT INTO `sp_system_operation_log` VALUES ('558', '2', 'architectural/edit_architect/6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:30:39');
INSERT INTO `sp_system_operation_log` VALUES ('559', '2', 'architectural/post_edit_architect', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"id\":\"6\",\"system_name\":\"\\u57fa\\u7840\\u7cfb\\u7edf\",\"engineering_name\":\"\\u57fa\\u7840\\u5de5\\u7a0b\",\"system_code\":\"1001\",\"status\":\"1\",\"sub_id\":[\"2\",\"3\",\"4\",\"8\"],\"sub_system_name\":[\"\\u57fa\\u7840\\u7cfb\\u7edf\\uff08\\u6df7\\u51dd\\u571f\\u6761\\u5f62\\u57fa\\u7840\\uff09\",\"\\u57fa\\u7840\\u7cfb\\u7edf\\uff08\\u6df7\\u51dd\\u571f\\u6784\\u9020\\u67f1\\u5708\\u6881\\uff09\",\"\\u57fa\\u7840\\u7cfb\\u7edf\\uff08\\u6df7\\u51dd\\u571f\\u7b4f\\u677f\\u57fa\\u7840\\uff09\",\"\\u6d4b\\u8bd5\"],\"sub_system_code\":[\"1001-1\",\"1001-2\",\"1001-03\",\"1100\"],\"work_code\":[\"GK_JC_01\",\"GK_JC_02\",\"GK_JC_03\",\" GJ\"],\"sub_status\":[\"0\",\"1\",\"1\",\"1\"],\"sort\":[\"1\",\"2\",\"3\",\"7\"]}', '2019-07-20 21:30:42');
INSERT INTO `sp_system_operation_log` VALUES ('560', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u521b\\u5efa\\u5efa\\u7b51\\u7cfb\\u7edf\\u6210\\u529f\"}', '2019-07-20 21:30:42');
INSERT INTO `sp_system_operation_log` VALUES ('561', '2', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:32:22');
INSERT INTO `sp_system_operation_log` VALUES ('562', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:32:26');
INSERT INTO `sp_system_operation_log` VALUES ('563', '2', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:32:28');
INSERT INTO `sp_system_operation_log` VALUES ('564', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:32:43');
INSERT INTO `sp_system_operation_log` VALUES ('565', '2', 'admin/edit_user_info/4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:32:47');
INSERT INTO `sp_system_operation_log` VALUES ('566', '2', 'admin/post_edit_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"id\":\"4\",\"username\":\"test\",\"email\":\"test@qq.com\",\"password\":\"123456\",\"repPassword\":\"123456\",\"roleid\":[\"5\"]}', '2019-07-20 21:33:02');
INSERT INTO `sp_system_operation_log` VALUES ('567', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u7f16\\u8f91\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-20 21:33:03');
INSERT INTO `sp_system_operation_log` VALUES ('568', '2', 'admin/edit_user_info/4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:33:16');
INSERT INTO `sp_system_operation_log` VALUES ('569', '2', 'admin/post_edit_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"id\":\"4\",\"username\":\"test\",\"email\":\"test@qq.com\",\"password\":\"123456\",\"repPassword\":\"\",\"roleid\":[\"3\"]}', '2019-07-20 21:33:27');
INSERT INTO `sp_system_operation_log` VALUES ('570', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u7f16\\u8f91\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-20 21:33:27');
INSERT INTO `sp_system_operation_log` VALUES ('571', '2', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:33:31');
INSERT INTO `sp_system_operation_log` VALUES ('572', '2', 'admin/edit_role_authority/3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:33:35');
INSERT INTO `sp_system_operation_log` VALUES ('573', '2', 'admin/post_role_authority/3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"auth_id\":{\"64\":\"35\",\"65\":\"3501\",\"66\":\"350101\",\"67\":\"350102\",\"68\":\"350103\",\"69\":\"350104\",\"70\":\"3502\",\"71\":\"350201\",\"72\":\"350202\"}}', '2019-07-20 21:33:46');
INSERT INTO `sp_system_operation_log` VALUES ('574', '2', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u89d2\\u8272\\u5206\\u914d\\u6743\\u9650\\u6210\\u529f\"}', '2019-07-20 21:33:47');
INSERT INTO `sp_system_operation_log` VALUES ('575', '1', 'home', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:33:58');
INSERT INTO `sp_system_operation_log` VALUES ('576', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:34:00');
INSERT INTO `sp_system_operation_log` VALUES ('577', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:34:03');
INSERT INTO `sp_system_operation_log` VALUES ('578', '1', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:34:04');
INSERT INTO `sp_system_operation_log` VALUES ('579', '1', 'admin/examine_status/7/1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:34:06');
INSERT INTO `sp_system_operation_log` VALUES ('580', '1', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u5ba1\\u6838\\u901a\\u8fc7\"}', '2019-07-20 21:34:06');
INSERT INTO `sp_system_operation_log` VALUES ('581', '4', 'home', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:34:19');
INSERT INTO `sp_system_operation_log` VALUES ('582', '4', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:34:21');
INSERT INTO `sp_system_operation_log` VALUES ('583', '4', 'architectural/add_architect', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:34:24');
INSERT INTO `sp_system_operation_log` VALUES ('584', '4', 'architectural/post_add_architect', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"system_name\":\"\\u6d4b\\u8bd5\\u81ea\\u5df1\\u7684\\u7cfb\\u7edf\",\"engineering_name\":\"\\u5de5\\u7a0b\",\"system_code\":\"XT-01\",\"status\":\"1\",\"sub_system_name\":[\"\\u5b50\\u7cfb\\u7edf\\u540d\",\"\\u5b50\\u7cfb\\u7edf2\"],\"sub_system_code\":[\"\\u5b50\\u7cfb\\u7edf\\u7f16\\u7801\",\"\\u7f16\\u78012\"],\"work_code\":[\"\\u5de5\\u51b5\",\"diam\"],\"sub_status\":[\"1\",\"0\"],\"sort\":[\"1\",\"3\"]}', '2019-07-20 21:35:34');
INSERT INTO `sp_system_operation_log` VALUES ('585', '4', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u521b\\u5efa\\u5efa\\u7b51\\u7cfb\\u7edf\\u6210\\u529f\"}', '2019-07-20 21:35:34');
INSERT INTO `sp_system_operation_log` VALUES ('586', '4', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"rows\":\"10\",\"page\":\"2\"}', '2019-07-20 21:35:38');
INSERT INTO `sp_system_operation_log` VALUES ('587', '4', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"rows\":\"10\",\"page\":\"1\"}', '2019-07-20 21:35:49');
INSERT INTO `sp_system_operation_log` VALUES ('588', '4', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"rows\":\"10\",\"page\":\"2\"}', '2019-07-20 21:35:51');
INSERT INTO `sp_system_operation_log` VALUES ('589', '4', 'architectural/architect_detail/19', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:35:56');
INSERT INTO `sp_system_operation_log` VALUES ('590', '4', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:36:02');
INSERT INTO `sp_system_operation_log` VALUES ('591', '4', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"system_name\":\"\",\"sub_system_name\":\"\",\"work_code\":\"\",\"rows\":\"10\",\"page\":\"3\"}', '2019-07-20 21:36:04');
INSERT INTO `sp_system_operation_log` VALUES ('592', '4', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"rows\":\"10\",\"page\":\"2\"}', '2019-07-20 21:36:07');
INSERT INTO `sp_system_operation_log` VALUES ('593', '4', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:36:10');
INSERT INTO `sp_system_operation_log` VALUES ('594', '4', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:37:09');
INSERT INTO `sp_system_operation_log` VALUES ('595', '4', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"system_name\":\"\",\"sub_system_name\":\"\",\"work_code\":\"\",\"rows\":\"10\",\"page\":\"2\"}', '2019-07-20 21:37:11');
INSERT INTO `sp_system_operation_log` VALUES ('596', '4', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"system_name\":\"\",\"sub_system_name\":\"\",\"work_code\":\"\",\"rows\":\"10\",\"page\":\"3\"}', '2019-07-20 21:37:14');
INSERT INTO `sp_system_operation_log` VALUES ('597', '4', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"system_name\":\"\",\"sub_system_name\":\"\",\"work_code\":\"\",\"rows\":\"10\",\"page\":\"2\"}', '2019-07-20 21:37:19');
INSERT INTO `sp_system_operation_log` VALUES ('598', '4', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"system_name\":\"\",\"sub_system_name\":\"\",\"work_code\":\"\",\"rows\":\"10\",\"page\":\"3\"}', '2019-07-20 21:37:52');
INSERT INTO `sp_system_operation_log` VALUES ('599', '4', 'architectural/edit_material/19', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:37:54');
INSERT INTO `sp_system_operation_log` VALUES ('600', '4', 'architectural/post_edit_material/19', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"material_id\":[\"0\",\"0\"],\"material_name\":[\"\\u65b0\\u6750\\u6599\",\"\\u65b0\\u6750\\u6599\"],\"material_code\":[\"\\u7f16\\u7801\",\"\\u7f16\\u7801\"],\"material_type\":[\"\\u4e2d\\u8def\",\"\\u4e2d\\u8def\"],\"position\":[\"\\u4f4d\\u7f6e\",\"\\u4f4d\\u7f6e\"],\"purpose\":[\"\\u7528\\u6237\",\"\\u7528\\u6237\"],\"material_number\":[\"\\u4ee3\\u7801 \",\"\\u4ee3\\u7801 \"],\"characteristic\":[\"\\u662f\\u7231\\u4e0a\\u4e86\\u5bf9\\u65b9\",\"\\u58eb\\u5927\\u592b\\u6536\\u5230\"],\"waste_rate\":[\"11\",\"11\"],\"sort\":[\"1\",\"2\"],\"status\":[\"0\",\"1\"]}', '2019-07-20 21:38:25');
INSERT INTO `sp_system_operation_log` VALUES ('601', '4', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u7f16\\u8f91\\u5173\\u8054\\u6750\\u6599\\u6210\\u529f\"}', '2019-07-20 21:38:25');
INSERT INTO `sp_system_operation_log` VALUES ('602', '4', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"system_name\":\"\",\"sub_system_name\":\"\",\"work_code\":\"\",\"rows\":\"10\",\"page\":\"3\"}', '2019-07-20 21:38:28');
INSERT INTO `sp_system_operation_log` VALUES ('603', '4', 'architectural/material_detail/19', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:38:31');
INSERT INTO `sp_system_operation_log` VALUES ('604', '1', 'home', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:38:58');
INSERT INTO `sp_system_operation_log` VALUES ('605', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:39:01');
INSERT INTO `sp_system_operation_log` VALUES ('606', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:39:03');
INSERT INTO `sp_system_operation_log` VALUES ('607', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:39:12');
INSERT INTO `sp_system_operation_log` VALUES ('608', '1', 'admin/post_role', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"id\":\"5\",\"name\":\"\\u5efa\\u7b51\\u8bbe\\u8ba1\\u7ba1\\u7406\"}', '2019-07-20 21:39:26');
INSERT INTO `sp_system_operation_log` VALUES ('609', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:39:27');
INSERT INTO `sp_system_operation_log` VALUES ('610', '1', 'admin/edit_role_authority/5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:39:28');
INSERT INTO `sp_system_operation_log` VALUES ('611', '1', 'admin/post_role_authority/5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"auth_id\":{\"19\":\"15\",\"20\":\"1501\",\"21\":\"1502\",\"22\":\"150201\",\"23\":\"150202\",\"24\":\"150203\",\"25\":\"1503\",\"26\":\"150301\",\"27\":\"150302\",\"28\":\"150303\",\"29\":\"150304\",\"30\":\"1504\",\"31\":\"150401\",\"32\":\"150402\",\"33\":\"150403\",\"34\":\"1505\",\"35\":\"150501\",\"36\":\"150502\",\"64\":\"35\",\"65\":\"3501\",\"70\":\"3502\"},\"manage_id\":{\"4\":\"35\",\"5\":\"3501\",\"6\":\"3502\",\"7\":\"3503\",\"8\":\"3504\",\"9\":\"3505\",\"10\":\"3506\",\"11\":\"3507\"}}', '2019-07-20 21:39:50');
INSERT INTO `sp_system_operation_log` VALUES ('612', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u89d2\\u8272\\u5206\\u914d\\u6743\\u9650\\u6210\\u529f\"}', '2019-07-20 21:39:50');
INSERT INTO `sp_system_operation_log` VALUES ('613', '2', 'home', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:40:00');
INSERT INTO `sp_system_operation_log` VALUES ('614', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:40:01');
INSERT INTO `sp_system_operation_log` VALUES ('615', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"rows\":\"10\",\"page\":\"2\"}', '2019-07-20 21:40:06');
INSERT INTO `sp_system_operation_log` VALUES ('616', '2', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:40:08');
INSERT INTO `sp_system_operation_log` VALUES ('617', '2', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '{\"system_name\":\"\",\"sub_system_name\":\"\",\"work_code\":\"\",\"rows\":\"10\",\"page\":\"2\"}', '2019-07-20 21:40:12');
INSERT INTO `sp_system_operation_log` VALUES ('618', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:44:21');
INSERT INTO `sp_system_operation_log` VALUES ('619', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:44:40');
INSERT INTO `sp_system_operation_log` VALUES ('620', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:47:14');
INSERT INTO `sp_system_operation_log` VALUES ('621', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:48:40');
INSERT INTO `sp_system_operation_log` VALUES ('622', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:48:54');
INSERT INTO `sp_system_operation_log` VALUES ('623', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:49:56');
INSERT INTO `sp_system_operation_log` VALUES ('624', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:50:06');
INSERT INTO `sp_system_operation_log` VALUES ('625', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:52:08');
INSERT INTO `sp_system_operation_log` VALUES ('626', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:53:00');
INSERT INTO `sp_system_operation_log` VALUES ('627', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:53:44');
INSERT INTO `sp_system_operation_log` VALUES ('628', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:54:04');
INSERT INTO `sp_system_operation_log` VALUES ('629', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:54:37');
INSERT INTO `sp_system_operation_log` VALUES ('630', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:54:57');
INSERT INTO `sp_system_operation_log` VALUES ('631', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:55:08');
INSERT INTO `sp_system_operation_log` VALUES ('632', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:55:29');
INSERT INTO `sp_system_operation_log` VALUES ('633', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:55:30');
INSERT INTO `sp_system_operation_log` VALUES ('634', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:55:47');
INSERT INTO `sp_system_operation_log` VALUES ('635', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:56:29');
INSERT INTO `sp_system_operation_log` VALUES ('636', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:57:19');
INSERT INTO `sp_system_operation_log` VALUES ('637', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:57:52');
INSERT INTO `sp_system_operation_log` VALUES ('638', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:58:00');
INSERT INTO `sp_system_operation_log` VALUES ('639', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:58:04');
INSERT INTO `sp_system_operation_log` VALUES ('640', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:58:26');
INSERT INTO `sp_system_operation_log` VALUES ('641', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 21:59:32');
INSERT INTO `sp_system_operation_log` VALUES ('642', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 22:00:05');
INSERT INTO `sp_system_operation_log` VALUES ('643', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 22:04:54');
INSERT INTO `sp_system_operation_log` VALUES ('644', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 22:06:45');
INSERT INTO `sp_system_operation_log` VALUES ('645', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 22:06:55');
INSERT INTO `sp_system_operation_log` VALUES ('646', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 22:10:59');
INSERT INTO `sp_system_operation_log` VALUES ('647', '2', 'architectural/architect_detail/6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 22:11:01');
INSERT INTO `sp_system_operation_log` VALUES ('648', '2', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 22:11:04');
INSERT INTO `sp_system_operation_log` VALUES ('649', '2', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 22:12:23');
INSERT INTO `sp_system_operation_log` VALUES ('650', '2', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 22:12:30');
INSERT INTO `sp_system_operation_log` VALUES ('651', '2', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 22:16:23');
INSERT INTO `sp_system_operation_log` VALUES ('652', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 22:16:30');
INSERT INTO `sp_system_operation_log` VALUES ('653', '2', 'architectural/add_architect', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 22:16:33');
INSERT INTO `sp_system_operation_log` VALUES ('654', '2', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 22:16:37');
INSERT INTO `sp_system_operation_log` VALUES ('655', '2', 'architectural/edit_material/2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 22:16:38');
INSERT INTO `sp_system_operation_log` VALUES ('656', '2', 'architectural/material_detail/2', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 22:16:42');
INSERT INTO `sp_system_operation_log` VALUES ('657', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-20 22:16:44');
INSERT INTO `sp_system_operation_log` VALUES ('658', '0', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '49.234.65.38', '[]', '2019-07-20 22:08:54');
INSERT INTO `sp_system_operation_log` VALUES ('659', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '49.234.65.38', '[]', '2019-07-20 22:08:58');
INSERT INTO `sp_system_operation_log` VALUES ('660', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '49.234.65.38', '[]', '2019-07-20 22:09:02');
INSERT INTO `sp_system_operation_log` VALUES ('661', '1', 'admin/edit_role_authority/1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '49.234.65.38', '[]', '2019-07-20 22:09:06');
INSERT INTO `sp_system_operation_log` VALUES ('662', '1', 'admin/post_role_authority/1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '49.234.65.38', '{\"auth_id\":{\"0\":\"10\",\"1\":\"1001\",\"2\":\"100101\",\"3\":\"100102\",\"4\":\"100103\",\"5\":\"100105\",\"6\":\"1002\",\"7\":\"100201\",\"8\":\"100202\",\"9\":\"100203\",\"10\":\"100204\",\"11\":\"100205\",\"12\":\"1003\",\"13\":\"100301\",\"14\":\"100302\",\"15\":\"100303\",\"16\":\"1004\",\"17\":\"100401\",\"18\":\"1005\",\"19\":\"15\",\"20\":\"1501\",\"21\":\"1502\",\"22\":\"150201\",\"23\":\"150202\",\"24\":\"150203\",\"25\":\"1503\",\"26\":\"150301\",\"27\":\"150302\",\"28\":\"150303\",\"29\":\"150304\",\"30\":\"1504\",\"31\":\"150401\",\"32\":\"150402\",\"33\":\"150403\",\"34\":\"1505\",\"35\":\"150501\",\"36\":\"150502\",\"64\":\"35\",\"65\":\"3501\",\"66\":\"350101\",\"67\":\"350102\",\"68\":\"350103\",\"69\":\"350104\",\"70\":\"3502\",\"71\":\"350201\",\"72\":\"350202\",\"97\":\"60\",\"98\":\"6001\",\"99\":\"6002\",\"100\":\"600201\",\"101\":\"600202\",\"102\":\"600203\"},\"manage_id\":{\"4\":\"35\",\"5\":\"3501\",\"6\":\"3502\",\"7\":\"3503\",\"8\":\"3504\",\"9\":\"3505\",\"10\":\"3506\",\"11\":\"3507\"}}', '2019-07-20 22:09:26');
INSERT INTO `sp_system_operation_log` VALUES ('663', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '49.234.65.38', '{\"status\":\"1\",\"notice\":\"\\u89d2\\u8272\\u5206\\u914d\\u6743\\u9650\\u6210\\u529f\"}', '2019-07-20 22:09:27');
INSERT INTO `sp_system_operation_log` VALUES ('664', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '49.234.65.38', '[]', '2019-07-20 22:09:31');
INSERT INTO `sp_system_operation_log` VALUES ('665', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '49.234.65.38', '[]', '2019-07-20 22:09:35');
INSERT INTO `sp_system_operation_log` VALUES ('666', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '49.234.65.38', '[]', '2019-07-20 22:09:46');
INSERT INTO `sp_system_operation_log` VALUES ('667', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '49.234.65.38', '[]', '2019-07-20 22:09:50');
INSERT INTO `sp_system_operation_log` VALUES ('668', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '49.234.65.38', '[]', '2019-07-20 22:09:58');
INSERT INTO `sp_system_operation_log` VALUES ('669', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '49.234.65.38', '[]', '2019-07-20 22:10:00');
INSERT INTO `sp_system_operation_log` VALUES ('670', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '49.234.65.38', '[]', '2019-07-20 22:10:02');
INSERT INTO `sp_system_operation_log` VALUES ('671', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '49.234.65.38', '[]', '2019-07-20 22:10:03');
INSERT INTO `sp_system_operation_log` VALUES ('672', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '49.234.65.38', '[]', '2019-07-20 22:10:09');
INSERT INTO `sp_system_operation_log` VALUES ('673', '2', 'home', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '106.2.237.23', '[]', '2019-07-22 09:58:07');
INSERT INTO `sp_system_operation_log` VALUES ('674', '2', 'project/index', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '106.2.237.23', '[]', '2019-07-22 09:58:11');
INSERT INTO `sp_system_operation_log` VALUES ('675', '2', 'home', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '106.2.237.23', '[]', '2019-07-22 09:58:45');
INSERT INTO `sp_system_operation_log` VALUES ('676', '0', 'architectural/index', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '49.234.65.38', '[]', '2019-07-22 10:03:37');
INSERT INTO `sp_system_operation_log` VALUES ('677', '1', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:05:14');
INSERT INTO `sp_system_operation_log` VALUES ('678', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:05:32');
INSERT INTO `sp_system_operation_log` VALUES ('679', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:06:00');
INSERT INTO `sp_system_operation_log` VALUES ('680', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:06:02');
INSERT INTO `sp_system_operation_log` VALUES ('681', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:06:03');
INSERT INTO `sp_system_operation_log` VALUES ('682', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:06:05');
INSERT INTO `sp_system_operation_log` VALUES ('683', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:06:06');
INSERT INTO `sp_system_operation_log` VALUES ('684', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:06:08');
INSERT INTO `sp_system_operation_log` VALUES ('685', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:06:09');
INSERT INTO `sp_system_operation_log` VALUES ('686', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:06:09');
INSERT INTO `sp_system_operation_log` VALUES ('687', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:06:23');
INSERT INTO `sp_system_operation_log` VALUES ('688', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:06:25');
INSERT INTO `sp_system_operation_log` VALUES ('689', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:06:31');
INSERT INTO `sp_system_operation_log` VALUES ('690', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:06:31');
INSERT INTO `sp_system_operation_log` VALUES ('691', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:06:33');
INSERT INTO `sp_system_operation_log` VALUES ('692', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:06:35');
INSERT INTO `sp_system_operation_log` VALUES ('693', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:07:08');
INSERT INTO `sp_system_operation_log` VALUES ('694', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:07:12');
INSERT INTO `sp_system_operation_log` VALUES ('695', '1', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:07:22');
INSERT INTO `sp_system_operation_log` VALUES ('696', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:07:27');
INSERT INTO `sp_system_operation_log` VALUES ('697', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:07:38');
INSERT INTO `sp_system_operation_log` VALUES ('698', '1', 'admin/system_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:07:42');
INSERT INTO `sp_system_operation_log` VALUES ('699', '1', 'admin/menu_nav_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:07:42');
INSERT INTO `sp_system_operation_log` VALUES ('700', '1', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:07:43');
INSERT INTO `sp_system_operation_log` VALUES ('701', '1', 'admin/menu_nav_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:07:45');
INSERT INTO `sp_system_operation_log` VALUES ('702', '1', 'admin/system_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:07:47');
INSERT INTO `sp_system_operation_log` VALUES ('703', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:07:49');
INSERT INTO `sp_system_operation_log` VALUES ('704', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:07:50');
INSERT INTO `sp_system_operation_log` VALUES ('705', '1', 'admin/edit_role_authority/1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:08:00');
INSERT INTO `sp_system_operation_log` VALUES ('706', '1', 'admin/post_role_authority/1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"auth_id\":[\"10\",\"1001\",\"100101\",\"100102\",\"100103\",\"100105\",\"1002\",\"100201\",\"100202\",\"100203\",\"100204\",\"100205\",\"1003\",\"100301\",\"100302\",\"100303\",\"1004\",\"100401\",\"1005\",\"15\",\"1501\",\"1502\",\"150201\",\"150202\",\"150203\",\"1503\",\"150301\",\"150302\",\"150303\",\"150304\",\"1504\",\"150401\",\"150402\",\"150403\",\"1505\",\"150501\",\"150502\",\"20\",\"2001\",\"200101\",\"200102\",\"200103\",\"200104\",\"200105\",\"200106\",\"2002\",\"200201\",\"200202\",\"200203\",\"200204\",\"200205\",\"200206\",\"25\",\"2501\",\"2502\",\"2503\",\"2504\",\"2505\",\"30\",\"3001\",\"3002\",\"3003\",\"3004\",\"3005\",\"35\",\"3501\",\"350101\",\"350102\",\"350103\",\"350104\",\"3502\",\"350201\",\"350202\",\"40\",\"4001\",\"4002\",\"4003\",\"4004\",\"4005\",\"45\",\"4501\",\"4502\",\"4503\",\"4504\",\"4505\",\"50\",\"5001\",\"5002\",\"5003\",\"5004\",\"5005\",\"55\",\"5501\",\"5502\",\"5503\",\"5504\",\"5505\",\"60\",\"6001\",\"6002\",\"600201\",\"600202\",\"600203\"],\"manage_id\":[\"15\",\"20\",\"25\",\"30\",\"35\",\"3501\",\"3502\",\"3503\",\"3504\",\"3505\",\"3506\",\"3507\",\"40\",\"45\",\"55\",\"60\",\"65\"]}', '2019-07-22 10:08:35');
INSERT INTO `sp_system_operation_log` VALUES ('707', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u89d2\\u8272\\u5206\\u914d\\u6743\\u9650\\u6210\\u529f\"}', '2019-07-22 10:08:36');
INSERT INTO `sp_system_operation_log` VALUES ('708', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:08:44');
INSERT INTO `sp_system_operation_log` VALUES ('709', '0', 'architectural/index', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '106.2.237.23', '[]', '2019-07-22 10:08:48');
INSERT INTO `sp_system_operation_log` VALUES ('710', '2', 'architectural/index', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '106.2.237.23', '[]', '2019-07-22 10:08:55');
INSERT INTO `sp_system_operation_log` VALUES ('711', '1', 'admin/system_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:09:12');
INSERT INTO `sp_system_operation_log` VALUES ('712', '1', 'admin/menu_nav_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:09:15');
INSERT INTO `sp_system_operation_log` VALUES ('713', '1', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:09:18');
INSERT INTO `sp_system_operation_log` VALUES ('714', '1', 'admin/menu_nav_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:09:19');
INSERT INTO `sp_system_operation_log` VALUES ('715', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:09:19');
INSERT INTO `sp_system_operation_log` VALUES ('716', '1', 'admin/edit_user_info/5', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:09:32');
INSERT INTO `sp_system_operation_log` VALUES ('717', '1', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:09:36');
INSERT INTO `sp_system_operation_log` VALUES ('718', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:09:39');
INSERT INTO `sp_system_operation_log` VALUES ('719', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:09:46');
INSERT INTO `sp_system_operation_log` VALUES ('720', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:09:48');
INSERT INTO `sp_system_operation_log` VALUES ('721', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:09:49');
INSERT INTO `sp_system_operation_log` VALUES ('722', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:09:50');
INSERT INTO `sp_system_operation_log` VALUES ('723', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:09:51');
INSERT INTO `sp_system_operation_log` VALUES ('724', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:10:15');
INSERT INTO `sp_system_operation_log` VALUES ('725', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:10:16');
INSERT INTO `sp_system_operation_log` VALUES ('726', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:10:17');
INSERT INTO `sp_system_operation_log` VALUES ('727', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:10:18');
INSERT INTO `sp_system_operation_log` VALUES ('728', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:10:19');
INSERT INTO `sp_system_operation_log` VALUES ('729', '1', 'base/post_edit_notice/14', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"title\":\"\\u5566\\u5566\\u5566\\u5566\\u5566\",\"status\":\"1\",\"pubdate\":\"2019-07-20 00:00:00\",\"content\":\"\\u5927\\u624b\\u5927\\u811a\\u6492\\u5a07\\u80af\\u5b9a\\u4f1a\\u5c06\\u5b89\\u5fbd\\u7684\\u5c3d\\u5feb\\u54c8\\u8428\\u514b\\u673a\\u4f1a\\u5927\\u662f\\u5355\\u4ef7\\u597d\"}', '2019-07-22 10:10:56');
INSERT INTO `sp_system_operation_log` VALUES ('730', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:10:56');
INSERT INTO `sp_system_operation_log` VALUES ('731', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:10:59');
INSERT INTO `sp_system_operation_log` VALUES ('732', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:11:00');
INSERT INTO `sp_system_operation_log` VALUES ('733', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:11:01');
INSERT INTO `sp_system_operation_log` VALUES ('734', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:11:02');
INSERT INTO `sp_system_operation_log` VALUES ('735', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:11:03');
INSERT INTO `sp_system_operation_log` VALUES ('736', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:11:04');
INSERT INTO `sp_system_operation_log` VALUES ('737', '1', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:11:32');
INSERT INTO `sp_system_operation_log` VALUES ('738', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:11:38');
INSERT INTO `sp_system_operation_log` VALUES ('739', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:11:41');
INSERT INTO `sp_system_operation_log` VALUES ('740', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:11:42');
INSERT INTO `sp_system_operation_log` VALUES ('741', '1', 'admin/edit_role_authority/1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:11:45');
INSERT INTO `sp_system_operation_log` VALUES ('742', '1', 'admin/post_role_authority/1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"auth_id\":{\"0\":\"10\",\"1\":\"1001\",\"2\":\"100101\",\"3\":\"100102\",\"4\":\"100103\",\"5\":\"100105\",\"6\":\"1002\",\"7\":\"100201\",\"8\":\"100202\",\"9\":\"100203\",\"10\":\"100204\",\"11\":\"100205\",\"12\":\"1003\",\"13\":\"100301\",\"14\":\"100302\",\"15\":\"100303\",\"16\":\"1004\",\"17\":\"100401\",\"18\":\"1005\",\"19\":\"15\",\"20\":\"1501\",\"21\":\"1502\",\"22\":\"150201\",\"23\":\"150202\",\"24\":\"150203\",\"25\":\"1503\",\"26\":\"150301\",\"27\":\"150302\",\"28\":\"150303\",\"29\":\"150304\",\"30\":\"1504\",\"31\":\"150401\",\"32\":\"150402\",\"33\":\"150403\",\"34\":\"1505\",\"35\":\"150501\",\"36\":\"150502\",\"64\":\"35\",\"65\":\"3501\",\"66\":\"350101\",\"67\":\"350102\",\"68\":\"350103\",\"69\":\"350104\",\"70\":\"3502\",\"71\":\"350201\",\"72\":\"350202\",\"97\":\"60\",\"98\":\"6001\",\"99\":\"6002\",\"100\":\"600201\",\"101\":\"600202\",\"102\":\"600203\"},\"manage_id\":[\"15\",\"20\",\"25\",\"30\",\"35\",\"3501\",\"3502\",\"3503\",\"3504\",\"3505\",\"3506\",\"3507\",\"40\",\"45\",\"55\",\"60\",\"65\"]}', '2019-07-22 10:12:01');
INSERT INTO `sp_system_operation_log` VALUES ('743', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u89d2\\u8272\\u5206\\u914d\\u6743\\u9650\\u6210\\u529f\"}', '2019-07-22 10:12:01');
INSERT INTO `sp_system_operation_log` VALUES ('744', '1', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:12:03');
INSERT INTO `sp_system_operation_log` VALUES ('745', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:12:11');
INSERT INTO `sp_system_operation_log` VALUES ('746', '1', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:12:13');
INSERT INTO `sp_system_operation_log` VALUES ('747', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:12:16');
INSERT INTO `sp_system_operation_log` VALUES ('748', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:12:27');
INSERT INTO `sp_system_operation_log` VALUES ('749', '1', 'architectural/add_architect', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:12:40');
INSERT INTO `sp_system_operation_log` VALUES ('750', '1', 'architectural/architect_detail/6', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:12:55');
INSERT INTO `sp_system_operation_log` VALUES ('751', '1', 'architectural/architect_detail/7', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:13:03');
INSERT INTO `sp_system_operation_log` VALUES ('752', '1', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:13:12');
INSERT INTO `sp_system_operation_log` VALUES ('753', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:13:14');
INSERT INTO `sp_system_operation_log` VALUES ('754', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:13:15');
INSERT INTO `sp_system_operation_log` VALUES ('755', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:13:16');
INSERT INTO `sp_system_operation_log` VALUES ('756', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:13:16');
INSERT INTO `sp_system_operation_log` VALUES ('757', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:13:17');
INSERT INTO `sp_system_operation_log` VALUES ('758', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:13:22');
INSERT INTO `sp_system_operation_log` VALUES ('759', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:13:23');
INSERT INTO `sp_system_operation_log` VALUES ('760', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:13:34');
INSERT INTO `sp_system_operation_log` VALUES ('761', '0', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.2141.400 QQBrowser/9.5.10219.400', '58.247.212.141', '[]', '2019-07-22 10:13:38');
INSERT INTO `sp_system_operation_log` VALUES ('762', '1', 'architectural/edit_architect/6', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:13:57');
INSERT INTO `sp_system_operation_log` VALUES ('763', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:14:08');
INSERT INTO `sp_system_operation_log` VALUES ('764', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:14:09');
INSERT INTO `sp_system_operation_log` VALUES ('765', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:14:10');
INSERT INTO `sp_system_operation_log` VALUES ('766', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:14:11');
INSERT INTO `sp_system_operation_log` VALUES ('767', '1', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:14:12');
INSERT INTO `sp_system_operation_log` VALUES ('768', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:15:03');
INSERT INTO `sp_system_operation_log` VALUES ('769', '0', 'admin/system_list', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', '223.166.151.197', '[]', '2019-07-22 10:15:09');
INSERT INTO `sp_system_operation_log` VALUES ('770', '0', 'admin/menu_nav_list', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_4) AppleWebKit/537.36 (KHTML, like Gecko) 			Chrome/55.0.2883.95 Safari/537.36', '210.22.245.226', '[]', '2019-07-22 10:15:13');
INSERT INTO `sp_system_operation_log` VALUES ('771', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:15:18');
INSERT INTO `sp_system_operation_log` VALUES ('772', '0', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '61.129.6.159', '[]', '2019-07-22 10:15:19');
INSERT INTO `sp_system_operation_log` VALUES ('773', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:15:20');
INSERT INTO `sp_system_operation_log` VALUES ('774', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:15:21');
INSERT INTO `sp_system_operation_log` VALUES ('775', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:15:34');
INSERT INTO `sp_system_operation_log` VALUES ('776', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:15:45');
INSERT INTO `sp_system_operation_log` VALUES ('777', '1', 'base/post_edit_notice/14', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"title\":\"\\u5566\\u5566\\u5566\\u5566\\u5566\",\"status\":\"1\",\"pubdate\":\"2019-07-20 00:00:00\",\"content\":\"\\u5927\\u624b\\u5927\\u811a\\u6492\\u5a07\\u80af\\u5b9a\\u4f1a\\u5c06\\u5b89\\u5fbd\\u7684\\u5c3d\\u5feb\\u54c8\\u8428\\u514b\\u673a\\u4f1a\\u5927\\u662f\\u5355\\u4ef7\\u597d\\u53d1\\u65af\\u8482\\u82ac\\u65af\\u8482\\u82ac\\u9632\\u6c34\\u798f\\u9053\\u5927\\u53a6\\u9632\\u5b88\\u6253\\u6cd5\\u6c34\\u7535\\u8d39\\u7b2c\\u4e09\\u65b9\\u6c34\\u7535\\u8d39\\u6c34\\u7535\\u9632\\u5b88\\u6253\\u6cd5\\u6c34\\u7535\\u8d39\\u6c34\\u7535\\u8d39\\u6c34\\u7535\\u8d39\"}', '2019-07-22 10:16:00');
INSERT INTO `sp_system_operation_log` VALUES ('778', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:16:00');
INSERT INTO `sp_system_operation_log` VALUES ('779', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:16:02');
INSERT INTO `sp_system_operation_log` VALUES ('780', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:16:06');
INSERT INTO `sp_system_operation_log` VALUES ('781', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:16:10');
INSERT INTO `sp_system_operation_log` VALUES ('782', '0', 'project/index', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', '61.151.178.175', '[]', '2019-07-22 10:16:44');
INSERT INTO `sp_system_operation_log` VALUES ('783', '0', 'home', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', '210.22.245.219', '[]', '2019-07-22 10:16:50');
INSERT INTO `sp_system_operation_log` VALUES ('784', '0', 'project/index', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '58.247.212.141', '[]', '2019-07-22 10:17:08');
INSERT INTO `sp_system_operation_log` VALUES ('785', '1', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:17:32');
INSERT INTO `sp_system_operation_log` VALUES ('786', '1', 'architectural/material_detail/2', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:17:37');
INSERT INTO `sp_system_operation_log` VALUES ('787', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"2\",\"notice\":\"\\u4ec5\\u6709\\u521b\\u5efa\\u7528\\u6237\\u624d\\u80fd\\u7f16\\u8f91\"}', '2019-07-22 10:17:38');
INSERT INTO `sp_system_operation_log` VALUES ('788', '0', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', '210.22.245.226', '[]', '2019-07-22 10:17:42');
INSERT INTO `sp_system_operation_log` VALUES ('789', '1', 'architectural/edit_material/2', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:17:55');
INSERT INTO `sp_system_operation_log` VALUES ('790', '0', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '180.97.118.219', '[]', '2019-07-22 10:17:57');
INSERT INTO `sp_system_operation_log` VALUES ('791', '1', 'architectural/material_detail/2', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:18:00');
INSERT INTO `sp_system_operation_log` VALUES ('792', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"2\",\"notice\":\"\\u4ec5\\u6709\\u521b\\u5efa\\u7528\\u6237\\u624d\\u80fd\\u7f16\\u8f91\"}', '2019-07-22 10:18:00');
INSERT INTO `sp_system_operation_log` VALUES ('793', '1', 'architectural/edit_architect/6', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:18:04');
INSERT INTO `sp_system_operation_log` VALUES ('794', '1', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:18:16');
INSERT INTO `sp_system_operation_log` VALUES ('795', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:18:40');
INSERT INTO `sp_system_operation_log` VALUES ('796', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:18:43');
INSERT INTO `sp_system_operation_log` VALUES ('797', '1', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:18:45');
INSERT INTO `sp_system_operation_log` VALUES ('798', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:18:46');
INSERT INTO `sp_system_operation_log` VALUES ('799', '0', 'home', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '61.151.207.141', '[]', '2019-07-22 10:18:47');
INSERT INTO `sp_system_operation_log` VALUES ('800', '1', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:18:48');
INSERT INTO `sp_system_operation_log` VALUES ('801', '0', 'admin/system_list', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '101.89.29.97', '[]', '2019-07-22 10:19:06');
INSERT INTO `sp_system_operation_log` VALUES ('802', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:19:14');
INSERT INTO `sp_system_operation_log` VALUES ('803', '0', 'admin/menu_nav_list', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '180.97.118.219', '[]', '2019-07-22 10:19:17');
INSERT INTO `sp_system_operation_log` VALUES ('804', '0', 'admin/examine_user', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_4) AppleWebKit/537.36 (KHTML, like Gecko) 			Chrome/55.0.2883.95 Safari/537.36', '101.89.19.197', '[]', '2019-07-22 10:19:18');
INSERT INTO `sp_system_operation_log` VALUES ('805', '0', 'admin/edit_role_authority/1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_4) AppleWebKit/537.36 (KHTML, like Gecko) 			Chrome/55.0.2883.95 Safari/537.36', '101.91.60.110', '[]', '2019-07-22 10:19:29');
INSERT INTO `sp_system_operation_log` VALUES ('806', '0', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E; InfoPath.3; rv:11.0) like Gecko', '61.151.207.205', '[]', '2019-07-22 10:19:33');
INSERT INTO `sp_system_operation_log` VALUES ('807', '1', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:19:53');
INSERT INTO `sp_system_operation_log` VALUES ('808', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:19:58');
INSERT INTO `sp_system_operation_log` VALUES ('809', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:20:00');
INSERT INTO `sp_system_operation_log` VALUES ('810', '1', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:20:18');
INSERT INTO `sp_system_operation_log` VALUES ('811', '1', 'admin/menu_nav_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:20:21');
INSERT INTO `sp_system_operation_log` VALUES ('812', '1', 'admin/system_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:20:22');
INSERT INTO `sp_system_operation_log` VALUES ('813', '1', 'admin/system_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:20:22');
INSERT INTO `sp_system_operation_log` VALUES ('814', '1', 'admin/system_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:20:23');
INSERT INTO `sp_system_operation_log` VALUES ('815', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:20:24');
INSERT INTO `sp_system_operation_log` VALUES ('816', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:20:30');
INSERT INTO `sp_system_operation_log` VALUES ('817', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:20:33');
INSERT INTO `sp_system_operation_log` VALUES ('818', '1', 'admin/edit_role_authority/2', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:20:49');
INSERT INTO `sp_system_operation_log` VALUES ('819', '0', 'admin/edit_user_info/5', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', '101.89.29.92', '[]', '2019-07-22 10:21:00');
INSERT INTO `sp_system_operation_log` VALUES ('820', '1', 'admin/post_role_authority/2', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"auth_id\":{\"0\":\"10\",\"1\":\"1001\",\"2\":\"100101\",\"3\":\"100102\",\"4\":\"100103\",\"5\":\"100105\",\"6\":\"1002\",\"7\":\"100201\",\"8\":\"100202\",\"9\":\"100203\",\"10\":\"100204\",\"11\":\"100205\",\"12\":\"1003\",\"13\":\"100301\",\"14\":\"100302\",\"15\":\"100303\",\"16\":\"1004\",\"17\":\"100401\",\"19\":\"15\",\"20\":\"1501\",\"21\":\"1502\",\"22\":\"150201\",\"23\":\"150202\",\"24\":\"150203\",\"25\":\"1503\",\"26\":\"150301\",\"27\":\"150302\",\"28\":\"150303\",\"29\":\"150304\",\"30\":\"1504\",\"31\":\"150401\",\"32\":\"150402\",\"33\":\"150403\",\"34\":\"1505\",\"35\":\"150501\",\"36\":\"150502\",\"37\":\"20\",\"38\":\"2001\",\"39\":\"200101\",\"40\":\"200102\",\"41\":\"200103\",\"42\":\"200104\",\"43\":\"200105\",\"44\":\"200106\",\"45\":\"2002\",\"46\":\"200201\",\"47\":\"200202\",\"48\":\"200203\",\"49\":\"200204\",\"50\":\"200205\",\"51\":\"200206\",\"52\":\"25\",\"53\":\"2501\",\"54\":\"2502\",\"55\":\"2503\",\"56\":\"2504\",\"57\":\"2505\",\"58\":\"30\",\"59\":\"3001\",\"60\":\"3002\",\"61\":\"3003\",\"62\":\"3004\",\"63\":\"3005\",\"64\":\"35\",\"65\":\"3501\",\"66\":\"350101\",\"67\":\"350102\",\"68\":\"350103\",\"69\":\"350104\",\"70\":\"3502\",\"71\":\"350201\",\"72\":\"350202\",\"73\":\"40\",\"74\":\"4001\",\"75\":\"4002\",\"76\":\"4003\",\"77\":\"4004\",\"78\":\"4005\",\"79\":\"45\",\"80\":\"4501\",\"81\":\"4502\",\"82\":\"4503\",\"83\":\"4504\",\"84\":\"4505\",\"85\":\"50\",\"86\":\"5001\",\"87\":\"5002\",\"88\":\"5003\",\"89\":\"5004\",\"90\":\"5005\",\"91\":\"55\",\"92\":\"5501\",\"93\":\"5502\",\"94\":\"5503\",\"95\":\"5504\",\"96\":\"5505\",\"97\":\"60\",\"98\":\"6001\",\"99\":\"6002\",\"100\":\"600201\",\"101\":\"600202\",\"102\":\"600203\"},\"manage_id\":[\"15\",\"20\",\"25\",\"30\",\"35\",\"3501\",\"3502\",\"3503\",\"3504\",\"3505\",\"3506\",\"3507\",\"40\",\"45\",\"55\",\"60\",\"65\"]}', '2019-07-22 10:21:21');
INSERT INTO `sp_system_operation_log` VALUES ('821', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u89d2\\u8272\\u5206\\u914d\\u6743\\u9650\\u6210\\u529f\"}', '2019-07-22 10:21:21');
INSERT INTO `sp_system_operation_log` VALUES ('822', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:21:36');
INSERT INTO `sp_system_operation_log` VALUES ('823', '1', 'admin/edit_user_info/6', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:21:40');
INSERT INTO `sp_system_operation_log` VALUES ('824', '1', 'admin/post_edit_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"id\":\"6\",\"username\":\"\\u738b\\u62ec\",\"email\":\"497686205@qq.com\",\"password\":\"\",\"repPassword\":\"\",\"roleid\":[\"2\"]}', '2019-07-22 10:21:48');
INSERT INTO `sp_system_operation_log` VALUES ('825', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u7f16\\u8f91\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-22 10:21:48');
INSERT INTO `sp_system_operation_log` VALUES ('826', '1', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:21:57');
INSERT INTO `sp_system_operation_log` VALUES ('827', '1', 'admin/examine_status/8/0', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:22:12');
INSERT INTO `sp_system_operation_log` VALUES ('828', '1', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u7528\\u6237\\u5ba1\\u6838\\u4e0d\\u901a\\u8fc7\"}', '2019-07-22 10:22:13');
INSERT INTO `sp_system_operation_log` VALUES ('829', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:22:18');
INSERT INTO `sp_system_operation_log` VALUES ('830', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:22:18');
INSERT INTO `sp_system_operation_log` VALUES ('831', '1', 'admin/no_ban_user/6', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:22:28');
INSERT INTO `sp_system_operation_log` VALUES ('832', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u5f00\\u542f\\u7528\\u6237\\u6210\\u529f,\\u5f85\\u5ba1\\u6838\"}', '2019-07-22 10:22:28');
INSERT INTO `sp_system_operation_log` VALUES ('833', '0', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', '223.166.151.191', '[]', '2019-07-22 10:23:06');
INSERT INTO `sp_system_operation_log` VALUES ('834', '0', 'admin/edit_role_authority/1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '61.151.178.165', '[]', '2019-07-22 10:23:15');
INSERT INTO `sp_system_operation_log` VALUES ('835', '0', 'architectural/add_architect', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', '58.247.204.63', '[]', '2019-07-22 10:23:59');
INSERT INTO `sp_system_operation_log` VALUES ('836', '0', 'architectural/add_architect', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '101.89.239.216', '[]', '2019-07-22 10:24:09');
INSERT INTO `sp_system_operation_log` VALUES ('837', '0', 'architectural/architect_detail/7', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', '223.166.151.199', '[]', '2019-07-22 10:24:20');
INSERT INTO `sp_system_operation_log` VALUES ('838', '0', 'architectural/edit_architect/6', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '101.89.239.232', '[]', '2019-07-22 10:24:27');
INSERT INTO `sp_system_operation_log` VALUES ('839', '0', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', '101.89.29.92', '[]', '2019-07-22 10:24:43');
INSERT INTO `sp_system_operation_log` VALUES ('840', '1', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:25:17');
INSERT INTO `sp_system_operation_log` VALUES ('841', '0', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '101.89.29.97', '[]', '2019-07-22 10:25:22');
INSERT INTO `sp_system_operation_log` VALUES ('842', '0', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '116.128.128.79', '[]', '2019-07-22 10:25:40');
INSERT INTO `sp_system_operation_log` VALUES ('843', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:25:47');
INSERT INTO `sp_system_operation_log` VALUES ('844', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:25:54');
INSERT INTO `sp_system_operation_log` VALUES ('845', '1', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:27:16');
INSERT INTO `sp_system_operation_log` VALUES ('846', '0', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E; InfoPath.3; rv:11.0) like Gecko', '61.151.178.236', '{\"status\":\"2\",\"notice\":\"\\u4ec5\\u6709\\u521b\\u5efa\\u7528\\u6237\\u624d\\u80fd\\u7f16\\u8f91\"}', '2019-07-22 10:27:18');
INSERT INTO `sp_system_operation_log` VALUES ('847', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:27:21');
INSERT INTO `sp_system_operation_log` VALUES ('848', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:27:23');
INSERT INTO `sp_system_operation_log` VALUES ('849', '1', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:27:31');
INSERT INTO `sp_system_operation_log` VALUES ('850', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:27:48');
INSERT INTO `sp_system_operation_log` VALUES ('851', '0', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '223.166.151.199', '{\"status\":\"2\",\"notice\":\"\\u4ec5\\u6709\\u521b\\u5efa\\u7528\\u6237\\u624d\\u80fd\\u7f16\\u8f91\"}', '2019-07-22 10:27:55');
INSERT INTO `sp_system_operation_log` VALUES ('852', '1', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:28:05');
INSERT INTO `sp_system_operation_log` VALUES ('853', '1', 'admin/examine_status/9/1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:28:10');
INSERT INTO `sp_system_operation_log` VALUES ('854', '1', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u5ba1\\u6838\\u901a\\u8fc7\"}', '2019-07-22 10:28:10');
INSERT INTO `sp_system_operation_log` VALUES ('855', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:28:20');
INSERT INTO `sp_system_operation_log` VALUES ('856', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:28:26');
INSERT INTO `sp_system_operation_log` VALUES ('857', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:28:28');
INSERT INTO `sp_system_operation_log` VALUES ('858', '0', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.2141.400 QQBrowser/9.5.10219.400', '61.129.6.251', '[]', '2019-07-22 10:28:28');
INSERT INTO `sp_system_operation_log` VALUES ('859', '0', 'architectural/material_detail/2', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.2141.400 QQBrowser/9.5.10219.400', '61.151.178.174', '[]', '2019-07-22 10:28:48');
INSERT INTO `sp_system_operation_log` VALUES ('860', '0', 'architectural/edit_material/2', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', '223.166.151.197', '[]', '2019-07-22 10:28:53');
INSERT INTO `sp_system_operation_log` VALUES ('861', '0', 'architectural/edit_material/2', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', '101.89.29.92', '[]', '2019-07-22 10:29:32');
INSERT INTO `sp_system_operation_log` VALUES ('862', '0', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', '58.246.221.163', '{\"status\":\"2\",\"notice\":\"\\u4ec5\\u6709\\u521b\\u5efa\\u7528\\u6237\\u624d\\u80fd\\u7f16\\u8f91\"}', '2019-07-22 10:29:41');
INSERT INTO `sp_system_operation_log` VALUES ('863', '0', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '61.129.8.179', '[]', '2019-07-22 10:29:46');
INSERT INTO `sp_system_operation_log` VALUES ('864', '0', 'project/index', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_4) AppleWebKit/537.36 (KHTML, like Gecko) 			Chrome/55.0.2883.95 Safari/537.36', '61.129.7.235', '[]', '2019-07-22 10:31:48');
INSERT INTO `sp_system_operation_log` VALUES ('865', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:32:06');
INSERT INTO `sp_system_operation_log` VALUES ('866', '0', 'admin/edit_role_authority/2', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '223.166.151.197', '[]', '2019-07-22 10:32:11');
INSERT INTO `sp_system_operation_log` VALUES ('867', '1', 'admin/edit_user_info/6', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:32:15');
INSERT INTO `sp_system_operation_log` VALUES ('868', '0', 'admin/user_role_list', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_4) AppleWebKit/537.36 (KHTML, like Gecko) 			Chrome/55.0.2883.95 Safari/537.36', '223.166.151.191', '{\"status\":\"1\",\"notice\":\"\\u5f00\\u542f\\u7528\\u6237\\u6210\\u529f,\\u5f85\\u5ba1\\u6838\"}', '2019-07-22 10:32:23');
INSERT INTO `sp_system_operation_log` VALUES ('869', '0', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.2141.400 QQBrowser/9.5.10219.400', '223.167.152.53', '{\"status\":\"1\",\"notice\":\"\\u7528\\u6237\\u5ba1\\u6838\\u4e0d\\u901a\\u8fc7\"}', '2019-07-22 10:32:37');
INSERT INTO `sp_system_operation_log` VALUES ('870', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:32:53');
INSERT INTO `sp_system_operation_log` VALUES ('871', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:32:55');
INSERT INTO `sp_system_operation_log` VALUES ('872', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:32:56');
INSERT INTO `sp_system_operation_log` VALUES ('873', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:32:59');
INSERT INTO `sp_system_operation_log` VALUES ('874', '0', 'admin/edit_user_info/6', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '101.91.60.11', '[]', '2019-07-22 10:33:01');
INSERT INTO `sp_system_operation_log` VALUES ('875', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:33:07');
INSERT INTO `sp_system_operation_log` VALUES ('876', '0', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', '58.246.221.162', '{\"status\":\"1\",\"notice\":\"\\u7f16\\u8f91\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-22 10:33:31');
INSERT INTO `sp_system_operation_log` VALUES ('877', '0', 'admin/examine_status/8/0', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '101.89.19.197', '[]', '2019-07-22 10:33:42');
INSERT INTO `sp_system_operation_log` VALUES ('878', '0', 'admin/no_ban_user/6', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E; InfoPath.3; rv:11.0) like Gecko', '61.129.8.179', '[]', '2019-07-22 10:34:03');
INSERT INTO `sp_system_operation_log` VALUES ('879', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:34:05');
INSERT INTO `sp_system_operation_log` VALUES ('880', '1', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:34:11');
INSERT INTO `sp_system_operation_log` VALUES ('881', '1', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:34:11');
INSERT INTO `sp_system_operation_log` VALUES ('882', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:34:12');
INSERT INTO `sp_system_operation_log` VALUES ('883', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:34:12');
INSERT INTO `sp_system_operation_log` VALUES ('884', '1', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:34:14');
INSERT INTO `sp_system_operation_log` VALUES ('885', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:34:20');
INSERT INTO `sp_system_operation_log` VALUES ('886', '1', 'architectural/add_architect', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:34:31');
INSERT INTO `sp_system_operation_log` VALUES ('887', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:34:33');
INSERT INTO `sp_system_operation_log` VALUES ('888', '0', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '58.246.221.61', '{\"status\":\"1\",\"notice\":\"\\u5ba1\\u6838\\u901a\\u8fc7\"}', '2019-07-22 10:39:33');
INSERT INTO `sp_system_operation_log` VALUES ('889', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:39:57');
INSERT INTO `sp_system_operation_log` VALUES ('890', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:40:04');
INSERT INTO `sp_system_operation_log` VALUES ('891', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:40:05');
INSERT INTO `sp_system_operation_log` VALUES ('892', '1', 'admin/post_role', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"id\":\"7\",\"name\":\"\\u9879\\u76ee\\u7ba1\\u74061\"}', '2019-07-22 10:40:12');
INSERT INTO `sp_system_operation_log` VALUES ('893', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:40:13');
INSERT INTO `sp_system_operation_log` VALUES ('894', '0', 'admin/examine_status/9/1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', '101.89.29.94', '[]', '2019-07-22 10:40:13');
INSERT INTO `sp_system_operation_log` VALUES ('895', '1', 'admin/edit_role_authority/7', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:40:14');
INSERT INTO `sp_system_operation_log` VALUES ('896', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:41:17');
INSERT INTO `sp_system_operation_log` VALUES ('897', '0', 'admin/edit_user_info/6', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '210.22.245.219', '[]', '2019-07-22 10:43:45');
INSERT INTO `sp_system_operation_log` VALUES ('898', '0', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', '101.89.19.197', '[]', '2019-07-22 10:44:01');
INSERT INTO `sp_system_operation_log` VALUES ('899', '0', 'admin/edit_role_authority/7', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '61.129.8.179', '[]', '2019-07-22 10:51:02');
INSERT INTO `sp_system_operation_log` VALUES ('900', '1', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:57:36');
INSERT INTO `sp_system_operation_log` VALUES ('901', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:57:44');
INSERT INTO `sp_system_operation_log` VALUES ('902', '1', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:57:54');
INSERT INTO `sp_system_operation_log` VALUES ('903', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:57:55');
INSERT INTO `sp_system_operation_log` VALUES ('904', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:57:56');
INSERT INTO `sp_system_operation_log` VALUES ('905', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:58:07');
INSERT INTO `sp_system_operation_log` VALUES ('906', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:58:08');
INSERT INTO `sp_system_operation_log` VALUES ('907', '1', 'admin/edit_user_info/4', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:58:15');
INSERT INTO `sp_system_operation_log` VALUES ('908', '1', 'admin/post_edit_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"id\":\"4\",\"username\":\"test1\",\"email\":\"test@qq.com\",\"password\":\"123456\",\"repPassword\":\"123456\",\"roleid\":[\"5\"]}', '2019-07-22 10:59:00');
INSERT INTO `sp_system_operation_log` VALUES ('909', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u7f16\\u8f91\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-22 10:59:00');
INSERT INTO `sp_system_operation_log` VALUES ('910', '1', 'admin/edit_user_info/3', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:59:18');
INSERT INTO `sp_system_operation_log` VALUES ('911', '1', 'admin/post_edit_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"id\":\"3\",\"username\":\"test2\",\"email\":\"test2@qq.com\",\"password\":\"123456\",\"repPassword\":\"123456\",\"roleid\":[\"5\"]}', '2019-07-22 10:59:51');
INSERT INTO `sp_system_operation_log` VALUES ('912', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u7f16\\u8f91\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-22 10:59:51');
INSERT INTO `sp_system_operation_log` VALUES ('913', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 10:59:56');
INSERT INTO `sp_system_operation_log` VALUES ('914', '1', 'admin/post_role', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"id\":\"5\",\"name\":\"\\u5efa\\u7b51\\u8bbe\\u8ba1\\u5e08\"}', '2019-07-22 11:00:12');
INSERT INTO `sp_system_operation_log` VALUES ('915', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:00:12');
INSERT INTO `sp_system_operation_log` VALUES ('916', '1', 'admin/post_role', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"id\":\"6\",\"name\":\"\\u91c7\\u8d2d\\u4e13\\u5458\"}', '2019-07-22 11:00:47');
INSERT INTO `sp_system_operation_log` VALUES ('917', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:00:47');
INSERT INTO `sp_system_operation_log` VALUES ('918', '1', 'admin/post_role', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"id\":\"4\",\"name\":\"\\u8d22\\u52a1\\u4e13\\u5458\"}', '2019-07-22 11:00:55');
INSERT INTO `sp_system_operation_log` VALUES ('919', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:00:56');
INSERT INTO `sp_system_operation_log` VALUES ('920', '1', 'admin/post_role', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"id\":\"3\",\"name\":\"\\u8d22\\u52a1\\u4e13\\u5458\"}', '2019-07-22 11:01:03');
INSERT INTO `sp_system_operation_log` VALUES ('921', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:01:03');
INSERT INTO `sp_system_operation_log` VALUES ('922', '1', 'admin/post_role', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"id\":\"7\",\"name\":\"\\u9500\\u552e\\u603b\\u76d1\"}', '2019-07-22 11:01:35');
INSERT INTO `sp_system_operation_log` VALUES ('923', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:01:35');
INSERT INTO `sp_system_operation_log` VALUES ('924', '1', 'admin/post_role', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"id\":\"3\",\"name\":\"\\u8d22\\u52a1\\u603b\\u76d1\"}', '2019-07-22 11:01:47');
INSERT INTO `sp_system_operation_log` VALUES ('925', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:01:47');
INSERT INTO `sp_system_operation_log` VALUES ('926', '1', 'admin/post_role', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"id\":\"0\",\"name\":\"\\u91c7\\u8d2d\\u603b\\u76d1\"}', '2019-07-22 11:02:01');
INSERT INTO `sp_system_operation_log` VALUES ('927', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:02:02');
INSERT INTO `sp_system_operation_log` VALUES ('928', '1', 'admin/post_role', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"id\":\"0\",\"name\":\"\\u9500\\u552e\\u7ecf\\u7406\"}', '2019-07-22 11:02:10');
INSERT INTO `sp_system_operation_log` VALUES ('929', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:02:11');
INSERT INTO `sp_system_operation_log` VALUES ('930', '1', 'admin/post_role', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"id\":\"0\",\"name\":\"\\u9500\\u552e\\u603b\\u76d1\"}', '2019-07-22 11:02:18');
INSERT INTO `sp_system_operation_log` VALUES ('931', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:02:18');
INSERT INTO `sp_system_operation_log` VALUES ('932', '1', 'admin/post_role', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"id\":\"0\",\"name\":\"\\u5de5\\u7a0b\\u7ecf\\u7406\"}', '2019-07-22 11:02:37');
INSERT INTO `sp_system_operation_log` VALUES ('933', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:02:37');
INSERT INTO `sp_system_operation_log` VALUES ('934', '1', 'admin/post_role', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"id\":\"0\",\"name\":\"\\u5de5\\u7a0b\\u603b\\u76d1\"}', '2019-07-22 11:02:52');
INSERT INTO `sp_system_operation_log` VALUES ('935', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:02:53');
INSERT INTO `sp_system_operation_log` VALUES ('936', '1', 'admin/post_role', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"id\":\"0\",\"name\":\"\\u8bbe\\u8ba1\\u603b\\u76d1\"}', '2019-07-22 11:03:32');
INSERT INTO `sp_system_operation_log` VALUES ('937', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:03:32');
INSERT INTO `sp_system_operation_log` VALUES ('938', '1', 'admin/post_role', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"id\":\"0\",\"name\":\"\\u9884\\u7b97\\u4e13\\u5458\"}', '2019-07-22 11:03:46');
INSERT INTO `sp_system_operation_log` VALUES ('939', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:03:46');
INSERT INTO `sp_system_operation_log` VALUES ('940', '1', 'admin/post_role', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"id\":\"0\",\"name\":\"\\u9884\\u7b97\\u603b\\u76d1\"}', '2019-07-22 11:03:53');
INSERT INTO `sp_system_operation_log` VALUES ('941', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:03:53');
INSERT INTO `sp_system_operation_log` VALUES ('942', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:04:12');
INSERT INTO `sp_system_operation_log` VALUES ('943', '1', 'admin/edit_user_info/5', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:04:21');
INSERT INTO `sp_system_operation_log` VALUES ('944', '1', 'admin/post_edit_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"id\":\"5\",\"username\":\"test3\",\"email\":\"test3@qq.com\",\"password\":\"123456\",\"repPassword\":\"123456\",\"roleid\":[\"13\"]}', '2019-07-22 11:05:03');
INSERT INTO `sp_system_operation_log` VALUES ('945', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u7f16\\u8f91\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-22 11:05:03');
INSERT INTO `sp_system_operation_log` VALUES ('946', '1', 'admin/edit_user_info/2', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:05:14');
INSERT INTO `sp_system_operation_log` VALUES ('947', '1', 'admin/post_edit_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"id\":\"2\",\"username\":\"test4\",\"email\":\"test4@qq.com\",\"password\":\"123456\",\"repPassword\":\"123456+\",\"roleid\":[\"9\"]}', '2019-07-22 11:05:53');
INSERT INTO `sp_system_operation_log` VALUES ('948', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u7f16\\u8f91\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-22 11:05:53');
INSERT INTO `sp_system_operation_log` VALUES ('949', '1', 'admin/add_user_info', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:05:58');
INSERT INTO `sp_system_operation_log` VALUES ('950', '1', 'admin/post_add_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"username\":\"test5\",\"email\":\"test35@qq.com\",\"password\":\"123456\",\"repPassword\":\"123456\",\"roleid\":[\"10\"]}', '2019-07-22 11:06:25');
INSERT INTO `sp_system_operation_log` VALUES ('951', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u521b\\u5efa\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-22 11:06:25');
INSERT INTO `sp_system_operation_log` VALUES ('952', '1', 'admin/edit_user_info/7', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:06:48');
INSERT INTO `sp_system_operation_log` VALUES ('953', '1', 'admin/post_edit_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"id\":\"7\",\"username\":\"test5\",\"email\":\"test5@qq.com\",\"password\":\"\",\"repPassword\":\"\",\"roleid\":[\"10\"]}', '2019-07-22 11:06:58');
INSERT INTO `sp_system_operation_log` VALUES ('954', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u7f16\\u8f91\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-22 11:06:58');
INSERT INTO `sp_system_operation_log` VALUES ('955', '1', 'admin/edit_user_info/4', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:07:04');
INSERT INTO `sp_system_operation_log` VALUES ('956', '1', 'admin/post_edit_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"id\":\"4\",\"username\":\"test1\",\"email\":\"test1@qq.com\",\"password\":\"\",\"repPassword\":\"\",\"roleid\":[\"5\"]}', '2019-07-22 11:07:09');
INSERT INTO `sp_system_operation_log` VALUES ('957', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u7f16\\u8f91\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-22 11:07:09');
INSERT INTO `sp_system_operation_log` VALUES ('958', '1', 'admin/add_user_info', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:07:51');
INSERT INTO `sp_system_operation_log` VALUES ('959', '1', 'admin/post_add_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"username\":\"test6\",\"email\":\"test6@qq.com\",\"password\":\"123456\",\"repPassword\":\"123456\",\"roleid\":[\"14\"]}', '2019-07-22 11:08:21');
INSERT INTO `sp_system_operation_log` VALUES ('960', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u521b\\u5efa\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-22 11:08:21');
INSERT INTO `sp_system_operation_log` VALUES ('961', '1', 'admin/add_user_info', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:08:26');
INSERT INTO `sp_system_operation_log` VALUES ('962', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:08:36');
INSERT INTO `sp_system_operation_log` VALUES ('963', '1', 'admin/add_user_info', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:08:39');
INSERT INTO `sp_system_operation_log` VALUES ('964', '1', 'admin/post_add_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"username\":\"test7\",\"email\":\"test7@qq.com\",\"password\":\"123456\",\"repPassword\":\"123456\",\"roleid\":[\"15\"]}', '2019-07-22 11:08:56');
INSERT INTO `sp_system_operation_log` VALUES ('965', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u521b\\u5efa\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-22 11:08:57');
INSERT INTO `sp_system_operation_log` VALUES ('966', '1', 'admin/add_user_info', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:09:02');
INSERT INTO `sp_system_operation_log` VALUES ('967', '0', 'home', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.2141.400 QQBrowser/9.5.10219.400', '223.167.152.70', '[]', '2019-07-22 11:09:08');
INSERT INTO `sp_system_operation_log` VALUES ('968', '1', 'admin/post_add_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"username\":\"test8\",\"email\":\"test8@qq.com\",\"password\":\"123456\",\"repPassword\":\"123456\",\"roleid\":[\"11\"]}', '2019-07-22 11:09:22');
INSERT INTO `sp_system_operation_log` VALUES ('969', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u521b\\u5efa\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-22 11:09:22');
INSERT INTO `sp_system_operation_log` VALUES ('970', '1', 'admin/add_user_info', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:09:24');
INSERT INTO `sp_system_operation_log` VALUES ('971', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:09:31');
INSERT INTO `sp_system_operation_log` VALUES ('972', '1', 'admin/add_user_info', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:09:34');
INSERT INTO `sp_system_operation_log` VALUES ('973', '1', 'admin/post_add_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"username\":\"test9\",\"email\":\"test9@qq.com\",\"password\":\"123456\",\"repPassword\":\"123456\",\"roleid\":[\"12\"]}', '2019-07-22 11:09:54');
INSERT INTO `sp_system_operation_log` VALUES ('974', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u521b\\u5efa\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-22 11:09:55');
INSERT INTO `sp_system_operation_log` VALUES ('975', '0', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', '101.227.139.194', '[]', '2019-07-22 11:09:56');
INSERT INTO `sp_system_operation_log` VALUES ('976', '0', 'admin/edit_user_info/4', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', '180.97.118.219', '[]', '2019-07-22 11:10:09');
INSERT INTO `sp_system_operation_log` VALUES ('977', '1', 'admin/add_user_info', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:10:25');
INSERT INTO `sp_system_operation_log` VALUES ('978', '1', 'admin/post_add_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"username\":\"test10\",\"email\":\"test10@qq.com\",\"password\":\"123456\",\"repPassword\":\"123456\",\"roleid\":[\"9\"]}', '2019-07-22 11:10:42');
INSERT INTO `sp_system_operation_log` VALUES ('979', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u521b\\u5efa\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-22 11:10:42');
INSERT INTO `sp_system_operation_log` VALUES ('980', '1', 'admin/add_user_info', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:11:00');
INSERT INTO `sp_system_operation_log` VALUES ('981', '1', 'admin/post_add_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"username\":\"test11\",\"email\":\"test11@qq.com\",\"password\":\"123456\",\"repPassword\":\"123456\",\"roleid\":[\"14\"]}', '2019-07-22 11:11:24');
INSERT INTO `sp_system_operation_log` VALUES ('982', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u521b\\u5efa\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-22 11:11:25');
INSERT INTO `sp_system_operation_log` VALUES ('983', '1', 'admin/edit_user_info/13', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:11:35');
INSERT INTO `sp_system_operation_log` VALUES ('984', '1', 'admin/post_edit_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"id\":\"13\",\"username\":\"test11\",\"email\":\"test11@qq.com\",\"password\":\"\",\"repPassword\":\"\",\"roleid\":[\"12\",\"14\"]}', '2019-07-22 11:11:38');
INSERT INTO `sp_system_operation_log` VALUES ('985', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u7f16\\u8f91\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-22 11:11:38');
INSERT INTO `sp_system_operation_log` VALUES ('986', '1', 'admin/edit_user_info/13', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:11:40');
INSERT INTO `sp_system_operation_log` VALUES ('987', '1', 'admin/post_edit_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"id\":\"13\",\"username\":\"test11\",\"email\":\"test11@qq.com\",\"password\":\"\",\"repPassword\":\"\",\"roleid\":[\"14\"]}', '2019-07-22 11:11:42');
INSERT INTO `sp_system_operation_log` VALUES ('988', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u7f16\\u8f91\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-22 11:11:43');
INSERT INTO `sp_system_operation_log` VALUES ('989', '0', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', '58.247.204.63', '[]', '2019-07-22 11:11:57');
INSERT INTO `sp_system_operation_log` VALUES ('990', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:12:17');
INSERT INTO `sp_system_operation_log` VALUES ('991', '1', 'admin/edit_role_authority/15', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:12:24');
INSERT INTO `sp_system_operation_log` VALUES ('992', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:12:53');
INSERT INTO `sp_system_operation_log` VALUES ('993', '1', 'admin/edit_role_authority/15', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:13:01');
INSERT INTO `sp_system_operation_log` VALUES ('994', '1', 'admin/post_role_authority/15', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"auth_id\":{\"37\":\"20\",\"38\":\"2001\",\"39\":\"200101\",\"44\":\"200106\",\"45\":\"2002\",\"46\":\"200201\",\"51\":\"200206\"}}', '2019-07-22 11:15:44');
INSERT INTO `sp_system_operation_log` VALUES ('995', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u89d2\\u8272\\u5206\\u914d\\u6743\\u9650\\u6210\\u529f\"}', '2019-07-22 11:15:44');
INSERT INTO `sp_system_operation_log` VALUES ('996', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:16:10');
INSERT INTO `sp_system_operation_log` VALUES ('997', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:16:12');
INSERT INTO `sp_system_operation_log` VALUES ('998', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:16:13');
INSERT INTO `sp_system_operation_log` VALUES ('999', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:16:17');
INSERT INTO `sp_system_operation_log` VALUES ('1000', '1', 'architectural/architect_detail/6', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:16:20');
INSERT INTO `sp_system_operation_log` VALUES ('1001', '1', 'architectural/edit_architect/6', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:16:27');
INSERT INTO `sp_system_operation_log` VALUES ('1002', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:16:33');
INSERT INTO `sp_system_operation_log` VALUES ('1003', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:16:34');
INSERT INTO `sp_system_operation_log` VALUES ('1004', '1', 'admin/system_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:16:41');
INSERT INTO `sp_system_operation_log` VALUES ('1005', '1', 'admin/add_system_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:16:50');
INSERT INTO `sp_system_operation_log` VALUES ('1006', '1', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:16:58');
INSERT INTO `sp_system_operation_log` VALUES ('1007', '1', 'admin/system_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:16:59');
INSERT INTO `sp_system_operation_log` VALUES ('1008', '1', 'admin/add_system_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:17:20');
INSERT INTO `sp_system_operation_log` VALUES ('1009', '1', 'admin/menu_nav_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:17:24');
INSERT INTO `sp_system_operation_log` VALUES ('1010', '0', 'admin/add_user_info', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_4) AppleWebKit/537.36 (KHTML, like Gecko) 			Chrome/55.0.2883.95 Safari/537.36', '210.22.245.219', '[]', '2019-07-22 11:17:31');
INSERT INTO `sp_system_operation_log` VALUES ('1011', '1', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:17:33');
INSERT INTO `sp_system_operation_log` VALUES ('1012', '1', 'admin/examine_status/24/1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:17:40');
INSERT INTO `sp_system_operation_log` VALUES ('1013', '1', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u5ba1\\u6838\\u901a\\u8fc7\"}', '2019-07-22 11:17:40');
INSERT INTO `sp_system_operation_log` VALUES ('1014', '1', 'admin/examine_status/21/1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:17:42');
INSERT INTO `sp_system_operation_log` VALUES ('1015', '1', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u5ba1\\u6838\\u901a\\u8fc7\"}', '2019-07-22 11:17:42');
INSERT INTO `sp_system_operation_log` VALUES ('1016', '1', 'admin/examine_status/21/1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:17:43');
INSERT INTO `sp_system_operation_log` VALUES ('1017', '1', 'admin/examine_status/20/1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:17:43');
INSERT INTO `sp_system_operation_log` VALUES ('1018', '1', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u5ba1\\u6838\\u901a\\u8fc7\"}', '2019-07-22 11:17:43');
INSERT INTO `sp_system_operation_log` VALUES ('1019', '1', 'admin/examine_status/19/1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:17:44');
INSERT INTO `sp_system_operation_log` VALUES ('1020', '1', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u5ba1\\u6838\\u901a\\u8fc7\"}', '2019-07-22 11:17:44');
INSERT INTO `sp_system_operation_log` VALUES ('1021', '1', 'admin/examine_status/18/1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:17:45');
INSERT INTO `sp_system_operation_log` VALUES ('1022', '1', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u5ba1\\u6838\\u901a\\u8fc7\"}', '2019-07-22 11:17:45');
INSERT INTO `sp_system_operation_log` VALUES ('1023', '1', 'admin/examine_status/17/1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:17:46');
INSERT INTO `sp_system_operation_log` VALUES ('1024', '1', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u5ba1\\u6838\\u901a\\u8fc7\"}', '2019-07-22 11:17:46');
INSERT INTO `sp_system_operation_log` VALUES ('1025', '1', 'admin/examine_status/15/1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:17:47');
INSERT INTO `sp_system_operation_log` VALUES ('1026', '1', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u5ba1\\u6838\\u901a\\u8fc7\"}', '2019-07-22 11:17:48');
INSERT INTO `sp_system_operation_log` VALUES ('1027', '1', 'admin/examine_status/16/1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:17:49');
INSERT INTO `sp_system_operation_log` VALUES ('1028', '1', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u5ba1\\u6838\\u901a\\u8fc7\"}', '2019-07-22 11:17:49');
INSERT INTO `sp_system_operation_log` VALUES ('1029', '1', 'admin/examine_status/12/1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:17:50');
INSERT INTO `sp_system_operation_log` VALUES ('1030', '1', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u5ba1\\u6838\\u901a\\u8fc7\"}', '2019-07-22 11:17:50');
INSERT INTO `sp_system_operation_log` VALUES ('1031', '1', 'admin/examine_status/13/1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:17:50');
INSERT INTO `sp_system_operation_log` VALUES ('1032', '1', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u5ba1\\u6838\\u901a\\u8fc7\"}', '2019-07-22 11:17:50');
INSERT INTO `sp_system_operation_log` VALUES ('1033', '1', 'admin/examine_status/11/1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:17:51');
INSERT INTO `sp_system_operation_log` VALUES ('1034', '1', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u5ba1\\u6838\\u901a\\u8fc7\"}', '2019-07-22 11:17:51');
INSERT INTO `sp_system_operation_log` VALUES ('1035', '0', 'admin/add_user_info', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '101.227.139.163', '[]', '2019-07-22 11:17:52');
INSERT INTO `sp_system_operation_log` VALUES ('1036', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:17:54');
INSERT INTO `sp_system_operation_log` VALUES ('1037', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:17:55');
INSERT INTO `sp_system_operation_log` VALUES ('1038', '1', 'admin/ban_user/13', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:18:02');
INSERT INTO `sp_system_operation_log` VALUES ('1039', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u7981\\u7528\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-22 11:18:02');
INSERT INTO `sp_system_operation_log` VALUES ('1040', '1', 'admin/no_ban_user/13', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:18:06');
INSERT INTO `sp_system_operation_log` VALUES ('1041', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u5f00\\u542f\\u7528\\u6237\\u6210\\u529f,\\u5f85\\u5ba1\\u6838\"}', '2019-07-22 11:18:07');
INSERT INTO `sp_system_operation_log` VALUES ('1042', '1', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:18:13');
INSERT INTO `sp_system_operation_log` VALUES ('1043', '1', 'admin/examine_status/25/1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:18:14');
INSERT INTO `sp_system_operation_log` VALUES ('1044', '1', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u5ba1\\u6838\\u901a\\u8fc7\"}', '2019-07-22 11:18:15');
INSERT INTO `sp_system_operation_log` VALUES ('1045', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:18:17');
INSERT INTO `sp_system_operation_log` VALUES ('1046', '0', 'admin/edit_user_info/7', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', '101.89.19.149', '[]', '2019-07-22 11:18:18');
INSERT INTO `sp_system_operation_log` VALUES ('1047', '1', 'admin/menu_nav_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:18:39');
INSERT INTO `sp_system_operation_log` VALUES ('1048', '1', 'admin/menu_nav_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:18:43');
INSERT INTO `sp_system_operation_log` VALUES ('1049', '1', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:18:45');
INSERT INTO `sp_system_operation_log` VALUES ('1050', '1', 'admin/menu_nav_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:18:46');
INSERT INTO `sp_system_operation_log` VALUES ('1051', '1', 'admin/system_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:18:47');
INSERT INTO `sp_system_operation_log` VALUES ('1052', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:18:49');
INSERT INTO `sp_system_operation_log` VALUES ('1053', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:19:02');
INSERT INTO `sp_system_operation_log` VALUES ('1054', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:19:04');
INSERT INTO `sp_system_operation_log` VALUES ('1055', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:19:09');
INSERT INTO `sp_system_operation_log` VALUES ('1056', '1', 'admin/edit_role_authority/15', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:19:18');
INSERT INTO `sp_system_operation_log` VALUES ('1057', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:19:51');
INSERT INTO `sp_system_operation_log` VALUES ('1058', '1', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:20:02');
INSERT INTO `sp_system_operation_log` VALUES ('1059', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:20:04');
INSERT INTO `sp_system_operation_log` VALUES ('1060', '1', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:20:43');
INSERT INTO `sp_system_operation_log` VALUES ('1061', '7', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:21:01');
INSERT INTO `sp_system_operation_log` VALUES ('1062', '7', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:21:31');
INSERT INTO `sp_system_operation_log` VALUES ('1063', '7', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:21:41');
INSERT INTO `sp_system_operation_log` VALUES ('1064', '7', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:21:42');
INSERT INTO `sp_system_operation_log` VALUES ('1065', '7', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:21:50');
INSERT INTO `sp_system_operation_log` VALUES ('1066', '7', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:21:59');
INSERT INTO `sp_system_operation_log` VALUES ('1067', '7', 'admin/edit_user_info/13', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:22:06');
INSERT INTO `sp_system_operation_log` VALUES ('1068', '7', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:22:40');
INSERT INTO `sp_system_operation_log` VALUES ('1069', '1', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:23:06');
INSERT INTO `sp_system_operation_log` VALUES ('1070', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:23:07');
INSERT INTO `sp_system_operation_log` VALUES ('1071', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:23:09');
INSERT INTO `sp_system_operation_log` VALUES ('1072', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:23:10');
INSERT INTO `sp_system_operation_log` VALUES ('1073', '1', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:23:11');
INSERT INTO `sp_system_operation_log` VALUES ('1074', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:23:12');
INSERT INTO `sp_system_operation_log` VALUES ('1075', '0', 'admin/edit_user_info/13', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '101.89.239.216', '[]', '2019-07-22 11:23:26');
INSERT INTO `sp_system_operation_log` VALUES ('1076', '0', 'admin/edit_role_authority/15', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '61.151.178.177', '[]', '2019-07-22 11:23:47');
INSERT INTO `sp_system_operation_log` VALUES ('1077', '0', 'admin/edit_role_authority/15', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', '58.247.212.141', '[]', '2019-07-22 11:24:28');
INSERT INTO `sp_system_operation_log` VALUES ('1078', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:24:39');
INSERT INTO `sp_system_operation_log` VALUES ('1079', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:24:43');
INSERT INTO `sp_system_operation_log` VALUES ('1247', '0', 'base/getNoticeInfo', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 09:35:08');
INSERT INTO `sp_system_operation_log` VALUES ('1080', '1', 'admin/edit_role_authority/10', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:24:48');
INSERT INTO `sp_system_operation_log` VALUES ('1081', '1', 'admin/post_role_authority/10', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"auth_id\":{\"19\":\"15\",\"20\":\"1501\",\"21\":\"1502\",\"22\":\"150201\",\"23\":\"150202\",\"24\":\"150203\",\"25\":\"1503\",\"26\":\"150301\",\"27\":\"150302\",\"28\":\"150303\",\"29\":\"150304\",\"30\":\"1504\",\"31\":\"150401\",\"32\":\"150402\",\"33\":\"150403\",\"34\":\"1505\",\"35\":\"150501\",\"36\":\"150502\"},\"manage_id\":[\"15\"]}', '2019-07-22 11:25:22');
INSERT INTO `sp_system_operation_log` VALUES ('1082', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u89d2\\u8272\\u5206\\u914d\\u6743\\u9650\\u6210\\u529f\"}', '2019-07-22 11:25:22');
INSERT INTO `sp_system_operation_log` VALUES ('1083', '7', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:25:38');
INSERT INTO `sp_system_operation_log` VALUES ('1084', '7', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:25:41');
INSERT INTO `sp_system_operation_log` VALUES ('1085', '7', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:25:47');
INSERT INTO `sp_system_operation_log` VALUES ('1086', '7', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:25:48');
INSERT INTO `sp_system_operation_log` VALUES ('1087', '7', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:25:49');
INSERT INTO `sp_system_operation_log` VALUES ('1088', '7', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:25:49');
INSERT INTO `sp_system_operation_log` VALUES ('1089', '7', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:25:50');
INSERT INTO `sp_system_operation_log` VALUES ('1090', '7', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:26:22');
INSERT INTO `sp_system_operation_log` VALUES ('1091', '7', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:26:24');
INSERT INTO `sp_system_operation_log` VALUES ('1092', '7', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:26:25');
INSERT INTO `sp_system_operation_log` VALUES ('1093', '7', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:26:26');
INSERT INTO `sp_system_operation_log` VALUES ('1094', '8', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:26:43');
INSERT INTO `sp_system_operation_log` VALUES ('1095', '1', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:26:52');
INSERT INTO `sp_system_operation_log` VALUES ('1096', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:26:55');
INSERT INTO `sp_system_operation_log` VALUES ('1097', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:27:01');
INSERT INTO `sp_system_operation_log` VALUES ('1098', '1', 'admin/ban_user/8', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:27:05');
INSERT INTO `sp_system_operation_log` VALUES ('1099', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u7981\\u7528\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-22 11:27:05');
INSERT INTO `sp_system_operation_log` VALUES ('1100', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:27:08');
INSERT INTO `sp_system_operation_log` VALUES ('1101', '1', 'admin/edit_role_authority/14', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:27:14');
INSERT INTO `sp_system_operation_log` VALUES ('1102', '1', 'admin/post_role_authority/14', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"auth_id\":{\"37\":\"20\",\"38\":\"2001\",\"39\":\"200101\",\"40\":\"200102\",\"41\":\"200103\",\"42\":\"200104\",\"43\":\"200105\",\"44\":\"200106\",\"45\":\"2002\",\"46\":\"200201\",\"47\":\"200202\",\"48\":\"200203\",\"49\":\"200204\",\"50\":\"200205\",\"51\":\"200206\"},\"manage_id\":{\"1\":\"20\"}}', '2019-07-22 11:27:31');
INSERT INTO `sp_system_operation_log` VALUES ('1103', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u89d2\\u8272\\u5206\\u914d\\u6743\\u9650\\u6210\\u529f\"}', '2019-07-22 11:27:32');
INSERT INTO `sp_system_operation_log` VALUES ('1104', '8', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:28:01');
INSERT INTO `sp_system_operation_log` VALUES ('1105', '8', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:28:19');
INSERT INTO `sp_system_operation_log` VALUES ('1106', '1', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:28:30');
INSERT INTO `sp_system_operation_log` VALUES ('1107', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:28:31');
INSERT INTO `sp_system_operation_log` VALUES ('1108', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:28:33');
INSERT INTO `sp_system_operation_log` VALUES ('1109', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:28:34');
INSERT INTO `sp_system_operation_log` VALUES ('1110', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:28:41');
INSERT INTO `sp_system_operation_log` VALUES ('1111', '1', 'admin/no_ban_user/8', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:28:46');
INSERT INTO `sp_system_operation_log` VALUES ('1112', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u5f00\\u542f\\u7528\\u6237\\u6210\\u529f,\\u5f85\\u5ba1\\u6838\"}', '2019-07-22 11:28:46');
INSERT INTO `sp_system_operation_log` VALUES ('1113', '1', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:28:48');
INSERT INTO `sp_system_operation_log` VALUES ('1114', '1', 'admin/examine_status/26/1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:28:50');
INSERT INTO `sp_system_operation_log` VALUES ('1115', '1', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"status\":\"1\",\"notice\":\"\\u5ba1\\u6838\\u901a\\u8fc7\"}', '2019-07-22 11:28:50');
INSERT INTO `sp_system_operation_log` VALUES ('1116', '0', 'admin/examine_status/24/1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', '58.247.206.139', '[]', '2019-07-22 11:28:56');
INSERT INTO `sp_system_operation_log` VALUES ('1117', '8', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:29:08');
INSERT INTO `sp_system_operation_log` VALUES ('1118', '8', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:29:10');
INSERT INTO `sp_system_operation_log` VALUES ('1119', '8', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:29:13');
INSERT INTO `sp_system_operation_log` VALUES ('1120', '8', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:29:14');
INSERT INTO `sp_system_operation_log` VALUES ('1121', '8', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:29:14');
INSERT INTO `sp_system_operation_log` VALUES ('1122', '8', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:29:14');
INSERT INTO `sp_system_operation_log` VALUES ('1123', '8', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:29:14');
INSERT INTO `sp_system_operation_log` VALUES ('1124', '8', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:29:15');
INSERT INTO `sp_system_operation_log` VALUES ('1125', '0', 'admin/examine_status/20/1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '101.89.29.92', '[]', '2019-07-22 11:29:17');
INSERT INTO `sp_system_operation_log` VALUES ('1126', '0', 'admin/examine_status/17/1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.2141.400 QQBrowser/9.5.10219.400', '61.151.207.205', '[]', '2019-07-22 11:29:19');
INSERT INTO `sp_system_operation_log` VALUES ('1127', '0', 'admin/examine_status/13/1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_4) AppleWebKit/537.36 (KHTML, like Gecko) 			Chrome/55.0.2883.95 Safari/537.36', '101.89.239.232', '[]', '2019-07-22 11:29:22');
INSERT INTO `sp_system_operation_log` VALUES ('1128', '0', 'admin/examine_status/12/1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E; InfoPath.3; rv:11.0) like Gecko', '61.151.178.177', '[]', '2019-07-22 11:29:26');
INSERT INTO `sp_system_operation_log` VALUES ('1129', '1', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:29:27');
INSERT INTO `sp_system_operation_log` VALUES ('1130', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:29:30');
INSERT INTO `sp_system_operation_log` VALUES ('1131', '0', 'admin/examine_status/19/1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', '61.151.178.175', '[]', '2019-07-22 11:29:31');
INSERT INTO `sp_system_operation_log` VALUES ('1132', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:29:36');
INSERT INTO `sp_system_operation_log` VALUES ('1133', '0', 'admin/examine_status/18/1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E; InfoPath.3; rv:11.0) like Gecko', '101.89.19.149', '[]', '2019-07-22 11:29:37');
INSERT INTO `sp_system_operation_log` VALUES ('1134', '0', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', '58.246.221.163', '[]', '2019-07-22 11:29:38');
INSERT INTO `sp_system_operation_log` VALUES ('1135', '0', 'admin/examine_status/21/1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_4) AppleWebKit/537.36 (KHTML, like Gecko) 			Chrome/55.0.2883.95 Safari/537.36', '101.89.19.197', '[]', '2019-07-22 11:29:38');
INSERT INTO `sp_system_operation_log` VALUES ('1136', '0', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0', '210.22.245.219', '{\"status\":\"1\",\"notice\":\"\\u5ba1\\u6838\\u901a\\u8fc7\"}', '2019-07-22 11:29:43');
INSERT INTO `sp_system_operation_log` VALUES ('1137', '0', 'admin/examine_status/16/1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_4) AppleWebKit/537.36 (KHTML, like Gecko) 			Chrome/55.0.2883.95 Safari/537.36', '61.129.6.251', '[]', '2019-07-22 11:29:46');
INSERT INTO `sp_system_operation_log` VALUES ('1138', '0', 'admin/ban_user/13', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '101.89.19.197', '[]', '2019-07-22 11:29:48');
INSERT INTO `sp_system_operation_log` VALUES ('1139', '0', 'admin/examine_status/15/1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '101.89.29.97', '[]', '2019-07-22 11:29:52');
INSERT INTO `sp_system_operation_log` VALUES ('1140', '0', 'admin/no_ban_user/13', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', '101.91.60.105', '[]', '2019-07-22 11:30:00');
INSERT INTO `sp_system_operation_log` VALUES ('1141', '0', 'admin/examine_status/25/1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', '61.151.207.186', '[]', '2019-07-22 11:30:04');
INSERT INTO `sp_system_operation_log` VALUES ('1142', '0', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '58.246.221.162', '{\"status\":\"1\",\"notice\":\"\\u7981\\u7528\\u7528\\u6237\\u6210\\u529f\"}', '2019-07-22 11:30:05');
INSERT INTO `sp_system_operation_log` VALUES ('1143', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:30:58');
INSERT INTO `sp_system_operation_log` VALUES ('1144', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:31:24');
INSERT INTO `sp_system_operation_log` VALUES ('1145', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:31:27');
INSERT INTO `sp_system_operation_log` VALUES ('1146', '1', 'admin/menu_nav_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:31:29');
INSERT INTO `sp_system_operation_log` VALUES ('1147', '1', 'admin/examine_user', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:31:30');
INSERT INTO `sp_system_operation_log` VALUES ('1148', '1', 'admin/system_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:31:36');
INSERT INTO `sp_system_operation_log` VALUES ('1149', '1', 'admin/menu_nav_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:31:37');
INSERT INTO `sp_system_operation_log` VALUES ('1150', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:31:38');
INSERT INTO `sp_system_operation_log` VALUES ('1151', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:31:40');
INSERT INTO `sp_system_operation_log` VALUES ('1152', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:32:10');
INSERT INTO `sp_system_operation_log` VALUES ('1153', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:32:12');
INSERT INTO `sp_system_operation_log` VALUES ('1154', '1', 'admin/post_role', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"id\":\"15\",\"name\":\"\\u9884\\u7b97\\u603b\\u76d1\"}', '2019-07-22 11:32:15');
INSERT INTO `sp_system_operation_log` VALUES ('1155', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:32:15');
INSERT INTO `sp_system_operation_log` VALUES ('1156', '1', 'admin/edit_role_authority/15', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:32:16');
INSERT INTO `sp_system_operation_log` VALUES ('1157', '0', 'admin/edit_role_authority/10', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E; InfoPath.3; rv:11.0) like Gecko', '101.89.29.86', '[]', '2019-07-22 11:36:26');
INSERT INTO `sp_system_operation_log` VALUES ('1158', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:37:54');
INSERT INTO `sp_system_operation_log` VALUES ('1159', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:37:55');
INSERT INTO `sp_system_operation_log` VALUES ('1160', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:37:58');
INSERT INTO `sp_system_operation_log` VALUES ('1161', '0', 'admin/edit_role_authority/14', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '61.151.178.175', '[]', '2019-07-22 11:37:58');
INSERT INTO `sp_system_operation_log` VALUES ('1162', '0', 'admin/ban_user/8', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', '101.91.60.110', '[]', '2019-07-22 11:38:35');
INSERT INTO `sp_system_operation_log` VALUES ('1163', '0', 'admin/edit_role_authority/14', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.124 Safari/537.36', '58.246.221.163', '[]', '2019-07-22 11:39:08');
INSERT INTO `sp_system_operation_log` VALUES ('1164', '0', 'admin/no_ban_user/8', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_4) AppleWebKit/537.36 (KHTML, like Gecko) 			Chrome/55.0.2883.95 Safari/537.36', '61.151.207.205', '[]', '2019-07-22 11:40:24');
INSERT INTO `sp_system_operation_log` VALUES ('1165', '0', 'home', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.104 Safari/537.36 Core/1.53.2141.400 QQBrowser/9.5.10219.400', '61.151.178.177', '[]', '2019-07-22 11:40:24');
INSERT INTO `sp_system_operation_log` VALUES ('1166', '0', 'admin/examine_status/26/1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E; InfoPath.3; rv:11.0) like Gecko', '61.151.178.177', '[]', '2019-07-22 11:40:28');
INSERT INTO `sp_system_operation_log` VALUES ('1167', '0', 'project/index', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '210.22.245.226', '[]', '2019-07-22 11:40:56');
INSERT INTO `sp_system_operation_log` VALUES ('1168', '0', 'admin/menu_nav_list', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_4) AppleWebKit/537.36 (KHTML, like Gecko) 			Chrome/55.0.2883.95 Safari/537.36', '223.167.152.70', '[]', '2019-07-22 11:42:24');
INSERT INTO `sp_system_operation_log` VALUES ('1169', '0', 'admin/system_list', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0; .NET4.0C; .NET4.0E; InfoPath.3; rv:11.0) like Gecko', '58.246.221.61', '[]', '2019-07-22 11:43:06');
INSERT INTO `sp_system_operation_log` VALUES ('1170', '1', 'architectural/add_architect', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:59:23');
INSERT INTO `sp_system_operation_log` VALUES ('1171', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:59:42');
INSERT INTO `sp_system_operation_log` VALUES ('1172', '1', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:59:43');
INSERT INTO `sp_system_operation_log` VALUES ('1173', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 11:59:43');
INSERT INTO `sp_system_operation_log` VALUES ('1174', '0', 'home', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', '101.89.29.94', '[]', '2019-07-22 12:11:05');
INSERT INTO `sp_system_operation_log` VALUES ('1175', '1', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 14:55:01');
INSERT INTO `sp_system_operation_log` VALUES ('1176', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 14:55:03');
INSERT INTO `sp_system_operation_log` VALUES ('1177', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 14:55:10');
INSERT INTO `sp_system_operation_log` VALUES ('1178', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 14:55:24');
INSERT INTO `sp_system_operation_log` VALUES ('1179', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 14:55:53');
INSERT INTO `sp_system_operation_log` VALUES ('1180', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 14:55:55');
INSERT INTO `sp_system_operation_log` VALUES ('1181', '1', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 14:56:09');
INSERT INTO `sp_system_operation_log` VALUES ('1182', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 14:56:22');
INSERT INTO `sp_system_operation_log` VALUES ('1183', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 14:56:29');
INSERT INTO `sp_system_operation_log` VALUES ('1184', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 14:56:33');
INSERT INTO `sp_system_operation_log` VALUES ('1185', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 14:56:34');
INSERT INTO `sp_system_operation_log` VALUES ('1186', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 14:56:35');
INSERT INTO `sp_system_operation_log` VALUES ('1187', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 14:57:09');
INSERT INTO `sp_system_operation_log` VALUES ('1188', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 14:57:10');
INSERT INTO `sp_system_operation_log` VALUES ('1189', '1', 'base/post_edit_notice/14', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '{\"title\":\"\\u5566\\u5566\\u5566\\u5566\\u5566\",\"status\":\"1\",\"pubdate\":\"2019-07-20 00:00:00\",\"content\":\"\\u5927\\u624b\\u5927\\u811a\\u6492\\u5a07\\u80af\\u5b9a\\u4f1a\\u5c06\\u5b89\\u5fbd\\u7684\\u5c3d\\u5feb\\u54c8\\u8428\\u514b\\u673a\\u4f1a\\u5927\\u662f\\u5355\\u4ef7\\u597d\\u53d1\\u65af\\u8482\\u82ac\\u65af\\u8482\\u82ac\\u9632\\u6c34\\u798f\\u9053\\u5927\\u53a6\\u9632\\u5b88\\u6253\\u6cd5\\u6c34\\u7535\\u8d39\\u7b2c\\u4e09\\u65b9\\u6c34\\u7535\\u8d39\\u6c34\\u7535\\u9632\\u5b88\\u6253\\u6cd5\\u6c34\\u7535\\u8d39\\u6c34\\u7535\\u8d39\\u6c34\\u7535\\u8d39\"}', '2019-07-22 14:57:38');
INSERT INTO `sp_system_operation_log` VALUES ('1190', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 14:57:40');
INSERT INTO `sp_system_operation_log` VALUES ('1191', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 14:57:46');
INSERT INTO `sp_system_operation_log` VALUES ('1192', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 14:57:51');
INSERT INTO `sp_system_operation_log` VALUES ('1193', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 14:57:52');
INSERT INTO `sp_system_operation_log` VALUES ('1194', '1', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 14:57:53');
INSERT INTO `sp_system_operation_log` VALUES ('1195', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 14:57:54');
INSERT INTO `sp_system_operation_log` VALUES ('1196', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 14:57:55');
INSERT INTO `sp_system_operation_log` VALUES ('1197', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 14:57:56');
INSERT INTO `sp_system_operation_log` VALUES ('1198', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 14:57:57');
INSERT INTO `sp_system_operation_log` VALUES ('1199', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 14:57:58');
INSERT INTO `sp_system_operation_log` VALUES ('1200', '1', 'architectural/architect_detail/6', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 14:58:26');
INSERT INTO `sp_system_operation_log` VALUES ('1201', '1', 'architectural/edit_architect/6', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 14:58:40');
INSERT INTO `sp_system_operation_log` VALUES ('1202', '1', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 14:58:50');
INSERT INTO `sp_system_operation_log` VALUES ('1203', '1', 'architectural/edit_material/2', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 14:58:56');
INSERT INTO `sp_system_operation_log` VALUES ('1204', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 15:00:18');
INSERT INTO `sp_system_operation_log` VALUES ('1205', '1', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 15:00:24');
INSERT INTO `sp_system_operation_log` VALUES ('1206', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 15:00:25');
INSERT INTO `sp_system_operation_log` VALUES ('1207', '1', 'admin/add_user_info', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 15:00:27');
INSERT INTO `sp_system_operation_log` VALUES ('1208', '1', 'admin/system_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 15:00:38');
INSERT INTO `sp_system_operation_log` VALUES ('1209', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 15:00:38');
INSERT INTO `sp_system_operation_log` VALUES ('1210', '1', 'admin/role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 15:00:39');
INSERT INTO `sp_system_operation_log` VALUES ('1211', '1', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 15:00:53');
INSERT INTO `sp_system_operation_log` VALUES ('1212', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 15:01:02');
INSERT INTO `sp_system_operation_log` VALUES ('1213', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 15:01:09');
INSERT INTO `sp_system_operation_log` VALUES ('1214', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 15:06:35');
INSERT INTO `sp_system_operation_log` VALUES ('1215', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 15:06:36');
INSERT INTO `sp_system_operation_log` VALUES ('1216', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 15:06:37');
INSERT INTO `sp_system_operation_log` VALUES ('1217', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 15:06:38');
INSERT INTO `sp_system_operation_log` VALUES ('1218', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 15:06:38');
INSERT INTO `sp_system_operation_log` VALUES ('1219', '1', 'base/notice_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 15:06:39');
INSERT INTO `sp_system_operation_log` VALUES ('1220', '1', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 15:06:57');
INSERT INTO `sp_system_operation_log` VALUES ('1221', '1', 'home', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 15:06:57');
INSERT INTO `sp_system_operation_log` VALUES ('1222', '1', 'project/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 15:06:58');
INSERT INTO `sp_system_operation_log` VALUES ('1223', '1', 'architectural/index', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.25 Safari/537.36 Core/1.70.3719.400 QQBrowser/10.5.3715.400', '114.248.227.193', '[]', '2019-07-22 15:08:30');
INSERT INTO `sp_system_operation_log` VALUES ('1224', '1', 'home', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '49.234.65.38', '[]', '2019-07-22 15:14:04');
INSERT INTO `sp_system_operation_log` VALUES ('1225', '6', 'home', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-22 15:32:33');
INSERT INTO `sp_system_operation_log` VALUES ('1226', '6', 'project/index', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-22 15:32:37');
INSERT INTO `sp_system_operation_log` VALUES ('1227', '6', 'base/notice_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-22 15:32:42');
INSERT INTO `sp_system_operation_log` VALUES ('1228', '6', 'architectural/index', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-22 15:32:58');
INSERT INTO `sp_system_operation_log` VALUES ('1229', '6', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-22 15:33:06');
INSERT INTO `sp_system_operation_log` VALUES ('1230', '6', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-22 15:48:18');
INSERT INTO `sp_system_operation_log` VALUES ('1231', '0', 'architectural/index', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-22 18:20:31');
INSERT INTO `sp_system_operation_log` VALUES ('1232', '6', 'architectural/index', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-22 18:20:39');
INSERT INTO `sp_system_operation_log` VALUES ('1233', '6', 'architectural/index', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-22 18:21:24');
INSERT INTO `sp_system_operation_log` VALUES ('1234', '6', 'architectural/index', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-22 18:22:16');
INSERT INTO `sp_system_operation_log` VALUES ('1235', '6', 'architectural/index', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-22 18:25:53');
INSERT INTO `sp_system_operation_log` VALUES ('1236', '6', 'architectural/index', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-22 18:27:33');
INSERT INTO `sp_system_operation_log` VALUES ('1237', '6', 'base/getNoticeList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-22 18:28:28');
INSERT INTO `sp_system_operation_log` VALUES ('1238', '6', 'base/getNoticeInfo', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-22 18:28:58');
INSERT INTO `sp_system_operation_log` VALUES ('1239', '6', 'architectural/index', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-22 18:29:06');
INSERT INTO `sp_system_operation_log` VALUES ('1240', '6', 'base/getNoticeInfo', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-22 18:29:09');
INSERT INTO `sp_system_operation_log` VALUES ('1241', '6', 'base/getNoticeInfo', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-22 18:29:30');
INSERT INTO `sp_system_operation_log` VALUES ('1242', '2', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-22 21:12:04');
INSERT INTO `sp_system_operation_log` VALUES ('1243', '2', 'home', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-22 21:12:26');
INSERT INTO `sp_system_operation_log` VALUES ('1244', '6', 'home', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-22 21:23:29');
INSERT INTO `sp_system_operation_log` VALUES ('1245', '6', 'home', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-22 21:23:35');
INSERT INTO `sp_system_operation_log` VALUES ('1246', '6', 'home', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36', '127.0.0.1', '[]', '2019-07-22 21:23:43');
INSERT INTO `sp_system_operation_log` VALUES ('1248', '6', 'base/getNoticeInfo', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 09:35:20');
INSERT INTO `sp_system_operation_log` VALUES ('1249', '6', 'architectural/index', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 09:35:29');
INSERT INTO `sp_system_operation_log` VALUES ('1250', '6', 'base/getNoticeInfo', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 09:35:31');
INSERT INTO `sp_system_operation_log` VALUES ('1251', '6', 'base/getNoticeInfo', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 09:38:15');
INSERT INTO `sp_system_operation_log` VALUES ('1252', '6', 'base/getNoticeInfo', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 09:39:35');
INSERT INTO `sp_system_operation_log` VALUES ('1253', '6', 'base/getNoticeInfo', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 09:40:25');
INSERT INTO `sp_system_operation_log` VALUES ('1254', '6', 'base/getNoticeInfo', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 09:41:01');
INSERT INTO `sp_system_operation_log` VALUES ('1255', '6', 'base/getNoticeInfo', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 09:41:54');
INSERT INTO `sp_system_operation_log` VALUES ('1256', '6', 'base/getNoticeInfo', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 09:42:20');
INSERT INTO `sp_system_operation_log` VALUES ('1257', '6', 'base/getNoticeInfo', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 09:42:54');
INSERT INTO `sp_system_operation_log` VALUES ('1258', '6', 'base/getNoticeInfo', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 09:43:23');
INSERT INTO `sp_system_operation_log` VALUES ('1259', '6', 'base/getNoticeInfo', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 09:45:29');
INSERT INTO `sp_system_operation_log` VALUES ('1260', '6', 'base/getNoticeInfo', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 09:45:37');
INSERT INTO `sp_system_operation_log` VALUES ('1261', '6', 'base/getNoticeInfo', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 09:46:17');
INSERT INTO `sp_system_operation_log` VALUES ('1262', '6', 'base/notice_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"rows\":\"2\",\"page\":\"2\"}', '2019-07-23 09:46:20');
INSERT INTO `sp_system_operation_log` VALUES ('1263', '6', 'base/notice_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"rows\":\"2\",\"page\":\"1\"}', '2019-07-23 09:46:22');
INSERT INTO `sp_system_operation_log` VALUES ('1264', '6', 'architectural/index', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 09:46:32');
INSERT INTO `sp_system_operation_log` VALUES ('1265', '6', 'base/getNoticeInfo', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 09:46:36');
INSERT INTO `sp_system_operation_log` VALUES ('1266', '6', 'base/getNoticeInfo', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 09:46:50');
INSERT INTO `sp_system_operation_log` VALUES ('1267', '6', 'base/getNoticeInfo', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"rows\":\"2\",\"page\":\"4\"}', '2019-07-23 09:46:52');
INSERT INTO `sp_system_operation_log` VALUES ('1268', '6', 'base/getNoticeInfo', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"rows\":\"2\",\"page\":\"5\"}', '2019-07-23 09:46:54');
INSERT INTO `sp_system_operation_log` VALUES ('1269', '6', 'base/getNoticeInfo', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"rows\":\"2\",\"page\":\"5\"}', '2019-07-23 09:48:48');
INSERT INTO `sp_system_operation_log` VALUES ('1270', '6', 'base/getNoticeInfo', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"rows\":\"2\",\"page\":\"1\"}', '2019-07-23 09:48:52');
INSERT INTO `sp_system_operation_log` VALUES ('1271', '6', 'base/getNoticeInfo', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"rows\":\"2\",\"page\":\"1\"}', '2019-07-23 09:49:35');
INSERT INTO `sp_system_operation_log` VALUES ('1272', '6', 'base/getNoticeInfo', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"rows\":\"2\",\"page\":\"2\"}', '2019-07-23 09:49:41');
INSERT INTO `sp_system_operation_log` VALUES ('1273', '6', 'base/getNoticeInfo', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"rows\":\"2\",\"page\":\"3\"}', '2019-07-23 09:49:43');
INSERT INTO `sp_system_operation_log` VALUES ('1274', '6', 'base/getNoticeInfo', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"search\":\"\",\"rows\":\"2\",\"page\":\"4\"}', '2019-07-23 09:49:45');
INSERT INTO `sp_system_operation_log` VALUES ('1275', '6', 'architectural/index', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 09:49:55');
INSERT INTO `sp_system_operation_log` VALUES ('1276', '6', 'architectural/index', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 09:49:56');
INSERT INTO `sp_system_operation_log` VALUES ('1277', '6', 'architectural/add_architect', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 09:52:08');
INSERT INTO `sp_system_operation_log` VALUES ('1278', '6', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 09:52:29');
INSERT INTO `sp_system_operation_log` VALUES ('1279', '6', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 10:00:50');
INSERT INTO `sp_system_operation_log` VALUES ('1280', '6', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 10:03:06');
INSERT INTO `sp_system_operation_log` VALUES ('1281', '6', 'architectural/index', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 10:03:09');
INSERT INTO `sp_system_operation_log` VALUES ('1282', '6', 'architectural/architectureList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 10:03:28');
INSERT INTO `sp_system_operation_log` VALUES ('1283', '6', 'base/getNoticeInfo', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 10:03:36');
INSERT INTO `sp_system_operation_log` VALUES ('1284', '6', 'base/getNoticeInfo', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"search\":\"\"}', '2019-07-23 10:50:55');
INSERT INTO `sp_system_operation_log` VALUES ('1285', '6', 'base/getNoticeInfo', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"search\":\"\"}', '2019-07-23 10:53:29');
INSERT INTO `sp_system_operation_log` VALUES ('1286', '6', 'base/getNoticeInfo', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"search\":\"\"}', '2019-07-23 11:27:06');
INSERT INTO `sp_system_operation_log` VALUES ('1287', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 11:27:47');
INSERT INTO `sp_system_operation_log` VALUES ('1288', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 11:28:06');
INSERT INTO `sp_system_operation_log` VALUES ('1289', '6', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 11:28:11');
INSERT INTO `sp_system_operation_log` VALUES ('1290', '6', 'admin/role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 11:28:18');
INSERT INTO `sp_system_operation_log` VALUES ('1291', '6', 'admin/edit_role_authority/2', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 11:28:22');
INSERT INTO `sp_system_operation_log` VALUES ('1292', '6', 'admin/post_role_authority/2', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"auth_id\":{\"0\":\"10\",\"1\":\"1001\",\"2\":\"100101\",\"3\":\"100102\",\"4\":\"100103\",\"5\":\"100105\",\"6\":\"1002\",\"7\":\"100201\",\"8\":\"100202\",\"9\":\"100203\",\"10\":\"100204\",\"11\":\"100205\",\"12\":\"1003\",\"13\":\"100301\",\"14\":\"100302\",\"15\":\"100303\",\"16\":\"1004\",\"17\":\"100401\",\"19\":\"15\",\"20\":\"1501\",\"21\":\"1502\",\"22\":\"150201\",\"23\":\"150202\",\"24\":\"150203\",\"25\":\"1503\",\"26\":\"150301\",\"27\":\"150302\",\"28\":\"150303\",\"29\":\"150304\",\"30\":\"1504\",\"31\":\"150401\",\"32\":\"150402\",\"33\":\"150403\",\"34\":\"1505\",\"35\":\"150501\",\"36\":\"150502\",\"37\":\"20\",\"38\":\"2001\",\"39\":\"200101\",\"40\":\"200102\",\"41\":\"200103\",\"42\":\"200104\",\"43\":\"200105\",\"44\":\"200106\",\"45\":\"2002\",\"46\":\"200201\",\"47\":\"200202\",\"48\":\"200203\",\"49\":\"200204\",\"50\":\"200205\",\"51\":\"200206\",\"52\":\"25\",\"53\":\"2501\",\"54\":\"2502\",\"55\":\"2503\",\"56\":\"2504\",\"57\":\"2505\",\"58\":\"30\",\"59\":\"3001\",\"60\":\"3002\",\"61\":\"3003\",\"62\":\"3004\",\"63\":\"3005\",\"64\":\"35\",\"65\":\"3501\",\"66\":\"350101\",\"67\":\"350102\",\"68\":\"350103\",\"69\":\"350104\",\"70\":\"3502\",\"71\":\"350201\",\"72\":\"350202\",\"73\":\"40\",\"74\":\"4001\",\"75\":\"4002\",\"76\":\"4003\",\"77\":\"4004\",\"78\":\"4005\",\"79\":\"45\",\"80\":\"4501\",\"81\":\"450101\",\"82\":\"450102\",\"83\":\"4502\",\"84\":\"4505\",\"85\":\"50\",\"86\":\"5001\",\"87\":\"5002\",\"88\":\"5003\",\"89\":\"5004\",\"90\":\"5005\",\"91\":\"55\",\"92\":\"5501\",\"93\":\"5502\",\"94\":\"5503\",\"95\":\"5504\",\"96\":\"5505\",\"97\":\"60\",\"98\":\"6001\",\"99\":\"6002\",\"100\":\"600201\",\"101\":\"600202\",\"102\":\"600203\"},\"manage_id\":[\"15\",\"20\",\"25\",\"30\",\"35\",\"3501\",\"3502\",\"3503\",\"3504\",\"3505\",\"3506\",\"3507\",\"40\",\"45\",\"55\",\"60\",\"65\"]}', '2019-07-23 11:28:35');
INSERT INTO `sp_system_operation_log` VALUES ('1293', '6', 'admin/role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u89d2\\u8272\\u5206\\u914d\\u6743\\u9650\\u6210\\u529f\"}', '2019-07-23 11:28:37');
INSERT INTO `sp_system_operation_log` VALUES ('1294', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 11:31:29');
INSERT INTO `sp_system_operation_log` VALUES ('1295', '6', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 11:31:34');
INSERT INTO `sp_system_operation_log` VALUES ('1296', '6', 'admin/role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 11:31:40');
INSERT INTO `sp_system_operation_log` VALUES ('1297', '6', 'admin/system_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 11:31:43');
INSERT INTO `sp_system_operation_log` VALUES ('1298', '6', 'admin/menu_nav_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 11:31:46');
INSERT INTO `sp_system_operation_log` VALUES ('1299', '6', 'admin/role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 11:31:49');
INSERT INTO `sp_system_operation_log` VALUES ('1300', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 11:32:01');
INSERT INTO `sp_system_operation_log` VALUES ('1301', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 11:33:59');
INSERT INTO `sp_system_operation_log` VALUES ('1302', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 11:34:17');
INSERT INTO `sp_system_operation_log` VALUES ('1303', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 11:34:20');
INSERT INTO `sp_system_operation_log` VALUES ('1304', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 11:39:51');
INSERT INTO `sp_system_operation_log` VALUES ('1305', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 11:43:50');
INSERT INTO `sp_system_operation_log` VALUES ('1306', '0', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 15:07:56');
INSERT INTO `sp_system_operation_log` VALUES ('1307', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 15:08:04');
INSERT INTO `sp_system_operation_log` VALUES ('1308', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 15:10:20');
INSERT INTO `sp_system_operation_log` VALUES ('1309', '6', 'base/getNoticeInfo', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 15:10:25');
INSERT INTO `sp_system_operation_log` VALUES ('1310', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 15:15:45');
INSERT INTO `sp_system_operation_log` VALUES ('1311', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 15:17:04');
INSERT INTO `sp_system_operation_log` VALUES ('1312', '6', 'supplier/post_add_brand', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"brand_name\":\"SADFSD\",\"status\":\"1\"}', '2019-07-23 15:23:21');
INSERT INTO `sp_system_operation_log` VALUES ('1313', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 15:23:22');
INSERT INTO `sp_system_operation_log` VALUES ('1314', '6', 'supplier/post_add_brand', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"brand_name\":\"\\u65b0\\u54c1\\u724c\",\"status\":\"1\"}', '2019-07-23 15:23:38');
INSERT INTO `sp_system_operation_log` VALUES ('1315', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 15:23:39');
INSERT INTO `sp_system_operation_log` VALUES ('1316', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 15:23:48');
INSERT INTO `sp_system_operation_log` VALUES ('1317', '6', 'architectural/index', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 15:24:10');
INSERT INTO `sp_system_operation_log` VALUES ('1318', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 15:24:17');
INSERT INTO `sp_system_operation_log` VALUES ('1319', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 15:24:39');
INSERT INTO `sp_system_operation_log` VALUES ('1320', '6', 'architectural/index', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 15:24:58');
INSERT INTO `sp_system_operation_log` VALUES ('1321', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 15:25:01');
INSERT INTO `sp_system_operation_log` VALUES ('1322', '6', 'base/notice_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"search\":\"\"}', '2019-07-23 15:25:10');
INSERT INTO `sp_system_operation_log` VALUES ('1323', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 15:25:15');
INSERT INTO `sp_system_operation_log` VALUES ('1324', '6', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 17:20:29');
INSERT INTO `sp_system_operation_log` VALUES ('1325', '6', 'admin/role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 17:20:32');
INSERT INTO `sp_system_operation_log` VALUES ('1326', '6', 'admin/edit_role_authority/2', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 17:20:35');
INSERT INTO `sp_system_operation_log` VALUES ('1327', '6', 'admin/edit_role_authority/2', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 17:21:07');
INSERT INTO `sp_system_operation_log` VALUES ('1328', '6', 'admin/post_role_authority/2', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"auth_id\":{\"0\":\"10\",\"1\":\"1001\",\"2\":\"100101\",\"3\":\"100102\",\"4\":\"100103\",\"5\":\"100105\",\"6\":\"1002\",\"7\":\"100201\",\"8\":\"100202\",\"9\":\"100203\",\"10\":\"100204\",\"11\":\"100205\",\"12\":\"1003\",\"13\":\"100301\",\"14\":\"100302\",\"15\":\"100303\",\"16\":\"1004\",\"17\":\"100401\",\"19\":\"15\",\"20\":\"1501\",\"21\":\"1502\",\"22\":\"150201\",\"23\":\"150202\",\"24\":\"150203\",\"25\":\"1503\",\"26\":\"150301\",\"27\":\"150302\",\"28\":\"150303\",\"29\":\"150304\",\"30\":\"1504\",\"31\":\"150401\",\"32\":\"150402\",\"33\":\"150403\",\"34\":\"1505\",\"35\":\"150501\",\"36\":\"150502\",\"37\":\"20\",\"38\":\"2001\",\"39\":\"200101\",\"40\":\"200102\",\"41\":\"200103\",\"42\":\"200104\",\"43\":\"200105\",\"44\":\"200106\",\"45\":\"2002\",\"46\":\"200201\",\"47\":\"200202\",\"48\":\"200203\",\"49\":\"200204\",\"50\":\"200205\",\"51\":\"200206\",\"52\":\"25\",\"53\":\"2501\",\"54\":\"2502\",\"55\":\"2503\",\"56\":\"2504\",\"57\":\"2505\",\"58\":\"30\",\"59\":\"3001\",\"60\":\"3002\",\"61\":\"3003\",\"62\":\"3004\",\"63\":\"3005\",\"64\":\"35\",\"65\":\"3501\",\"66\":\"350101\",\"67\":\"350102\",\"68\":\"350103\",\"69\":\"350104\",\"70\":\"3502\",\"71\":\"350201\",\"72\":\"350202\",\"73\":\"40\",\"74\":\"4001\",\"75\":\"4002\",\"76\":\"4003\",\"77\":\"4004\",\"78\":\"4005\",\"79\":\"45\",\"80\":\"4501\",\"81\":\"450101\",\"82\":\"450102\",\"83\":\"450103\",\"84\":\"4502\",\"85\":\"4505\",\"86\":\"50\",\"87\":\"5001\",\"88\":\"5002\",\"89\":\"5003\",\"90\":\"5004\",\"91\":\"5005\",\"92\":\"55\",\"93\":\"5501\",\"94\":\"5502\",\"95\":\"5503\",\"96\":\"5504\",\"97\":\"5505\",\"98\":\"60\",\"99\":\"6001\",\"100\":\"6002\",\"101\":\"600201\",\"102\":\"600202\",\"103\":\"600203\"},\"manage_id\":[\"15\",\"20\",\"25\",\"30\",\"35\",\"3501\",\"3502\",\"3503\",\"3504\",\"3505\",\"3506\",\"3507\",\"40\",\"45\",\"55\",\"60\",\"65\"]}', '2019-07-23 17:21:24');
INSERT INTO `sp_system_operation_log` VALUES ('1329', '6', 'admin/role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u89d2\\u8272\\u5206\\u914d\\u6743\\u9650\\u6210\\u529f\"}', '2019-07-23 17:21:25');
INSERT INTO `sp_system_operation_log` VALUES ('1330', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 17:22:45');
INSERT INTO `sp_system_operation_log` VALUES ('1331', '6', 'supplier/post_edit_brand/2', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"brand_name\":\"\\u65b0\\u54c1\\u724c1111\",\"status\":\"1\"}', '2019-07-23 17:22:51');
INSERT INTO `sp_system_operation_log` VALUES ('1332', '6', 'supplier/post_edit_brand/2', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"brand_name\":\"\\u65b0\\u54c1\\u724c1111\",\"status\":\"1\"}', '2019-07-23 17:23:00');
INSERT INTO `sp_system_operation_log` VALUES ('1333', '6', 'supplier/post_edit_brand/2', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"brand_name\":\"\\u65b0\\u54c1\\u724c1111\",\"status\":\"1\"}', '2019-07-23 17:23:34');
INSERT INTO `sp_system_operation_log` VALUES ('1334', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 17:23:35');
INSERT INTO `sp_system_operation_log` VALUES ('1335', '6', 'supplier/supplierList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 17:44:28');
INSERT INTO `sp_system_operation_log` VALUES ('1336', '6', 'supplier/supplierList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 17:44:51');
INSERT INTO `sp_system_operation_log` VALUES ('1337', '6', 'supplier/supplierList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 17:45:25');
INSERT INTO `sp_system_operation_log` VALUES ('1338', '6', 'supplier/supplierList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 17:48:56');
INSERT INTO `sp_system_operation_log` VALUES ('1339', '6', 'supplier/supplierList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 17:49:17');
INSERT INTO `sp_system_operation_log` VALUES ('1340', '6', 'supplier/supplierList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 17:57:50');
INSERT INTO `sp_system_operation_log` VALUES ('1341', '6', 'supplier/supplierList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 17:58:13');
INSERT INTO `sp_system_operation_log` VALUES ('1342', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 17:58:23');
INSERT INTO `sp_system_operation_log` VALUES ('1343', '6', 'architectural/index', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 17:58:53');
INSERT INTO `sp_system_operation_log` VALUES ('1344', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 18:01:43');
INSERT INTO `sp_system_operation_log` VALUES ('1345', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 18:01:45');
INSERT INTO `sp_system_operation_log` VALUES ('1346', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 18:02:04');
INSERT INTO `sp_system_operation_log` VALUES ('1347', '6', 'supplier/post_add_brand', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"brand_name\":\"asfdasdfa\",\"status\":\"0\"}', '2019-07-23 18:02:10');
INSERT INTO `sp_system_operation_log` VALUES ('1348', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 18:02:11');
INSERT INTO `sp_system_operation_log` VALUES ('1349', '6', 'supplier/post_edit_brand/3', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"brand_name\":\"asfdasdfa\",\"status\":\"1\"}', '2019-07-23 18:02:24');
INSERT INTO `sp_system_operation_log` VALUES ('1350', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 18:02:25');
INSERT INTO `sp_system_operation_log` VALUES ('1351', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 18:02:50');
INSERT INTO `sp_system_operation_log` VALUES ('1352', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 18:03:44');
INSERT INTO `sp_system_operation_log` VALUES ('1353', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 18:06:22');
INSERT INTO `sp_system_operation_log` VALUES ('1354', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 18:06:50');
INSERT INTO `sp_system_operation_log` VALUES ('1355', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 18:07:53');
INSERT INTO `sp_system_operation_log` VALUES ('1356', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 18:10:44');
INSERT INTO `sp_system_operation_log` VALUES ('1357', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 18:10:59');
INSERT INTO `sp_system_operation_log` VALUES ('1358', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 18:11:02');
INSERT INTO `sp_system_operation_log` VALUES ('1359', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 18:12:44');
INSERT INTO `sp_system_operation_log` VALUES ('1360', '6', 'base/notice_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"search\":\"\"}', '2019-07-23 18:12:47');
INSERT INTO `sp_system_operation_log` VALUES ('1361', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 18:12:50');
INSERT INTO `sp_system_operation_log` VALUES ('1362', '6', 'base/notice_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"search\":\"\"}', '2019-07-23 18:12:51');
INSERT INTO `sp_system_operation_log` VALUES ('1363', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 18:12:54');
INSERT INTO `sp_system_operation_log` VALUES ('1364', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 18:13:37');
INSERT INTO `sp_system_operation_log` VALUES ('1365', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 18:16:54');
INSERT INTO `sp_system_operation_log` VALUES ('1366', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 18:24:03');
INSERT INTO `sp_system_operation_log` VALUES ('1367', '6', 'supplier/brandList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 18:24:33');
INSERT INTO `sp_system_operation_log` VALUES ('1368', '6', 'supplier/supplierList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 18:25:14');
INSERT INTO `sp_system_operation_log` VALUES ('1369', '6', 'supplier/supplierList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 18:25:40');
INSERT INTO `sp_system_operation_log` VALUES ('1370', '6', 'supplier/supplierList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 18:27:23');
INSERT INTO `sp_system_operation_log` VALUES ('1371', '6', 'supplier/supplierList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 18:29:23');
INSERT INTO `sp_system_operation_log` VALUES ('1372', '6', 'supplier/supplierList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 18:47:38');
INSERT INTO `sp_system_operation_log` VALUES ('1373', '6', 'supplier/supplierList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 18:49:15');
INSERT INTO `sp_system_operation_log` VALUES ('1374', '6', 'supplier/supplierList', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 18:51:01');
INSERT INTO `sp_system_operation_log` VALUES ('1375', '6', 'admin/user_role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 18:54:26');
INSERT INTO `sp_system_operation_log` VALUES ('1376', '6', 'admin/role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 18:54:29');
INSERT INTO `sp_system_operation_log` VALUES ('1377', '6', 'admin/edit_role_authority/15', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 18:54:31');
INSERT INTO `sp_system_operation_log` VALUES ('1378', '6', 'admin/edit_role_authority/15', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 19:07:36');
INSERT INTO `sp_system_operation_log` VALUES ('1379', '6', 'admin/edit_role_authority/15', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 19:08:37');
INSERT INTO `sp_system_operation_log` VALUES ('1380', '6', 'admin/edit_role_authority/15', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 19:13:23');
INSERT INTO `sp_system_operation_log` VALUES ('1381', '6', 'admin/edit_role_authority/15', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 19:15:46');
INSERT INTO `sp_system_operation_log` VALUES ('1382', '6', 'admin/edit_role_authority/15', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 19:16:43');
INSERT INTO `sp_system_operation_log` VALUES ('1383', '6', 'admin/edit_role_authority/15', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 19:17:51');
INSERT INTO `sp_system_operation_log` VALUES ('1384', '6', 'admin/edit_role_authority/15', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 19:18:41');
INSERT INTO `sp_system_operation_log` VALUES ('1385', '6', 'admin/edit_role_authority/15', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 19:19:48');
INSERT INTO `sp_system_operation_log` VALUES ('1386', '6', 'admin/edit_role_authority/15', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 19:20:03');
INSERT INTO `sp_system_operation_log` VALUES ('1387', '6', 'admin/edit_role_authority/15', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 19:24:56');
INSERT INTO `sp_system_operation_log` VALUES ('1388', '6', 'admin/edit_role_authority/15', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 19:25:19');
INSERT INTO `sp_system_operation_log` VALUES ('1389', '6', 'admin/edit_role_authority/15', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 19:26:58');
INSERT INTO `sp_system_operation_log` VALUES ('1390', '6', 'admin/edit_role_authority/15', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 19:27:36');
INSERT INTO `sp_system_operation_log` VALUES ('1391', '6', 'admin/edit_role_authority/15', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 19:27:46');
INSERT INTO `sp_system_operation_log` VALUES ('1392', '6', 'admin/edit_role_authority/15', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 19:28:58');
INSERT INTO `sp_system_operation_log` VALUES ('1393', '6', 'admin/edit_role_authority/15', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 19:29:03');
INSERT INTO `sp_system_operation_log` VALUES ('1394', '6', 'admin/edit_role_authority/15', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 19:29:23');
INSERT INTO `sp_system_operation_log` VALUES ('1395', '6', 'admin/edit_role_authority/15', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 19:29:29');
INSERT INTO `sp_system_operation_log` VALUES ('1396', '6', 'admin/edit_role_authority/15', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 19:30:40');
INSERT INTO `sp_system_operation_log` VALUES ('1397', '6', 'admin/edit_role_authority/15', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 19:31:10');
INSERT INTO `sp_system_operation_log` VALUES ('1398', '6', 'admin/edit_role_authority/15', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 19:32:09');
INSERT INTO `sp_system_operation_log` VALUES ('1399', '6', 'admin/edit_role_authority/15', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 19:32:22');
INSERT INTO `sp_system_operation_log` VALUES ('1400', '6', 'admin/role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 19:32:36');
INSERT INTO `sp_system_operation_log` VALUES ('1401', '6', 'admin/edit_role_authority/2', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '[]', '2019-07-23 19:32:41');
INSERT INTO `sp_system_operation_log` VALUES ('1402', '6', 'admin/post_role_authority/2', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"auth_id\":{\"0\":\"10\",\"1\":\"1001\",\"2\":\"100101\",\"3\":\"100102\",\"4\":\"100103\",\"5\":\"100105\",\"6\":\"1002\",\"7\":\"100201\",\"8\":\"100202\",\"9\":\"100203\",\"10\":\"100204\",\"11\":\"100205\",\"12\":\"1003\",\"13\":\"100301\",\"14\":\"100302\",\"15\":\"100303\",\"16\":\"1004\",\"17\":\"100401\",\"19\":\"15\",\"20\":\"1501\",\"21\":\"1502\",\"22\":\"150201\",\"23\":\"150202\",\"24\":\"150203\",\"25\":\"1503\",\"26\":\"150301\",\"27\":\"150302\",\"28\":\"150303\",\"29\":\"150304\",\"30\":\"1504\",\"31\":\"150401\",\"32\":\"150402\",\"33\":\"150403\",\"34\":\"1505\",\"35\":\"150501\",\"36\":\"150502\",\"37\":\"20\",\"38\":\"2001\",\"39\":\"200101\",\"40\":\"200102\",\"41\":\"200103\",\"42\":\"200104\",\"43\":\"200105\",\"44\":\"200106\",\"45\":\"2002\",\"46\":\"200201\",\"47\":\"200202\",\"48\":\"200203\",\"49\":\"200204\",\"50\":\"200205\",\"51\":\"200206\",\"52\":\"25\",\"53\":\"2501\",\"54\":\"2502\",\"55\":\"2503\",\"56\":\"2504\",\"57\":\"2505\",\"58\":\"30\",\"59\":\"3001\",\"60\":\"3002\",\"61\":\"3003\",\"62\":\"3004\",\"63\":\"3005\",\"64\":\"35\",\"65\":\"3501\",\"66\":\"350101\",\"67\":\"350102\",\"68\":\"350103\",\"69\":\"350104\",\"70\":\"3502\",\"71\":\"350201\",\"72\":\"350202\",\"73\":\"40\",\"74\":\"4001\",\"75\":\"4002\",\"76\":\"4003\",\"77\":\"4004\",\"78\":\"4005\",\"79\":\"45\",\"80\":\"4501\",\"81\":\"450101\",\"82\":\"450102\",\"83\":\"450103\",\"84\":\"4502\",\"88\":\"50\",\"89\":\"5001\",\"90\":\"5002\",\"91\":\"5003\",\"92\":\"5004\",\"93\":\"5005\",\"94\":\"55\",\"95\":\"5501\",\"96\":\"5502\",\"97\":\"5503\",\"98\":\"5504\",\"99\":\"5505\",\"100\":\"60\",\"101\":\"6001\",\"102\":\"6002\",\"103\":\"600201\",\"104\":\"600202\",\"105\":\"600203\"},\"manage_id\":[\"15\",\"20\",\"25\",\"30\",\"35\",\"3501\",\"3502\",\"3503\",\"3504\",\"3505\",\"3506\",\"40\",\"45\",\"55\",\"60\",\"65\"]}', '2019-07-23 19:32:47');
INSERT INTO `sp_system_operation_log` VALUES ('1403', '6', 'admin/role_list', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', '127.0.0.1', '{\"status\":\"1\",\"notice\":\"\\u89d2\\u8272\\u5206\\u914d\\u6743\\u9650\\u6210\\u529f\"}', '2019-07-23 19:32:48');

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
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1' COMMENT '用户状态 0待审核 1活跃 -1审核未通过 -2禁止用户',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sp_users
-- ----------------------------
INSERT INTO `sp_users` VALUES ('1', '瑶(总经理)', 'admin@163.com', '$2y$10$E3jO81KFtRTmhK47CIVF8OSBJUuakYqR02iOyDVUlIvYOaruqciBW', 'XFSpxNh2GwLPZnwb3Rq36ZeIarhYE5wjefI5bk4DJ8zOAibmzemIt9U2YvvN', '2019-07-20 16:40:02', '2019-07-22 11:28:55', '1');
INSERT INTO `sp_users` VALUES ('2', 'test4', 'test4@qq.com', '$2y$10$oTPkMarBLf81rggDre0pE.R2gsQWyU0zIj92JTzYGjPC.iEKYviw.', 'y095m6Z0JOuchRM1E46AU3qXykve1GRLkrdWI8qps6MjDAzJkbK92McnOTeo', '2019-07-22 11:05:53', '2019-07-22 21:23:26', '1');
INSERT INTO `sp_users` VALUES ('3', 'test2', 'test2@qq.com', '$2y$10$aKSLnSHm5wcw886HooDdmuXMkjjpw7WwZVR4pKzcZnLnFxzuU5nge', null, '2019-07-22 10:59:51', '2019-07-22 11:17:51', '1');
INSERT INTO `sp_users` VALUES ('4', 'test1', 'test1@qq.com', '$2y$10$d.GnIWS4eZ/vaSwHeKM8ReUwxUkUp6dULcAFtkBPWdeFM2HsrhXDK', '2qGuCWul8d3fSU5qboEZq31Wq3LZdNiSuYSSbnj1E0EgIt053VCm6F7GIflR', '2019-07-22 11:07:09', '2019-07-22 11:17:49', '1');
INSERT INTO `sp_users` VALUES ('5', 'test3', 'test3@qq.com', '$2y$10$rP2v69M86nhP6iu3e5O3a.g6INplFnfw0y4wRVaCiIotQM4IqZRpu', null, '2019-07-22 11:05:03', '2019-07-22 11:17:50', '1');
INSERT INTO `sp_users` VALUES ('6', '王括', 'everup@163.com', '$2y$10$4ln/6wTn65YCk40M5azi5enoxwL2F1oh179Joi7WDhL23BqPDECPi', null, '2019-07-22 10:21:48', '2019-07-22 10:28:10', '1');
INSERT INTO `sp_users` VALUES ('7', 'test5', 'test5@qq.com', '$2y$10$GDj6tdpsmW8rvD0bhi61F.4W5u75CUgl.l/YrVTlIRe3HUxoT.E9e', 'yodaiDFf7X6Pl8doFE2GUGlhtpOMASLesgWGjCwDeGJuWnI3CeBKuFNgVXQV', '2019-07-22 11:06:58', '2019-07-22 11:26:32', '1');
INSERT INTO `sp_users` VALUES ('8', 'test6', 'test6@qq.com', '$2y$10$jETr86w49EhZGsAMwAkleeomZY3BZln3Gi5N4y2saqNq2R7KktTHS', 'vIgfFv85klz0eA5g0hTYqVPUi0B7URgf406wiLCcFAoklmoPR9NWg46pDZ3e', '2019-07-22 11:08:21', '2019-07-22 11:29:24', '1');
INSERT INTO `sp_users` VALUES ('9', 'test7', 'test7@qq.com', '$2y$10$Vt7XualSar7inVPa/L0KAO3QniMm2pZr76U5jaXixhcqPLEGNggRK', null, '2019-07-22 11:08:56', '2019-07-22 11:17:45', '1');
INSERT INTO `sp_users` VALUES ('10', 'test8', 'test8@qq.com', '$2y$10$Kztt9fauNc5vA4jcI48ohOzdNtDKn2CtaK8yWuDZncAkJYAN1z8tm', null, '2019-07-22 11:09:22', '2019-07-22 11:17:44', '1');
INSERT INTO `sp_users` VALUES ('11', 'test9', 'test9@qq.com', '$2y$10$4ln/6wTn65YCk40M5azi5enoxwL2F1oh179Joi7WDhL23BqPDECPi', null, '2019-07-22 11:09:54', '2019-07-22 11:17:43', '1');
INSERT INTO `sp_users` VALUES ('12', 'test10', 'test10@qq.com', '$2y$10$hc7cNJhcXocWuDVAH2bulej1e25Z4iMWBVEpEwp/F4xmhAqm07252', null, '2019-07-22 11:10:42', '2019-07-22 11:17:43', '1');
INSERT INTO `sp_users` VALUES ('13', 'test11', 'test11@qq.com', '$2y$10$1VSCKro0bW4652VedicnQO8GRTRNDbWwUVZF4/PNmxbhEBXxbNP2C', null, '2019-07-22 11:11:42', '2019-07-22 11:18:14', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_user_role
-- ----------------------------
INSERT INTO `sp_user_role` VALUES ('1', '1', '1', '管理员', '0', '2019-06-26 18:05:21', '2019-07-20 16:40:02');
INSERT INTO `sp_user_role` VALUES ('2', '5', '1', '管理员', '0', '2019-07-09 06:41:20', '2019-07-22 11:05:03');
INSERT INTO `sp_user_role` VALUES ('3', '5', '1', '管理员', '0', '2019-07-09 07:02:09', '2019-07-22 11:05:03');
INSERT INTO `sp_user_role` VALUES ('4', '5', '2', '销售人员', '0', '2019-07-09 07:02:09', '2019-07-22 11:05:03');
INSERT INTO `sp_user_role` VALUES ('5', '2', '2', '销售人员', '0', '2019-07-09 07:02:16', '2019-07-22 11:05:53');
INSERT INTO `sp_user_role` VALUES ('6', '2', '3', '财务人员', '0', '2019-07-09 07:02:16', '2019-07-22 11:05:53');
INSERT INTO `sp_user_role` VALUES ('7', '6', '1', '管理员', '0', '2019-07-09 07:34:24', '2019-07-22 10:21:48');
INSERT INTO `sp_user_role` VALUES ('8', '6', '1', '管理员', '0', '2019-07-09 07:34:50', '2019-07-22 10:21:48');
INSERT INTO `sp_user_role` VALUES ('9', '2', '1', null, '0', null, '2019-07-22 11:05:53');
INSERT INTO `sp_user_role` VALUES ('10', '2', '1', '管理员', '0', '2019-07-13 15:26:27', '2019-07-22 11:05:53');
INSERT INTO `sp_user_role` VALUES ('11', '2', '2', '销售人员', '0', '2019-07-13 15:26:27', '2019-07-22 11:05:53');
INSERT INTO `sp_user_role` VALUES ('12', '2', '3', '财务人员', '0', '2019-07-13 15:26:27', '2019-07-22 11:05:53');
INSERT INTO `sp_user_role` VALUES ('13', '2', '5', '建筑工程管理', '0', '2019-07-13 15:26:27', '2019-07-22 11:05:53');
INSERT INTO `sp_user_role` VALUES ('14', '2', '1', '管理员', '0', '2019-07-14 14:17:52', '2019-07-22 11:05:53');
INSERT INTO `sp_user_role` VALUES ('15', '2', '5', '建筑工程管理', '0', '2019-07-14 14:17:52', '2019-07-22 11:05:53');
INSERT INTO `sp_user_role` VALUES ('16', '5', '1', '总经理', '0', '2019-07-16 16:24:20', '2019-07-22 11:05:03');
INSERT INTO `sp_user_role` VALUES ('17', '5', '2', '超级管理员', '0', '2019-07-16 16:24:20', '2019-07-22 11:05:03');
INSERT INTO `sp_user_role` VALUES ('18', '5', '3', '财务人员', '0', '2019-07-16 16:24:31', '2019-07-22 11:05:03');
INSERT INTO `sp_user_role` VALUES ('19', '1', '1', '总经理', '0', '2019-07-16 16:24:50', '2019-07-20 16:40:02');
INSERT INTO `sp_user_role` VALUES ('20', '2', '2', '超级管理员', '0', '2019-07-16 16:25:01', '2019-07-22 11:05:53');
INSERT INTO `sp_user_role` VALUES ('21', '2', '5', '建筑工程管理', '0', '2019-07-16 16:25:01', '2019-07-22 11:05:53');
INSERT INTO `sp_user_role` VALUES ('22', '6', '2', '超级管理员', '0', '2019-07-16 16:26:03', '2019-07-22 10:21:48');
INSERT INTO `sp_user_role` VALUES ('23', '1', '1', '总经理', '0', '2019-07-16 16:26:45', '2019-07-20 16:40:02');
INSERT INTO `sp_user_role` VALUES ('24', '2', '2', '超级管理员', '0', '2019-07-16 16:27:15', '2019-07-22 11:05:53');
INSERT INTO `sp_user_role` VALUES ('25', '2', '5', '建筑工程管理', '0', '2019-07-16 16:27:15', '2019-07-22 11:05:53');
INSERT INTO `sp_user_role` VALUES ('26', '4', '1', '总经理', '0', '2019-07-20 11:32:29', '2019-07-22 11:07:09');
INSERT INTO `sp_user_role` VALUES ('27', '4', '2', '超级管理员', '0', '2019-07-20 11:32:29', '2019-07-22 11:07:09');
INSERT INTO `sp_user_role` VALUES ('28', '4', '3', '财务人员', '0', '2019-07-20 11:32:29', '2019-07-22 11:07:09');
INSERT INTO `sp_user_role` VALUES ('29', '4', '4', '财务人员1', '0', '2019-07-20 11:32:29', '2019-07-22 11:07:09');
INSERT INTO `sp_user_role` VALUES ('30', '4', '4', '财务人员1', '0', '2019-07-20 16:28:52', '2019-07-22 11:07:09');
INSERT INTO `sp_user_role` VALUES ('31', '1', '1', '总经理', '1', '2019-07-20 16:40:02', '2019-07-20 16:40:02');
INSERT INTO `sp_user_role` VALUES ('32', '4', '5', '建筑工程管理', '0', '2019-07-20 21:33:02', '2019-07-22 11:07:09');
INSERT INTO `sp_user_role` VALUES ('33', '4', '3', '财务人员', '0', '2019-07-20 21:33:27', '2019-07-22 11:07:09');
INSERT INTO `sp_user_role` VALUES ('34', '6', '2', '超级管理员', '1', '2019-07-22 10:21:48', '2019-07-22 10:21:48');
INSERT INTO `sp_user_role` VALUES ('35', '4', '5', '建筑设计管理', '0', '2019-07-22 10:59:00', '2019-07-22 11:07:09');
INSERT INTO `sp_user_role` VALUES ('36', '3', '5', '建筑设计管理', '1', '2019-07-22 10:59:51', '2019-07-22 10:59:51');
INSERT INTO `sp_user_role` VALUES ('37', '5', '13', '设计总监', '1', '2019-07-22 11:05:03', '2019-07-22 11:05:03');
INSERT INTO `sp_user_role` VALUES ('38', '2', '9', '销售经理', '1', '2019-07-22 11:05:53', '2019-07-22 11:05:53');
INSERT INTO `sp_user_role` VALUES ('39', '7', '10', '销售总监', '0', '2019-07-22 11:06:25', '2019-07-22 11:06:58');
INSERT INTO `sp_user_role` VALUES ('40', '7', '10', '销售总监', '1', '2019-07-22 11:06:58', '2019-07-22 11:06:58');
INSERT INTO `sp_user_role` VALUES ('41', '4', '5', '建筑设计师', '1', '2019-07-22 11:07:09', '2019-07-22 11:07:09');
INSERT INTO `sp_user_role` VALUES ('42', '8', '14', '预算专员', '1', '2019-07-22 11:08:21', '2019-07-22 11:08:21');
INSERT INTO `sp_user_role` VALUES ('43', '9', '15', '预算总监', '1', '2019-07-22 11:08:56', '2019-07-22 11:08:56');
INSERT INTO `sp_user_role` VALUES ('44', '10', '11', '工程经理', '1', '2019-07-22 11:09:22', '2019-07-22 11:09:22');
INSERT INTO `sp_user_role` VALUES ('45', '11', '12', '工程总监', '1', '2019-07-22 11:09:54', '2019-07-22 11:09:54');
INSERT INTO `sp_user_role` VALUES ('46', '12', '9', '销售经理', '1', '2019-07-22 11:10:42', '2019-07-22 11:10:42');
INSERT INTO `sp_user_role` VALUES ('47', '13', '14', '预算专员', '0', '2019-07-22 11:11:24', '2019-07-22 11:11:42');
INSERT INTO `sp_user_role` VALUES ('48', '13', '12', '工程总监', '0', '2019-07-22 11:11:38', '2019-07-22 11:11:42');
INSERT INTO `sp_user_role` VALUES ('49', '13', '14', '预算专员', '0', '2019-07-22 11:11:38', '2019-07-22 11:11:42');
INSERT INTO `sp_user_role` VALUES ('50', '13', '14', '预算专员', '1', '2019-07-22 11:11:42', '2019-07-22 11:11:42');
