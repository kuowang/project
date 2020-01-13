/*
Navicat MySQL Data Transfer

Source Server         : 123.57.85.158
Source Server Version : 50718
Source Host           : 123.57.85.158:3306
Source Database       : project

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2020-01-09 17:18:06
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
  `material_num` int(6) DEFAULT '0' COMMENT '材料的数量',
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_architectural_sub_system
-- ----------------------------
INSERT INTO `sp_architectural_sub_system` VALUES ('2', '6', '基础系统（混凝土条形基础）', '1001-01', 'GK-JC-01', '1', '10', '王海舟', '2', '2019-07-13', '2019-09-05', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_sub_system` VALUES ('3', '6', '基础系统（混凝土构造柱圈梁）', '1001-02', 'GK-JC-02', '1', '10', '王海舟', '2', '2019-07-13', '2019-09-05', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_sub_system` VALUES ('4', '6', '基础系统（混凝土筏板基础）', '1001-03', 'GK-JC-03', '1', '10', '王海舟', '2', '2019-07-13', '2019-09-05', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_sub_system` VALUES ('5', '7', '薄壁轻钢结构系统（镀铝锌G550 55%  AZ150）', '100201', 'GK-ZT-01', '1', '5', '王海舟', '2', '2019-07-13', '2019-09-05', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_sub_system` VALUES ('6', '8', '外墙系统（8厚外挂板)', '1003-1', 'GK-WQ-01', '1', '21', '管理员', '1', '2019-07-14', '2019-10-21', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_sub_system` VALUES ('7', '8', '外墙系统（10厚外挂板）', '1003-2', 'GK-WQ-02', '1', '21', '管理员', '1', '2019-07-14', '2019-10-21', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_sub_system` VALUES ('8', '6', '基础系统（混凝土框架架空基础）', '1001-04', ' GK-JC-04', '1', '10', '王海舟', '2', '2019-07-14', '2019-09-05', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_sub_system` VALUES ('9', '7', '薄壁轻钢结构系统（镀锌G550  Z185）', '100202', 'GK-ZT-02', '1', '5', '王海舟', '2', '2019-07-14', '2019-09-05', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_sub_system` VALUES ('10', '9', '内墙系统（单层12厚石膏板）', '1004-01', 'GK-NQ-01', '1', '5', '管理员', '1', '2019-07-14', '2019-09-05', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_sub_system` VALUES ('11', '9', '内墙系统（双层9.5厚石膏板）', '1004-02', 'GK-NQ-02', '1', '0', '管理员', '1', '2019-07-14', '2019-09-05', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_sub_system` VALUES ('12', '10', '屋面系统（单层沥青瓦+吊顶保温）', '1005-01', 'GK-WM-01', '1', '5', '管理员', '1', '2019-07-14', '2019-09-18', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_sub_system` VALUES ('13', '11', '檐口系统（无组织排水）', '1006-01', 'GK-YK-01', '1', '0', '管理员', '1', '2019-07-14', '2019-09-05', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_sub_system` VALUES ('14', '12', '楼板系统（室内无防水楼面）', '1007-01', 'GK-LM-01', '1', '0', '管理员', '1', '2019-07-14', '2019-09-05', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_sub_system` VALUES ('15', '13', '吊顶系统（轻钢龙骨+石膏板）', '1008-1', 'GK-DD-01', '1', '6', '管理员', '1', '2019-07-14', '2019-09-05', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_sub_system` VALUES ('16', '8', '外墙系统（16厚进口外挂板）', '1003-3', 'GK-WQ-03', '1', '0', null, null, '2019-07-20', '2019-10-21', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_sub_system` VALUES ('17', '8', '外墙系统（外墙文化石）', '1003-4', 'GK-WQ-04', '1', '0', null, null, '2019-07-20', '2019-10-21', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_sub_system` VALUES ('18', '19', '子系统名', '子系统编码', '工况', '1', '0', 'test', '4', '2019-07-20', '2019-10-16', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_sub_system` VALUES ('19', '19', '子系统2', '编码2', 'diam', '1', '0', 'test', '4', '2019-07-20', '2019-10-16', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_sub_system` VALUES ('20', '9', '内墙系统（双层12厚石膏板）', '1004-03', 'GK-NQ-03', '1', '5', '王括', '6', '2019-07-28', '2019-09-05', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_sub_system` VALUES ('21', '20', '子系统', '编码', '公开啊啊啊', '0', '0', '王括', '6', '2019-08-02', '2019-10-16', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_sub_system` VALUES ('22', '10', '屋面系统（双层沥青瓦+吊顶保温）', '1005-02', 'GK-WM-02', '1', '0', '王括', '6', '2019-08-12', '2019-09-18', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_sub_system` VALUES ('23', '7', '薄壁轻钢结构系统（镀锌G550  Z275）', '100203', 'GK-ZT-03', '1', '5', '杨亚君(总经理)', '1', '2019-09-05', '2019-09-05', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('24', '7', '钢框架结构系统（钢框架+薄壁轻钢复合）', '100204', 'GK-ZT-04', '1', '0', '杨亚君(总经理)', '1', '2019-09-05', '2019-09-05', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('25', '6', '基础系统（钢框架架空基础）', '1001-05', ' GK-JC-05', '1', '0', '杨亚君(总经理)', '1', '2019-09-05', '2019-09-05', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_sub_system` VALUES ('26', '9', '内墙系统（单层10厚硅酸钙+单层12厚石膏板）', '1004-04', 'GK-NQ-04', '1', '0', '杨亚君(总经理)', '1', '2019-09-05', '2019-09-05', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('27', '10', '屋面系统（水泥瓦+屋面外保温）', '1005-05', 'GK-WM-05', '1', '0', '杨亚君(总经理)', '1', '2019-09-05', '2019-09-18', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_sub_system` VALUES ('28', '10', '屋面系统（筒瓦+屋面外保温）', '1005-06', 'GK-WM-06', '1', '0', '杨亚君(总经理)', '1', '2019-09-05', '2019-09-18', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_sub_system` VALUES ('29', '11', '檐口系统（PVC落水系统）', '1006-02', 'GK-YK-02', '1', '0', '杨亚君(总经理)', '1', '2019-09-05', '2019-09-05', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('30', '11', '檐口系统（彩铝落水系统）', '1006-03', 'GK-YK-03', '1', '0', '杨亚君(总经理)', '1', '2019-09-05', '2019-09-05', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('31', '11', '檐口系统（仿铜彩铝落水系统）', '1006-04', 'GK-YK-04', '1', '0', '杨亚君(总经理)', '1', '2019-09-05', '2019-09-05', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('32', '12', '楼板系统（室内有防水楼面）', '1007-02', 'GK-LM-02', '1', '0', '杨亚君(总经理)', '1', '2019-09-05', '2019-09-05', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_sub_system` VALUES ('33', '12', '楼板系统（室外有防水楼面）', '1007-03', 'GK-LM-03', '1', '0', '杨亚君(总经理)', '1', '2019-09-05', '2019-09-05', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_sub_system` VALUES ('34', '13', '吊顶系统（木龙骨+石膏板）', '1008-2', 'GK-DD-02', '1', '0', '杨亚君(总经理)', '1', '2019-09-05', '2019-09-05', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('35', '13', '吊顶系统（轻钢龙骨+铝扣板）', '1008-3', 'GK-DD-03', '1', '0', '杨亚君(总经理)', '1', '2019-09-05', '2019-09-05', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('36', '14', '外窗系统（塑钢双玻窗）', '1009-01', 'GK-C-01', '1', '0', '杨亚君(总经理)', '1', '2019-09-05', '2019-09-05', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('37', '14', '外窗系统（铝合金单玻窗）', '1009-02', 'GK-C-02', '1', '0', '杨亚君(总经理)', '1', '2019-09-05', '2019-09-05', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('38', '14', '外窗系统（双玻断桥铝 60系列+普通玻璃）', '1009-03', 'GK-C-03', '1', '1', '杨亚君(总经理)', '1', '2019-09-05', '2019-09-05', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('39', '14', '外窗系统（双玻断桥铝 60系列+钢化玻璃）', '1009-04', 'GK-C-04', '1', '1', '杨亚君(总经理)', '1', '2019-09-05', '2019-09-05', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('40', '14', '外窗系统（双玻断桥铝 70系列+钢化玻璃）', '1009-05', 'GK-C-05', '1', '1', '杨亚君(总经理)', '1', '2019-09-05', '2019-09-05', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('41', '14', '外窗系统（双玻断桥铝 70系列+钢化玻璃+LOW-E）', '1009-06', 'GK-C-06', '1', '1', '杨亚君(总经理)', '1', '2019-09-05', '2019-09-05', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('42', '14', '外窗系统（三玻断桥铝 70系列+钢化玻璃）', '1009-07', 'GK-C-07', '1', '0', '杨亚君(总经理)', '1', '2019-09-05', '2019-09-05', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('43', '15', '外门系统（塑钢双玻门）', '1010-01', 'GK-M-01', '1', '0', '杨亚君(总经理)', '1', '2019-09-05', '2019-09-05', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('44', '15', '外门系统（双玻断桥铝 60系列+钢化玻璃）', '1010-02', 'GK-M-02', '1', '0', '杨亚君(总经理)', '1', '2019-09-05', '2019-09-05', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('45', '15', '外门系统（双玻断桥铝 70系列+钢化玻璃）', '1010-03', 'GK-M-03', '1', '0', '杨亚君(总经理)', '1', '2019-09-05', '2019-09-05', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('46', '16', '细部装饰系统（GRC构件）', '1011-01', 'GK-ZS-01', '1', '0', '杨亚君(总经理)', '1', '2019-09-05', '2019-09-05', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('47', '16', '细部装饰系统（聚苯构件）', '1011-02', 'GK-ZS-02', '1', '0', '杨亚君(总经理)', '1', '2019-09-05', '2019-09-05', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('48', '17', '给排水系统（同层排水）', '1012-01', 'GK-GP-01', '1', '0', '杨亚君(总经理)', '1', '2019-09-05', '2019-09-05', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('49', '17', '给排水系统（隔层排水）', '1012-02', 'GK-GP-02', '1', '0', '杨亚君(总经理)', '1', '2019-09-05', '2019-09-05', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('50', '18', '电气系统（PVC电管+BV电线）', '1013-01', 'GK-DQ-04', '1', '0', '杨亚君(总经理)', '1', '2019-09-05', '2019-09-05', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_sub_system` VALUES ('51', '18', '电气系统（JDG电管+BV电线）', '1013-02', 'GK-DQ-02', '1', '0', '杨亚君(总经理)', '1', '2019-09-05', '2019-09-05', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_sub_system` VALUES ('52', '10', '屋面系统（单层沥青瓦+屋面外保温）', '1005-03', 'GK-WM-03', '1', '0', '杨亚君(总经理)', '1', '2019-09-18', '2019-09-18', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_sub_system` VALUES ('53', '10', '屋面系统（双层沥青瓦+屋面外保温）', '1005-04', 'GK-WM-04', '1', '0', '杨亚君(总经理)', '1', '2019-09-18', '2019-09-18', '1', '杨亚君(总经理)');

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
INSERT INTO `sp_architectural_system` VALUES ('6', '基础系统', '基础工程', '1001', '1', '2', '2019-07-14', '2019-09-05', '王海舟', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_system` VALUES ('7', '主体结构系统', '主体结构工程', '1002', '1', '2', '2019-07-14', '2019-09-05', '王海舟', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_system` VALUES ('8', '外墙系统', '外墙工程', '1003', '1', '1', '2019-07-14', '2019-10-21', '管理员', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_system` VALUES ('9', '内墙系统', '内墙工程', '1004', '1', '1', '2019-07-14', '2019-09-05', '管理员', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_system` VALUES ('10', '屋面系统', '屋面工程', '1005', '1', '1', '2019-07-14', '2019-09-18', '管理员', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_system` VALUES ('11', '檐口系统', '檐口工程', '1006', '1', '1', '2019-07-14', '2019-09-05', '管理员', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_system` VALUES ('12', '楼板系统', '楼板工程', '1007', '1', '1', '2019-07-14', '2019-09-05', '管理员', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_system` VALUES ('13', '吊顶系统', '吊顶工程', '1008', '1', '1', '2019-07-14', '2019-09-05', '管理员', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_system` VALUES ('14', '外窗系统', '外窗工程', '1009', '1', '1', '2019-07-14', '2019-09-05', '管理员', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_system` VALUES ('15', '外门系统', '外门工程', '1010', '1', '1', '2019-07-14', '2019-09-05', '管理员', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_system` VALUES ('16', '细部装饰系统', '细部装饰工程', '1011', '1', '1', '2019-07-14', '2019-09-05', '管理员', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_system` VALUES ('17', '给排水系统', '给排水工程', '1012', '1', '1', '2019-07-14', '2019-09-05', '管理员', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_system` VALUES ('18', '电气系统', '电气工程', '1013', '1', '1', '2019-07-14', '2019-09-05', '管理员', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_system` VALUES ('19', '系统测试', '工程', '1014', '0', '4', '2019-07-20', '2019-10-16', 'test', '1', '杨亚君(总经理)');
INSERT INTO `sp_architectural_system` VALUES ('20', '系统测试2', '工程 ', '编码', '0', '6', '2019-08-02', '2019-10-16', '王括', '1', '杨亚君(总经理)');

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
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_authority
-- ----------------------------
INSERT INTO `sp_authority` VALUES ('1', '10', '0', '1', '1', '管理员', '\\img\\nav\\home11.png', '/admin/user_role_list', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
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
INSERT INTO `sp_authority` VALUES ('26', '15', '0', '1', '1', '项目信息管理', '\\img\\nav\\home1.png', '/project/projectStart', '1', '2', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('27', '1501', '15', '0', '2', '创建项目（工程）', '', '/project/createdProject', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
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
INSERT INTO `sp_authority` VALUES ('44', '20', '0', '1', '1', '预算报价管理', '\\img\\nav\\home3.png', '/budget/budgetProjectList', '1', '4', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('45', '2001', '20', '1', '2', '项目预算管理', '', '/budget/budgetProjectList', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('46', '200101', '2001', '0', '3', '洽谈预算', '', '/budget/budgetStart', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('47', '200102', '2001', '0', '3', '实施预算', '', '/budget/budgetConduct', '1', '2', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('48', '200103', '2001', '0', '3', '竣工预算', '', '/budget/budgetCompleted', '1', '3', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('49', '200104', '2001', '0', '3', '终止预算', '', '/budget/budgetTermination', '1', '4', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('52', '2002', '20', '1', '2', '项目报价管理', '', '/offer/offerProjectList', '1', '2', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('53', '200201', '2002', '0', '3', '洽谈报价', '', '/offer/offerStart', '1', '1', '2019-08-19 16:57:25', '2019-08-19 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('54', '200202', '2002', '0', '3', '实施报价', '', '/offer/offerConduct', '1', '2', '2019-08-19 16:57:25', '2019-08-19 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('55', '200203', '2002', '0', '3', '竣工报价', '', '/offer/offerCompleted', '1', '3', '2019-08-19 16:57:25', '2019-08-19 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('56', '200204', '2002', '0', '3', '终止报价', '', '/offer/offerTermination', '1', '4', '2019-08-19 16:57:25', '2019-08-19 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('59', '25', '0', '1', '1', '采购集成管理', '\\img\\nav\\home4.png', '/purchase/purchaseConductProjectList', '1', '5', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('60', '2501', '25', '1', '2', '实施项目', '', '/purchase/purchaseConductProjectList', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('61', '2502', '25', '1', '2', '竣工项目', '', '/purchase/purchaseCompletedProjectList', '1', '2', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('62', '250101', '2501', '0', '3', '编辑实施项目', '', '/purchase/editPurchase', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('63', '250102', '2501', '0', '3', '采购批次管理', '', '/purchase/purchaseBatchManage', '1', '2', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('64', '250103', '2501', '0', '3', '采购订单管理', '', '/purchase/purchaseOrderManage', '1', '3', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('65', '30', '0', '1', '1', '施工安装管理', '\\img\\nav\\home5.png', '/progress/progressConductProjectList', '1', '6', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('66', '3001', '30', '1', '2', '实施项目', '', '/progress/progressConductProjectList', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('67', '300101', '3001', '0', '3', '施工组织统筹', '', '/progress/progressConstrucManageDetail', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('68', '300102', '3001', '0', '3', '现场材料管理', '', '/progress/progressMaterialManage', '1', '2', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('69', '300103', '3001', '0', '3', '施工进度管理', '', '/progress/progressActualManageDetail', '1', '3', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('70', '3002', '30', '1', '2', '竣工项目', '', '/progress/progressCompletedProjectList', '1', '2', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('71', '35', '0', '1', '1', '建筑设计管理', '\\img\\nav\\home2.png', '/architectural/enginProjectList', '1', '3', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('72', '3501', '35', '1', '2', '建筑系统', '', '/architectural/index', '1', '2', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('73', '3502', '35', '1', '2', '建筑子系统', '', '/architectural/architectureList', '1', '3', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('74', '350101', '3501', '0', '3', '搜索', '', '/architectural/index', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('75', '350102', '3501', '0', '3', '添加', '', '/architectural/add_architect', '1', '2', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('76', '350103', '3501', '0', '3', '编辑', '', '/architectural/edit_architect', '1', '3', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('77', '40', '0', '1', '1', '部件集成管理', '\\img\\nav\\home6.png', '/material/materialList', '1', '7', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('78', '4001', '40', '0', '2', '搜索部件信息', '', '/material/materialList', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('80', '4002', '40', '0', '2', '查询部件详情', '', '/material/materialDetail', '1', '2', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('82', '4003', '40', '0', '2', '编辑部件', '', '/material/editMaterial', '1', '3', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('83', '45', '0', '1', '1', '供应商管理', '\\img\\nav\\home7.png', '/supplier/brandList', '1', '8', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('84', '4501', '45', '1', '2', '品牌信息', '', '/supplier/brandList', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('85', '4502', '45', '1', '2', '供应商信息', '', '/supplier/supplierList', '1', '2', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('86', '450101', '4501', '0', '3', '添加品牌', '', '/supplier/supplierList', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('87', '450102', '4501', '0', '3', '查询品牌', '', '/supplier/supplierList', '1', '2', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('88', '450201', '4502', '0', '3', '创建供应商', '', '/supplier/addSupplier', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('89', '50', '0', '1', '1', '财务信息管理', '\\img\\nav\\home8.png', '/finance/financeStart', '1', '9', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('90', '5001', '50', '1', '2', '洽谈项目', '', '/finance/financeStart', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('91', '5002', '50', '1', '2', '实施项目', '', '/finance/financeConduct', '1', '2', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('92', '5003', '50', '1', '2', '竣工项目', '', '/finance/financeCompleted', '1', '3', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('95', '55', '0', '1', '1', '客户信息管理', '\\img\\nav\\home9.png', '/customer/customerList', '1', '10', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
INSERT INTO `sp_authority` VALUES ('96', '5501', '55', '1', '2', '客户信息列表', '', '/customer/customerList', '1', '1', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('97', '5502', '55', '0', '2', '添加客户', '', '/customer/postAddCustomer', '1', '2', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('98', '5503', '55', '0', '2', '编辑客户', '', '/customer/postEditCustomer', '1', '3', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('99', '5504', '55', '0', '2', '删除客户', '', '/customer/postDeleteCustomer', '1', '4', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('101', '60', '0', '1', '1', '系统公告管理', '\\img\\nav\\home10.png', '/base/notice_list', '1', '11', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '0');
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
INSERT INTO `sp_authority` VALUES ('114', '3500', '35', '1', '2', '项目设计', null, '/architectural/enginProjectList', '1', '1', '2019-08-07 11:54:07', null, '0');
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
INSERT INTO `sp_authority` VALUES ('137', '250104', '2501', '0', '3', '物流进度管理', null, '/purchase/purchaseLogisticsManage', '1', '4', '2019-08-21 18:22:52', '2019-08-21 18:22:54', '1');
INSERT INTO `sp_authority` VALUES ('138', '600203', '6002', '0', '3', '编辑公告', '', '/base/edit_notice', '1', '3', '2019-08-29 15:48:13', '2019-08-29 15:48:15', '1');
INSERT INTO `sp_authority` VALUES ('139', '600204', '6002', '0', '3', '删除公告', null, '/base/delete_notice', '1', '4', '2019-08-29 17:57:34', '2019-08-29 17:57:36', '1');
INSERT INTO `sp_authority` VALUES ('140', '1006', '10', '1', '2', '部门管理', null, '/admin/departmentList', '1', '1', '2019-08-30 18:05:35', '2019-08-30 18:05:39', '0');
INSERT INTO `sp_authority` VALUES ('141', '100601', '1006', '0', '3', '新增部门', null, '/admin/postDepartment', '1', '1', '2019-09-02 11:05:30', '2019-09-02 11:05:33', '1');
INSERT INTO `sp_authority` VALUES ('142', '100602', '1006', '0', '3', '编辑部门', null, '/admin/postDepartment', '1', '2', '2019-09-02 11:05:35', '2019-09-02 11:05:38', '1');
INSERT INTO `sp_authority` VALUES ('143', '100603', '1006', '0', '3', '删除部门', null, '/admin/deleteDepartment', '1', '3', '2019-09-02 11:05:41', '2019-09-02 11:05:44', '1');
INSERT INTO `sp_authority` VALUES ('144', '25010301', '250103', '0', '4', '查看', null, '/purchase/purchaseOrderDetail', '1', '1', '2019-09-08 13:52:12', '2019-09-08 13:52:12', '1');
INSERT INTO `sp_authority` VALUES ('145', '25010302', '250103', '0', '4', '编辑', null, '/purchase/editPurchaseOrder', '1', '2', '2019-09-08 13:52:12', '2019-09-08 13:52:12', '1');
INSERT INTO `sp_authority` VALUES ('146', '25010303', '250103', '0', '4', '删除', null, '/purchase/deletePurchaseOrder', '1', '3', '2019-09-08 13:52:12', '2019-09-08 13:52:12', '1');
INSERT INTO `sp_authority` VALUES ('147', '25010304', '250103', '0', '4', '新增', null, '/purchase/createPurchaseOrder', '1', '4', '2019-09-08 13:52:12', '2019-09-08 13:52:12', '1');
INSERT INTO `sp_authority` VALUES ('148', '25010306', '250103', '0', '3', '发送供应商', null, null, '1', '4', null, null, '1');
INSERT INTO `sp_authority` VALUES ('149', '25010401', '250104', '0', '4', '查看物流', null, '/purchase/purchaseLogisDetail', '1', '1', '2019-09-08 18:28:36', '2019-09-08 18:28:39', '1');
INSERT INTO `sp_authority` VALUES ('150', '25010402', '250104', '0', '4', '编辑物流', null, '/purchase/editPurchaseLogis', '1', '2', '2019-09-08 18:28:41', '2019-09-08 18:28:44', '1');
INSERT INTO `sp_authority` VALUES ('151', '25010403', '250104', '0', '4', '更改物流状态', null, '/purchase/examinePurchaseLogis', '1', '3', '2019-09-08 18:28:48', '2019-09-08 18:28:51', '1');
INSERT INTO `sp_authority` VALUES ('152', '250202', '2502', '0', '3', '采购批次管理', '', '/purchase/purchaseBatchManage', '1', '2', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('153', '250203', '2502', '0', '3', '采购订单管理', '', '/purchase/purchaseOrderManage', '1', '3', '2019-07-04 16:57:25', '2019-07-04 16:57:25', '1');
INSERT INTO `sp_authority` VALUES ('154', '250204', '2502', '0', '3', '物流进度管理', '', '/purchase/purchaseLogisticsManage', '1', '3', '2019-09-08 18:28:48', '2019-09-08 18:28:51', '1');
INSERT INTO `sp_authority` VALUES ('155', '500101', '5001', '0', '3', '编辑&查看', null, '/finance/editStartEnginFinance', '1', '1', '2019-10-15 18:03:56', '2019-10-15 18:03:54', '1');
INSERT INTO `sp_authority` VALUES ('156', '500201', '5002', '0', '3', '编辑&查看', null, '/finance/editFinanceInfo', '1', '1', '2019-10-15 18:03:59', '2019-10-15 18:03:51', '1');
INSERT INTO `sp_authority` VALUES ('157', '500301', '5003', '0', '3', '编辑&查看', null, '/finance/editFinanceInfo', '1', '3', '2019-10-15 18:03:46', '2019-10-15 18:03:49', '1');
INSERT INTO `sp_authority` VALUES ('158', '150203', '1502', '0', '3', '工程管理', null, '/project/projectEnginStart', '1', '3', '2019-11-14 11:59:09', '2019-11-14 11:59:11', '1');
INSERT INTO `sp_authority` VALUES ('159', '150303', '1503', '0', '3', '工程管理', null, '/project/projectEnginConduct', '1', '3', '2019-11-14 11:59:14', '2019-11-14 11:59:16', '1');
INSERT INTO `sp_authority` VALUES ('160', '150402', '1504', '0', '3', '工程管理', null, '/project/projectEnginCompleted', '1', '3', '2019-11-14 11:59:18', '2019-11-14 11:59:21', '1');
INSERT INTO `sp_authority` VALUES ('161', '150502', '1505', '0', '3', '工程管理', null, '/project/projectEnginTermination', '1', '3', '2019-11-14 11:59:24', '2019-11-14 11:59:26', '1');
INSERT INTO `sp_authority` VALUES ('162', '3003', '30', '1', '2', '施工流程配置', null, '/progress/porgressParamsList', '1', '3', '2019-10-25 14:44:20', '2019-10-25 14:44:23', '1');
INSERT INTO `sp_authority` VALUES ('163', '300301', '3003', '1', '3', '施工流程配置详情', '', '/progress/porgressParamsDetail', '1', '1', '2019-10-25 14:44:20', '2019-10-25 14:44:23', '1');
INSERT INTO `sp_authority` VALUES ('164', '300302', '3003', '1', '3', '施工流程配置编辑', '', '/progress/editPorgressParams', '1', '3', '2019-10-25 14:44:20', '2019-10-25 14:44:23', '1');
INSERT INTO `sp_authority` VALUES ('165', '30010101', '300101', '0', '4', '编辑施工组织统筹', null, '/progress/editProgressConstrucManage', '1', '1', '2019-10-29 10:42:09', '2019-10-29 10:42:12', '0');
INSERT INTO `sp_authority` VALUES ('166', '30010201', '300102', '0', '4', '查看现场材料管理', null, '/progress/progressMaterialDetail', '1', '1', '2019-10-30 11:13:49', '2019-10-30 11:13:51', '0');
INSERT INTO `sp_authority` VALUES ('167', '30010202', '300102', '0', '4', '编辑现场材料管理', null, '/progress/editProgressMaterial', '1', '2', '2019-10-30 11:13:55', '2019-10-30 11:13:57', '0');
INSERT INTO `sp_authority` VALUES ('168', '30010301', '300101', '0', '4', '编辑施工进度管理', '', '/progress/editProgressActualManage', '1', '1', '2019-10-29 10:42:09', '2019-10-29 10:42:12', '1');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_brand
-- ----------------------------

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
  KEY `project_id` (`project_id`,`engin_id`) USING BTREE,
  KEY `budget_order_number` (`budget_order_number`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_budget
-- ----------------------------

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
  KEY `engin` (`engin_id`,`budget_id`) USING BTREE,
  KEY `mbs_id` (`mbs_id`) USING BTREE,
  KEY `mbs` (`material_id`,`brand_id`,`supplier_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sp_budget_item
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_customer
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_department
-- ----------------------------
INSERT INTO `sp_department` VALUES ('1', '总经办', '1', '1', '1', '1', '王括', '2019-08-30');
INSERT INTO `sp_department` VALUES ('2', '销售部', '1', '2', '2', '1', '王括', '2019-08-30');
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
  `engin_address` varchar(1000) DEFAULT NULL COMMENT '工程地址',
  `build_area` float(10,2) DEFAULT NULL COMMENT '建筑面积',
  `engin_build_area` float(10,2) DEFAULT NULL COMMENT '建筑设计工程面积',
  `build_floor` int(4) DEFAULT '1' COMMENT '建筑楼层（层数）',
  `build_number` int(10) DEFAULT NULL COMMENT '建筑数量',
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
  `sale_uid` int(11) DEFAULT NULL COMMENT '销售负责人id',
  `sale_username` varchar(255) DEFAULT NULL COMMENT '销售负责人名称',
  `design_uid` int(11) DEFAULT NULL COMMENT '设计负责人id',
  `design_username` varchar(255) DEFAULT NULL COMMENT '设计负责人姓名',
  `budget_uid` int(11) DEFAULT NULL COMMENT '预算负责人id',
  `budget_username` varchar(255) DEFAULT NULL COMMENT '预算负责人姓名',
  `purchase_uid` int(11) DEFAULT NULL COMMENT '采购负责人',
  `purchase_username` varchar(255) DEFAULT NULL COMMENT '采购人员姓名',
  `technical_uid` int(11) DEFAULT NULL COMMENT '合约人员id',
  `technical_username` varchar(255) DEFAULT NULL COMMENT '合约人员姓名',
  `structure_uid` int(11) DEFAULT NULL COMMENT '结构设计负责人',
  `structure_username` varchar(255) DEFAULT NULL COMMENT '结构设计负责人姓名',
  `drainage_uid` int(11) DEFAULT NULL COMMENT '给排水设计负责人',
  `drainage_username` varchar(255) DEFAULT NULL COMMENT '给排水设计负责人姓名',
  `electrical_uid` int(11) DEFAULT NULL COMMENT '电气设计负责人',
  `electrical_username` varchar(255) DEFAULT NULL COMMENT '电气设计负责人姓名',
  `build_design_uid` int(11) DEFAULT NULL COMMENT '建筑设计负责人id',
  `build_design_username` varchar(255) DEFAULT NULL COMMENT '建筑设计负责人',
  `progress_uid` int(11) DEFAULT NULL COMMENT '施工负责人id',
  `progress_username` varchar(255) DEFAULT NULL COMMENT '施工负责人姓名',
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`) USING BTREE,
  KEY `status` (`status`,`project_id`) USING BTREE,
  KEY `engineering_name` (`engineering_name`(191)) USING BTREE,
  KEY `budget_id` (`budget_id`) USING BTREE,
  KEY `design_username` (`design_username`(191)) USING BTREE,
  KEY `budget_username` (`budget_username`(191)) USING BTREE,
  KEY `technical_username` (`technical_username`(191)) USING BTREE,
  KEY `structure_username` (`structure_username`(191)) USING BTREE,
  KEY `progress_username` (`progress_username`(191)) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_engineering
-- ----------------------------

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
  `floor_load` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '楼面活载荷(千牛/平方米)',
  `floors` varchar(255) DEFAULT '1' COMMENT '建筑层数',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='工程参数设计';

-- ----------------------------
-- Records of sp_engineering_param
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_enginnering_architectural
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_enginnering_dynamic
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

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
INSERT INTO `sp_examine_user` VALUES ('46', '15', '杨亚君(总经理)', '1', '2019-11-06 15:34:10', '杨亚君(总经理)', '1', '2019-11-06 15:41:02', '1');
INSERT INTO `sp_examine_user` VALUES ('47', '14', '杨亚君(总经理)', '1', '2019-11-06 15:34:31', '杨亚君(总经理)', '1', '2019-11-06 15:41:01', '1');
INSERT INTO `sp_examine_user` VALUES ('48', '13', '杨亚君(总经理)', '1', '2019-11-06 15:34:53', '杨亚君(总经理)', '1', '2019-11-06 15:41:00', '1');
INSERT INTO `sp_examine_user` VALUES ('49', '12', '杨亚君(总经理)', '1', '2019-11-06 15:35:06', '杨亚君(总经理)', '1', '2019-11-06 15:40:58', '1');
INSERT INTO `sp_examine_user` VALUES ('50', '11', '杨亚君(总经理)', '1', '2019-11-06 15:36:20', '杨亚君(总经理)', '1', '2019-11-06 15:40:57', '1');
INSERT INTO `sp_examine_user` VALUES ('51', '10', '杨亚君(总经理)', '1', '2019-11-06 15:37:22', '杨亚君(总经理)', '1', '2019-11-06 15:40:56', '1');
INSERT INTO `sp_examine_user` VALUES ('52', '9', '杨亚君(总经理)', '1', '2019-11-06 15:38:12', '杨亚君(总经理)', '1', '2019-11-06 15:40:55', '1');
INSERT INTO `sp_examine_user` VALUES ('53', '8', '杨亚君(总经理)', '1', '2019-11-06 15:38:26', '杨亚君(总经理)', '1', '2019-11-06 15:40:54', '1');
INSERT INTO `sp_examine_user` VALUES ('54', '7', '杨亚君(总经理)', '1', '2019-11-06 15:38:58', '杨亚君(总经理)', '1', '2019-11-06 15:40:53', '1');
INSERT INTO `sp_examine_user` VALUES ('56', '4', '杨亚君(总经理)', '1', '2019-11-06 15:39:18', '杨亚君(总经理)', '1', '2019-11-06 15:40:51', '1');
INSERT INTO `sp_examine_user` VALUES ('57', '3', '杨亚君(总经理)', '1', '2019-11-06 15:39:31', '杨亚君(总经理)', '1', '2019-11-06 15:40:50', '1');
INSERT INTO `sp_examine_user` VALUES ('58', '2', '杨亚君(总经理)', '1', '2019-11-06 15:40:00', '杨亚君(总经理)', '1', '2019-11-06 15:40:49', '1');
INSERT INTO `sp_examine_user` VALUES ('59', '5', '杨亚君(总经理)', '1', '2019-11-06 15:40:17', '杨亚君(总经理)', '1', '2019-11-06 15:40:48', '1');
INSERT INTO `sp_examine_user` VALUES ('64', '17', '杨亚君(总经理)', '1', '2019-11-06 15:45:15', '杨亚君(总经理)', '1', '2019-11-06 15:47:16', '1');
INSERT INTO `sp_examine_user` VALUES ('65', '16', '杨亚君(总经理)', '1', '2019-11-06 15:45:22', '杨亚君(总经理)', '1', '2019-11-06 15:47:10', '1');
INSERT INTO `sp_examine_user` VALUES ('66', '2', '杨亚君(总经理)', '1', '2019-11-06 15:49:19', '杨亚君(总经理)', '1', '2019-11-06 15:50:31', '1');
INSERT INTO `sp_examine_user` VALUES ('67', '11', '杨亚君(总经理)', '1', '2019-11-06 15:49:50', '杨亚君(总经理)', '1', '2019-11-06 15:50:29', '1');
INSERT INTO `sp_examine_user` VALUES ('69', '15', '杨亚君(总经理)', '1', '2019-11-06 15:53:20', '杨亚君(总经理)', '1', '2019-11-06 15:53:27', '-1');
INSERT INTO `sp_examine_user` VALUES ('70', '15', '杨亚君(总经理)', '1', '2019-11-06 15:53:35', '杨亚君(总经理)', '1', '2019-11-06 15:53:39', '1');

-- ----------------------------
-- Table structure for sp_finance
-- ----------------------------
DROP TABLE IF EXISTS `sp_finance`;
CREATE TABLE `sp_finance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL COMMENT '项目id',
  `engin_id` int(11) DEFAULT NULL COMMENT '工程id',
  `assessment` varchar(2000) DEFAULT NULL COMMENT '风险评估id',
  `contract_amount` varchar(255) DEFAULT NULL COMMENT '原始合同金额',
  `changed_contract_amount` varchar(255) DEFAULT NULL COMMENT '变更合同金额',
  `profit_rate` varchar(255) DEFAULT NULL COMMENT '毛利率',
  `profit_amount` varchar(255) DEFAULT NULL COMMENT '毛利额',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态：1正常付款 0非正常付款',
  `created_uid` int(11) DEFAULT NULL COMMENT '创建人',
  `created_at` date DEFAULT NULL COMMENT '创建时间',
  `edit_uid` int(11) DEFAULT NULL COMMENT '编辑人',
  `updated_at` date DEFAULT NULL COMMENT '编辑时间',
  PRIMARY KEY (`id`),
  KEY `project` (`project_id`,`engin_id`) USING BTREE,
  KEY `engin` (`engin_id`,`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_finance
-- ----------------------------

-- ----------------------------
-- Table structure for sp_finance_item
-- ----------------------------
DROP TABLE IF EXISTS `sp_finance_item`;
CREATE TABLE `sp_finance_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL COMMENT '项目id',
  `engin_id` int(11) DEFAULT NULL COMMENT '工程id',
  `finance_id` int(11) DEFAULT NULL COMMENT '财务表id',
  `batch_num` varchar(2000) DEFAULT NULL COMMENT '付款批次',
  `batch_name` varchar(255) DEFAULT NULL COMMENT '批次名称',
  `receivables_proportion` varchar(255) DEFAULT NULL COMMENT '应收款占比 ',
  `receivables_price` varchar(255) DEFAULT NULL COMMENT '应收款金额（万元）',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态：1完成 0未完成',
  `payment_proportion` varchar(255) DEFAULT NULL COMMENT '应收款占比 ',
  `payment_price` varchar(255) DEFAULT NULL COMMENT '应收款金额（万元）',
  `remark` varchar(2000) DEFAULT NULL COMMENT '备注',
  `created_uid` int(11) DEFAULT NULL COMMENT '创建人',
  `created_at` date DEFAULT NULL COMMENT '创建时间',
  `edit_uid` int(11) DEFAULT NULL COMMENT '编辑人',
  `updated_at` date DEFAULT NULL COMMENT '编辑时间',
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`,`engin_id`) USING BTREE,
  KEY `engin_id` (`engin_id`,`finance_id`,`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_finance_item
-- ----------------------------

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
  PRIMARY KEY (`id`),
  KEY `manage_id` (`manage_id`) USING BTREE,
  KEY `parent_id` (`parent_id`,`level`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8mb4;

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
INSERT INTO `sp_manage_authority` VALUES ('33', '1501', '创建项目(工程)', '15', '2', '1', '2019-08-04 14:36:03', '2019-08-04 14:36:03');
INSERT INTO `sp_manage_authority` VALUES ('34', '1502', '洽谈项目', '15', '2', '1', '2019-08-04 14:36:03', '2019-08-04 14:36:03');
INSERT INTO `sp_manage_authority` VALUES ('35', '150201', '查询项目详情', '1502', '3', '1', '2019-08-04 14:36:03', '2019-08-04 14:36:03');
INSERT INTO `sp_manage_authority` VALUES ('37', '150202', '编辑项目', '1502', '3', '1', '2019-08-04 14:36:32', '2019-08-04 14:36:03');
INSERT INTO `sp_manage_authority` VALUES ('38', '1503', '实施项目', '15', '2', '1', '2019-08-04 14:36:03', '2019-08-04 14:36:03');
INSERT INTO `sp_manage_authority` VALUES ('39', '150301', '查询项目详情', '1503', '3', '1', '2019-08-04 14:36:03', '2019-08-04 14:36:03');
INSERT INTO `sp_manage_authority` VALUES ('40', '150302', '编辑项目', '1503', '3', '1', '2019-08-04 14:36:37', '2019-08-04 14:36:58');
INSERT INTO `sp_manage_authority` VALUES ('43', '1504', '竣工项目', '15', '2', '1', '2019-08-04 14:36:03', '2019-08-04 14:36:20');
INSERT INTO `sp_manage_authority` VALUES ('44', '150401', '查询项目详情', '1504', '3', '1', '2019-08-04 14:36:03', '2019-08-04 14:36:03');
INSERT INTO `sp_manage_authority` VALUES ('45', '150402', '工程管理', '1504', '3', '1', '2019-11-14 11:59:57', '2019-11-14 11:59:57');
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
INSERT INTO `sp_manage_authority` VALUES ('84', '250105', '编辑(指定采购负责人和状态)', '2501', '3', '1', '2019-08-22 16:26:32', '2019-08-22 16:26:32');
INSERT INTO `sp_manage_authority` VALUES ('85', '25010301', '查看', '250103', '4', '1', '2019-09-08 13:58:18', '2019-09-08 13:58:18');
INSERT INTO `sp_manage_authority` VALUES ('86', '25010302', '编辑', '250103', '4', '1', '2019-09-08 13:58:18', '2019-09-08 13:58:18');
INSERT INTO `sp_manage_authority` VALUES ('87', '25010303', '删除', '250103', '4', '1', '2019-09-08 13:58:18', '2019-09-08 13:58:18');
INSERT INTO `sp_manage_authority` VALUES ('88', '25010304', '新增', '250103', '4', '1', '2019-09-08 13:58:18', '2019-09-08 13:58:18');
INSERT INTO `sp_manage_authority` VALUES ('89', '25010305', '审核', '250103', '4', '1', '2019-09-08 14:05:23', '2019-09-08 15:57:25');
INSERT INTO `sp_manage_authority` VALUES ('90', '25010306', '发送供应商', '250103', '4', '1', '2019-09-08 15:57:20', '2019-09-08 15:57:22');
INSERT INTO `sp_manage_authority` VALUES ('91', '25010401', '查看物流', '250104', '4', '1', '2019-09-08 18:29:28', '2019-09-09 09:54:49');
INSERT INTO `sp_manage_authority` VALUES ('92', '25010402', '编辑物流', '250104', '4', '1', '2019-09-08 18:29:25', '2019-09-09 09:54:45');
INSERT INTO `sp_manage_authority` VALUES ('93', '250104031', '更改物流状态', '250104', '4', '1', '2019-09-08 18:29:22', '2019-09-09 09:54:42');
INSERT INTO `sp_manage_authority` VALUES ('94', '250202', '采购批次管理', '2502', '3', '1', '2019-08-21 18:00:37', '2019-08-21 18:00:35');
INSERT INTO `sp_manage_authority` VALUES ('95', '250203', '采购订单管理', '2502', '3', '1', '2019-08-22 16:26:32', '2019-08-22 16:26:32');
INSERT INTO `sp_manage_authority` VALUES ('96', '250204', '物流进度管理', '2502', '3', '1', '2019-08-22 16:26:32', '2019-08-22 16:26:32');
INSERT INTO `sp_manage_authority` VALUES ('97', '5001', '洽谈项目', '50', '2', '0', null, null);
INSERT INTO `sp_manage_authority` VALUES ('98', '5002', '实施项目', '50', '2', '0', null, null);
INSERT INTO `sp_manage_authority` VALUES ('99', '5003', '竣工项目', '50', '2', '0', null, null);
INSERT INTO `sp_manage_authority` VALUES ('100', '500101', '编辑&查看', '5001', '3', '1', null, null);
INSERT INTO `sp_manage_authority` VALUES ('101', '500201', '编辑&查看', '5002', '3', '1', null, null);
INSERT INTO `sp_manage_authority` VALUES ('102', '500301', '编辑&查看', '5003', '3', '1', null, null);
INSERT INTO `sp_manage_authority` VALUES ('103', '150203', '工程管理', '1502', '3', '1', '2019-11-14 11:59:57', '2019-11-14 12:00:01');
INSERT INTO `sp_manage_authority` VALUES ('104', '150303', '工程管理', '1503', '3', '1', '2019-11-14 11:59:57', '2019-11-14 11:59:57');
INSERT INTO `sp_manage_authority` VALUES ('106', '150502', '工程管理', '1505', '3', '1', '2019-11-14 11:59:57', '2019-11-14 11:59:57');
INSERT INTO `sp_manage_authority` VALUES ('107', '3001', '实施工程', '30', '2', '0', '2019-10-30 11:18:02', '2019-10-30 11:18:02');
INSERT INTO `sp_manage_authority` VALUES ('108', '3002', '竣工工程', '30', '2', '0', '2019-10-30 11:18:02', '2019-10-30 11:18:02');
INSERT INTO `sp_manage_authority` VALUES ('109', '300104', '编辑(指定实施人员和状态)', '3001', '3', '0', '2019-10-30 11:18:02', '2019-10-30 11:18:02');
INSERT INTO `sp_manage_authority` VALUES ('110', '300101', '施工组织统筹', '3001', '3', '1', '2019-10-19 17:26:46', '2019-10-19 17:26:40');
INSERT INTO `sp_manage_authority` VALUES ('111', '300102', '现场材料管理', '3001', '3', '1', '2019-10-19 17:26:48', '2019-10-19 17:26:42');
INSERT INTO `sp_manage_authority` VALUES ('112', '300103', '施工进度管理', '3001', '3', '1', '2019-10-19 17:26:49', '2019-10-19 17:26:44');
INSERT INTO `sp_manage_authority` VALUES ('113', '3003', '施工流程配置', '30', '2', '0', '2019-10-25 14:47:06', '2019-10-25 14:47:08');
INSERT INTO `sp_manage_authority` VALUES ('114', '300301', '施工流程配置详情', '3003', '3', '1', '2019-10-25 14:47:06', '2019-10-25 14:47:08');
INSERT INTO `sp_manage_authority` VALUES ('115', '300302', '编辑施工流程配置', '3003', '3', '1', '2019-10-25 14:47:06', '2019-10-25 14:47:08');
INSERT INTO `sp_manage_authority` VALUES ('116', '30010101', '编辑施工组织统筹', '300101', '4', '0', '2019-10-30 11:18:02', '2019-10-30 11:18:02');
INSERT INTO `sp_manage_authority` VALUES ('117', '30010201', '查看现场材料管理', '300102', '4', '1', '2019-10-30 11:18:02', '2019-10-30 11:18:02');
INSERT INTO `sp_manage_authority` VALUES ('118', '30010202', '编辑现场材料管理', '300102', '4', '1', '2019-10-30 11:18:02', '2019-10-30 11:18:02');
INSERT INTO `sp_manage_authority` VALUES ('119', '30010301', '编辑施工进度管理', '300103', '4', '1', null, null);

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
  `material_sort` int(10) DEFAULT '1' COMMENT '材料排序',
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
  KEY `architectural_sub_id` (`architectural_sub_id`,`status`) USING BTREE,
  KEY `architectural_id` (`architectural_id`,`architectural_sub_id`) USING BTREE,
  KEY `material_code` (`material_code`(191),`material_type`(191),`status`) USING BTREE,
  KEY `material_code_2` (`material_code`(191)) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_material
-- ----------------------------
INSERT INTO `sp_material` VALUES ('16', '6', '2', '橡胶垫片', 'DP-JC-FS-01', 'DP', 'JC', 'FS', '01', '1厚橡胶条', '5', '1', '1', '6', '王括', '2019-07-26', '2019-10-21', '1', '杨亚君(总经理)', 'm', 'm', '无', '捆装', '1.00000', '0', '150', '0', '1', '0', '1', '2019-10-21', null, null);
INSERT INTO `sp_material` VALUES ('17', '6', '2', '抗拔螺栓', 'LS-JC-KB-16', 'LS', 'JC', 'KB', '16', '镀锌螺杆  φ16  长度400mm', '5', '2', '1', '6', '王括', '2019-07-26', '2019-10-21', '1', '杨亚君(总经理)', '根', '根', '无', '捆装', '0.40000', '1000', '0', '0', '0', '16', '1', '2019-10-21', null, null);
INSERT INTO `sp_material` VALUES ('18', '6', '2', '抗拔螺栓螺母', 'LS-JC-KB-16-01', 'LS', 'JC', 'KB', '16-01', '镀锌螺母   φ16', '5', '3', '1', '6', '王括', '2019-07-26', '2019-10-21', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('19', '6', '2', '抗拔螺栓垫片', 'LS-JC-KB-16-02', 'LS', 'JC', 'KB', '16-02', '镀锌圆形垫片  φ16', '5', '4', '1', '6', '王括', '2019-07-26', '2019-10-21', '1', '杨亚君(总经理)', '阿萨德', '搜索', '12', '31', '11.00000', '1', '23', '12', '321', '332', '6', '2019-07-29', '1', '2019-10-21');
INSERT INTO `sp_material` VALUES ('20', '6', '3', '橡胶垫片', 'DP-JC-FS-01', 'DP', 'JC', 'FS', '01', '1厚橡胶条', '5', '1', '1', '6', '王括', '2019-07-26', '2019-10-21', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('21', '6', '4', '橡胶垫片', 'DP-JC-FS-01', 'DP', 'JC', 'FS', '01', '1厚橡胶条', '5', '1', '1', '6', '王括', '2019-07-26', '2019-10-21', '1', '杨亚君(总经理)', '维尔切', '沙发斯蒂芬', '4', '5', '3.00000', '6', '7', '8', '9', '0', '6', '2019-07-29', '6', '2019-08-30');
INSERT INTO `sp_material` VALUES ('22', '6', '4', '抗拔螺栓', 'LS-LS-KB-16', 'LS', 'LS', 'KB', '16', '镀锌螺杆  φ16  长度400mm', '5', '2', '1', '6', '王括', '2019-07-26', '2019-10-21', '1', '杨亚君(总经理)', '阿萨德', '是是是', '4', '4', '3.00000', '5', '6', '7', '8', '9', '6', '2019-07-29', '6', '2019-08-02');
INSERT INTO `sp_material` VALUES ('29', '7', '9', '薄壁轻钢结构龙骨', 'QGJG-JG-Z', 'QGJG', 'JG', '0', 'Z', '热镀锌 /G550/Z185', '2', '1', '1', '6', '王括', '2019-07-26', '2019-10-11', '1', '杨亚君(总经理)', 'kg', 'kg', '无', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2019-10-08', '1', '2019-10-11');
INSERT INTO `sp_material` VALUES ('30', '7', '9', '结构连接件（墙体-墙体）', 'PJ -JG -01', 'PJ', 'JG', '0', '01', '热镀锌/G550/Z185/1.0厚', '2', '2', '1', '6', '王括', '2019-07-26', '2019-10-11', '1', '杨亚君(总经理)', 'kg', 'kg', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2019-09-28', null, null);
INSERT INTO `sp_material` VALUES ('31', '7', '9', '结构屋架连接件（屋架-墙体）', 'PJ -JG -02', 'PJ', 'JG', '0', '02', '热镀锌/G550/Z185/1.0厚', '2', '3', '1', '6', '王括', '2019-07-26', '2019-10-11', '1', '杨亚君(总经理)', 'kg', 'kg', '无', '木箱包装', '1.00000', '0', '0', '0', '0', '0', '1', '2019-10-08', '1', '2019-10-11');
INSERT INTO `sp_material` VALUES ('32', '7', '9', '结构连接件（檐口）', 'PJ-JG-03', 'PJ', 'JG', '0', '03', '热镀锌/G550/Z185/1.0厚', '2', '4', '1', '6', '王括', '2019-07-26', '2019-10-11', '1', '杨亚君(总经理)', 'kg', 'kg', '无', '木箱包装', '1.00000', '0', '0', '0', '0', '0', '1', '2019-10-10', '1', '2019-10-11');
INSERT INTO `sp_material` VALUES ('33', '8', '6', '石膏板（外墙内侧）', 'SGB-WQ-NZ-12', 'SGB', 'WQ', 'NZ', '12', '普通纸面石膏板/12厚', '5', '2', '1', '6', '王括', '2019-07-26', '2019-10-11', '1', '杨亚君(总经理)', 'm2', '张', '无', '捆装', '0.28000', '1', '100', '100', '0', '0', '6', '2019-09-26', '1', '2019-10-11');
INSERT INTO `sp_material` VALUES ('37', '13', '15', '玻璃棉（吊顶内-单层铺设）', 'BLM-DD-BW-75', 'BLM', 'DD', 'BW', '75', '单面铝箔玻璃棉/16kg/立方/75厚', '5', '3', '1', '6', '王括', '2019-07-26', '2019-09-18', '1', '杨亚君(总经理)', '预算单位', '采购单位', '规格', '要不', '0.80000', '5', '6', '7', '8', '9', '6', '2019-08-16', null, null);
INSERT INTO `sp_material` VALUES ('38', '13', '15', '玻璃棉（吊顶内-双层铺设）', 'BLM-DD-BW-75*2', 'BLM', 'DD', 'BW', '75*2', '单面铝箔玻璃棉/16kg/立方/150厚', '5', '5', '1', '6', '王括', '2019-07-26', '2019-09-18', '1', '杨亚君(总经理)', '元', '元', '测试规格', '要求不同', '0.99000', '1', '2', '3', '4', '5', '6', '2019-08-16', null, null);
INSERT INTO `sp_material` VALUES ('41', '7', '9', '结构连接件（屋脊）', 'PJ-JG-04', 'PJ', 'JG', '0', '04', '热镀锌/G550/Z185/1.0厚', '2', '15', '1', '6', '王括', '2019-09-17', '2019-10-11', '1', '杨亚君(总经理)', 'kg', 'kg', '0', '散装', '1.00000', '0', '0', '0', '0', '0', '1', '2019-10-08', '1', '2019-10-11');
INSERT INTO `sp_material` VALUES ('42', '8', '6', '石膏板（外墙内侧）', 'SGB-WQ-NZ-FH15', 'SGB', 'WQ', 'NZ', 'FH15', '防火石膏板/15厚', '5', '4', '1', '1', '杨亚君(总经理)', '2019-09-17', '2019-10-11', '1', '杨亚君(总经理)', 'm2', 'm2', '正常', '无', '1.00000', '3000', '1200', '0', '15', '0', '1', '2019-09-28', null, null);
INSERT INTO `sp_material` VALUES ('43', '8', '6', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-10', 'GSG', 'WQ', 'NZ', '10', '硅酸钙板/10厚', '5', '6', '1', '1', '杨亚君(总经理)', '2019-09-17', '2019-10-11', '1', '杨亚君(总经理)', 'm2', '张', '无', '捆装', '0.35000', '2400', '1200', '0', '10', '0', '1', '2019-10-11', null, null);
INSERT INTO `sp_material` VALUES ('44', '8', '6', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-12', 'GSG', 'WQ', 'NZ', '12', '硅酸钙板/12厚', '5', '8', '1', '1', '杨亚君(总经理)', '2019-09-17', '2019-10-11', '1', '杨亚君(总经理)', 'kg', 'kg', '无', '捆装', '0.35000', '2400', '1200', '0', '12', '0', '1', '2019-10-11', null, null);
INSERT INTO `sp_material` VALUES ('45', '8', '6', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-15', 'GSG', 'WQ', 'NZ', '15', '硅酸钙板/15厚', '5', '10', '1', '1', '杨亚君(总经理)', '2019-09-17', '2019-10-11', '1', '杨亚君(总经理)', 'm', '张', '无', '捆装', '1.00000', '2400', '1200', '0', '15', '0', '1', '2019-10-13', null, null);
INSERT INTO `sp_material` VALUES ('46', '8', '6', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-50', 'YM', 'WQ', 'BW', '50', '岩棉板/100KG/立方/50厚', '5', '20', '1', '1', '杨亚君(总经理)', '2019-09-17', '2019-10-11', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('47', '8', '6', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-60', 'YM', 'WQ', 'BW', '60', '岩棉板/100KG/立方/60厚', '5', '16', '1', '1', '杨亚君(总经理)', '2019-09-17', '2019-10-11', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('48', '8', '6', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-70', 'YM', 'WQ', 'BW', '70', '岩棉板/100KG/立方/70厚', '5', '18', '1', '1', '杨亚君(总经理)', '2019-09-17', '2019-10-11', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('49', '8', '6', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-80', 'YM', 'WQ', 'BW', '80', '岩棉板/100KG/立方/80厚', '5', '22', '1', '1', '杨亚君(总经理)', '2019-09-17', '2019-10-11', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('50', '8', '6', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-100', 'YM', 'WQ', 'BW', '100', '岩棉板/100KG/立方/100厚', '5', '24', '1', '1', '杨亚君(总经理)', '2019-09-17', '2019-10-11', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('51', '8', '6', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-75', 'BLM', 'WQ', 'BW', '75', '单面铝箔玻璃棉毡/16KG/立方/75厚', '5', '12', '1', '1', '杨亚君(总经理)', '2019-09-17', '2019-10-11', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('52', '8', '6', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-100', 'BLM', 'WQ', 'BW', '100', '单面铝箔玻璃棉毡/16KG/立方/100厚', '5', '14', '1', '1', '杨亚君(总经理)', '2019-09-17', '2019-10-11', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('53', '8', '6', 'OSB结构板（外墙）', 'OSB-WQ-JG-09', 'OSB', 'WQ', 'JG', '09', 'OSB板/结构三级/9厚', '10', '26', '1', '1', '杨亚君(总经理)', '2019-09-17', '2019-10-11', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('54', '8', '6', 'OSB结构板（外墙）', 'OSB-WQ-JG-12', 'OSB', 'WQ', 'JG', '12', 'OSB板/结构三级/12厚', '10', '28', '1', '1', '杨亚君(总经理)', '2019-09-17', '2019-10-11', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('55', '8', '6', 'OSB结构板（外墙）', 'OSB-WQ-JG-15', 'OSB', 'WQ', 'JG', '15', 'OSB板/结构三级/12厚', '10', '30', '1', '1', '杨亚君(总经理)', '2019-09-17', '2019-10-11', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('56', '8', '6', '防潮纸（外墙）', 'FCZ-WQ-FS-035', 'FCZ', 'WQ', 'FS', '035', '防潮纸/0.35厚', '5', '32', '1', '1', '杨亚君(总经理)', '2019-09-17', '2019-10-11', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('57', '8', '7', '防潮纸（外墙）', 'FCZ-WQ-FS-086', 'FCZ', 'WQ', 'FS', '086', '防潮纸/0.5厚', '5', '34', '1', '6', '王括', '2019-09-17', '2019-09-18', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('58', '8', '7', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-70', 'YM', 'WQ', 'BW', '70', '岩棉板/100KG/立方/70厚', '5', '15', '1', '6', '王括', '2019-09-17', '2019-09-18', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('59', '8', '7', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-80', 'YM', 'WQ', 'BW', '80', '岩棉板/100KG/立方/80厚', '5', '16', '1', '6', '王括', '2019-09-17', '2019-09-18', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('60', '8', '7', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-100', 'BLM', 'WQ', 'BW', '100', '单面铝箔玻璃棉毡/16KG/立方/100厚', '5', '22', '1', '6', '王括', '2019-09-17', '2019-09-18', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('61', '8', '7', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-75', 'BLM', 'WQ', 'BW', '75', '单面铝箔玻璃棉毡/16KG/立方/75厚', '5', '20', '1', '6', '王括', '2019-09-17', '2019-09-18', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('62', '8', '7', '防潮纸（外墙）', 'FCZ-WQ-FS-035', 'FCZ', 'WQ', 'FS', '035', '防潮纸/0.35厚', '5', '30', '1', '6', '王括', '2019-09-17', '2019-09-18', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('63', '8', '7', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-10', 'GSG', 'WQ', 'NZ', '10', '硅酸钙板/10厚', '5', '6', '1', '6', '王括', '2019-09-17', '2019-09-18', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('64', '8', '7', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-12', 'GSG', 'WQ', 'NZ', '12', '硅酸钙板/12厚', '5', '8', '1', '6', '王括', '2019-09-17', '2019-09-18', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('65', '8', '7', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-15', 'GSG', 'WQ', 'NZ', '15', '硅酸钙板/15厚', '5', '10', '1', '6', '王括', '2019-09-17', '2019-09-18', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('66', '8', '7', 'OSB结构板（外墙）', 'OSB-WQ-JG-09', 'OSB', 'WQ', 'JG', '09', 'OSB板/结构三级/9厚', '10', '24', '1', '6', '王括', '2019-09-17', '2019-09-18', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('67', '8', '7', 'OSB结构板（外墙）', 'OSB-WQ-JG-12', 'OSB', 'WQ', 'JG', '12', 'OSB板/结构三级/12厚', '10', '26', '1', '6', '王括', '2019-09-17', '2019-09-18', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('68', '8', '7', 'OSB结构板（外墙）', 'OSB-WQ-JG-15', 'OSB', 'WQ', 'JG', '15', 'OSB板/结构三级/12厚', '10', '28', '1', '6', '王括', '2019-09-17', '2019-09-18', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('69', '8', '7', '石膏板（外墙内侧）', 'SGB-WQ-NZ-12', 'SGB', 'WQ', 'NZ', '12', '普通纸面石膏板/12厚', '5', '2', '1', '6', '王括', '2019-09-17', '2019-09-18', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('70', '8', '7', '石膏板（外墙内侧）', 'SGB-WQ-NZ-FH15', 'SGB', 'WQ', 'NZ', 'FH15', '防火石膏板/15厚', '5', '4', '1', '6', '王括', '2019-09-17', '2019-09-18', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('71', '8', '7', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-50', 'YM', 'WQ', 'BW', '50', '岩棉板/100KG/立方/50厚', '5', '12', '1', '6', '王括', '2019-09-17', '2019-09-18', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('72', '8', '7', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-60', 'YM', 'WQ', 'BW', '60', '岩棉板/100KG/立方/60厚', '5', '14', '1', '6', '王括', '2019-09-17', '2019-09-18', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('73', '8', '7', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-100', 'YM', 'WQ', 'BW', '100', '岩棉板/100KG/立方/100厚', '5', '18', '1', '6', '王括', '2019-09-17', '2019-09-18', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('74', '8', '6', '防潮纸（外墙）', 'FCZ-WQ-FS-086', 'FCZ', 'WQ', 'FS', '036', '防潮纸/0.5厚', '5', '34', '1', '1', '杨亚君(总经理)', '2019-09-18', '2019-10-11', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('75', '8', '6', 'XPS保温板（外墙）', 'XPS-WQ-BW-30B1', 'XPS', 'WQ', 'BW', '30B1', '挤塑聚苯保温板/B1级/30厚', '5', '36', '1', '1', '杨亚君(总经理)', '2019-09-18', '2019-10-11', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('76', '8', '6', 'XPS保温板（外墙）', 'XPS-WQ-BW-50B1', 'XPS', 'WQ', 'BW', '50B1', '挤塑聚苯保温板/B1级/50厚', '5', '38', '1', '1', '杨亚君(总经理)', '2019-09-18', '2019-10-11', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('77', '8', '6', 'XPS保温板（外墙）', 'XPS-WQ-BW-60B1', 'XPS', 'WQ', 'BW', '60B1', '挤塑聚苯保温板/B1级/60厚', '5', '42', '1', '1', '杨亚君(总经理)', '2019-09-18', '2019-10-11', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('78', '8', '6', 'XPS保温板（外墙）', 'XPS-WQ-BW-80B1', 'XPS', 'WQ', 'BW', '80B1', '挤塑聚苯保温板/B1级/80厚', '5', '45', '1', '1', '杨亚君(总经理)', '2019-09-18', '2019-10-11', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('79', '8', '7', 'XPS保温板（外墙）', 'XPS-WQ-BW-30B1', 'XPS', 'WQ', 'BW', '30B1', '挤塑聚苯保温板/B1级/30厚', '5', '36', '1', '1', '杨亚君(总经理)', '2019-09-18', '2019-09-18', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('80', '8', '7', 'XPS保温板（外墙）', 'XPS-WQ-BW-50B1', 'XPS', 'WQ', 'BW', '50B1', '挤塑聚苯保温板/B1级/50厚', '5', '38', '1', '1', '杨亚君(总经理)', '2019-09-18', '2019-09-18', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('81', '8', '7', 'XPS保温板（外墙）', 'XPS-WQ-BW-60B1', 'XPS', 'WQ', 'BW', '60B1', '挤塑聚苯保温板/B1级/60厚', '5', '42', '1', '1', '杨亚君(总经理)', '2019-09-18', '2019-09-18', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('82', '8', '7', 'XPS保温板（外墙）', 'XPS-WQ-BW-80B1', 'XPS', 'WQ', 'BW', '80B1', '挤塑聚苯保温板/B1级/80厚', '5', '45', '1', '1', '杨亚君(总经理)', '2019-09-18', '2019-09-18', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('83', '10', '12', '沥青瓦（屋面）', 'LQW-WM-WZ-Z', 'LQW', 'WM', 'WZ', 'Z', '单层沥青瓦', '10', '2', '1', '1', '杨亚君(总经理)', '2019-09-18', '2019-09-18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('84', '10', '12', 'SBS防水卷材(屋面）', 'SBS-WM-FS-Z', 'SBS', 'WM', 'FS', 'Z', 'SBS改性沥青防水卷材/3厚', '10', '5', '1', '1', '杨亚君(总经理)', '2019-09-18', '2019-09-18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('85', '10', '12', 'APP自粘防水卷材（屋面）', 'APP-WM-FS-Z', 'APP', 'WM', 'FS', 'Z', 'APP自粘性防水卷材/2厚', '10', '10', '1', '1', '杨亚君(总经理)', '2019-09-18', '2019-09-18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('86', '10', '12', 'OSB结构板（屋面）', 'OSB-WM-JG-12', 'OSB', 'WM', 'JG', '12', 'OSB结构板/三级/12厚', '10', '12', '1', '1', '杨亚君(总经理)', '2019-09-18', '2019-09-18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('87', '10', '12', 'OSB结构板（屋面）', 'OSB-WM-JG-15', 'OSB', 'WM', 'JG', '15', 'OSB结构板/三级/15厚', '10', '15', '1', '1', '杨亚君(总经理)', '2019-09-18', '2019-09-18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('88', '9', '10', '石膏板（内墙双侧单层）', 'SGB-NQ-NZ-12', 'SGB', 'NQ', 'NZ', '12', '普通纸面石膏板/12厚', '10', '2', '1', '1', '杨亚君(总经理)', '2019-09-18', '2019-09-18', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('89', '9', '10', '岩棉板（内墙龙骨内）', 'YM-NQ-BW-60', 'YM', 'NQ', 'BW', '60', '岩棉板/100KG/立方/60厚', '5', '5', '1', '1', '杨亚君(总经理)', '2019-09-18', '2019-09-18', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('90', '9', '10', '岩棉板（内墙龙骨内）', 'YM-NQ-BW-80', 'YM', 'NQ', 'BW', '80', '岩棉板/100KG/立方/80厚', '5', '8', '1', '1', '杨亚君(总经理)', '2019-09-18', '2019-09-18', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('91', '9', '10', '玻璃棉（内墙龙骨内）', 'BLM-NQ-BW-75', 'BLM', 'NQ', 'BW', '75', '单面铝箔玻璃棉/16kg/立方/75厚', '5', '10', '1', '1', '杨亚君(总经理)', '2019-09-18', '2019-09-18', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('92', '9', '10', '玻璃棉（内墙龙骨内）', 'BLM-NQ-BW-100', 'BLM', 'NQ', 'BW', '100', '单面铝箔玻璃棉/16kg/立方/100厚', '5', '12', '1', '1', '杨亚君(总经理)', '2019-09-18', '2019-09-18', '1', '杨亚君(总经理)', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('93', '9', '20', '石膏板（内墙双侧双层）', 'SGB-NQ-NZ-12', 'SGB', 'NQ', 'NZ', '12', '普通纸面石膏板/12厚', '10', '2', '1', '1', '杨亚君(总经理)', '2019-09-18', '2019-09-18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('94', '9', '20', '岩棉板（内墙龙骨内）', 'YM-NQ-BW-60', 'YM', 'NQ', 'BW', '60', '岩棉板/100KG/立方/60厚', '5', '5', '1', '1', '杨亚君(总经理)', '2019-09-18', '2019-09-18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('95', '9', '20', '岩棉板（内墙龙骨内）', 'YM-NQ-BW-80', 'YM', 'NQ', 'BW', '80', '岩棉板/100KG/立方/80厚', '5', '8', '1', '1', '杨亚君(总经理)', '2019-09-18', '2019-09-18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('96', '9', '20', '玻璃棉（内墙龙骨内）', 'BLM-NQ-BW-75', 'BLM', 'NQ', 'BW', '75', '单面铝箔玻璃棉/16kg/立方/75厚', '5', '10', '1', '1', '杨亚君(总经理)', '2019-09-18', '2019-09-18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('97', '9', '20', '玻璃棉（内墙龙骨内）', 'BLM-NQ-BW-100', 'BLM', 'NQ', 'BW', '100', '单面铝箔玻璃棉/16kg/立方/100厚', '5', '12', '1', '1', '杨亚君(总经理)', '2019-09-18', '2019-09-18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('98', '13', '15', '轻钢龙骨吊顶', 'QGLG-DD-NZ-Z', 'QGLG', 'DD', 'NZ', 'Z', '镀锌轻钢龙骨', '5', '7', '1', '1', '杨亚君(总经理)', '2019-09-18', '2019-09-18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('99', '13', '15', '石膏板（吊顶）', 'SGB-DD-NZ-9.5', 'SGB', 'DD', 'NZ', '9.5', '普通纸面石膏板/9.5厚', '5', '10', '1', '1', '杨亚君(总经理)', '2019-09-18', '2019-09-18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('100', '13', '15', '石膏板（吊顶）', 'SGB-DD-NZ-FS9.5', 'SGB', 'DD', 'NZ', 'FS9.5', '防水石膏板/9.5厚', '5', '12', '1', '1', '杨亚君(总经理)', '2019-09-18', '2019-09-18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('101', '13', '15', '石膏板（吊顶）', 'SGB-DD-NZ-FH15', 'SGB', 'DD', 'NZ', 'FH15', '防火石膏板/15厚', '5', '15', '1', '1', '杨亚君(总经理)', '2019-09-18', '2019-09-18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('102', '14', '38', '双玻断桥铝窗', 'C-C-WZ-Z', 'C', 'C', 'WZ', 'Z', '双玻断桥铝/60系列/普通玻璃', '0', '2', '1', '1', '杨亚君(总经理)', '2019-09-18', '2019-09-18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('103', '7', '5', '薄壁轻钢结构龙骨', 'QGJG-JG-Z', 'QGJG', 'JG', '0', 'Z', '镀铝锌G550   55%   AZ150', '2', '1', '1', '1', '杨亚君(总经理)', '2019-10-11', '2019-10-21', '1', '杨亚君(总经理)', 'kg', 'kg', '无', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2019-10-11', null, null);
INSERT INTO `sp_material` VALUES ('104', '7', '5', '结构连接件（墙体-墙体）', 'PJ-JG-01', 'PJ', 'JG', '0', '01', '镀铝锌G550 /55%  AZ150/1.0厚', '2', '2', '1', '1', '杨亚君(总经理)', '2019-10-11', '2019-10-21', '1', '杨亚君(总经理)', 'kg', 'kg', '无', '木箱包装', '1.00000', '0', '0', '0', '0', '0', '1', '2019-10-11', null, null);
INSERT INTO `sp_material` VALUES ('105', '7', '5', '结构屋架连接件（屋架-墙体）', 'PJ-JG-02', 'PJ', 'JG', '0', '02', '镀铝锌G550 /55%  AZ150/1.0厚', '2', '3', '1', '1', '杨亚君(总经理)', '2019-10-11', '2019-10-21', '1', '杨亚君(总经理)', 'kg', 'kg', '无', '木箱包装', '1.00000', '0', '0', '0', '0', '0', '1', '2019-10-11', null, null);
INSERT INTO `sp_material` VALUES ('106', '7', '5', '结构连接件（檐口）', 'PJ-JG-03', 'PJ', 'JG', '0', '03', '镀铝锌G550 /55%  AZ150/1.0厚', '2', '4', '1', '1', '杨亚君(总经理)', '2019-10-11', '2019-10-21', '1', '杨亚君(总经理)', 'kg', 'kg', '无', '木箱包装', '1.00000', '0', '0', '0', '0', '0', '1', '2019-10-11', null, null);
INSERT INTO `sp_material` VALUES ('107', '7', '5', '结构连接件（屋脊）', 'PJ-JG-04', 'PJ', 'JG', '0', '04', '镀铝锌G550 /55%  AZ150/1.0厚', '2', '5', '1', '1', '杨亚君(总经理)', '2019-10-11', '2019-10-21', '1', '杨亚君(总经理)', 'kg', 'kg', '无', '散装', '1.00000', '0', '0', '0', '0', '0', '1', '2019-10-11', null, null);
INSERT INTO `sp_material` VALUES ('108', '6', '2', '抗拔螺栓垫片', 'LS-JC-KB-16-03', 'LS', 'JC', 'KB', '16-03', '镀锌方形垫片  φ18   40*40*5mm', '5', '5', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('109', '6', '2', '靴型连接件', 'PJ-JC-KB-15', 'PJ', 'JC', 'KB', '15', '镀锌靴型配件 1.6厚   承载力15KN', '5', '6', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('110', '6', '2', '靴型连接件', 'PJ-JC-KB-30', 'PJ', 'JC', 'KB', '30', '镀锌靴型配件 1.6厚   承载力30KN', '5', '7', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('111', '6', '2', '抗剪螺栓', 'LS-JC-KJ-120', 'LS', 'JC', 'KJ', '120', '镀锌膨胀螺栓    φ12  长度120mm', '5', '8', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('112', '6', '2', '抗剪螺栓', 'LS-JC-KJ-150', 'LS', 'JC', 'KJ', '150', '镀锌膨胀螺栓    φ12  长度150mm', '5', '9', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('113', '6', '2', '植筋胶', 'JGJ-JC-KB-01', 'JGJ', 'JC', 'KB', '01', '高强锚固(植筋)胶环氧类结构胶', '5', '10', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('114', '6', '3', '抗拔螺栓', 'LS-JC-KB-16', 'LS', 'JC', 'KB', '16', '镀锌螺杆  φ16  长度400mm', '5', '2', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('115', '6', '3', '抗拔螺栓螺母', 'LS-JC-KB-16-01', 'LS', 'JC', 'KB', '16-01', '镀锌螺母   φ16', '5', '3', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('116', '6', '3', '抗拔螺栓垫片', 'LS-JC-KB-16-02', 'LS', 'JC', 'KB', '16-02', '镀锌圆形垫片  φ16', '5', '4', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('117', '6', '3', '抗拔螺栓垫片', 'LS-JC-KB-16-03', 'LS', 'JC', 'KB', '16-03', '镀锌方形垫片  φ18   40*40*5mm', '5', '5', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('118', '6', '3', '靴型连接件', 'PJ-JC-KB-15', 'PJ', 'JC', 'KB', '15', '镀锌靴型配件 1.6厚   承载力15KN', '5', '6', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('119', '6', '3', '靴型连接件', 'PJ-JC-KB-30', 'PJ', 'JC', 'KB', '30', '镀锌靴型配件 1.6厚   承载力30KN', '5', '7', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('120', '6', '3', '抗剪螺栓', 'LS-JC-KJ-120', 'LS', 'JC', 'KJ', '120', '镀锌膨胀螺栓    φ12  长度120mm', '5', '8', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('121', '6', '3', '抗剪螺栓', 'LS-JC-KJ-150', 'LS', 'JC', 'KJ', '150', '镀锌膨胀螺栓    φ12  长度150mm', '5', '9', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('122', '6', '3', '植筋胶', 'JGJ-JC-KB-01', 'JGJ', 'JC', 'KB', '01', '高强锚固(植筋)胶环氧类结构胶', '5', '10', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('123', '6', '4', '抗拔螺栓螺母', 'LS-JC-KB-16-01', 'LS', 'JC', 'KB', '16-01', '镀锌螺母   φ16', '5', '3', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('124', '6', '4', '抗拔螺栓垫片', 'LS-JC-KB-16-02', 'LS', 'JC', 'KB', '16-02', '镀锌圆形垫片  φ16', '5', '4', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('125', '6', '4', '抗拔螺栓垫片', 'LS-JC-KB-16-03', 'LS', 'JC', 'KB', '16-03', '镀锌方形垫片  φ18   40*40*5mm', '5', '5', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('126', '6', '4', '靴型连接件', 'PJ-JC-KB-15', 'PJ', 'JC', 'KB', '15', '镀锌靴型配件 1.6厚   承载力15KN', '5', '6', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('127', '6', '4', '靴型连接件', 'PJ-JC-KB-30', 'PJ', 'JC', 'KB', '30', '镀锌靴型配件 1.6厚   承载力30KN', '5', '7', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('128', '6', '4', '抗剪螺栓', 'LS-JC-KJ-120', 'LS', 'JC', 'KJ', '120', '镀锌膨胀螺栓    φ12  长度120mm', '5', '8', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('129', '6', '4', '抗剪螺栓', 'LS-JC-KJ-150', 'LS', 'JC', 'KJ', '150', '镀锌膨胀螺栓    φ12  长度150mm', '5', '9', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('130', '6', '4', '植筋胶', 'JGJ-JC-KB-01', 'JGJ', 'JC', 'KB', '01', '高强锚固(植筋)胶环氧类结构胶', '5', '10', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('131', '6', '8', '橡胶垫片', 'DP-JC-FS-01', 'DP', 'JC', 'FS', '01', '1厚橡胶条', '5', '1', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('132', '6', '8', '抗拔螺栓', 'LS-JC-KB-16', 'LS', 'JC', 'KB', '16', '镀锌螺杆  φ16  长度400mm', '5', '2', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('133', '6', '8', '抗拔螺栓螺母', 'LS-JC-KB-16-01', 'LS', 'JC', 'KB', '16-01', '镀锌螺母   φ16', '5', '3', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('134', '6', '8', '抗拔螺栓垫片', 'LS-JC-KB-16-02', 'LS', 'JC', 'KB', '16-02', '镀锌圆形垫片  φ16', '5', '4', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('135', '6', '8', '抗拔螺栓垫片', 'LS-JC-KB-16-03', 'LS', 'JC', 'KB', '16-03', '镀锌方形垫片  φ18   40*40*5mm', '5', '5', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('136', '6', '8', '靴型连接件', 'PJ-JC-KB-15', 'PJ', 'JC', 'KB', '15', '镀锌靴型配件 1.6厚   承载力15KN', '5', '6', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('137', '6', '8', '靴型连接件', 'PJ-JC-KB-30', 'PJ', 'JC', 'KB', '30', '镀锌靴型配件 1.6厚   承载力30KN', '5', '7', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('138', '6', '8', '抗剪螺栓', 'LS-JC-KJ-120', 'LS', 'JC', 'KJ', '120', '镀锌膨胀螺栓    φ12  长度120mm', '5', '8', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('139', '6', '8', '抗剪螺栓', 'LS-JC-KJ-150', 'LS', 'JC', 'KJ', '150', '镀锌膨胀螺栓    φ12  长度150mm', '5', '9', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('140', '6', '8', '植筋胶', 'JGJ-JC-KB-01', 'JGJ', 'JC', 'KB', '01', '高强锚固(植筋)胶环氧类结构胶', '5', '10', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('141', '7', '23', '薄壁轻钢结构龙骨', 'QGJG-JG-Z', 'QGJG', 'JG', '0', 'Z', '热镀锌 /G550/Z275', '2', '1', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('142', '7', '23', '结构连接件（墙体-墙体）', 'PJ-JG-01', 'PJ', 'JG', '0', '01', '热镀锌/G550/Z275/1.0厚', '2', '2', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('143', '7', '23', '结构屋架连接件（屋架-墙体）', 'PJ-JG-02', 'PJ', 'JG', '0', '02', '热镀锌/G550/Z275/1.0厚', '2', '3', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('144', '7', '23', '结构连接件（檐口）', 'PJ-JG-03', 'PJ', 'JG', '0', '03', '热镀锌/G550/Z275/1.0厚', '2', '4', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('145', '7', '23', '结构连接件（屋脊）', 'PJ-JG-04', 'PJ', 'JG', '0', '04', '热镀锌/G550/Z275/1.0厚', '2', '15', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('146', '14', '39', '双玻断桥铝窗', 'C-C-WZ-Z', 'C', 'C', 'WZ', 'Z', '双玻断桥铝/60系列/钢化玻璃', '0', '2', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('147', '14', '40', '双玻断桥铝窗', 'C-C-WZ-Z', 'C', 'C', 'WZ', 'Z', '双玻断桥铝/70系列/钢化玻璃', '0', '2', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('148', '14', '41', '双玻断桥铝窗', 'C-C-WZ-Z', 'C', 'C', 'WZ', 'Z', '双玻断桥铝/70系列/钢化玻璃+LOW-E', '0', '2', '1', '1', '杨亚君(总经理)', '2019-10-21', '2019-10-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_material_brand_supplier
-- ----------------------------

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
  PRIMARY KEY (`id`),
  KEY `created_at` (`created_at`) USING BTREE,
  KEY `updated_at` (`updated_at`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_notice
-- ----------------------------

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
  KEY `offer_order_number` (`offer_order_number`) USING BTREE,
  KEY `offer_order_number_2` (`offer_order_number`) USING BTREE,
  KEY `project_id_2` (`project_id`,`engin_id`,`budget_id`) USING BTREE,
  KEY `engin_id_2` (`engin_id`,`budget_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_offer
-- ----------------------------

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
  KEY `brand_id` (`brand_id`) USING BTREE,
  KEY `project_id` (`project_id`,`engin_id`,`budget_id`) USING BTREE,
  KEY `engin_id` (`engin_id`,`budget_id`,`offer_id`) USING BTREE,
  KEY `budget_id_2` (`budget_id`,`budget_item_id`) USING BTREE,
  KEY `engin_id_2` (`engin_id`,`arch_id`,`sub_arch_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sp_offer_item
-- ----------------------------

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
-- Table structure for sp_progress
-- ----------------------------
DROP TABLE IF EXISTS `sp_progress`;
CREATE TABLE `sp_progress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL COMMENT '项目id',
  `engin_id` int(11) DEFAULT NULL COMMENT '工程id',
  `budget_id` int(11) DEFAULT NULL COMMENT '预算单id',
  `build_status` tinyint(4) DEFAULT '0' COMMENT '施工状态：0 未施工 1 施工中 2 竣工验收',
  `progress_status` tinyint(4) DEFAULT '1' COMMENT '进度状态 1正常 2延期',
  `arrange_status` tinyint(4) DEFAULT '0' COMMENT '施工组织统筹状态 1设计施工 0没有计划',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `created_uid` int(11) DEFAULT NULL COMMENT '创建人id',
  `created_at` date DEFAULT NULL COMMENT '创建时间',
  `edit_uid` int(11) DEFAULT NULL COMMENT '编辑人id',
  `updated_at` date DEFAULT NULL COMMENT '编辑时间',
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`,`engin_id`,`budget_id`) USING BTREE,
  KEY `engin_id` (`engin_id`,`budget_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_progress
-- ----------------------------

-- ----------------------------
-- Table structure for sp_progress_constrc_duration
-- ----------------------------
DROP TABLE IF EXISTS `sp_progress_constrc_duration`;
CREATE TABLE `sp_progress_constrc_duration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `engin_id` int(11) DEFAULT NULL,
  `progress_id` int(11) DEFAULT NULL,
  `arch_id` int(11) DEFAULT NULL,
  `sub_arch_id` int(11) DEFAULT NULL,
  `progress_start_time` date DEFAULT NULL COMMENT '开始时间',
  `progress_end_time` date DEFAULT NULL COMMENT '结束时间',
  `progress_duration` varchar(255) DEFAULT '' COMMENT '施工周期',
  `uid` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `progress_actual_start_time` date DEFAULT NULL COMMENT '开始时间(实际)',
  `progress_actual_end_time` date DEFAULT NULL COMMENT '结束时间(实际)',
  `progress_actual_duration` varchar(255) DEFAULT '' COMMENT '施工周期(实际)',
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`,`engin_id`,`progress_id`) USING BTREE,
  KEY `engin_id` (`engin_id`,`arch_id`,`sub_arch_id`) USING BTREE,
  KEY `engin_id_2` (`engin_id`,`sub_arch_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_progress_constrc_duration
-- ----------------------------

-- ----------------------------
-- Table structure for sp_progress_construc_info
-- ----------------------------
DROP TABLE IF EXISTS `sp_progress_construc_info`;
CREATE TABLE `sp_progress_construc_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `engin_id` int(11) DEFAULT NULL,
  `progress_id` int(11) DEFAULT NULL,
  `construction_accommodation` varchar(255) DEFAULT NULL COMMENT '现场人员住宿条件',
  `construction_scaffolding` varchar(255) DEFAULT NULL COMMENT '场地操作平台搭建条件(脚手架/安装平台)',
  `construction_crane` varchar(255) DEFAULT NULL COMMENT '场地大型施工机械使用条件(起重机/挖掘机)',
  `construction_leader` varchar(255) DEFAULT NULL COMMENT '施工负责人姓名',
  `construction_phone` varchar(255) DEFAULT NULL COMMENT '现场负责人联系方式',
  `construction_people_number` int(11) DEFAULT NULL COMMENT '施工队伍总人数',
  `construction_first_people` varchar(255) DEFAULT NULL COMMENT '首批进场人员数量',
  `construction_max_people` varchar(255) DEFAULT NULL COMMENT '最高进场人员数量',
  `construction_min_people` varchar(255) DEFAULT NULL COMMENT '最低进场人员数量',
  `security_people_number` int(11) DEFAULT NULL COMMENT '项目安全员人数',
  `security_people_name` varchar(255) DEFAULT NULL COMMENT '安全员姓名',
  `inspector_number` int(11) DEFAULT NULL COMMENT '项目质检员人数',
  `inspector` varchar(255) DEFAULT NULL COMMENT '质检员姓名',
  `progress_type` tinyint(4) DEFAULT '2' COMMENT '施工类型：1毛坯房不含基础 2毛坯房含基础',
  `uid` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `progress_all_start_time` date DEFAULT NULL COMMENT '施工开始时间',
  `progress_all_end_time` date DEFAULT NULL COMMENT '施工总结束时间',
  `progress_all_duration` varchar(255) DEFAULT NULL COMMENT '总施工周期',
  `progress_all_period` varchar(255) DEFAULT NULL COMMENT '施工总周期(天)',
  `progress_period` varchar(255) DEFAULT NULL COMMENT '流程周期（天）',
  `progress_synchronization_period` varchar(255) DEFAULT NULL COMMENT '同步周期(天)',
  `progress_work_hours` varchar(255) DEFAULT NULL COMMENT '施工总工时(天)',
  `progress_actual_all_start_time` date DEFAULT NULL COMMENT '施工开始时间(实际)',
  `progress_actual_all_end_time` date DEFAULT NULL COMMENT '施工总结束时间(实际)',
  `progress_actual_all_duration` varchar(255) DEFAULT NULL COMMENT '总施工周期(实际)',
  `progress_actual_all_period` varchar(255) DEFAULT NULL COMMENT '施工总周期(天)(实际)',
  `progress_actual_period` varchar(255) DEFAULT NULL COMMENT '流程周期（天）(实际)',
  `progress_actual_synchronization_period` varchar(255) DEFAULT NULL COMMENT '同步周期(天)(实际)',
  `progress_actual_work_hours` varchar(255) DEFAULT NULL COMMENT '施工总工时(天)(实际)',
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`,`engin_id`,`progress_id`) USING BTREE,
  KEY `engin_id` (`engin_id`,`progress_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_progress_construc_info
-- ----------------------------

-- ----------------------------
-- Table structure for sp_progress_contenc_process
-- ----------------------------
DROP TABLE IF EXISTS `sp_progress_contenc_process`;
CREATE TABLE `sp_progress_contenc_process` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL COMMENT '项目id',
  `engin_id` int(11) DEFAULT NULL COMMENT '工程id',
  `progress_id` int(11) DEFAULT NULL COMMENT '施工安装表id',
  `arch_id` int(11) DEFAULT NULL COMMENT '系统工程id',
  `sub_arch_id` int(11) DEFAULT NULL COMMENT '子系统工程id',
  `param_id` int(11) DEFAULT NULL COMMENT '施工安装配置表id',
  `arch_duration_plan` varchar(255) DEFAULT NULL COMMENT '施工周期（计划）',
  `arch_duration_actual` varchar(255) DEFAULT NULL COMMENT '施工周期（实际）',
  `uid` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`,`engin_id`,`progress_id`) USING BTREE,
  KEY `engin_id` (`engin_id`,`arch_id`,`sub_arch_id`) USING BTREE,
  KEY `param_id` (`param_id`) USING BTREE,
  KEY `engin_id_2` (`engin_id`,`param_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_progress_contenc_process
-- ----------------------------

-- ----------------------------
-- Table structure for sp_progress_params_conf
-- ----------------------------
DROP TABLE IF EXISTS `sp_progress_params_conf`;
CREATE TABLE `sp_progress_params_conf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `arch_id` int(11) DEFAULT NULL COMMENT '系统工程id',
  `sub_arch_id` int(11) DEFAULT NULL COMMENT '子系统工程id',
  `sub_system_code` varchar(255) DEFAULT NULL COMMENT '子系统编码',
  `name` varchar(255) DEFAULT NULL,
  `is_synchro` tinyint(4) DEFAULT '1' COMMENT '是否同步施工 1不同步 2同步',
  `sort` int(10) DEFAULT '1' COMMENT '排序',
  `status` tinyint(255) DEFAULT '1' COMMENT '是否有效 1有效 0无效',
  `uid` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `arch_id` (`arch_id`,`sub_arch_id`) USING BTREE,
  KEY `sub_system_code` (`sub_system_code`(191),`sort`) USING BTREE,
  KEY `sub_arch_id` (`sub_arch_id`,`sort`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_progress_params_conf
-- ----------------------------
INSERT INTO `sp_progress_params_conf` VALUES ('1', '8', '6', '1003-1', '墙体OSB板安装', '1', '1', '1', '1', '2019-10-29');
INSERT INTO `sp_progress_params_conf` VALUES ('2', '8', '6', '1003-1', '防潮纸铺装', '1', '2', '0', '1', '2019-10-29');
INSERT INTO `sp_progress_params_conf` VALUES ('3', '8', '6', '1003-1', '墙体横向木龙骨安装', '1', '3', '1', '1', '2019-10-29');
INSERT INTO `sp_progress_params_conf` VALUES ('4', '6', '2', '1001-01', '测试流程1', '1', '1', '1', '6', '2019-10-27');
INSERT INTO `sp_progress_params_conf` VALUES ('5', '6', '2', '1001-01', '测试流程2', '1', '2', '1', '6', '2019-10-27');
INSERT INTO `sp_progress_params_conf` VALUES ('6', '6', '2', '1001-01', '测试流程3', '2', '3', '1', '6', '2019-10-27');
INSERT INTO `sp_progress_params_conf` VALUES ('7', '6', '3', '1001-02', '测试流程1.2', '1', '1', '1', '6', '2019-10-26');
INSERT INTO `sp_progress_params_conf` VALUES ('8', '6', '3', '1001-02', '测试流程1.3', '2', '2', '1', '6', '2019-10-26');
INSERT INTO `sp_progress_params_conf` VALUES ('9', '6', '3', '1001-02', '测试流程1.4', '1', '3', '1', '6', '2019-10-26');
INSERT INTO `sp_progress_params_conf` VALUES ('10', '6', '3', '1001-02', '测试流程1.5', '2', '4', '1', '6', '2019-10-26');
INSERT INTO `sp_progress_params_conf` VALUES ('11', '6', '3', '1001-02', '测试流程1.6', '1', '5', '1', '6', '2019-10-26');
INSERT INTO `sp_progress_params_conf` VALUES ('12', '6', '4', '1001-03', '测试流程1.2', '1', '1', '1', '6', '2019-10-26');
INSERT INTO `sp_progress_params_conf` VALUES ('13', '6', '4', '1001-03', '测试流程1.3', '2', '2', '1', '6', '2019-10-26');
INSERT INTO `sp_progress_params_conf` VALUES ('14', '6', '4', '1001-03', '测试流程1.4', '1', '3', '1', '6', '2019-10-26');
INSERT INTO `sp_progress_params_conf` VALUES ('15', '6', '4', '1001-03', '测试流程1.5', '2', '4', '1', '6', '2019-10-26');
INSERT INTO `sp_progress_params_conf` VALUES ('16', '6', '4', '1001-03', '测试流程1.6', '1', '5', '1', '6', '2019-10-26');
INSERT INTO `sp_progress_params_conf` VALUES ('17', '6', '4', '1001-03', '测试流程1', '1', '6', '1', '6', '2019-10-26');
INSERT INTO `sp_progress_params_conf` VALUES ('18', '6', '4', '1001-03', '测试流程2', '1', '7', '1', '6', '2019-10-26');
INSERT INTO `sp_progress_params_conf` VALUES ('19', '6', '4', '1001-03', '测试流程3', '2', '8', '1', '6', '2019-10-26');
INSERT INTO `sp_progress_params_conf` VALUES ('20', '6', '8', '1001-04', '测试流程1', '1', '1', '1', '6', '2019-10-26');
INSERT INTO `sp_progress_params_conf` VALUES ('21', '6', '8', '1001-04', '测试流程2', '1', '2', '1', '6', '2019-10-26');
INSERT INTO `sp_progress_params_conf` VALUES ('22', '6', '8', '1001-04', '测试流程3', '2', '3', '1', '6', '2019-10-26');
INSERT INTO `sp_progress_params_conf` VALUES ('23', '6', '25', '1001-05', '测试流程1.2', '1', '1', '1', '6', '2019-10-26');
INSERT INTO `sp_progress_params_conf` VALUES ('24', '6', '25', '1001-05', '测试流程1.3', '2', '2', '1', '6', '2019-10-26');
INSERT INTO `sp_progress_params_conf` VALUES ('25', '6', '25', '1001-05', '测试流程1.4', '1', '3', '1', '6', '2019-10-26');
INSERT INTO `sp_progress_params_conf` VALUES ('26', '6', '25', '1001-05', '测试流程1.5', '2', '4', '1', '6', '2019-10-26');
INSERT INTO `sp_progress_params_conf` VALUES ('27', '6', '25', '1001-05', '测试流程1.6', '1', '5', '1', '6', '2019-10-26');
INSERT INTO `sp_progress_params_conf` VALUES ('28', '6', '2', '1001-01', '4这个测试流程字数比较多的情况', '1', '4', '1', '6', '2019-10-27');
INSERT INTO `sp_progress_params_conf` VALUES ('29', '6', '2', '1001-01', '5这个不同步', '1', '5', '1', '6', '2019-10-27');
INSERT INTO `sp_progress_params_conf` VALUES ('30', '6', '2', '1001-01', '6这个显示的是同步', '2', '6', '1', '6', '2019-10-27');
INSERT INTO `sp_progress_params_conf` VALUES ('31', '6', '2', '1001-01', '7测试', '1', '7', '1', '6', '2019-10-27');
INSERT INTO `sp_progress_params_conf` VALUES ('32', '6', '2', '1001-01', '8流程', '1', '8', '1', '6', '2019-10-27');
INSERT INTO `sp_progress_params_conf` VALUES ('33', '6', '2', '1001-01', '9少', '1', '9', '1', '6', '2019-10-27');
INSERT INTO `sp_progress_params_conf` VALUES ('34', '6', '2', '1001-01', '10', '1', '10', '1', '6', '2019-10-27');
INSERT INTO `sp_progress_params_conf` VALUES ('35', '7', '5', '100201', '墙板组装', '1', '1', '1', '1', '2019-10-29');
INSERT INTO `sp_progress_params_conf` VALUES ('36', '7', '5', '100201', '独立过梁组装', '1', '2', '1', '1', '2019-10-29');
INSERT INTO `sp_progress_params_conf` VALUES ('37', '7', '5', '100201', '楼板梁组装', '1', '3', '1', '1', '2019-10-29');
INSERT INTO `sp_progress_params_conf` VALUES ('38', '7', '5', '100201', '屋架组装', '1', '4', '1', '1', '2019-10-29');
INSERT INTO `sp_progress_params_conf` VALUES ('39', '7', '5', '100201', '一层墙板安装', '1', '5', '1', '1', '2019-10-29');
INSERT INTO `sp_progress_params_conf` VALUES ('40', '7', '5', '100201', '楼板梁安装', '1', '6', '1', '1', '2019-10-29');
INSERT INTO `sp_progress_params_conf` VALUES ('41', '7', '5', '100201', '二层墙板安装', '1', '7', '1', '1', '2019-10-29');
INSERT INTO `sp_progress_params_conf` VALUES ('42', '7', '5', '100201', '屋架安装', '1', '9', '1', '1', '2019-10-29');
INSERT INTO `sp_progress_params_conf` VALUES ('43', '7', '5', '100201', '楼梯安装', '1', '10', '1', '1', '2019-10-29');
INSERT INTO `sp_progress_params_conf` VALUES ('44', '7', '9', '100202', '墙板组装', '1', '1', '1', '1', '2019-10-29');
INSERT INTO `sp_progress_params_conf` VALUES ('45', '7', '9', '100202', '独立过梁组装', '1', '2', '1', '1', '2019-10-29');
INSERT INTO `sp_progress_params_conf` VALUES ('46', '7', '9', '100202', '楼板梁组装', '1', '3', '1', '1', '2019-10-29');
INSERT INTO `sp_progress_params_conf` VALUES ('47', '7', '9', '100202', '屋架组装', '1', '4', '1', '1', '2019-10-29');
INSERT INTO `sp_progress_params_conf` VALUES ('48', '7', '9', '100202', '一层墙板安装', '1', '5', '1', '1', '2019-10-29');
INSERT INTO `sp_progress_params_conf` VALUES ('49', '7', '9', '100202', '楼板梁安装', '1', '6', '1', '1', '2019-10-29');
INSERT INTO `sp_progress_params_conf` VALUES ('50', '7', '9', '100202', '二层墙板安装', '1', '7', '1', '1', '2019-10-29');
INSERT INTO `sp_progress_params_conf` VALUES ('51', '7', '9', '100202', '屋架安装', '1', '9', '1', '1', '2019-10-29');
INSERT INTO `sp_progress_params_conf` VALUES ('52', '7', '9', '100202', '楼梯安装', '1', '10', '1', '1', '2019-10-29');
INSERT INTO `sp_progress_params_conf` VALUES ('53', '8', '6', '1003-1', '保温板铺装', '1', '4', '1', '1', '2019-10-29');
INSERT INTO `sp_progress_params_conf` VALUES ('54', '8', '6', '1003-1', '竖向木龙骨安装', '1', '5', '1', '1', '2019-10-29');
INSERT INTO `sp_progress_params_conf` VALUES ('55', '8', '6', '1003-1', '外墙板安装', '1', '6', '1', '1', '2019-10-29');

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
  `project_area` int(11) DEFAULT '0' COMMENT '项目总面积（平方米）',
  `source` varchar(255) DEFAULT NULL COMMENT '项目来源',
  `stage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '项目所属阶段',
  `plan_creat_at` date DEFAULT NULL COMMENT '计划建造日期',
  `project_limit_time` int(11) DEFAULT NULL COMMENT '项目工期',
  `success_level` tinyint(4) DEFAULT '1' COMMENT '洽谈指数',
  `environment` varchar(1000) DEFAULT NULL COMMENT '场地自然条件',
  `traffic` varchar(1000) DEFAULT NULL COMMENT '交通条件',
  `summer_avg_temperature` varchar(255) DEFAULT NULL COMMENT '夏季平均气温（摄氏度）',
  `summer_max_temperature` varchar(255) DEFAULT NULL COMMENT '夏季最高气温（摄氏度）',
  `winter_avg_temperature` varchar(255) DEFAULT NULL COMMENT '冬季平均气温（摄氏度）',
  `winter_min_temperature` varchar(255) DEFAULT NULL COMMENT '冬季最低气温（摄氏度）',
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
  `project_uid` varchar(255) DEFAULT NULL COMMENT '项目负责人名称',
  `project_leader` varchar(255) DEFAULT NULL COMMENT '项目负责人职位',
  `sale_uid` int(11) DEFAULT NULL COMMENT '销售总负责人id',
  `sale_username` varchar(255) DEFAULT NULL COMMENT '销售总负责人名称',
  `design_uid` int(11) DEFAULT NULL COMMENT '设计总负责人id',
  `design_username` varchar(255) DEFAULT NULL COMMENT '设计总负责人姓名',
  `budget_uid` int(11) DEFAULT NULL COMMENT '预算总负责人id',
  `budget_username` varchar(255) DEFAULT NULL COMMENT '预算总负责人姓名',
  `purchase_uid` int(11) DEFAULT NULL COMMENT '采购负责人',
  `purchase_username` varchar(255) DEFAULT NULL COMMENT '采购人员姓名',
  `technical_uid` int(11) DEFAULT NULL COMMENT '合约人员id',
  `technical_username` varchar(255) DEFAULT NULL COMMENT '合约人员姓名',
  `start_count` int(5) DEFAULT '0' COMMENT '洽谈工程个数',
  `conduct_count` int(5) DEFAULT '0' COMMENT '实施工程个数',
  `completed_count` int(5) DEFAULT '0' COMMENT '竣工工程个数',
  `termination_count` int(5) DEFAULT '0' COMMENT '终止工程个数',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_project
-- ----------------------------

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
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`,`engin_id`,`budget_id`) USING BTREE,
  KEY `engin_id` (`engin_id`,`budget_id`) USING BTREE,
  KEY `created_at` (`created_at`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_purchase
-- ----------------------------

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
  `deliver_properties` int(255) DEFAULT '1' COMMENT '发货性质：1预算内发，2预算外补',
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
  `pbrm_count` int(11) DEFAULT '0' COMMENT '批次关联材料表个数：sp_purchase_batch_relation_material',
  `purchase_order_status` tinyint(4) DEFAULT '0' COMMENT '采购订单状态 0未创建采购单 1已创建采购单',
  `created_uid` int(11) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `edit_uid` int(11) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`,`engin_id`,`purchase_id`) USING BTREE,
  KEY `engin_id` (`engin_id`,`purchase_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_purchase_batch
-- ----------------------------

-- ----------------------------
-- Table structure for sp_purchase_batch_relation_material
-- ----------------------------
DROP TABLE IF EXISTS `sp_purchase_batch_relation_material`;
CREATE TABLE `sp_purchase_batch_relation_material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL COMMENT '项目id',
  `engin_id` int(11) DEFAULT NULL COMMENT '工程id',
  `batch_id` int(11) DEFAULT NULL COMMENT '批次id',
  `deliver_properties` int(4) DEFAULT '1' COMMENT '采购性质1预算内 2预算外',
  `budget_id` int(11) DEFAULT NULL COMMENT '预算单id',
  `budget_item_id` int(11) DEFAULT NULL COMMENT '预算详情id',
  `purchase_cishu` int(6) DEFAULT '1' COMMENT '采购次数',
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `created_at` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`,`engin_id`,`batch_id`) USING BTREE,
  KEY `engin_id` (`engin_id`,`batch_id`,`budget_id`) USING BTREE,
  KEY `engin_id_2` (`engin_id`,`budget_item_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_purchase_batch_relation_material
-- ----------------------------

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
  `supplier` varchar(255) DEFAULT NULL COMMENT '供应商名称',
  `remark` varchar(2000) DEFAULT NULL COMMENT '订单备注',
  `order_status` tinyint(4) DEFAULT '0' COMMENT '订单状态 0未审核 1已审核',
  `send_number` tinyint(4) DEFAULT '0' COMMENT '发送邮件到供应商次数 默认0',
  `purchase_total_fee` float(15,0) DEFAULT NULL COMMENT '采购总金额',
  `vehicle_type` varchar(255) DEFAULT NULL COMMENT '车辆规格',
  `driver_name` varchar(255) DEFAULT NULL COMMENT '驾驶员姓名',
  `logistics_status` tinyint(4) DEFAULT '0' COMMENT '物流状态 1到达 0未到达',
  `shenfenzheng` varchar(255) DEFAULT NULL COMMENT '身份证号码',
  `chepaihao` varchar(255) DEFAULT NULL COMMENT '车牌号',
  `created_uid` int(11) DEFAULT NULL,
  `created_user_name` varchar(255) DEFAULT NULL COMMENT '采购人员名称',
  `created_at` date DEFAULT NULL,
  `edit_uid` int(11) DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `progress_username` varchar(255) DEFAULT NULL COMMENT '现场负责人',
  `inspection_username` varchar(255) DEFAULT NULL COMMENT '验货负责人',
  `order_arrive_status` tinyint(4) DEFAULT '0' COMMENT '订单到达状态 1 已到达 2未到达',
  `order_check_status` tinyint(4) DEFAULT '0' COMMENT '订单验收状态 1未验收 2已验收(正常) 3已验收(有损坏) 4已验收(数量有误)',
  `material_abnormal_name` text COMMENT '问题材料名称',
  `material_abnormal_detail` text COMMENT '问题材料描述',
  `order_use_status` tinyint(4) DEFAULT '0' COMMENT '材料使用状态 1正常(满足使用) 2非正常(不满足使用)',
  `material_question_name` text COMMENT '问题材料名称',
  `material_question_detail` text COMMENT '问题描述',
  `order_quantity_status` tinyint(4) DEFAULT '0' COMMENT '材料工程量状态 1满足(无结余) 2满足(有结余)  3不满足(需要补充)',
  `material_quantity_name` text COMMENT '工程量问题材料名称',
  `material_quantity_detail` text COMMENT '工程量问题材料描述',
  `order_replenishment_status` tinyint(4) unsigned DEFAULT '0' COMMENT '补货状态1无补货 2补货(已到达) 3补货(未到达)',
  `material_replenishment_name` text COMMENT '补货问题材料名称',
  `material_replenishment_detail` text COMMENT '补货问题材料描述',
  `progress_created_uid` int(11) DEFAULT NULL COMMENT '施工人员操作uid',
  `progress_created_at` date DEFAULT NULL COMMENT '施工操作人员修改时间',
  `order_pdf` varchar(1000) DEFAULT NULL COMMENT '导出文件路径',
  `email_title` varchar(1000) DEFAULT NULL COMMENT '邮件标题',
  `email_description` text COMMENT '邮件内容',
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`,`engin_id`,`purchase_id`) USING BTREE,
  KEY `engin_id` (`engin_id`,`batch_id`) USING BTREE,
  KEY `engin_id_2` (`engin_id`,`purchase_id`) USING BTREE
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
  `arch_id` int(11) DEFAULT NULL COMMENT '建筑工程id',
  `sub_arch_id` int(11) DEFAULT NULL COMMENT '建筑子工程id',
  `batch_id` int(11) DEFAULT NULL COMMENT '批次id',
  `order_id` int(11) DEFAULT NULL COMMENT '采购单id',
  `mbs_id` int(11) DEFAULT NULL COMMENT '材料品牌供应商id',
  `material_id` int(11) DEFAULT NULL COMMENT '材料id',
  `material_name` varchar(255) DEFAULT NULL COMMENT '材料名称',
  `characteristic` varchar(1000) DEFAULT NULL COMMENT '规格特征要求',
  `brand_id` int(11) DEFAULT NULL COMMENT '品牌id',
  `brand_name` varchar(255) DEFAULT NULL COMMENT '品牌名称',
  `engineering_quantity` varchar(255) DEFAULT NULL COMMENT '总工程量',
  `already_purchased_quantity` varchar(255) DEFAULT NULL COMMENT '已经采购量',
  `wait_purchased_quantity` varchar(255) DEFAULT NULL COMMENT '待采购量',
  `actual_purchase_quantity` varchar(255) DEFAULT NULL COMMENT '实际采购量',
  `total_purchase_price` varchar(10) DEFAULT NULL COMMENT '总采购价',
  `actual_total_fee` varchar(255) DEFAULT NULL COMMENT '实际采购金额',
  `purchase_unit` varchar(255) DEFAULT NULL COMMENT '采购单位',
  `purchase_price` decimal(10,2) DEFAULT NULL COMMENT '采购价格',
  `uid` int(11) DEFAULT NULL COMMENT '创建人id',
  `created_at` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`,`engin_id`) USING BTREE,
  KEY `engin_id` (`engin_id`,`purchase_id`) USING BTREE,
  KEY `engin_id_2` (`engin_id`,`budget_id`) USING BTREE,
  KEY `engin_id_3` (`engin_id`,`budget_item_id`) USING BTREE,
  KEY `engin_id_4` (`engin_id`,`sub_arch_id`) USING BTREE,
  KEY `engin_id_5` (`engin_id`,`arch_id`,`sub_arch_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  PRIMARY KEY (`id`),
  KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_role
-- ----------------------------
INSERT INTO `sp_role` VALUES ('1', '总经理', '1', '2019-06-26 09:36:44', '2019-11-13 09:36:28');
INSERT INTO `sp_role` VALUES ('2', '超级管理员1', '1', '2019-06-29 08:41:44', '2019-11-13 09:29:24');
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
INSERT INTO `sp_role` VALUES ('15', '预算部经理', '1', '2019-07-22 11:03:53', '2019-09-19 15:19:46');
INSERT INTO `sp_role` VALUES ('16', '结构设计师', '1', '2019-09-19 15:17:08', '2019-09-19 15:17:08');
INSERT INTO `sp_role` VALUES ('17', '给排水设计师', '1', '2019-09-19 15:17:18', '2019-09-19 15:17:18');
INSERT INTO `sp_role` VALUES ('18', '电气设计师', '1', '2019-09-19 15:17:28', '2019-09-19 15:17:28');
INSERT INTO `sp_role` VALUES ('19', '项目运营总监', '1', '2019-09-19 15:17:41', '2019-09-19 15:18:02');
INSERT INTO `sp_role` VALUES ('20', '销售部经理', '1', '2019-09-19 15:20:21', '2019-09-19 15:20:21');
INSERT INTO `sp_role` VALUES ('21', '设计部经理', '1', '2019-09-19 15:20:38', '2019-09-19 15:20:38');
INSERT INTO `sp_role` VALUES ('22', '财务部经理', '1', '2019-09-19 15:21:12', '2019-11-13 09:36:39');
INSERT INTO `sp_role` VALUES ('23', '项目经理', '1', '2019-11-06 15:42:21', '2019-11-06 15:42:21');
INSERT INTO `sp_role` VALUES ('24', '合约经理', '1', '2019-11-06 15:51:42', '2019-11-06 15:51:42');

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
  KEY `status_level` (`status`,`level`) USING BTREE,
  KEY `role_id` (`role_id`,`auth_id`) USING BTREE,
  KEY `parent_auth_id` (`parent_auth_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7302 DEFAULT CHARSET=utf8mb4;

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
INSERT INTO `sp_role_authority` VALUES ('6875', '2', '10', '0', '1', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6876', '2', '1001', '10', '2', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6877', '2', '100101', '1001', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6878', '2', '100102', '1001', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6879', '2', '100103', '1001', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6880', '2', '100105', '1001', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6881', '2', '1002', '10', '2', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6882', '2', '100201', '1002', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6883', '2', '100202', '1002', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6884', '2', '100203', '1002', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6885', '2', '100204', '1002', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6886', '2', '100205', '1002', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6887', '2', '1003', '10', '2', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6888', '2', '100301', '1003', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6889', '2', '100302', '1003', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6890', '2', '100303', '1003', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6891', '2', '1004', '10', '2', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6892', '2', '100401', '1004', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6893', '2', '1005', '10', '2', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6894', '2', '1006', '10', '2', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6895', '2', '100601', '1006', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6896', '2', '100602', '1006', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6897', '2', '100603', '1006', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6898', '2', '15', '0', '1', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6899', '2', '1501', '15', '2', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6900', '2', '1502', '15', '2', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6901', '2', '150201', '1502', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6902', '2', '150202', '1502', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6903', '2', '150203', '1502', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6904', '2', '1503', '15', '2', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6905', '2', '150301', '1503', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6906', '2', '150302', '1503', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6907', '2', '150303', '1503', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6908', '2', '1504', '15', '2', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6909', '2', '150401', '1504', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6910', '2', '150402', '1504', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6911', '2', '1505', '15', '2', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6912', '2', '150501', '1505', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6913', '2', '150502', '1505', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6914', '2', '20', '0', '1', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6915', '2', '2001', '20', '2', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6916', '2', '200101', '2001', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6917', '2', '20010101', '200101', '4', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6918', '2', '20010102', '200101', '4', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6919', '2', '200102', '2001', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6920', '2', '20010201', '200102', '4', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6921', '2', '20010202', '200102', '4', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6922', '2', '200103', '2001', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6923', '2', '20010301', '200103', '4', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6924', '2', '200104', '2001', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6925', '2', '20010401', '200104', '4', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6926', '2', '2002', '20', '2', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6927', '2', '200201', '2002', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6928', '2', '20020101', '200201', '4', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6929', '2', '20020102', '200201', '4', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6930', '2', '200202', '2002', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6931', '2', '20020201', '200202', '4', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6932', '2', '20020202', '200202', '4', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6933', '2', '200203', '2002', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6934', '2', '20020301', '200203', '4', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6935', '2', '200204', '2002', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6936', '2', '20020401', '200204', '4', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6937', '2', '25', '0', '1', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6938', '2', '2501', '25', '2', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6939', '2', '250101', '2501', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6940', '2', '250102', '2501', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6941', '2', '250103', '2501', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6942', '2', '25010301', '250103', '4', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6943', '2', '25010302', '250103', '4', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6944', '2', '25010303', '250103', '4', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6945', '2', '25010304', '250103', '4', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6946', '2', '25010306', '250103', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6947', '2', '250104', '2501', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6948', '2', '25010401', '250104', '4', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6949', '2', '25010402', '250104', '4', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6950', '2', '25010403', '250104', '4', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6951', '2', '2502', '25', '2', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6952', '2', '250202', '2502', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6953', '2', '250203', '2502', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6954', '2', '250204', '2502', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6955', '2', '30', '0', '1', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6956', '2', '3001', '30', '2', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6957', '2', '300101', '3001', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6958', '2', '30010101', '300101', '4', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6959', '2', '300102', '3001', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6960', '2', '30010201', '300102', '4', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6961', '2', '30010202', '300102', '4', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6962', '2', '300103', '3001', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6963', '2', '30010301', '300101', '4', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6964', '2', '3002', '30', '2', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6965', '2', '3003', '30', '2', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6966', '2', '300301', '3003', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6967', '2', '300302', '3003', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6968', '2', '35', '0', '1', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6969', '2', '3500', '35', '2', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6970', '2', '350001', '3500', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6971', '2', '35000101', '350001', '4', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6972', '2', '35000102', '350001', '4', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6973', '2', '350002', '3500', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6974', '2', '35000201', '350002', '4', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6975', '2', '35000202', '350002', '4', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6976', '2', '350003', '3500', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6977', '2', '35000301', '350003', '4', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6978', '2', '350004', '3500', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6979', '2', '35000401', '350004', '4', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6980', '2', '3501', '35', '2', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6981', '2', '350101', '3501', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6982', '2', '350102', '3501', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6983', '2', '350103', '3501', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6984', '2', '350104', '3501', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6985', '2', '3502', '35', '2', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6986', '2', '350201', '3502', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6987', '2', '350202', '3502', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6988', '2', '40', '0', '1', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6989', '2', '4001', '40', '2', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6990', '2', '4002', '40', '2', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6991', '2', '4003', '40', '2', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6992', '2', '45', '0', '1', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6993', '2', '4501', '45', '2', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6994', '2', '450101', '4501', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6995', '2', '450102', '4501', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6996', '2', '450103', '4501', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6997', '2', '4502', '45', '2', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6998', '2', '450201', '4502', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('6999', '2', '450202', '4502', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('7000', '2', '450203', '4502', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('7001', '2', '50', '0', '1', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('7002', '2', '5001', '50', '2', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('7003', '2', '500101', '5001', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('7004', '2', '5002', '50', '2', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('7005', '2', '500201', '5002', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('7006', '2', '5003', '50', '2', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('7007', '2', '500301', '5003', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('7008', '2', '55', '0', '1', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('7009', '2', '5501', '55', '2', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('7010', '2', '5502', '55', '2', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('7011', '2', '5503', '55', '2', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('7012', '2', '5504', '55', '2', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('7013', '2', '60', '0', '1', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('7014', '2', '6002', '60', '2', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('7015', '2', '600201', '6002', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('7016', '2', '600202', '6002', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('7017', '2', '600203', '6002', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('7018', '2', '600204', '6002', '3', '1', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27');
INSERT INTO `sp_role_authority` VALUES ('7158', '1', '10', '0', '1', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7159', '1', '1001', '10', '2', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7160', '1', '100101', '1001', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7161', '1', '100102', '1001', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7162', '1', '100103', '1001', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7163', '1', '100105', '1001', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7164', '1', '1002', '10', '2', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7165', '1', '100201', '1002', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7166', '1', '100202', '1002', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7167', '1', '100203', '1002', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7168', '1', '100204', '1002', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7169', '1', '100205', '1002', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7170', '1', '1003', '10', '2', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7171', '1', '100301', '1003', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7172', '1', '100302', '1003', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7173', '1', '100303', '1003', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7174', '1', '1004', '10', '2', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7175', '1', '100401', '1004', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7176', '1', '1005', '10', '2', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7177', '1', '1006', '10', '2', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7178', '1', '100601', '1006', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7179', '1', '100602', '1006', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7180', '1', '100603', '1006', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7181', '1', '15', '0', '1', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7182', '1', '1501', '15', '2', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7183', '1', '1502', '15', '2', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7184', '1', '150201', '1502', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7185', '1', '150202', '1502', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7186', '1', '150203', '1502', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7187', '1', '1503', '15', '2', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7188', '1', '150301', '1503', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7189', '1', '150302', '1503', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7190', '1', '150303', '1503', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7191', '1', '1504', '15', '2', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7192', '1', '150401', '1504', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7193', '1', '150402', '1504', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7194', '1', '1505', '15', '2', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7195', '1', '150501', '1505', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7196', '1', '150502', '1505', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7197', '1', '20', '0', '1', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7198', '1', '2001', '20', '2', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7199', '1', '200101', '2001', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7200', '1', '20010101', '200101', '4', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7201', '1', '20010102', '200101', '4', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7202', '1', '200102', '2001', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7203', '1', '20010201', '200102', '4', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7204', '1', '20010202', '200102', '4', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7205', '1', '200103', '2001', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7206', '1', '20010301', '200103', '4', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7207', '1', '200104', '2001', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7208', '1', '20010401', '200104', '4', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7209', '1', '2002', '20', '2', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7210', '1', '200201', '2002', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7211', '1', '20020101', '200201', '4', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7212', '1', '20020102', '200201', '4', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7213', '1', '200202', '2002', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7214', '1', '20020201', '200202', '4', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7215', '1', '20020202', '200202', '4', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7216', '1', '200203', '2002', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7217', '1', '20020301', '200203', '4', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7218', '1', '200204', '2002', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7219', '1', '20020401', '200204', '4', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7220', '1', '25', '0', '1', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7221', '1', '2501', '25', '2', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7222', '1', '250101', '2501', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7223', '1', '250102', '2501', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7224', '1', '250103', '2501', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7225', '1', '25010301', '250103', '4', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7226', '1', '25010302', '250103', '4', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7227', '1', '25010303', '250103', '4', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7228', '1', '25010304', '250103', '4', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7229', '1', '25010306', '250103', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7230', '1', '250104', '2501', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7231', '1', '25010401', '250104', '4', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7232', '1', '25010402', '250104', '4', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7233', '1', '25010403', '250104', '4', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7234', '1', '2502', '25', '2', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7235', '1', '250202', '2502', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7236', '1', '250203', '2502', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7237', '1', '250204', '2502', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7238', '1', '30', '0', '1', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7239', '1', '3001', '30', '2', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7240', '1', '300101', '3001', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7241', '1', '30010101', '300101', '4', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7242', '1', '300102', '3001', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7243', '1', '30010201', '300102', '4', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7244', '1', '30010202', '300102', '4', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7245', '1', '300103', '3001', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7246', '1', '30010301', '300101', '4', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7247', '1', '3002', '30', '2', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7248', '1', '3003', '30', '2', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7249', '1', '300301', '3003', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7250', '1', '300302', '3003', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7251', '1', '35', '0', '1', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7252', '1', '3500', '35', '2', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7253', '1', '350001', '3500', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7254', '1', '35000101', '350001', '4', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7255', '1', '35000102', '350001', '4', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7256', '1', '350002', '3500', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7257', '1', '35000201', '350002', '4', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7258', '1', '35000202', '350002', '4', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7259', '1', '350003', '3500', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7260', '1', '35000301', '350003', '4', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7261', '1', '350004', '3500', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7262', '1', '35000401', '350004', '4', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7263', '1', '3501', '35', '2', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7264', '1', '350101', '3501', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7265', '1', '350102', '3501', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7266', '1', '350103', '3501', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7267', '1', '350104', '3501', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7268', '1', '3502', '35', '2', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7269', '1', '350201', '3502', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7270', '1', '350202', '3502', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7271', '1', '40', '0', '1', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7272', '1', '4001', '40', '2', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7273', '1', '4002', '40', '2', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7274', '1', '4003', '40', '2', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7275', '1', '45', '0', '1', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7276', '1', '4501', '45', '2', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7277', '1', '450101', '4501', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7278', '1', '450102', '4501', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7279', '1', '450103', '4501', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7280', '1', '4502', '45', '2', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7281', '1', '450201', '4502', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7282', '1', '450202', '4502', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7283', '1', '450203', '4502', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7284', '1', '50', '0', '1', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7285', '1', '5001', '50', '2', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7286', '1', '500101', '5001', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7287', '1', '5002', '50', '2', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7288', '1', '500201', '5002', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7289', '1', '5003', '50', '2', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7290', '1', '500301', '5003', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7291', '1', '55', '0', '1', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7292', '1', '5501', '55', '2', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7293', '1', '5502', '55', '2', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7294', '1', '5503', '55', '2', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7295', '1', '5504', '55', '2', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7296', '1', '60', '0', '1', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7297', '1', '6002', '60', '2', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7298', '1', '600201', '6002', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7299', '1', '600202', '6002', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7300', '1', '600203', '6002', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');
INSERT INTO `sp_role_authority` VALUES ('7301', '1', '600204', '6002', '3', '1', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26');

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
  KEY `role_id_manage_auth_id` (`status`,`role_id`,`manage_auth_id`) USING BTREE,
  KEY `role_id` (`role_id`,`manage_auth_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3078 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_role_manage_authority
-- ----------------------------
INSERT INTO `sp_role_manage_authority` VALUES ('182', '5', '35', '0', '1', '建筑设计管理', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('183', '5', '3501', '35', '2', '查询建筑系统详情', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('184', '5', '3502', '35', '2', '新增建筑系统', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('185', '5', '3503', '35', '2', '编辑建筑系统', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('186', '5', '3504', '35', '2', '更改建筑系统状态', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('187', '5', '3505', '35', '2', '查询建筑系统子系统', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('188', '5', '3506', '35', '2', '编辑建筑子系统', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('189', '5', '3507', '35', '2', '', '1', '2019-07-20 21:39:50', '2019-07-20 21:39:50', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('249', '10', '15', '0', '1', '项目信息管理', '1', '2019-07-22 11:25:22', '2019-07-22 11:25:22', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('250', '14', '20', '0', '1', '预算报价管理', '1', '2019-07-22 11:27:31', '2019-07-22 11:27:31', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('1556', '2', '15', '0', '1', '项目信息管理', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1557', '2', '20', '0', '1', '预算报价管理', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1558', '2', '25', '0', '1', '采购集成管理', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1559', '2', '30', '0', '1', '施工安装管理', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1560', '2', '35', '0', '1', '建筑设计管理', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1561', '2', '40', '0', '1', '部件集成管理', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1562', '2', '45', '0', '1', '供应商管理', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1563', '2', '50', '0', '1', '财务信息管理', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1564', '2', '55', '0', '1', '客户信息管理', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1565', '2', '60', '0', '1', '系统公告管理', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1566', '2', '3501', '35', '2', '查询建筑系统详情', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1567', '2', '3502', '35', '2', '新增建筑系统', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1568', '2', '3503', '35', '2', '编辑建筑系统', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1569', '2', '3504', '35', '2', '更改建筑系统状态', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1570', '2', '3505', '35', '2', '查询建筑系统子系统', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1571', '2', '3506', '35', '2', '编辑建筑子系统', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1572', '2', '4501', '45', '2', '查询品牌信息', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1573', '2', '4502', '45', '2', '新增品牌信息', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1574', '2', '4503', '45', '2', '编辑品牌信息', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1575', '2', '4510', '45', '2', '查询供应商信息', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1576', '2', '4511', '45', '2', '新增供应商', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1577', '2', '4512', '45', '2', '编辑供应商', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1578', '2', '4513', '45', '2', '删除供应商', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1579', '2', '1501', '15', '2', '创建项目(工程)', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1580', '2', '1502', '15', '2', '洽谈项目', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1581', '2', '150201', '1502', '3', '查询项目详情', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1582', '2', '150202', '1502', '3', '编辑项目', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1583', '2', '1503', '15', '2', '实施项目', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1584', '2', '150301', '1503', '3', '查询项目详情', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1585', '2', '150302', '1503', '3', '编辑项目', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1586', '2', '1504', '15', '2', '竣工项目', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1587', '2', '150401', '1504', '3', '查询项目详情', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1588', '2', '150402', '1504', '3', '工程管理', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1589', '2', '1505', '15', '2', '终止项目', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1590', '2', '150501', '1505', '3', '查询项目详情', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1591', '2', '3507', '35', '2', '项目设计', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1592', '2', '350701', '3507', '3', '查询洽谈项目详情', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1593', '2', '350702', '3507', '3', '编辑洽谈项目', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1594', '2', '350703', '3507', '3', '查询实施项目详情', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1595', '2', '350704', '3507', '3', '编辑实施项目', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1596', '2', '350705', '3507', '3', '查询竣工项目详情', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1597', '2', '350706', '3507', '3', '查询终止项目详情', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1598', '2', '200101', '2001', '3', '查询洽谈预算详情', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1599', '2', '200102', '2001', '3', '编辑洽谈预算', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1600', '2', '200104', '2001', '3', '查询实施预算详情', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1601', '2', '200105', '2001', '3', '编辑实施预算', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1602', '2', '200107', '2001', '3', '查询竣工预算详情', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1603', '2', '200108', '2001', '3', '查询终止预算详情', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1604', '2', '200103', '2001', '3', '审核洽谈预算', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1605', '2', '200106', '2001', '3', '审核实施预算', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1606', '2', '2001', '20', '2', '预算管理', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1607', '2', '2002', '20', '2', '报价管理', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1608', '2', '200201', '2002', '3', '查询洽谈预算详情', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1609', '2', '200202', '2002', '3', '编辑洽谈预算', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1610', '2', '200204', '2002', '3', '查询实施预算详情', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1611', '2', '200205', '2002', '3', '编辑实施预算', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1612', '2', '200207', '2002', '3', '查询竣工预算详情', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1613', '2', '200208', '2002', '3', '查询终止预算详情', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1614', '2', '200203', '2002', '3', '审核洽谈预算', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1615', '2', '200206', '2002', '3', '审核实施预算', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1616', '2', '2501', '25', '2', '实施项目', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1617', '2', '2502', '25', '2', '竣工项目', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1618', '2', '250101', '2501', '3', '编辑采购单', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1619', '2', '250102', '2501', '3', '采购批次管理', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1620', '2', '250103', '2501', '3', '采购订单管理', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1621', '2', '250104', '2501', '3', '物流进度管理', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1622', '2', '250105', '2501', '3', '指定采购负责人', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1623', '2', '25010301', '250103', '4', '查看', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1624', '2', '25010302', '250103', '4', '编辑', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1625', '2', '25010303', '250103', '4', '删除', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1626', '2', '25010304', '250103', '4', '新增', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1627', '2', '25010305', '250103', '4', '审核', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1628', '2', '5001', '50', '2', '洽谈项目', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1629', '2', '5002', '50', '2', '实施项目', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1630', '2', '5003', '50', '2', '竣工项目', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1631', '2', '500101', '5001', '3', '编辑&查看', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1632', '2', '500201', '5002', '3', '编辑&查看', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1633', '2', '500301', '5003', '3', '编辑&查看', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1634', '2', '150203', '1502', '3', '工程管理', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1635', '2', '150303', '1503', '3', '工程管理', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1636', '2', '150502', '1505', '3', '工程管理', '6', '2019-09-21 16:49:11', '2019-10-16 15:49:13', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1637', '1', '15', '0', '1', '项目信息管理', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1638', '1', '20', '0', '1', '预算报价管理', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1639', '1', '25', '0', '1', '采购集成管理', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1640', '1', '30', '0', '1', '施工安装管理', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1641', '1', '35', '0', '1', '建筑设计管理', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1642', '1', '40', '0', '1', '部件集成管理', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1643', '1', '45', '0', '1', '供应商管理', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1644', '1', '50', '0', '1', '财务信息管理', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1645', '1', '55', '0', '1', '客户信息管理', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1646', '1', '60', '0', '1', '系统公告管理', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1647', '1', '3501', '35', '2', '查询建筑系统详情', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1648', '1', '3502', '35', '2', '新增建筑系统', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1649', '1', '3503', '35', '2', '编辑建筑系统', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1650', '1', '3504', '35', '2', '更改建筑系统状态', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1651', '1', '3505', '35', '2', '查询建筑系统子系统', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1652', '1', '3506', '35', '2', '编辑建筑子系统', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1653', '1', '4501', '45', '2', '查询品牌信息', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1654', '1', '4502', '45', '2', '新增品牌信息', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1655', '1', '4503', '45', '2', '编辑品牌信息', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1656', '1', '4510', '45', '2', '查询供应商信息', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1657', '1', '4511', '45', '2', '新增供应商', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1658', '1', '4512', '45', '2', '编辑供应商', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1659', '1', '4513', '45', '2', '删除供应商', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1660', '1', '4001', '40', '2', '搜索部件信息', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1661', '1', '4002', '40', '2', '查询部件详情', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1662', '1', '4003', '40', '2', '编辑部件', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1663', '1', '5501', '55', '2', '客户信息列表', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1664', '1', '5502', '55', '2', '添加客户', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1665', '1', '5503', '55', '2', '编辑客户', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1666', '1', '5504', '55', '2', '删除客户', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1667', '1', '1501', '15', '2', '创建项目(工程)', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1668', '1', '1502', '15', '2', '洽谈项目', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1669', '1', '150201', '1502', '3', '查询项目详情', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1670', '1', '150202', '1502', '3', '编辑项目', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1671', '1', '1503', '15', '2', '实施项目', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1672', '1', '150301', '1503', '3', '查询项目详情', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1673', '1', '150302', '1503', '3', '编辑项目', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1674', '1', '1504', '15', '2', '竣工项目', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1675', '1', '150401', '1504', '3', '查询项目详情', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1676', '1', '150402', '1504', '3', '工程管理', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1677', '1', '1505', '15', '2', '终止项目', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1678', '1', '150501', '1505', '3', '查询项目详情', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1679', '1', '3507', '35', '2', '项目设计', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1680', '1', '350701', '3507', '3', '查询洽谈项目详情', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1681', '1', '350702', '3507', '3', '编辑洽谈项目', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1682', '1', '350703', '3507', '3', '查询实施项目详情', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1683', '1', '350704', '3507', '3', '编辑实施项目', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1684', '1', '350705', '3507', '3', '查询竣工项目详情', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1685', '1', '350706', '3507', '3', '查询终止项目详情', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1686', '1', '200101', '2001', '3', '查询洽谈预算详情', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1687', '1', '200102', '2001', '3', '编辑洽谈预算', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1688', '1', '200104', '2001', '3', '查询实施预算详情', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1689', '1', '200105', '2001', '3', '编辑实施预算', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1690', '1', '200107', '2001', '3', '查询竣工预算详情', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1691', '1', '200108', '2001', '3', '查询终止预算详情', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1692', '1', '200103', '2001', '3', '审核洽谈预算', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1693', '1', '200106', '2001', '3', '审核实施预算', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1694', '1', '2001', '20', '2', '预算管理', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1695', '1', '2002', '20', '2', '报价管理', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1696', '1', '200201', '2002', '3', '查询洽谈预算详情', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1697', '1', '200202', '2002', '3', '编辑洽谈预算', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1698', '1', '200204', '2002', '3', '查询实施预算详情', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1699', '1', '200205', '2002', '3', '编辑实施预算', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1700', '1', '200207', '2002', '3', '查询竣工预算详情', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1701', '1', '200208', '2002', '3', '查询终止预算详情', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1702', '1', '200203', '2002', '3', '审核洽谈预算', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1703', '1', '200206', '2002', '3', '审核实施预算', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1704', '1', '2501', '25', '2', '实施项目', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1705', '1', '2502', '25', '2', '竣工项目', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1706', '1', '250101', '2501', '3', '编辑采购单', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1707', '1', '250102', '2501', '3', '采购批次管理', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1708', '1', '250103', '2501', '3', '采购订单管理', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1709', '1', '250104', '2501', '3', '物流进度管理', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1710', '1', '250105', '2501', '3', '指定采购负责人', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1711', '1', '25010301', '250103', '4', '查看', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1712', '1', '25010302', '250103', '4', '编辑', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1713', '1', '25010303', '250103', '4', '删除', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1714', '1', '25010304', '250103', '4', '新增', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1715', '1', '25010305', '250103', '4', '审核', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1716', '1', '25010306', '250103', '4', '发送供应商', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1717', '1', '25010401', '250104', '4', '查看物流', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1718', '1', '25010402', '250104', '4', '编辑物流', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1719', '1', '250104031', '250104', '4', '更改物流状态', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1720', '1', '250202', '2502', '3', '采购批次管理', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1721', '1', '250203', '2502', '3', '采购订单管理', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1722', '1', '250204', '2502', '3', '物流进度管理', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1723', '1', '150203', '1502', '3', '工程管理', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1724', '1', '150303', '1503', '3', '工程管理', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1725', '1', '150502', '1505', '3', '工程管理', '1', '2019-09-28 10:05:11', '2019-10-11 13:58:38', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1726', '1', '15', '0', '1', '项目信息管理', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1727', '1', '20', '0', '1', '预算报价管理', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1728', '1', '25', '0', '1', '采购集成管理', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1729', '1', '30', '0', '1', '施工安装管理', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1730', '1', '35', '0', '1', '建筑设计管理', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1731', '1', '40', '0', '1', '部件集成管理', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1732', '1', '45', '0', '1', '供应商管理', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1733', '1', '50', '0', '1', '财务信息管理', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1734', '1', '55', '0', '1', '客户信息管理', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1735', '1', '60', '0', '1', '系统公告管理', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1736', '1', '3501', '35', '2', '查询建筑系统详情', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1737', '1', '3502', '35', '2', '新增建筑系统', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1738', '1', '3503', '35', '2', '编辑建筑系统', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1739', '1', '3504', '35', '2', '更改建筑系统状态', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1740', '1', '3505', '35', '2', '查询建筑系统子系统', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1741', '1', '3506', '35', '2', '编辑建筑子系统', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1742', '1', '4501', '45', '2', '查询品牌信息', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1743', '1', '4502', '45', '2', '新增品牌信息', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1744', '1', '4503', '45', '2', '编辑品牌信息', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1745', '1', '4510', '45', '2', '查询供应商信息', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1746', '1', '4511', '45', '2', '新增供应商', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1747', '1', '4512', '45', '2', '编辑供应商', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1748', '1', '4513', '45', '2', '删除供应商', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1749', '1', '4001', '40', '2', '搜索部件信息', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1750', '1', '4002', '40', '2', '查询部件详情', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1751', '1', '4003', '40', '2', '编辑部件', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1752', '1', '5501', '55', '2', '客户信息列表', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1753', '1', '5502', '55', '2', '添加客户', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1754', '1', '5503', '55', '2', '编辑客户', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1755', '1', '5504', '55', '2', '删除客户', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1756', '1', '1501', '15', '2', '创建项目(工程)', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1757', '1', '1502', '15', '2', '洽谈项目', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1758', '1', '150201', '1502', '3', '查询项目详情', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1759', '1', '150202', '1502', '3', '编辑项目', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1760', '1', '1503', '15', '2', '实施项目', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1761', '1', '150301', '1503', '3', '查询项目详情', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1762', '1', '150302', '1503', '3', '编辑项目', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1763', '1', '1504', '15', '2', '竣工项目', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1764', '1', '150401', '1504', '3', '查询项目详情', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1765', '1', '150402', '1504', '3', '工程管理', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1766', '1', '1505', '15', '2', '终止项目', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1767', '1', '150501', '1505', '3', '查询项目详情', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1768', '1', '3507', '35', '2', '项目设计', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1769', '1', '350701', '3507', '3', '查询洽谈项目详情', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1770', '1', '350702', '3507', '3', '编辑洽谈项目', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1771', '1', '350703', '3507', '3', '查询实施项目详情', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1772', '1', '350704', '3507', '3', '编辑实施项目', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1773', '1', '350705', '3507', '3', '查询竣工项目详情', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1774', '1', '350706', '3507', '3', '查询终止项目详情', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1775', '1', '200101', '2001', '3', '查询洽谈预算详情', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1776', '1', '200102', '2001', '3', '编辑洽谈预算', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1777', '1', '200104', '2001', '3', '查询实施预算详情', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1778', '1', '200105', '2001', '3', '编辑实施预算', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1779', '1', '200107', '2001', '3', '查询竣工预算详情', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1780', '1', '200108', '2001', '3', '查询终止预算详情', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1781', '1', '200103', '2001', '3', '审核洽谈预算', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1782', '1', '200106', '2001', '3', '审核实施预算', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1783', '1', '2001', '20', '2', '预算管理', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1784', '1', '2002', '20', '2', '报价管理', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1785', '1', '200201', '2002', '3', '查询洽谈预算详情', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1786', '1', '200202', '2002', '3', '编辑洽谈预算', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1787', '1', '200204', '2002', '3', '查询实施预算详情', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1788', '1', '200205', '2002', '3', '编辑实施预算', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1789', '1', '200207', '2002', '3', '查询竣工预算详情', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1790', '1', '200208', '2002', '3', '查询终止预算详情', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1791', '1', '200203', '2002', '3', '审核洽谈预算', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1792', '1', '200206', '2002', '3', '审核实施预算', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1793', '1', '2501', '25', '2', '实施项目', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1794', '1', '2502', '25', '2', '竣工项目', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1795', '1', '250101', '2501', '3', '编辑采购单', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1796', '1', '250102', '2501', '3', '采购批次管理', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1797', '1', '250103', '2501', '3', '采购订单管理', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1798', '1', '250104', '2501', '3', '物流进度管理', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1799', '1', '250105', '2501', '3', '指定采购负责人', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1800', '1', '25010301', '250103', '4', '查看', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1801', '1', '25010302', '250103', '4', '编辑', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1802', '1', '25010303', '250103', '4', '删除', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1803', '1', '25010304', '250103', '4', '新增', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1804', '1', '25010305', '250103', '4', '审核', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1805', '1', '25010306', '250103', '4', '发送供应商', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1806', '1', '25010401', '250104', '4', '查看物流', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1807', '1', '25010402', '250104', '4', '编辑物流', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1808', '1', '250104031', '250104', '4', '更改物流状态', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1809', '1', '250202', '2502', '3', '采购批次管理', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1810', '1', '250203', '2502', '3', '采购订单管理', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1811', '1', '250204', '2502', '3', '物流进度管理', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1812', '1', '150203', '1502', '3', '工程管理', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1813', '1', '150303', '1503', '3', '工程管理', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1814', '1', '150502', '1505', '3', '工程管理', '1', '2019-10-11 13:58:38', '2019-10-23 10:57:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1815', '2', '15', '0', '1', '项目信息管理', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1816', '2', '20', '0', '1', '预算报价管理', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1817', '2', '25', '0', '1', '采购集成管理', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1818', '2', '30', '0', '1', '施工安装管理', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1819', '2', '35', '0', '1', '建筑设计管理', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1820', '2', '40', '0', '1', '部件集成管理', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1821', '2', '45', '0', '1', '供应商管理', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1822', '2', '50', '0', '1', '财务信息管理', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1823', '2', '55', '0', '1', '客户信息管理', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1824', '2', '60', '0', '1', '系统公告管理', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1825', '2', '3501', '35', '2', '查询建筑系统详情', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1826', '2', '3502', '35', '2', '新增建筑系统', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1827', '2', '3503', '35', '2', '编辑建筑系统', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1828', '2', '3504', '35', '2', '更改建筑系统状态', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1829', '2', '3505', '35', '2', '查询建筑系统子系统', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1830', '2', '3506', '35', '2', '编辑建筑子系统', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1831', '2', '4501', '45', '2', '查询品牌信息', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1832', '2', '4502', '45', '2', '新增品牌信息', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1833', '2', '4503', '45', '2', '编辑品牌信息', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1834', '2', '4510', '45', '2', '查询供应商信息', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1835', '2', '4511', '45', '2', '新增供应商', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1836', '2', '4512', '45', '2', '编辑供应商', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1837', '2', '4513', '45', '2', '删除供应商', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1838', '2', '1501', '15', '2', '创建项目(工程)', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1839', '2', '1502', '15', '2', '洽谈项目', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1840', '2', '150201', '1502', '3', '查询项目详情', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1841', '2', '150202', '1502', '3', '编辑项目', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1842', '2', '1503', '15', '2', '实施项目', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1843', '2', '150301', '1503', '3', '查询项目详情', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1844', '2', '150302', '1503', '3', '编辑项目', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1845', '2', '1504', '15', '2', '竣工项目', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1846', '2', '150401', '1504', '3', '查询项目详情', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1847', '2', '150402', '1504', '3', '工程管理', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1848', '2', '1505', '15', '2', '终止项目', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1849', '2', '150501', '1505', '3', '查询项目详情', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1850', '2', '3507', '35', '2', '项目设计', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1851', '2', '350701', '3507', '3', '查询洽谈项目详情', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1852', '2', '350702', '3507', '3', '编辑洽谈项目', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1853', '2', '350703', '3507', '3', '查询实施项目详情', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1854', '2', '350704', '3507', '3', '编辑实施项目', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1855', '2', '350705', '3507', '3', '查询竣工项目详情', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1856', '2', '350706', '3507', '3', '查询终止项目详情', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1857', '2', '200101', '2001', '3', '查询洽谈预算详情', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1858', '2', '200102', '2001', '3', '编辑洽谈预算', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1859', '2', '200104', '2001', '3', '查询实施预算详情', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1860', '2', '200105', '2001', '3', '编辑实施预算', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1861', '2', '200107', '2001', '3', '查询竣工预算详情', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1862', '2', '200108', '2001', '3', '查询终止预算详情', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1863', '2', '200103', '2001', '3', '审核洽谈预算', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1864', '2', '200106', '2001', '3', '审核实施预算', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1865', '2', '2001', '20', '2', '预算管理', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1866', '2', '2002', '20', '2', '报价管理', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1867', '2', '200201', '2002', '3', '查询洽谈预算详情', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1868', '2', '200202', '2002', '3', '编辑洽谈预算', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1869', '2', '200204', '2002', '3', '查询实施预算详情', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1870', '2', '200205', '2002', '3', '编辑实施预算', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1871', '2', '200207', '2002', '3', '查询竣工预算详情', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1872', '2', '200208', '2002', '3', '查询终止预算详情', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1873', '2', '200203', '2002', '3', '审核洽谈预算', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1874', '2', '200206', '2002', '3', '审核实施预算', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1875', '2', '2501', '25', '2', '实施项目', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1876', '2', '2502', '25', '2', '竣工项目', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1877', '2', '250101', '2501', '3', '编辑采购单', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1878', '2', '250102', '2501', '3', '采购批次管理', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1879', '2', '250103', '2501', '3', '采购订单管理', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1880', '2', '250104', '2501', '3', '物流进度管理', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1881', '2', '250105', '2501', '3', '指定采购负责人', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1882', '2', '25010301', '250103', '4', '查看', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1883', '2', '25010302', '250103', '4', '编辑', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1884', '2', '25010303', '250103', '4', '删除', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1885', '2', '25010304', '250103', '4', '新增', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1886', '2', '25010305', '250103', '4', '审核', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1887', '2', '25010306', '250103', '4', '发送供应商', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1888', '2', '25010401', '250104', '4', '查看物流', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1889', '2', '25010402', '250104', '4', '编辑物流', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1890', '2', '250104031', '250104', '4', '更改物流状态', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1891', '2', '250202', '2502', '3', '采购批次管理', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1892', '2', '250203', '2502', '3', '采购订单管理', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1893', '2', '250204', '2502', '3', '物流进度管理', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1894', '2', '5001', '50', '2', '洽谈项目', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1895', '2', '5002', '50', '2', '实施项目', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1896', '2', '5003', '50', '2', '竣工项目', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1897', '2', '500101', '5001', '3', '编辑&查看', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1898', '2', '500201', '5002', '3', '编辑&查看', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1899', '2', '500301', '5003', '3', '编辑&查看', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1900', '2', '150203', '1502', '3', '工程管理', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1901', '2', '150303', '1503', '3', '工程管理', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1902', '2', '150502', '1505', '3', '工程管理', '6', '2019-10-16 15:49:13', '2019-10-19 17:43:42', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1903', '2', '15', '0', '1', '项目信息管理', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1904', '2', '20', '0', '1', '预算报价管理', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1905', '2', '25', '0', '1', '采购集成管理', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1906', '2', '30', '0', '1', '施工安装管理', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1907', '2', '35', '0', '1', '建筑设计管理', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1908', '2', '40', '0', '1', '部件集成管理', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1909', '2', '45', '0', '1', '供应商管理', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1910', '2', '50', '0', '1', '财务信息管理', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1911', '2', '55', '0', '1', '客户信息管理', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1912', '2', '60', '0', '1', '系统公告管理', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1913', '2', '3501', '35', '2', '查询建筑系统详情', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1914', '2', '3502', '35', '2', '新增建筑系统', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1915', '2', '3503', '35', '2', '编辑建筑系统', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1916', '2', '3504', '35', '2', '更改建筑系统状态', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1917', '2', '3505', '35', '2', '查询建筑系统子系统', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1918', '2', '3506', '35', '2', '编辑建筑子系统', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1919', '2', '4501', '45', '2', '查询品牌信息', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1920', '2', '4502', '45', '2', '新增品牌信息', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1921', '2', '4503', '45', '2', '编辑品牌信息', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1922', '2', '4510', '45', '2', '查询供应商信息', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1923', '2', '4511', '45', '2', '新增供应商', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1924', '2', '4512', '45', '2', '编辑供应商', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1925', '2', '4513', '45', '2', '删除供应商', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1926', '2', '1501', '15', '2', '创建项目(工程)', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1927', '2', '1502', '15', '2', '洽谈项目', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1928', '2', '150201', '1502', '3', '查询项目详情', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1929', '2', '150202', '1502', '3', '编辑项目', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1930', '2', '1503', '15', '2', '实施项目', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1931', '2', '150301', '1503', '3', '查询项目详情', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1932', '2', '150302', '1503', '3', '编辑项目', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1933', '2', '1504', '15', '2', '竣工项目', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1934', '2', '150401', '1504', '3', '查询项目详情', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1935', '2', '150402', '1504', '3', '工程管理', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1936', '2', '1505', '15', '2', '终止项目', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1937', '2', '150501', '1505', '3', '查询项目详情', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1938', '2', '3507', '35', '2', '项目设计', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1939', '2', '350701', '3507', '3', '查询洽谈项目详情', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1940', '2', '350702', '3507', '3', '编辑洽谈项目', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1941', '2', '350703', '3507', '3', '查询实施项目详情', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1942', '2', '350704', '3507', '3', '编辑实施项目', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1943', '2', '350705', '3507', '3', '查询竣工项目详情', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1944', '2', '350706', '3507', '3', '查询终止项目详情', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1945', '2', '200101', '2001', '3', '查询洽谈预算详情', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1946', '2', '200102', '2001', '3', '编辑洽谈预算', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1947', '2', '200104', '2001', '3', '查询实施预算详情', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1948', '2', '200105', '2001', '3', '编辑实施预算', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1949', '2', '200107', '2001', '3', '查询竣工预算详情', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1950', '2', '200108', '2001', '3', '查询终止预算详情', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1951', '2', '200103', '2001', '3', '审核洽谈预算', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1952', '2', '200106', '2001', '3', '审核实施预算', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1953', '2', '2001', '20', '2', '预算管理', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1954', '2', '2002', '20', '2', '报价管理', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1955', '2', '200201', '2002', '3', '查询洽谈预算详情', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1956', '2', '200202', '2002', '3', '编辑洽谈预算', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1957', '2', '200204', '2002', '3', '查询实施预算详情', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1958', '2', '200205', '2002', '3', '编辑实施预算', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1959', '2', '200207', '2002', '3', '查询竣工预算详情', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1960', '2', '200208', '2002', '3', '查询终止预算详情', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1961', '2', '200203', '2002', '3', '审核洽谈预算', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1962', '2', '200206', '2002', '3', '审核实施预算', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1963', '2', '2501', '25', '2', '实施项目', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1964', '2', '2502', '25', '2', '竣工项目', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1965', '2', '250101', '2501', '3', '编辑采购单', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1966', '2', '250102', '2501', '3', '采购批次管理', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1967', '2', '250103', '2501', '3', '采购订单管理', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1968', '2', '250104', '2501', '3', '物流进度管理', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1969', '2', '250105', '2501', '3', '编辑(指定采购负责人和状态)', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1970', '2', '25010301', '250103', '4', '查看', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1971', '2', '25010302', '250103', '4', '编辑', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1972', '2', '25010303', '250103', '4', '删除', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1973', '2', '25010304', '250103', '4', '新增', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1974', '2', '25010305', '250103', '4', '审核', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1975', '2', '25010306', '250103', '4', '发送供应商', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1976', '2', '25010401', '250104', '4', '查看物流', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1977', '2', '25010402', '250104', '4', '编辑物流', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1978', '2', '250104031', '250104', '4', '更改物流状态', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1979', '2', '250202', '2502', '3', '采购批次管理', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1980', '2', '250203', '2502', '3', '采购订单管理', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1981', '2', '250204', '2502', '3', '物流进度管理', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1982', '2', '5001', '50', '2', '洽谈项目', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1983', '2', '5002', '50', '2', '实施项目', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1984', '2', '5003', '50', '2', '竣工项目', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1985', '2', '500101', '5001', '3', '编辑&查看', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1986', '2', '500201', '5002', '3', '编辑&查看', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1987', '2', '500301', '5003', '3', '编辑&查看', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1988', '2', '150203', '1502', '3', '工程管理', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1989', '2', '150303', '1503', '3', '工程管理', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1990', '2', '150502', '1505', '3', '工程管理', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1991', '2', '3001', '30', '2', '实施工程', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1992', '2', '3002', '30', '2', '竣工工程', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1993', '2', '300104', '3001', '3', '编辑(指定实施人员和状态)', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1994', '2', '300101', '3001', '3', '施工组织统筹', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1995', '2', '300102', '3001', '3', '现场材料管理', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1996', '2', '300103', '3001', '3', '施工进度管理', '6', '2019-10-19 17:43:42', '2019-10-25 14:56:34', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1997', '1', '15', '0', '1', '项目信息管理', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1998', '1', '20', '0', '1', '预算报价管理', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('1999', '1', '25', '0', '1', '采购集成管理', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2000', '1', '30', '0', '1', '施工安装管理', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2001', '1', '35', '0', '1', '建筑设计管理', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2002', '1', '40', '0', '1', '部件集成管理', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2003', '1', '45', '0', '1', '供应商管理', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2004', '1', '50', '0', '1', '财务信息管理', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2005', '1', '55', '0', '1', '客户信息管理', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2006', '1', '60', '0', '1', '系统公告管理', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2007', '1', '3501', '35', '2', '查询建筑系统详情', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2008', '1', '3502', '35', '2', '新增建筑系统', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2009', '1', '3503', '35', '2', '编辑建筑系统', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2010', '1', '3504', '35', '2', '更改建筑系统状态', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2011', '1', '3505', '35', '2', '查询建筑系统子系统', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2012', '1', '3506', '35', '2', '编辑建筑子系统', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2013', '1', '4501', '45', '2', '查询品牌信息', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2014', '1', '4502', '45', '2', '新增品牌信息', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2015', '1', '4503', '45', '2', '编辑品牌信息', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2016', '1', '4510', '45', '2', '查询供应商信息', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2017', '1', '4511', '45', '2', '新增供应商', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2018', '1', '4512', '45', '2', '编辑供应商', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2019', '1', '4513', '45', '2', '删除供应商', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2020', '1', '4001', '40', '2', '搜索部件信息', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2021', '1', '4002', '40', '2', '查询部件详情', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2022', '1', '4003', '40', '2', '编辑部件', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2023', '1', '5501', '55', '2', '客户信息列表', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2024', '1', '5502', '55', '2', '添加客户', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2025', '1', '5503', '55', '2', '编辑客户', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2026', '1', '5504', '55', '2', '删除客户', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2027', '1', '1501', '15', '2', '创建项目(工程)', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2028', '1', '1502', '15', '2', '洽谈项目', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2029', '1', '150201', '1502', '3', '查询项目详情', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2030', '1', '150202', '1502', '3', '编辑项目', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2031', '1', '1503', '15', '2', '实施项目', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2032', '1', '150301', '1503', '3', '查询项目详情', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2033', '1', '150302', '1503', '3', '编辑项目', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2034', '1', '1504', '15', '2', '竣工项目', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2035', '1', '150401', '1504', '3', '查询项目详情', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2036', '1', '150402', '1504', '3', '工程管理', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2037', '1', '1505', '15', '2', '终止项目', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2038', '1', '150501', '1505', '3', '查询项目详情', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2039', '1', '3507', '35', '2', '项目设计', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2040', '1', '350701', '3507', '3', '查询洽谈项目详情', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2041', '1', '350702', '3507', '3', '编辑洽谈项目', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2042', '1', '350703', '3507', '3', '查询实施项目详情', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2043', '1', '350704', '3507', '3', '编辑实施项目', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2044', '1', '350705', '3507', '3', '查询竣工项目详情', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2045', '1', '350706', '3507', '3', '查询终止项目详情', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2046', '1', '200101', '2001', '3', '查询洽谈预算详情', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2047', '1', '200102', '2001', '3', '编辑洽谈预算', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2048', '1', '200104', '2001', '3', '查询实施预算详情', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2049', '1', '200105', '2001', '3', '编辑实施预算', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2050', '1', '200107', '2001', '3', '查询竣工预算详情', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2051', '1', '200108', '2001', '3', '查询终止预算详情', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2052', '1', '200103', '2001', '3', '审核洽谈预算', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2053', '1', '200106', '2001', '3', '审核实施预算', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2054', '1', '2001', '20', '2', '预算管理', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2055', '1', '2002', '20', '2', '报价管理', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2056', '1', '200201', '2002', '3', '查询洽谈预算详情', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2057', '1', '200202', '2002', '3', '编辑洽谈预算', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2058', '1', '200204', '2002', '3', '查询实施预算详情', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2059', '1', '200205', '2002', '3', '编辑实施预算', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2060', '1', '200207', '2002', '3', '查询竣工预算详情', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2061', '1', '200208', '2002', '3', '查询终止预算详情', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2062', '1', '200203', '2002', '3', '审核洽谈预算', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2063', '1', '200206', '2002', '3', '审核实施预算', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2064', '1', '2501', '25', '2', '实施项目', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2065', '1', '2502', '25', '2', '竣工项目', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2066', '1', '250101', '2501', '3', '编辑采购单', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2067', '1', '250102', '2501', '3', '采购批次管理', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2068', '1', '250103', '2501', '3', '采购订单管理', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2069', '1', '250104', '2501', '3', '物流进度管理', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2070', '1', '250105', '2501', '3', '编辑(指定采购负责人和状态)', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2071', '1', '25010301', '250103', '4', '查看', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2072', '1', '25010302', '250103', '4', '编辑', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2073', '1', '25010303', '250103', '4', '删除', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2074', '1', '25010304', '250103', '4', '新增', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2075', '1', '25010305', '250103', '4', '审核', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2076', '1', '25010306', '250103', '4', '发送供应商', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2077', '1', '25010401', '250104', '4', '查看物流', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2078', '1', '25010402', '250104', '4', '编辑物流', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2079', '1', '250104031', '250104', '4', '更改物流状态', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2080', '1', '250202', '2502', '3', '采购批次管理', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2081', '1', '250203', '2502', '3', '采购订单管理', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2082', '1', '250204', '2502', '3', '物流进度管理', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2083', '1', '150203', '1502', '3', '工程管理', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2084', '1', '150303', '1503', '3', '工程管理', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2085', '1', '150502', '1505', '3', '工程管理', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2086', '1', '3001', '30', '2', '实施工程', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2087', '1', '3002', '30', '2', '竣工工程', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2088', '1', '300104', '3001', '3', '编辑(指定实施人员和状态)', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2089', '1', '300101', '3001', '3', '施工组织统筹', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2090', '1', '300102', '3001', '3', '现场材料管理', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2091', '1', '300103', '3001', '3', '施工进度管理', '6', '2019-10-23 10:57:17', '2019-10-25 19:20:23', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2092', '2', '15', '0', '1', '项目信息管理', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2093', '2', '20', '0', '1', '预算报价管理', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2094', '2', '25', '0', '1', '采购集成管理', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2095', '2', '30', '0', '1', '施工安装管理', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2096', '2', '35', '0', '1', '建筑设计管理', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2097', '2', '40', '0', '1', '部件集成管理', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2098', '2', '45', '0', '1', '供应商管理', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2099', '2', '50', '0', '1', '财务信息管理', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2100', '2', '55', '0', '1', '客户信息管理', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2101', '2', '60', '0', '1', '系统公告管理', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2102', '2', '3501', '35', '2', '查询建筑系统详情', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2103', '2', '3502', '35', '2', '新增建筑系统', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2104', '2', '3503', '35', '2', '编辑建筑系统', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2105', '2', '3504', '35', '2', '更改建筑系统状态', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2106', '2', '3505', '35', '2', '查询建筑系统子系统', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2107', '2', '3506', '35', '2', '编辑建筑子系统', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2108', '2', '4501', '45', '2', '查询品牌信息', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2109', '2', '4502', '45', '2', '新增品牌信息', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2110', '2', '4503', '45', '2', '编辑品牌信息', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2111', '2', '4510', '45', '2', '查询供应商信息', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2112', '2', '4511', '45', '2', '新增供应商', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2113', '2', '4512', '45', '2', '编辑供应商', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2114', '2', '4513', '45', '2', '删除供应商', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2115', '2', '1501', '15', '2', '创建项目(工程)', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2116', '2', '1502', '15', '2', '洽谈项目', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2117', '2', '150201', '1502', '3', '查询项目详情', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2118', '2', '150202', '1502', '3', '编辑项目', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2119', '2', '1503', '15', '2', '实施项目', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2120', '2', '150301', '1503', '3', '查询项目详情', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2121', '2', '150302', '1503', '3', '编辑项目', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2122', '2', '1504', '15', '2', '竣工项目', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2123', '2', '150401', '1504', '3', '查询项目详情', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2124', '2', '150402', '1504', '3', '工程管理', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2125', '2', '1505', '15', '2', '终止项目', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2126', '2', '150501', '1505', '3', '查询项目详情', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2127', '2', '3507', '35', '2', '项目设计', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2128', '2', '350701', '3507', '3', '查询洽谈项目详情', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2129', '2', '350702', '3507', '3', '编辑洽谈项目', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2130', '2', '350703', '3507', '3', '查询实施项目详情', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2131', '2', '350704', '3507', '3', '编辑实施项目', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2132', '2', '350705', '3507', '3', '查询竣工项目详情', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2133', '2', '350706', '3507', '3', '查询终止项目详情', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2134', '2', '200101', '2001', '3', '查询洽谈预算详情', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2135', '2', '200102', '2001', '3', '编辑洽谈预算', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2136', '2', '200104', '2001', '3', '查询实施预算详情', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2137', '2', '200105', '2001', '3', '编辑实施预算', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2138', '2', '200107', '2001', '3', '查询竣工预算详情', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2139', '2', '200108', '2001', '3', '查询终止预算详情', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2140', '2', '200103', '2001', '3', '审核洽谈预算', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2141', '2', '200106', '2001', '3', '审核实施预算', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2142', '2', '2001', '20', '2', '预算管理', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2143', '2', '2002', '20', '2', '报价管理', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2144', '2', '200201', '2002', '3', '查询洽谈预算详情', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2145', '2', '200202', '2002', '3', '编辑洽谈预算', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2146', '2', '200204', '2002', '3', '查询实施预算详情', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2147', '2', '200205', '2002', '3', '编辑实施预算', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2148', '2', '200207', '2002', '3', '查询竣工预算详情', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2149', '2', '200208', '2002', '3', '查询终止预算详情', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2150', '2', '200203', '2002', '3', '审核洽谈预算', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2151', '2', '200206', '2002', '3', '审核实施预算', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2152', '2', '2501', '25', '2', '实施项目', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2153', '2', '2502', '25', '2', '竣工项目', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2154', '2', '250101', '2501', '3', '编辑采购单', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2155', '2', '250102', '2501', '3', '采购批次管理', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2156', '2', '250103', '2501', '3', '采购订单管理', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2157', '2', '250104', '2501', '3', '物流进度管理', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2158', '2', '250105', '2501', '3', '编辑(指定采购负责人和状态)', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2159', '2', '25010301', '250103', '4', '查看', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2160', '2', '25010302', '250103', '4', '编辑', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2161', '2', '25010303', '250103', '4', '删除', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2162', '2', '25010304', '250103', '4', '新增', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2163', '2', '25010305', '250103', '4', '审核', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2164', '2', '25010306', '250103', '4', '发送供应商', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2165', '2', '25010401', '250104', '4', '查看物流', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2166', '2', '25010402', '250104', '4', '编辑物流', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2167', '2', '250104031', '250104', '4', '更改物流状态', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2168', '2', '250202', '2502', '3', '采购批次管理', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2169', '2', '250203', '2502', '3', '采购订单管理', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2170', '2', '250204', '2502', '3', '物流进度管理', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2171', '2', '5001', '50', '2', '洽谈项目', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2172', '2', '5002', '50', '2', '实施项目', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2173', '2', '5003', '50', '2', '竣工项目', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2174', '2', '500101', '5001', '3', '编辑&查看', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2175', '2', '500201', '5002', '3', '编辑&查看', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2176', '2', '500301', '5003', '3', '编辑&查看', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2177', '2', '150203', '1502', '3', '工程管理', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2178', '2', '150303', '1503', '3', '工程管理', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2179', '2', '150502', '1505', '3', '工程管理', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2180', '2', '3001', '30', '2', '实施工程', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2181', '2', '3002', '30', '2', '竣工工程', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2182', '2', '300104', '3001', '3', '编辑(指定实施人员和状态)', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2183', '2', '300101', '3001', '3', '施工组织统筹', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2184', '2', '300102', '3001', '3', '现场材料管理', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2185', '2', '300103', '3001', '3', '施工进度管理', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2186', '2', '3003', '30', '2', '施工参数配置', '6', '2019-10-25 14:56:34', '2019-10-25 16:27:24', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2187', '2', '15', '0', '1', '项目信息管理', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2188', '2', '20', '0', '1', '预算报价管理', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2189', '2', '25', '0', '1', '采购集成管理', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2190', '2', '30', '0', '1', '施工安装管理', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2191', '2', '35', '0', '1', '建筑设计管理', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2192', '2', '40', '0', '1', '部件集成管理', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2193', '2', '45', '0', '1', '供应商管理', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2194', '2', '50', '0', '1', '财务信息管理', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2195', '2', '55', '0', '1', '客户信息管理', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2196', '2', '60', '0', '1', '系统公告管理', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2197', '2', '3501', '35', '2', '查询建筑系统详情', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2198', '2', '3502', '35', '2', '新增建筑系统', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2199', '2', '3503', '35', '2', '编辑建筑系统', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2200', '2', '3504', '35', '2', '更改建筑系统状态', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2201', '2', '3505', '35', '2', '查询建筑系统子系统', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2202', '2', '3506', '35', '2', '编辑建筑子系统', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2203', '2', '4501', '45', '2', '查询品牌信息', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2204', '2', '4502', '45', '2', '新增品牌信息', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2205', '2', '4503', '45', '2', '编辑品牌信息', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2206', '2', '4510', '45', '2', '查询供应商信息', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2207', '2', '4511', '45', '2', '新增供应商', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2208', '2', '4512', '45', '2', '编辑供应商', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2209', '2', '4513', '45', '2', '删除供应商', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2210', '2', '1501', '15', '2', '创建项目(工程)', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2211', '2', '1502', '15', '2', '洽谈项目', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2212', '2', '150201', '1502', '3', '查询项目详情', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2213', '2', '150202', '1502', '3', '编辑项目', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2214', '2', '1503', '15', '2', '实施项目', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2215', '2', '150301', '1503', '3', '查询项目详情', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2216', '2', '150302', '1503', '3', '编辑项目', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2217', '2', '1504', '15', '2', '竣工项目', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2218', '2', '150401', '1504', '3', '查询项目详情', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2219', '2', '150402', '1504', '3', '工程管理', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2220', '2', '1505', '15', '2', '终止项目', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2221', '2', '150501', '1505', '3', '查询项目详情', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2222', '2', '3507', '35', '2', '项目设计', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2223', '2', '350701', '3507', '3', '查询洽谈项目详情', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2224', '2', '350702', '3507', '3', '编辑洽谈项目', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2225', '2', '350703', '3507', '3', '查询实施项目详情', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2226', '2', '350704', '3507', '3', '编辑实施项目', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2227', '2', '350705', '3507', '3', '查询竣工项目详情', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2228', '2', '350706', '3507', '3', '查询终止项目详情', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2229', '2', '200101', '2001', '3', '查询洽谈预算详情', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2230', '2', '200102', '2001', '3', '编辑洽谈预算', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2231', '2', '200104', '2001', '3', '查询实施预算详情', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2232', '2', '200105', '2001', '3', '编辑实施预算', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2233', '2', '200107', '2001', '3', '查询竣工预算详情', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2234', '2', '200108', '2001', '3', '查询终止预算详情', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2235', '2', '200103', '2001', '3', '审核洽谈预算', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2236', '2', '200106', '2001', '3', '审核实施预算', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2237', '2', '2001', '20', '2', '预算管理', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2238', '2', '2002', '20', '2', '报价管理', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2239', '2', '200201', '2002', '3', '查询洽谈预算详情', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2240', '2', '200202', '2002', '3', '编辑洽谈预算', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2241', '2', '200204', '2002', '3', '查询实施预算详情', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2242', '2', '200205', '2002', '3', '编辑实施预算', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2243', '2', '200207', '2002', '3', '查询竣工预算详情', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2244', '2', '200208', '2002', '3', '查询终止预算详情', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2245', '2', '200203', '2002', '3', '审核洽谈预算', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2246', '2', '200206', '2002', '3', '审核实施预算', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2247', '2', '2501', '25', '2', '实施项目', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2248', '2', '2502', '25', '2', '竣工项目', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2249', '2', '250101', '2501', '3', '编辑采购单', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2250', '2', '250102', '2501', '3', '采购批次管理', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2251', '2', '250103', '2501', '3', '采购订单管理', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2252', '2', '250104', '2501', '3', '物流进度管理', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2253', '2', '250105', '2501', '3', '编辑(指定采购负责人和状态)', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2254', '2', '25010301', '250103', '4', '查看', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2255', '2', '25010302', '250103', '4', '编辑', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2256', '2', '25010303', '250103', '4', '删除', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2257', '2', '25010304', '250103', '4', '新增', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2258', '2', '25010305', '250103', '4', '审核', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2259', '2', '25010306', '250103', '4', '发送供应商', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2260', '2', '25010401', '250104', '4', '查看物流', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2261', '2', '25010402', '250104', '4', '编辑物流', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2262', '2', '250104031', '250104', '4', '更改物流状态', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2263', '2', '250202', '2502', '3', '采购批次管理', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2264', '2', '250203', '2502', '3', '采购订单管理', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2265', '2', '250204', '2502', '3', '物流进度管理', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2266', '2', '5001', '50', '2', '洽谈项目', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2267', '2', '5002', '50', '2', '实施项目', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2268', '2', '5003', '50', '2', '竣工项目', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2269', '2', '500101', '5001', '3', '编辑&查看', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2270', '2', '500201', '5002', '3', '编辑&查看', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2271', '2', '500301', '5003', '3', '编辑&查看', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2272', '2', '150203', '1502', '3', '工程管理', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2273', '2', '150303', '1503', '3', '工程管理', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2274', '2', '150502', '1505', '3', '工程管理', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2275', '2', '3001', '30', '2', '实施工程', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2276', '2', '3002', '30', '2', '竣工工程', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2277', '2', '300104', '3001', '3', '编辑(指定实施人员和状态)', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2278', '2', '300101', '3001', '3', '施工组织统筹', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2279', '2', '300102', '3001', '3', '现场材料管理', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2280', '2', '300103', '3001', '3', '施工进度管理', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2281', '2', '3003', '30', '2', '施工流程配置', '6', '2019-10-25 16:27:24', '2019-10-30 09:34:50', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2282', '1', '15', '0', '1', '项目信息管理', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2283', '1', '20', '0', '1', '预算报价管理', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2284', '1', '25', '0', '1', '采购集成管理', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2285', '1', '30', '0', '1', '施工安装管理', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2286', '1', '35', '0', '1', '建筑设计管理', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2287', '1', '40', '0', '1', '部件集成管理', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2288', '1', '45', '0', '1', '供应商管理', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2289', '1', '50', '0', '1', '财务信息管理', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2290', '1', '55', '0', '1', '客户信息管理', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2291', '1', '60', '0', '1', '系统公告管理', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2292', '1', '3501', '35', '2', '查询建筑系统详情', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2293', '1', '3502', '35', '2', '新增建筑系统', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2294', '1', '3503', '35', '2', '编辑建筑系统', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2295', '1', '3504', '35', '2', '更改建筑系统状态', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2296', '1', '3505', '35', '2', '查询建筑系统子系统', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2297', '1', '3506', '35', '2', '编辑建筑子系统', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2298', '1', '4501', '45', '2', '查询品牌信息', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2299', '1', '4502', '45', '2', '新增品牌信息', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2300', '1', '4503', '45', '2', '编辑品牌信息', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2301', '1', '4510', '45', '2', '查询供应商信息', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2302', '1', '4511', '45', '2', '新增供应商', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2303', '1', '4512', '45', '2', '编辑供应商', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2304', '1', '4513', '45', '2', '删除供应商', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2305', '1', '4001', '40', '2', '搜索部件信息', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2306', '1', '4002', '40', '2', '查询部件详情', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2307', '1', '4003', '40', '2', '编辑部件', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2308', '1', '5501', '55', '2', '客户信息列表', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2309', '1', '5502', '55', '2', '添加客户', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2310', '1', '5503', '55', '2', '编辑客户', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2311', '1', '5504', '55', '2', '删除客户', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2312', '1', '1501', '15', '2', '创建项目(工程)', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2313', '1', '1502', '15', '2', '洽谈项目', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2314', '1', '150201', '1502', '3', '查询项目详情', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2315', '1', '150202', '1502', '3', '编辑项目', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2316', '1', '1503', '15', '2', '实施项目', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2317', '1', '150301', '1503', '3', '查询项目详情', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2318', '1', '150302', '1503', '3', '编辑项目', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2319', '1', '1504', '15', '2', '竣工项目', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2320', '1', '150401', '1504', '3', '查询项目详情', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2321', '1', '150402', '1504', '3', '工程管理', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2322', '1', '1505', '15', '2', '终止项目', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2323', '1', '150501', '1505', '3', '查询项目详情', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2324', '1', '3507', '35', '2', '项目设计', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2325', '1', '350701', '3507', '3', '查询洽谈项目详情', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2326', '1', '350702', '3507', '3', '编辑洽谈项目', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2327', '1', '350703', '3507', '3', '查询实施项目详情', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2328', '1', '350704', '3507', '3', '编辑实施项目', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2329', '1', '350705', '3507', '3', '查询竣工项目详情', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2330', '1', '350706', '3507', '3', '查询终止项目详情', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2331', '1', '200101', '2001', '3', '查询洽谈预算详情', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2332', '1', '200102', '2001', '3', '编辑洽谈预算', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2333', '1', '200104', '2001', '3', '查询实施预算详情', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2334', '1', '200105', '2001', '3', '编辑实施预算', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2335', '1', '200107', '2001', '3', '查询竣工预算详情', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2336', '1', '200108', '2001', '3', '查询终止预算详情', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2337', '1', '200103', '2001', '3', '审核洽谈预算', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2338', '1', '200106', '2001', '3', '审核实施预算', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2339', '1', '2001', '20', '2', '预算管理', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2340', '1', '2002', '20', '2', '报价管理', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2341', '1', '200201', '2002', '3', '查询洽谈预算详情', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2342', '1', '200202', '2002', '3', '编辑洽谈预算', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2343', '1', '200204', '2002', '3', '查询实施预算详情', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2344', '1', '200205', '2002', '3', '编辑实施预算', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2345', '1', '200207', '2002', '3', '查询竣工预算详情', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2346', '1', '200208', '2002', '3', '查询终止预算详情', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2347', '1', '200203', '2002', '3', '审核洽谈预算', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2348', '1', '200206', '2002', '3', '审核实施预算', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2349', '1', '2501', '25', '2', '实施项目', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2350', '1', '2502', '25', '2', '竣工项目', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2351', '1', '250101', '2501', '3', '编辑采购单', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2352', '1', '250102', '2501', '3', '采购批次管理', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2353', '1', '250103', '2501', '3', '采购订单管理', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2354', '1', '250104', '2501', '3', '物流进度管理', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2355', '1', '250105', '2501', '3', '编辑(指定采购负责人和状态)', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2356', '1', '25010301', '250103', '4', '查看', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2357', '1', '25010302', '250103', '4', '编辑', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2358', '1', '25010303', '250103', '4', '删除', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2359', '1', '25010304', '250103', '4', '新增', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2360', '1', '25010305', '250103', '4', '审核', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2361', '1', '25010306', '250103', '4', '发送供应商', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2362', '1', '25010401', '250104', '4', '查看物流', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2363', '1', '25010402', '250104', '4', '编辑物流', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2364', '1', '250104031', '250104', '4', '更改物流状态', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2365', '1', '250202', '2502', '3', '采购批次管理', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2366', '1', '250203', '2502', '3', '采购订单管理', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2367', '1', '250204', '2502', '3', '物流进度管理', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2368', '1', '150203', '1502', '3', '工程管理', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2369', '1', '150303', '1503', '3', '工程管理', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2370', '1', '150502', '1505', '3', '工程管理', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2371', '1', '3001', '30', '2', '实施工程', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2372', '1', '3002', '30', '2', '竣工工程', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2373', '1', '300104', '3001', '3', '编辑(指定实施人员和状态)', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2374', '1', '300101', '3001', '3', '施工组织统筹', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2375', '1', '300102', '3001', '3', '现场材料管理', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2376', '1', '300103', '3001', '3', '施工进度管理', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2377', '1', '3003', '30', '2', '施工流程配置', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2378', '1', '300301', '3003', '3', '施工流程配置详情', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2379', '1', '300302', '3003', '3', '编辑施工流程配置', '1', '2019-10-25 19:20:23', '2019-10-30 09:33:15', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2380', '1', '15', '0', '1', '项目信息管理', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2381', '1', '20', '0', '1', '预算报价管理', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2382', '1', '25', '0', '1', '采购集成管理', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2383', '1', '30', '0', '1', '施工安装管理', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2384', '1', '35', '0', '1', '建筑设计管理', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2385', '1', '40', '0', '1', '部件集成管理', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2386', '1', '45', '0', '1', '供应商管理', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2387', '1', '50', '0', '1', '财务信息管理', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2388', '1', '55', '0', '1', '客户信息管理', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2389', '1', '60', '0', '1', '系统公告管理', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2390', '1', '3501', '35', '2', '查询建筑系统详情', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2391', '1', '3502', '35', '2', '新增建筑系统', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2392', '1', '3503', '35', '2', '编辑建筑系统', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2393', '1', '3504', '35', '2', '更改建筑系统状态', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2394', '1', '3505', '35', '2', '查询建筑系统子系统', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2395', '1', '3506', '35', '2', '编辑建筑子系统', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2396', '1', '4501', '45', '2', '查询品牌信息', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2397', '1', '4502', '45', '2', '新增品牌信息', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2398', '1', '4503', '45', '2', '编辑品牌信息', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2399', '1', '4510', '45', '2', '查询供应商信息', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2400', '1', '4511', '45', '2', '新增供应商', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2401', '1', '4512', '45', '2', '编辑供应商', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2402', '1', '4513', '45', '2', '删除供应商', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2403', '1', '4001', '40', '2', '搜索部件信息', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2404', '1', '4002', '40', '2', '查询部件详情', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2405', '1', '4003', '40', '2', '编辑部件', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2406', '1', '5501', '55', '2', '客户信息列表', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2407', '1', '5502', '55', '2', '添加客户', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2408', '1', '5503', '55', '2', '编辑客户', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2409', '1', '5504', '55', '2', '删除客户', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2410', '1', '1501', '15', '2', '创建项目(工程)', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2411', '1', '1502', '15', '2', '洽谈项目', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2412', '1', '150201', '1502', '3', '查询项目详情', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2413', '1', '150202', '1502', '3', '编辑项目', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2414', '1', '1503', '15', '2', '实施项目', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2415', '1', '150301', '1503', '3', '查询项目详情', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2416', '1', '150302', '1503', '3', '编辑项目', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2417', '1', '1504', '15', '2', '竣工项目', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2418', '1', '150401', '1504', '3', '查询项目详情', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2419', '1', '150402', '1504', '3', '工程管理', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2420', '1', '1505', '15', '2', '终止项目', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2421', '1', '150501', '1505', '3', '查询项目详情', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2422', '1', '3507', '35', '2', '项目设计', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2423', '1', '350701', '3507', '3', '查询洽谈项目详情', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2424', '1', '350702', '3507', '3', '编辑洽谈项目', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2425', '1', '350703', '3507', '3', '查询实施项目详情', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2426', '1', '350704', '3507', '3', '编辑实施项目', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2427', '1', '350705', '3507', '3', '查询竣工项目详情', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2428', '1', '350706', '3507', '3', '查询终止项目详情', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2429', '1', '200101', '2001', '3', '查询洽谈预算详情', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2430', '1', '200102', '2001', '3', '编辑洽谈预算', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2431', '1', '200104', '2001', '3', '查询实施预算详情', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2432', '1', '200105', '2001', '3', '编辑实施预算', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2433', '1', '200107', '2001', '3', '查询竣工预算详情', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2434', '1', '200108', '2001', '3', '查询终止预算详情', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2435', '1', '200103', '2001', '3', '审核洽谈预算', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2436', '1', '200106', '2001', '3', '审核实施预算', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2437', '1', '2001', '20', '2', '预算管理', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2438', '1', '2002', '20', '2', '报价管理', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2439', '1', '200201', '2002', '3', '查询洽谈预算详情', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2440', '1', '200202', '2002', '3', '编辑洽谈预算', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2441', '1', '200204', '2002', '3', '查询实施预算详情', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2442', '1', '200205', '2002', '3', '编辑实施预算', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2443', '1', '200207', '2002', '3', '查询竣工预算详情', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2444', '1', '200208', '2002', '3', '查询终止预算详情', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2445', '1', '200203', '2002', '3', '审核洽谈预算', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2446', '1', '200206', '2002', '3', '审核实施预算', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2447', '1', '2501', '25', '2', '实施项目', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2448', '1', '2502', '25', '2', '竣工项目', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2449', '1', '250101', '2501', '3', '编辑采购单', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2450', '1', '250102', '2501', '3', '采购批次管理', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2451', '1', '250103', '2501', '3', '采购订单管理', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2452', '1', '250104', '2501', '3', '物流进度管理', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2453', '1', '250105', '2501', '3', '编辑(指定采购负责人和状态)', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2454', '1', '25010301', '250103', '4', '查看', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2455', '1', '25010302', '250103', '4', '编辑', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2456', '1', '25010303', '250103', '4', '删除', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2457', '1', '25010304', '250103', '4', '新增', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2458', '1', '25010305', '250103', '4', '审核', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2459', '1', '25010306', '250103', '4', '发送供应商', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2460', '1', '25010401', '250104', '4', '查看物流', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2461', '1', '25010402', '250104', '4', '编辑物流', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2462', '1', '250104031', '250104', '4', '更改物流状态', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2463', '1', '250202', '2502', '3', '采购批次管理', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2464', '1', '250203', '2502', '3', '采购订单管理', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2465', '1', '250204', '2502', '3', '物流进度管理', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2466', '1', '150203', '1502', '3', '工程管理', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2467', '1', '150303', '1503', '3', '工程管理', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2468', '1', '150502', '1505', '3', '工程管理', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2469', '1', '3001', '30', '2', '实施工程', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2470', '1', '3002', '30', '2', '竣工工程', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2471', '1', '300104', '3001', '3', '编辑(指定实施人员和状态)', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2472', '1', '300101', '3001', '3', '施工组织统筹', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2473', '1', '300102', '3001', '3', '现场材料管理', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2474', '1', '300103', '3001', '3', '施工进度管理', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2475', '1', '3003', '30', '2', '施工流程配置', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2476', '1', '300301', '3003', '3', '施工流程配置详情', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2477', '1', '300302', '3003', '3', '编辑施工流程配置', '6', '2019-10-30 09:33:15', '2019-10-30 09:34:33', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2478', '1', '15', '0', '1', '项目信息管理', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2479', '1', '20', '0', '1', '预算报价管理', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2480', '1', '25', '0', '1', '采购集成管理', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2481', '1', '30', '0', '1', '施工安装管理', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2482', '1', '35', '0', '1', '建筑设计管理', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2483', '1', '40', '0', '1', '部件集成管理', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2484', '1', '45', '0', '1', '供应商管理', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2485', '1', '50', '0', '1', '财务信息管理', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2486', '1', '55', '0', '1', '客户信息管理', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2487', '1', '60', '0', '1', '系统公告管理', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2488', '1', '3501', '35', '2', '查询建筑系统详情', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2489', '1', '3502', '35', '2', '新增建筑系统', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2490', '1', '3503', '35', '2', '编辑建筑系统', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2491', '1', '3504', '35', '2', '更改建筑系统状态', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2492', '1', '3505', '35', '2', '查询建筑系统子系统', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2493', '1', '3506', '35', '2', '编辑建筑子系统', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2494', '1', '4501', '45', '2', '查询品牌信息', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2495', '1', '4502', '45', '2', '新增品牌信息', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2496', '1', '4503', '45', '2', '编辑品牌信息', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2497', '1', '4510', '45', '2', '查询供应商信息', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2498', '1', '4511', '45', '2', '新增供应商', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2499', '1', '4512', '45', '2', '编辑供应商', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2500', '1', '4513', '45', '2', '删除供应商', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2501', '1', '4001', '40', '2', '搜索部件信息', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2502', '1', '4002', '40', '2', '查询部件详情', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2503', '1', '4003', '40', '2', '编辑部件', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2504', '1', '5501', '55', '2', '客户信息列表', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2505', '1', '5502', '55', '2', '添加客户', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2506', '1', '5503', '55', '2', '编辑客户', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2507', '1', '5504', '55', '2', '删除客户', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2508', '1', '1501', '15', '2', '创建项目(工程)', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2509', '1', '1502', '15', '2', '洽谈项目', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2510', '1', '150201', '1502', '3', '查询项目详情', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2511', '1', '150202', '1502', '3', '编辑项目', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2512', '1', '1503', '15', '2', '实施项目', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2513', '1', '150301', '1503', '3', '查询项目详情', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2514', '1', '150302', '1503', '3', '编辑项目', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2515', '1', '1504', '15', '2', '竣工项目', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2516', '1', '150401', '1504', '3', '查询项目详情', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2517', '1', '150402', '1504', '3', '工程管理', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2518', '1', '1505', '15', '2', '终止项目', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2519', '1', '150501', '1505', '3', '查询项目详情', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2520', '1', '3507', '35', '2', '项目设计', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2521', '1', '350701', '3507', '3', '查询洽谈项目详情', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2522', '1', '350702', '3507', '3', '编辑洽谈项目', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2523', '1', '350703', '3507', '3', '查询实施项目详情', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2524', '1', '350704', '3507', '3', '编辑实施项目', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2525', '1', '350705', '3507', '3', '查询竣工项目详情', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2526', '1', '350706', '3507', '3', '查询终止项目详情', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2527', '1', '200101', '2001', '3', '查询洽谈预算详情', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2528', '1', '200102', '2001', '3', '编辑洽谈预算', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2529', '1', '200104', '2001', '3', '查询实施预算详情', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2530', '1', '200105', '2001', '3', '编辑实施预算', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2531', '1', '200107', '2001', '3', '查询竣工预算详情', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2532', '1', '200108', '2001', '3', '查询终止预算详情', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2533', '1', '200103', '2001', '3', '审核洽谈预算', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2534', '1', '200106', '2001', '3', '审核实施预算', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2535', '1', '2001', '20', '2', '预算管理', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2536', '1', '2002', '20', '2', '报价管理', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2537', '1', '200201', '2002', '3', '查询洽谈预算详情', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2538', '1', '200202', '2002', '3', '编辑洽谈预算', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2539', '1', '200204', '2002', '3', '查询实施预算详情', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2540', '1', '200205', '2002', '3', '编辑实施预算', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2541', '1', '200207', '2002', '3', '查询竣工预算详情', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2542', '1', '200208', '2002', '3', '查询终止预算详情', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2543', '1', '200203', '2002', '3', '审核洽谈预算', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2544', '1', '200206', '2002', '3', '审核实施预算', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2545', '1', '2501', '25', '2', '实施项目', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2546', '1', '2502', '25', '2', '竣工项目', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2547', '1', '250101', '2501', '3', '编辑采购单', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2548', '1', '250102', '2501', '3', '采购批次管理', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2549', '1', '250103', '2501', '3', '采购订单管理', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2550', '1', '250104', '2501', '3', '物流进度管理', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2551', '1', '250105', '2501', '3', '编辑(指定采购负责人和状态)', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2552', '1', '25010301', '250103', '4', '查看', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2553', '1', '25010302', '250103', '4', '编辑', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2554', '1', '25010303', '250103', '4', '删除', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2555', '1', '25010304', '250103', '4', '新增', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2556', '1', '25010305', '250103', '4', '审核', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2557', '1', '25010306', '250103', '4', '发送供应商', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2558', '1', '25010401', '250104', '4', '查看物流', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2559', '1', '25010402', '250104', '4', '编辑物流', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2560', '1', '250104031', '250104', '4', '更改物流状态', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2561', '1', '250202', '2502', '3', '采购批次管理', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2562', '1', '250203', '2502', '3', '采购订单管理', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2563', '1', '250204', '2502', '3', '物流进度管理', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2564', '1', '150203', '1502', '3', '工程管理', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2565', '1', '150303', '1503', '3', '工程管理', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2566', '1', '150502', '1505', '3', '工程管理', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2567', '1', '3001', '30', '2', '实施工程', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2568', '1', '3002', '30', '2', '竣工工程', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2569', '1', '300104', '3001', '3', '编辑(指定实施人员和状态)', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2570', '1', '300101', '3001', '3', '施工组织统筹', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2571', '1', '300102', '3001', '3', '现场材料管理', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2572', '1', '300103', '3001', '3', '施工进度管理', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2573', '1', '3003', '30', '2', '施工流程配置', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2574', '1', '300301', '3003', '3', '施工流程配置详情', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2575', '1', '300302', '3003', '3', '编辑施工流程配置', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2576', '1', '30010101', '300101', '4', '编辑施工组织统筹', '6', '2019-10-30 09:34:33', '2019-11-01 11:20:17', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2577', '2', '15', '0', '1', '项目信息管理', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2578', '2', '20', '0', '1', '预算报价管理', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2579', '2', '25', '0', '1', '采购集成管理', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2580', '2', '30', '0', '1', '施工安装管理', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2581', '2', '35', '0', '1', '建筑设计管理', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2582', '2', '40', '0', '1', '部件集成管理', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2583', '2', '45', '0', '1', '供应商管理', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2584', '2', '50', '0', '1', '财务信息管理', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2585', '2', '55', '0', '1', '客户信息管理', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2586', '2', '60', '0', '1', '系统公告管理', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2587', '2', '3501', '35', '2', '查询建筑系统详情', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2588', '2', '3502', '35', '2', '新增建筑系统', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2589', '2', '3503', '35', '2', '编辑建筑系统', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2590', '2', '3504', '35', '2', '更改建筑系统状态', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2591', '2', '3505', '35', '2', '查询建筑系统子系统', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2592', '2', '3506', '35', '2', '编辑建筑子系统', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2593', '2', '4501', '45', '2', '查询品牌信息', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2594', '2', '4502', '45', '2', '新增品牌信息', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2595', '2', '4503', '45', '2', '编辑品牌信息', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2596', '2', '4510', '45', '2', '查询供应商信息', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2597', '2', '4511', '45', '2', '新增供应商', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2598', '2', '4512', '45', '2', '编辑供应商', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2599', '2', '4513', '45', '2', '删除供应商', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2600', '2', '1501', '15', '2', '创建项目(工程)', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2601', '2', '1502', '15', '2', '洽谈项目', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2602', '2', '150201', '1502', '3', '查询项目详情', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2603', '2', '150202', '1502', '3', '编辑项目', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2604', '2', '1503', '15', '2', '实施项目', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2605', '2', '150301', '1503', '3', '查询项目详情', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2606', '2', '150302', '1503', '3', '编辑项目', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2607', '2', '1504', '15', '2', '竣工项目', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2608', '2', '150401', '1504', '3', '查询项目详情', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2609', '2', '150402', '1504', '3', '工程管理', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2610', '2', '1505', '15', '2', '终止项目', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2611', '2', '150501', '1505', '3', '查询项目详情', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2612', '2', '3507', '35', '2', '项目设计', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2613', '2', '350701', '3507', '3', '查询洽谈项目详情', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2614', '2', '350702', '3507', '3', '编辑洽谈项目', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2615', '2', '350703', '3507', '3', '查询实施项目详情', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2616', '2', '350704', '3507', '3', '编辑实施项目', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2617', '2', '350705', '3507', '3', '查询竣工项目详情', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2618', '2', '350706', '3507', '3', '查询终止项目详情', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2619', '2', '200101', '2001', '3', '查询洽谈预算详情', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2620', '2', '200102', '2001', '3', '编辑洽谈预算', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2621', '2', '200104', '2001', '3', '查询实施预算详情', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2622', '2', '200105', '2001', '3', '编辑实施预算', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2623', '2', '200107', '2001', '3', '查询竣工预算详情', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2624', '2', '200108', '2001', '3', '查询终止预算详情', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2625', '2', '200103', '2001', '3', '审核洽谈预算', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2626', '2', '200106', '2001', '3', '审核实施预算', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2627', '2', '2001', '20', '2', '预算管理', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2628', '2', '2002', '20', '2', '报价管理', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2629', '2', '200201', '2002', '3', '查询洽谈预算详情', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2630', '2', '200202', '2002', '3', '编辑洽谈预算', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2631', '2', '200204', '2002', '3', '查询实施预算详情', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2632', '2', '200205', '2002', '3', '编辑实施预算', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2633', '2', '200207', '2002', '3', '查询竣工预算详情', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2634', '2', '200208', '2002', '3', '查询终止预算详情', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2635', '2', '200203', '2002', '3', '审核洽谈预算', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2636', '2', '200206', '2002', '3', '审核实施预算', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2637', '2', '2501', '25', '2', '实施项目', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2638', '2', '2502', '25', '2', '竣工项目', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2639', '2', '250101', '2501', '3', '编辑采购单', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2640', '2', '250102', '2501', '3', '采购批次管理', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2641', '2', '250103', '2501', '3', '采购订单管理', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2642', '2', '250104', '2501', '3', '物流进度管理', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2643', '2', '250105', '2501', '3', '编辑(指定采购负责人和状态)', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2644', '2', '25010301', '250103', '4', '查看', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2645', '2', '25010302', '250103', '4', '编辑', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2646', '2', '25010303', '250103', '4', '删除', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2647', '2', '25010304', '250103', '4', '新增', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2648', '2', '25010305', '250103', '4', '审核', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2649', '2', '25010306', '250103', '4', '发送供应商', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2650', '2', '25010401', '250104', '4', '查看物流', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2651', '2', '25010402', '250104', '4', '编辑物流', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2652', '2', '250104031', '250104', '4', '更改物流状态', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2653', '2', '250202', '2502', '3', '采购批次管理', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2654', '2', '250203', '2502', '3', '采购订单管理', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2655', '2', '250204', '2502', '3', '物流进度管理', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2656', '2', '5001', '50', '2', '洽谈项目', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2657', '2', '5002', '50', '2', '实施项目', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2658', '2', '5003', '50', '2', '竣工项目', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2659', '2', '500101', '5001', '3', '编辑&查看', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2660', '2', '500201', '5002', '3', '编辑&查看', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2661', '2', '500301', '5003', '3', '编辑&查看', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2662', '2', '150203', '1502', '3', '工程管理', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2663', '2', '150303', '1503', '3', '工程管理', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2664', '2', '150502', '1505', '3', '工程管理', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2665', '2', '3001', '30', '2', '实施工程', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2666', '2', '3002', '30', '2', '竣工工程', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2667', '2', '300104', '3001', '3', '编辑(指定实施人员和状态)', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2668', '2', '300101', '3001', '3', '施工组织统筹', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2669', '2', '300102', '3001', '3', '现场材料管理', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2670', '2', '300103', '3001', '3', '施工进度管理', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2671', '2', '3003', '30', '2', '施工流程配置', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2672', '2', '30010101', '300101', '4', '编辑施工组织统筹', '6', '2019-10-30 09:34:50', '2019-10-30 11:23:53', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2673', '2', '15', '0', '1', '项目信息管理', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2674', '2', '20', '0', '1', '预算报价管理', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2675', '2', '25', '0', '1', '采购集成管理', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2676', '2', '30', '0', '1', '施工安装管理', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2677', '2', '35', '0', '1', '建筑设计管理', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2678', '2', '40', '0', '1', '部件集成管理', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2679', '2', '45', '0', '1', '供应商管理', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2680', '2', '50', '0', '1', '财务信息管理', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2681', '2', '55', '0', '1', '客户信息管理', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2682', '2', '60', '0', '1', '系统公告管理', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2683', '2', '3501', '35', '2', '查询建筑系统详情', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2684', '2', '3502', '35', '2', '新增建筑系统', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2685', '2', '3503', '35', '2', '编辑建筑系统', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2686', '2', '3504', '35', '2', '更改建筑系统状态', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2687', '2', '3505', '35', '2', '查询建筑系统子系统', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2688', '2', '3506', '35', '2', '编辑建筑子系统', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2689', '2', '4501', '45', '2', '查询品牌信息', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2690', '2', '4502', '45', '2', '新增品牌信息', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2691', '2', '4503', '45', '2', '编辑品牌信息', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2692', '2', '4510', '45', '2', '查询供应商信息', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2693', '2', '4511', '45', '2', '新增供应商', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2694', '2', '4512', '45', '2', '编辑供应商', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2695', '2', '4513', '45', '2', '删除供应商', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2696', '2', '1501', '15', '2', '创建项目(工程)', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2697', '2', '1502', '15', '2', '洽谈项目', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2698', '2', '150201', '1502', '3', '查询项目详情', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2699', '2', '150202', '1502', '3', '编辑项目', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2700', '2', '1503', '15', '2', '实施项目', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2701', '2', '150301', '1503', '3', '查询项目详情', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2702', '2', '150302', '1503', '3', '编辑项目', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2703', '2', '1504', '15', '2', '竣工项目', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2704', '2', '150401', '1504', '3', '查询项目详情', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2705', '2', '150402', '1504', '3', '工程管理', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2706', '2', '1505', '15', '2', '终止项目', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2707', '2', '150501', '1505', '3', '查询项目详情', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2708', '2', '3507', '35', '2', '项目设计', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2709', '2', '350701', '3507', '3', '查询洽谈项目详情', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2710', '2', '350702', '3507', '3', '编辑洽谈项目', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2711', '2', '350703', '3507', '3', '查询实施项目详情', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2712', '2', '350704', '3507', '3', '编辑实施项目', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2713', '2', '350705', '3507', '3', '查询竣工项目详情', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2714', '2', '350706', '3507', '3', '查询终止项目详情', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2715', '2', '200101', '2001', '3', '查询洽谈预算详情', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2716', '2', '200102', '2001', '3', '编辑洽谈预算', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2717', '2', '200104', '2001', '3', '查询实施预算详情', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2718', '2', '200105', '2001', '3', '编辑实施预算', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2719', '2', '200107', '2001', '3', '查询竣工预算详情', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2720', '2', '200108', '2001', '3', '查询终止预算详情', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2721', '2', '200103', '2001', '3', '审核洽谈预算', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2722', '2', '200106', '2001', '3', '审核实施预算', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2723', '2', '2001', '20', '2', '预算管理', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2724', '2', '2002', '20', '2', '报价管理', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2725', '2', '200201', '2002', '3', '查询洽谈预算详情', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2726', '2', '200202', '2002', '3', '编辑洽谈预算', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2727', '2', '200204', '2002', '3', '查询实施预算详情', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2728', '2', '200205', '2002', '3', '编辑实施预算', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2729', '2', '200207', '2002', '3', '查询竣工预算详情', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2730', '2', '200208', '2002', '3', '查询终止预算详情', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2731', '2', '200203', '2002', '3', '审核洽谈预算', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2732', '2', '200206', '2002', '3', '审核实施预算', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2733', '2', '2501', '25', '2', '实施项目', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2734', '2', '2502', '25', '2', '竣工项目', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2735', '2', '250101', '2501', '3', '编辑采购单', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2736', '2', '250102', '2501', '3', '采购批次管理', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2737', '2', '250103', '2501', '3', '采购订单管理', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2738', '2', '250104', '2501', '3', '物流进度管理', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2739', '2', '250105', '2501', '3', '编辑(指定采购负责人和状态)', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2740', '2', '25010301', '250103', '4', '查看', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2741', '2', '25010302', '250103', '4', '编辑', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2742', '2', '25010303', '250103', '4', '删除', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2743', '2', '25010304', '250103', '4', '新增', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2744', '2', '25010305', '250103', '4', '审核', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2745', '2', '25010306', '250103', '4', '发送供应商', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2746', '2', '25010401', '250104', '4', '查看物流', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2747', '2', '25010402', '250104', '4', '编辑物流', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2748', '2', '250104031', '250104', '4', '更改物流状态', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2749', '2', '250202', '2502', '3', '采购批次管理', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2750', '2', '250203', '2502', '3', '采购订单管理', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2751', '2', '250204', '2502', '3', '物流进度管理', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2752', '2', '5001', '50', '2', '洽谈项目', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2753', '2', '5002', '50', '2', '实施项目', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2754', '2', '5003', '50', '2', '竣工项目', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2755', '2', '500101', '5001', '3', '编辑&查看', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2756', '2', '500201', '5002', '3', '编辑&查看', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2757', '2', '500301', '5003', '3', '编辑&查看', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2758', '2', '150203', '1502', '3', '工程管理', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2759', '2', '150303', '1503', '3', '工程管理', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2760', '2', '150502', '1505', '3', '工程管理', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2761', '2', '3001', '30', '2', '实施工程', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2762', '2', '3002', '30', '2', '竣工工程', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2763', '2', '300104', '3001', '3', '编辑(指定实施人员和状态)', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2764', '2', '300101', '3001', '3', '施工组织统筹', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2765', '2', '300102', '3001', '3', '现场材料管理', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2766', '2', '300103', '3001', '3', '施工进度管理', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2767', '2', '3003', '30', '2', '施工流程配置', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2768', '2', '300301', '3003', '3', '施工流程配置详情', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2769', '2', '300302', '3003', '3', '编辑施工流程配置', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2770', '2', '30010101', '300101', '4', '编辑施工组织统筹', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2771', '2', '30010201', '300102', '4', '查看现场材料管理', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2772', '2', '30010202', '300102', '4', '编辑现场材料管理', '6', '2019-10-30 11:23:53', '2019-11-01 10:38:27', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2773', '2', '15', '0', '1', '项目信息管理', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2774', '2', '20', '0', '1', '预算报价管理', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2775', '2', '25', '0', '1', '采购集成管理', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2776', '2', '30', '0', '1', '施工安装管理', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2777', '2', '35', '0', '1', '建筑设计管理', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2778', '2', '40', '0', '1', '部件集成管理', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2779', '2', '45', '0', '1', '供应商管理', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2780', '2', '50', '0', '1', '财务信息管理', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2781', '2', '55', '0', '1', '客户信息管理', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2782', '2', '60', '0', '1', '系统公告管理', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2783', '2', '3501', '35', '2', '查询建筑系统详情', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2784', '2', '3502', '35', '2', '新增建筑系统', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2785', '2', '3503', '35', '2', '编辑建筑系统', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2786', '2', '3504', '35', '2', '更改建筑系统状态', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2787', '2', '3505', '35', '2', '查询建筑系统子系统', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2788', '2', '3506', '35', '2', '编辑建筑子系统', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2789', '2', '4501', '45', '2', '查询品牌信息', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2790', '2', '4502', '45', '2', '新增品牌信息', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2791', '2', '4503', '45', '2', '编辑品牌信息', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2792', '2', '4510', '45', '2', '查询供应商信息', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2793', '2', '4511', '45', '2', '新增供应商', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2794', '2', '4512', '45', '2', '编辑供应商', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2795', '2', '4513', '45', '2', '删除供应商', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2796', '2', '1501', '15', '2', '创建项目(工程)', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2797', '2', '1502', '15', '2', '洽谈项目', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2798', '2', '150201', '1502', '3', '查询项目详情', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2799', '2', '150202', '1502', '3', '编辑项目', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2800', '2', '1503', '15', '2', '实施项目', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2801', '2', '150301', '1503', '3', '查询项目详情', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2802', '2', '150302', '1503', '3', '编辑项目', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2803', '2', '1504', '15', '2', '竣工项目', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2804', '2', '150401', '1504', '3', '查询项目详情', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2805', '2', '150402', '1504', '3', '工程管理', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2806', '2', '1505', '15', '2', '终止项目', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2807', '2', '150501', '1505', '3', '查询项目详情', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2808', '2', '3507', '35', '2', '项目设计', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2809', '2', '350701', '3507', '3', '查询洽谈项目详情', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2810', '2', '350702', '3507', '3', '编辑洽谈项目', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2811', '2', '350703', '3507', '3', '查询实施项目详情', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2812', '2', '350704', '3507', '3', '编辑实施项目', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2813', '2', '350705', '3507', '3', '查询竣工项目详情', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2814', '2', '350706', '3507', '3', '查询终止项目详情', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2815', '2', '200101', '2001', '3', '查询洽谈预算详情', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2816', '2', '200102', '2001', '3', '编辑洽谈预算', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2817', '2', '200104', '2001', '3', '查询实施预算详情', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2818', '2', '200105', '2001', '3', '编辑实施预算', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2819', '2', '200107', '2001', '3', '查询竣工预算详情', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2820', '2', '200108', '2001', '3', '查询终止预算详情', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2821', '2', '200103', '2001', '3', '审核洽谈预算', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2822', '2', '200106', '2001', '3', '审核实施预算', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2823', '2', '2001', '20', '2', '预算管理', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2824', '2', '2002', '20', '2', '报价管理', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2825', '2', '200201', '2002', '3', '查询洽谈预算详情', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2826', '2', '200202', '2002', '3', '编辑洽谈预算', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2827', '2', '200204', '2002', '3', '查询实施预算详情', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2828', '2', '200205', '2002', '3', '编辑实施预算', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2829', '2', '200207', '2002', '3', '查询竣工预算详情', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2830', '2', '200208', '2002', '3', '查询终止预算详情', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2831', '2', '200203', '2002', '3', '审核洽谈预算', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2832', '2', '200206', '2002', '3', '审核实施预算', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2833', '2', '2501', '25', '2', '实施项目', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2834', '2', '2502', '25', '2', '竣工项目', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2835', '2', '250101', '2501', '3', '编辑采购单', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2836', '2', '250102', '2501', '3', '采购批次管理', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2837', '2', '250103', '2501', '3', '采购订单管理', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2838', '2', '250104', '2501', '3', '物流进度管理', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2839', '2', '250105', '2501', '3', '编辑(指定采购负责人和状态)', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2840', '2', '25010301', '250103', '4', '查看', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2841', '2', '25010302', '250103', '4', '编辑', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2842', '2', '25010303', '250103', '4', '删除', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2843', '2', '25010304', '250103', '4', '新增', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2844', '2', '25010305', '250103', '4', '审核', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2845', '2', '25010306', '250103', '4', '发送供应商', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2846', '2', '25010401', '250104', '4', '查看物流', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2847', '2', '25010402', '250104', '4', '编辑物流', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2848', '2', '250104031', '250104', '4', '更改物流状态', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2849', '2', '250202', '2502', '3', '采购批次管理', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2850', '2', '250203', '2502', '3', '采购订单管理', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2851', '2', '250204', '2502', '3', '物流进度管理', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2852', '2', '5001', '50', '2', '洽谈项目', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2853', '2', '5002', '50', '2', '实施项目', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2854', '2', '5003', '50', '2', '竣工项目', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2855', '2', '500101', '5001', '3', '编辑&查看', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2856', '2', '500201', '5002', '3', '编辑&查看', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2857', '2', '500301', '5003', '3', '编辑&查看', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2858', '2', '150203', '1502', '3', '工程管理', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2859', '2', '150303', '1503', '3', '工程管理', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2860', '2', '150502', '1505', '3', '工程管理', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2861', '2', '3001', '30', '2', '实施工程', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2862', '2', '3002', '30', '2', '竣工工程', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2863', '2', '300104', '3001', '3', '编辑(指定实施人员和状态)', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2864', '2', '300101', '3001', '3', '施工组织统筹', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2865', '2', '300102', '3001', '3', '现场材料管理', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2866', '2', '300103', '3001', '3', '施工进度管理', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2867', '2', '3003', '30', '2', '施工流程配置', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2868', '2', '300301', '3003', '3', '施工流程配置详情', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2869', '2', '300302', '3003', '3', '编辑施工流程配置', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2870', '2', '30010101', '300101', '4', '编辑施工组织统筹', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2871', '2', '30010201', '300102', '4', '查看现场材料管理', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2872', '2', '30010202', '300102', '4', '编辑现场材料管理', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2873', '2', '30010301', '300103', '4', '编辑施工进度管理', '6', '2019-11-01 10:38:27', '2019-11-01 10:38:27', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2874', '1', '15', '0', '1', '项目信息管理', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2875', '1', '20', '0', '1', '预算报价管理', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2876', '1', '25', '0', '1', '采购集成管理', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2877', '1', '30', '0', '1', '施工安装管理', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2878', '1', '35', '0', '1', '建筑设计管理', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2879', '1', '40', '0', '1', '部件集成管理', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2880', '1', '45', '0', '1', '供应商管理', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2881', '1', '50', '0', '1', '财务信息管理', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2882', '1', '55', '0', '1', '客户信息管理', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2883', '1', '60', '0', '1', '系统公告管理', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2884', '1', '3501', '35', '2', '查询建筑系统详情', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2885', '1', '3502', '35', '2', '新增建筑系统', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2886', '1', '3503', '35', '2', '编辑建筑系统', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2887', '1', '3504', '35', '2', '更改建筑系统状态', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2888', '1', '3505', '35', '2', '查询建筑系统子系统', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2889', '1', '3506', '35', '2', '编辑建筑子系统', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2890', '1', '4501', '45', '2', '查询品牌信息', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2891', '1', '4502', '45', '2', '新增品牌信息', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2892', '1', '4503', '45', '2', '编辑品牌信息', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2893', '1', '4510', '45', '2', '查询供应商信息', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2894', '1', '4511', '45', '2', '新增供应商', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2895', '1', '4512', '45', '2', '编辑供应商', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2896', '1', '4513', '45', '2', '删除供应商', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2897', '1', '4001', '40', '2', '搜索部件信息', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2898', '1', '4002', '40', '2', '查询部件详情', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2899', '1', '4003', '40', '2', '编辑部件', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2900', '1', '5501', '55', '2', '客户信息列表', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2901', '1', '5502', '55', '2', '添加客户', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2902', '1', '5503', '55', '2', '编辑客户', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2903', '1', '5504', '55', '2', '删除客户', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2904', '1', '1501', '15', '2', '创建项目(工程)', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2905', '1', '1502', '15', '2', '洽谈项目', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2906', '1', '150201', '1502', '3', '查询项目详情', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2907', '1', '150202', '1502', '3', '编辑项目', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2908', '1', '1503', '15', '2', '实施项目', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2909', '1', '150301', '1503', '3', '查询项目详情', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2910', '1', '150302', '1503', '3', '编辑项目', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2911', '1', '1504', '15', '2', '竣工项目', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2912', '1', '150401', '1504', '3', '查询项目详情', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2913', '1', '150402', '1504', '3', '工程管理', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2914', '1', '1505', '15', '2', '终止项目', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2915', '1', '150501', '1505', '3', '查询项目详情', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2916', '1', '3507', '35', '2', '项目设计', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2917', '1', '350701', '3507', '3', '查询洽谈项目详情', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2918', '1', '350702', '3507', '3', '编辑洽谈项目', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2919', '1', '350703', '3507', '3', '查询实施项目详情', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2920', '1', '350704', '3507', '3', '编辑实施项目', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2921', '1', '350705', '3507', '3', '查询竣工项目详情', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2922', '1', '350706', '3507', '3', '查询终止项目详情', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2923', '1', '200101', '2001', '3', '查询洽谈预算详情', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2924', '1', '200102', '2001', '3', '编辑洽谈预算', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2925', '1', '200104', '2001', '3', '查询实施预算详情', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2926', '1', '200105', '2001', '3', '编辑实施预算', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2927', '1', '200107', '2001', '3', '查询竣工预算详情', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2928', '1', '200108', '2001', '3', '查询终止预算详情', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2929', '1', '200103', '2001', '3', '审核洽谈预算', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2930', '1', '200106', '2001', '3', '审核实施预算', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2931', '1', '2001', '20', '2', '预算管理', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2932', '1', '2002', '20', '2', '报价管理', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2933', '1', '200201', '2002', '3', '查询洽谈预算详情', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2934', '1', '200202', '2002', '3', '编辑洽谈预算', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2935', '1', '200204', '2002', '3', '查询实施预算详情', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2936', '1', '200205', '2002', '3', '编辑实施预算', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2937', '1', '200207', '2002', '3', '查询竣工预算详情', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2938', '1', '200208', '2002', '3', '查询终止预算详情', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2939', '1', '200203', '2002', '3', '审核洽谈预算', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2940', '1', '200206', '2002', '3', '审核实施预算', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2941', '1', '2501', '25', '2', '实施项目', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2942', '1', '2502', '25', '2', '竣工项目', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2943', '1', '250101', '2501', '3', '编辑采购单', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2944', '1', '250102', '2501', '3', '采购批次管理', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2945', '1', '250103', '2501', '3', '采购订单管理', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2946', '1', '250104', '2501', '3', '物流进度管理', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2947', '1', '250105', '2501', '3', '编辑(指定采购负责人和状态)', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2948', '1', '25010301', '250103', '4', '查看', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2949', '1', '25010302', '250103', '4', '编辑', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2950', '1', '25010303', '250103', '4', '删除', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2951', '1', '25010304', '250103', '4', '新增', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2952', '1', '25010305', '250103', '4', '审核', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2953', '1', '25010306', '250103', '4', '发送供应商', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2954', '1', '25010401', '250104', '4', '查看物流', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2955', '1', '25010402', '250104', '4', '编辑物流', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2956', '1', '250104031', '250104', '4', '更改物流状态', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2957', '1', '250202', '2502', '3', '采购批次管理', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2958', '1', '250203', '2502', '3', '采购订单管理', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2959', '1', '250204', '2502', '3', '物流进度管理', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2960', '1', '150203', '1502', '3', '工程管理', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2961', '1', '150303', '1503', '3', '工程管理', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2962', '1', '150502', '1505', '3', '工程管理', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2963', '1', '3001', '30', '2', '实施工程', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2964', '1', '3002', '30', '2', '竣工工程', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2965', '1', '300104', '3001', '3', '编辑(指定实施人员和状态)', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2966', '1', '300101', '3001', '3', '施工组织统筹', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2967', '1', '300102', '3001', '3', '现场材料管理', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2968', '1', '300103', '3001', '3', '施工进度管理', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2969', '1', '3003', '30', '2', '施工流程配置', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2970', '1', '300301', '3003', '3', '施工流程配置详情', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2971', '1', '300302', '3003', '3', '编辑施工流程配置', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2972', '1', '30010101', '300101', '4', '编辑施工组织统筹', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2973', '1', '30010201', '300102', '4', '查看现场材料管理', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2974', '1', '30010202', '300102', '4', '编辑现场材料管理', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2975', '1', '30010301', '300103', '4', '编辑施工进度管理', '1', '2019-11-01 11:20:17', '2019-11-13 17:36:26', '0');
INSERT INTO `sp_role_manage_authority` VALUES ('2976', '1', '15', '0', '1', '项目信息管理', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2977', '1', '20', '0', '1', '预算报价管理', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2978', '1', '25', '0', '1', '采购集成管理', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2979', '1', '30', '0', '1', '施工安装管理', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2980', '1', '35', '0', '1', '建筑设计管理', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2981', '1', '40', '0', '1', '部件集成管理', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2982', '1', '45', '0', '1', '供应商管理', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2983', '1', '50', '0', '1', '财务信息管理', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2984', '1', '55', '0', '1', '客户信息管理', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2985', '1', '60', '0', '1', '系统公告管理', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2986', '1', '3501', '35', '2', '查询建筑系统详情', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2987', '1', '3502', '35', '2', '新增建筑系统', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2988', '1', '3503', '35', '2', '编辑建筑系统', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2989', '1', '3504', '35', '2', '更改建筑系统状态', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2990', '1', '3505', '35', '2', '查询建筑系统子系统', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2991', '1', '3506', '35', '2', '编辑建筑子系统', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2992', '1', '4501', '45', '2', '查询品牌信息', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2993', '1', '4502', '45', '2', '新增品牌信息', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2994', '1', '4503', '45', '2', '编辑品牌信息', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2995', '1', '4510', '45', '2', '查询供应商信息', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2996', '1', '4511', '45', '2', '新增供应商', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2997', '1', '4512', '45', '2', '编辑供应商', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2998', '1', '4513', '45', '2', '删除供应商', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('2999', '1', '4001', '40', '2', '搜索部件信息', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3000', '1', '4002', '40', '2', '查询部件详情', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3001', '1', '4003', '40', '2', '编辑部件', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3002', '1', '5501', '55', '2', '客户信息列表', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3003', '1', '5502', '55', '2', '添加客户', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3004', '1', '5503', '55', '2', '编辑客户', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3005', '1', '5504', '55', '2', '删除客户', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3006', '1', '1501', '15', '2', '创建项目(工程)', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3007', '1', '1502', '15', '2', '洽谈项目', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3008', '1', '150201', '1502', '3', '查询项目详情', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3009', '1', '150202', '1502', '3', '编辑项目', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3010', '1', '1503', '15', '2', '实施项目', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3011', '1', '150301', '1503', '3', '查询项目详情', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3012', '1', '150302', '1503', '3', '编辑项目', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3013', '1', '1504', '15', '2', '竣工项目', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3014', '1', '150401', '1504', '3', '查询项目详情', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3015', '1', '150402', '1504', '3', '工程管理', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3016', '1', '1505', '15', '2', '终止项目', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3017', '1', '150501', '1505', '3', '查询项目详情', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3018', '1', '3507', '35', '2', '项目设计', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3019', '1', '350701', '3507', '3', '查询洽谈项目详情', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3020', '1', '350702', '3507', '3', '编辑洽谈项目', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3021', '1', '350703', '3507', '3', '查询实施项目详情', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3022', '1', '350704', '3507', '3', '编辑实施项目', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3023', '1', '350705', '3507', '3', '查询竣工项目详情', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3024', '1', '350706', '3507', '3', '查询终止项目详情', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3025', '1', '200101', '2001', '3', '查询洽谈预算详情', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3026', '1', '200102', '2001', '3', '编辑洽谈预算', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3027', '1', '200104', '2001', '3', '查询实施预算详情', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3028', '1', '200105', '2001', '3', '编辑实施预算', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3029', '1', '200107', '2001', '3', '查询竣工预算详情', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3030', '1', '200108', '2001', '3', '查询终止预算详情', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3031', '1', '200103', '2001', '3', '审核洽谈预算', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3032', '1', '200106', '2001', '3', '审核实施预算', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3033', '1', '2001', '20', '2', '预算管理', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3034', '1', '2002', '20', '2', '报价管理', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3035', '1', '200201', '2002', '3', '查询洽谈预算详情', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3036', '1', '200202', '2002', '3', '编辑洽谈预算', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3037', '1', '200204', '2002', '3', '查询实施预算详情', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3038', '1', '200205', '2002', '3', '编辑实施预算', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3039', '1', '200207', '2002', '3', '查询竣工预算详情', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3040', '1', '200208', '2002', '3', '查询终止预算详情', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3041', '1', '200203', '2002', '3', '审核洽谈预算', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3042', '1', '200206', '2002', '3', '审核实施预算', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3043', '1', '2501', '25', '2', '实施项目', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3044', '1', '2502', '25', '2', '竣工项目', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3045', '1', '250101', '2501', '3', '编辑采购单', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3046', '1', '250102', '2501', '3', '采购批次管理', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3047', '1', '250103', '2501', '3', '采购订单管理', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3048', '1', '250104', '2501', '3', '物流进度管理', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3049', '1', '250105', '2501', '3', '编辑(指定采购负责人和状态)', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3050', '1', '25010301', '250103', '4', '查看', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3051', '1', '25010302', '250103', '4', '编辑', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3052', '1', '25010303', '250103', '4', '删除', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3053', '1', '25010304', '250103', '4', '新增', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3054', '1', '25010305', '250103', '4', '审核', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3055', '1', '25010306', '250103', '4', '发送供应商', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3056', '1', '25010401', '250104', '4', '查看物流', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3057', '1', '25010402', '250104', '4', '编辑物流', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3058', '1', '250104031', '250104', '4', '更改物流状态', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3059', '1', '250202', '2502', '3', '采购批次管理', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3060', '1', '250203', '2502', '3', '采购订单管理', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3061', '1', '250204', '2502', '3', '物流进度管理', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3062', '1', '150203', '1502', '3', '工程管理', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3063', '1', '150303', '1503', '3', '工程管理', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3064', '1', '150502', '1505', '3', '工程管理', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3065', '1', '3001', '30', '2', '实施工程', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3066', '1', '3002', '30', '2', '竣工工程', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3067', '1', '300104', '3001', '3', '编辑(指定实施人员和状态)', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3068', '1', '300101', '3001', '3', '施工组织统筹', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3069', '1', '300102', '3001', '3', '现场材料管理', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3070', '1', '300103', '3001', '3', '施工进度管理', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3071', '1', '3003', '30', '2', '施工流程配置', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3072', '1', '300301', '3003', '3', '施工流程配置详情', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3073', '1', '300302', '3003', '3', '编辑施工流程配置', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3074', '1', '30010101', '300101', '4', '编辑施工组织统筹', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3075', '1', '30010201', '300102', '4', '查看现场材料管理', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3076', '1', '30010202', '300102', '4', '编辑现场材料管理', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3077', '1', '30010301', '300103', '4', '编辑施工进度管理', '1', '2019-11-13 17:36:26', '2019-11-13 17:36:26', '1');

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
  KEY `brand_id_supplier_id` (`status`,`brand_id`,`supplier_id`) USING BTREE,
  KEY `brand_id` (`brand_id`,`supplier_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `user_agent` varchar(2000) DEFAULT NULL COMMENT '浏览器配置',
  `ip` varchar(255) DEFAULT NULL COMMENT 'ip地址',
  `param` varchar(4000) DEFAULT NULL COMMENT '请求参数',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `created_at` (`created_at`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_system_operation_log
-- ----------------------------

-- ----------------------------
-- Table structure for sp_system_setting
-- ----------------------------
DROP TABLE IF EXISTS `sp_system_setting`;
CREATE TABLE `sp_system_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field` varchar(255) DEFAULT NULL COMMENT '字段名',
  `name` varchar(1000) DEFAULT NULL COMMENT '值',
  `remark` varchar(255) DEFAULT NULL COMMENT '描述',
  `sort` int(11) DEFAULT '1' COMMENT '排序',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field` (`field`(191)) USING BTREE,
  KEY `name` (`name`(191)) USING BTREE,
  KEY `field_sort` (`field`(191),`sort`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_system_setting
-- ----------------------------
INSERT INTO `sp_system_setting` VALUES ('1', 'project_type', '乡村私宅', '项目:项目种类(用途)', '1', '2019-06-27 11:05:58', '2019-11-06 14:38:55');
INSERT INTO `sp_system_setting` VALUES ('2', 'project_type', '农家院独家别墅', '项目:项目种类(用途)', '2', '2019-06-27 08:21:35', '2019-06-27 08:53:31');
INSERT INTO `sp_system_setting` VALUES ('3', 'project_type', '休闲农业地产', '项目:项目种类(用途)', '3', '2019-06-27 08:25:29', '2019-06-27 08:25:29');
INSERT INTO `sp_system_setting` VALUES ('4', 'project_type', '新农村小镇整体规划建设', '项目:项目种类(用途)', '4', '2019-06-27 08:35:57', '2019-06-29 08:55:00');
INSERT INTO `sp_system_setting` VALUES ('5', 'project_type', '别墅类住宅商业地产', '项目:项目种类(用途)', '5', '2019-06-27 08:36:31', '2019-06-27 08:54:37');
INSERT INTO `sp_system_setting` VALUES ('6', 'project_source', '直接客户', '项目:项目来源', '1', '2019-06-27 08:56:35', '2019-11-06 14:41:37');
INSERT INTO `sp_system_setting` VALUES ('7', 'project_source', '运营商客户', '项目:项目来源', '2', '2019-06-29 05:43:25', '2019-11-06 14:41:43');
INSERT INTO `sp_system_setting` VALUES ('8', 'project_source', '中间商客户', '项目:项目来源', '3', '2019-06-29 05:43:58', '2019-11-06 14:41:52');
INSERT INTO `sp_system_setting` VALUES ('9', 'project_stage', '土地申报-概念规划阶段', '项目:项目所属阶段', '1', '2019-06-29 05:44:28', '2019-06-29 05:44:28');
INSERT INTO `sp_system_setting` VALUES ('10', 'project_stage', '土地审批完成-整体规划阶段', '项目:项目所属阶段', '2', '2019-06-29 05:46:37', '2019-06-29 05:46:37');
INSERT INTO `sp_system_setting` VALUES ('11', 'project_source', '其它', '项目:项目来源', '4', '2019-11-01 15:06:06', '2019-11-06 14:42:02');
INSERT INTO `sp_system_setting` VALUES ('12', 'customer_type', '中央企业单位', '项目:客户类型', '1', null, '2019-11-06 14:51:12');
INSERT INTO `sp_system_setting` VALUES ('13', 'customer_type', '民营企业单位', '项目:客户类型', '3', null, '2019-11-06 14:51:17');
INSERT INTO `sp_system_setting` VALUES ('14', 'project_traffic', '13米（最大）货车可直达现场', '项目:交通条件', '1', null, '2019-11-06 14:47:04');
INSERT INTO `sp_system_setting` VALUES ('15', 'project_traffic', '货车不能直达现场需人工搬运', '项目:交通条件', '7', null, '2019-11-06 14:48:37');
INSERT INTO `sp_system_setting` VALUES ('16', 'project_environment', '平原', '项目:场地自然条件', '1', null, null);
INSERT INTO `sp_system_setting` VALUES ('17', 'project_environment', '海岛', '项目:场地自然条件', '5', null, '2019-11-06 14:43:59');
INSERT INTO `sp_system_setting` VALUES ('18', 'project_material_storage', '现场堆放空间充足（50米以内）', '项目:材料储放条件', '1', null, '2019-11-06 14:49:05');
INSERT INTO `sp_system_setting` VALUES ('19', 'project_material_storage', '临近堆放 （50~100米内）', '项目:材料储放条件', '2', null, '2019-11-06 14:49:40');
INSERT INTO `sp_system_setting` VALUES ('20', 'progress_construction_accommodation', '买方提供免费住宿房屋', '施工:现场人员住宿条件', '1', null, '2019-11-06 15:00:23');
INSERT INTO `sp_system_setting` VALUES ('21', 'progress_construction_accommodation', '需临时搭建办公住宿房屋', '施工:现场人员住宿条件', '3', null, '2019-11-06 15:00:29');
INSERT INTO `sp_system_setting` VALUES ('22', 'progress_construction_crane', '空间充足使用便捷', '施工:场地大型施工机械使用条件', '1', null, '2019-11-01 15:50:51');
INSERT INTO `sp_system_setting` VALUES ('23', 'progress_construction_crane', '空间有限远距离使用（30米内）', '施工:场地大型施工机械使用条件', '2', null, '2019-11-06 15:03:02');
INSERT INTO `sp_system_setting` VALUES ('24', 'progress_construction_scaffolding', '空间充足搭建便捷', '施工:场地操作平台搭建条件', '1', null, null);
INSERT INTO `sp_system_setting` VALUES ('25', 'progress_construction_scaffolding', '空间不足 临近搭建 人工搬运', '施工:场地操作平台搭建条件', '2', null, null);
INSERT INTO `sp_system_setting` VALUES ('26', 'engin_waterproof_grade', '1级（三道防水）', '工程:屋面防水等级', '1', null, null);
INSERT INTO `sp_system_setting` VALUES ('27', 'engin_waterproof_grade', '4级（一道防水）', '工程:屋面防水等级', '4', null, '2019-11-06 14:54:47');
INSERT INTO `sp_system_setting` VALUES ('28', 'engin_seismic_grade', '9度', '工程:抗震设防烈度(度)', '1', null, null);
INSERT INTO `sp_system_setting` VALUES ('29', 'engin_seismic_grade', '不设防', '工程:抗震设防烈度(度)', '5', null, '2019-11-06 14:54:31');
INSERT INTO `sp_system_setting` VALUES ('30', 'engin_use_time', '50年以上', '工程:建筑使用寿命（年）', '1', null, null);
INSERT INTO `sp_system_setting` VALUES ('31', 'engin_use_time', '1-10年', '工程:建筑使用寿命（年）', '3', null, '2019-11-06 14:53:21');
INSERT INTO `sp_system_setting` VALUES ('32', 'engin_refractory_grade', '1级', '工程:建筑耐火等级', '1', null, null);
INSERT INTO `sp_system_setting` VALUES ('33', 'engin_refractory_grade', '2级', '工程:建筑耐火等级', '2', null, '2019-11-06 14:55:56');
INSERT INTO `sp_system_setting` VALUES ('34', 'engin_energy_grade', '75%', '工程:建筑节能等级', '1', null, null);
INSERT INTO `sp_system_setting` VALUES ('36', 'engin_energy_grade', '65%', '工程:建筑节能等级', '2', null, '2019-11-06 14:57:59');
INSERT INTO `sp_system_setting` VALUES ('37', 'engin_insulation_sound_grade', '<=30db', '工程:建筑隔声等级', '1', null, '2019-11-06 14:56:55');
INSERT INTO `sp_system_setting` VALUES ('57', 'purchase_batch_transport_type', '海运', '采购批次:运输方式', '2', null, '2019-11-06 14:58:14');
INSERT INTO `sp_system_setting` VALUES ('58', 'purchase_batch_transport_type', '铁路', '采购批次:运输方式', '3', null, '2019-11-06 14:58:39');
INSERT INTO `sp_system_setting` VALUES ('59', 'purchase_batch_load_mode', '散装整车', '采购批次:装载方式', '1', null, null);
INSERT INTO `sp_system_setting` VALUES ('60', 'purchase_batch_load_mode', '集装箱', '采购批次:装载方式', '3', null, '2019-11-05 09:40:18');
INSERT INTO `sp_system_setting` VALUES ('61', 'purchase_batch_container_size', '20尺', '采购批次:集装箱尺寸', '1', null, null);
INSERT INTO `sp_system_setting` VALUES ('62', 'purchase_batch_container_size', '40尺', '采购批次:集装箱尺寸', '2', null, null);
INSERT INTO `sp_system_setting` VALUES ('63', 'purchase_batch_van_specs', '13米货车', '采购批次:货车规格', '1', null, null);
INSERT INTO `sp_system_setting` VALUES ('64', 'purchase_batch_van_specs', '6.8米货车', '采购批次:货车规格', '4', null, '2019-11-05 09:42:01');
INSERT INTO `sp_system_setting` VALUES ('65', 'purchase_order_deliver_mode', '买方自提', '采购物流:送货方式', '1', null, null);
INSERT INTO `sp_system_setting` VALUES ('66', 'purchase_order_deliver_mode', '卖方配送', '采购物流:送货方式', '2', null, null);
INSERT INTO `sp_system_setting` VALUES ('67', 'purchase_order_arrival_mode', '直达项目现场', '采购物流:到达方式', '1', null, null);
INSERT INTO `sp_system_setting` VALUES ('68', 'purchase_order_arrival_mode', '直达中转站', '采购物流:到达方式', '2', null, null);
INSERT INTO `sp_system_setting` VALUES ('69', 'purchase_order_transport_mode', '汽运', '采购物流:运输方式', '1', null, null);
INSERT INTO `sp_system_setting` VALUES ('70', 'purchase_order_transport_mode', '海运', '采购物流:运输方式', '2', null, null);
INSERT INTO `sp_system_setting` VALUES ('71', 'purchase_order_load_mode', '散装整车', '采购物流:装载方式', '1', null, null);
INSERT INTO `sp_system_setting` VALUES ('72', 'purchase_order_load_mode', '集装箱', '采购订单:装载方式', '3', null, '2019-11-05 09:44:34');
INSERT INTO `sp_system_setting` VALUES ('73', 'purchase_order_vehicle_mode', '13米货车', '采购物流:车辆规格', '1', null, null);
INSERT INTO `sp_system_setting` VALUES ('74', 'purchase_order_vehicle_mode', '4.2米货车', '采购订单:车辆规格', '5', null, '2019-11-05 09:45:11');
INSERT INTO `sp_system_setting` VALUES ('75', 'purchase_batch_load_mode', '散装配货', '采购批次:装载方式', '2', '2019-11-05 09:40:45', '2019-11-05 09:40:45');
INSERT INTO `sp_system_setting` VALUES ('76', 'purchase_batch_van_specs', '9.6米货车', '采购批次:货车规格', '2', '2019-11-05 09:41:22', '2019-11-05 09:41:22');
INSERT INTO `sp_system_setting` VALUES ('77', 'purchase_batch_van_specs', '7.2米货车', '采购批次:货车规格', '3', '2019-11-05 09:41:47', '2019-11-05 09:51:37');
INSERT INTO `sp_system_setting` VALUES ('78', 'purchase_batch_van_specs', '4.2米货车', '采购批次:货车规格', '5', '2019-11-05 09:42:17', '2019-11-05 09:42:17');
INSERT INTO `sp_system_setting` VALUES ('79', 'purchase_order_transport_mode', '铁路', '采购订单:运输方式', '3', '2019-11-05 09:43:25', '2019-11-05 09:43:25');
INSERT INTO `sp_system_setting` VALUES ('80', 'purchase_order_transport_mode', '综合', '采购订单:运输方式', '4', '2019-11-05 09:43:47', '2019-11-05 09:43:47');
INSERT INTO `sp_system_setting` VALUES ('81', 'purchase_order_load_mode', '散装配货', '采购订单:装载方式', '2', '2019-11-05 09:44:17', '2019-11-05 09:44:29');
INSERT INTO `sp_system_setting` VALUES ('82', 'purchase_order_vehicle_mode', '9.6米货车', '采购订单:车辆规格', '2', '2019-11-05 09:45:04', '2019-11-05 09:45:04');
INSERT INTO `sp_system_setting` VALUES ('83', 'purchase_order_vehicle_mode', '7.2米货车', '采购订单:车辆规格', '3', '2019-11-05 09:47:08', '2019-11-05 09:47:21');
INSERT INTO `sp_system_setting` VALUES ('84', 'purchase_order_vehicle_mode', '6.8米货车', '采购订单:车辆规格', '4', '2019-11-05 09:51:06', '2019-11-05 09:51:06');
INSERT INTO `sp_system_setting` VALUES ('85', 'project_type', '政府福利性住宅', '项目:项目种类(用途)', '6', '2019-11-06 14:39:34', '2019-11-06 14:39:34');
INSERT INTO `sp_system_setting` VALUES ('86', 'project_type', '私人会所', '项目:项目种类(用途)', '7', '2019-11-06 14:39:47', '2019-11-06 14:39:47');
INSERT INTO `sp_system_setting` VALUES ('87', 'project_type', '商业会所', '项目:项目种类(用途)', '8', '2019-11-06 14:39:57', '2019-11-06 14:39:57');
INSERT INTO `sp_system_setting` VALUES ('88', 'project_type', '旅游度假综合开发', '项目:项目种类(用途)', '9', '2019-11-06 14:40:17', '2019-11-06 14:40:17');
INSERT INTO `sp_system_setting` VALUES ('89', 'project_type', '养生养老地产项目', '项目:项目种类(用途)', '10', '2019-11-06 14:40:35', '2019-11-06 14:40:35');
INSERT INTO `sp_system_setting` VALUES ('90', 'project_type', '基地配套建设', '项目:项目种类(用途)', '11', '2019-11-06 14:41:12', '2019-11-06 14:41:12');
INSERT INTO `sp_system_setting` VALUES ('91', 'project_type', '已有建筑改扩建', '项目:项目种类(用途)', '12', '2019-11-06 14:41:24', '2019-11-06 14:41:24');
INSERT INTO `sp_system_setting` VALUES ('92', 'project_stage', '整体规划完成-单体建筑设计阶段', '项目:项目所属阶段', '3', '2019-11-06 14:42:40', '2019-11-06 14:42:40');
INSERT INTO `sp_system_setting` VALUES ('93', 'project_stage', '单体建筑方案完成-施工图设计阶段', '项目:项目所属阶段', '4', '2019-11-06 14:43:07', '2019-11-06 14:43:07');
INSERT INTO `sp_system_setting` VALUES ('94', 'project_environment', '山地', '项目:场地自然条件', '2', '2019-11-06 14:43:31', '2019-11-06 14:43:31');
INSERT INTO `sp_system_setting` VALUES ('95', 'project_environment', '沙漠', '项目:场地自然条件', '4', '2019-11-06 14:43:48', '2019-11-06 14:43:48');
INSERT INTO `sp_system_setting` VALUES ('96', 'project_environment', '高原平地', '项目:场地自然条件', '3', '2019-11-06 14:44:37', '2019-11-06 14:44:37');
INSERT INTO `sp_system_setting` VALUES ('97', 'project_environment', '内陆海岸', '项目:场地自然条件', '6', '2019-11-06 14:45:11', '2019-11-06 14:45:11');
INSERT INTO `sp_system_setting` VALUES ('98', 'project_traffic', '9.6米(最大）货车可直达现场', '项目:交通条件', '2', '2019-11-06 14:45:59', '2019-11-06 14:47:14');
INSERT INTO `sp_system_setting` VALUES ('99', 'project_traffic', '7.2米（最大）货车可直达现场', '项目:交通条件', '3', '2019-11-06 14:46:21', '2019-11-06 14:47:21');
INSERT INTO `sp_system_setting` VALUES ('100', 'project_traffic', '6.8米(最大）货车可直达现场', '项目:交通条件', '4', '2019-11-06 14:46:35', '2019-11-06 14:47:35');
INSERT INTO `sp_system_setting` VALUES ('101', 'project_traffic', '4.2米（最大）货车可直达现场', '项目:交通条件', '5', '2019-11-06 14:48:06', '2019-11-06 14:48:06');
INSERT INTO `sp_system_setting` VALUES ('102', 'project_material_storage', '临近堆放（100米以上）', '项目:材料储放条件', '3', '2019-11-06 14:50:19', '2019-11-06 14:50:44');
INSERT INTO `sp_system_setting` VALUES ('103', 'customer_type', '地方国有企业单位', '项目:客户类型', '2', '2019-11-06 14:51:29', '2019-11-06 14:51:29');
INSERT INTO `sp_system_setting` VALUES ('104', 'customer_type', '政府机构', '项目:客户类型', '4', '2019-11-06 14:51:48', '2019-11-06 14:51:48');
INSERT INTO `sp_system_setting` VALUES ('105', 'customer_type', '事业单位', '项目:客户类型', '5', '2019-11-06 14:52:02', '2019-11-06 14:52:02');
INSERT INTO `sp_system_setting` VALUES ('106', 'customer_type', '个人', '项目:客户类型', '6', '2019-11-06 14:52:12', '2019-11-06 14:52:12');
INSERT INTO `sp_system_setting` VALUES ('107', 'customer_type', '国外企业单位', '项目:客户类型', '7', '2019-11-06 14:52:46', '2019-11-06 14:52:46');
INSERT INTO `sp_system_setting` VALUES ('108', 'customer_type', '国外个人', '项目:客户类型', '8', '2019-11-06 14:53:02', '2019-11-06 14:53:02');
INSERT INTO `sp_system_setting` VALUES ('109', 'engin_use_time', '10年~20年', '工程:建筑使用寿命（年）', '2', '2019-11-06 14:53:34', '2019-11-06 14:53:34');
INSERT INTO `sp_system_setting` VALUES ('110', 'engin_seismic_grade', '8度', '工程:抗震设防烈度(度)', '2', '2019-11-06 14:53:58', '2019-11-06 14:53:58');
INSERT INTO `sp_system_setting` VALUES ('111', 'engin_seismic_grade', '7度', '工程:抗震设防烈度(度)', '3', '2019-11-06 14:54:14', '2019-11-06 14:54:14');
INSERT INTO `sp_system_setting` VALUES ('112', 'engin_seismic_grade', '6度', '工程:抗震设防烈度(度)', '4', '2019-11-06 14:54:27', '2019-11-06 14:54:27');
INSERT INTO `sp_system_setting` VALUES ('113', 'engin_waterproof_grade', '2级（二道防水）', '工程:屋面防水等级', '2', '2019-11-06 14:55:07', '2019-11-06 14:55:17');
INSERT INTO `sp_system_setting` VALUES ('114', 'engin_waterproof_grade', '3级（二道防水）', '工程:屋面防水等级', '3', '2019-11-06 14:55:39', '2019-11-06 14:55:39');
INSERT INTO `sp_system_setting` VALUES ('115', 'engin_refractory_grade', '3级', '工程:建筑耐火等级', '3', '2019-11-06 14:56:09', '2019-11-06 14:56:09');
INSERT INTO `sp_system_setting` VALUES ('116', 'engin_refractory_grade', '4级', '工程:建筑耐火等级', '4', '2019-11-06 14:56:33', '2019-11-06 14:56:40');
INSERT INTO `sp_system_setting` VALUES ('117', 'engin_insulation_sound_grade', '<=35db', '工程:建筑隔声等级', '2', '2019-11-06 14:57:09', '2019-11-06 14:57:09');
INSERT INTO `sp_system_setting` VALUES ('118', 'engin_insulation_sound_grade', '<=40db', '工程:建筑隔声等级', '3', '2019-11-06 14:57:21', '2019-11-06 14:57:21');
INSERT INTO `sp_system_setting` VALUES ('119', 'engin_insulation_sound_grade', '<=45db', '工程:建筑隔声等级', '4', '2019-11-06 14:57:33', '2019-11-06 14:57:33');
INSERT INTO `sp_system_setting` VALUES ('120', 'engin_insulation_sound_grade', '<=50db', '工程:建筑隔声等级', '5', '2019-11-06 14:57:49', '2019-11-06 14:57:49');
INSERT INTO `sp_system_setting` VALUES ('121', 'purchase_batch_transport_type', '汽运', '采购批次:运输方式', '1', '2019-11-06 14:58:33', '2019-11-06 14:58:33');
INSERT INTO `sp_system_setting` VALUES ('122', 'purchase_batch_transport_type', '综合', '采购批次:运输方式', '4', '2019-11-06 14:58:49', '2019-11-06 14:58:49');
INSERT INTO `sp_system_setting` VALUES ('123', 'progress_construction_accommodation', '无免费房屋、可临近租赁', '施工:现场人员住宿条件', '2', '2019-11-06 15:00:08', '2019-11-06 15:00:08');
INSERT INTO `sp_system_setting` VALUES ('124', 'progress_construction_crane', '空间有限使用距离（20~30米）', '施工:场地大型施工机械使用条件', '3', '2019-11-06 15:01:48', '2019-11-06 15:03:52');
INSERT INTO `sp_system_setting` VALUES ('125', 'progress_construction_crane', '空间有限使用距离（30~50米）', '施工:场地大型施工机械使用条件', '3', '2019-11-06 15:01:50', '2019-11-06 15:04:00');
INSERT INTO `sp_system_setting` VALUES ('126', 'progress_construction_crane', '无法使用', '施工:场地大型施工机械使用条件', '5', '2019-11-06 15:04:14', '2019-11-06 15:04:14');
INSERT INTO `sp_system_setting` VALUES ('127', 'project_country', '国内', '项目:项目所在国', '1', '2019-11-15 14:05:17', '2019-11-15 14:05:17');
INSERT INTO `sp_system_setting` VALUES ('128', 'project_country', '国外', '项目:项目所在国', '2', '2019-11-15 14:05:27', '2019-11-15 14:05:27');
INSERT INTO `sp_system_setting` VALUES ('129', 'engin_room_name', '主卧室', '工程:建筑房间名称', '1', '2020-01-09 15:58:17', '2020-01-09 15:58:17');
INSERT INTO `sp_system_setting` VALUES ('130', 'engin_room_name', '卧室', '工程:建筑房间名称', '2', '2020-01-09 15:58:31', '2020-01-09 15:58:31');
INSERT INTO `sp_system_setting` VALUES ('131', 'engin_room_name', '客卧', '工程:建筑房间名称', '3', '2020-01-09 15:58:52', '2020-01-09 15:58:52');
INSERT INTO `sp_system_setting` VALUES ('132', 'engin_room_name', '客厅', '工程:建筑房间名称', '4', '2020-01-09 15:59:13', '2020-01-09 15:59:13');
INSERT INTO `sp_system_setting` VALUES ('133', 'engin_room_name', '餐厅', '工程:建筑房间名称', '5', '2020-01-09 15:59:38', '2020-01-09 15:59:38');
INSERT INTO `sp_system_setting` VALUES ('134', 'engin_room_name', '厨房(中式)', '工程:建筑房间名称', '6', '2020-01-09 16:00:07', '2020-01-09 16:00:07');
INSERT INTO `sp_system_setting` VALUES ('135', 'engin_room_name', '厨房(西式)', '工程:建筑房间名称', '7', '2020-01-09 16:00:29', '2020-01-09 16:00:29');
INSERT INTO `sp_system_setting` VALUES ('136', 'engin_room_name', '卫生间', '工程:建筑房间名称', '8', '2020-01-09 16:00:49', '2020-01-09 16:00:49');

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
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`role_id`,`status`) USING BTREE,
  KEY `uid_2` (`uid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_user_role
-- ----------------------------
INSERT INTO `sp_user_role` VALUES ('54', '6', '2', '超级管理员', '1', '2019-09-02 10:56:46', '2019-09-02 10:56:46');
INSERT INTO `sp_user_role` VALUES ('79', '14', '6', '采购专员', '1', '2019-11-06 15:34:31', '2019-11-06 15:34:31');
INSERT INTO `sp_user_role` VALUES ('80', '13', '14', '预算专员', '1', '2019-11-06 15:34:53', '2019-11-06 15:34:53');
INSERT INTO `sp_user_role` VALUES ('81', '12', '9', '销售经理', '1', '2019-11-06 15:35:06', '2019-11-06 15:35:06');
INSERT INTO `sp_user_role` VALUES ('83', '10', '11', '工程经理', '1', '2019-11-06 15:37:22', '2019-11-06 15:37:22');
INSERT INTO `sp_user_role` VALUES ('84', '9', '15', '预算部经理', '1', '2019-11-06 15:38:12', '2019-11-06 15:38:12');
INSERT INTO `sp_user_role` VALUES ('85', '8', '14', '预算专员', '1', '2019-11-06 15:38:26', '2019-11-06 15:38:26');
INSERT INTO `sp_user_role` VALUES ('86', '7', '10', '销售总监', '1', '2019-11-06 15:38:58', '2019-11-06 15:38:58');
INSERT INTO `sp_user_role` VALUES ('88', '4', '5', '建筑设计师', '1', '2019-11-06 15:39:18', '2019-11-06 15:39:18');
INSERT INTO `sp_user_role` VALUES ('89', '3', '5', '建筑设计师', '1', '2019-11-06 15:39:31', '2019-11-06 15:39:31');
INSERT INTO `sp_user_role` VALUES ('91', '5', '13', '设计总监', '1', '2019-11-06 15:40:17', '2019-11-06 15:40:17');
INSERT INTO `sp_user_role` VALUES ('96', '17', '23', '项目经理', '1', '2019-11-06 15:45:15', '2019-11-06 15:45:15');
INSERT INTO `sp_user_role` VALUES ('97', '16', '23', '项目经理', '1', '2019-11-06 15:45:22', '2019-11-06 15:45:22');
INSERT INTO `sp_user_role` VALUES ('98', '2', '6', '采购专员', '1', '2019-11-06 15:49:19', '2019-11-06 15:49:19');
INSERT INTO `sp_user_role` VALUES ('99', '11', '9', '销售经理', '1', '2019-11-06 15:49:50', '2019-11-06 15:49:50');
INSERT INTO `sp_user_role` VALUES ('102', '15', '24', '合约经理', '1', '2019-11-06 15:53:20', '2019-11-06 15:53:20');
INSERT INTO `sp_user_role` VALUES ('104', '1', '1', '超级管理员2', '1', '2019-11-13 09:36:17', '2019-11-13 09:36:17');

-- ----------------------------
-- Table structure for sp_users
-- ----------------------------
DROP TABLE IF EXISTS `sp_users`;
CREATE TABLE `sp_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '邮箱密码',
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department_id` int(11) DEFAULT NULL COMMENT '部门id',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `user_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户头像',
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1' COMMENT '用户状态 0待审核 1活跃 -1审核未通过 -2禁止用户',
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '职位',
  `telephone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sp_users
-- ----------------------------
INSERT INTO `sp_users` VALUES ('1', '总经理', 'addye6666@163.com', null, '$2y$10$f5s5aFzp8Ea7mCeStS8Fd.oB7bvcX44LdO/p30pv6m5e1s1B7gIny', '1', 'WGUUmsUWqN4iVvSfiSVjPK6cz4c0MGE96xWIjYQgqfSfZNHf4FZn2NbnN0ZN', '2019-08-28 11:05:06', '/img/user_image/ba1a14114a4eba6984da0e6c63b5c786.png', '2019-11-15 10:03:44', '1', '', '    18501143866');
INSERT INTO `sp_users` VALUES ('2', '采购专员2', 'test4@qq.com', null, '$2y$10$oTPkMarBLf81rggDre0pE.R2gsQWyU0zIj92JTzYGjPC.iEKYviw.', '4', 'y095m6Z0JOuchRM1E46AU3qXykve1GRLkrdWI8qps6MjDAzJkbK92McnOTeo', '2019-07-22 11:05:53', null, '2019-11-06 15:50:31', '1', '', '');
INSERT INTO `sp_users` VALUES ('3', '建筑设计师2', 'test2@qq.com', null, '$2y$10$aKSLnSHm5wcw886HooDdmuXMkjjpw7WwZVR4pKzcZnLnFxzuU5nge', '6', null, '2019-07-22 10:59:51', null, '2019-11-06 15:40:50', '1', '', '');
INSERT INTO `sp_users` VALUES ('4', '建筑设计师1', 'test1@qq.com', null, '$2y$10$d.GnIWS4eZ/vaSwHeKM8ReUwxUkUp6dULcAFtkBPWdeFM2HsrhXDK', '6', '2qGuCWul8d3fSU5qboEZq31Wq3LZdNiSuYSSbnj1E0EgIt053VCm6F7GIflR', '2019-07-22 11:07:09', null, '2019-11-06 15:40:51', '1', '', '');
INSERT INTO `sp_users` VALUES ('5', '设计总监', 'test3@qq.com', null, '$2y$10$rP2v69M86nhP6iu3e5O3a.g6INplFnfw0y4wRVaCiIotQM4IqZRpu', '6', null, '2019-07-22 11:05:03', null, '2019-11-06 15:40:48', '1', '', '');
INSERT INTO `sp_users` VALUES ('6', '王括', 'everup@163.com', null, '$2y$10$4ln/6wTn65YCk40M5azi5enoxwL2F1oh179Joi7WDhL23BqPDECPi', '4', 'oFXDP2WP55mexNXMy64RaUJyoDuEv8etz6HcW23LqXJz8oUUcIz5cQJWyRaj', '2019-09-02 10:56:46', null, '2019-12-26 10:50:04', '1', null, null);
INSERT INTO `sp_users` VALUES ('7', '销售总监', 'test5@qq.com', null, '$2y$10$GDj6tdpsmW8rvD0bhi61F.4W5u75CUgl.l/YrVTlIRe3HUxoT.E9e', '2', 'diX9V5w5sZJ8COB9Ib9B1U1QxFKoud6c6D4VqzHbTpoPSOHqoXNUCbaKfI4x', '2019-09-02 10:57:46', null, '2019-11-07 16:02:28', '1', '', '');
INSERT INTO `sp_users` VALUES ('8', '预算专员2', 'test6@qq.com', null, '$2y$10$jETr86w49EhZGsAMwAkleeomZY3BZln3Gi5N4y2saqNq2R7KktTHS', '3', 'vIgfFv85klz0eA5g0hTYqVPUi0B7URgf406wiLCcFAoklmoPR9NWg46pDZ3e', '2019-07-22 11:08:21', null, '2019-11-06 15:40:54', '1', '', '');
INSERT INTO `sp_users` VALUES ('9', '预算经理', 'test7@qq.com', null, '$2y$10$Vt7XualSar7inVPa/L0KAO3QniMm2pZr76U5jaXixhcqPLEGNggRK', '3', null, '2019-07-22 11:08:56', null, '2019-11-06 15:40:55', '1', '', '');
INSERT INTO `sp_users` VALUES ('10', '工程部经理', 'test8@qq.com', null, '$2y$10$Kztt9fauNc5vA4jcI48ohOzdNtDKn2CtaK8yWuDZncAkJYAN1z8tm', '5', null, '2019-07-22 11:09:22', null, '2019-11-06 15:40:56', '1', '', '');
INSERT INTO `sp_users` VALUES ('11', '销售经理2', 'test9@qq.com', null, '$2y$10$4ln/6wTn65YCk40M5azi5enoxwL2F1oh179Joi7WDhL23BqPDECPi', '2', null, '2019-07-22 11:09:54', null, '2019-11-06 15:50:29', '1', '', '');
INSERT INTO `sp_users` VALUES ('12', '销售经理1', 'test10@qq.com', null, '$2y$10$hc7cNJhcXocWuDVAH2bulej1e25Z4iMWBVEpEwp/F4xmhAqm07252', '2', null, '2019-07-22 11:10:42', null, '2019-11-06 15:40:58', '1', '', '');
INSERT INTO `sp_users` VALUES ('13', '预算专员 1', 'test11@qq.com', null, '$2y$10$1VSCKro0bW4652VedicnQO8GRTRNDbWwUVZF4/PNmxbhEBXxbNP2C', '3', null, '2019-07-22 11:11:42', null, '2019-11-06 15:41:00', '1', '', '');
INSERT INTO `sp_users` VALUES ('14', '采购专员1', '497686205@qq.com', null, '$2y$10$23w8iI0kX4QmMIUucTxOOulmVWUr/Euq8RdCHbfYfRG.YBVaHb71m', '4', null, '2019-08-02 16:37:05', null, '2019-11-06 15:41:01', '1', '', '');
INSERT INTO `sp_users` VALUES ('15', '合约经理', 'test14@163.com', null, '$2y$10$9tZ9mrm/TBOge6rFf7D8G.YDODsoY7.LWZFOE4REdo2jKsc/VZgyG', '8', null, '2019-09-02 11:52:55', null, '2019-11-06 15:53:39', '1', '合约经理 ', '');
INSERT INTO `sp_users` VALUES ('16', '项目经理1', 'test12@136.co', null, '$2y$10$zL4ltraGEDlW4a8KNHow3.pG5o4g8V5S6pcK4slOkwmdpOefbs9yq', '5', null, '2019-11-06 15:43:23', null, '2019-11-06 15:47:10', '1', '', '13511111111');
INSERT INTO `sp_users` VALUES ('17', '项目经理2', 'test13@qq.com', null, '$2y$10$R2u.kl54GYwg3LxI3T9jcO/8qMHP5I091n4k53JoqmgBu/tl45jYa', '5', null, '2019-11-06 15:44:45', null, '2019-11-06 15:47:16', '1', '', '');
