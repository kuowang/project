/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : project

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-07-17 10:09:22
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
  PRIMARY KEY (`id`),
  KEY `sub_system_code` (`sub_system_code`(191)) USING BTREE,
  KEY `sub_system_name` (`sub_system_name`(191)) USING BTREE,
  KEY `architectural_id` (`architectural_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_architectural_sub_system
-- ----------------------------
INSERT INTO `sp_architectural_sub_system` VALUES ('2', '6', '基础系统（混凝土条形基础）', '1001-1', 'GK_JC_01', '0', '1', '管理员', '1', '2019-07-13', '2019-07-14');
INSERT INTO `sp_architectural_sub_system` VALUES ('3', '6', '基础系统（混凝土构造柱圈梁）', '1001-2', 'GK_JC_02', '1', '2', '管理员', '1', '2019-07-13', '2019-07-14');
INSERT INTO `sp_architectural_sub_system` VALUES ('4', '6', '基础系统（混凝土筏板基础）', '1001-03', 'GK_JC_03', '1', '3', '管理员', '1', '2019-07-13', '2019-07-14');
INSERT INTO `sp_architectural_sub_system` VALUES ('5', '7', '基础系统（混凝土构造柱圈梁）', '100201', 'GK_JF_02', '1', '1', '管理员', '1', '2019-07-13', '2019-07-14');
INSERT INTO `sp_architectural_sub_system` VALUES ('6', '8', '外墙系统', '1003-1', 'WQ-XT-01', '1', '1', '管理员', '1', '2019-07-14', '2019-07-14');
INSERT INTO `sp_architectural_sub_system` VALUES ('7', '8', '外墙系统', '1003-2', 'WQ-XT-2', '1', '2', '管理员', '1', '2019-07-14', '2019-07-14');
INSERT INTO `sp_architectural_sub_system` VALUES ('8', '6', '测试', '1100', ' GJ', '1', '7', '管理员', '1', '2019-07-14', '2019-07-14');
INSERT INTO `sp_architectural_sub_system` VALUES ('9', '7', '系统工程子系统', '100202', 'GK_JF-03', '1', '2', '管理员', '1', '2019-07-14', '2019-07-14');
INSERT INTO `sp_architectural_sub_system` VALUES ('10', '9', '墙体子系统', '1004-01', 'QT-XT-01', '1', '1', '管理员', '1', '2019-07-14', '2019-07-14');
INSERT INTO `sp_architectural_sub_system` VALUES ('11', '9', '墙体子系统2', '1004-02', 'QT-XT-02', '1', '2', '管理员', '1', '2019-07-14', '2019-07-14');
INSERT INTO `sp_architectural_sub_system` VALUES ('12', '10', '屋面子系统', '1005-01', 'WM-xt-01', '1', '1', '管理员', '1', '2019-07-14', '2019-07-14');
INSERT INTO `sp_architectural_sub_system` VALUES ('13', '11', '檐口子系统', '1006-01', 'WY-KF-01', '1', '1', '管理员', '1', '2019-07-14', '2019-07-14');
INSERT INTO `sp_architectural_sub_system` VALUES ('14', '12', '楼板子系统', '1007-01', 'LB-XT-01', '1', '1', '管理员', '1', '2019-07-14', '2019-07-14');
INSERT INTO `sp_architectural_sub_system` VALUES ('15', '13', '吊顶子系统', '1008-1', 'DD-XT-01', '1', '1', '管理员', '1', '2019-07-14', '2019-07-14');

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
  PRIMARY KEY (`id`),
  KEY `system_code` (`system_code`(191)) USING BTREE,
  KEY `system_name` (`system_name`(191)) USING BTREE,
  KEY `engineering_name` (`engineering_name`(191)) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_architectural_system
-- ----------------------------
INSERT INTO `sp_architectural_system` VALUES ('6', '基础系统', '基础工程', '1001', '1', '1', '2019-07-14', '2019-07-14', '管理员');
INSERT INTO `sp_architectural_system` VALUES ('7', '系统工程', '工程', '1002', '1', '1', '2019-07-14', '2019-07-14', '管理员');
INSERT INTO `sp_architectural_system` VALUES ('8', '外墙系统', '墙体工程', '1003', '1', '1', '2019-07-14', '2019-07-14', '管理员');
INSERT INTO `sp_architectural_system` VALUES ('9', '内墙系统', '墙体工程', '1004', '1', '1', '2019-07-14', '2019-07-14', '管理员');
INSERT INTO `sp_architectural_system` VALUES ('10', '屋面系统', '屋面工程', '1005', '1', '1', '2019-07-14', '2019-07-14', '管理员');
INSERT INTO `sp_architectural_system` VALUES ('11', '檐口系统', '檐口工程', '1006', '1', '1', '2019-07-14', '2019-07-14', '管理员');
INSERT INTO `sp_architectural_system` VALUES ('12', '楼板系统', '楼板工程', '1007', '1', '1', '2019-07-14', '2019-07-14', '管理员');
INSERT INTO `sp_architectural_system` VALUES ('13', '吊顶系统', '吊顶工程', '1008', '1', '1', '2019-07-14', '2019-07-14', '管理员');
INSERT INTO `sp_architectural_system` VALUES ('14', '外窗系统', '外窗工程', '1009', '1', '1', '2019-07-14', '2019-07-14', '管理员');
INSERT INTO `sp_architectural_system` VALUES ('15', '外门系统', '外门工程', '1010', '1', '1', '2019-07-14', '2019-07-14', '管理员');
INSERT INTO `sp_architectural_system` VALUES ('16', '细部装饰系统', '细部装饰工程', '1011', '1', '1', '2019-07-14', '2019-07-14', '管理员');
INSERT INTO `sp_architectural_system` VALUES ('17', '给排水系统', '给排水工程', '1012', '1', '1', '2019-07-14', '2019-07-14', '管理员');
INSERT INTO `sp_architectural_system` VALUES ('18', '电器系统', '电器工程', '1013', '1', '1', '2019-07-14', '2019-07-14', '管理员');

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
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4;

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
INSERT INTO `sp_authority` VALUES ('83', '45', '0', '1', '1', '供应商管理', '&#xe052;', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('84', '4501', '45', '0', '2', '查询信息列表', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('85', '4502', '45', '0', '2', '添加', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('86', '4503', '45', '0', '2', '编辑', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('87', '4504', '45', '0', '2', '删除', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('88', '4505', '45', '0', '2', '查看详情', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
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
INSERT INTO `sp_authority` VALUES ('104', '600201', '6002', '0', '3', '添加公告', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('105', '600202', '6002', '0', '3', '编辑公告', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('106', '600203', '6002', '0', '3', '删除公告', '', '', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('107', '350104', '3501', '0', '3', '状态更改', null, '/architectural/edit_architect_status', '1', '2019-07-14 17:00:45', '2019-07-14 17:00:48', '0');
INSERT INTO `sp_authority` VALUES ('108', '350201', '3502', '0', '3', '搜索', null, '/architectural/architectureList', '1', '2019-07-14 17:00:51', '2019-07-14 17:00:55', '1');
INSERT INTO `sp_authority` VALUES ('109', '350202', '3502', '0', '3', '编辑', null, '/architectural/edit_material', '1', '2019-07-14 17:00:59', '2019-07-14 17:01:01', '1');
INSERT INTO `sp_authority` VALUES ('110', '1005', '10', '1', '2', '审核用户', null, '/admin/examine_user', '1', null, null, '0');

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
INSERT INTO `sp_manage_authority` VALUES ('17', '3506', '新增建筑子系统', '35', '2', '1', '2019-07-16 10:31:09', '2019-07-16 10:31:09');
INSERT INTO `sp_manage_authority` VALUES ('18', '3507', '编辑建筑子系统', '35', '2', '1', '2019-07-16 10:31:09', '2019-07-16 10:31:09');

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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_material
-- ----------------------------
INSERT INTO `sp_material` VALUES ('1', '6', '2', '啊', '是', '的', '否', '个', '阿斯顿发送到', '啊', '12.312', '11', '1', '1', '测试人员', null, '2019-07-15');
INSERT INTO `sp_material` VALUES ('2', '6', '2', '第二行', '编码', '是', '位置', '用途', '代码', '要', '11231', '2', '1', '1', '测试人员', '2019-07-14', '2019-07-15');

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
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` varchar(1000) DEFAULT NULL COMMENT '内容',
  `uid` int(11) DEFAULT NULL COMMENT '操作人id',
  `operator` varchar(100) DEFAULT NULL COMMENT '操作人',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态1显示 0不显示',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_notice
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_role
-- ----------------------------
INSERT INTO `sp_role` VALUES ('1', '总经理', '1', '2019-06-26 09:36:44', '2019-06-26 09:36:46');
INSERT INTO `sp_role` VALUES ('2', '超级管理员', '1', '2019-06-29 08:41:44', '2019-06-29 08:41:44');
INSERT INTO `sp_role` VALUES ('3', '财务人员', '1', '2019-06-29 08:42:38', '2019-06-29 08:42:38');
INSERT INTO `sp_role` VALUES ('4', '财务人员1', '1', '2019-06-29 08:42:50', '2019-07-09 09:54:51');
INSERT INTO `sp_role` VALUES ('5', '建筑工程管理', '1', '2019-07-12 10:26:14', '2019-07-13 15:25:59');

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
) ENGINE=InnoDB AUTO_INCREMENT=1097 DEFAULT CHARSET=utf8mb4;

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
INSERT INTO `sp_role_authority` VALUES ('926', '5', '10', '0', '1', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('927', '5', '1001', '10', '2', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('928', '5', '100101', '1001', '3', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('929', '5', '100102', '1001', '3', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('930', '5', '100103', '1001', '3', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('931', '5', '100105', '1001', '3', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('932', '5', '1002', '10', '2', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('933', '5', '100201', '1002', '3', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('934', '5', '100202', '1002', '3', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('935', '5', '100203', '1002', '3', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('936', '5', '100204', '1002', '3', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('937', '5', '100205', '1002', '3', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('938', '5', '1003', '10', '2', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('939', '5', '100301', '1003', '3', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('940', '5', '100302', '1003', '3', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('941', '5', '100303', '1003', '3', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('942', '5', '1004', '10', '2', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('943', '5', '100401', '1004', '3', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('944', '5', '1005', '10', '2', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('945', '5', '15', '0', '1', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('946', '5', '1501', '15', '2', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('947', '5', '1502', '15', '2', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('948', '5', '150201', '1502', '3', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('949', '5', '150202', '1502', '3', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('950', '5', '150203', '1502', '3', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('951', '5', '1503', '15', '2', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('952', '5', '150301', '1503', '3', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('953', '5', '150302', '1503', '3', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('954', '5', '150303', '1503', '3', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('955', '5', '150304', '1503', '3', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('956', '5', '1504', '15', '2', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('957', '5', '150401', '1504', '3', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('958', '5', '150402', '1504', '3', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('959', '5', '150403', '1504', '3', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('960', '5', '1505', '15', '2', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('961', '5', '150501', '1505', '3', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('962', '5', '150502', '1505', '3', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('963', '5', '35', '0', '1', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('964', '5', '3501', '35', '2', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('965', '5', '350101', '3501', '3', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('966', '5', '350102', '3501', '3', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('967', '5', '350103', '3501', '3', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('968', '5', '350104', '3501', '3', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('969', '5', '3502', '35', '2', '1', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15');
INSERT INTO `sp_role_authority` VALUES ('970', '1', '10', '0', '1', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('971', '1', '1001', '10', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('972', '1', '100101', '1001', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('973', '1', '100102', '1001', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('974', '1', '100103', '1001', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('975', '1', '100105', '1001', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('976', '1', '1002', '10', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('977', '1', '100201', '1002', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('978', '1', '100202', '1002', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('979', '1', '100203', '1002', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('980', '1', '100204', '1002', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('981', '1', '100205', '1002', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('982', '1', '1003', '10', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('983', '1', '100301', '1003', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('984', '1', '100302', '1003', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('985', '1', '100303', '1003', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('986', '1', '1004', '10', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('987', '1', '100401', '1004', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('988', '1', '1005', '10', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('989', '1', '15', '0', '1', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('990', '1', '1501', '15', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('991', '1', '1502', '15', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('992', '1', '150201', '1502', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('993', '1', '150202', '1502', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('994', '1', '150203', '1502', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('995', '1', '1503', '15', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('996', '1', '150301', '1503', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('997', '1', '150302', '1503', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('998', '1', '150303', '1503', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('999', '1', '150304', '1503', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1000', '1', '1504', '15', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1001', '1', '150401', '1504', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1002', '1', '150402', '1504', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1003', '1', '150403', '1504', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1004', '1', '1505', '15', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1005', '1', '150501', '1505', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1006', '1', '150502', '1505', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1007', '1', '20', '0', '1', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1008', '1', '2001', '20', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1009', '1', '200101', '2001', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1010', '1', '200102', '2001', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1011', '1', '200103', '2001', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1012', '1', '200104', '2001', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1013', '1', '200105', '2001', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1014', '1', '200106', '2001', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1015', '1', '2002', '20', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1016', '1', '200201', '2002', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1017', '1', '200202', '2002', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1018', '1', '200203', '2002', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1019', '1', '200204', '2002', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1020', '1', '200205', '2002', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1021', '1', '200206', '2002', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1022', '1', '25', '0', '1', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1023', '1', '2501', '25', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1024', '1', '2502', '25', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1025', '1', '2503', '25', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1026', '1', '2504', '25', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1027', '1', '2505', '25', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1028', '1', '30', '0', '1', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1029', '1', '3001', '30', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1030', '1', '3002', '30', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1031', '1', '3003', '30', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1032', '1', '3004', '30', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1033', '1', '3005', '30', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1034', '1', '35', '0', '1', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1035', '1', '3501', '35', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1036', '1', '350101', '3501', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1037', '1', '350102', '3501', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1038', '1', '350103', '3501', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1039', '1', '350104', '3501', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1040', '1', '3502', '35', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1041', '1', '350201', '3502', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1042', '1', '350202', '3502', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1043', '1', '40', '0', '1', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1044', '1', '4001', '40', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1045', '1', '4002', '40', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1046', '1', '4003', '40', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1047', '1', '4004', '40', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1048', '1', '4005', '40', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1049', '1', '45', '0', '1', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1050', '1', '4501', '45', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1051', '1', '4502', '45', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1052', '1', '4503', '45', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1053', '1', '4504', '45', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1054', '1', '4505', '45', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1055', '1', '50', '0', '1', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1056', '1', '5001', '50', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1057', '1', '5002', '50', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1058', '1', '5003', '50', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1059', '1', '5004', '50', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1060', '1', '5005', '50', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1061', '1', '55', '0', '1', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1062', '1', '5501', '55', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1063', '1', '5502', '55', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1064', '1', '5503', '55', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1065', '1', '5504', '55', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1066', '1', '5505', '55', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1067', '1', '60', '0', '1', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1068', '1', '6001', '60', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1069', '1', '6002', '60', '2', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1070', '1', '600201', '6002', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1071', '1', '600202', '6002', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1072', '1', '600203', '6002', '3', '1', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40');
INSERT INTO `sp_role_authority` VALUES ('1073', '2', '10', '0', '1', '1', '2', '2019-07-17 10:01:11', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('1074', '2', '1001', '10', '2', '1', '2', '2019-07-17 10:01:11', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('1075', '2', '100101', '1001', '3', '1', '2', '2019-07-17 10:01:11', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('1076', '2', '100102', '1001', '3', '1', '2', '2019-07-17 10:01:11', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('1077', '2', '100103', '1001', '3', '1', '2', '2019-07-17 10:01:11', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('1078', '2', '100105', '1001', '3', '1', '2', '2019-07-17 10:01:11', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('1079', '2', '1002', '10', '2', '1', '2', '2019-07-17 10:01:11', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('1080', '2', '100201', '1002', '3', '1', '2', '2019-07-17 10:01:11', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('1081', '2', '100202', '1002', '3', '1', '2', '2019-07-17 10:01:11', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('1082', '2', '100203', '1002', '3', '1', '2', '2019-07-17 10:01:11', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('1083', '2', '100204', '1002', '3', '1', '2', '2019-07-17 10:01:11', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('1084', '2', '100205', '1002', '3', '1', '2', '2019-07-17 10:01:11', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('1085', '2', '1003', '10', '2', '1', '2', '2019-07-17 10:01:11', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('1086', '2', '100301', '1003', '3', '1', '2', '2019-07-17 10:01:11', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('1087', '2', '100302', '1003', '3', '1', '2', '2019-07-17 10:01:11', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('1088', '2', '100303', '1003', '3', '1', '2', '2019-07-17 10:01:11', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('1089', '2', '1004', '10', '2', '1', '2', '2019-07-17 10:01:11', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('1090', '2', '100401', '1004', '3', '1', '2', '2019-07-17 10:01:11', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('1091', '2', '60', '0', '1', '1', '2', '2019-07-17 10:01:11', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('1092', '2', '6001', '60', '2', '1', '2', '2019-07-17 10:01:11', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('1093', '2', '6002', '60', '2', '1', '2', '2019-07-17 10:01:11', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('1094', '2', '600201', '6002', '3', '1', '2', '2019-07-17 10:01:11', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('1095', '2', '600202', '6002', '3', '1', '2', '2019-07-17 10:01:11', '2019-07-17 10:01:11');
INSERT INTO `sp_role_authority` VALUES ('1096', '2', '600203', '6002', '3', '1', '2', '2019-07-17 10:01:11', '2019-07-17 10:01:11');

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
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4;

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
INSERT INTO `sp_role_manage_authority` VALUES ('80', '5', '15', '0', '1', '项目信息管理', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('81', '5', '20', '0', '1', '预算报价管理', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('82', '5', '25', '0', '1', '采购集成管理', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('83', '5', '30', '0', '1', '施工安装管理', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('84', '5', '35', '0', '1', '建筑设计管理', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('85', '5', '3501', '35', '2', '查询建筑系统详情', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('86', '5', '3502', '35', '2', '新增建筑系统', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('87', '5', '3503', '35', '2', '编辑建筑系统', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('88', '5', '3504', '35', '2', '更改建筑系统状态', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('89', '5', '3505', '35', '2', '查询建筑系统子系统', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('90', '5', '3506', '35', '2', '新增建筑子系统', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('91', '5', '3507', '35', '2', '编辑建筑子系统', '1', '2019-07-16 15:35:15', '2019-07-16 15:35:15', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('92', '1', '15', '0', '1', '项目信息管理', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('93', '1', '20', '0', '1', '预算报价管理', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('94', '1', '25', '0', '1', '采购集成管理', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('95', '1', '30', '0', '1', '施工安装管理', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('96', '1', '35', '0', '1', '建筑设计管理', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('97', '1', '40', '0', '1', '部件集成管理', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('98', '1', '45', '0', '1', '供应商管理', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('99', '1', '55', '0', '1', '财务信息管理', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('100', '1', '60', '0', '1', '客户信息管理', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('101', '1', '65', '0', '1', '基础信息管理', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('102', '1', '3501', '35', '2', '查询建筑系统详情', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('103', '1', '3502', '35', '2', '新增建筑系统', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('104', '1', '3503', '35', '2', '编辑建筑系统', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('105', '1', '3504', '35', '2', '更改建筑系统状态', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('106', '1', '3505', '35', '2', '查询建筑系统子系统', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('107', '1', '3506', '35', '2', '新增建筑子系统', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('108', '1', '3507', '35', '2', '编辑建筑子系统', '1', '2019-07-16 16:25:40', '2019-07-16 16:25:40', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('109', '2', '65', '0', '1', '基础信息管理', '2', '2019-07-17 10:01:11', '2019-07-17 10:01:11', '1');

-- ----------------------------
-- Table structure for sp_supplier
-- ----------------------------
DROP TABLE IF EXISTS `sp_supplier`;
CREATE TABLE `sp_supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) DEFAULT NULL COMMENT '品牌',
  `manufactor` varchar(255) DEFAULT NULL COMMENT '厂家名称',
  `supplier` varchar(255) DEFAULT NULL COMMENT '供应商名称',
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
  PRIMARY KEY (`id`),
  KEY `manufactor` (`manufactor`(191)) USING BTREE,
  KEY `brand` (`brand`(191)) USING BTREE,
  KEY `supplier` (`supplier`(191)) USING BTREE,
  KEY `address` (`address`(191)) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_supplier
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
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4;

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
  `status` tinyint(4) DEFAULT '1' COMMENT '用户状态 0禁止 1活跃',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sp_users
-- ----------------------------
INSERT INTO `sp_users` VALUES ('1', '瑶(总经理)', 'admin@163.com', '$2y$10$E3jO81KFtRTmhK47CIVF8OSBJUuakYqR02iOyDVUlIvYOaruqciBW', 'SiqQFfKBuGkKB1oE2GSB0pGjair7BbsirjUXsSZHY4DoD2EKZEXA59H4Xjel', '2019-07-16 16:26:45', '2019-07-16 16:26:45', '1');
INSERT INTO `sp_users` VALUES ('2', '王海舟', 'everup@163.com', '$2y$10$oTPkMarBLf81rggDre0pE.R2gsQWyU0zIj92JTzYGjPC.iEKYviw.', 'X82XpjgpWcqCWvfW160i9wMJkUcwpPEfXLONkPY9y7nSQXLENr16Gm7ZfXop', '2019-07-16 16:27:15', '2019-07-16 16:27:15', '1');
INSERT INTO `sp_users` VALUES ('3', '王海洲', '497686206@qq.com', '$2y$10$aKSLnSHm5wcw886HooDdmuXMkjjpw7WwZVR4pKzcZnLnFxzuU5nge', null, null, null, '1');
INSERT INTO `sp_users` VALUES ('4', 'test', 'test@qq.com', '$2y$10$d.GnIWS4eZ/vaSwHeKM8ReUwxUkUp6dULcAFtkBPWdeFM2HsrhXDK', null, null, null, '1');
INSERT INTO `sp_users` VALUES ('5', '18510174992', 'wang@163.com', '$2y$10$rP2v69M86nhP6iu3e5O3a.g6INplFnfw0y4wRVaCiIotQM4IqZRpu', null, '2019-07-16 16:24:31', '2019-07-16 16:24:31', '0');
INSERT INTO `sp_users` VALUES ('6', '王括', '497686205@qq.com', '$2y$10$51PDhxU/edOWEAcDqG/rceDJlSZ.TV5PY98DljwezWU/i5zYIxIsu', null, '2019-07-16 16:26:03', '2019-07-16 16:26:03', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_user_role
-- ----------------------------
INSERT INTO `sp_user_role` VALUES ('1', '1', '1', '管理员', '0', '2019-06-26 18:05:21', '2019-07-16 16:26:45');
INSERT INTO `sp_user_role` VALUES ('2', '5', '1', '管理员', '0', '2019-07-09 06:41:20', '2019-07-16 16:24:31');
INSERT INTO `sp_user_role` VALUES ('3', '5', '1', '管理员', '0', '2019-07-09 07:02:09', '2019-07-16 16:24:31');
INSERT INTO `sp_user_role` VALUES ('4', '5', '2', '销售人员', '0', '2019-07-09 07:02:09', '2019-07-16 16:24:31');
INSERT INTO `sp_user_role` VALUES ('5', '2', '2', '销售人员', '0', '2019-07-09 07:02:16', '2019-07-16 16:27:15');
INSERT INTO `sp_user_role` VALUES ('6', '2', '3', '财务人员', '0', '2019-07-09 07:02:16', '2019-07-16 16:27:15');
INSERT INTO `sp_user_role` VALUES ('7', '6', '1', '管理员', '0', '2019-07-09 07:34:24', '2019-07-16 16:26:03');
INSERT INTO `sp_user_role` VALUES ('8', '6', '1', '管理员', '0', '2019-07-09 07:34:50', '2019-07-16 16:26:03');
INSERT INTO `sp_user_role` VALUES ('9', '2', '1', null, '0', null, '2019-07-16 16:27:15');
INSERT INTO `sp_user_role` VALUES ('10', '2', '1', '管理员', '0', '2019-07-13 15:26:27', '2019-07-16 16:27:15');
INSERT INTO `sp_user_role` VALUES ('11', '2', '2', '销售人员', '0', '2019-07-13 15:26:27', '2019-07-16 16:27:15');
INSERT INTO `sp_user_role` VALUES ('12', '2', '3', '财务人员', '0', '2019-07-13 15:26:27', '2019-07-16 16:27:15');
INSERT INTO `sp_user_role` VALUES ('13', '2', '5', '建筑工程管理', '0', '2019-07-13 15:26:27', '2019-07-16 16:27:15');
INSERT INTO `sp_user_role` VALUES ('14', '2', '1', '管理员', '0', '2019-07-14 14:17:52', '2019-07-16 16:27:15');
INSERT INTO `sp_user_role` VALUES ('15', '2', '5', '建筑工程管理', '0', '2019-07-14 14:17:52', '2019-07-16 16:27:15');
INSERT INTO `sp_user_role` VALUES ('16', '5', '1', '总经理', '0', '2019-07-16 16:24:20', '2019-07-16 16:24:31');
INSERT INTO `sp_user_role` VALUES ('17', '5', '2', '超级管理员', '0', '2019-07-16 16:24:20', '2019-07-16 16:24:31');
INSERT INTO `sp_user_role` VALUES ('18', '5', '3', '财务人员', '1', '2019-07-16 16:24:31', '2019-07-16 16:24:31');
INSERT INTO `sp_user_role` VALUES ('19', '1', '1', '总经理', '0', '2019-07-16 16:24:50', '2019-07-16 16:26:45');
INSERT INTO `sp_user_role` VALUES ('20', '2', '2', '超级管理员', '0', '2019-07-16 16:25:01', '2019-07-16 16:27:15');
INSERT INTO `sp_user_role` VALUES ('21', '2', '5', '建筑工程管理', '0', '2019-07-16 16:25:01', '2019-07-16 16:27:15');
INSERT INTO `sp_user_role` VALUES ('22', '6', '2', '超级管理员', '1', '2019-07-16 16:26:03', '2019-07-16 16:26:03');
INSERT INTO `sp_user_role` VALUES ('23', '1', '1', '总经理', '1', '2019-07-16 16:26:45', '2019-07-16 16:26:45');
INSERT INTO `sp_user_role` VALUES ('24', '2', '2', '超级管理员', '1', '2019-07-16 16:27:15', '2019-07-16 16:27:15');
INSERT INTO `sp_user_role` VALUES ('25', '2', '5', '建筑工程管理', '1', '2019-07-16 16:27:15', '2019-07-16 16:27:15');
