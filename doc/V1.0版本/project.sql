/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : project

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2021-06-18 11:21:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `user_agent` varchar(2550) DEFAULT NULL,
  `payload` text,
  `last_activity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sessions
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_architectural_sub_system
-- ----------------------------
INSERT INTO `sp_architectural_sub_system` VALUES ('2', '6', '基础系统（混凝土条形基础）', '1001-01', 'GK-JC-01', '1', '10', '超级管理员', '1', '2019-07-13', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('3', '6', '基础系统（混凝土构造柱圈梁）', '1001-02', 'GK-JC-02', '1', '10', '超级管理员', '1', '2019-07-13', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('4', '6', '基础系统（混凝土筏板基础）', '1001-03', 'GK-JC-03', '1', '10', '超级管理员', '1', '2019-07-13', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('5', '7', '薄壁轻钢结构系统（镀铝锌G550 55%  AZ150）（90墙龙骨体系）', '1002-01', 'GK-ZT-01', '1', '7', '超级管理员', '1', '2019-07-13', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('6', '8', '外墙系统（8厚外挂板)（30XPS/75BLM/10GSG/12SGB）', '1003-01', 'GK-WQ-01', '1', '28', '超级管理员', '1', '2019-07-14', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('7', '8', '外墙系统（8厚外挂板）(50XPS/75BLM/10GSG/12SGB）', '1003-02', 'GK-WQ-02', '1', '27', '超级管理员', '1', '2019-07-14', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('8', '6', '基础系统（混凝土框架架空基础）', '1001-04', ' GK-JC-04', '1', '10', '超级管理员', '1', '2019-07-14', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('9', '7', '薄壁轻钢结构系统（镀锌G550  Z185）（90墙龙骨体系）', '1002-03', 'GK-ZT-03', '1', '7', '超级管理员', '1', '2019-07-14', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('10', '9', '内墙系统（2*12SGB/75BLM）(90墙龙骨体系）', '1004-01', 'GK-NQ-01', '1', '5', '超级管理员', '1', '2019-07-14', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('11', '9', '内墙系统（3*12SGB/75BLM）(90墙龙骨体系）', '1004-03', 'GK-NQ-03', '1', '5', '超级管理员', '1', '2019-07-14', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('12', '10', '屋面系统（单层沥青瓦/吊顶保温)', '1005-01', 'GK-WM-01', '1', '5', '超级管理员', '1', '2019-07-14', '2020-02-21', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('13', '11', '檐口系统（无组织排水）', '1006-01', 'GK-YK-01', '1', '5', '超级管理员', '1', '2019-07-14', '2019-09-05', '1', '超级管理员');
INSERT INTO `sp_architectural_sub_system` VALUES ('14', '12', '楼板系统（室内无防水楼面）', '1007-01', 'GK-LM-01', '1', '1', '超级管理员', '1', '2019-07-14', '2019-09-05', '1', '超级管理员');
INSERT INTO `sp_architectural_sub_system` VALUES ('15', '13', '吊顶系统（轻钢龙骨/普通石膏板）', '1008-01', 'GK-DD-01', '1', '6', '超级管理员', '1', '2019-07-14', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('16', '8', '外墙系统（8厚外挂板）(60XPS/75BLM10GSG/12SGB）', '1003-04', 'GK-WQ-03', '1', '12', '超级管理员', '1', '2019-07-20', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('17', '8', '外墙系统（8厚外挂板）(80XPS/75BLM/10GSG/12SGB）', '1003-05', 'GK-WQ-04', '1', '12', '超级管理员', '1', '2019-07-20', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('18', '19', '子系统名', '子系统编码', '工况', '1', '0', '超级管理员', '1', '2019-07-20', '2019-10-16', '1', '超级管理员');
INSERT INTO `sp_architectural_sub_system` VALUES ('19', '19', '子系统2', '编码2', 'diam', '1', '0', '超级管理员', '1', '2019-07-20', '2019-10-16', '1', '超级管理员');
INSERT INTO `sp_architectural_sub_system` VALUES ('20', '9', '内墙系统（10GSG+12SGB/75BLM）(90墙龙骨体系）', '1004-05', 'GK-NQ-05', '1', '6', '超级管理员', '1', '2019-07-28', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('21', '20', '子系统', '编码', '公开啊啊啊', '0', '0', '超级管理员', '1', '2019-08-02', '2019-10-16', '1', '超级管理员');
INSERT INTO `sp_architectural_sub_system` VALUES ('22', '10', '屋面系统（双层沥青瓦/吊顶保温）', '1005-05', 'GK-WM-05', '1', '5', '超级管理员', '1', '2019-08-12', '2020-02-21', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('23', '7', '薄壁轻钢结构系统（镀锌G550  Z275）（90墙龙骨体系）', '1002-05', 'GK-ZT-05', '1', '7', '超级管理员', '1', '2019-09-05', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('24', '7', '钢框架结构系统（钢框架+薄壁轻钢复合）（90墙龙骨体系）', '1002-07', 'GK-ZT-07', '1', '7', '超级管理员', '1', '2019-09-05', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('25', '6', '基础系统（钢框架架空基础）', '1001-05', ' GK-JC-05', '1', '0', '超级管理员', '1', '2019-09-05', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('26', '9', '内墙系统（15GSG+12SGB/75BLM）(90墙龙骨体系）', '1004-07', 'GK-NQ-07', '1', '6', '超级管理员', '1', '2019-09-05', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('27', '10', '屋面系统（水泥瓦+屋面外保温50XPS）', '1005-30', 'GK-WM-30', '1', '7', '超级管理员', '1', '2019-09-05', '2020-02-21', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('28', '10', '屋面系统（筒瓦+屋面外保温50XPS）', '1005-40', 'GK-WM-40', '1', '7', '超级管理员', '1', '2019-09-05', '2020-02-21', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('29', '11', '檐口系统（PVC落水系统）', '1006-02', 'GK-YK-02', '1', '6', '超级管理员', '1', '2019-09-05', '2019-09-05', '1', '超级管理员');
INSERT INTO `sp_architectural_sub_system` VALUES ('30', '11', '檐口系统（彩铝落水系统）', '1006-03', 'GK-YK-03', '1', '6', '超级管理员', '1', '2019-09-05', '2019-09-05', '1', '超级管理员');
INSERT INTO `sp_architectural_sub_system` VALUES ('31', '11', '檐口系统（仿铜彩铝落水系统）', '1006-04', 'GK-YK-04', '1', '6', '超级管理员', '1', '2019-09-05', '2019-09-05', '1', '超级管理员');
INSERT INTO `sp_architectural_sub_system` VALUES ('32', '12', '楼板系统（室内有防水楼面）', '1007-02', 'GK-LM-02', '1', '2', '超级管理员', '1', '2019-09-05', '2019-09-05', '1', '超级管理员');
INSERT INTO `sp_architectural_sub_system` VALUES ('33', '12', '楼板系统（室外有防水楼面）', '1007-03', 'GK-LM-03', '1', '6', '超级管理员', '1', '2019-09-05', '2019-09-05', '1', '超级管理员');
INSERT INTO `sp_architectural_sub_system` VALUES ('34', '13', '吊顶系统（木龙骨/普通石膏板）', '1008-05', 'GK-DD-05', '1', '7', '超级管理员', '1', '2019-09-05', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('35', '13', '吊顶系统（轻钢龙骨+铝扣板）', '1008-07', 'GK-DD-07', '1', '6', '超级管理员', '1', '2019-09-05', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('36', '14', '外窗系统（塑钢双玻窗）', '1009-01', 'GK-C-01', '1', '1', '超级管理员', '1', '2019-09-05', '2019-09-05', '1', '超级管理员');
INSERT INTO `sp_architectural_sub_system` VALUES ('37', '14', '外窗系统（铝合金单玻窗）', '1009-02', 'GK-C-02', '1', '0', '超级管理员', '1', '2019-09-05', '2019-09-05', '1', '超级管理员');
INSERT INTO `sp_architectural_sub_system` VALUES ('38', '14', '外窗系统（双玻断桥铝 60系列+普通玻璃）', '1009-03', 'GK-C-03', '1', '1', '超级管理员', '1', '2019-09-05', '2019-09-05', '1', '超级管理员');
INSERT INTO `sp_architectural_sub_system` VALUES ('39', '14', '外窗系统（双玻断桥铝 60系列+钢化玻璃）', '1009-04', 'GK-C-04', '1', '1', '超级管理员', '1', '2019-09-05', '2019-09-05', '1', '超级管理员');
INSERT INTO `sp_architectural_sub_system` VALUES ('40', '14', '外窗系统（双玻断桥铝 70系列+钢化玻璃）', '1009-05', 'GK-C-05', '1', '1', '超级管理员', '1', '2019-09-05', '2019-09-05', '1', '超级管理员');
INSERT INTO `sp_architectural_sub_system` VALUES ('41', '14', '外窗系统（双玻断桥铝 70系列+钢化玻璃+LOW-E）', '1009-06', 'GK-C-06', '1', '1', '超级管理员', '1', '2019-09-05', '2019-09-05', '1', '超级管理员');
INSERT INTO `sp_architectural_sub_system` VALUES ('42', '14', '外窗系统（三玻断桥铝 70系列+钢化玻璃）', '1009-07', 'GK-C-07', '1', '1', '超级管理员', '1', '2019-09-05', '2019-09-05', '1', '超级管理员');
INSERT INTO `sp_architectural_sub_system` VALUES ('43', '15', '外门系统（塑钢双玻门）', '1010-01', 'GK-M-01', '1', '1', '超级管理员', '1', '2019-09-05', '2020-01-29', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('44', '15', '外门系统（双玻断桥铝 60系列+钢化玻璃）', '1010-02', 'GK-M-02', '1', '1', '超级管理员', '1', '2019-09-05', '2020-01-29', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('45', '15', '外门系统（双玻断桥铝 70系列+钢化玻璃）', '1010-03', 'GK-M-03', '1', '1', '超级管理员', '1', '2019-09-05', '2020-01-29', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('46', '16', '细部装饰系统（铝合金构件）', '1011-01', 'GK-ZS-01', '1', '3', '超级管理员', '1', '2019-09-05', '2020-02-24', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('47', '16', '细部装饰系统（GRC构件）', '1011-07', 'GK-ZS-07', '1', '1', '超级管理员', '1', '2019-09-05', '2020-02-24', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('48', '17', '给排水系统（同层排水）', '1012-01', 'GK-GP-01', '1', '0', '超级管理员', '1', '2019-09-05', '2019-09-05', '1', '超级管理员');
INSERT INTO `sp_architectural_sub_system` VALUES ('49', '17', '给排水系统（隔层排水）', '1012-02', 'GK-GP-02', '1', '0', '超级管理员', '1', '2019-09-05', '2019-09-05', '1', '超级管理员');
INSERT INTO `sp_architectural_sub_system` VALUES ('50', '18', '电气系统(强电）（PVC电管/BV电线/配电箱）', '1013-01', 'GK-DQ-01', '1', '3', '超级管理员', '1', '2019-09-05', '2020-02-24', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('51', '18', '电气系统（强电）（JDG电管/BV电线/配电箱）', '1013-02', 'GK-DQ-02', '1', '3', '超级管理员', '1', '2019-09-05', '2020-02-24', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('52', '10', '屋面系统（单层沥青瓦+屋面外保温50XPS）', '1005-09', 'GK-WM-03', '1', '7', '超级管理员', '1', '2019-09-18', '2020-02-21', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('53', '10', '屋面系统（双层沥青瓦+屋面外保温50XPS）', '1005-20', 'GK-WM-20', '1', '7', '超级管理员', '1', '2019-09-18', '2020-02-21', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('54', '8', '外墙系统（8厚外挂板）(100XPS/75BLM/10GSG/12SGB）', '1003-06', 'GK-WQ-05', '1', '3', '超管', '1', '2020-01-22', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('55', '8', '外墙系统（8厚外挂板)（30YM/75BLM/10GSG/12SGB）', '1003-10', 'GK-WQ-10', '1', '12', '超管', '1', '2020-01-22', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('56', '8', '外墙系统（8厚外挂板)（50YM/75BLM/10GSG/12SGB）', '1003-11', 'GK-WQ-11', '1', '12', '超管', '1', '2020-01-22', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('57', '8', '外墙系统（8厚外挂板)（80YM/75BLM/10GSG/12SGB）', '1003-13', 'GK-WQ-13', '1', '12', '超管', '1', '2020-01-22', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('58', '8', '外墙系统（16厚外挂板)（30XPS/75BLM/10GSG/12SGB）', '1003-20', 'GK-WQ-20', '1', '28', '超管', '1', '2020-01-28', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('59', '8', '外墙系统（16厚外挂板）(50XPS/75BLM/10GSG/12SGB）', '1003-22', 'GK-WQ-22', '1', '28', '超管', '1', '2020-01-28', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('60', '8', '外墙系统（16厚外挂板）(60XPS/75BLM/10GSG/12SGB）', '1003-23', 'GK-WQ-23', '1', '26', '超管', '1', '2020-01-28', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('61', '8', '外墙系统（16厚外挂板）(80XPS/75BLM/10GSG/12SGB）', '1003-24', 'GK-WQ-24', '1', '28', '超管', '1', '2020-01-28', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('62', '8', '外墙系统（16厚外挂板)（30YM/75BLM/10GSG/12SGB）', '1003-26', 'GK-WQ-26', '1', '29', '超管', '1', '2020-01-28', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('63', '8', '外墙系统（16厚外挂板)（50YM/75BLM/10GSG/12SGB）', '1003-27', 'GK-WQ-27', '1', '29', '超管', '1', '2020-01-28', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('64', '8', '外墙系统（16厚外挂板)（80YM/75BLM/10GSG/12SGB）', '1003-29', 'GK-WQ-29', '1', '29', '超管', '1', '2020-01-28', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('65', '8', '外墙系统（文化石)（30XPS/75BLM/10GSG/12SGB）', '1003-35', 'GK-WQ-35', '1', '26', '超管', '1', '2020-01-28', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('66', '8', '外墙系统（文化石)（50XPS/75BLM/10GSG/12SGB）', '1003-36', 'GK-WQ-36', '1', '26', '超管', '1', '2020-01-28', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('67', '8', '外墙系统（文化石)（60XPS/75BLM/10GSG/12SGB）', '1003-38', 'GK-WQ-38', '1', '26', '超管', '1', '2020-01-28', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('68', '8', '外墙系统（文化石)（80XPS/75BLM/10GSG/12SGB）', '1003-39', 'GK-WQ-39', '1', '26', '超管', '1', '2020-01-28', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('69', '8', '外墙系统（文化石)（30YM/75BLM/10GSG/12SGB）', '1003-41', 'GK-WQ-41', '1', '27', '超管', '1', '2020-01-28', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('70', '8', '外墙系统（文化石)（50YM/75BLM/10GSG/12SGB）', '1003-42', 'GK-WQ-42', '1', '27', '超管', '1', '2020-01-28', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('71', '8', '外墙系统（文化石)（80YM/75BLM/10GSG/12SGB）', '1003-44', 'GK-WQ-44', '1', '28', '超管', '1', '2020-01-28', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('72', '9', '内墙系统(15GSG+15FH.SGB/75BLM）(90墙龙骨体系）', '1004-09', 'GK-NQ-09', '1', '6', '超管', '1', '2020-01-29', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('73', '9', '内墙系统(10GSG/75BLM）(90墙龙骨体系）', '1004-11', 'GK-NQ-11', '1', '6', '超管', '1', '2020-01-29', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('74', '9', '内墙系统（12GSG/75BLM）(90墙龙骨体系）', '1004-13', 'GK-NQ-13', '1', '6', '超管', '1', '2020-01-29', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('75', '9', '内墙系统（15GSG/75BLM）(90墙龙骨体系）', '1004-15', 'GK-NQ-15', '1', '6', '超管', '1', '2020-01-29', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('76', '15', '外门系统（钢制仿铜门）', '1003-06', 'GK-M-06', '1', '1', '超管', '1', '2020-01-29', '2020-01-29', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('77', '15', '外门系统（钢制防盗门）', '1003-07', 'GK-M-07', '1', '1', '超管', '1', '2020-01-29', '2020-01-29', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('78', '15', '外门系统（电动卷帘门）', '1003-09', 'GK-M-09', '1', '1', '超管', '1', '2020-01-29', '2020-01-29', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('79', '16', '细部装饰系统（聚苯构件）', '1011-09', 'GK-ZS-09', '1', '2', '超管', '1', '2020-01-29', '2020-02-24', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('80', '16', '细部装饰系统（铁艺构件）', '1011-11', 'GK-ZS-11', '1', '1', '超管', '1', '2020-01-29', '2020-02-24', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('81', '9', '内墙系统（2*12SGB/60YM）(90墙龙骨体系）', '1004-17', 'GK-NQ-17', '1', '5', '超管', '1', '2020-02-20', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('82', '9', '内墙系统（3*12SGB/60YM）(90墙龙骨体系）', '1004-19', 'GK-NQ-19', '1', '5', '超管', '1', '2020-02-20', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('83', '9', '内墙系统（10GSG+12SGB/60YM）(90墙龙骨体系）', '1004-21', 'GK-NQ-21', '1', '6', '超管', '1', '2020-02-20', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('84', '9', '内墙系统（15GSG+12SGB/60YM）(90墙龙骨体系）', '1004-23', 'GK-NQ-23', '1', '6', '超管', '1', '2020-02-20', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('85', '9', '内墙系统(15GSG+15FH.SGB/60YM）(90墙龙骨体系）', '1004-25', 'GK-NQ-25', '1', '6', '超管', '1', '2020-02-20', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('86', '9', '内墙系统(10GSG/60YM）(90墙龙骨体系）', '1004-27', 'GK-NQ-27', '1', '6', '超管', '1', '2020-02-20', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('87', '9', '内墙系统（12GSG/60YM）(90墙龙骨体系）', '1004-29', 'GK-NQ-29', '1', '6', '超管', '1', '2020-02-20', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('88', '9', '内墙系统（15GSG/60YM）(90墙龙骨体系）', '1004-31', 'GK-NQ-31', '1', '6', '超管', '1', '2020-02-20', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('89', '10', '屋面系统（单层沥青瓦+吊顶保温3*75BLM)', '1005-03', 'GK-WM-03', '0', '0', '超管', '1', '2020-02-20', '2020-02-21', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('90', '10', '屋面系统（双层沥青瓦+吊顶保温3*75BLM）', '1005-07', 'GK-WM-07', '0', '0', '超管', '1', '2020-02-20', '2020-02-21', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('91', '10', '屋面系统（单层沥青瓦+屋面外保温60XPS）', '1005-10', 'GK-WM-10', '1', '7', '超管', '1', '2020-02-20', '2020-02-21', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('92', '10', '屋面系统（单层沥青瓦+屋面外保温80XPS）', '1005-12', 'GK-WM-12', '1', '7', '超管', '1', '2020-02-20', '2020-02-21', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('93', '10', '屋面系统（双层沥青瓦+屋面外保温60XPS）', '1005-22', 'GK-WM-22', '1', '7', '超管', '1', '2020-02-20', '2020-02-21', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('94', '10', '屋面系统（双层沥青瓦+屋面外保温80XPS）', '1005-24', 'GK-WM-24', '1', '7', '超管', '1', '2020-02-20', '2020-02-21', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('95', '10', '屋面系统（单层沥青瓦+屋面外保温50YM）', '1005-15', 'GK-WM-15', '1', '7', '超管', '1', '2020-02-20', '2020-02-21', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('96', '10', '屋面系统（单层沥青瓦+屋面外保温80YM）', '1005-18', 'GK-WM-18', '1', '7', '超管', '1', '2020-02-20', '2020-02-21', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('97', '10', '屋面系统（双层沥青瓦+屋面外保温50YM）', '1005-26', 'GK-WM-22', '1', '7', '超管', '1', '2020-02-20', '2020-02-21', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('98', '10', '屋面系统（双层沥青瓦+屋面外保温80YM）', '1005-28', 'GK-WM-28', '1', '7', '超管', '1', '2020-02-20', '2020-02-21', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('99', '10', '屋面系统（水泥瓦+屋面外保温60XPS）', '1005-31', 'GK-WM-31', '1', '7', '超管', '1', '2020-02-20', '2020-02-21', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('100', '10', '屋面系统（水泥瓦+屋面外保温80XPS）', '1005-32', 'GK-WM-32', '1', '7', '超管', '1', '2020-02-20', '2020-02-21', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('101', '10', '屋面系统（水泥瓦+屋面外保温50YM）', '1005-35', 'GK-WM-35', '1', '7', '超管', '1', '2020-02-20', '2020-02-21', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('102', '10', '屋面系统（水泥瓦+屋面外保温80YM）', '1005-37', 'GK-WM-37', '1', '7', '超管', '1', '2020-02-20', '2020-02-21', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('103', '10', '屋面系统（筒瓦+屋面外保温60XPS）', '1005-42', 'GK-WM-42', '1', '7', '超管', '1', '2020-02-20', '2020-02-21', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('104', '10', '屋面系统（筒瓦+屋面外保温80XPS）', '1005-44', 'GK-WM-44', '1', '7', '超管', '1', '2020-02-20', '2020-02-21', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('105', '10', '屋面系统（筒瓦+屋面外保温50YM）', '1005-46', '1005-46', '1', '7', '超管', '1', '2020-02-20', '2020-02-21', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('106', '10', '屋面系统（筒瓦+屋面外保温80YM）', '1005-48', '1005-48', '1', '7', '超管', '1', '2020-02-20', '2020-02-21', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('107', '16', '细部装饰系统（门窗口扣板）', '1011-03', 'GK-ZS-03', '1', '1', '超管', '1', '2020-02-20', '2020-02-24', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('108', '7', '薄壁轻钢结构系统（镀铝锌G550 55%  AZ150）（140墙龙骨体系）', '1002-09', 'GK-ZT-09', '1', '7', '超管', '1', '2020-02-23', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('109', '7', '薄壁轻钢结构系统（镀锌G550  Z185）（140墙龙骨体系）', '1002-11', 'GK-ZT-11', '1', '14', '超管', '1', '2020-02-23', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('110', '7', '薄壁轻钢结构系统（镀锌G550  Z275）（140墙龙骨体系）', '1002-13', 'GK-ZT-13', '1', '7', '超管', '1', '2020-02-23', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('111', '7', '钢框架结构系统（钢框架+薄壁轻钢复合）（140墙龙骨体系）', '1002-15', 'GK-ZT-15', '1', '7', '超管', '1', '2020-02-23', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('112', '9', '内墙系统（2*12SGB/150BLM）(140墙龙骨体系）', '1004-33', 'GK-NQ-33', '1', '0', '超管', '1', '2020-02-23', '2020-02-23', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('113', '9', '内墙系统（3*12SGB/150BLM）(140墙龙骨体系）', '1004-35', 'GK-NQ-35', '1', '0', '超管', '1', '2020-02-23', '2020-02-23', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('114', '9', '内墙系统（10GSG+12SGB/150BLM）(140墙龙骨体系）', '1004-37', 'GK-NQ-37', '1', '0', '超管', '1', '2020-02-23', '2020-02-23', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('115', '9', '内墙系统（15GSG+12SGB/150BLM）(140墙龙骨体系）', '1004-39', 'GK-NQ-39', '1', '0', '超管', '1', '2020-02-23', '2020-02-23', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('116', '9', '内墙系统(15GSG+15FH.SGB/150BLM）(140墙龙骨体系）', '1004-41', 'GK-NQ-41', '1', '0', '超管', '1', '2020-02-23', '2020-02-23', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('117', '9', '内墙系统(10GSG/150BLM）(140墙龙骨体系）', '1004-43', 'GK-NQ-43', '1', '0', '超管', '1', '2020-02-23', '2020-02-23', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('118', '9', '内墙系统（12GSG/150BLM）(140墙龙骨体系）', '1004-45', 'GK-NQ-45', '1', '0', '超管', '1', '2020-02-23', '2020-02-23', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('119', '9', '内墙系统（15GSG/150BLM）(140墙龙骨体系）', '1004-47', 'GK-NQ-47', '1', '0', '超管', '1', '2020-02-23', '2020-02-23', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('120', '9', '内墙系统（2*12SGB/100YM）(140墙龙骨体系）', '1004-49', 'GK-NQ-49', '1', '0', '超管', '1', '2020-02-23', '2020-02-23', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('121', '9', '内墙系统（3*12SGB/100YM）(140墙龙骨体系）', '1004-51', 'GK-NQ-51', '1', '0', '超管', '1', '2020-02-23', '2020-02-23', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('122', '9', '内墙系统（10GSG+12SGB/100YM）(140墙龙骨体系）', '1004-53', 'GK-NQ-53', '1', '0', '超管', '1', '2020-02-23', '2020-02-23', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('123', '9', '内墙系统（15GSG+12SGB/100YM）(140墙龙骨体系）', '1004-55', 'GK-NQ-55', '1', '0', '超管', '1', '2020-02-23', '2020-02-23', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('124', '9', '内墙系统(15GSG+15FH.SGB/100YM）(140墙龙骨体系）', '1004-57', 'GK-NQ-57', '1', '0', '超管', '1', '2020-02-23', '2020-02-23', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('125', '9', '内墙系统(10GSG/100YM）(140墙龙骨体系）', '1004-59', 'GK-NQ-59', '1', '0', '超管', '1', '2020-02-23', '2020-02-23', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('126', '9', '内墙系统（12GSG/100YM）(140墙龙骨体系）', '1004-61', 'GK-NQ-61', '1', '0', '超管', '1', '2020-02-23', '2020-02-23', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('127', '9', '内墙系统（15GSG/100YM）(140墙龙骨体系）', '1004-63', 'GK-NQ-63', '1', '0', '超管', '1', '2020-02-23', '2020-02-23', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('128', '13', '吊顶系统（轻钢龙骨/防水石膏板）', '1008-02', 'GK-DD-02', '1', '6', '超管', '1', '2020-02-23', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('129', '13', '吊顶系统（轻钢龙骨/防火石膏板）', '1008-03', 'GK-DD-03', '1', '6', '超管', '1', '2020-02-23', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('130', '13', '吊顶系统（木龙骨/防水石膏板）', '1008-06', 'GK-DD-06', '1', '7', '超管', '1', '2020-02-23', '2020-02-23', '1', '超管');
INSERT INTO `sp_architectural_sub_system` VALUES ('131', '16', '细部装饰系统（不锈钢构件）', '1011-05', 'GK-ZS-05', '1', '1', '超管', '1', '2020-02-24', '2020-02-24', null, null);
INSERT INTO `sp_architectural_sub_system` VALUES ('132', '18', '电气系统(弱电）（电话/网络/电视）', '1013-03', 'GK-DQ-03', '1', '0', '超管', '1', '2020-02-24', '2020-02-24', null, null);

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
INSERT INTO `sp_architectural_system` VALUES ('6', '基础系统', '基础工程', '1001', '1', '1', '2019-07-14', '2020-02-23', '超级管理员', '1', '超管');
INSERT INTO `sp_architectural_system` VALUES ('7', '主体结构系统', '主体结构工程', '1002', '1', '1', '2019-07-14', '2020-02-23', '超级管理员', '1', '超管');
INSERT INTO `sp_architectural_system` VALUES ('8', '外墙系统', '外墙工程', '1003', '1', '1', '2019-07-14', '2020-02-23', '超级管理员', '1', '超管');
INSERT INTO `sp_architectural_system` VALUES ('9', '内墙系统', '内墙工程', '1004', '1', '1', '2019-07-14', '2020-02-23', '超级管理员', '1', '超管');
INSERT INTO `sp_architectural_system` VALUES ('10', '屋面系统', '屋面工程', '1005', '1', '1', '2019-07-14', '2020-02-21', '超级管理员', '1', '超管');
INSERT INTO `sp_architectural_system` VALUES ('11', '檐口系统', '檐口工程', '1006', '1', '1', '2019-07-14', '2019-09-05', '超级管理员', '1', '超级管理员');
INSERT INTO `sp_architectural_system` VALUES ('12', '楼板系统', '楼板工程', '1007', '1', '1', '2019-07-14', '2019-09-05', '超级管理员', '1', '超级管理员');
INSERT INTO `sp_architectural_system` VALUES ('13', '吊顶系统', '吊顶工程', '1008', '1', '1', '2019-07-14', '2020-02-23', '超级管理员', '1', '超管');
INSERT INTO `sp_architectural_system` VALUES ('14', '外窗系统', '外窗工程', '1009', '1', '1', '2019-07-14', '2019-09-05', '超级管理员', '1', '超级管理员');
INSERT INTO `sp_architectural_system` VALUES ('15', '外门系统', '外门工程', '1010', '1', '1', '2019-07-14', '2020-01-29', '超级管理员', '1', '超管');
INSERT INTO `sp_architectural_system` VALUES ('16', '细部装饰系统', '细部装饰工程', '1011', '1', '1', '2019-07-14', '2020-02-24', '超级管理员', '1', '超管');
INSERT INTO `sp_architectural_system` VALUES ('17', '给排水系统', '给排水工程', '1012', '1', '1', '2019-07-14', '2019-09-05', '超级管理员', '1', '超级管理员');
INSERT INTO `sp_architectural_system` VALUES ('18', '电气系统', '电气工程', '1013', '1', '1', '2019-07-14', '2020-02-24', '超级管理员', '1', '超管');
INSERT INTO `sp_architectural_system` VALUES ('19', '系统测试', '工程', '1014', '0', '1', '2019-07-20', '2019-10-16', '超级管理员', '1', '超级管理员');
INSERT INTO `sp_architectural_system` VALUES ('20', '系统测试2', '工程 ', '编码', '0', '1', '2019-08-02', '2019-10-16', '超级管理员', '1', '超级管理员');

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_brand
-- ----------------------------
INSERT INTO `sp_brand` VALUES ('1', '美德宝', 'http://www.zhudebao.cn/img/brand_logo/e8cb16ee5d7f486361912a47a0d0d206.png', '1', '超级管理员', '1', '2019-07-23', '超管', '1', '2020-03-12');
INSERT INTO `sp_brand` VALUES ('2', '东方雨虹', '/img/brand_logo/42365be229a40fc993edcef75d418270.png', '1', '超级管理员', '1', '2019-07-23', '超级管理员', '1', '2019-10-08');
INSERT INTO `sp_brand` VALUES ('3', '英红', '/img/brand_logo/73c07700160ccf6836da50988965fe53.png', '1', '超级管理员', '1', '2019-07-23', '超级管理员', '1', '2019-10-08');
INSERT INTO `sp_brand` VALUES ('4', '北鹏', 'http://www.zhudebao.cn/img/brand_logo/59e82ecb5b340ce5259f886f17cba4a8.png', '1', '超级管理员', '1', '2019-07-25', '超管', '1', '2020-03-12');
INSERT INTO `sp_brand` VALUES ('5', '宝源', '/img/brand_logo/d2f21aaff1017e4c1909fa3511769ab7.png', '1', '超级管理员', '1', '2019-07-28', '超级管理员', '1', '2019-10-08');
INSERT INTO `sp_brand` VALUES ('6', '日吉华', '/img/brand_logo/4096948a57bb555c4221a75a9b250fdd.png', '1', '超级管理员', '1', '2019-07-28', '超级管理员', '1', '2019-10-08');
INSERT INTO `sp_brand` VALUES ('7', '龙牌', '/img/brand_logo/b052acd52b94f48184e9f44599d52bab.png', '1', '超级管理员', '1', '2019-07-28', '超级管理员', '1', '2019-10-08');
INSERT INTO `sp_brand` VALUES ('8', '晋亿', 'http://www.zhudebao.cn/img/brand_logo/88bad4aefbe23431f86a32a331abf5ec.png', '1', '超级管理员', '1', '2019-10-08', '超管', '1', '2020-03-12');
INSERT INTO `sp_brand` VALUES ('9', '钢之杰', 'http://www.zhudebao.cn/img/brand_logo/89da832ec7a0070f71f3327c9e81cd8a.png', '1', '超级管理员', '1', '2019-10-08', '超管', '1', '2020-03-13');
INSERT INTO `sp_brand` VALUES ('10', '艾特尼特（赛迪）', 'http://www.zhudebao.cn/img/brand_logo/8baf5774e8069f1c992db9c9ea64f1dc.png', '1', '超级管理员', '1', '2019-10-08', '超管', '1', '2020-03-13');
INSERT INTO `sp_brand` VALUES ('11', '金特', '/img/brand_logo/172700a250ed1589dbda8686c02d05d0.png', '1', '超级管理员', '1', '2019-10-08', '超级管理员', '1', '2019-10-08');
INSERT INTO `sp_brand` VALUES ('12', '优筑美邦', '/img/brand_logo/7e5266d18928a245bae86b29efd9aa95.png', '1', '超级管理员', '1', '2019-10-08', '超级管理员', '1', '2019-10-13');
INSERT INTO `sp_brand` VALUES ('13', '科宁', '/img/brand_logo/3aad51e7ba3bf472b80fecd0cfb2230e.png', '1', '超级管理员', '1', '2019-10-08', '超级管理员', '1', null);
INSERT INTO `sp_brand` VALUES ('14', '欧文斯科宁', '/img/brand_logo/b5f439893eb6b1310872f25c6c49e91c.png', '1', '超级管理员', '1', '2019-10-08', '超级管理员', '1', null);
INSERT INTO `sp_brand` VALUES ('15', '禹红', 'http://www.zhudebao.cn/img/brand_logo/8079fe220fcbae6875109f07e6e0eeb2.png', '1', '超级管理员', '1', '2019-10-08', '超管', '1', '2020-03-12');
INSERT INTO `sp_brand` VALUES ('16', '立邦', 'http://www.zhudebao.cn/img/brand_logo/44a3520707993ac2af1736a48839d1a1.png', '1', '超级管理员', '1', '2019-10-08', '超管', '1', '2020-03-12');
INSERT INTO `sp_brand` VALUES ('17', '多乐士', '/img/brand_logo/f53520c630b9365c60eee7760f2c0b13.png', '1', '超级管理员', '1', '2019-10-08', '超级管理员', '1', null);
INSERT INTO `sp_brand` VALUES ('18', '防腐木方', 'http://www.zhudebao.cn/img/brand_logo/8dfe7f6e0dcdd8b4cf1e335961bf745c.png', '1', '超管', '1', '2020-03-12', '超管', '1', '2020-03-12');
INSERT INTO `sp_brand` VALUES ('19', '昂世', 'http://www.zhudebao.cn/img/brand_logo/ebf10f340a57f31097ee4ea45cd45f72.png', '1', '超管', '1', '2020-03-12', '超管', '1', '2020-03-12');
INSERT INTO `sp_brand` VALUES ('20', '科肯', 'http://www.zhudebao.cn/img/brand_logo/96e291225f11254a7ad23684d08a66d1.png', '1', '超管', '1', '2020-03-13', '超管', '1', '2020-03-13');
INSERT INTO `sp_brand` VALUES ('21', '大圆', 'http://www.zhudebao.cn/img/brand_logo/500ed43435679cc9b75245fc7f0fa959.png', '1', '超管', '1', '2020-03-13', '超管', '1', '2020-03-13');
INSERT INTO `sp_brand` VALUES ('22', '神龙实业', 'http://www.zhudebao.cn/img/brand_logo/43716e9555a114c3ac62008f7972d77f.png', '1', '超管', '1', '2020-03-13', '超管', '1', '2020-03-13');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_budget
-- ----------------------------
INSERT INTO `sp_budget` VALUES ('1', 'YSD20200227150019795815', '4', '4', '1', '2020-02-27', '30', '0.00', '0.00', '0.00', '0.00', '0.00', '11151.00', '0.00', '400', '72000.00', '83151.00', '5', '4157.55', '5', '4365.43', '91673.98', '0', '1', '2020-02-27', '1', '2020-02-27');

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sp_budget_item
-- ----------------------------
INSERT INTO `sp_budget_item` VALUES ('1', '4', '4', '1', '6', '2', '3', '17', '抗拔螺栓', '镀锌螺杆  φ16  长度400mm', '根', '30', '5', '31.50', '12', null, '1', '北京优筑美邦建筑科技有限公司', '3', '94.50', '1', '2020-02-27');
INSERT INTO `sp_budget_item` VALUES ('2', '4', '4', '1', '7', '5', '1', '103', '薄壁轻钢结构龙骨（90墙龙骨体系））', '镀铝锌G550  /55% /AZ150', 'kg', '180', '2', '183.60', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '6.5', '1193.40', '1', '2020-02-27');
INSERT INTO `sp_budget_item` VALUES ('3', '4', '4', '1', '7', '5', '110', '104', '结构连接件（墙体-墙体）', '镀铝锌G550 /55%  AZ150/1.2厚', 'm2', '180', '2', '183.60', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '3', '550.80', '1', '2020-02-27');
INSERT INTO `sp_budget_item` VALUES ('4', '4', '4', '1', '7', '5', '118', '105', '结构屋架连接件（屋架-墙体）', '镀铝锌G550 /55%  AZ150/1.2厚', 'm2', '180', '2', '183.60', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '2.5', '459.00', '1', '2020-02-27');
INSERT INTO `sp_budget_item` VALUES ('5', '4', '4', '1', '7', '5', '127', '107', '结构连接件（屋脊）', '镀铝锌G550 /55%  AZ150/1.2厚', 'm', '180', '2', '183.60', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '3', '550.80', '1', '2020-02-27');
INSERT INTO `sp_budget_item` VALUES ('6', '4', '4', '1', '7', '5', '101', '848', '自攻钉（结构）', '自攻自钻螺钉系列/镀锌钢钉', 'm2', '180', '5', '189.00', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '25', '4725.00', '1', '2020-02-27');
INSERT INTO `sp_budget_item` VALUES ('7', '4', '4', '1', '7', '5', '94', '932', '结构屋架连接件（屋架-墙体）', '镀铝锌G550 /55%  AZ150/1.2厚', 'm2', '180', '2', '183.60', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '2.5', '459.00', '1', '2020-02-27');
INSERT INTO `sp_budget_item` VALUES ('8', '4', '4', '1', '8', '59', '14', '239', '石膏板（外墙内侧）', '普通纸面石膏板/12厚', 'm2', '180', '5', '189.00', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '9.5', '1795.50', '1', '2020-02-27');
INSERT INTO `sp_budget_item` VALUES ('9', '4', '4', '1', '8', '59', '35', '244', '玻璃棉（外墙龙骨内）', '单面铝箔玻璃棉毡/16KG/立方/75厚', 'm2', '180', '5', '189.00', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '4.5', '850.50', '1', '2020-02-27');
INSERT INTO `sp_budget_item` VALUES ('10', '4', '4', '1', '8', '59', '72', '254', '防潮纸（外墙）', '防潮纸/0.35厚', 'm2', '180', '5', '189.00', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '2.5', '472.50', '1', '2020-02-27');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_customer
-- ----------------------------
INSERT INTO `sp_customer` VALUES ('1', '弓总', '民营企业单位', '内蒙谷包头市', null, '13911111111', '', '', '1', '1', '超管', '2020-01-22', '1', '2020-04-06');
INSERT INTO `sp_customer` VALUES ('2', '曹总', '个人', '北京顺义', null, '13911111111', '', '', '1', '1', '超管', '2020-01-28', '1', '2020-02-15');
INSERT INTO `sp_customer` VALUES ('3', '张先生', '个人', '天津蓟县', null, '185011111111', '', '', '1', '1', '超管', '2020-02-16', '6', '2021-05-14');
INSERT INTO `sp_customer` VALUES ('4', '张先生', '个人', '北京', null, '185011111111', '', '', '1', '1', '超管', '2020-02-17', null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_department
-- ----------------------------
INSERT INTO `sp_department` VALUES ('1', '总经办', '1', '1', '1', '1', '超级管理员', '2019-08-30');
INSERT INTO `sp_department` VALUES ('2', '销售部', '1', '2', '2', '1', '超级管理员', '2019-08-30');
INSERT INTO `sp_department` VALUES ('3', '预算部', '1', '3', '2', '1', '超级管理员', '2019-08-30');
INSERT INTO `sp_department` VALUES ('4', '采购部', '1', '4', '2', '1', '超级管理员', '2019-08-30');
INSERT INTO `sp_department` VALUES ('5', '工程部', '1', '5', '1', '1', '超级管理员', '2019-08-30');
INSERT INTO `sp_department` VALUES ('6', '设计部', '1', '6', '2', '1', '超级管理员', '2019-08-30');
INSERT INTO `sp_department` VALUES ('7', '财务部', '1', '7', '1', '1', '超级管理员', '2019-08-30');
INSERT INTO `sp_department` VALUES ('8', '合约部', '1', '8', '2', '1', '超级管理员', '2019-08-30');
INSERT INTO `sp_department` VALUES ('9', '系统开发部', null, '9', '1', '1', '超管', '2020-05-18');

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
  `build_length` varchar(100) DEFAULT NULL COMMENT '房屋占地尺寸：长（m）',
  `build_width` varchar(100) DEFAULT NULL COMMENT '房屋占地尺寸：宽（m）',
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_engineering
-- ----------------------------
INSERT INTO `sp_engineering` VALUES ('1', '1', '乡村别墅A', '河北省邯郸市邯郸县河北省', '295.00', null, null, '295.00', '2', '1', '9.50', '3', '1', '2020-04-06', null, null, '1', '2020-04-06', '0', null, null, null, null, null, '1', '1', '0', '0', '7', '销售总监', '5', '设计总监', '9', '预算经理', null, null, '15', '合约经理', '4', '建筑设计师1', '4', '建筑设计师1', '4', '建筑设计师1', '4', '建筑设计师1', null, null);
INSERT INTO `sp_engineering` VALUES ('2', '2', '别墅改造', '北京市北京市市辖区顺义区名都园别墅区', '120.00', null, null, null, '3', '1', '9.00', '3', '1', '2020-02-15', null, null, null, null, '0', null, null, null, null, null, '0', '0', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_engineering` VALUES ('3', '3', '单层住宅', '天津市天津市市辖区蓟县马伸桥镇', '160.00', '54', '23', '120.00', '1', '1', '5.00', '3', '6', '2021-05-14', null, null, null, null, '0', null, null, null, null, null, '1', '1', '0', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_engineering` VALUES ('4', '4', '单层住宅', '河北省保定市清苑区张登镇张登村', '180.00', null, null, '180.00', '1', '1', '5.20', '4', '1', '2020-02-17', null, null, '1', '2020-02-27', '1', null, null, null, null, null, '1', '1', '1', '1', null, null, null, null, null, null, '14', '采购专员1', null, null, null, null, null, null, null, null, null, null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='工程参数设计';

-- ----------------------------
-- Records of sp_engineering_param
-- ----------------------------
INSERT INTO `sp_engineering_param` VALUES ('1', '3', '3', '50年以上', '8度', '2级（二道防水）', '2级', '<=40db', '75%', '0.5', '0.5', '0.5', '0', '0', '120', '12', '10', '[\"3.3\"]', '[\"3\"]', '[\"120\"]', '[\"1\\u5c42\",\"1\\u5c42\",\"1\\u5c42\",\"1\\u5c42\",\"1\\u5c42\",\"1\\u5c42\"]', '[\"\\u4e3b\\u5367\\u5ba4\",\"\\u5ba2\\u5367\",\"\\u5ba2\\u5385\",\"\\u9910\\u5385\",\"\\u536b\\u751f\\u95f4\",\"\\u5ba2\\u5367\"]', '[\"20\",\"15\",\"20\",\"10\",\"6\",\"15\"]', '1', '2020-02-16', null, null);
INSERT INTO `sp_engineering_param` VALUES ('2', '4', '4', '50年以上', '8度', '2级（二道防水）', '2级', '<=40db', '75%', '0.5', '0.5', '0.5', '0', '0', '180', '15', '12', '[\"3.6\"]', '[\"3.3\"]', '[\"180\"]', '[]', '[]', '[]', '1', '2020-02-17', '1', '2020-02-27');
INSERT INTO `sp_engineering_param` VALUES ('3', '1', '1', '50年以上', '9度', '1级（三道防水）', '1级', '<=30db', '75%', '0.5', '0.5', '0.5', '4.0', '0', '295', '13.5', '11.6', '[\"3.5\",\"3.1\"]', '[\"3\",\"2.9\"]', '[\"157\",\"138\"]', '[]', '[]', '[]', '1', '2020-04-06', null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_enginnering_architectural
-- ----------------------------
INSERT INTO `sp_enginnering_architectural` VALUES ('20', '4', '4', '6', '基础系统', '基础工程', '1001', '2', '基础系统（混凝土条形基础）', '1001-01', 'GK-JC-01', '1', '2020-02-27', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('21', '4', '4', '7', '主体结构系统', '主体结构工程', '1002', '5', '薄壁轻钢结构系统（镀铝锌G550 55%  AZ150）（90墙龙骨体系）', '1002-01', 'GK-ZT-01', '1', '2020-02-27', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('22', '4', '4', '8', '外墙系统', '外墙工程', '1003', '59', '外墙系统（16厚外挂板）(50XPS/75BLM/10GSG/12SGB）', '1003-22', 'GK-WQ-22', '1', '2020-02-27', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('23', '4', '4', '9', '内墙系统', '内墙工程', '1004', '20', '内墙系统（10GSG+12SGB/75BLM）(90墙龙骨体系）', '1004-05', 'GK-NQ-05', '1', '2020-02-27', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('24', '4', '4', '10', '屋面系统', '屋面工程', '1005', '27', '屋面系统（水泥瓦+屋面外保温50XPS）', '1005-30', 'GK-WM-30', '1', '2020-02-27', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('25', '4', '4', '11', '檐口系统', '檐口工程', '1006', '30', '檐口系统（彩铝落水系统）', '1006-03', 'GK-YK-03', '1', '2020-02-27', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('26', '4', '4', '13', '吊顶系统', '吊顶工程', '1008', '15', '吊顶系统（轻钢龙骨/普通石膏板）', '1008-01', 'GK-DD-01', '1', '2020-02-27', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('27', '4', '4', '14', '外窗系统', '外窗工程', '1009', '40', '外窗系统（双玻断桥铝 70系列+钢化玻璃）', '1009-05', 'GK-C-05', '1', '2020-02-27', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('28', '4', '4', '15', '外门系统', '外门工程', '1010', '77', '外门系统（钢制防盗门）', '1003-07', 'GK-M-07', '1', '2020-02-27', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('29', '4', '4', '16', '细部装饰系统', '细部装饰工程', '1011', '46', '细部装饰系统（铝合金构件）', '1011-01', 'GK-ZS-01', '1', '2020-02-27', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('30', '4', '4', '16', '细部装饰系统', '细部装饰工程', '1011', '107', '细部装饰系统（门窗口扣板）', '1011-03', 'GK-ZS-03', '1', '2020-02-27', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('31', '4', '4', '18', '电气系统', '电气工程', '1013', '51', '电气系统（强电）（JDG电管/BV电线/配电箱）', '1013-02', 'GK-DQ-02', '1', '2020-02-27', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('44', '3', '3', '6', '基础系统', '基础工程', '1001', '2', '基础系统（混凝土条形基础）', '1001-01', 'GK-JC-01', '1', '2020-03-12', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('45', '3', '3', '7', '主体结构系统', '主体结构工程', '1002', '5', '薄壁轻钢结构系统（镀铝锌G550 55%  AZ150）（90墙龙骨体系）', '1002-01', 'GK-ZT-01', '1', '2020-03-12', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('46', '3', '3', '8', '外墙系统', '外墙工程', '1003', '59', '外墙系统（16厚外挂板）(50XPS/75BLM/10GSG/12SGB）', '1003-22', 'GK-WQ-22', '1', '2020-03-12', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('47', '3', '3', '9', '内墙系统', '内墙工程', '1004', '20', '内墙系统（10GSG+12SGB/75BLM）(90墙龙骨体系）', '1004-05', 'GK-NQ-05', '1', '2020-03-12', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('48', '3', '3', '10', '屋面系统', '屋面工程', '1005', '22', '屋面系统（双层沥青瓦/吊顶保温）', '1005-05', 'GK-WM-05', '1', '2020-03-12', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('49', '3', '3', '11', '檐口系统', '檐口工程', '1006', '30', '檐口系统（彩铝落水系统）', '1006-03', 'GK-YK-03', '1', '2020-03-12', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('50', '3', '3', '13', '吊顶系统', '吊顶工程', '1008', '15', '吊顶系统（轻钢龙骨/普通石膏板）', '1008-01', 'GK-DD-01', '1', '2020-03-12', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('51', '3', '3', '14', '外窗系统', '外窗工程', '1009', '38', '外窗系统（双玻断桥铝 60系列+普通玻璃）', '1009-03', 'GK-C-03', '1', '2020-03-12', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('52', '3', '3', '15', '外门系统', '外门工程', '1010', '76', '外门系统（钢制仿铜门）', '1003-06', 'GK-M-06', '1', '2020-03-12', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('53', '3', '3', '16', '细部装饰系统', '细部装饰工程', '1011', '107', '细部装饰系统（门窗口扣板）', '1011-03', 'GK-ZS-03', '1', '2020-03-12', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('54', '3', '3', '17', '给排水系统', '给排水工程', '1012', '48', '给排水系统（同层排水）', '1012-01', 'GK-GP-01', '1', '2020-03-12', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('55', '3', '3', '18', '电气系统', '电气工程', '1013', '51', '电气系统（强电）（JDG电管/BV电线/配电箱）', '1013-02', 'GK-DQ-02', '1', '2020-03-12', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('56', '1', '1', '6', '基础系统', '基础工程', '1001', '2', '基础系统（混凝土条形基础）', '1001-01', 'GK-JC-01', '1', '2020-04-06', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('57', '1', '1', '7', '主体结构系统', '主体结构工程', '1002', '5', '薄壁轻钢结构系统（镀铝锌G550 55%  AZ150）（90墙龙骨体系）', '1002-01', 'GK-ZT-01', '1', '2020-04-06', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('58', '1', '1', '8', '外墙系统', '外墙工程', '1003', '59', '外墙系统（16厚外挂板）(50XPS/75BLM/10GSG/12SGB）', '1003-22', 'GK-WQ-22', '1', '2020-04-06', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('59', '1', '1', '9', '内墙系统', '内墙工程', '1004', '20', '内墙系统（10GSG+12SGB/75BLM）(90墙龙骨体系）', '1004-05', 'GK-NQ-05', '1', '2020-04-06', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('60', '1', '1', '10', '屋面系统', '屋面工程', '1005', '22', '屋面系统（双层沥青瓦/吊顶保温）', '1005-05', 'GK-WM-05', '1', '2020-04-06', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('61', '1', '1', '11', '檐口系统', '檐口工程', '1006', '30', '檐口系统（彩铝落水系统）', '1006-03', 'GK-YK-03', '1', '2020-04-06', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('62', '1', '1', '12', '楼板系统', '楼板工程', '1007', '14', '楼板系统（室内无防水楼面）', '1007-01', 'GK-LM-01', '1', '2020-04-06', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('63', '1', '1', '12', '楼板系统', '楼板工程', '1007', '32', '楼板系统（室内有防水楼面）', '1007-02', 'GK-LM-02', '1', '2020-04-06', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('64', '1', '1', '13', '吊顶系统', '吊顶工程', '1008', '15', '吊顶系统（轻钢龙骨/普通石膏板）', '1008-01', 'GK-DD-01', '1', '2020-04-06', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('65', '1', '1', '14', '外窗系统', '外窗工程', '1009', '39', '外窗系统（双玻断桥铝 60系列+钢化玻璃）', '1009-04', 'GK-C-04', '1', '2020-04-06', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('66', '1', '1', '15', '外门系统', '外门工程', '1010', '77', '外门系统（钢制防盗门）', '1003-07', 'GK-M-07', '1', '2020-04-06', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('67', '1', '1', '16', '细部装饰系统', '细部装饰工程', '1011', '46', '细部装饰系统（铝合金构件）', '1011-01', 'GK-ZS-01', '1', '2020-04-06', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('68', '1', '1', '16', '细部装饰系统', '细部装饰工程', '1011', '107', '细部装饰系统（门窗口扣板）', '1011-03', 'GK-ZS-03', '1', '2020-04-06', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('69', '1', '1', '17', '给排水系统', '给排水工程', '1012', '49', '给排水系统（隔层排水）', '1012-02', 'GK-GP-02', '1', '2020-04-06', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('70', '1', '1', '18', '电气系统', '电气工程', '1013', '50', '电气系统(强电）（PVC电管/BV电线/配电箱）', '1013-01', 'GK-DQ-01', '1', '2020-04-06', null, null);
INSERT INTO `sp_enginnering_architectural` VALUES ('71', '1', '1', '18', '电气系统', '电气工程', '1013', '132', '电气系统(弱电）（电话/网络/电视）', '1013-03', 'GK-DQ-03', '1', '2020-04-06', null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sp_examine_user
-- ----------------------------
INSERT INTO `sp_examine_user` VALUES ('3', '18', '超管', '1', '2020-05-18 11:42:30', '超管', '1', '2020-05-18 11:42:36', '1');
INSERT INTO `sp_examine_user` VALUES ('4', '18', '超管', '1', '2020-05-18 11:43:32', '超管', '1', '2020-05-18 11:44:43', '1');
INSERT INTO `sp_examine_user` VALUES ('5', '18', '超管', '1', '2020-05-29 14:58:09', '超管', '1', '2020-05-29 14:58:50', '1');
INSERT INTO `sp_examine_user` VALUES ('6', '18', '超管', '1', '2020-05-29 15:00:05', '超管', '1', '2020-05-29 15:00:51', '1');
INSERT INTO `sp_examine_user` VALUES ('7', '18', '超管', '1', '2020-05-29 15:03:13', '超管', '1', '2020-05-29 15:03:43', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=970 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_material
-- ----------------------------
INSERT INTO `sp_material` VALUES ('16', '6', '2', '橡胶垫片', 'DP-JC-FS-01', 'DP', 'JC', 'FS', '01', '1厚橡胶条', '5', '1', '1', '1', '超级管理员', '2019-07-26', '2019-10-21', '1', '超级管理员', 'm', 'm', '无', '捆装', '1.00000', '0', '150', '0', '1', '0', '1', '2019-10-21', '1', '2020-02-22');
INSERT INTO `sp_material` VALUES ('17', '6', '2', '抗拔螺栓', 'LS-JC-KB-16', 'LS', 'JC', 'KB', '16', '镀锌螺杆  φ16  长度400mm', '5', '2', '1', '1', '超级管理员', '2019-07-26', '2019-10-21', '1', '超级管理员', '根', '根', '无', '捆装', '0.40000', '1000', '0', '0', '0', '16', '1', '2019-10-21', '1', '2020-02-23');
INSERT INTO `sp_material` VALUES ('18', '6', '2', '抗拔螺栓螺母', 'LS-JC-KB-16-01', 'LS', 'JC', 'KB', '16-01', '镀锌螺母   φ16', '5', '3', '1', '1', '超级管理员', '2019-07-26', '2019-10-21', '1', '超级管理员', '个', '个', '0', '袋装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-04-07', null, null);
INSERT INTO `sp_material` VALUES ('19', '6', '2', '抗拔螺栓垫片', 'LS-JC-KB-16-02', 'LS', 'JC', 'KB', '16-02', '镀锌圆形垫片  φ16', '5', '4', '1', '1', '超级管理员', '2019-07-26', '2019-10-21', '1', '超级管理员', '阿萨德', '搜索', '12', '31', '11.00000', '1', '23', '12', '321', '332', '6', '2019-07-29', '1', '2019-10-21');
INSERT INTO `sp_material` VALUES ('20', '6', '3', '橡胶垫片', 'DP-JC-FS-01', 'DP', 'JC', 'FS', '01', '1厚橡胶条', '5', '1', '1', '1', '超级管理员', '2019-07-26', '2019-10-21', '1', '超级管理员', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('21', '6', '4', '橡胶垫片', 'DP-JC-FS-01', 'DP', 'JC', 'FS', '01', '1厚橡胶条', '5', '1', '1', '1', '超级管理员', '2019-07-26', '2019-10-21', '1', '超级管理员', '维尔切', '沙发斯蒂芬', '4', '5', '3.00000', '6', '7', '8', '9', '0', '6', '2019-07-29', '6', '2019-08-30');
INSERT INTO `sp_material` VALUES ('22', '6', '4', '抗拔螺栓', 'LS-LS-KB-16', 'LS', 'LS', 'KB', '16', '镀锌螺杆  φ16  长度400mm', '5', '2', '1', '1', '超级管理员', '2019-07-26', '2019-10-21', '1', '超级管理员', '阿萨德', '是是是', '4', '4', '3.00000', '5', '6', '7', '8', '9', '6', '2019-07-29', '6', '2019-08-02');
INSERT INTO `sp_material` VALUES ('29', '7', '9', '薄壁轻钢结构龙骨（90墙龙骨体系）', 'QGJG-JG-02', 'QGJG', 'JG', '0', '02', '热镀锌 /G550/Z185', '2', '1', '1', '1', '超级管理员', '2019-07-26', '2020-02-26', '1', '超管', 'kg', 'kg', '无', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2019-10-08', '1', '2020-02-26');
INSERT INTO `sp_material` VALUES ('30', '7', '9', '结构连接件（墙体-墙体）', 'PJ -JG -01', 'PJ', 'JG', '0', '01', '热镀锌/G550/Z185/1.2厚', '2', '2', '1', '1', '超级管理员', '2019-07-26', '2020-02-26', '1', '超管', 'kg', 'kg', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2019-09-28', null, null);
INSERT INTO `sp_material` VALUES ('31', '7', '9', '结构屋架连接件（屋架-墙体）', 'PJ -JG -03', 'PJ', 'JG', '0', '02', '热镀锌/G550/Z185/1.2厚', '2', '4', '1', '1', '超级管理员', '2019-07-26', '2020-02-26', '1', '超管', 'kg', 'kg', '无', '木箱包装', '1.00000', '0', '0', '0', '0', '0', '1', '2019-10-08', '1', '2020-02-23');
INSERT INTO `sp_material` VALUES ('32', '7', '9', '结构连接件（檐口）', 'PJ-JG-04', 'PJ', 'JG', '0', '04', '热镀锌/G550/Z185/1.2厚', '2', '5', '1', '1', '超级管理员', '2019-07-26', '2020-02-26', '1', '超管', 'kg', 'kg', '无', '木箱包装', '1.00000', '0', '0', '0', '0', '0', '1', '2019-10-10', '1', '2019-10-11');
INSERT INTO `sp_material` VALUES ('33', '8', '6', '石膏板（外墙内侧）', 'SGB-WQ-NZ-12', 'SGB', 'WQ', 'NZ', '12', '普通纸面石膏板/12厚', '5', '2', '1', '1', '超级管理员', '2019-07-26', '2020-02-22', '1', '超管', 'm2', '张', '无', '捆装', '0.28000', '3000', '1200', '0', '12', '0', '6', '2019-09-26', '1', '2020-02-24');
INSERT INTO `sp_material` VALUES ('37', '13', '15', '玻璃棉（吊顶内-单层铺设）', 'BLM-DD-BW-75', 'BLM', 'DD', 'BW', '75', '单面铝箔玻璃棉/16kg/立方/75厚', '5', '3', '0', '1', '超级管理员', '2019-07-26', '2020-02-24', '1', '超管', '预算单位', '采购单位', '规格', '要不', '0.80000', '5', '6', '7', '8', '9', '6', '2019-08-16', null, null);
INSERT INTO `sp_material` VALUES ('38', '13', '15', '玻璃棉（吊顶内-双层铺设）', 'BLM-DD-BW-75*2', 'BLM', 'DD', 'BW', '75*2', '单面铝箔玻璃棉/16kg/立方/150厚', '5', '5', '1', '1', '超级管理员', '2019-07-26', '2020-02-24', '1', '超管', '元', '元', '测试规格', '要求不同', '0.99000', '1', '2', '3', '4', '5', '6', '2019-08-16', null, null);
INSERT INTO `sp_material` VALUES ('41', '7', '9', '结构连接件（屋脊）', 'PJ-JG-05', 'PJ', 'JG', '0', '05', '热镀锌/G550/Z185/1.2厚', '2', '6', '1', '1', '超级管理员', '2019-09-17', '2020-02-26', '1', '超管', 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '1', '0', '1', '2019-10-08', '1', '2020-02-26');
INSERT INTO `sp_material` VALUES ('42', '8', '6', '石膏板（外墙内侧）', 'SGB-WQ-NZ-FH15', 'SGB', 'WQ', 'NZ', 'FH15', '防火石膏板/15厚', '5', '4', '0', '1', '超级管理员', '2019-09-17', '2020-02-22', '1', '超管', 'm2', 'm2', '正常', '无', '1.00000', '3000', '1200', '0', '15', '0', '1', '2019-09-28', null, null);
INSERT INTO `sp_material` VALUES ('43', '8', '6', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-10', 'GSG', 'WQ', 'NZ', '10', '硅酸钙板/10厚', '5', '6', '1', '1', '超级管理员', '2019-09-17', '2020-02-22', '1', '超管', 'm2', '张', '散装', '无', '0.35000', '2400', '1200', '0', '10', '0', '1', '2019-10-11', '1', '2020-02-24');
INSERT INTO `sp_material` VALUES ('44', '8', '6', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-12', 'GSG', 'WQ', 'NZ', '12', '硅酸钙板/12厚', '5', '8', '0', '1', '超级管理员', '2019-09-17', '2020-02-22', '1', '超管', 'kg', 'kg', '无', '捆装', '0.35000', '2400', '1200', '0', '12', '0', '1', '2019-10-11', null, null);
INSERT INTO `sp_material` VALUES ('45', '8', '6', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-15', 'GSG', 'WQ', 'NZ', '15', '硅酸钙板/15厚', '5', '10', '0', '1', '超级管理员', '2019-09-17', '2020-02-22', '1', '超管', 'm', '张', '无', '捆装', '1.00000', '2400', '1200', '0', '15', '0', '1', '2019-10-13', null, null);
INSERT INTO `sp_material` VALUES ('46', '8', '6', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-50', 'YM', 'WQ', 'BW', '50', '岩棉板/100KG/立方/50厚', '5', '20', '0', '1', '超级管理员', '2019-09-17', '2020-02-22', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('47', '8', '6', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-60', 'YM', 'WQ', 'BW', '60', '岩棉板/100KG/立方/60厚', '5', '16', '0', '1', '超级管理员', '2019-09-17', '2020-02-22', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('48', '8', '6', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-70', 'YM', 'WQ', 'BW', '70', '岩棉板/100KG/立方/70厚', '5', '18', '0', '1', '超级管理员', '2019-09-17', '2020-02-22', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('49', '8', '6', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-80', 'YM', 'WQ', 'BW', '80', '岩棉板/100KG/立方/80厚', '5', '22', '0', '1', '超级管理员', '2019-09-17', '2020-02-22', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('50', '8', '6', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-100', 'YM', 'WQ', 'BW', '100', '岩棉板/100KG/立方/100厚', '5', '24', '0', '1', '超级管理员', '2019-09-17', '2020-02-22', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('51', '8', '6', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-75', 'BLM', 'WQ', 'BW', '75', '单面铝箔玻璃棉毡/16KG/立方/75厚', '5', '12', '1', '1', '超级管理员', '2019-09-17', '2020-02-22', '1', '超管', 'm2', 'm2', '卷', '捆装', '1.00000', '0', '0', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('52', '8', '6', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-100', 'BLM', 'WQ', 'BW', '100', '单面铝箔玻璃棉毡/16KG/立方/100厚', '5', '14', '0', '1', '超级管理员', '2019-09-17', '2020-02-22', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('53', '8', '6', 'OSB结构板（外墙）', 'OSB-WQ-JG-09', 'OSB', 'WQ', 'JG', '09', 'OSB板/结构三级/9厚', '10', '26', '0', '1', '超级管理员', '2019-09-17', '2020-02-22', '1', '超管', 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '9', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('54', '8', '6', 'OSB结构板（外墙）', 'OSB-WQ-JG-12', 'OSB', 'WQ', 'JG', '12', 'OSB板/结构三级/12厚', '10', '28', '1', '1', '超级管理员', '2019-09-17', '2020-02-22', '1', '超管', 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('55', '8', '6', 'OSB结构板（外墙）', 'OSB-WQ-JG-15', 'OSB', 'WQ', 'JG', '15', 'OSB板/结构三级/15厚', '10', '30', '0', '1', '超级管理员', '2019-09-17', '2020-02-22', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('56', '8', '6', '防潮纸（外墙）', 'FCZ-WQ-FS-035', 'FCZ', 'WQ', 'FS', '035', '防潮纸/0.35厚', '5', '32', '1', '1', '超级管理员', '2019-09-17', '2020-02-22', '1', '超管', 'm2', 'm2', '卷', '无', '1.00000', '15000', '1000', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('57', '8', '7', '防潮纸（外墙）', 'FCZ-WQ-FS-086', 'FCZ', 'WQ', 'FS', '086', '防潮纸/0.5厚', '5', '34', '0', '1', '超级管理员', '2019-09-17', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('58', '8', '7', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-70', 'YM', 'WQ', 'BW', '70', '岩棉板/100KG/立方/70厚', '5', '15', '0', '1', '超级管理员', '2019-09-17', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('59', '8', '7', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-80', 'YM', 'WQ', 'BW', '80', '岩棉板/100KG/立方/80厚', '5', '16', '0', '1', '超级管理员', '2019-09-17', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('60', '8', '7', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-100', 'BLM', 'WQ', 'BW', '100', '单面铝箔玻璃棉毡/16KG/立方/100厚', '5', '22', '0', '1', '超级管理员', '2019-09-17', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('61', '8', '7', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-75', 'BLM', 'WQ', 'BW', '75', '单面铝箔玻璃棉毡/16KG/立方/75厚', '5', '20', '1', '1', '超级管理员', '2019-09-17', '2020-02-21', '1', '超管', 'm2', 'm2', '卷', '捆装', '1.00000', '0', '0', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('62', '8', '7', '防潮纸（外墙）', 'FCZ-WQ-FS-035', 'FCZ', 'WQ', 'FS', '035', '防潮纸/0.35厚', '5', '30', '1', '1', '超级管理员', '2019-09-17', '2020-02-21', '1', '超管', 'm2', 'm2', '卷', '无', '1.00000', '15000', '1000', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('63', '8', '7', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-10', 'GSG', 'WQ', 'NZ', '10', '硅酸钙板/10厚', '5', '6', '1', '1', '超级管理员', '2019-09-17', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.35000', '2400', '1200', '0', '10', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('64', '8', '7', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-12', 'GSG', 'WQ', 'NZ', '12', '硅酸钙板/12厚', '5', '8', '0', '1', '超级管理员', '2019-09-17', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('65', '8', '7', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-15', 'GSG', 'WQ', 'NZ', '15', '硅酸钙板/15厚', '5', '10', '0', '1', '超级管理员', '2019-09-17', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('66', '8', '7', 'OSB结构板（外墙）', 'OSB-WQ-JG-09', 'OSB', 'WQ', 'JG', '09', 'OSB板/结构三级/9厚', '10', '24', '1', '1', '超级管理员', '2019-09-17', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '9', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('67', '8', '7', 'OSB结构板（外墙）', 'OSB-WQ-JG-12', 'OSB', 'WQ', 'JG', '12', 'OSB板/结构三级/12厚', '10', '26', '0', '1', '超级管理员', '2019-09-17', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('68', '8', '7', 'OSB结构板（外墙）', 'OSB-WQ-JG-15', 'OSB', 'WQ', 'JG', '15', 'OSB板/结构三级/12厚', '10', '28', '0', '1', '超级管理员', '2019-09-17', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('69', '8', '7', '石膏板（外墙内侧）', 'SGB-WQ-NZ-12', 'SGB', 'WQ', 'NZ', '12', '普通纸面石膏板/12厚', '5', '2', '1', '1', '超级管理员', '2019-09-17', '2020-02-21', '1', '超管', 'm2', '张', '无', '捆装', '0.28000', '3000', '1200', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('70', '8', '7', '石膏板（外墙内侧）', 'SGB-WQ-NZ-FH15', 'SGB', 'WQ', 'NZ', 'FH15', '防火石膏板/15厚', '5', '4', '0', '1', '超级管理员', '2019-09-17', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('71', '8', '7', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-50', 'YM', 'WQ', 'BW', '50', '岩棉板/100KG/立方/50厚', '5', '12', '0', '1', '超级管理员', '2019-09-17', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('72', '8', '7', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-60', 'YM', 'WQ', 'BW', '60', '岩棉板/100KG/立方/60厚', '5', '14', '0', '1', '超级管理员', '2019-09-17', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('73', '8', '7', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-100', 'YM', 'WQ', 'BW', '100', '岩棉板/100KG/立方/100厚', '5', '18', '0', '1', '超级管理员', '2019-09-17', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('74', '8', '6', '防潮纸（外墙）', 'FCZ-WQ-FS-086', 'FCZ', 'WQ', 'FS', '036', '防潮纸/0.5厚', '5', '34', '0', '1', '超级管理员', '2019-09-18', '2020-02-22', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('75', '8', '6', 'XPS保温板（外墙）', 'XPS-WQ-BW-30B1', 'XPS', 'WQ', 'BW', '30B1', '挤塑聚苯保温板/B1级/30厚', '5', '36', '1', '1', '超级管理员', '2019-09-18', '2020-02-22', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '30', '0', '1', '2020-02-24', '1', '2020-02-24');
INSERT INTO `sp_material` VALUES ('76', '8', '6', 'XPS保温板（外墙）', 'XPS-WQ-BW-50B1', 'XPS', 'WQ', 'BW', '50B1', '挤塑聚苯保温板/B1级/50厚', '5', '38', '0', '1', '超级管理员', '2019-09-18', '2020-02-22', '1', '超管', 'm2', '张', '散装', '袋装', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('77', '8', '6', 'XPS保温板（外墙）', 'XPS-WQ-BW-60B1', 'XPS', 'WQ', 'BW', '60B1', '挤塑聚苯保温板/B1级/60厚', '5', '42', '0', '1', '超级管理员', '2019-09-18', '2020-02-22', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('78', '8', '6', 'XPS保温板（外墙）', 'XPS-WQ-BW-80B1', 'XPS', 'WQ', 'BW', '80B1', '挤塑聚苯保温板/B1级/80厚', '5', '45', '0', '1', '超级管理员', '2019-09-18', '2020-02-22', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('79', '8', '7', 'XPS保温板（外墙）', 'XPS-WQ-BW-30B1', 'XPS', 'WQ', 'BW', '30B1', '挤塑聚苯保温板/B1级/30厚', '5', '36', '0', '1', '超级管理员', '2019-09-18', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '30', '0', '1', '2020-02-24', '1', '2020-02-24');
INSERT INTO `sp_material` VALUES ('80', '8', '7', 'XPS保温板（外墙）', 'XPS-WQ-BW-50B1', 'XPS', 'WQ', 'BW', '50B1', '挤塑聚苯保温板/B1级/50厚', '5', '38', '1', '1', '超级管理员', '2019-09-18', '2020-02-21', '1', '超管', 'm2', '张', '散装', '袋装', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('81', '8', '7', 'XPS保温板（外墙）', 'XPS-WQ-BW-60B1', 'XPS', 'WQ', 'BW', '60B1', '挤塑聚苯保温板/B1级/60厚', '5', '42', '0', '1', '超级管理员', '2019-09-18', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('82', '8', '7', 'XPS保温板（外墙）', 'XPS-WQ-BW-80B1', 'XPS', 'WQ', 'BW', '80B1', '挤塑聚苯保温板/B1级/80厚', '5', '45', '0', '1', '超级管理员', '2019-09-18', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('83', '10', '12', '沥青瓦（屋面）', 'LQW-WM-WZ-Z', 'LQW', 'WM', 'WZ', 'Z', '单层沥青瓦', '10', '2', '1', '1', '超级管理员', '2019-09-18', '2020-02-21', '1', '超管', 'm2', 'm2', '0', '袋装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('84', '10', '12', 'SBS防水卷材(屋面）', 'SBS-WM-FS-Z', 'SBS', 'WM', 'FS', 'Z', 'SBS改性沥青防水卷材/3厚', '15', '5', '0', '1', '超级管理员', '2019-09-18', '2020-02-21', '1', '超管', 'm2', 'm2', '0', '无', '1.00000', '0', '0', '0', '3', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('85', '10', '12', 'APP自粘防水卷材（屋面）', 'APP-WM-FS-Z', 'APP', 'WM', 'FS', 'Z', 'APP自粘性防水卷材/2厚', '15', '10', '1', '1', '超级管理员', '2019-09-18', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '2', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('86', '10', '12', 'OSB结构板（屋面）', 'OSB-WM-JG-12', 'OSB', 'WM', 'JG', '12', 'OSB结构板/三级/12厚', '10', '12', '0', '1', '超级管理员', '2019-09-18', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.33000', '2440', '1220', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('87', '10', '12', 'OSB结构板（屋面）', 'OSB-WM-JG-15', 'OSB', 'WM', 'JG', '15', 'OSB结构板/三级/15厚', '10', '15', '1', '1', '超级管理员', '2019-09-18', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '15', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('88', '9', '10', '石膏板（内墙双侧双层）', 'SGB-NQ-NZ-12', 'SGB', 'NQ', 'NZ', '12', '普通纸面石膏板/2*12厚', '10', '2', '1', '1', '超级管理员', '2019-09-18', '2020-02-20', '1', '超管', 'm2', '张', '散装', '无', '0.28000', '3000', '1200', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('89', '9', '10', '岩棉板（内墙龙骨内）', 'YM-NQ-BW-60', 'YM', 'NQ', 'BW', '60', '岩棉板/100KG/立方/60厚', '5', '5', '0', '1', '超级管理员', '2019-09-18', '2020-02-20', '1', '超管', 'm2', '张', '捆装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('90', '9', '10', '岩棉板（内墙龙骨内）', 'YM-NQ-BW-80', 'YM', 'NQ', 'BW', '80', '岩棉板/100KG/立方/80厚', '5', '8', '0', '1', '超级管理员', '2019-09-18', '2020-02-20', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('91', '9', '10', '玻璃棉（内墙龙骨内）', 'BLM-NQ-BW-75', 'BLM', 'NQ', 'BW', '75', '单面铝箔玻璃棉/16kg/立方/75厚', '5', '10', '1', '1', '超级管理员', '2019-09-18', '2020-02-20', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '15000', '1000', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('92', '9', '10', '玻璃棉（内墙龙骨内）', 'BLM-NQ-BW-100', 'BLM', 'NQ', 'BW', '100', '单面铝箔玻璃棉/16kg/立方/100厚', '5', '12', '0', '1', '超级管理员', '2019-09-18', '2020-02-20', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '15000', '1000', '0', '100', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('93', '9', '20', '石膏板（内墙双侧单层）', 'SGB-NQ-NZ-12', 'SGB', 'NQ', 'NZ', '12', '普通纸面石膏板/12厚', '10', '2', '1', '1', '超级管理员', '2019-09-18', '2020-02-20', '1', '超管', 'm2', '张', '散装', '无', '0.28000', '3000', '1200', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('94', '9', '20', '岩棉板（内墙龙骨内）', 'YM-NQ-BW-60', 'YM', 'NQ', 'BW', '60', '岩棉板/100KG/立方/60厚', '5', '5', '0', '1', '超级管理员', '2019-09-18', '2020-02-20', '1', '超管', 'm2', '张', '捆装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('95', '9', '20', '岩棉板（内墙龙骨内）', 'YM-NQ-BW-80', 'YM', 'NQ', 'BW', '80', '岩棉板/100KG/立方/80厚', '5', '8', '0', '1', '超级管理员', '2019-09-18', '2020-02-20', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('96', '9', '20', '玻璃棉（内墙龙骨内）', 'BLM-NQ-BW-75', 'BLM', 'NQ', 'BW', '75', '单面铝箔玻璃棉/16kg/立方/75厚', '5', '10', '1', '1', '超级管理员', '2019-09-18', '2020-02-20', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '15000', '1000', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('97', '9', '20', '玻璃棉（内墙龙骨内）', 'BLM-NQ-BW-100', 'BLM', 'NQ', 'BW', '100', '单面铝箔玻璃棉/16kg/立方/100厚', '5', '12', '0', '1', '超级管理员', '2019-09-18', '2020-02-20', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '15000', '1000', '0', '100', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('98', '13', '15', '轻钢龙骨吊顶', 'QGLG-DD-NZ-Z', 'QGLG', 'DD', 'NZ', 'Z', '镀锌轻钢龙骨', '5', '7', '1', '1', '超级管理员', '2019-09-18', '2020-02-24', '1', '超管', 'm2', 'm2', '捆装', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('99', '13', '15', '石膏板（吊顶）', 'SGB-DD-NZ-9.5', 'SGB', 'DD', 'NZ', '9.5', '普通纸面石膏板/9.5厚', '5', '10', '1', '1', '超级管理员', '2019-09-18', '2020-02-24', '1', '超管', 'm2', '张', '散装', '无', '0.28000', '3000', '1200', '0', '9', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('100', '13', '15', '石膏板（吊顶）', 'SGB-DD-NZ-FS9.5', 'SGB', 'DD', 'NZ', 'FS9.5', '防水石膏板/9.5厚', '5', '12', '0', '1', '超级管理员', '2019-09-18', '2020-02-24', '1', '超管', 'm2', '张', '散装', '无', '0.28000', '3000', '1200', '0', '9', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('101', '13', '15', '石膏板（吊顶）', 'SGB-DD-NZ-FH15', 'SGB', 'DD', 'NZ', 'FH15', '防火石膏板/15厚', '5', '15', '0', '1', '超级管理员', '2019-09-18', '2020-02-24', '1', '超管', 'm2', '张', '散装', '无', '0.28000', '3000', '1200', '0', '15', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('102', '14', '38', '双玻断桥铝窗', 'C-C-WZ-Z', 'C', 'C', 'WZ', 'Z', '双玻断桥铝/60系列/普通玻璃', '0', '2', '1', '1', '超级管理员', '2019-09-18', '2019-09-18', '1', '超级管理员', 'm2', 'm2', '0', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('103', '7', '5', '薄壁轻钢结构龙骨（90墙龙骨体系））', 'QGJG-JG-01', 'QGJG', 'JG', '0', '01', '镀铝锌G550  /55% /AZ150', '2', '1', '1', '1', '超级管理员', '2019-10-11', '2020-02-26', '1', '超管', 'kg', 'kg', '无', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2019-10-11', '1', '2020-02-26');
INSERT INTO `sp_material` VALUES ('104', '7', '5', '结构连接件（墙体-墙体）', 'PJ-JG-01', 'PJ', 'JG', '0', '01', '镀铝锌G550 /55%  AZ150/1.2厚', '2', '2', '1', '1', '超级管理员', '2019-10-11', '2020-02-26', '1', '超管', 'm2', 'm2', '0', '箱装', '1.00000', '0', '0', '0', '0', '0', '1', '2019-10-11', '1', '2020-02-26');
INSERT INTO `sp_material` VALUES ('105', '7', '5', '结构屋架连接件（屋架-墙体）', 'PJ-JG-03', 'PJ', 'JG', '0', '03', '镀铝锌G550 /55%  AZ150/1.2厚', '2', '4', '1', '1', '超级管理员', '2019-10-11', '2020-02-26', '1', '超管', 'm2', 'm2', '0', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2019-10-11', '1', '2020-02-26');
INSERT INTO `sp_material` VALUES ('106', '7', '5', '结构连接件（檐口）', 'PJ-JG-04', 'PJ', 'JG', '0', '04', '镀铝锌G550 /55%  AZ150/1.2厚', '2', '5', '1', '1', '超级管理员', '2019-10-11', '2020-02-26', '1', '超管', 'kg', 'kg', '无', '木箱包装', '1.00000', '0', '0', '0', '0', '0', '1', '2019-10-11', null, null);
INSERT INTO `sp_material` VALUES ('107', '7', '5', '结构连接件（屋脊）', 'PJ-JG-05', 'PJ', 'JG', '0', '05', '镀铝锌G550 /55%  AZ150/1.2厚', '2', '6', '1', '1', '超级管理员', '2019-10-11', '2020-02-26', '1', '超管', 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '1', '0', '1', '2019-10-11', '1', '2020-02-26');
INSERT INTO `sp_material` VALUES ('108', '6', '2', '抗拔螺栓垫片', 'LS-JC-KB-16-03', 'LS', 'JC', 'KB', '16-03', '镀锌方形垫片  φ18   40*40*5mm', '5', '5', '1', '1', '超级管理员', '2019-10-21', '2019-10-21', '1', '超级管理员', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('109', '6', '2', '靴型连接件', 'PJ-JC-KB-15', 'PJ', 'JC', 'KB', '15', '镀锌靴型配件 1.6厚   承载力15KN', '5', '6', '1', '1', '超级管理员', '2019-10-21', '2019-10-21', '1', '超级管理员', '个', '个', '0', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-03-04', null, null);
INSERT INTO `sp_material` VALUES ('110', '6', '2', '靴型连接件', 'PJ-JC-KB-30', 'PJ', 'JC', 'KB', '30', '镀锌靴型配件 1.6厚   承载力30KN', '5', '7', '1', '1', '超级管理员', '2019-10-21', '2019-10-21', '1', '超级管理员', '个', '个', '0', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-03-04', null, null);
INSERT INTO `sp_material` VALUES ('111', '6', '2', '抗剪螺栓', 'LS-JC-KJ-120', 'LS', 'JC', 'KJ', '120', '镀锌膨胀螺栓    φ12  长度120mm', '5', '8', '1', '1', '超级管理员', '2019-10-21', '2019-10-21', '1', '超级管理员', '套', '套', '0', '盒装', '1.00000', '120', '0', '0', '0', '12', '1', '2020-03-04', '1', '2020-03-04');
INSERT INTO `sp_material` VALUES ('112', '6', '2', '抗剪螺栓', 'LS-JC-KJ-150', 'LS', 'JC', 'KJ', '150', '镀锌膨胀螺栓    φ12  长度150mm', '5', '9', '1', '1', '超级管理员', '2019-10-21', '2019-10-21', '1', '超级管理员', '套', '套 ', '0', '盒装', '1.00000', '150', '0', '0', '0', '12', '1', '2020-03-04', null, null);
INSERT INTO `sp_material` VALUES ('113', '6', '2', '植筋胶', 'JGJ-JC-KB-01', 'JGJ', 'JC', 'KB', '01', '高强锚固(植筋)胶环氧类结构胶', '5', '10', '1', '1', '超级管理员', '2019-10-21', '2019-10-21', '1', '超级管理员', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('114', '6', '3', '抗拔螺栓', 'LS-JC-KB-16', 'LS', 'JC', 'KB', '16', '镀锌螺杆  φ16  长度400mm', '5', '2', '1', '1', '超级管理员', '2019-10-21', '2019-10-21', '1', '超级管理员', '', '', '', '', '0.00000', '0', '0', '0', '0', '0', '1', '2020-02-22', null, null);
INSERT INTO `sp_material` VALUES ('115', '6', '3', '抗拔螺栓螺母', 'LS-JC-KB-16-01', 'LS', 'JC', 'KB', '16-01', '镀锌螺母   φ16', '5', '3', '1', '1', '超级管理员', '2019-10-21', '2019-10-21', '1', '超级管理员', '个', '个', '0', '袋装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-04-07', null, null);
INSERT INTO `sp_material` VALUES ('116', '6', '3', '抗拔螺栓垫片', 'LS-JC-KB-16-02', 'LS', 'JC', 'KB', '16-02', '镀锌圆形垫片  φ16', '5', '4', '1', '1', '超级管理员', '2019-10-21', '2019-10-21', '1', '超级管理员', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('117', '6', '3', '抗拔螺栓垫片', 'LS-JC-KB-16-03', 'LS', 'JC', 'KB', '16-03', '镀锌方形垫片  φ18   40*40*5mm', '5', '5', '1', '1', '超级管理员', '2019-10-21', '2019-10-21', '1', '超级管理员', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('118', '6', '3', '靴型连接件', 'PJ-JC-KB-15', 'PJ', 'JC', 'KB', '15', '镀锌靴型配件 1.6厚   承载力15KN', '5', '6', '1', '1', '超级管理员', '2019-10-21', '2019-10-21', '1', '超级管理员', '个', '个', '0', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-03-04', null, null);
INSERT INTO `sp_material` VALUES ('119', '6', '3', '靴型连接件', 'PJ-JC-KB-30', 'PJ', 'JC', 'KB', '30', '镀锌靴型配件 1.6厚   承载力30KN', '5', '7', '1', '1', '超级管理员', '2019-10-21', '2019-10-21', '1', '超级管理员', '个', '个', '0', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-03-04', null, null);
INSERT INTO `sp_material` VALUES ('120', '6', '3', '抗剪螺栓', 'LS-JC-KJ-120', 'LS', 'JC', 'KJ', '120', '镀锌膨胀螺栓    φ12  长度120mm', '5', '8', '1', '1', '超级管理员', '2019-10-21', '2019-10-21', '1', '超级管理员', '套', '套', '0', '盒装', '1.00000', '120', '0', '0', '0', '12', '1', '2020-03-04', '1', '2020-03-04');
INSERT INTO `sp_material` VALUES ('121', '6', '3', '抗剪螺栓', 'LS-JC-KJ-150', 'LS', 'JC', 'KJ', '150', '镀锌膨胀螺栓    φ12  长度150mm', '5', '9', '1', '1', '超级管理员', '2019-10-21', '2019-10-21', '1', '超级管理员', '套', '套 ', '0', '盒装', '1.00000', '150', '0', '0', '0', '12', '1', '2020-03-04', null, null);
INSERT INTO `sp_material` VALUES ('122', '6', '3', '植筋胶', 'JGJ-JC-KB-01', 'JGJ', 'JC', 'KB', '01', '高强锚固(植筋)胶环氧类结构胶', '5', '10', '1', '1', '超级管理员', '2019-10-21', '2019-10-21', '1', '超级管理员', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('123', '6', '4', '抗拔螺栓螺母', 'LS-JC-KB-16-01', 'LS', 'JC', 'KB', '16-01', '镀锌螺母   φ16', '5', '3', '1', '1', '超级管理员', '2019-10-21', '2019-10-21', '1', '超级管理员', '个', '个', '0', '袋装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-04-07', null, null);
INSERT INTO `sp_material` VALUES ('124', '6', '4', '抗拔螺栓垫片', 'LS-JC-KB-16-02', 'LS', 'JC', 'KB', '16-02', '镀锌圆形垫片  φ16', '5', '4', '1', '1', '超级管理员', '2019-10-21', '2019-10-21', '1', '超级管理员', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('125', '6', '4', '抗拔螺栓垫片', 'LS-JC-KB-16-03', 'LS', 'JC', 'KB', '16-03', '镀锌方形垫片  φ18   40*40*5mm', '5', '5', '1', '1', '超级管理员', '2019-10-21', '2019-10-21', '1', '超级管理员', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('126', '6', '4', '靴型连接件', 'PJ-JC-KB-15', 'PJ', 'JC', 'KB', '15', '镀锌靴型配件 1.6厚   承载力15KN', '5', '6', '1', '1', '超级管理员', '2019-10-21', '2019-10-21', '1', '超级管理员', '个', '个', '0', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-03-04', null, null);
INSERT INTO `sp_material` VALUES ('127', '6', '4', '靴型连接件', 'PJ-JC-KB-30', 'PJ', 'JC', 'KB', '30', '镀锌靴型配件 1.6厚   承载力30KN', '5', '7', '1', '1', '超级管理员', '2019-10-21', '2019-10-21', '1', '超级管理员', '个', '个', '0', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-03-04', null, null);
INSERT INTO `sp_material` VALUES ('128', '6', '4', '抗剪螺栓', 'LS-JC-KJ-120', 'LS', 'JC', 'KJ', '120', '镀锌膨胀螺栓    φ12  长度120mm', '5', '8', '1', '1', '超级管理员', '2019-10-21', '2019-10-21', '1', '超级管理员', '套', '套', '0', '盒装', '1.00000', '120', '0', '0', '0', '12', '1', '2020-03-04', '1', '2020-03-04');
INSERT INTO `sp_material` VALUES ('129', '6', '4', '抗剪螺栓', 'LS-JC-KJ-150', 'LS', 'JC', 'KJ', '150', '镀锌膨胀螺栓    φ12  长度150mm', '5', '9', '1', '1', '超级管理员', '2019-10-21', '2019-10-21', '1', '超级管理员', '套', '套 ', '0', '盒装', '1.00000', '150', '0', '0', '0', '12', '1', '2020-03-04', null, null);
INSERT INTO `sp_material` VALUES ('130', '6', '4', '植筋胶', 'JGJ-JC-KB-01', 'JGJ', 'JC', 'KB', '01', '高强锚固(植筋)胶环氧类结构胶', '5', '10', '1', '1', '超级管理员', '2019-10-21', '2019-10-21', '1', '超级管理员', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('131', '6', '8', '橡胶垫片', 'DP-JC-FS-01', 'DP', 'JC', 'FS', '01', '1厚橡胶条', '5', '1', '1', '1', '超级管理员', '2019-10-21', '2019-10-21', '1', '超级管理员', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('132', '6', '8', '抗拔螺栓', 'LS-JC-KB-16', 'LS', 'JC', 'KB', '16', '镀锌螺杆  φ16  长度400mm', '5', '2', '1', '1', '超级管理员', '2019-10-21', '2019-10-21', '1', '超级管理员', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('133', '6', '8', '抗拔螺栓螺母', 'LS-JC-KB-16-01', 'LS', 'JC', 'KB', '16-01', '镀锌螺母   φ16', '5', '3', '1', '1', '超级管理员', '2019-10-21', '2019-10-21', '1', '超级管理员', '个', '个', '0', '袋装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-04-07', null, null);
INSERT INTO `sp_material` VALUES ('134', '6', '8', '抗拔螺栓垫片', 'LS-JC-KB-16-02', 'LS', 'JC', 'KB', '16-02', '镀锌圆形垫片  φ16', '5', '4', '1', '1', '超级管理员', '2019-10-21', '2019-10-21', '1', '超级管理员', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('135', '6', '8', '抗拔螺栓垫片', 'LS-JC-KB-16-03', 'LS', 'JC', 'KB', '16-03', '镀锌方形垫片  φ18   40*40*5mm', '5', '5', '1', '1', '超级管理员', '2019-10-21', '2019-10-21', '1', '超级管理员', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('136', '6', '8', '靴型连接件', 'PJ-JC-KB-15', 'PJ', 'JC', 'KB', '15', '镀锌靴型配件 1.6厚   承载力15KN', '5', '6', '1', '1', '超级管理员', '2019-10-21', '2019-10-21', '1', '超级管理员', '个', '个', '0', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-03-04', null, null);
INSERT INTO `sp_material` VALUES ('137', '6', '8', '靴型连接件', 'PJ-JC-KB-30', 'PJ', 'JC', 'KB', '30', '镀锌靴型配件 1.6厚   承载力30KN', '5', '7', '1', '1', '超级管理员', '2019-10-21', '2019-10-21', '1', '超级管理员', '个', '个', '0', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-03-04', null, null);
INSERT INTO `sp_material` VALUES ('138', '6', '8', '抗剪螺栓', 'LS-JC-KJ-120', 'LS', 'JC', 'KJ', '120', '镀锌膨胀螺栓    φ12  长度120mm', '5', '8', '1', '1', '超级管理员', '2019-10-21', '2019-10-21', '1', '超级管理员', '套', '套', '0', '盒装', '1.00000', '120', '0', '0', '0', '12', '1', '2020-03-04', '1', '2020-03-04');
INSERT INTO `sp_material` VALUES ('139', '6', '8', '抗剪螺栓', 'LS-JC-KJ-150', 'LS', 'JC', 'KJ', '150', '镀锌膨胀螺栓    φ12  长度150mm', '5', '9', '1', '1', '超级管理员', '2019-10-21', '2019-10-21', '1', '超级管理员', '套', '套 ', '0', '盒装', '1.00000', '150', '0', '0', '0', '12', '1', '2020-03-04', null, null);
INSERT INTO `sp_material` VALUES ('140', '6', '8', '植筋胶', 'JGJ-JC-KB-01', 'JGJ', 'JC', 'KB', '01', '高强锚固(植筋)胶环氧类结构胶', '5', '10', '1', '1', '超级管理员', '2019-10-21', '2019-10-21', '1', '超级管理员', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('141', '7', '23', '薄壁轻钢结构龙骨（90墙龙骨体系）', 'QGJG-JG-03', 'QGJG', 'JG', '0', '03', '热镀锌 /G550/Z275', '2', '1', '1', '1', '超级管理员', '2019-10-21', '2020-02-26', '1', '超管', 'kg', 'kg', '无', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', '1', '2020-02-26');
INSERT INTO `sp_material` VALUES ('142', '7', '23', '结构连接件（墙体-墙体）', 'PJ-JG-01', 'PJ', 'JG', '0', '01', '热镀锌/G550/Z275/1.2厚', '2', '2', '1', '1', '超级管理员', '2019-10-21', '2020-02-26', '1', '超管', 'm2', 'm2', '0', '箱装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', null, null);
INSERT INTO `sp_material` VALUES ('143', '7', '23', '结构屋架连接件（屋架-墙体）', 'PJ-JG-02', 'PJ', 'JG', '0', '02', '热镀锌/G550/Z275/1.2厚', '2', '3', '1', '1', '超级管理员', '2019-10-21', '2020-02-26', '1', '超管', 'm2', 'm2', '捆装', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', '1', '2020-02-26');
INSERT INTO `sp_material` VALUES ('144', '7', '23', '结构连接件（檐口）', 'PJ-JG-04', 'PJ', 'JG', '0', '04', '热镀锌/G550/Z275/1.2厚', '2', '5', '1', '1', '超级管理员', '2019-10-21', '2020-02-26', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('145', '7', '23', '结构连接件（屋脊）', 'PJ-JG-05', 'PJ', 'JG', '0', '05', '热镀锌/G550/Z275/1.2厚', '2', '6', '1', '1', '超级管理员', '2019-10-21', '2020-02-26', '1', '超管', 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '1', '0', '1', '2020-02-26', null, null);
INSERT INTO `sp_material` VALUES ('146', '14', '39', '双玻断桥铝窗', 'C-C-WZ-Z', 'C', 'C', 'WZ', 'Z', '双玻断桥铝/60系列/钢化玻璃', '0', '2', '1', '1', '超级管理员', '2019-10-21', '2019-10-21', '1', '超级管理员', 'm2', 'm2', '0', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('147', '14', '40', '双玻断桥铝窗', 'C-C-WZ-Z', 'C', 'C', 'WZ', 'Z', '双玻断桥铝/70系列/钢化玻璃', '0', '2', '1', '1', '超级管理员', '2019-10-21', '2019-10-21', '1', '超级管理员', 'm2', 'm2', '0', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('148', '14', '41', '双玻断桥铝窗', 'C-C-WZ-Z', 'C', 'C', 'WZ', 'Z', '双玻断桥铝/70系列/钢化玻璃+LOW-E', '0', '2', '1', '1', '超级管理员', '2019-10-21', '2019-10-21', '1', '超级管理员', 'm2', 'm2', '0', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('149', '7', '24', '焊接H型钢框架结构', 'HGJG-JG-01', 'HGJG', 'JG', '0', '01', 'Q345焊接H型钢', '2', '1', '1', '1', '超管', '2020-01-22', '2020-02-26', '1', '超管', 'kg', 'kg', '散装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', null, null);
INSERT INTO `sp_material` VALUES ('150', '7', '24', '薄壁轻钢结构龙骨（90墙龙骨体系）', 'QGJG-JG-03', 'QGJG', 'JG', '0', '03', '热镀锌 /G550/Z275', '2', '2', '1', '1', '超管', '2020-01-22', '2020-02-26', '1', '超管', 'kg', 'kg', '无', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', '1', '2020-02-26');
INSERT INTO `sp_material` VALUES ('151', '7', '24', '结构连接件（墙体-墙体）', 'PJ-JG-01', 'PJ', 'JG', '0', '01', '热镀锌/G550/Z275/1.2厚', '2', '3', '1', '1', '超管', '2020-01-22', '2020-02-26', '1', '超管', 'm2', 'm2', '0', '箱装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', null, null);
INSERT INTO `sp_material` VALUES ('152', '7', '24', '结构屋架连接件（屋架-墙体）', 'PJ-JG-02', 'PJ', 'JG', '0', '02', '热镀锌/G550/Z275/1.2厚', '2', '4', '1', '1', '超管', '2020-01-22', '2020-02-26', '1', '超管', 'm2', 'm2', '捆装', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', '1', '2020-02-26');
INSERT INTO `sp_material` VALUES ('153', '7', '24', '结构连接件（檐口）', 'PJ-JG-03', 'PJ', 'JG', '0', '03', '热镀锌/G550/Z275/1.2厚', '2', '5', '1', '1', '超管', '2020-01-22', '2020-02-26', '1', '超管', 'm2', 'm2', '0', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', null, null);
INSERT INTO `sp_material` VALUES ('154', '7', '24', '结构连接件（屋脊）', 'PJ-JG-04', 'PJ', 'JG', '0', '04', '热镀锌/G550/Z275/1.2厚', '2', '6', '1', '1', '超管', '2020-01-22', '2020-02-26', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('155', '8', '6', '防腐木龙骨（外墙）', 'MF-WQ-WZ-Z', 'MF', 'WQ', 'WZ', 'Z', '防腐木方/樟子松', '5', '50', '1', '1', '超管', '2020-01-29', '2020-02-22', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('156', '8', '6', '外墙挂板', 'WQB-WQ-WZ-08', 'WQB', 'WQ', 'WZ', '08', '8厚植物纤维水泥基挂板', '10', '55', '1', '1', '超管', '2020-01-29', '2020-02-22', '1', '超管', 'm2', '张', '捆装', '无', '2.22000', '3000', '190', '0', '8', '0', '1', '2020-02-24', '1', '2020-03-13');
INSERT INTO `sp_material` VALUES ('157', '8', '6', '外墙底漆', 'TL-WQ-WZ-01', 'TL', 'WQ', 'WZ', '01', '外墙底漆', '10', '58', '1', '1', '超管', '2020-02-13', '2020-02-22', '1', '超管', 'm2', 'm2', '10KG/桶', '桶装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('158', '8', '6', '外墙面漆', 'TL-WQ-WZ-02', 'TL', 'WQ', 'WZ', '02', '外墙面漆', '10', '60', '1', '1', '超管', '2020-02-13', '2020-02-22', '1', '超管', 'm2', 'm2', '10KG/桶', '桶装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('159', '8', '7', '防腐木龙骨（外墙）', 'MF-WQ-WZ-Z', 'MF', 'WQ', 'WZ', 'Z', '防腐木方/樟子松', '5', '50', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('160', '8', '7', '外墙挂板', 'WQB-WQ-WZ-08', 'WQB', 'WQ', 'WZ', '08', '8厚植物纤维水泥基挂板', '10', '55', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '捆装', '无', '2.22000', '3000', '190', '0', '8', '0', '1', '2020-02-24', '1', '2020-03-13');
INSERT INTO `sp_material` VALUES ('161', '8', '7', '外墙底漆', 'TL-WQ-WZ-01', 'TL', 'WQ', 'WZ', '01', '外墙底漆', '10', '58', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', 'm2', '10KG/桶', '桶装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('162', '8', '7', '外墙面漆', 'TL-WQ-WZ-02', 'TL', 'WQ', 'WZ', '02', '外墙面漆', '10', '60', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', 'm2', '10KG/桶', '桶装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('163', '8', '16', '石膏板（外墙内侧）', 'SGB-WQ-NZ-12', 'SGB', 'WQ', 'NZ', '12', '普通纸面石膏板/12厚', '5', '2', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '无', '捆装', '0.28000', '3000', '1200', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('164', '8', '16', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-10', 'GSG', 'WQ', 'NZ', '10', '硅酸钙板/10厚', '5', '6', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.35000', '2400', '1200', '0', '10', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('165', '8', '16', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-75', 'BLM', 'WQ', 'BW', '75', '单面铝箔玻璃棉毡/16KG/立方/75厚', '5', '12', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', 'm2', '卷', '捆装', '1.00000', '0', '0', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('166', '8', '16', 'OSB结构板（外墙）', 'OSB-WQ-JG-09', 'OSB', 'WQ', 'JG', '09', 'OSB板/结构三级/9厚', '10', '26', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '9', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('167', '8', '16', '防潮纸（外墙）', 'FCZ-WQ-FS-035', 'FCZ', 'WQ', 'FS', '035', '防潮纸/0.35厚', '5', '32', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', 'm2', '卷', '无', '1.00000', '15000', '1000', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('168', '8', '16', 'XPS保温板（外墙）', 'XPS-WQ-BW-60B1', 'XPS', 'WQ', 'BW', '60B1', '挤塑聚苯保温板/B1级/60厚', '5', '42', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('169', '8', '16', '防腐木龙骨（外墙）', 'MF-WQ-WZ-Z', 'MF', 'WQ', 'WZ', 'Z', '防腐木方/樟子松', '5', '50', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('170', '8', '16', '外墙挂板', 'WQB-WQ-WZ-08', 'WQB', 'WQ', 'WZ', '08', '8厚植物纤维水泥基挂板', '10', '55', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '捆装', '无', '2.22000', '3000', '190', '0', '8', '0', '1', '2020-02-24', '1', '2020-03-13');
INSERT INTO `sp_material` VALUES ('171', '8', '16', '外墙底漆', 'TL-WQ-WZ-01', 'TL', 'WQ', 'WZ', '01', '外墙底漆', '10', '58', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', 'm2', '10KG/桶', '桶装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('172', '8', '16', '外墙面漆', 'TL-WQ-WZ-02', 'TL', 'WQ', 'WZ', '02', '外墙面漆', '10', '60', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', 'm2', '10KG/桶', '桶装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('173', '8', '17', '石膏板（外墙内侧）', 'SGB-WQ-NZ-12', 'SGB', 'WQ', 'NZ', '12', '普通纸面石膏板/12厚', '5', '2', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '无', '捆装', '0.28000', '3000', '1200', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('174', '8', '17', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-10', 'GSG', 'WQ', 'NZ', '10', '硅酸钙板/10厚', '5', '6', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.35000', '2400', '1200', '0', '10', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('175', '8', '17', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-75', 'BLM', 'WQ', 'BW', '75', '单面铝箔玻璃棉毡/16KG/立方/75厚', '5', '12', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', 'm2', '卷', '捆装', '1.00000', '0', '0', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('176', '8', '17', 'OSB结构板（外墙）', 'OSB-WQ-JG-09', 'OSB', 'WQ', 'JG', '09', 'OSB板/结构三级/9厚', '10', '26', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '9', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('177', '8', '17', '防潮纸（外墙）', 'FCZ-WQ-FS-035', 'FCZ', 'WQ', 'FS', '035', '防潮纸/0.35厚', '5', '32', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', 'm2', '卷', '无', '1.00000', '15000', '1000', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('178', '8', '17', 'XPS保温板（外墙）', 'XPS-WQ-BW-80B1', 'XPS', 'WQ', 'BW', '80B1', '挤塑聚苯保温板/B1级/80厚', '5', '45', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('179', '8', '17', '防腐木龙骨（外墙）', 'MF-WQ-WZ-Z', 'MF', 'WQ', 'WZ', 'Z', '防腐木方/樟子松', '5', '50', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('180', '8', '17', '外墙挂板', 'WQB-WQ-WZ-08', 'WQB', 'WQ', 'WZ', '08', '8厚植物纤维水泥基挂板', '10', '55', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '捆装', '无', '2.22000', '3000', '190', '0', '8', '0', '1', '2020-02-24', '1', '2020-03-13');
INSERT INTO `sp_material` VALUES ('181', '8', '17', '外墙底漆', 'TL-WQ-WZ-01', 'TL', 'WQ', 'WZ', '01', '外墙底漆', '10', '58', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', 'm2', '10KG/桶', '桶装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('182', '8', '17', '外墙面漆', 'TL-WQ-WZ-02', 'TL', 'WQ', 'WZ', '02', '外墙面漆', '10', '60', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', 'm2', '10KG/桶', '桶装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('183', '8', '55', '石膏板（外墙内侧）', 'SGB-WQ-NZ-12', 'SGB', 'WQ', 'NZ', '12', '普通纸面石膏板/12厚', '5', '2', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '无', '捆装', '0.28000', '3000', '1200', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('184', '8', '55', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-10', 'GSG', 'WQ', 'NZ', '10', '硅酸钙板/10厚', '5', '6', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.35000', '2400', '1200', '0', '10', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('185', '8', '55', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-75', 'BLM', 'WQ', 'BW', '75', '单面铝箔玻璃棉毡/16KG/立方/75厚', '5', '12', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', 'm2', '卷', '捆装', '1.00000', '0', '0', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('186', '8', '55', 'OSB结构板（外墙）', 'OSB-WQ-JG-09', 'OSB', 'WQ', 'JG', '09', 'OSB板/结构三级/9厚', '10', '26', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '9', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('187', '8', '55', '防潮纸（外墙）', 'FCZ-WQ-FS-035', 'FCZ', 'WQ', 'FS', '035', '防潮纸/0.35厚', '5', '32', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', 'm2', '卷', '无', '1.00000', '15000', '1000', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('188', '8', '55', '岩棉保温板（外墙）', 'YM-WQ-BW-30', 'YM', 'WQ', 'BW', '30', '岩棉保温板/A级/30厚', '5', '36', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '30', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('189', '8', '55', '防腐木龙骨（外墙）', 'MF-WQ-WZ-Z', 'MF', 'WQ', 'WZ', 'Z', '防腐木方/樟子松', '5', '50', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('190', '8', '55', '外墙挂板', 'WQB-WQ-WZ-08', 'WQB', 'WQ', 'WZ', '08', '8厚植物纤维水泥基挂板', '10', '55', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '捆装', '无', '2.22000', '3000', '190', '0', '8', '0', '1', '2020-02-24', '1', '2020-03-13');
INSERT INTO `sp_material` VALUES ('191', '8', '55', '外墙底漆', 'TL-WQ-WZ-01', 'TL', 'WQ', 'WZ', '01', '外墙底漆', '10', '58', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', 'm2', '10KG/桶', '桶装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('192', '8', '55', '外墙面漆', 'TL-WQ-WZ-02', 'TL', 'WQ', 'WZ', '02', '外墙面漆', '10', '60', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', 'm2', '10KG/桶', '桶装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('193', '8', '56', '石膏板（外墙内侧）', 'SGB-WQ-NZ-12', 'SGB', 'WQ', 'NZ', '12', '普通纸面石膏板/12厚', '5', '2', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '无', '捆装', '0.28000', '3000', '1200', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('194', '8', '56', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-10', 'GSG', 'WQ', 'NZ', '10', '硅酸钙板/10厚', '5', '6', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.35000', '2400', '1200', '0', '10', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('195', '8', '56', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-75', 'BLM', 'WQ', 'BW', '75', '单面铝箔玻璃棉毡/16KG/立方/75厚', '5', '12', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', 'm2', '卷', '捆装', '1.00000', '0', '0', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('196', '8', '56', 'OSB结构板（外墙）', 'OSB-WQ-JG-09', 'OSB', 'WQ', 'JG', '09', 'OSB板/结构三级/9厚', '10', '26', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '9', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('197', '8', '56', '防潮纸（外墙）', 'FCZ-WQ-FS-035', 'FCZ', 'WQ', 'FS', '035', '防潮纸/0.35厚', '5', '32', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', 'm2', '卷', '无', '1.00000', '15000', '1000', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('198', '8', '56', '岩棉保温板（外墙）', 'YM-WQ-BW-50', 'YM', 'WQ', 'BW', '50', '岩棉保温板/A级/50厚', '5', '36', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('199', '8', '56', '防腐木龙骨（外墙）', 'MF-WQ-WZ-Z', 'MF', 'WQ', 'WZ', 'Z', '防腐木方/樟子松', '5', '50', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('200', '8', '56', '外墙挂板', 'WQB-WQ-WZ-08', 'WQB', 'WQ', 'WZ', '08', '8厚植物纤维水泥基挂板', '10', '55', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '捆装', '无', '2.22000', '3000', '190', '0', '8', '0', '1', '2020-02-24', '1', '2020-03-13');
INSERT INTO `sp_material` VALUES ('201', '8', '56', '外墙底漆', 'TL-WQ-WZ-01', 'TL', 'WQ', 'WZ', '01', '外墙底漆', '10', '58', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', 'm2', '10KG/桶', '桶装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('202', '8', '56', '外墙面漆', 'TL-WQ-WZ-02', 'TL', 'WQ', 'WZ', '02', '外墙面漆', '10', '60', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', 'm2', '10KG/桶', '桶装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('203', '8', '57', '石膏板（外墙内侧）', 'SGB-WQ-NZ-12', 'SGB', 'WQ', 'NZ', '12', '普通纸面石膏板/12厚', '5', '2', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '无', '捆装', '0.28000', '3000', '1200', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('204', '8', '57', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-10', 'GSG', 'WQ', 'NZ', '10', '硅酸钙板/10厚', '5', '6', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.35000', '2400', '1200', '0', '10', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('205', '8', '57', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-75', 'BLM', 'WQ', 'BW', '75', '单面铝箔玻璃棉毡/16KG/立方/75厚', '5', '12', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', 'm2', '卷', '捆装', '1.00000', '0', '0', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('206', '8', '57', 'OSB结构板（外墙）', 'OSB-WQ-JG-09', 'OSB', 'WQ', 'JG', '09', 'OSB板/结构三级/9厚', '10', '26', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '9', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('207', '8', '57', '防潮纸（外墙）', 'FCZ-WQ-FS-035', 'FCZ', 'WQ', 'FS', '035', '防潮纸/0.35厚', '5', '32', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', 'm2', '卷', '无', '1.00000', '15000', '1000', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('208', '8', '57', '岩棉保温板（外墙）', 'YM-WQ-BW-80', 'YM', 'WQ', 'BW', '80', '岩棉保温板/A级/80厚', '5', '36', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('209', '8', '57', '防腐木龙骨（外墙）', 'MF-WQ-WZ-Z', 'MF', 'WQ', 'WZ', 'Z', '防腐木方/樟子松', '5', '50', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('210', '8', '57', '外墙挂板', 'WQB-WQ-WZ-08', 'WQB', 'WQ', 'WZ', '08', '8厚植物纤维水泥基挂板', '10', '55', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '捆装', '无', '2.22000', '3000', '190', '0', '8', '0', '1', '2020-02-24', '1', '2020-03-13');
INSERT INTO `sp_material` VALUES ('211', '8', '57', '外墙底漆', 'TL-WQ-WZ-01', 'TL', 'WQ', 'WZ', '01', '外墙底漆', '10', '58', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', 'm2', '10KG/桶', '桶装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('212', '8', '57', '外墙面漆', 'TL-WQ-WZ-02', 'TL', 'WQ', 'WZ', '02', '外墙面漆', '10', '60', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', 'm2', '10KG/桶', '桶装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('213', '8', '58', '石膏板（外墙内侧）', 'SGB-WQ-NZ-12', 'SGB', 'WQ', 'NZ', '12', '普通纸面石膏板/12厚', '5', '2', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '无', '捆装', '0.28000', '3000', '1200', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('214', '8', '58', '石膏板（外墙内侧）', 'SGB-WQ-NZ-FH15', 'SGB', 'WQ', 'NZ', 'FH15', '防火石膏板/15厚', '5', '4', '0', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('215', '8', '58', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-10', 'GSG', 'WQ', 'NZ', '10', '硅酸钙板/10厚', '5', '6', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.35000', '2400', '1200', '0', '10', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('216', '8', '58', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-12', 'GSG', 'WQ', 'NZ', '12', '硅酸钙板/12厚', '5', '8', '0', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('217', '8', '58', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-15', 'GSG', 'WQ', 'NZ', '15', '硅酸钙板/15厚', '5', '10', '0', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('218', '8', '58', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-75', 'BLM', 'WQ', 'BW', '75', '单面铝箔玻璃棉毡/16KG/立方/75厚', '5', '12', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', 'm2', '卷', '捆装', '1.00000', '0', '0', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('219', '8', '58', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-100', 'BLM', 'WQ', 'BW', '100', '单面铝箔玻璃棉毡/16KG/立方/100厚', '5', '14', '0', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('220', '8', '58', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-60', 'YM', 'WQ', 'BW', '60', '岩棉板/100KG/立方/60厚', '5', '16', '0', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('221', '8', '58', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-70', 'YM', 'WQ', 'BW', '70', '岩棉板/100KG/立方/70厚', '5', '18', '0', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('222', '8', '58', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-50', 'YM', 'WQ', 'BW', '50', '岩棉板/100KG/立方/50厚', '5', '20', '0', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('223', '8', '58', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-80', 'YM', 'WQ', 'BW', '80', '岩棉板/100KG/立方/80厚', '5', '22', '0', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('224', '8', '58', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-100', 'YM', 'WQ', 'BW', '100', '岩棉板/100KG/立方/100厚', '5', '24', '0', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('225', '8', '58', 'OSB结构板（外墙）', 'OSB-WQ-JG-09', 'OSB', 'WQ', 'JG', '09', 'OSB板/结构三级/9厚', '10', '26', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '9', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('226', '8', '58', 'OSB结构板（外墙）', 'OSB-WQ-JG-12', 'OSB', 'WQ', 'JG', '12', 'OSB板/结构三级/12厚', '10', '28', '0', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('227', '8', '58', 'OSB结构板（外墙）', 'OSB-WQ-JG-15', 'OSB', 'WQ', 'JG', '15', 'OSB板/结构三级/15厚', '10', '30', '0', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('228', '8', '58', '防潮纸（外墙）', 'FCZ-WQ-FS-035', 'FCZ', 'WQ', 'FS', '035', '防潮纸/0.35厚', '5', '32', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', 'm2', '卷', '无', '1.00000', '15000', '1000', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('229', '8', '58', '防潮纸（外墙）', 'FCZ-WQ-FS-036', 'FCZ', 'WQ', 'FS', '036', '防潮纸/0.5厚', '5', '34', '0', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('230', '8', '58', 'XPS保温板（外墙）', 'XPS-WQ-BW-30B1', 'XPS', 'WQ', 'BW', '30B1', '挤塑聚苯保温板/B1级/30厚', '5', '36', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '30', '0', '1', '2020-02-24', '1', '2020-02-24');
INSERT INTO `sp_material` VALUES ('231', '8', '58', 'XPS保温板（外墙）', 'XPS-WQ-BW-50B1', 'XPS', 'WQ', 'BW', '50B1', '挤塑聚苯保温板/B1级/50厚', '5', '38', '0', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '散装', '袋装', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('232', '8', '58', 'XPS保温板（外墙）', 'XPS-WQ-BW-60B1', 'XPS', 'WQ', 'BW', '60B1', '挤塑聚苯保温板/B1级/60厚', '5', '42', '0', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('233', '8', '58', 'XPS保温板（外墙）', 'XPS-WQ-BW-80B1', 'XPS', 'WQ', 'BW', '80B1', '挤塑聚苯保温板/B1级/80厚', '5', '45', '0', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('234', '8', '58', '防腐木龙骨（外墙）', 'MF-WQ-WZ-Z', 'MF', 'WQ', 'WZ', 'Z', '防腐木方/樟子松', '5', '50', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('235', '8', '58', '外墙挂板', 'WQB-WQ-WZ-16', 'WQB', 'WQ', 'WZ', '16', '16厚植物纤维水泥基挂板', '10', '60', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '散装', '捆装', '0.73000', '3030', '450', '0', '16', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('236', '8', '58', '外墙板挂件', 'PJ-WQB-WZ-01', 'PJ', 'WQB', 'WZ', '01', '铝合金挂件', '5', '65', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('237', '8', '58', '外墙板凸型材', 'PJ-WQB-WZ-02', 'PJ', 'WQB', 'WZ', '02', '铝合金凸型材', '5', '70', '0', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('238', '8', '58', '外墙板泡沫条', 'PJ-WQB-WZ-03', 'PJ', 'WQB', 'WZ', '03', '泡沫条', '5', '72', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('239', '8', '59', '石膏板（外墙内侧）', 'SGB-WQ-NZ-12', 'SGB', 'WQ', 'NZ', '12', '普通纸面石膏板/12厚', '5', '2', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '无', '捆装', '0.28000', '3000', '1200', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('240', '8', '59', '石膏板（外墙内侧）', 'SGB-WQ-NZ-FH15', 'SGB', 'WQ', 'NZ', 'FH15', '防火石膏板/15厚', '5', '4', '0', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('241', '8', '59', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-10', 'GSG', 'WQ', 'NZ', '10', '硅酸钙板/10厚', '5', '6', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.35000', '2400', '1200', '0', '10', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('242', '8', '59', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-12', 'GSG', 'WQ', 'NZ', '12', '硅酸钙板/12厚', '5', '8', '0', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('243', '8', '59', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-15', 'GSG', 'WQ', 'NZ', '15', '硅酸钙板/15厚', '5', '10', '0', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('244', '8', '59', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-75', 'BLM', 'WQ', 'BW', '75', '单面铝箔玻璃棉毡/16KG/立方/75厚', '5', '12', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', 'm2', '卷', '捆装', '1.00000', '0', '0', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('245', '8', '59', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-100', 'BLM', 'WQ', 'BW', '100', '单面铝箔玻璃棉毡/16KG/立方/100厚', '5', '14', '0', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('246', '8', '59', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-60', 'YM', 'WQ', 'BW', '60', '岩棉板/100KG/立方/60厚', '5', '16', '0', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('247', '8', '59', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-70', 'YM', 'WQ', 'BW', '70', '岩棉板/100KG/立方/70厚', '5', '18', '0', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('248', '8', '59', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-50', 'YM', 'WQ', 'BW', '50', '岩棉板/100KG/立方/50厚', '5', '20', '0', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('249', '8', '59', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-80', 'YM', 'WQ', 'BW', '80', '岩棉板/100KG/立方/80厚', '5', '22', '0', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('250', '8', '59', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-100', 'YM', 'WQ', 'BW', '100', '岩棉板/100KG/立方/100厚', '5', '24', '0', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('251', '8', '59', 'OSB结构板（外墙）', 'OSB-WQ-JG-09', 'OSB', 'WQ', 'JG', '09', 'OSB板/结构三级/9厚', '10', '26', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '9', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('252', '8', '59', 'OSB结构板（外墙）', 'OSB-WQ-JG-12', 'OSB', 'WQ', 'JG', '12', 'OSB板/结构三级/12厚', '10', '28', '0', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('253', '8', '59', 'OSB结构板（外墙）', 'OSB-WQ-JG-15', 'OSB', 'WQ', 'JG', '15', 'OSB板/结构三级/15厚', '10', '30', '0', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('254', '8', '59', '防潮纸（外墙）', 'FCZ-WQ-FS-035', 'FCZ', 'WQ', 'FS', '035', '防潮纸/0.35厚', '5', '32', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', 'm2', '卷', '无', '1.00000', '15000', '1000', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('255', '8', '59', '防潮纸（外墙）', 'FCZ-WQ-FS-036', 'FCZ', 'WQ', 'FS', '036', '防潮纸/0.5厚', '5', '34', '0', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('256', '8', '59', 'XPS保温板（外墙）', 'XPS-WQ-BW-30B1', 'XPS', 'WQ', 'BW', '30B1', '挤塑聚苯保温板/B1级/30厚', '5', '36', '0', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '30', '0', '1', '2020-02-24', '1', '2020-02-24');
INSERT INTO `sp_material` VALUES ('257', '8', '59', 'XPS保温板（外墙）', 'XPS-WQ-BW-50B1', 'XPS', 'WQ', 'BW', '50B1', '挤塑聚苯保温板/B1级/50厚', '5', '38', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '散装', '袋装', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('258', '8', '59', 'XPS保温板（外墙）', 'XPS-WQ-BW-60B1', 'XPS', 'WQ', 'BW', '60B1', '挤塑聚苯保温板/B1级/60厚', '5', '42', '0', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('259', '8', '59', 'XPS保温板（外墙）', 'XPS-WQ-BW-80B1', 'XPS', 'WQ', 'BW', '80B1', '挤塑聚苯保温板/B1级/80厚', '5', '45', '0', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('260', '8', '59', '防腐木龙骨（外墙）', 'MF-WQ-WZ-Z', 'MF', 'WQ', 'WZ', 'Z', '防腐木方/樟子松', '5', '50', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('261', '8', '59', '外墙挂板', 'WQB-WQ-WZ-16', 'WQB', 'WQ', 'WZ', '16', '16厚植物纤维水泥基挂板', '10', '60', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', 'm2', '张', '散装', '捆装', '0.73000', '3030', '450', '0', '16', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('262', '8', '59', '外墙板挂件', 'PJ-WQB-WZ-01', 'PJ', 'WQB', 'WZ', '01', '铝合金挂件', '5', '65', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('263', '8', '59', '外墙板凸型材', 'PJ-WQB-WZ-02', 'PJ', 'WQB', 'WZ', '02', '铝合金凸型材', '5', '70', '0', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('264', '8', '59', '外墙板泡沫条', 'PJ-WQB-WZ-03', 'PJ', 'WQB', 'WZ', '03', '泡沫条', '5', '72', '1', '1', '超管', '2020-02-13', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('265', '8', '60', '石膏板（外墙内侧）', 'SGB-WQ-NZ-12', 'SGB', 'WQ', 'NZ', '12', '普通纸面石膏板/12厚', '5', '2', '1', '1', '超管', '2020-02-14', '2020-02-14', null, null, 'm2', '张', '无', '捆装', '0.28000', '3000', '1200', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('266', '8', '60', '石膏板（外墙内侧）', 'SGB-WQ-NZ-FH15', 'SGB', 'WQ', 'NZ', 'FH15', '防火石膏板/15厚', '5', '4', '0', '1', '超管', '2020-02-14', '2020-02-14', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('267', '8', '60', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-10', 'GSG', 'WQ', 'NZ', '10', '硅酸钙板/10厚', '5', '6', '1', '1', '超管', '2020-02-14', '2020-02-14', null, null, 'm2', '张', '散装', '无', '0.35000', '2400', '1200', '0', '10', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('268', '8', '60', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-12', 'GSG', 'WQ', 'NZ', '12', '硅酸钙板/12厚', '5', '8', '0', '1', '超管', '2020-02-14', '2020-02-14', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('269', '8', '60', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-15', 'GSG', 'WQ', 'NZ', '15', '硅酸钙板/15厚', '5', '10', '0', '1', '超管', '2020-02-14', '2020-02-14', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('270', '8', '60', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-75', 'BLM', 'WQ', 'BW', '75', '单面铝箔玻璃棉毡/16KG/立方/75厚', '5', '12', '1', '1', '超管', '2020-02-14', '2020-02-14', null, null, 'm2', 'm2', '卷', '捆装', '1.00000', '0', '0', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('271', '8', '60', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-100', 'BLM', 'WQ', 'BW', '100', '单面铝箔玻璃棉毡/16KG/立方/100厚', '5', '14', '0', '1', '超管', '2020-02-14', '2020-02-14', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('272', '8', '60', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-60', 'YM', 'WQ', 'BW', '60', '岩棉板/100KG/立方/60厚', '5', '16', '0', '1', '超管', '2020-02-14', '2020-02-14', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('273', '8', '60', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-70', 'YM', 'WQ', 'BW', '70', '岩棉板/100KG/立方/70厚', '5', '18', '0', '1', '超管', '2020-02-14', '2020-02-14', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('274', '8', '60', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-50', 'YM', 'WQ', 'BW', '50', '岩棉板/100KG/立方/50厚', '5', '20', '0', '1', '超管', '2020-02-14', '2020-02-14', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('275', '8', '60', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-80', 'YM', 'WQ', 'BW', '80', '岩棉板/100KG/立方/80厚', '5', '22', '0', '1', '超管', '2020-02-14', '2020-02-14', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('276', '8', '60', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-100', 'YM', 'WQ', 'BW', '100', '岩棉板/100KG/立方/100厚', '5', '24', '0', '1', '超管', '2020-02-14', '2020-02-14', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('277', '8', '60', 'OSB结构板（外墙）', 'OSB-WQ-JG-09', 'OSB', 'WQ', 'JG', '09', 'OSB板/结构三级/9厚', '10', '26', '1', '1', '超管', '2020-02-14', '2020-02-14', null, null, 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '9', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('278', '8', '60', 'OSB结构板（外墙）', 'OSB-WQ-JG-12', 'OSB', 'WQ', 'JG', '12', 'OSB板/结构三级/12厚', '10', '28', '0', '1', '超管', '2020-02-14', '2020-02-14', null, null, 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('279', '8', '60', 'OSB结构板（外墙）', 'OSB-WQ-JG-15', 'OSB', 'WQ', 'JG', '15', 'OSB板/结构三级/15厚', '10', '30', '0', '1', '超管', '2020-02-14', '2020-02-14', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('280', '8', '60', '防潮纸（外墙）', 'FCZ-WQ-FS-035', 'FCZ', 'WQ', 'FS', '035', '防潮纸/0.35厚', '5', '32', '1', '1', '超管', '2020-02-14', '2020-02-14', null, null, 'm2', 'm2', '卷', '无', '1.00000', '15000', '1000', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('281', '8', '60', '防潮纸（外墙）', 'FCZ-WQ-FS-036', 'FCZ', 'WQ', 'FS', '036', '防潮纸/0.5厚', '5', '34', '0', '1', '超管', '2020-02-14', '2020-02-14', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('282', '8', '60', 'XPS保温板（外墙）', 'XPS-WQ-BW-30B1', 'XPS', 'WQ', 'BW', '30B1', '挤塑聚苯保温板/B1级/30厚', '5', '36', '0', '1', '超管', '2020-02-14', '2020-02-14', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '30', '0', '1', '2020-02-24', '1', '2020-02-24');
INSERT INTO `sp_material` VALUES ('283', '8', '60', 'XPS保温板（外墙）', 'XPS-WQ-BW-50B1', 'XPS', 'WQ', 'BW', '50B1', '挤塑聚苯保温板/B1级/50厚', '5', '38', '0', '1', '超管', '2020-02-14', '2020-02-14', null, null, 'm2', '张', '散装', '袋装', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('284', '8', '60', 'XPS保温板（外墙）', 'XPS-WQ-BW-60B1', 'XPS', 'WQ', 'BW', '60B1', '挤塑聚苯保温板/B1级/60厚', '5', '42', '1', '1', '超管', '2020-02-14', '2020-02-14', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('285', '8', '60', 'XPS保温板（外墙）', 'XPS-WQ-BW-80B1', 'XPS', 'WQ', 'BW', '80B1', '挤塑聚苯保温板/B1级/80厚', '5', '45', '0', '1', '超管', '2020-02-14', '2020-02-14', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('286', '8', '60', '防腐木龙骨（外墙）', 'MF-WQ-WZ-Z', 'MF', 'WQ', 'WZ', 'Z', '防腐木方/樟子松', '5', '50', '1', '1', '超管', '2020-02-14', '2020-02-14', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('287', '8', '60', '外墙挂板', 'WQB-WQ-WZ-16', 'WQB', 'WQ', 'WZ', '16', '16厚植物纤维水泥基挂板', '10', '60', '1', '1', '超管', '2020-02-14', '2020-02-14', null, null, 'm2', '张', '散装', '捆装', '0.73000', '3030', '450', '0', '16', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('288', '8', '60', '外墙板挂件', 'PJ-WQB-WZ-01', 'PJ', 'WQB', 'WZ', '01', '铝合金挂件', '5', '65', '1', '1', '超管', '2020-02-14', '2020-02-14', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('289', '8', '60', '外墙板凸型材', 'PJ-WQB-WZ-02', 'PJ', 'WQB', 'WZ', '02', '铝合金凸型材', '5', '70', '0', '1', '超管', '2020-02-14', '2020-02-14', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('290', '8', '60', '外墙板泡沫条', 'PJ-WQB-WZ-03', 'PJ', 'WQB', 'WZ', '03', '泡沫条', '5', '72', '1', '1', '超管', '2020-02-14', '2020-02-14', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('291', '8', '61', '石膏板（外墙内侧）', 'SGB-WQ-NZ-12', 'SGB', 'WQ', 'NZ', '12', '普通纸面石膏板/12厚', '5', '2', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '无', '捆装', '0.28000', '3000', '1200', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('292', '8', '61', '石膏板（外墙内侧）', 'SGB-WQ-NZ-FH15', 'SGB', 'WQ', 'NZ', 'FH15', '防火石膏板/15厚', '5', '4', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('293', '8', '61', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-10', 'GSG', 'WQ', 'NZ', '10', '硅酸钙板/10厚', '5', '6', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.35000', '2400', '1200', '0', '10', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('294', '8', '61', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-12', 'GSG', 'WQ', 'NZ', '12', '硅酸钙板/12厚', '5', '8', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('295', '8', '61', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-15', 'GSG', 'WQ', 'NZ', '15', '硅酸钙板/15厚', '5', '10', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('296', '8', '61', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-75', 'BLM', 'WQ', 'BW', '75', '单面铝箔玻璃棉毡/16KG/立方/75厚', '5', '12', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', 'm2', '卷', '捆装', '1.00000', '0', '0', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('297', '8', '61', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-100', 'BLM', 'WQ', 'BW', '100', '单面铝箔玻璃棉毡/16KG/立方/100厚', '5', '14', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('298', '8', '61', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-60', 'YM', 'WQ', 'BW', '60', '岩棉板/100KG/立方/60厚', '5', '16', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('299', '8', '61', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-70', 'YM', 'WQ', 'BW', '70', '岩棉板/100KG/立方/70厚', '5', '18', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('300', '8', '61', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-50', 'YM', 'WQ', 'BW', '50', '岩棉板/100KG/立方/50厚', '5', '20', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('301', '8', '61', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-80', 'YM', 'WQ', 'BW', '80', '岩棉板/100KG/立方/80厚', '5', '22', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('302', '8', '61', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-100', 'YM', 'WQ', 'BW', '100', '岩棉板/100KG/立方/100厚', '5', '24', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('303', '8', '61', 'OSB结构板（外墙）', 'OSB-WQ-JG-09', 'OSB', 'WQ', 'JG', '09', 'OSB板/结构三级/9厚', '10', '26', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '9', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('304', '8', '61', 'OSB结构板（外墙）', 'OSB-WQ-JG-12', 'OSB', 'WQ', 'JG', '12', 'OSB板/结构三级/12厚', '10', '28', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('305', '8', '61', 'OSB结构板（外墙）', 'OSB-WQ-JG-15', 'OSB', 'WQ', 'JG', '15', 'OSB板/结构三级/15厚', '10', '30', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('306', '8', '61', '防潮纸（外墙）', 'FCZ-WQ-FS-035', 'FCZ', 'WQ', 'FS', '035', '防潮纸/0.35厚', '5', '32', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', 'm2', '卷', '无', '1.00000', '15000', '1000', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('307', '8', '61', '防潮纸（外墙）', 'FCZ-WQ-FS-036', 'FCZ', 'WQ', 'FS', '036', '防潮纸/0.5厚', '5', '34', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('308', '8', '61', 'XPS保温板（外墙）', 'XPS-WQ-BW-30B1', 'XPS', 'WQ', 'BW', '30B1', '挤塑聚苯保温板/B1级/30厚', '5', '36', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '30', '0', '1', '2020-02-24', '1', '2020-02-24');
INSERT INTO `sp_material` VALUES ('309', '8', '61', 'XPS保温板（外墙）', 'XPS-WQ-BW-50B1', 'XPS', 'WQ', 'BW', '50B1', '挤塑聚苯保温板/B1级/50厚', '5', '38', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '袋装', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('310', '8', '61', 'XPS保温板（外墙）', 'XPS-WQ-BW-60B1', 'XPS', 'WQ', 'BW', '60B1', '挤塑聚苯保温板/B1级/60厚', '5', '42', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('311', '8', '61', 'XPS保温板（外墙）', 'XPS-WQ-BW-80B1', 'XPS', 'WQ', 'BW', '80B1', '挤塑聚苯保温板/B1级/80厚', '5', '45', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('312', '8', '61', '防腐木龙骨（外墙）', 'MF-WQ-WZ-Z', 'MF', 'WQ', 'WZ', 'Z', '防腐木方/樟子松', '5', '50', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('313', '8', '61', '外墙挂板', 'WQB-WQ-WZ-16', 'WQB', 'WQ', 'WZ', '16', '16厚植物纤维水泥基挂板', '10', '60', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '捆装', '0.73000', '3030', '450', '0', '16', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('314', '8', '61', '外墙板挂件', 'PJ-WQB-WZ-01', 'PJ', 'WQB', 'WZ', '01', '铝合金挂件', '5', '65', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('315', '8', '61', '外墙板凸型材', 'PJ-WQB-WZ-02', 'PJ', 'WQB', 'WZ', '02', '铝合金凸型材', '5', '70', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('316', '8', '61', '外墙板泡沫条', 'PJ-WQB-WZ-03', 'PJ', 'WQB', 'WZ', '03', '泡沫条', '5', '72', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('317', '8', '62', '石膏板（外墙内侧）', 'SGB-WQ-NZ-12', 'SGB', 'WQ', 'NZ', '12', '普通纸面石膏板/12厚', '5', '2', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '无', '捆装', '0.28000', '3000', '1200', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('318', '8', '62', '石膏板（外墙内侧）', 'SGB-WQ-NZ-FH15', 'SGB', 'WQ', 'NZ', 'FH15', '防火石膏板/15厚', '5', '4', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('319', '8', '62', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-10', 'GSG', 'WQ', 'NZ', '10', '硅酸钙板/10厚', '5', '6', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.35000', '2400', '1200', '0', '10', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('320', '8', '62', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-12', 'GSG', 'WQ', 'NZ', '12', '硅酸钙板/12厚', '5', '8', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('321', '8', '62', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-15', 'GSG', 'WQ', 'NZ', '15', '硅酸钙板/15厚', '5', '10', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('322', '8', '62', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-75', 'BLM', 'WQ', 'BW', '75', '单面铝箔玻璃棉毡/16KG/立方/75厚', '5', '12', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', 'm2', '卷', '捆装', '1.00000', '0', '0', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('323', '8', '62', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-100', 'BLM', 'WQ', 'BW', '100', '单面铝箔玻璃棉毡/16KG/立方/100厚', '5', '14', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('324', '8', '62', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-60', 'YM', 'WQ', 'BW', '60', '岩棉板/100KG/立方/60厚', '5', '16', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('325', '8', '62', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-70', 'YM', 'WQ', 'BW', '70', '岩棉板/100KG/立方/70厚', '5', '18', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('326', '8', '62', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-50', 'YM', 'WQ', 'BW', '50', '岩棉板/100KG/立方/50厚', '5', '20', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('327', '8', '62', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-80', 'YM', 'WQ', 'BW', '80', '岩棉板/100KG/立方/80厚', '5', '22', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('328', '8', '62', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-100', 'YM', 'WQ', 'BW', '100', '岩棉板/100KG/立方/100厚', '5', '24', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('329', '8', '62', 'OSB结构板（外墙）', 'OSB-WQ-JG-09', 'OSB', 'WQ', 'JG', '09', 'OSB板/结构三级/9厚', '10', '26', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '9', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('330', '8', '62', 'OSB结构板（外墙）', 'OSB-WQ-JG-12', 'OSB', 'WQ', 'JG', '12', 'OSB板/结构三级/12厚', '10', '28', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('331', '8', '62', 'OSB结构板（外墙）', 'OSB-WQ-JG-15', 'OSB', 'WQ', 'JG', '15', 'OSB板/结构三级/15厚', '10', '30', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('332', '8', '62', '防潮纸（外墙）', 'FCZ-WQ-FS-035', 'FCZ', 'WQ', 'FS', '035', '防潮纸/0.35厚', '5', '32', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', 'm2', '卷', '无', '1.00000', '15000', '1000', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('333', '8', '62', '防潮纸（外墙）', 'FCZ-WQ-FS-036', 'FCZ', 'WQ', 'FS', '036', '防潮纸/0.5厚', '5', '34', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('334', '8', '62', 'XPS保温板（外墙）', 'XPS-WQ-BW-30B1', 'XPS', 'WQ', 'BW', '30B1', '挤塑聚苯保温板/B1级/30厚', '5', '36', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '30', '0', '1', '2020-02-24', '1', '2020-02-24');
INSERT INTO `sp_material` VALUES ('335', '8', '62', 'XPS保温板（外墙）', 'XPS-WQ-BW-50B1', 'XPS', 'WQ', 'BW', '50B1', '挤塑聚苯保温板/B1级/50厚', '5', '38', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '袋装', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('336', '8', '62', 'XPS保温板（外墙）', 'XPS-WQ-BW-60B1', 'XPS', 'WQ', 'BW', '60B1', '挤塑聚苯保温板/B1级/60厚', '5', '42', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('337', '8', '62', 'XPS保温板（外墙）', 'XPS-WQ-BW-80B1', 'XPS', 'WQ', 'BW', '80B1', '挤塑聚苯保温板/B1级/80厚', '5', '45', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('338', '8', '62', '岩棉保温板（外墙）', 'YM-WQ-BW-30', 'YM', 'WQ', 'BW', '30', '岩棉板/120KG/立方/30厚', '5', '48', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '30', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('339', '8', '62', '防腐木龙骨（外墙）', 'MF-WQ-WZ-Z', 'MF', 'WQ', 'WZ', 'Z', '防腐木方/樟子松', '5', '50', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('340', '8', '62', '外墙挂板', 'WQB-WQ-WZ-16', 'WQB', 'WQ', 'WZ', '16', '16厚植物纤维水泥基挂板', '10', '60', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '捆装', '0.73000', '3030', '450', '0', '16', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('341', '8', '62', '外墙板挂件', 'PJ-WQB-WZ-01', 'PJ', 'WQB', 'WZ', '01', '铝合金挂件', '5', '65', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('342', '8', '62', '外墙板凸型材', 'PJ-WQB-WZ-02', 'PJ', 'WQB', 'WZ', '02', '铝合金凸型材', '5', '70', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('343', '8', '62', '外墙板泡沫条', 'PJ-WQB-WZ-03', 'PJ', 'WQB', 'WZ', '03', '泡沫条', '5', '72', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('344', '8', '63', '石膏板（外墙内侧）', 'SGB-WQ-NZ-12', 'SGB', 'WQ', 'NZ', '12', '普通纸面石膏板/12厚', '5', '2', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '无', '捆装', '0.28000', '3000', '1200', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('345', '8', '63', '石膏板（外墙内侧）', 'SGB-WQ-NZ-FH15', 'SGB', 'WQ', 'NZ', 'FH15', '防火石膏板/15厚', '5', '4', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('346', '8', '63', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-10', 'GSG', 'WQ', 'NZ', '10', '硅酸钙板/10厚', '5', '6', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.35000', '2400', '1200', '0', '10', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('347', '8', '63', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-12', 'GSG', 'WQ', 'NZ', '12', '硅酸钙板/12厚', '5', '8', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('348', '8', '63', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-15', 'GSG', 'WQ', 'NZ', '15', '硅酸钙板/15厚', '5', '10', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('349', '8', '63', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-75', 'BLM', 'WQ', 'BW', '75', '单面铝箔玻璃棉毡/16KG/立方/75厚', '5', '12', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', 'm2', '卷', '捆装', '1.00000', '0', '0', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('350', '8', '63', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-100', 'BLM', 'WQ', 'BW', '100', '单面铝箔玻璃棉毡/16KG/立方/100厚', '5', '14', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('351', '8', '63', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-60', 'YM', 'WQ', 'BW', '60', '岩棉板/100KG/立方/60厚', '5', '16', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('352', '8', '63', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-70', 'YM', 'WQ', 'BW', '70', '岩棉板/100KG/立方/70厚', '5', '18', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('353', '8', '63', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-50', 'YM', 'WQ', 'BW', '50', '岩棉板/100KG/立方/50厚', '5', '20', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('354', '8', '63', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-80', 'YM', 'WQ', 'BW', '80', '岩棉板/100KG/立方/80厚', '5', '22', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('355', '8', '63', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-100', 'YM', 'WQ', 'BW', '100', '岩棉板/100KG/立方/100厚', '5', '24', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('356', '8', '63', 'OSB结构板（外墙）', 'OSB-WQ-JG-09', 'OSB', 'WQ', 'JG', '09', 'OSB板/结构三级/9厚', '10', '26', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '9', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('357', '8', '63', 'OSB结构板（外墙）', 'OSB-WQ-JG-12', 'OSB', 'WQ', 'JG', '12', 'OSB板/结构三级/12厚', '10', '28', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('358', '8', '63', 'OSB结构板（外墙）', 'OSB-WQ-JG-15', 'OSB', 'WQ', 'JG', '15', 'OSB板/结构三级/15厚', '10', '30', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('359', '8', '63', '防潮纸（外墙）', 'FCZ-WQ-FS-035', 'FCZ', 'WQ', 'FS', '035', '防潮纸/0.35厚', '5', '32', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', 'm2', '卷', '无', '1.00000', '15000', '1000', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('360', '8', '63', '防潮纸（外墙）', 'FCZ-WQ-FS-036', 'FCZ', 'WQ', 'FS', '036', '防潮纸/0.5厚', '5', '34', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('361', '8', '63', 'XPS保温板（外墙）', 'XPS-WQ-BW-30B1', 'XPS', 'WQ', 'BW', '30B1', '挤塑聚苯保温板/B1级/30厚', '5', '36', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '30', '0', '1', '2020-02-24', '1', '2020-02-24');
INSERT INTO `sp_material` VALUES ('362', '8', '63', 'XPS保温板（外墙）', 'XPS-WQ-BW-50B1', 'XPS', 'WQ', 'BW', '50B1', '挤塑聚苯保温板/B1级/50厚', '5', '38', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '袋装', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('363', '8', '63', 'XPS保温板（外墙）', 'XPS-WQ-BW-60B1', 'XPS', 'WQ', 'BW', '60B1', '挤塑聚苯保温板/B1级/60厚', '5', '42', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('364', '8', '63', 'XPS保温板（外墙）', 'XPS-WQ-BW-80B1', 'XPS', 'WQ', 'BW', '80B1', '挤塑聚苯保温板/B1级/80厚', '5', '45', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('365', '8', '63', '岩棉保温板（外墙）', 'YM-WQ-BW-50', 'YM', 'WQ', 'BW', '50', '岩棉板/120KG/立方/50厚', '5', '48', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('366', '8', '63', '防腐木龙骨（外墙）', 'MF-WQ-WZ-Z', 'MF', 'WQ', 'WZ', 'Z', '防腐木方/樟子松', '5', '50', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('367', '8', '63', '外墙挂板', 'WQB-WQ-WZ-16', 'WQB', 'WQ', 'WZ', '16', '16厚植物纤维水泥基挂板', '10', '60', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '捆装', '0.73000', '3030', '450', '0', '16', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('368', '8', '63', '外墙板挂件', 'PJ-WQB-WZ-01', 'PJ', 'WQB', 'WZ', '01', '铝合金挂件', '5', '65', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('369', '8', '63', '外墙板凸型材', 'PJ-WQB-WZ-02', 'PJ', 'WQB', 'WZ', '02', '铝合金凸型材', '5', '70', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('370', '8', '63', '外墙板泡沫条', 'PJ-WQB-WZ-03', 'PJ', 'WQB', 'WZ', '03', '泡沫条', '5', '72', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('371', '8', '71', '石膏板（外墙内侧）', 'SGB-WQ-NZ-12', 'SGB', 'WQ', 'NZ', '12', '普通纸面石膏板/12厚', '5', '2', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '无', '捆装', '0.28000', '3000', '1200', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('372', '8', '71', '石膏板（外墙内侧）', 'SGB-WQ-NZ-FH15', 'SGB', 'WQ', 'NZ', 'FH15', '防火石膏板/15厚', '5', '4', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('373', '8', '71', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-10', 'GSG', 'WQ', 'NZ', '10', '硅酸钙板/10厚', '5', '6', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.35000', '2400', '1200', '0', '10', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('374', '8', '71', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-12', 'GSG', 'WQ', 'NZ', '12', '硅酸钙板/12厚', '5', '8', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('375', '8', '71', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-15', 'GSG', 'WQ', 'NZ', '15', '硅酸钙板/15厚', '5', '10', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('376', '8', '71', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-75', 'BLM', 'WQ', 'BW', '75', '单面铝箔玻璃棉毡/16KG/立方/75厚', '5', '12', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', 'm2', '卷', '捆装', '1.00000', '0', '0', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('377', '8', '71', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-100', 'BLM', 'WQ', 'BW', '100', '单面铝箔玻璃棉毡/16KG/立方/100厚', '5', '14', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('378', '8', '71', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-60', 'YM', 'WQ', 'BW', '60', '岩棉板/100KG/立方/60厚', '5', '16', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('379', '8', '71', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-70', 'YM', 'WQ', 'BW', '70', '岩棉板/100KG/立方/70厚', '5', '18', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('380', '8', '71', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-50', 'YM', 'WQ', 'BW', '50', '岩棉板/100KG/立方/50厚', '5', '20', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('381', '8', '71', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-80', 'YM', 'WQ', 'BW', '80', '岩棉板/100KG/立方/80厚', '5', '22', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('382', '8', '71', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-100', 'YM', 'WQ', 'BW', '100', '岩棉板/100KG/立方/100厚', '5', '24', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('383', '8', '71', 'OSB结构板（外墙）', 'OSB-WQ-JG-09', 'OSB', 'WQ', 'JG', '09', 'OSB板/结构三级/9厚', '10', '26', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '9', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('384', '8', '71', 'OSB结构板（外墙）', 'OSB-WQ-JG-12', 'OSB', 'WQ', 'JG', '12', 'OSB板/结构三级/12厚', '10', '28', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('385', '8', '71', 'OSB结构板（外墙）', 'OSB-WQ-JG-15', 'OSB', 'WQ', 'JG', '15', 'OSB板/结构三级/15厚', '10', '30', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('386', '8', '71', '防潮纸（外墙）', 'FCZ-WQ-FS-035', 'FCZ', 'WQ', 'FS', '035', '防潮纸/0.35厚', '5', '32', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', 'm2', '卷', '无', '1.00000', '15000', '1000', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('387', '8', '71', '防潮纸（外墙）', 'FCZ-WQ-FS-036', 'FCZ', 'WQ', 'FS', '036', '防潮纸/0.5厚', '5', '34', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('388', '8', '71', 'XPS保温板（外墙）', 'XPS-WQ-BW-30B1', 'XPS', 'WQ', 'BW', '30B1', '挤塑聚苯保温板/B1级/30厚', '5', '36', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '30', '0', '1', '2020-02-24', '1', '2020-02-24');
INSERT INTO `sp_material` VALUES ('389', '8', '71', 'XPS保温板（外墙）', 'XPS-WQ-BW-50B1', 'XPS', 'WQ', 'BW', '50B1', '挤塑聚苯保温板/B1级/50厚', '5', '38', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '袋装', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('390', '8', '71', 'XPS保温板（外墙）', 'XPS-WQ-BW-60B1', 'XPS', 'WQ', 'BW', '60B1', '挤塑聚苯保温板/B1级/60厚', '5', '42', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('391', '8', '71', 'XPS保温板（外墙）', 'XPS-WQ-BW-80B1', 'XPS', 'WQ', 'BW', '80B1', '挤塑聚苯保温板/B1级/80厚', '5', '45', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('392', '8', '71', '岩棉板（外墙）', 'YM-WQ-BW-80', 'YM', 'WQ', 'BW', '80', '岩棉板/120KG/立方/80厚', '5', '48', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('393', '8', '71', '防腐木龙骨（外墙）', 'MF-WQ-WZ-Z', 'MF', 'WQ', 'WZ', 'Z', '防腐木方/樟子松', '5', '50', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('394', '8', '71', '钢板网', 'GBW-WQ-WZ-Z', 'GBW', 'WQ', 'WZ', 'Z', '钢板网', '5', '52', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('395', '8', '71', '外墙文化石', 'WHS-WQ-WZ-Z', 'WHS', 'WQ', 'WZ', 'Z', '外墙文化石', '10', '65', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('396', '8', '71', '水泥砂浆', 'SN-WQ-WZ-02', 'SN', 'WQ', 'WZ', '02', '水泥砂浆', '5', '70', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('397', '8', '71', '披水件(普通外墙勒脚)', 'PJ-WQ-WZ-01', 'PJ', 'WQ', 'WZ', '01', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '72', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('398', '8', '64', '石膏板（外墙内侧）', 'SGB-WQ-NZ-12', 'SGB', 'WQ', 'NZ', '12', '普通纸面石膏板/12厚', '5', '2', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '无', '捆装', '0.28000', '3000', '1200', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('399', '8', '64', '石膏板（外墙内侧）', 'SGB-WQ-NZ-FH15', 'SGB', 'WQ', 'NZ', 'FH15', '防火石膏板/15厚', '5', '4', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('400', '8', '64', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-10', 'GSG', 'WQ', 'NZ', '10', '硅酸钙板/10厚', '5', '6', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.35000', '2400', '1200', '0', '10', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('401', '8', '64', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-12', 'GSG', 'WQ', 'NZ', '12', '硅酸钙板/12厚', '5', '8', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('402', '8', '64', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-15', 'GSG', 'WQ', 'NZ', '15', '硅酸钙板/15厚', '5', '10', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('403', '8', '64', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-75', 'BLM', 'WQ', 'BW', '75', '单面铝箔玻璃棉毡/16KG/立方/75厚', '5', '12', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', 'm2', '卷', '捆装', '1.00000', '0', '0', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('404', '8', '64', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-100', 'BLM', 'WQ', 'BW', '100', '单面铝箔玻璃棉毡/16KG/立方/100厚', '5', '14', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('405', '8', '64', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-60', 'YM', 'WQ', 'BW', '60', '岩棉板/100KG/立方/60厚', '5', '16', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('406', '8', '64', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-70', 'YM', 'WQ', 'BW', '70', '岩棉板/100KG/立方/70厚', '5', '18', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('407', '8', '64', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-50', 'YM', 'WQ', 'BW', '50', '岩棉板/100KG/立方/50厚', '5', '20', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('408', '8', '64', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-80', 'YM', 'WQ', 'BW', '80', '岩棉板/100KG/立方/80厚', '5', '22', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('409', '8', '64', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-100', 'YM', 'WQ', 'BW', '100', '岩棉板/100KG/立方/100厚', '5', '24', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('410', '8', '64', 'OSB结构板（外墙）', 'OSB-WQ-JG-09', 'OSB', 'WQ', 'JG', '09', 'OSB板/结构三级/9厚', '10', '26', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '9', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('411', '8', '64', 'OSB结构板（外墙）', 'OSB-WQ-JG-12', 'OSB', 'WQ', 'JG', '12', 'OSB板/结构三级/12厚', '10', '28', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('412', '8', '64', 'OSB结构板（外墙）', 'OSB-WQ-JG-15', 'OSB', 'WQ', 'JG', '15', 'OSB板/结构三级/15厚', '10', '30', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('413', '8', '64', '防潮纸（外墙）', 'FCZ-WQ-FS-035', 'FCZ', 'WQ', 'FS', '035', '防潮纸/0.35厚', '5', '32', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', 'm2', '卷', '无', '1.00000', '15000', '1000', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('414', '8', '64', '防潮纸（外墙）', 'FCZ-WQ-FS-036', 'FCZ', 'WQ', 'FS', '036', '防潮纸/0.5厚', '5', '34', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('415', '8', '64', 'XPS保温板（外墙）', 'XPS-WQ-BW-30B1', 'XPS', 'WQ', 'BW', '30B1', '挤塑聚苯保温板/B1级/30厚', '5', '36', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '30', '0', '1', '2020-02-24', '1', '2020-02-24');
INSERT INTO `sp_material` VALUES ('416', '8', '64', 'XPS保温板（外墙）', 'XPS-WQ-BW-50B1', 'XPS', 'WQ', 'BW', '50B1', '挤塑聚苯保温板/B1级/50厚', '5', '38', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '袋装', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('417', '8', '64', 'XPS保温板（外墙）', 'XPS-WQ-BW-60B1', 'XPS', 'WQ', 'BW', '60B1', '挤塑聚苯保温板/B1级/60厚', '5', '42', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('418', '8', '64', 'XPS保温板（外墙）', 'XPS-WQ-BW-80B1', 'XPS', 'WQ', 'BW', '80B1', '挤塑聚苯保温板/B1级/80厚', '5', '45', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('419', '8', '64', '岩棉保温板（外墙）', 'YM-WQ-BW-80', 'YM', 'WQ', 'BW', '50', '岩棉板/120KG/立方/80厚', '5', '48', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('420', '8', '64', '防腐木龙骨（外墙）', 'MF-WQ-WZ-Z', 'MF', 'WQ', 'WZ', 'Z', '防腐木方/樟子松', '5', '50', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('421', '8', '64', '外墙挂板', 'WQB-WQ-WZ-16', 'WQB', 'WQ', 'WZ', '16', '16厚植物纤维水泥基挂板', '10', '60', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '捆装', '0.73000', '3030', '450', '0', '16', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('422', '8', '64', '外墙板挂件', 'PJ-WQB-WZ-01', 'PJ', 'WQB', 'WZ', '01', '铝合金挂件', '5', '65', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('423', '8', '64', '外墙板凸型材', 'PJ-WQB-WZ-02', 'PJ', 'WQB', 'WZ', '02', '铝合金凸型材', '5', '70', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('424', '8', '64', '外墙板泡沫条', 'PJ-WQB-WZ-03', 'PJ', 'WQB', 'WZ', '03', '泡沫条', '5', '72', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('425', '8', '65', '石膏板（外墙内侧）', 'SGB-WQ-NZ-12', 'SGB', 'WQ', 'NZ', '12', '普通纸面石膏板/12厚', '5', '2', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '无', '捆装', '0.28000', '3000', '1200', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('426', '8', '65', '石膏板（外墙内侧）', 'SGB-WQ-NZ-FH15', 'SGB', 'WQ', 'NZ', 'FH15', '防火石膏板/15厚', '5', '4', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('427', '8', '65', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-10', 'GSG', 'WQ', 'NZ', '10', '硅酸钙板/10厚', '5', '6', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.35000', '2400', '1200', '0', '10', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('428', '8', '65', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-12', 'GSG', 'WQ', 'NZ', '12', '硅酸钙板/12厚', '5', '8', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('429', '8', '65', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-15', 'GSG', 'WQ', 'NZ', '15', '硅酸钙板/15厚', '5', '10', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('430', '8', '65', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-75', 'BLM', 'WQ', 'BW', '75', '单面铝箔玻璃棉毡/16KG/立方/75厚', '5', '12', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', 'm2', '卷', '捆装', '1.00000', '0', '0', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('431', '8', '65', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-100', 'BLM', 'WQ', 'BW', '100', '单面铝箔玻璃棉毡/16KG/立方/100厚', '5', '14', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('432', '8', '65', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-60', 'YM', 'WQ', 'BW', '60', '岩棉板/100KG/立方/60厚', '5', '16', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('433', '8', '65', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-70', 'YM', 'WQ', 'BW', '70', '岩棉板/100KG/立方/70厚', '5', '18', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('434', '8', '65', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-50', 'YM', 'WQ', 'BW', '50', '岩棉板/100KG/立方/50厚', '5', '20', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('435', '8', '65', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-80', 'YM', 'WQ', 'BW', '80', '岩棉板/100KG/立方/80厚', '5', '22', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('436', '8', '65', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-100', 'YM', 'WQ', 'BW', '100', '岩棉板/100KG/立方/100厚', '5', '24', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('437', '8', '65', 'OSB结构板（外墙）', 'OSB-WQ-JG-09', 'OSB', 'WQ', 'JG', '09', 'OSB板/结构三级/9厚', '10', '26', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '9', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('438', '8', '65', 'OSB结构板（外墙）', 'OSB-WQ-JG-12', 'OSB', 'WQ', 'JG', '12', 'OSB板/结构三级/12厚', '10', '28', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('439', '8', '65', 'OSB结构板（外墙）', 'OSB-WQ-JG-15', 'OSB', 'WQ', 'JG', '15', 'OSB板/结构三级/15厚', '10', '30', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('440', '8', '65', '防潮纸（外墙）', 'FCZ-WQ-FS-035', 'FCZ', 'WQ', 'FS', '035', '防潮纸/0.35厚', '5', '32', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', 'm2', '卷', '无', '1.00000', '15000', '1000', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('441', '8', '65', '防潮纸（外墙）', 'FCZ-WQ-FS-036', 'FCZ', 'WQ', 'FS', '036', '防潮纸/0.5厚', '5', '34', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('442', '8', '65', 'XPS保温板（外墙）', 'XPS-WQ-BW-30B1', 'XPS', 'WQ', 'BW', '30B1', '挤塑聚苯保温板/B1级/30厚', '5', '36', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '30', '0', '1', '2020-02-24', '1', '2020-02-24');
INSERT INTO `sp_material` VALUES ('443', '8', '65', 'XPS保温板（外墙）', 'XPS-WQ-BW-50B1', 'XPS', 'WQ', 'BW', '50B1', '挤塑聚苯保温板/B1级/50厚', '5', '38', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '袋装', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('444', '8', '65', 'XPS保温板（外墙）', 'XPS-WQ-BW-60B1', 'XPS', 'WQ', 'BW', '60B1', '挤塑聚苯保温板/B1级/60厚', '5', '42', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('445', '8', '65', 'XPS保温板（外墙）', 'XPS-WQ-BW-80B1', 'XPS', 'WQ', 'BW', '80B1', '挤塑聚苯保温板/B1级/80厚', '5', '45', '0', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('446', '8', '65', '防腐木龙骨（外墙）', 'MF-WQ-WZ-Z', 'MF', 'WQ', 'WZ', 'Z', '防腐木方/樟子松', '5', '50', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('447', '8', '65', '钢板网', 'GBW-WQ-WZ-Z', 'GBW', 'WQ', 'WZ', 'Z', '钢板网', '10', '55', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('448', '8', '65', '外墙文化石', 'WHS-WQ-WZ-Z', 'WHS', 'WQ', 'WZ', 'Z', '外墙文化石', '10', '60', '1', '1', '超管', '2020-02-14', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('449', '9', '11', '石膏板（内墙双侧3层）', 'SGB-NQ-NZ-12', 'SGB', 'NQ', 'NZ', '12', '普通纸面石膏板/3*12厚', '10', '2', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '0.28000', '3000', '1200', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('450', '9', '11', '岩棉板（内墙龙骨内）', 'YM-NQ-BW-60', 'YM', 'NQ', 'BW', '60', '岩棉板/100KG/立方/60厚', '5', '5', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '捆装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('451', '9', '11', '岩棉板（内墙龙骨内）', 'YM-NQ-BW-80', 'YM', 'NQ', 'BW', '80', '岩棉板/100KG/立方/80厚', '5', '8', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('452', '9', '11', '玻璃棉（内墙龙骨内）', 'BLM-NQ-BW-75', 'BLM', 'NQ', 'BW', '75', '单面铝箔玻璃棉/16kg/立方/75厚', '5', '10', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '15000', '1000', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('453', '9', '11', '玻璃棉（内墙龙骨内）', 'BLM-NQ-BW-100', 'BLM', 'NQ', 'BW', '100', '单面铝箔玻璃棉/16kg/立方/100厚', '5', '12', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '15000', '1000', '0', '100', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('454', '9', '20', '硅酸钙板(内墙双面单层）', 'GSG-NQ-NZ-10', 'GSG', 'NQ', 'NZ', '10', '硅酸钙板/10厚', '5', '4', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '0.34000', '2400', '1200', '0', '10', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('455', '9', '26', '石膏板（内墙双侧单层）', 'SGB-NQ-NZ-12', 'SGB', 'NQ', 'NZ', '12', '普通纸面石膏板/12厚', '10', '2', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '0.28000', '3000', '1200', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('456', '9', '26', '硅酸钙板(内墙双面单层）', 'GSG-NQ-NZ-15', 'GSG', 'NQ', 'NZ', '15', '硅酸钙板/15厚', '5', '4', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '0.35000', '2400', '1200', '0', '15', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('457', '9', '26', '岩棉板（内墙龙骨内）', 'YM-NQ-BW-60', 'YM', 'NQ', 'BW', '60', '岩棉板/100KG/立方/60厚', '5', '5', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '捆装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('458', '9', '26', '岩棉板（内墙龙骨内）', 'YM-NQ-BW-80', 'YM', 'NQ', 'BW', '80', '岩棉板/100KG/立方/80厚', '5', '8', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('459', '9', '26', '玻璃棉（内墙龙骨内）', 'BLM-NQ-BW-75', 'BLM', 'NQ', 'BW', '75', '单面铝箔玻璃棉/16kg/立方/75厚', '5', '10', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '15000', '1000', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('460', '9', '26', '玻璃棉（内墙龙骨内）', 'BLM-NQ-BW-100', 'BLM', 'NQ', 'BW', '100', '单面铝箔玻璃棉/16kg/立方/100厚', '5', '12', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '15000', '1000', '0', '100', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('461', '9', '72', '防火石膏板（内墙双侧单层）', 'SGB-NQ-NZ-15', 'SGB', 'NQ', 'NZ', '15', '防火石膏板/15厚', '10', '2', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '0.28000', '3000', '1200', '0', '15', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('462', '9', '72', '硅酸钙板(内墙双面单层）', 'GSG-NQ-NZ-15', 'GSG', 'NQ', 'NZ', '15', '硅酸钙板/15厚', '5', '4', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '0.35000', '2400', '1200', '0', '15', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('463', '9', '72', '岩棉板（内墙龙骨内）', 'YM-NQ-BW-60', 'YM', 'NQ', 'BW', '60', '岩棉板/100KG/立方/60厚', '5', '5', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '捆装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('464', '9', '72', '岩棉板（内墙龙骨内）', 'YM-NQ-BW-80', 'YM', 'NQ', 'BW', '80', '岩棉板/100KG/立方/80厚', '5', '8', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('465', '9', '72', '玻璃棉（内墙龙骨内）', 'BLM-NQ-BW-75', 'BLM', 'NQ', 'BW', '75', '单面铝箔玻璃棉/16kg/立方/75厚', '5', '10', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '15000', '1000', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('466', '9', '72', '玻璃棉（内墙龙骨内）', 'BLM-NQ-BW-100', 'BLM', 'NQ', 'BW', '100', '单面铝箔玻璃棉/16kg/立方/100厚', '5', '12', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '15000', '1000', '0', '100', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('467', '9', '73', '石膏板（内墙双侧单层）', 'SGB-NQ-NZ-12', 'SGB', 'NQ', 'NZ', '12', '普通纸面石膏板/12厚', '10', '2', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '0.28000', '3000', '1200', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('468', '9', '73', '硅酸钙板(内墙双面单层）', 'GSG-NQ-NZ-10', 'GSG', 'NQ', 'NZ', '10', '硅酸钙板/10厚', '5', '4', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '0.34000', '2400', '1200', '0', '10', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('469', '9', '73', '岩棉板（内墙龙骨内）', 'YM-NQ-BW-60', 'YM', 'NQ', 'BW', '60', '岩棉板/100KG/立方/60厚', '5', '5', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '捆装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('470', '9', '73', '岩棉板（内墙龙骨内）', 'YM-NQ-BW-80', 'YM', 'NQ', 'BW', '80', '岩棉板/100KG/立方/80厚', '5', '8', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('471', '9', '73', '玻璃棉（内墙龙骨内）', 'BLM-NQ-BW-75', 'BLM', 'NQ', 'BW', '75', '单面铝箔玻璃棉/16kg/立方/75厚', '5', '10', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '15000', '1000', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('472', '9', '73', '玻璃棉（内墙龙骨内）', 'BLM-NQ-BW-100', 'BLM', 'NQ', 'BW', '100', '单面铝箔玻璃棉/16kg/立方/100厚', '5', '12', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '15000', '1000', '0', '100', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('473', '9', '74', '石膏板（内墙双侧单层）', 'SGB-NQ-NZ-12', 'SGB', 'NQ', 'NZ', '12', '普通纸面石膏板/12厚', '10', '2', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '0.28000', '3000', '1200', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('474', '9', '74', '硅酸钙板(内墙双面单层）', 'GSG-NQ-NZ-12', 'GSG', 'NQ', 'NZ', '12', '硅酸钙板/12厚', '5', '4', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '0.35000', '2400', '1200', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('475', '9', '74', '岩棉板（内墙龙骨内）', 'YM-NQ-BW-60', 'YM', 'NQ', 'BW', '60', '岩棉板/100KG/立方/60厚', '5', '5', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '捆装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('476', '9', '74', '岩棉板（内墙龙骨内）', 'YM-NQ-BW-80', 'YM', 'NQ', 'BW', '80', '岩棉板/100KG/立方/80厚', '5', '8', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('477', '9', '74', '玻璃棉（内墙龙骨内）', 'BLM-NQ-BW-75', 'BLM', 'NQ', 'BW', '75', '单面铝箔玻璃棉/16kg/立方/75厚', '5', '10', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '15000', '1000', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('478', '9', '74', '玻璃棉（内墙龙骨内）', 'BLM-NQ-BW-100', 'BLM', 'NQ', 'BW', '100', '单面铝箔玻璃棉/16kg/立方/100厚', '5', '12', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '15000', '1000', '0', '100', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('479', '9', '81', '石膏板（内墙双侧双层）', 'SGB-NQ-NZ-12', 'SGB', 'NQ', 'NZ', '12', '普通纸面石膏板/2*12厚', '10', '2', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '0.28000', '3000', '1200', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('480', '9', '81', '岩棉板（内墙龙骨内）', 'YM-NQ-BW-60', 'YM', 'NQ', 'BW', '60', '岩棉板/100KG/立方/60厚', '5', '5', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '捆装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('481', '9', '81', '岩棉板（内墙龙骨内）', 'YM-NQ-BW-80', 'YM', 'NQ', 'BW', '80', '岩棉板/100KG/立方/80厚', '5', '8', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('482', '9', '81', '玻璃棉（内墙龙骨内）', 'BLM-NQ-BW-75', 'BLM', 'NQ', 'BW', '75', '单面铝箔玻璃棉/16kg/立方/75厚', '5', '10', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '15000', '1000', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('483', '9', '81', '玻璃棉（内墙龙骨内）', 'BLM-NQ-BW-100', 'BLM', 'NQ', 'BW', '100', '单面铝箔玻璃棉/16kg/立方/100厚', '5', '12', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '15000', '1000', '0', '100', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('484', '9', '82', '石膏板（内墙双侧三层）', 'SGB-NQ-NZ-12', 'SGB', 'NQ', 'NZ', '12', '普通纸面石膏板/3*12厚', '10', '2', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '0.28000', '3000', '1200', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('485', '9', '82', '岩棉板（内墙龙骨内）', 'YM-NQ-BW-60', 'YM', 'NQ', 'BW', '60', '岩棉板/100KG/立方/60厚', '5', '5', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '捆装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('486', '9', '82', '岩棉板（内墙龙骨内）', 'YM-NQ-BW-80', 'YM', 'NQ', 'BW', '80', '岩棉板/100KG/立方/80厚', '5', '8', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('487', '9', '82', '玻璃棉（内墙龙骨内）', 'BLM-NQ-BW-75', 'BLM', 'NQ', 'BW', '75', '单面铝箔玻璃棉/16kg/立方/75厚', '5', '10', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '15000', '1000', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('488', '9', '82', '玻璃棉（内墙龙骨内）', 'BLM-NQ-BW-100', 'BLM', 'NQ', 'BW', '100', '单面铝箔玻璃棉/16kg/立方/100厚', '5', '12', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '15000', '1000', '0', '100', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('489', '9', '83', '石膏板（内墙双侧单层）', 'SGB-NQ-NZ-12', 'SGB', 'NQ', 'NZ', '12', '普通纸面石膏板/12厚', '10', '2', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '0.28000', '3000', '1200', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('490', '9', '83', '硅酸钙板(内墙双面单层）', 'GSG-NQ-NZ-10', 'GSG', 'NQ', 'NZ', '10', '硅酸钙板/10厚', '5', '4', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '0.34000', '2400', '1200', '0', '10', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('491', '9', '83', '岩棉板（内墙龙骨内）', 'YM-NQ-BW-60', 'YM', 'NQ', 'BW', '60', '岩棉板/100KG/立方/60厚', '5', '5', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '捆装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('492', '9', '83', '岩棉板（内墙龙骨内）', 'YM-NQ-BW-80', 'YM', 'NQ', 'BW', '80', '岩棉板/100KG/立方/80厚', '5', '8', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('493', '9', '83', '玻璃棉（内墙龙骨内）', 'BLM-NQ-BW-75', 'BLM', 'NQ', 'BW', '75', '单面铝箔玻璃棉/16kg/立方/75厚', '5', '10', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '15000', '1000', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('494', '9', '83', '玻璃棉（内墙龙骨内）', 'BLM-NQ-BW-100', 'BLM', 'NQ', 'BW', '100', '单面铝箔玻璃棉/16kg/立方/100厚', '5', '12', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '15000', '1000', '0', '100', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('495', '9', '84', '石膏板（内墙双侧单层）', 'SGB-NQ-NZ-12', 'SGB', 'NQ', 'NZ', '12', '普通纸面石膏板/12厚', '10', '2', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '0.28000', '3000', '1200', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('496', '9', '84', '硅酸钙板(内墙双面单层）', 'GSG-NQ-NZ-15', 'GSG', 'NQ', 'NZ', '15', '硅酸钙板/15厚', '5', '4', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '0.35000', '2400', '1200', '0', '15', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('497', '9', '84', '岩棉板（内墙龙骨内）', 'YM-NQ-BW-60', 'YM', 'NQ', 'BW', '60', '岩棉板/100KG/立方/60厚', '5', '5', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '捆装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('498', '9', '84', '岩棉板（内墙龙骨内）', 'YM-NQ-BW-80', 'YM', 'NQ', 'BW', '80', '岩棉板/100KG/立方/80厚', '5', '8', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('499', '9', '84', '玻璃棉（内墙龙骨内）', 'BLM-NQ-BW-75', 'BLM', 'NQ', 'BW', '75', '单面铝箔玻璃棉/16kg/立方/75厚', '5', '10', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '15000', '1000', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('500', '9', '84', '玻璃棉（内墙龙骨内）', 'BLM-NQ-BW-100', 'BLM', 'NQ', 'BW', '100', '单面铝箔玻璃棉/16kg/立方/100厚', '5', '12', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '15000', '1000', '0', '100', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('501', '9', '85', '防火石膏板（内墙双侧单层）', 'SGB-NQ-NZ-15', 'SGB', 'NQ', 'NZ', '15', '防火石膏板/15厚', '10', '2', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '0.28000', '3000', '1200', '0', '15', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('502', '9', '85', '硅酸钙板(内墙双面单层）', 'GSG-NQ-NZ-15', 'GSG', 'NQ', 'NZ', '15', '硅酸钙板/15厚', '5', '4', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '0.35000', '2400', '1200', '0', '15', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('503', '9', '85', '岩棉板（内墙龙骨内）', 'YM-NQ-BW-60', 'YM', 'NQ', 'BW', '60', '岩棉板/100KG/立方/60厚', '5', '5', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '捆装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('504', '9', '85', '岩棉板（内墙龙骨内）', 'YM-NQ-BW-80', 'YM', 'NQ', 'BW', '80', '岩棉板/100KG/立方/80厚', '5', '8', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('505', '9', '85', '玻璃棉（内墙龙骨内）', 'BLM-NQ-BW-75', 'BLM', 'NQ', 'BW', '75', '单面铝箔玻璃棉/16kg/立方/75厚', '5', '10', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '15000', '1000', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('506', '9', '85', '玻璃棉（内墙龙骨内）', 'BLM-NQ-BW-100', 'BLM', 'NQ', 'BW', '100', '单面铝箔玻璃棉/16kg/立方/100厚', '5', '12', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '15000', '1000', '0', '100', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('507', '9', '86', '石膏板（内墙双侧单层）', 'SGB-NQ-NZ-12', 'SGB', 'NQ', 'NZ', '12', '普通纸面石膏板/12厚', '10', '2', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '0.28000', '3000', '1200', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('508', '9', '86', '硅酸钙板(内墙双面单层）', 'GSG-NQ-NZ-10', 'GSG', 'NQ', 'NZ', '10', '硅酸钙板/10厚', '5', '4', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '0.34000', '2400', '1200', '0', '10', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('509', '9', '86', '岩棉板（内墙龙骨内）', 'YM-NQ-BW-60', 'YM', 'NQ', 'BW', '60', '岩棉板/100KG/立方/60厚', '5', '5', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '捆装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('510', '9', '86', '岩棉板（内墙龙骨内）', 'YM-NQ-BW-80', 'YM', 'NQ', 'BW', '80', '岩棉板/100KG/立方/80厚', '5', '8', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('511', '9', '86', '玻璃棉（内墙龙骨内）', 'BLM-NQ-BW-75', 'BLM', 'NQ', 'BW', '75', '单面铝箔玻璃棉/16kg/立方/75厚', '5', '10', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '15000', '1000', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('512', '9', '86', '玻璃棉（内墙龙骨内）', 'BLM-NQ-BW-100', 'BLM', 'NQ', 'BW', '100', '单面铝箔玻璃棉/16kg/立方/100厚', '5', '12', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '15000', '1000', '0', '100', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('513', '9', '87', '石膏板（内墙双侧单层）', 'SGB-NQ-NZ-12', 'SGB', 'NQ', 'NZ', '12', '普通纸面石膏板/12厚', '10', '2', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '0.28000', '3000', '1200', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('514', '9', '87', '硅酸钙板(内墙双面单层）', 'GSG-NQ-NZ-12', 'GSG', 'NQ', 'NZ', '12', '硅酸钙板/12厚', '5', '4', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '0.35000', '2400', '1200', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('515', '9', '87', '岩棉板（内墙龙骨内）', 'YM-NQ-BW-60', 'YM', 'NQ', 'BW', '60', '岩棉板/100KG/立方/60厚', '5', '5', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '捆装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('516', '9', '87', '岩棉板（内墙龙骨内）', 'YM-NQ-BW-80', 'YM', 'NQ', 'BW', '80', '岩棉板/100KG/立方/80厚', '5', '8', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('517', '9', '87', '玻璃棉（内墙龙骨内）', 'BLM-NQ-BW-75', 'BLM', 'NQ', 'BW', '75', '单面铝箔玻璃棉/16kg/立方/75厚', '5', '10', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '15000', '1000', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('518', '9', '87', '玻璃棉（内墙龙骨内）', 'BLM-NQ-BW-100', 'BLM', 'NQ', 'BW', '100', '单面铝箔玻璃棉/16kg/立方/100厚', '5', '12', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '15000', '1000', '0', '100', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('519', '9', '75', '石膏板（内墙双侧单层）', 'SGB-NQ-NZ-12', 'SGB', 'NQ', 'NZ', '12', '普通纸面石膏板/12厚', '10', '2', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '0.28000', '3000', '1200', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('520', '9', '75', '硅酸钙板(内墙双面单层）', 'GSG-NQ-NZ-15', 'GSG', 'NQ', 'NZ', '15', '硅酸钙板/15厚', '5', '4', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '0.35000', '2400', '1200', '0', '15', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('521', '9', '75', '岩棉板（内墙龙骨内）', 'YM-NQ-BW-60', 'YM', 'NQ', 'BW', '60', '岩棉板/100KG/立方/60厚', '5', '5', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '捆装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('522', '9', '75', '岩棉板（内墙龙骨内）', 'YM-NQ-BW-80', 'YM', 'NQ', 'BW', '80', '岩棉板/100KG/立方/80厚', '5', '8', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('523', '9', '75', '玻璃棉（内墙龙骨内）', 'BLM-NQ-BW-75', 'BLM', 'NQ', 'BW', '75', '单面铝箔玻璃棉/16kg/立方/75厚', '5', '10', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '15000', '1000', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('524', '9', '75', '玻璃棉（内墙龙骨内）', 'BLM-NQ-BW-100', 'BLM', 'NQ', 'BW', '100', '单面铝箔玻璃棉/16kg/立方/100厚', '5', '12', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '15000', '1000', '0', '100', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('525', '9', '88', '石膏板（内墙双侧单层）', 'SGB-NQ-NZ-12', 'SGB', 'NQ', 'NZ', '12', '普通纸面石膏板/12厚', '10', '2', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '0.28000', '3000', '1200', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('526', '9', '88', '硅酸钙板(内墙双面单层）', 'GSG-NQ-NZ-15', 'GSG', 'NQ', 'NZ', '15', '硅酸钙板/15厚', '5', '4', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '0.35000', '2400', '1200', '0', '15', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('527', '9', '88', '岩棉板（内墙龙骨内）', 'YM-NQ-BW-60', 'YM', 'NQ', 'BW', '60', '岩棉板/100KG/立方/60厚', '5', '5', '1', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '捆装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('528', '9', '88', '岩棉板（内墙龙骨内）', 'YM-NQ-BW-80', 'YM', 'NQ', 'BW', '80', '岩棉板/100KG/立方/80厚', '5', '8', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('529', '9', '88', '玻璃棉（内墙龙骨内）', 'BLM-NQ-BW-75', 'BLM', 'NQ', 'BW', '75', '单面铝箔玻璃棉/16kg/立方/75厚', '5', '10', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '15000', '1000', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('530', '9', '88', '玻璃棉（内墙龙骨内）', 'BLM-NQ-BW-100', 'BLM', 'NQ', 'BW', '100', '单面铝箔玻璃棉/16kg/立方/100厚', '5', '12', '0', '1', '超管', '2020-02-20', '2020-02-20', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '15000', '1000', '0', '100', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('531', '10', '22', '沥青瓦（屋面）', 'LQW-WM-WZ-Z', 'LQW', 'WM', 'WZ', 'Z', '双层沥青瓦', '10', '2', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '0', '袋装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('532', '10', '22', 'SBS防水卷材(屋面）', 'SBS-WM-FS-Z', 'SBS', 'WM', 'FS', 'Z', 'SBS改性沥青防水卷材/3厚', '15', '5', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '0', '无', '1.00000', '0', '0', '0', '3', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('533', '10', '22', 'APP自粘防水卷材（屋面）', 'APP-WM-FS-Z', 'APP', 'WM', 'FS', 'Z', 'APP自粘性防水卷材/2厚', '15', '10', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '2', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('534', '10', '22', 'OSB结构板（屋面）', 'OSB-WM-JG-12', 'OSB', 'WM', 'JG', '12', 'OSB结构板/三级/12厚', '10', '12', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '0.33000', '2440', '1220', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('535', '10', '22', 'OSB结构板（屋面）', 'OSB-WM-JG-15', 'OSB', 'WM', 'JG', '15', 'OSB结构板/三级/15厚', '10', '15', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '15', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('536', '10', '52', '沥青瓦（屋面）', 'LQW-WM-WZ-Z', 'LQW', 'WM', 'WZ', 'Z', '单层沥青瓦', '10', '2', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '0', '袋装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('537', '10', '52', 'SBS防水卷材(屋面）', 'SBS-WM-FS-Z', 'SBS', 'WM', 'FS', 'Z', 'SBS改性沥青防水卷材/3厚', '15', '4', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '0', '无', '1.00000', '0', '0', '0', '3', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('538', '10', '52', 'APP自粘防水卷材（屋面）', 'APP-WM-FS-Z', 'APP', 'WM', 'FS', 'Z', 'APP自粘性防水卷材/2厚', '15', '6', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '2', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('539', '10', '52', 'OSB结构板（屋面）', 'OSB-WM-JG-12', 'OSB', 'WM', 'JG', '12', 'OSB结构板/三级/12厚', '10', '8', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '0.33000', '2440', '1220', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('540', '10', '52', '屋面顺水条', 'MF-WM-WZ-Z', 'MF', 'WM', 'WZ', 'Z', '防腐木方/樟子松/50*60mm@600mm', '10', '10', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('541', '10', '52', 'XPS保温板（屋面））', 'XPS-WM-BW-50', 'XPS', 'WM', 'BW', '50', 'XPS保温板/50厚/B1级', '5', '12', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '袋装', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('542', '10', '52', 'OSB结构板（屋面）', 'OSB-WM-JG-15', 'OSB', 'WM', 'JG', '15', 'OSB结构板/三级/15厚', '10', '15', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '15', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('543', '10', '91', '沥青瓦（屋面）', 'LQW-WM-WZ-Z', 'LQW', 'WM', 'WZ', 'Z', '单层沥青瓦', '10', '2', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '0', '袋装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('544', '10', '91', 'SBS防水卷材(屋面）', 'SBS-WM-FS-Z', 'SBS', 'WM', 'FS', 'Z', 'SBS改性沥青防水卷材/3厚', '15', '4', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '0', '无', '1.00000', '0', '0', '0', '3', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('545', '10', '91', 'APP自粘防水卷材（屋面）', 'APP-WM-FS-Z', 'APP', 'WM', 'FS', 'Z', 'APP自粘性防水卷材/2厚', '15', '6', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '2', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('546', '10', '91', 'OSB结构板（屋面）', 'OSB-WM-JG-12', 'OSB', 'WM', 'JG', '12', 'OSB结构板/三级/12厚', '10', '8', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.33000', '2440', '1220', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('547', '10', '91', '屋面顺水条', 'MF-WM-WZ-Z', 'MF', 'WM', 'WZ', 'Z', '防腐木方/樟子松/50*70mm@600mm', '10', '10', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('548', '10', '91', 'XPS保温板（屋面））', 'XPS-WM-BW-60', 'XPS', 'WM', 'BW', '60', 'XPS保温板/60厚/B1级', '5', '12', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('549', '10', '91', 'OSB结构板（屋面）', 'OSB-WM-JG-15', 'OSB', 'WM', 'JG', '15', 'OSB结构板/三级/15厚', '10', '15', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '15', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('550', '10', '92', '沥青瓦（屋面）', 'LQW-WM-WZ-Z', 'LQW', 'WM', 'WZ', 'Z', '单层沥青瓦', '10', '2', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '0', '袋装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('551', '10', '92', 'SBS防水卷材(屋面）', 'SBS-WM-FS-Z', 'SBS', 'WM', 'FS', 'Z', 'SBS改性沥青防水卷材/3厚', '15', '4', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '0', '无', '1.00000', '0', '0', '0', '3', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('552', '10', '92', 'APP自粘防水卷材（屋面）', 'APP-WM-FS-Z', 'APP', 'WM', 'FS', 'Z', 'APP自粘性防水卷材/2厚', '15', '6', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '2', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('553', '10', '92', 'OSB结构板（屋面）', 'OSB-WM-JG-12', 'OSB', 'WM', 'JG', '12', 'OSB结构板/三级/12厚', '10', '8', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.33000', '2440', '1220', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('554', '10', '92', '屋面顺水条', 'MF-WM-WZ-Z', 'MF', 'WM', 'WZ', 'Z', '防腐木方/樟子松/50*90mm@600mm', '10', '10', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('555', '10', '92', 'XPS保温板（屋面））', 'XPS-WM-BW-80', 'XPS', 'WM', 'BW', '80', 'XPS保温板/80厚/B1级', '5', '12', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('556', '10', '92', 'OSB结构板（屋面）', 'OSB-WM-JG-15', 'OSB', 'WM', 'JG', '15', 'OSB结构板/三级/15厚', '10', '15', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '15', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('557', '10', '95', '沥青瓦（屋面）', 'LQW-WM-WZ-Z', 'LQW', 'WM', 'WZ', 'Z', '单层沥青瓦', '10', '2', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '0', '袋装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('558', '10', '95', 'SBS防水卷材(屋面）', 'SBS-WM-FS-Z', 'SBS', 'WM', 'FS', 'Z', 'SBS改性沥青防水卷材/3厚', '15', '4', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '0', '无', '1.00000', '0', '0', '0', '3', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('559', '10', '95', 'APP自粘防水卷材（屋面）', 'APP-WM-FS-Z', 'APP', 'WM', 'FS', 'Z', 'APP自粘性防水卷材/2厚', '15', '6', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '2', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('560', '10', '95', 'OSB结构板（屋面）', 'OSB-WM-JG-12', 'OSB', 'WM', 'JG', '12', 'OSB结构板/三级/12厚', '10', '8', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '0.33000', '2440', '1220', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('561', '10', '95', '屋面顺水条', 'MF-WM-WZ-Z', 'MF', 'WM', 'WZ', 'Z', '防腐木方/樟子松/50*60mm@600mm', '10', '10', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('562', '10', '95', '岩棉保温板（屋面）', 'YM-WM-BW-50', 'YM', 'WM', 'BW', '50', '岩棉保温板/50厚/A级', '5', '12', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '袋装', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('563', '10', '95', 'OSB结构板（屋面）', 'OSB-WM-JG-15', 'OSB', 'WM', 'JG', '15', 'OSB结构板/三级/15厚', '10', '15', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '15', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('564', '10', '98', '沥青瓦（屋面）', 'LQW-WM-WZ-Z', 'LQW', 'WM', 'WZ', 'Z', '单层沥青瓦', '10', '2', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '0', '袋装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('565', '10', '98', 'SBS防水卷材(屋面）', 'SBS-WM-FS-Z', 'SBS', 'WM', 'FS', 'Z', 'SBS改性沥青防水卷材/3厚', '15', '4', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '0', '无', '1.00000', '0', '0', '0', '3', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('566', '10', '98', 'APP自粘防水卷材（屋面）', 'APP-WM-FS-Z', 'APP', 'WM', 'FS', 'Z', 'APP自粘性防水卷材/2厚', '15', '6', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '2', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('567', '10', '98', 'OSB结构板（屋面）', 'OSB-WM-JG-12', 'OSB', 'WM', 'JG', '12', 'OSB结构板/三级/12厚', '10', '8', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.33000', '2440', '1220', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('568', '10', '98', '屋面顺水条', 'MF-WM-WZ-Z', 'MF', 'WM', 'WZ', 'Z', '防腐木方/樟子松/50*90mm@600mm', '10', '10', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('569', '10', '98', '岩棉保温板（屋面）', 'YM-WM-BW-80', 'YM', 'WM', 'BW', '80', '岩棉保温板/80厚/A级', '5', '12', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('570', '10', '98', 'OSB结构板（屋面）', 'OSB-WM-JG-15', 'OSB', 'WM', 'JG', '15', 'OSB结构板/三级/15厚', '10', '15', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '15', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('571', '10', '53', '沥青瓦（屋面）', 'LQW-WM-WZ-Z', 'LQW', 'WM', 'WZ', 'Z', '双层沥青瓦', '10', '2', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '0', '袋装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('572', '10', '53', 'SBS防水卷材(屋面）', 'SBS-WM-FS-Z', 'SBS', 'WM', 'FS', 'Z', 'SBS改性沥青防水卷材/3厚', '15', '4', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '0', '无', '1.00000', '0', '0', '0', '3', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('573', '10', '53', 'APP自粘防水卷材（屋面）', 'APP-WM-FS-Z', 'APP', 'WM', 'FS', 'Z', 'APP自粘性防水卷材/2厚', '15', '6', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '2', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('574', '10', '53', 'OSB结构板（屋面）', 'OSB-WM-JG-12', 'OSB', 'WM', 'JG', '12', 'OSB结构板/三级/12厚', '10', '8', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '0.33000', '2440', '1220', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('575', '10', '53', '屋面顺水条', 'MF-WM-WZ-Z', 'MF', 'WM', 'WZ', 'Z', '防腐木方/樟子松/50*60mm@600mm', '10', '10', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('576', '10', '53', 'XPS保温板（屋面））', 'XPS-WM-BW-50', 'XPS', 'WM', 'BW', '50', 'XPS保温板/50厚/B1级', '5', '12', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '袋装', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('577', '10', '53', 'OSB结构板（屋面）', 'OSB-WM-JG-15', 'OSB', 'WM', 'JG', '15', 'OSB结构板/三级/15厚', '10', '15', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '15', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('578', '10', '93', '沥青瓦（屋面）', 'LQW-WM-WZ-Z', 'LQW', 'WM', 'WZ', 'Z', '双层沥青瓦', '10', '2', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '0', '袋装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('579', '10', '93', 'SBS防水卷材(屋面）', 'SBS-WM-FS-Z', 'SBS', 'WM', 'FS', 'Z', 'SBS改性沥青防水卷材/3厚', '15', '4', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '0', '无', '1.00000', '0', '0', '0', '3', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('580', '10', '93', 'APP自粘防水卷材（屋面）', 'APP-WM-FS-Z', 'APP', 'WM', 'FS', 'Z', 'APP自粘性防水卷材/2厚', '15', '6', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '2', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('581', '10', '93', 'OSB结构板（屋面）', 'OSB-WM-JG-12', 'OSB', 'WM', 'JG', '12', 'OSB结构板/三级/12厚', '10', '8', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.33000', '2440', '1220', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('582', '10', '93', '屋面顺水条', 'MF-WM-WZ-Z', 'MF', 'WM', 'WZ', 'Z', '防腐木方/樟子松/50*70mm@600mm', '10', '10', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('583', '10', '93', 'XPS保温板（屋面））', 'XPS-WM-BW-60', 'XPS', 'WM', 'BW', '60', 'XPS保温板/60厚/B1级', '5', '12', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('584', '10', '93', 'OSB结构板（屋面）', 'OSB-WM-JG-15', 'OSB', 'WM', 'JG', '15', 'OSB结构板/三级/15厚', '10', '15', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '15', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('585', '10', '94', '沥青瓦（屋面）', 'LQW-WM-WZ-Z', 'LQW', 'WM', 'WZ', 'Z', '双层沥青瓦', '10', '2', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '0', '袋装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('586', '10', '94', 'SBS防水卷材(屋面）', 'SBS-WM-FS-Z', 'SBS', 'WM', 'FS', 'Z', 'SBS改性沥青防水卷材/3厚', '15', '4', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '0', '无', '1.00000', '0', '0', '0', '3', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('587', '10', '94', 'APP自粘防水卷材（屋面）', 'APP-WM-FS-Z', 'APP', 'WM', 'FS', 'Z', 'APP自粘性防水卷材/2厚', '15', '6', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '2', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('588', '10', '94', 'OSB结构板（屋面）', 'OSB-WM-JG-12', 'OSB', 'WM', 'JG', '12', 'OSB结构板/三级/12厚', '10', '8', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.33000', '2440', '1220', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('589', '10', '94', '屋面顺水条', 'MF-WM-WZ-Z', 'MF', 'WM', 'WZ', 'Z', '防腐木方/樟子松/50*90mm@600mm', '10', '10', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('590', '10', '94', 'XPS保温板（屋面））', 'XPS-WM-BW-80', 'XPS', 'WM', 'BW', '80', 'XPS保温板/80厚/B1级', '5', '12', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('591', '10', '94', 'OSB结构板（屋面）', 'OSB-WM-JG-15', 'OSB', 'WM', 'JG', '15', 'OSB结构板/三级/15厚', '10', '15', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '15', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('592', '10', '97', '沥青瓦（屋面）', 'LQW-WM-WZ-Z', 'LQW', 'WM', 'WZ', 'Z', '双层沥青瓦', '10', '2', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '0', '袋装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('593', '10', '97', 'SBS防水卷材(屋面）', 'SBS-WM-FS-Z', 'SBS', 'WM', 'FS', 'Z', 'SBS改性沥青防水卷材/3厚', '15', '4', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '0', '无', '1.00000', '0', '0', '0', '3', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('594', '10', '97', 'APP自粘防水卷材（屋面）', 'APP-WM-FS-Z', 'APP', 'WM', 'FS', 'Z', 'APP自粘性防水卷材/2厚', '15', '6', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '2', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('595', '10', '97', 'OSB结构板（屋面）', 'OSB-WM-JG-12', 'OSB', 'WM', 'JG', '12', 'OSB结构板/三级/12厚', '10', '8', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '0.33000', '2440', '1220', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('596', '10', '97', '屋面顺水条', 'MF-WM-WZ-Z', 'MF', 'WM', 'WZ', 'Z', '防腐木方/樟子松/50*60mm@600mm', '10', '10', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('597', '10', '97', '岩棉保温板（屋面）', 'YM-WM-BW-50', 'YM', 'WM', 'BW', '50', '岩棉保温板/50厚/A级', '5', '12', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '袋装', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('598', '10', '97', 'OSB结构板（屋面）', 'OSB-WM-JG-15', 'OSB', 'WM', 'JG', '15', 'OSB结构板/三级/15厚', '10', '15', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '15', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('599', '10', '96', '沥青瓦（屋面）', 'LQW-WM-WZ-Z', 'LQW', 'WM', 'WZ', 'Z', '单层沥青瓦', '10', '2', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '0', '袋装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('600', '10', '96', 'SBS防水卷材(屋面）', 'SBS-WM-FS-Z', 'SBS', 'WM', 'FS', 'Z', 'SBS改性沥青防水卷材/3厚', '15', '4', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '0', '无', '1.00000', '0', '0', '0', '3', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('601', '10', '96', 'APP自粘防水卷材（屋面）', 'APP-WM-FS-Z', 'APP', 'WM', 'FS', 'Z', 'APP自粘性防水卷材/2厚', '15', '6', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '2', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('602', '10', '96', 'OSB结构板（屋面）', 'OSB-WM-JG-12', 'OSB', 'WM', 'JG', '12', 'OSB结构板/三级/12厚', '10', '8', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '0.33000', '2440', '1220', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('603', '10', '96', '屋面顺水条', 'MF-WM-WZ-Z', 'MF', 'WM', 'WZ', 'Z', '防腐木方/樟子松/50*90mm@600mm', '10', '10', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('604', '10', '96', '岩棉保温板（屋面）', 'YM-WM-BW-80', 'YM', 'WM', 'BW', '80', '岩棉保温板/80厚/A级', '5', '12', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('605', '10', '96', 'OSB结构板（屋面）', 'OSB-WM-JG-15', 'OSB', 'WM', 'JG', '15', 'OSB结构板/三级/15厚', '10', '15', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '15', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('606', '10', '27', '水泥瓦（屋面）', 'SNW-WM-WZ-Z', 'SNW', 'WM', 'WZ', 'Z', '水泥瓦', '10', '2', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('607', '10', '27', '屋面挂瓦条', 'MF-WM-WZ-Z', 'MF', 'WM', 'WZ', 'Z', '防腐木方/樟子松/20*40mm@300mm', '10', '4', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('608', '10', '27', '屋面顺水条', 'MF-WM-WZ-Z', 'MF', 'WM', 'WZ', 'Z', '防腐木方/樟子松/50*60mm@600mm', '10', '6', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('609', '10', '27', 'XPS保温板（屋面））', 'XPS-WM-BW-50', 'XPS', 'WM', 'BW', '50', 'XPS保温板/50厚/B1级', '5', '8', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '袋装', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('610', '10', '27', 'APP自粘防水卷材（屋面）', 'APP-WM-FS-Z', 'APP', 'WM', 'FS', 'Z', 'APP自粘性防水卷材/2厚', '15', '10', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '2', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('611', '10', '27', 'SBS防水卷材(屋面）', 'SBS-WM-FS-Z', 'SBS', 'WM', 'FS', 'Z', 'SBS改性沥青防水卷材/3厚', '15', '12', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '0', '无', '1.00000', '0', '0', '0', '3', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('612', '10', '27', 'OSB结构板（屋面）', 'OSB-WM-JG-15', 'OSB', 'WM', 'JG', '15', 'OSB结构板/三级/15厚', '10', '15', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '15', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('613', '10', '99', '水泥瓦（屋面）', 'SNW-WM-WZ-Z', 'SNW', 'WM', 'WZ', 'Z', '水泥瓦', '10', '2', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('614', '10', '99', '屋面挂瓦条', 'MF-WM-WZ-Z', 'MF', 'WM', 'WZ', 'Z', '防腐木方/樟子松/20*40mm@300mm', '10', '4', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('615', '10', '99', '屋面顺水条', 'MF-WM-WZ-Z', 'MF', 'WM', 'WZ', 'Z', '防腐木方/樟子松/50*70mm@600mm', '10', '6', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('616', '10', '99', 'XPS保温板（屋面））', 'XPS-WM-BW-60', 'XPS', 'WM', 'BW', '50', 'XPS保温板/60厚/B1级', '5', '8', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('617', '10', '99', 'APP自粘防水卷材（屋面）', 'APP-WM-FS-Z', 'APP', 'WM', 'FS', 'Z', 'APP自粘性防水卷材/2厚', '15', '10', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '2', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('618', '10', '99', 'SBS防水卷材(屋面）', 'SBS-WM-FS-Z', 'SBS', 'WM', 'FS', 'Z', 'SBS改性沥青防水卷材/3厚', '15', '12', '0', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '0', '无', '1.00000', '0', '0', '0', '3', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('619', '10', '99', 'OSB结构板（屋面）', 'OSB-WM-JG-15', 'OSB', 'WM', 'JG', '15', 'OSB结构板/三级/15厚', '10', '15', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '15', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('620', '10', '100', '水泥瓦（屋面）', 'SNW-WM-WZ-Z', 'SNW', 'WM', 'WZ', 'Z', '水泥瓦', '10', '2', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('621', '10', '100', '屋面挂瓦条', 'MF-WM-WZ-Z', 'MF', 'WM', 'WZ', 'Z', '防腐木方/樟子松/20*40mm@300mm', '10', '4', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('622', '10', '100', '屋面顺水条', 'MF-WM-WZ-Z', 'MF', 'WM', 'WZ', 'Z', '防腐木方/樟子松/50*90mm@600mm', '10', '6', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('623', '10', '100', 'XPS保温板（屋面））', 'XPS-WM-BW-80', 'XPS', 'WM', 'BW', '80', 'XPS保温板/80厚/B1级', '5', '8', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('624', '10', '100', 'APP自粘防水卷材（屋面）', 'APP-WM-FS-Z', 'APP', 'WM', 'FS', 'Z', 'APP自粘性防水卷材/2厚', '15', '10', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '2', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('625', '10', '100', 'SBS防水卷材(屋面）', 'SBS-WM-FS-Z', 'SBS', 'WM', 'FS', 'Z', 'SBS改性沥青防水卷材/3厚', '15', '12', '0', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '0', '无', '1.00000', '0', '0', '0', '3', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('626', '10', '100', 'OSB结构板（屋面）', 'OSB-WM-JG-15', 'OSB', 'WM', 'JG', '15', 'OSB结构板/三级/15厚', '10', '15', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '15', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('627', '10', '101', '水泥瓦（屋面）', 'SNW-WM-WZ-Z', 'SNW', 'WM', 'WZ', 'Z', '水泥瓦', '10', '2', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('628', '10', '101', '屋面挂瓦条', 'MF-WM-WZ-Z', 'MF', 'WM', 'WZ', 'Z', '防腐木方/樟子松/20*40mm@300mm', '10', '4', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('629', '10', '101', '屋面顺水条', 'MF-WM-WZ-Z', 'MF', 'WM', 'WZ', 'Z', '防腐木方/樟子松/50*60mm@600mm', '10', '6', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('630', '10', '101', '岩棉保温板（屋面））', 'YM-WM-BW-50', 'YM', 'WM', 'BW', '50', '岩棉保温板/50厚/A级', '5', '8', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '袋装', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('631', '10', '101', 'APP自粘防水卷材（屋面）', 'APP-WM-FS-Z', 'APP', 'WM', 'FS', 'Z', 'APP自粘性防水卷材/2厚', '15', '10', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '2', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('632', '10', '101', 'SBS防水卷材(屋面）', 'SBS-WM-FS-Z', 'SBS', 'WM', 'FS', 'Z', 'SBS改性沥青防水卷材/3厚', '15', '12', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '0', '无', '1.00000', '0', '0', '0', '3', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('633', '10', '101', 'OSB结构板（屋面）', 'OSB-WM-JG-15', 'OSB', 'WM', 'JG', '15', 'OSB结构板/三级/15厚', '10', '15', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '15', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('634', '10', '102', '水泥瓦（屋面）', 'SNW-WM-WZ-Z', 'SNW', 'WM', 'WZ', 'Z', '水泥瓦', '10', '2', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('635', '10', '102', '屋面挂瓦条', 'MF-WM-WZ-Z', 'MF', 'WM', 'WZ', 'Z', '防腐木方/樟子松/20*40mm@300mm', '10', '4', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('636', '10', '102', '屋面顺水条', 'MF-WM-WZ-Z', 'MF', 'WM', 'WZ', 'Z', '防腐木方/樟子松/50*90mm@600mm', '10', '6', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('637', '10', '102', '岩棉保温板（屋面））', 'YM-WM-BW-80', 'YM', 'WM', 'BW', '80', '岩棉保温板/80厚/A级', '5', '8', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('638', '10', '102', 'APP自粘防水卷材（屋面）', 'APP-WM-FS-Z', 'APP', 'WM', 'FS', 'Z', 'APP自粘性防水卷材/2厚', '15', '10', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '2', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('639', '10', '102', 'SBS防水卷材(屋面）', 'SBS-WM-FS-Z', 'SBS', 'WM', 'FS', 'Z', 'SBS改性沥青防水卷材/3厚', '15', '12', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '0', '无', '1.00000', '0', '0', '0', '3', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('640', '10', '102', 'OSB结构板（屋面）', 'OSB-WM-JG-15', 'OSB', 'WM', 'JG', '15', 'OSB结构板/三级/15厚', '10', '15', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '15', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('641', '10', '28', '筒瓦（屋面）', 'TW-WM-WZ-Z', 'TW', 'WM', 'WZ', 'Z', '筒瓦', '10', '2', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('642', '10', '28', '屋面挂瓦条', 'MF-WM-WZ-Z', 'MF', 'WM', 'WZ', 'Z', '防腐木方/樟子松/20*40mm@300mm', '10', '4', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('643', '10', '28', '屋面顺水条', 'MF-WM-WZ-Z', 'MF', 'WM', 'WZ', 'Z', '防腐木方/樟子松/50*60mm@600mm', '10', '6', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('644', '10', '28', 'XPS保温板（屋面））', 'XPS-WM-BW-50', 'XPS', 'WM', 'BW', '50', 'XPS保温板/50厚/B1级', '5', '8', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '袋装', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('645', '10', '28', 'APP自粘防水卷材（屋面）', 'APP-WM-FS-Z', 'APP', 'WM', 'FS', 'Z', 'APP自粘性防水卷材/2厚', '15', '10', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '2', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('646', '10', '28', 'SBS防水卷材(屋面）', 'SBS-WM-FS-Z', 'SBS', 'WM', 'FS', 'Z', 'SBS改性沥青防水卷材/3厚', '15', '12', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '0', '无', '1.00000', '0', '0', '0', '3', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('647', '10', '28', 'OSB结构板（屋面）', 'OSB-WM-JG-15', 'OSB', 'WM', 'JG', '15', 'OSB结构板/三级/15厚', '10', '15', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '15', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('648', '10', '103', '筒瓦（屋面）', 'TW-WM-WZ-Z', 'TW', 'WM', 'WZ', 'Z', '筒瓦', '10', '2', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('649', '10', '103', '屋面挂瓦条', 'MF-WM-WZ-Z', 'MF', 'WM', 'WZ', 'Z', '防腐木方/樟子松/20*40mm@300mm', '10', '4', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('650', '10', '103', '屋面顺水条', 'MF-WM-WZ-Z', 'MF', 'WM', 'WZ', 'Z', '防腐木方/樟子松/50*70mm@600mm', '10', '6', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('651', '10', '103', 'XPS保温板（屋面））', 'XPS-WM-BW-60', 'XPS', 'WM', 'BW', '60', 'XPS保温板/60厚/B1级', '5', '8', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('652', '10', '103', 'APP自粘防水卷材（屋面）', 'APP-WM-FS-Z', 'APP', 'WM', 'FS', 'Z', 'APP自粘性防水卷材/2厚', '15', '10', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '2', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('653', '10', '103', 'SBS防水卷材(屋面）', 'SBS-WM-FS-Z', 'SBS', 'WM', 'FS', 'Z', 'SBS改性沥青防水卷材/3厚', '15', '12', '0', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '0', '无', '1.00000', '0', '0', '0', '3', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('654', '10', '103', 'OSB结构板（屋面）', 'OSB-WM-JG-15', 'OSB', 'WM', 'JG', '15', 'OSB结构板/三级/15厚', '10', '15', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '15', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('655', '10', '104', '筒瓦（屋面）', 'TW-WM-WZ-Z', 'TW', 'WM', 'WZ', 'Z', '筒瓦', '10', '2', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('656', '10', '104', '屋面挂瓦条', 'MF-WM-WZ-Z', 'MF', 'WM', 'WZ', 'Z', '防腐木方/樟子松/20*40mm@300mm', '10', '4', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('657', '10', '104', '屋面顺水条', 'MF-WM-WZ-Z', 'MF', 'WM', 'WZ', 'Z', '防腐木方/樟子松/50*90mm@600mm', '10', '6', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('658', '10', '104', 'XPS保温板（屋面））', 'XPS-WM-BW-80', 'XPS', 'WM', 'BW', '80', 'XPS保温板/80厚/B1级', '5', '8', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('659', '10', '104', 'APP自粘防水卷材（屋面）', 'APP-WM-FS-Z', 'APP', 'WM', 'FS', 'Z', 'APP自粘性防水卷材/2厚', '15', '10', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '2', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('660', '10', '104', 'SBS防水卷材(屋面）', 'SBS-WM-FS-Z', 'SBS', 'WM', 'FS', 'Z', 'SBS改性沥青防水卷材/3厚', '15', '12', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', 'm2', '0', '无', '1.00000', '0', '0', '0', '3', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('661', '10', '104', 'OSB结构板（屋面）', 'OSB-WM-JG-15', 'OSB', 'WM', 'JG', '15', 'OSB结构板/三级/15厚', '10', '15', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '15', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('662', '10', '105', '筒瓦（屋面）', 'TW-WM-WZ-Z', 'TW', 'WM', 'WZ', 'Z', '筒瓦', '10', '2', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('663', '10', '105', '屋面挂瓦条', 'MF-WM-WZ-Z', 'MF', 'WM', 'WZ', 'Z', '防腐木方/樟子松/20*40mm@300mm', '10', '4', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('664', '10', '105', '屋面顺水条', 'MF-WM-WZ-Z', 'MF', 'WM', 'WZ', 'Z', '防腐木方/樟子松/50*60mm@600mm', '10', '6', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('665', '10', '105', '岩棉保温板（屋面））', 'YM-WM-BW-50', 'YM', 'WM', 'BW', '50', '岩棉保温板/50厚/A级', '5', '8', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '袋装', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('666', '10', '105', 'APP自粘防水卷材（屋面）', 'APP-WM-FS-Z', 'APP', 'WM', 'FS', 'Z', 'APP自粘性防水卷材/2厚', '15', '10', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '2', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('667', '10', '105', 'SBS防水卷材(屋面）', 'SBS-WM-FS-Z', 'SBS', 'WM', 'FS', 'Z', 'SBS改性沥青防水卷材/3厚', '15', '12', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '0', '无', '1.00000', '0', '0', '0', '3', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('668', '10', '105', 'OSB结构板（屋面）', 'OSB-WM-JG-15', 'OSB', 'WM', 'JG', '15', 'OSB结构板/三级/15厚', '10', '15', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '15', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('669', '10', '106', '筒瓦（屋面）', 'TW-WM-WZ-Z', 'TW', 'WM', 'WZ', 'Z', '筒瓦', '10', '2', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('670', '10', '106', '屋面挂瓦条', 'MF-WM-WZ-Z', 'MF', 'WM', 'WZ', 'Z', '防腐木方/樟子松/20*40mm@300mm', '10', '4', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('671', '10', '106', '屋面顺水条', 'MF-WM-WZ-Z', 'MF', 'WM', 'WZ', 'Z', '防腐木方/樟子松/50*90mm@600mm', '10', '6', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('672', '10', '106', '岩棉保温板（屋面））', 'YM-WM-BW-80', 'YM', 'WM', 'BW', '80', '岩棉保温板/80厚/A级', '5', '8', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('673', '10', '106', 'APP自粘防水卷材（屋面）', 'APP-WM-FS-Z', 'APP', 'WM', 'FS', 'Z', 'APP自粘性防水卷材/2厚', '15', '10', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '2', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('674', '10', '106', 'SBS防水卷材(屋面）', 'SBS-WM-FS-Z', 'SBS', 'WM', 'FS', 'Z', 'SBS改性沥青防水卷材/3厚', '15', '12', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '0', '无', '1.00000', '0', '0', '0', '3', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('675', '10', '106', 'OSB结构板（屋面）', 'OSB-WM-JG-15', 'OSB', 'WM', 'JG', '15', 'OSB结构板/三级/15厚', '10', '15', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '15', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('676', '12', '14', 'OSB结构板（楼面）', 'OSB-LM-JG-18', 'OSB', 'LM', 'JG', '18', 'OSB结构板/结构3级/18厚', '10', '2', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '18', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('677', '12', '32', 'OSB结构板（楼面）', 'OSB-LM-JG-18', 'OSB', 'LM', 'JG', '18', 'OSB结构板/结构3级/18厚', '10', '2', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '18', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('678', '12', '32', '丙纶防水', 'FS-LM-FS-Z', 'FS', 'LM', 'FS', 'Z', '丙纶布防水', '10', '4', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('679', '12', '33', '丙纶防水', 'FS-LM-FS-Z', 'FS', 'LM', 'FS', 'Z', '丙纶布防水', '10', '2', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('680', '12', '33', 'OSB结构板（楼面）', 'OSB-LM-JG-18', 'OSB', 'LM', 'JG', '18', 'OSB结构板/结构3级/18厚', '10', '3', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '18', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('681', '12', '33', '防腐木方', 'MF-LM-WZ-Z', 'MF', 'LM', 'WZ', 'Z', '防腐木方/樟子松/50*60mm@600mm', '10', '4', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('682', '12', '33', 'XPS保温板（楼面）', 'XPS-LM-BW-50', 'XPS', 'LM', 'BW', '50', 'XPS保温板/50厚/B1级', '10', '6', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('683', '12', '33', 'APP防水卷材', 'APP-LM-FS-2', 'APP', 'LM', 'FS', '2', 'APP自粘型防水卷材/2厚', '10', '8', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '散装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('684', '12', '33', 'OSB结构板（楼面）', 'OSB-LM-JG-18', 'OSB', 'LM', 'JG', '18', 'OSB结构板/结构3级/18厚', '10', '10', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '18', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('685', '8', '6', '披水件(普通外墙勒脚)', 'PJ-WQ-WZ-01', 'PJ', 'WQ', 'WZ', '01', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '65', '1', '1', '超管', '2020-02-21', '2020-02-22', '1', '超管', 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('686', '8', '7', '披水件(普通外墙勒脚)', 'PJ-WQ-WZ-01', 'PJ', 'WQ', 'WZ', '01', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '65', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('687', '8', '16', '披水件(普通外墙勒脚)', 'PJ-WQ-WZ-01', 'PJ', 'WQ', 'WZ', '01', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '65', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('688', '8', '17', '披水件(普通外墙勒脚)', 'PJ-WQ-WZ-01', 'PJ', 'WQ', 'WZ', '01', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '65', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('689', '8', '6', '披水件(外墙平台勒脚)', 'PJ-WQ-WZ-02', 'PJ', 'WQ', 'WZ', '02', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '66', '1', '1', '超管', '2020-02-21', '2020-02-22', '1', '超管', 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('690', '8', '7', '披水件(外墙平台勒脚)', 'PJ-WQ-WZ-02', 'PJ', 'WQ', 'WZ', '02', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '66', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('691', '8', '16', '披水件(外墙平台勒脚)', 'PJ-WQ-WZ-02', 'PJ', 'WQ', 'WZ', '02', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '66', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('692', '8', '17', '披水件(外墙平台勒脚)', 'PJ-WQ-WZ-02', 'PJ', 'WQ', 'WZ', '02', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '66', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('693', '8', '55', '披水件(普通外墙勒脚)', 'PJ-WQ-WZ-01', 'PJ', 'WQ', 'WZ', '01', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '65', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('694', '8', '55', '披水件(外墙平台勒脚)', 'PJ-WQ-WZ-02', 'PJ', 'WQ', 'WZ', '02', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '66', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('695', '8', '54', '披水件(普通外墙勒脚)', 'PJ-WQ-WZ-01', 'PJ', 'WQ', 'WZ', '01', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '75', '1', '1', '超管', '2020-02-21', '2020-02-22', '1', '超管', 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('696', '8', '54', '披水件(外墙平台勒脚)', 'PJ-WQ-WZ-02', 'PJ', 'WQ', 'WZ', '02', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '78', '1', '1', '超管', '2020-02-21', '2020-02-22', '1', '超管', 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('697', '8', '56', '披水件(普通外墙勒脚)', 'PJ-WQ-WZ-01', 'PJ', 'WQ', 'WZ', '01', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '65', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('698', '8', '56', '披水件(外墙平台勒脚)', 'PJ-WQ-WZ-02', 'PJ', 'WQ', 'WZ', '02', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '66', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('699', '8', '57', '披水件(普通外墙勒脚)', 'PJ-WQ-WZ-01', 'PJ', 'WQ', 'WZ', '01', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '65', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('700', '8', '57', '披水件(外墙平台勒脚)', 'PJ-WQ-WZ-02', 'PJ', 'WQ', 'WZ', '02', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '66', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('701', '8', '58', '披水件(普通外墙勒脚)', 'PJ-WQ-WZ-01', 'PJ', 'WQ', 'WZ', '01', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '75', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('702', '8', '58', '披水件(外墙平台勒脚)', 'PJ-WQ-WZ-02', 'PJ', 'WQ', 'WZ', '02', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '78', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('703', '8', '59', '披水件(普通外墙勒脚)', 'PJ-WQ-WZ-01', 'PJ', 'WQ', 'WZ', '01', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '75', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('704', '8', '59', '披水件(外墙平台勒脚)', 'PJ-WQ-WZ-02', 'PJ', 'WQ', 'WZ', '02', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '78', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('705', '8', '61', '披水件(普通外墙勒脚)', 'PJ-WQ-WZ-01', 'PJ', 'WQ', 'WZ', '01', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '75', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('706', '8', '61', '披水件(外墙平台勒脚)', 'PJ-WQ-WZ-02', 'PJ', 'WQ', 'WZ', '02', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '78', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('707', '8', '62', '披水件(普通外墙勒脚)', 'PJ-WQ-WZ-01', 'PJ', 'WQ', 'WZ', '01', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '75', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('708', '8', '62', '披水件(外墙平台勒脚)', 'PJ-WQ-WZ-02', 'PJ', 'WQ', 'WZ', '02', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '78', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('709', '8', '63', '披水件(普通外墙勒脚)', 'PJ-WQ-WZ-01', 'PJ', 'WQ', 'WZ', '01', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '75', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('710', '8', '63', '披水件(外墙平台勒脚)', 'PJ-WQ-WZ-02', 'PJ', 'WQ', 'WZ', '02', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '78', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('711', '8', '64', '披水件(普通外墙勒脚)', 'PJ-WQ-WZ-01', 'PJ', 'WQ', 'WZ', '01', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '75', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('712', '8', '64', '披水件(外墙平台勒脚)', 'PJ-WQ-WZ-02', 'PJ', 'WQ', 'WZ', '02', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '78', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('713', '8', '65', '披水件(普通外墙勒脚)', 'PJ-WQ-WZ-01', 'PJ', 'WQ', 'WZ', '01', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '75', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('714', '8', '65', '披水件(外墙平台勒脚)', 'PJ-WQ-WZ-02', 'PJ', 'WQ', 'WZ', '02', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '78', '1', '1', '超管', '2020-02-21', '2020-02-21', '1', '超管', 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('715', '8', '66', '石膏板（外墙内侧）', 'SGB-WQ-NZ-12', 'SGB', 'WQ', 'NZ', '12', '普通纸面石膏板/12厚', '5', '2', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '无', '捆装', '0.28000', '3000', '1200', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('716', '8', '66', '石膏板（外墙内侧）', 'SGB-WQ-NZ-FH15', 'SGB', 'WQ', 'NZ', 'FH15', '防火石膏板/15厚', '5', '4', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('717', '8', '66', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-10', 'GSG', 'WQ', 'NZ', '10', '硅酸钙板/10厚', '5', '6', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '0.35000', '2400', '1200', '0', '10', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('718', '8', '66', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-12', 'GSG', 'WQ', 'NZ', '12', '硅酸钙板/12厚', '5', '8', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('719', '8', '66', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-15', 'GSG', 'WQ', 'NZ', '15', '硅酸钙板/15厚', '5', '10', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('720', '8', '66', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-75', 'BLM', 'WQ', 'BW', '75', '单面铝箔玻璃棉毡/16KG/立方/75厚', '5', '12', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '卷', '捆装', '1.00000', '0', '0', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('721', '8', '66', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-100', 'BLM', 'WQ', 'BW', '100', '单面铝箔玻璃棉毡/16KG/立方/100厚', '5', '14', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('722', '8', '66', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-50', 'YM', 'WQ', 'BW', '50', '岩棉板/100KG/立方/50厚', '5', '16', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('723', '8', '66', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-60', 'YM', 'WQ', 'BW', '60', '岩棉板/100KG/立方/60厚', '5', '18', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('724', '8', '66', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-70', 'YM', 'WQ', 'BW', '70', '岩棉板/100KG/立方/70厚', '5', '20', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('725', '8', '66', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-80', 'YM', 'WQ', 'BW', '80', '岩棉板/100KG/立方/80厚', '5', '22', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('726', '8', '66', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-100', 'YM', 'WQ', 'BW', '100', '岩棉板/100KG/立方/100厚', '5', '24', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('727', '8', '66', 'OSB结构板（外墙）', 'OSB-WQ-JG-09', 'OSB', 'WQ', 'JG', '09', 'OSB板/结构三级/9厚', '10', '26', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '9', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('728', '8', '66', 'OSB结构板（外墙）', 'OSB-WQ-JG-12', 'OSB', 'WQ', 'JG', '12', 'OSB板/结构三级/12厚', '10', '28', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('729', '8', '66', 'OSB结构板（外墙）', 'OSB-WQ-JG-15', 'OSB', 'WQ', 'JG', '15', 'OSB板/结构三级/15厚', '10', '30', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('730', '8', '66', '防潮纸（外墙）', 'FCZ-WQ-FS-035', 'FCZ', 'WQ', 'FS', '035', '防潮纸/0.35厚', '5', '32', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '卷', '无', '1.00000', '15000', '1000', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('731', '8', '66', '防潮纸（外墙）', 'FCZ-WQ-FS-036', 'FCZ', 'WQ', 'FS', '036', '防潮纸/0.5厚', '5', '34', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('732', '8', '66', 'XPS保温板（外墙）', 'XPS-WQ-BW-30B1', 'XPS', 'WQ', 'BW', '30B1', '挤塑聚苯保温板/B1级/30厚', '5', '36', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '30', '0', '1', '2020-02-24', '1', '2020-02-24');
INSERT INTO `sp_material` VALUES ('733', '8', '66', 'XPS保温板（外墙）', 'XPS-WQ-BW-50B1', 'XPS', 'WQ', 'BW', '50B1', '挤塑聚苯保温板/B1级/50厚', '5', '38', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '袋装', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('734', '8', '66', 'XPS保温板（外墙）', 'XPS-WQ-BW-60B1', 'XPS', 'WQ', 'BW', '60B1', '挤塑聚苯保温板/B1级/60厚', '5', '42', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('735', '8', '66', 'XPS保温板（外墙）', 'XPS-WQ-BW-80B1', 'XPS', 'WQ', 'BW', '80B1', '挤塑聚苯保温板/B1级/80厚', '5', '45', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('736', '8', '66', '防腐木龙骨（外墙）', 'MF-WQ-WZ-Z', 'MF', 'WQ', 'WZ', 'Z', '防腐木方/樟子松', '5', '50', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('737', '8', '66', '钢板网', 'GBW-WQ-WZ-Z', 'GBW', 'WQ', 'WZ', 'Z', '钢板网', '10', '55', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('738', '8', '66', '外墙文化石', 'WHS-WQ-WZ-Z', 'WHS', 'WQ', 'WZ', 'Z', '外墙文化石', '10', '60', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('739', '8', '66', '披水件(普通外墙勒脚)', 'PJ-WQ-WZ-01', 'PJ', 'WQ', 'WZ', '01', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '75', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('740', '8', '66', '披水件(外墙平台勒脚)', 'PJ-WQ-WZ-02', 'PJ', 'WQ', 'WZ', '02', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '78', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('741', '8', '67', '石膏板（外墙内侧）', 'SGB-WQ-NZ-12', 'SGB', 'WQ', 'NZ', '12', '普通纸面石膏板/12厚', '5', '2', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '无', '捆装', '0.28000', '3000', '1200', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('742', '8', '67', '石膏板（外墙内侧）', 'SGB-WQ-NZ-FH15', 'SGB', 'WQ', 'NZ', 'FH15', '防火石膏板/15厚', '5', '4', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('743', '8', '67', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-10', 'GSG', 'WQ', 'NZ', '10', '硅酸钙板/10厚', '5', '6', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '0.35000', '2400', '1200', '0', '10', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('744', '8', '67', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-12', 'GSG', 'WQ', 'NZ', '12', '硅酸钙板/12厚', '5', '8', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('745', '8', '67', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-15', 'GSG', 'WQ', 'NZ', '15', '硅酸钙板/15厚', '5', '10', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('746', '8', '67', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-75', 'BLM', 'WQ', 'BW', '75', '单面铝箔玻璃棉毡/16KG/立方/75厚', '5', '12', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '卷', '捆装', '1.00000', '0', '0', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('747', '8', '67', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-100', 'BLM', 'WQ', 'BW', '100', '单面铝箔玻璃棉毡/16KG/立方/100厚', '5', '14', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('748', '8', '67', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-50', 'YM', 'WQ', 'BW', '50', '岩棉板/100KG/立方/50厚', '5', '16', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('749', '8', '67', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-60', 'YM', 'WQ', 'BW', '60', '岩棉板/100KG/立方/60厚', '5', '18', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('750', '8', '67', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-70', 'YM', 'WQ', 'BW', '70', '岩棉板/100KG/立方/70厚', '5', '20', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('751', '8', '67', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-80', 'YM', 'WQ', 'BW', '80', '岩棉板/100KG/立方/80厚', '5', '22', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('752', '8', '67', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-100', 'YM', 'WQ', 'BW', '100', '岩棉板/100KG/立方/100厚', '5', '24', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('753', '8', '67', 'OSB结构板（外墙）', 'OSB-WQ-JG-09', 'OSB', 'WQ', 'JG', '09', 'OSB板/结构三级/9厚', '10', '26', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '9', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('754', '8', '67', 'OSB结构板（外墙）', 'OSB-WQ-JG-12', 'OSB', 'WQ', 'JG', '12', 'OSB板/结构三级/12厚', '10', '28', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('755', '8', '67', 'OSB结构板（外墙）', 'OSB-WQ-JG-15', 'OSB', 'WQ', 'JG', '15', 'OSB板/结构三级/15厚', '10', '30', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('756', '8', '67', '防潮纸（外墙）', 'FCZ-WQ-FS-035', 'FCZ', 'WQ', 'FS', '035', '防潮纸/0.35厚', '5', '32', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '卷', '无', '1.00000', '15000', '1000', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('757', '8', '67', '防潮纸（外墙）', 'FCZ-WQ-FS-036', 'FCZ', 'WQ', 'FS', '036', '防潮纸/0.5厚', '5', '34', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('758', '8', '67', 'XPS保温板（外墙）', 'XPS-WQ-BW-30B1', 'XPS', 'WQ', 'BW', '30B1', '挤塑聚苯保温板/B1级/30厚', '5', '36', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '30', '0', '1', '2020-02-24', '1', '2020-02-24');
INSERT INTO `sp_material` VALUES ('759', '8', '67', 'XPS保温板（外墙）', 'XPS-WQ-BW-50B1', 'XPS', 'WQ', 'BW', '50B1', '挤塑聚苯保温板/B1级/50厚', '5', '38', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '袋装', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('760', '8', '67', 'XPS保温板（外墙）', 'XPS-WQ-BW-60B1', 'XPS', 'WQ', 'BW', '60B1', '挤塑聚苯保温板/B1级/60厚', '5', '42', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('761', '8', '67', 'XPS保温板（外墙）', 'XPS-WQ-BW-80B1', 'XPS', 'WQ', 'BW', '80B1', '挤塑聚苯保温板/B1级/80厚', '5', '45', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('762', '8', '67', '防腐木龙骨（外墙）', 'MF-WQ-WZ-Z', 'MF', 'WQ', 'WZ', 'Z', '防腐木方/樟子松', '5', '50', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('763', '8', '67', '钢板网', 'GBW-WQ-WZ-Z', 'GBW', 'WQ', 'WZ', 'Z', '钢板网', '10', '55', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('764', '8', '67', '外墙文化石', 'WHS-WQ-WZ-Z', 'WHS', 'WQ', 'WZ', 'Z', '外墙文化石', '10', '60', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('765', '8', '67', '披水件(普通外墙勒脚)', 'PJ-WQ-WZ-01', 'PJ', 'WQ', 'WZ', '01', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '75', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('766', '8', '67', '披水件(外墙平台勒脚)', 'PJ-WQ-WZ-02', 'PJ', 'WQ', 'WZ', '02', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '78', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('767', '8', '68', '石膏板（外墙内侧）', 'SGB-WQ-NZ-12', 'SGB', 'WQ', 'NZ', '12', '普通纸面石膏板/12厚', '5', '2', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '无', '捆装', '0.28000', '3000', '1200', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('768', '8', '68', '石膏板（外墙内侧）', 'SGB-WQ-NZ-FH15', 'SGB', 'WQ', 'NZ', 'FH15', '防火石膏板/15厚', '5', '4', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('769', '8', '68', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-10', 'GSG', 'WQ', 'NZ', '10', '硅酸钙板/10厚', '5', '6', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '0.35000', '2400', '1200', '0', '10', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('770', '8', '68', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-12', 'GSG', 'WQ', 'NZ', '12', '硅酸钙板/12厚', '5', '8', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('771', '8', '68', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-15', 'GSG', 'WQ', 'NZ', '15', '硅酸钙板/15厚', '5', '10', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('772', '8', '68', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-75', 'BLM', 'WQ', 'BW', '75', '单面铝箔玻璃棉毡/16KG/立方/75厚', '5', '12', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '卷', '捆装', '1.00000', '0', '0', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('773', '8', '68', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-100', 'BLM', 'WQ', 'BW', '100', '单面铝箔玻璃棉毡/16KG/立方/100厚', '5', '14', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('774', '8', '68', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-50', 'YM', 'WQ', 'BW', '50', '岩棉板/100KG/立方/50厚', '5', '16', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('775', '8', '68', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-60', 'YM', 'WQ', 'BW', '60', '岩棉板/100KG/立方/60厚', '5', '18', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('776', '8', '68', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-70', 'YM', 'WQ', 'BW', '70', '岩棉板/100KG/立方/70厚', '5', '20', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('777', '8', '68', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-80', 'YM', 'WQ', 'BW', '80', '岩棉板/100KG/立方/80厚', '5', '22', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('778', '8', '68', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-100', 'YM', 'WQ', 'BW', '100', '岩棉板/100KG/立方/100厚', '5', '24', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('779', '8', '68', 'OSB结构板（外墙）', 'OSB-WQ-JG-09', 'OSB', 'WQ', 'JG', '09', 'OSB板/结构三级/9厚', '10', '26', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '9', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('780', '8', '68', 'OSB结构板（外墙）', 'OSB-WQ-JG-12', 'OSB', 'WQ', 'JG', '12', 'OSB板/结构三级/12厚', '10', '28', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('781', '8', '68', 'OSB结构板（外墙）', 'OSB-WQ-JG-15', 'OSB', 'WQ', 'JG', '15', 'OSB板/结构三级/15厚', '10', '30', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('782', '8', '68', '防潮纸（外墙）', 'FCZ-WQ-FS-035', 'FCZ', 'WQ', 'FS', '035', '防潮纸/0.35厚', '5', '32', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '卷', '无', '1.00000', '15000', '1000', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('783', '8', '68', '防潮纸（外墙）', 'FCZ-WQ-FS-036', 'FCZ', 'WQ', 'FS', '036', '防潮纸/0.5厚', '5', '34', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('784', '8', '68', 'XPS保温板（外墙）', 'XPS-WQ-BW-30B1', 'XPS', 'WQ', 'BW', '30B1', '挤塑聚苯保温板/B1级/30厚', '5', '36', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '30', '0', '1', '2020-02-24', '1', '2020-02-24');
INSERT INTO `sp_material` VALUES ('785', '8', '68', 'XPS保温板（外墙）', 'XPS-WQ-BW-50B1', 'XPS', 'WQ', 'BW', '50B1', '挤塑聚苯保温板/B1级/50厚', '5', '38', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '袋装', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('786', '8', '68', 'XPS保温板（外墙）', 'XPS-WQ-BW-60B1', 'XPS', 'WQ', 'BW', '60B1', '挤塑聚苯保温板/B1级/60厚', '5', '42', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('787', '8', '68', 'XPS保温板（外墙）', 'XPS-WQ-BW-80B1', 'XPS', 'WQ', 'BW', '80B1', '挤塑聚苯保温板/B1级/80厚', '5', '45', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('788', '8', '68', '防腐木龙骨（外墙）', 'MF-WQ-WZ-Z', 'MF', 'WQ', 'WZ', 'Z', '防腐木方/樟子松', '5', '50', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('789', '8', '68', '钢板网', 'GBW-WQ-WZ-Z', 'GBW', 'WQ', 'WZ', 'Z', '钢板网', '10', '55', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('790', '8', '68', '外墙文化石', 'WHS-WQ-WZ-Z', 'WHS', 'WQ', 'WZ', 'Z', '外墙文化石', '10', '60', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('791', '8', '68', '披水件(普通外墙勒脚)', 'PJ-WQ-WZ-01', 'PJ', 'WQ', 'WZ', '01', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '75', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('792', '8', '68', '披水件(外墙平台勒脚)', 'PJ-WQ-WZ-02', 'PJ', 'WQ', 'WZ', '02', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '78', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('793', '8', '69', '石膏板（外墙内侧）', 'SGB-WQ-NZ-12', 'SGB', 'WQ', 'NZ', '12', '普通纸面石膏板/12厚', '5', '2', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '无', '捆装', '0.28000', '3000', '1200', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('794', '8', '69', '石膏板（外墙内侧）', 'SGB-WQ-NZ-FH15', 'SGB', 'WQ', 'NZ', 'FH15', '防火石膏板/15厚', '5', '4', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('795', '8', '69', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-10', 'GSG', 'WQ', 'NZ', '10', '硅酸钙板/10厚', '5', '6', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '0.35000', '2400', '1200', '0', '10', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('796', '8', '69', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-12', 'GSG', 'WQ', 'NZ', '12', '硅酸钙板/12厚', '5', '8', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('797', '8', '69', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-15', 'GSG', 'WQ', 'NZ', '15', '硅酸钙板/15厚', '5', '10', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('798', '8', '69', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-75', 'BLM', 'WQ', 'BW', '75', '单面铝箔玻璃棉毡/16KG/立方/75厚', '5', '12', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '卷', '捆装', '1.00000', '0', '0', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('799', '8', '69', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-100', 'BLM', 'WQ', 'BW', '100', '单面铝箔玻璃棉毡/16KG/立方/100厚', '5', '14', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('800', '8', '69', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-50', 'YM', 'WQ', 'BW', '50', '岩棉板/100KG/立方/50厚', '5', '16', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('801', '8', '69', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-60', 'YM', 'WQ', 'BW', '60', '岩棉板/100KG/立方/60厚', '5', '18', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('802', '8', '69', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-70', 'YM', 'WQ', 'BW', '70', '岩棉板/100KG/立方/70厚', '5', '20', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('803', '8', '69', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-80', 'YM', 'WQ', 'BW', '80', '岩棉板/100KG/立方/80厚', '5', '22', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('804', '8', '69', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-100', 'YM', 'WQ', 'BW', '100', '岩棉板/100KG/立方/100厚', '5', '24', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('805', '8', '69', 'OSB结构板（外墙）', 'OSB-WQ-JG-09', 'OSB', 'WQ', 'JG', '09', 'OSB板/结构三级/9厚', '10', '26', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '9', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('806', '8', '69', 'OSB结构板（外墙）', 'OSB-WQ-JG-12', 'OSB', 'WQ', 'JG', '12', 'OSB板/结构三级/12厚', '10', '28', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('807', '8', '69', 'OSB结构板（外墙）', 'OSB-WQ-JG-15', 'OSB', 'WQ', 'JG', '15', 'OSB板/结构三级/15厚', '10', '30', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('808', '8', '69', '防潮纸（外墙）', 'FCZ-WQ-FS-035', 'FCZ', 'WQ', 'FS', '035', '防潮纸/0.35厚', '5', '32', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '卷', '无', '1.00000', '15000', '1000', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('809', '8', '69', '防潮纸（外墙）', 'FCZ-WQ-FS-036', 'FCZ', 'WQ', 'FS', '036', '防潮纸/0.5厚', '5', '34', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('810', '8', '69', 'XPS保温板（外墙）', 'XPS-WQ-BW-30B1', 'XPS', 'WQ', 'BW', '30B1', '挤塑聚苯保温板/B1级/30厚', '5', '36', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '30', '0', '1', '2020-02-24', '1', '2020-02-24');
INSERT INTO `sp_material` VALUES ('811', '8', '69', 'XPS保温板（外墙）', 'XPS-WQ-BW-50B1', 'XPS', 'WQ', 'BW', '50B1', '挤塑聚苯保温板/B1级/50厚', '5', '38', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '袋装', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('812', '8', '69', 'XPS保温板（外墙）', 'XPS-WQ-BW-60B1', 'XPS', 'WQ', 'BW', '60B1', '挤塑聚苯保温板/B1级/60厚', '5', '42', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('813', '8', '69', 'XPS保温板（外墙）', 'XPS-WQ-BW-80B1', 'XPS', 'WQ', 'BW', '80B1', '挤塑聚苯保温板/B1级/80厚', '5', '45', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('814', '8', '69', '防腐木龙骨（外墙）', 'MF-WQ-WZ-Z', 'MF', 'WQ', 'WZ', 'Z', '防腐木方/樟子松', '5', '50', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('815', '8', '69', '岩棉板（外墙）', 'YM-WQ-WZ-30', 'YM', 'WQ', 'WZ', '30', '岩棉保温板/30厚/A级', '5', '52', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('816', '8', '69', '钢板网', 'GBW-WQ-WZ-Z', 'GBW', 'WQ', 'WZ', 'Z', '钢板网', '10', '55', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('817', '8', '69', '外墙文化石', 'WHS-WQ-WZ-Z', 'WHS', 'WQ', 'WZ', 'Z', '外墙文化石', '10', '60', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('818', '8', '69', '披水件(普通外墙勒脚)', 'PJ-WQ-WZ-01', 'PJ', 'WQ', 'WZ', '01', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '75', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('819', '8', '69', '披水件(外墙平台勒脚)', 'PJ-WQ-WZ-02', 'PJ', 'WQ', 'WZ', '02', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '78', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('820', '8', '70', '石膏板（外墙内侧）', 'SGB-WQ-NZ-12', 'SGB', 'WQ', 'NZ', '12', '普通纸面石膏板/12厚', '5', '2', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '无', '捆装', '0.28000', '3000', '1200', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('821', '8', '70', '石膏板（外墙内侧）', 'SGB-WQ-NZ-FH15', 'SGB', 'WQ', 'NZ', 'FH15', '防火石膏板/15厚', '5', '4', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('822', '8', '70', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-10', 'GSG', 'WQ', 'NZ', '10', '硅酸钙板/10厚', '5', '6', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '0.35000', '2400', '1200', '0', '10', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('823', '8', '70', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-12', 'GSG', 'WQ', 'NZ', '12', '硅酸钙板/12厚', '5', '8', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('824', '8', '70', '硅酸钙板（外墙内侧）', 'GSG-WQ-NZ-15', 'GSG', 'WQ', 'NZ', '15', '硅酸钙板/15厚', '5', '10', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('825', '8', '70', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-75', 'BLM', 'WQ', 'BW', '75', '单面铝箔玻璃棉毡/16KG/立方/75厚', '5', '12', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '卷', '捆装', '1.00000', '0', '0', '0', '75', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('826', '8', '70', '玻璃棉（外墙龙骨内）', 'BLM-WQ-BW-100', 'BLM', 'WQ', 'BW', '100', '单面铝箔玻璃棉毡/16KG/立方/100厚', '5', '14', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('827', '8', '70', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-50', 'YM', 'WQ', 'BW', '50', '岩棉板/100KG/立方/50厚', '5', '16', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('828', '8', '70', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-60', 'YM', 'WQ', 'BW', '60', '岩棉板/100KG/立方/60厚', '5', '18', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('829', '8', '70', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-70', 'YM', 'WQ', 'BW', '70', '岩棉板/100KG/立方/70厚', '5', '20', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('830', '8', '70', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-80', 'YM', 'WQ', 'BW', '80', '岩棉板/100KG/立方/80厚', '5', '22', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('831', '8', '70', '岩棉板（外墙龙骨内）', 'YM-WQ-BW-100', 'YM', 'WQ', 'BW', '100', '岩棉板/100KG/立方/100厚', '5', '24', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('832', '8', '70', 'OSB结构板（外墙）', 'OSB-WQ-JG-09', 'OSB', 'WQ', 'JG', '09', 'OSB板/结构三级/9厚', '10', '26', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '9', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('833', '8', '70', 'OSB结构板（外墙）', 'OSB-WQ-JG-12', 'OSB', 'WQ', 'JG', '12', 'OSB板/结构三级/12厚', '10', '28', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '0.34000', '2440', '1220', '0', '12', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('834', '8', '70', 'OSB结构板（外墙）', 'OSB-WQ-JG-15', 'OSB', 'WQ', 'JG', '15', 'OSB板/结构三级/15厚', '10', '30', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('835', '8', '70', '防潮纸（外墙）', 'FCZ-WQ-FS-035', 'FCZ', 'WQ', 'FS', '035', '防潮纸/0.35厚', '5', '32', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '卷', '无', '1.00000', '15000', '1000', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('836', '8', '70', '防潮纸（外墙）', 'FCZ-WQ-FS-036', 'FCZ', 'WQ', 'FS', '036', '防潮纸/0.5厚', '5', '34', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('837', '8', '70', 'XPS保温板（外墙）', 'XPS-WQ-BW-30B1', 'XPS', 'WQ', 'BW', '30B1', '挤塑聚苯保温板/B1级/30厚', '5', '36', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '30', '0', '1', '2020-02-24', '1', '2020-02-24');
INSERT INTO `sp_material` VALUES ('838', '8', '70', 'XPS保温板（外墙）', 'XPS-WQ-BW-50B1', 'XPS', 'WQ', 'BW', '50B1', '挤塑聚苯保温板/B1级/50厚', '5', '38', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '袋装', '1.39000', '1200', '600', '0', '50', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('839', '8', '70', 'XPS保温板（外墙）', 'XPS-WQ-BW-60B1', 'XPS', 'WQ', 'BW', '60B1', '挤塑聚苯保温板/B1级/60厚', '5', '42', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '60', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('840', '8', '70', 'XPS保温板（外墙）', 'XPS-WQ-BW-80B1', 'XPS', 'WQ', 'BW', '80B1', '挤塑聚苯保温板/B1级/80厚', '5', '45', '0', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', '张', '散装', '无', '1.39000', '1200', '600', '0', '80', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('841', '8', '70', '防腐木龙骨（外墙）', 'MF-WQ-WZ-Z', 'MF', 'WQ', 'WZ', 'Z', '防腐木方/樟子松', '5', '50', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('842', '8', '70', '岩棉板（外墙）', 'YM-WQ-WZ-50', 'YM', 'WQ', 'WZ', '50', '岩棉保温板/50厚/A级', '5', '52', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('843', '8', '70', '钢板网', 'GBW-WQ-WZ-Z', 'GBW', 'WQ', 'WZ', 'Z', '钢板网', '10', '55', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('844', '8', '70', '外墙文化石', 'WHS-WQ-WZ-Z', 'WHS', 'WQ', 'WZ', 'Z', '外墙文化石', '10', '60', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm2', 'm2', '捆装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('845', '8', '70', '披水件(普通外墙勒脚)', 'PJ-WQ-WZ-01', 'PJ', 'WQ', 'WZ', '01', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '75', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('846', '8', '70', '披水件(外墙平台勒脚)', 'PJ-WQ-WZ-02', 'PJ', 'WQ', 'WZ', '02', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '78', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('847', '8', '71', '披水件(外墙平台勒脚)', 'PJ-WQ-WZ-02', 'PJ', 'WQ', 'WZ', '02', '静电粉末喷涂铝板金属件/0.8厚/咖啡色', '5', '78', '1', '1', '超管', '2020-02-21', '2020-02-21', null, null, 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('848', '7', '5', '自攻钉（结构）', 'LD-JG-Z', 'LD', 'JG', '0', 'Z', '自攻自钻螺钉系列/镀锌钢钉', '5', '7', '1', '1', '超管', '2020-02-22', '2020-02-26', '1', '超管', 'm2', 'm2', '0', '箱装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', null, null);
INSERT INTO `sp_material` VALUES ('849', '7', '9', '自攻钉（结构）', 'LD-JG-Z', 'LD', 'JG', '0', 'Z', '自攻自钻螺钉系列/镀锌钢钉', '5', '7', '1', '1', '超管', '2020-02-22', '2020-02-26', '1', '超管', 'm2', 'm2', '0', '箱装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', null, null);
INSERT INTO `sp_material` VALUES ('850', '7', '23', '自攻钉（结构）', 'LD-JG-Z', 'LD', 'JG', '0', 'Z', '自攻自钻螺钉系列/镀锌钢钉', '5', '7', '1', '1', '超管', '2020-02-22', '2020-02-26', '1', '超管', 'm2', 'm2', '0', '箱装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', null, null);
INSERT INTO `sp_material` VALUES ('851', '7', '24', '自攻钉（结构）', 'LD-JG-Z', 'LD', 'JG', '0', 'Z', '自攻自钻螺钉系列/镀锌钢钉', '5', '10', '1', '1', '超管', '2020-02-22', '2020-02-26', '1', '超管', 'm2', 'm2', '0', '箱装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', null, null);
INSERT INTO `sp_material` VALUES ('852', '8', '54', '自攻钉（外墙）', 'LD-WQ-WZ-Z', 'LD', 'WQ', 'WZ', 'Z', '自攻钉系列/镀锌钢钉', '5', '80', '1', '1', '超管', '2020-02-22', '2020-02-22', null, null, 'm2', 'm2', '0', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('853', '8', '6', '自攻钉（外墙）', 'LD-WQ-WZ-Z', 'LD', 'WQ', 'WZ', 'Z', '自攻钉系列/镀锌钢钉', '5', '80', '1', '1', '超管', '2020-02-22', '2020-02-22', null, null, 'm2', 'm2', '0', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', null, null);
INSERT INTO `sp_material` VALUES ('854', '13', '128', '玻璃棉（吊顶内-单层铺设）', 'BLM-DD-BW-75', 'BLM', 'DD', 'BW', '75', '单面铝箔玻璃棉/16kg/立方/75厚', '5', '3', '0', '1', '超管', '2020-02-24', '2020-02-24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('855', '13', '128', '玻璃棉（吊顶内-双层铺设）', 'BLM-DD-BW-75*2', 'BLM', 'DD', 'BW', '75*2', '单面铝箔玻璃棉/16kg/立方/150厚', '5', '5', '1', '1', '超管', '2020-02-24', '2020-02-24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('856', '13', '128', '轻钢龙骨吊顶', 'QGLG-DD-NZ-Z', 'QGLG', 'DD', 'NZ', 'Z', '镀锌轻钢龙骨', '5', '7', '1', '1', '超管', '2020-02-24', '2020-02-24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('857', '13', '128', '石膏板（吊顶）', 'SGB-DD-NZ-9.5', 'SGB', 'DD', 'NZ', '9.5', '普通纸面石膏板/9.5厚', '5', '10', '0', '1', '超管', '2020-02-24', '2020-02-24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('858', '13', '128', '石膏板（吊顶）', 'SGB-DD-NZ-FS9.5', 'SGB', 'DD', 'NZ', 'FS9.5', '防水石膏板/9.5厚', '5', '12', '1', '1', '超管', '2020-02-24', '2020-02-24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('859', '13', '128', '石膏板（吊顶）', 'SGB-DD-NZ-FH15', 'SGB', 'DD', 'NZ', 'FH15', '防火石膏板/15厚', '5', '15', '0', '1', '超管', '2020-02-24', '2020-02-24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('860', '13', '129', '玻璃棉（吊顶内-单层铺设）', 'BLM-DD-BW-75', 'BLM', 'DD', 'BW', '75', '单面铝箔玻璃棉/16kg/立方/75厚', '5', '3', '0', '1', '超管', '2020-02-24', '2020-02-24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('861', '13', '129', '玻璃棉（吊顶内-双层铺设）', 'BLM-DD-BW-75*2', 'BLM', 'DD', 'BW', '75*2', '单面铝箔玻璃棉/16kg/立方/150厚', '5', '5', '1', '1', '超管', '2020-02-24', '2020-02-24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('862', '13', '129', '轻钢龙骨吊顶', 'QGLG-DD-NZ-Z', 'QGLG', 'DD', 'NZ', 'Z', '镀锌轻钢龙骨', '5', '7', '1', '1', '超管', '2020-02-24', '2020-02-24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('863', '13', '129', '石膏板（吊顶）', 'SGB-DD-NZ-9.5', 'SGB', 'DD', 'NZ', '9.5', '普通纸面石膏板/9.5厚', '5', '10', '0', '1', '超管', '2020-02-24', '2020-02-24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('864', '13', '129', '石膏板（吊顶）', 'SGB-DD-NZ-FS9.5', 'SGB', 'DD', 'NZ', 'FS9.5', '防水石膏板/9.5厚', '5', '12', '0', '1', '超管', '2020-02-24', '2020-02-24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('865', '13', '129', '石膏板（吊顶）', 'SGB-DD-NZ-FH15', 'SGB', 'DD', 'NZ', 'FH15', '防火石膏板/15厚', '5', '15', '1', '1', '超管', '2020-02-24', '2020-02-24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('866', '13', '34', '玻璃棉（吊顶内-单层铺设）', 'BLM-DD-BW-75', 'BLM', 'DD', 'BW', '75', '单面铝箔玻璃棉/16kg/立方/75厚', '5', '3', '0', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('867', '13', '34', '玻璃棉（吊顶内-双层铺设）', 'BLM-DD-BW-75*2', 'BLM', 'DD', 'BW', '75*2', '单面铝箔玻璃棉/16kg/立方/150厚', '5', '5', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('868', '13', '34', '轻钢龙骨吊顶', 'QGLG-DD-NZ-Z', 'QGLG', 'DD', 'NZ', 'Z', '镀锌轻钢龙骨', '5', '7', '0', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('869', '13', '34', '石膏板（吊顶）', 'SGB-DD-NZ-9.5', 'SGB', 'DD', 'NZ', '9.5', '普通纸面石膏板/9.5厚', '5', '10', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('870', '13', '34', '石膏板（吊顶）', 'SGB-DD-NZ-FS9.5', 'SGB', 'DD', 'NZ', 'FS9.5', '防水石膏板/9.5厚', '5', '12', '0', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('871', '13', '34', '石膏板（吊顶）', 'SGB-DD-NZ-FH15', 'SGB', 'DD', 'NZ', 'FH15', '防火石膏板/15厚', '5', '15', '0', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('872', '13', '34', '木龙骨', 'MF-DD-NZ-Z', 'MF', 'DD', 'NZ', 'Z', '防腐木方/30*30', '5', '9', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('873', '13', '130', '玻璃棉（吊顶内-单层铺设）', 'BLM-DD-BW-75', 'BLM', 'DD', 'BW', '75', '单面铝箔玻璃棉/16kg/立方/75厚', '5', '3', '0', '1', '超管', '2020-02-24', '2020-02-24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('874', '13', '130', '玻璃棉（吊顶内-双层铺设）', 'BLM-DD-BW-75*2', 'BLM', 'DD', 'BW', '75*2', '单面铝箔玻璃棉/16kg/立方/150厚', '5', '5', '1', '1', '超管', '2020-02-24', '2020-02-24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('875', '13', '130', '轻钢龙骨吊顶', 'QGLG-DD-NZ-Z', 'QGLG', 'DD', 'NZ', 'Z', '镀锌轻钢龙骨', '5', '7', '0', '1', '超管', '2020-02-24', '2020-02-24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('876', '13', '130', '木龙骨', 'MF-DD-NZ-Z', 'MF', 'DD', 'NZ', 'Z', '防腐木方/30*30', '5', '9', '1', '1', '超管', '2020-02-24', '2020-02-24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('877', '13', '130', '石膏板（吊顶）', 'SGB-DD-NZ-9.5', 'SGB', 'DD', 'NZ', '9.5', '普通纸面石膏板/9.5厚', '5', '10', '0', '1', '超管', '2020-02-24', '2020-02-24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('878', '13', '130', '石膏板（吊顶）', 'SGB-DD-NZ-FS9.5', 'SGB', 'DD', 'NZ', 'FS9.5', '防水石膏板/9.5厚', '5', '12', '1', '1', '超管', '2020-02-24', '2020-02-24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('879', '13', '130', '石膏板（吊顶）', 'SGB-DD-NZ-FH15', 'SGB', 'DD', 'NZ', 'FH15', '防火石膏板/15厚', '5', '15', '0', '1', '超管', '2020-02-24', '2020-02-24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('880', '13', '35', '玻璃棉（吊顶内-单层铺设）', 'BLM-DD-BW-75', 'BLM', 'DD', 'BW', '75', '单面铝箔玻璃棉/16kg/立方/75厚', '5', '3', '0', '1', '超管', '2020-02-24', '2020-02-24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('881', '13', '35', '玻璃棉（吊顶内-双层铺设）', 'BLM-DD-BW-75*2', 'BLM', 'DD', 'BW', '75*2', '单面铝箔玻璃棉/16kg/立方/150厚', '5', '5', '1', '1', '超管', '2020-02-24', '2020-02-24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('882', '13', '35', '轻钢龙骨吊顶', 'QGLG-DD-NZ-Z', 'QGLG', 'DD', 'NZ', 'Z', '镀锌轻钢龙骨', '5', '7', '1', '1', '超管', '2020-02-24', '2020-02-24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('883', '13', '35', '石膏板（吊顶）', 'SGB-DD-NZ-9.5', 'SGB', 'DD', 'NZ', '9.5', '普通纸面石膏板/9.5厚', '5', '10', '0', '1', '超管', '2020-02-24', '2020-02-24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('884', '13', '35', '石膏板（吊顶）', 'SGB-DD-NZ-FS9.5', 'SGB', 'DD', 'NZ', 'FS9.5', '防水石膏板/9.5厚', '5', '12', '0', '1', '超管', '2020-02-24', '2020-02-24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('885', '13', '35', '石膏板（吊顶）', 'SGB-DD-NZ-FH15', 'SGB', 'DD', 'NZ', 'FH15', '防火石膏板/15厚', '5', '15', '0', '1', '超管', '2020-02-24', '2020-02-24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('886', '14', '42', '三玻断桥铝窗', 'C-C-WZ-Z', 'C', 'C', 'WZ', 'Z', '三玻断桥铝/70系列/钢化玻璃+LOW-E', '0', '2', '1', '1', '超管', '2020-02-24', '2020-02-24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('887', '14', '36', '塑钢双玻窗', 'C-C-WZ-Z', 'C', 'C', 'WZ', 'Z', '塑钢双玻窗', '0', '2', '1', '1', '超管', '2020-02-24', '2020-02-24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('888', '15', '76', '外门系统（钢制仿铜门）', 'M-MC-WZ-01', 'M', 'MC', 'WZ', '01', '钢制仿铜门', '0', '2', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', '樘', '樘', '0', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', '1', '2020-02-24');
INSERT INTO `sp_material` VALUES ('889', '15', '77', '外门系统（钢制防盗门）', 'M-MC-WZ-02', 'M', 'MC', 'WZ', '02', '钢制防盗门', '0', '2', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', '樘', '樘', '0', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', '1', '2020-02-24');
INSERT INTO `sp_material` VALUES ('890', '15', '78', '外门系统（电动卷帘门）', 'M-MC-WZ-03', 'M', 'MC', 'WZ', '03', '电动卷帘门', '0', '2', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', 'm2', 'm2', '0', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', '1', '2020-02-24');
INSERT INTO `sp_material` VALUES ('891', '15', '43', '外门系统（塑钢门）', 'M-MC-WZ-04', 'M', 'MC', 'WZ', '04', '塑钢双玻门', '0', '2', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', '樘', '樘', '0', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', '1', '2020-02-24');
INSERT INTO `sp_material` VALUES ('892', '15', '44', '外门系统（断桥铝门）', 'M-MC-WZ-05', 'M', 'MC', 'WZ', '05', '双玻断桥铝门/60系列/钢化玻璃', '0', '2', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', 'm2', 'm2', '0', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', '1', '2020-02-24');
INSERT INTO `sp_material` VALUES ('893', '15', '45', '外门系统（断桥铝门）', 'M-MC-WZ-06', 'M', 'MC', 'WZ', '06', '双玻断桥铝门/70系列/钢化玻璃', '0', '2', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', 'm2', 'm2', '0', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-24', '1', '2020-02-24');
INSERT INTO `sp_material` VALUES ('894', '16', '46', '铝合金装饰件（腰线1）', 'PJ-WQB-WZ-01', 'PJ', 'WQB', 'WZ', '01', '铝合金腰线/静电粉末喷涂/0.8厚', '5', '2', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('895', '16', '46', '铝合金装饰件（檐口底部1）', 'PJ-WQB-WZ-03', 'PJ', 'WQB', 'WZ', '04', '铝合金腰线/静电粉末喷涂/0.8厚', '5', '4', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('896', '16', '47', 'GRC装饰件', 'ZSJ-WQ-WZ-Z', 'ZSJ', 'WQ', 'WZ', 'Z', 'GRC水泥构件', '5', '2', '1', '1', '超管', '2020-02-24', '2020-02-24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('897', '16', '79', '聚苯装饰构件（门窗套）', 'ZSJ-MC-WZ-Z', 'ZSJ', 'MC', 'WZ', 'Z', '聚苯装饰构件/真石漆面层处理', '5', '2', '1', '1', '超管', '2020-02-24', '2020-02-24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('898', '16', '79', '聚苯装饰构件（腰线）', 'ZSJ-WQ-WZ-Z', 'ZSJ', 'WQ', 'WZ', 'Z', '聚苯装饰构件/真石漆面层处理', '5', '4', '1', '1', '超管', '2020-02-24', '2020-02-24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('899', '16', '80', '铁艺装饰构件（栏杆）', 'ZSJ-ZL-WZ-05', 'ZSJ', 'ZL', 'WZ', '05', '铁艺栏杆', '5', '2', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('900', '16', '107', '门窗口扣板（门窗套）', 'ZSJ-MC-WZ-Z', 'ZSJ', 'MC', 'WZ', 'Z', '植物纤维水泥基装饰板', '5', '2', '1', '1', '超管', '2020-02-24', '2020-02-24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('901', '16', '131', '不锈钢装饰构件（栏杆）', 'ZSJ-ZL-WZ-03', 'ZSJ', 'ZL', 'WZ', '03', '不锈钢栏杆', '5', '2', '1', '1', '超管', '2020-02-24', '2020-02-24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('902', '18', '50', 'PVC电管', 'PVC-DQ-NZ-Z', 'PVC', 'DQ', 'NZ', 'Z', 'PVC电管', '5', '2', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('903', '18', '50', 'BV电线', 'BV-DQ-NZ-Z', 'BV', 'DQ', 'NZ', 'Z', 'BV电线', '5', '4', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('904', '18', '51', 'JDG电管', 'JDG-DQ-NZ-Z', 'JDG', 'DQ', 'NZ', 'Z', 'JDG金属电管', '5', '2', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('905', '18', '51', 'BV电线', 'BV-DQ-NZ-Z', 'BV', 'DQ', 'NZ', 'Z', 'BV电线', '5', '4', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('906', '18', '50', '配电箱', 'PDX-DQ-NZ-Z', 'PDX', 'DQ', 'NZ', 'Z', '配电箱', '0', '6', '1', '1', '超管', '2020-02-24', '2020-02-24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('907', '18', '51', '配电箱', 'PDX-DQ-NZ-Z', 'PDX', 'DQ', 'NZ', 'Z', '配电箱', '0', '6', '1', '1', '超管', '2020-02-24', '2020-02-24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('908', '16', '46', '铝合金装饰件（腰线2）', 'PJ-WQB-WZ-02', 'PJ', 'WQB', 'WZ', '02', '铝合金腰线/静电粉末喷涂/0.8厚', '5', '3', '1', '1', '超管', '2020-02-24', '2020-02-24', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('909', '11', '13', '轻钢龙骨（75）', 'QGLG-YK-WZ-Z', 'QGLG', 'YK', 'WZ', 'Z', '镀锌轻钢龙骨/75系列', '5', '2', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('910', '11', '13', '硅酸钙板（檐口）', 'GSG-YK-WZ-10', 'GSG', 'YK', 'WZ', '10', '硅酸钙板/10厚', '5', '4', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('911', '11', '13', '披水件（普通檐口）', 'PJ-YK-WZ-01', 'PJ', 'YK', 'WZ', '01', '静电粉末喷涂铝板金属件/0.8厚', '5', '6', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('912', '11', '13', '披水件（山墙檐口）', 'PJ-YK-WZ-02', 'PJ', 'YK', 'WZ', '02', '静电粉末喷涂铝板金属件/0.8厚', '5', '8', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('913', '11', '13', '硅酮耐候密封胶（檐口））', 'MFJ-YK-WZ-01', 'MFJ', 'YK', 'WZ', '01', '外墙专用硅酮耐候密封胶', '5', '10', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('914', '11', '29', '轻钢龙骨（75）', 'QGLG-YK-WZ-Z', 'QGLG', 'YK', 'WZ', 'Z', '镀锌轻钢龙骨/75系列', '5', '2', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('915', '11', '29', '硅酸钙板（檐口）', 'GSG-YK-WZ-10', 'GSG', 'YK', 'WZ', '10', '硅酸钙板/10厚', '5', '4', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('916', '11', '29', '披水件（普通檐口）', 'PJ-YK-WZ-01', 'PJ', 'YK', 'WZ', '01', '静电粉末喷涂铝板金属件/0.8厚', '5', '6', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('917', '11', '29', '披水件（山墙檐口）', 'PJ-YK-WZ-02', 'PJ', 'YK', 'WZ', '02', '静电粉末喷涂铝板金属件/0.8厚', '5', '8', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('918', '11', '29', '硅酮耐候密封胶（檐口））', 'MFJ-YK-WZ-01', 'MFJ', 'YK', 'WZ', '01', '外墙专用硅酮耐候密封胶', '5', '10', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('919', '11', '29', '落水系统(PVC)', 'PS-YK-WZ-01', 'PS', 'YK', 'WZ', '01', 'PVC落水系统/天沟/落水管', '5', '12', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('920', '11', '30', '轻钢龙骨（75）', 'QGLG-YK-WZ-Z', 'QGLG', 'YK', 'WZ', 'Z', '镀锌轻钢龙骨/75系列', '5', '2', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('921', '11', '30', '硅酸钙板（檐口）', 'GSG-YK-WZ-10', 'GSG', 'YK', 'WZ', '10', '硅酸钙板/10厚', '5', '4', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('922', '11', '30', '披水件（普通檐口）', 'PJ-YK-WZ-01', 'PJ', 'YK', 'WZ', '01', '静电粉末喷涂铝板金属件/0.8厚', '5', '6', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('923', '11', '30', '披水件（山墙檐口）', 'PJ-YK-WZ-02', 'PJ', 'YK', 'WZ', '02', '静电粉末喷涂铝板金属件/0.8厚', '5', '8', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('924', '11', '30', '硅酮耐候密封胶（檐口））', 'MFJ-YK-WZ-01', 'MFJ', 'YK', 'WZ', '01', '外墙专用硅酮耐候密封胶', '5', '10', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('925', '11', '30', '落水系统(彩铝)', 'PS-YK-WZ-02', 'PS', 'YK', 'WZ', '02', '彩铝落水系统/天沟/落水管', '5', '12', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('926', '11', '31', '轻钢龙骨（75）', 'QGLG-YK-WZ-Z', 'QGLG', 'YK', 'WZ', 'Z', '镀锌轻钢龙骨/75系列', '5', '2', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('927', '11', '31', '硅酸钙板（檐口）', 'GSG-YK-WZ-10', 'GSG', 'YK', 'WZ', '10', '硅酸钙板/10厚', '5', '4', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('928', '11', '31', '披水件（普通檐口）', 'PJ-YK-WZ-01', 'PJ', 'YK', 'WZ', '01', '静电粉末喷涂铝板金属件/0.8厚', '5', '6', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('929', '11', '31', '披水件（山墙檐口）', 'PJ-YK-WZ-02', 'PJ', 'YK', 'WZ', '02', '静电粉末喷涂铝板金属件/0.8厚', '5', '8', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('930', '11', '31', '硅酮耐候密封胶（檐口））', 'MFJ-YK-WZ-01', 'MFJ', 'YK', 'WZ', '01', '外墙专用硅酮耐候密封胶', '5', '10', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('931', '11', '31', '落水系统(彩铝仿铜)', 'PS-YK-WZ-03', 'PS', 'YK', 'WZ', '03', '彩铝仿铜落水系统/天沟/落水管', '5', '12', '1', '1', '超管', '2020-02-24', '2020-02-24', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('932', '7', '5', '结构屋架连接件（屋架-墙体）', 'PJ-JG-02', 'PJ', 'JG', '0', '02', '镀铝锌G550 /55%  AZ150/1.2厚', '2', '3', '1', '1', '超管', '2020-02-24', '2020-02-26', '1', '超管', 'm2', 'm2', '捆装', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', '1', '2020-02-26');
INSERT INTO `sp_material` VALUES ('933', '7', '9', '结构屋架连接件（屋架-墙体）', 'PJ-JG-02', 'PJ', 'JG', '0', '03', '热镀锌/G550/Z185/1.2厚', '2', '3', '1', '1', '超管', '2020-02-24', '2020-02-26', '1', '超管', 'm2', 'm2', '捆装', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', '1', '2020-02-26');
INSERT INTO `sp_material` VALUES ('934', '7', '23', '结构屋架连接件（屋架-墙体）', 'PJ-JG-03', 'PJ', 'JG', '0', '03', '热镀锌/G550/Z275/1.2厚', '2', '4', '1', '1', '超管', '2020-02-24', '2020-02-26', '1', '超管', 'm2', 'm2', '0', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', null, null);
INSERT INTO `sp_material` VALUES ('935', '7', '108', '薄壁轻钢结构龙骨(140墙龙骨体系）', 'QGJG-JG-04', 'QGJG', 'JG', '0', '04', '镀铝锌G550/55%/AZ150', '2', '1', '1', '1', '超管', '2020-02-26', '2020-02-26', '1', '超管', 'kg', 'kg', '0', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', null, null);
INSERT INTO `sp_material` VALUES ('936', '7', '108', '结构连接件（墙体-墙体）', 'PJ-JG-01', 'PJ', 'JG', '0', '01', '镀铝锌G550 /55%  AZ150/1.2厚', '2', '2', '1', '1', '超管', '2020-02-26', '2020-02-26', '1', '超管', 'm2', 'm2', '0', '箱装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', null, null);
INSERT INTO `sp_material` VALUES ('937', '7', '108', '结构屋架连接件（屋架-墙体）', 'PJ-JG-02', 'PJ', 'JG', '0', '02', '镀铝锌G550 /55%  AZ150/1.2厚', '2', '3', '1', '1', '超管', '2020-02-26', '2020-02-26', '1', '超管', 'm2', 'm2', '捆装', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', '1', '2020-02-26');
INSERT INTO `sp_material` VALUES ('938', '7', '108', '结构屋架连接件（屋架-墙体）', 'PJ-JG-03', 'PJ', 'JG', '0', '03', '镀铝锌G550 /55%  AZ150/1.2厚', '2', '4', '1', '1', '超管', '2020-02-26', '2020-02-26', '1', '超管', 'm2', 'm2', '0', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', null, null);
INSERT INTO `sp_material` VALUES ('939', '7', '108', '结构连接件（檐口）', 'PJ-JG-04', 'PJ', 'JG', '0', '04', '镀铝锌G550 /55%  AZ150/1.2厚', '2', '5', '1', '1', '超管', '2020-02-26', '2020-02-26', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('940', '7', '108', '结构连接件（屋脊）', 'PJ-JG-05', 'PJ', 'JG', '0', '05', '镀铝锌G550 /55%  AZ150/1.2厚', '2', '6', '1', '1', '超管', '2020-02-26', '2020-02-26', '1', '超管', 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '1', '0', '1', '2020-02-26', null, null);
INSERT INTO `sp_material` VALUES ('941', '7', '108', '自攻钉（结构）', 'LD-JG-Z', 'LD', 'JG', '0', 'Z', '自攻自钻螺钉系列/镀锌钢钉', '5', '7', '1', '1', '超管', '2020-02-26', '2020-02-26', '1', '超管', 'm2', 'm2', '0', '箱装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', null, null);
INSERT INTO `sp_material` VALUES ('942', '7', '109', '薄壁轻钢结构龙骨', 'QGJG-JG-05', 'QGJG', 'JG', '0', '05', '镀铝锌G550/55%/AZ150', '2', '10', '0', '1', '超管', '2020-02-26', '2020-02-26', '1', '超管', 'kg', 'kg', '0', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', null, null);
INSERT INTO `sp_material` VALUES ('943', '7', '109', '结构连接件（墙体-墙体）', 'PJ-JG-01', 'PJ', 'JG', '0', '01', '镀铝锌G550 /55%  AZ150/1.2厚', '2', '11', '0', '1', '超管', '2020-02-26', '2020-02-26', '1', '超管', 'm2', 'm2', '0', '箱装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', null, null);
INSERT INTO `sp_material` VALUES ('944', '7', '109', '结构屋架连接件（屋架-墙体）', 'PJ-JG-02', 'PJ', 'JG', '0', '02', '镀铝锌G550 /55%  AZ150/1.2厚', '2', '13', '0', '1', '超管', '2020-02-26', '2020-02-26', '1', '超管', 'm2', 'm2', '捆装', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', '1', '2020-02-26');
INSERT INTO `sp_material` VALUES ('945', '7', '109', '结构屋架连接件（屋架-墙体）', 'PJ-JG-03', 'PJ', 'JG', '0', '03', '镀铝锌G550 /55%  AZ150/1.2厚', '2', '15', '0', '1', '超管', '2020-02-26', '2020-02-26', '1', '超管', 'm2', 'm2', '0', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', null, null);
INSERT INTO `sp_material` VALUES ('946', '7', '109', '结构连接件（檐口）', 'PJ-JG-04', 'PJ', 'JG', '0', '04', '镀铝锌G550 /55%  AZ150/1.2厚', '2', '18', '0', '1', '超管', '2020-02-26', '2020-02-26', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('947', '7', '109', '结构连接件（屋脊）', 'PJ-JG-05', 'PJ', 'JG', '0', '05', '镀铝锌G550 /55%  AZ150/1.2厚', '2', '20', '0', '1', '超管', '2020-02-26', '2020-02-26', '1', '超管', 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '1', '0', '1', '2020-02-26', null, null);
INSERT INTO `sp_material` VALUES ('948', '7', '109', '自攻钉（结构）', 'LD-JG-Z', 'LD', 'JG', '0', 'Z', '自攻自钻螺钉系列/镀锌钢钉', '5', '7', '1', '1', '超管', '2020-02-26', '2020-02-26', '1', '超管', 'm2', 'm2', '0', '箱装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', null, null);
INSERT INTO `sp_material` VALUES ('949', '7', '110', '薄壁轻钢结构龙骨(140墙龙骨体系）', 'QGJG-JG-06', 'QGJG', 'JG', '0', '06', '热镀锌 /G550/Z275', '2', '1', '1', '1', '超管', '2020-02-26', '2020-02-26', '1', '超管', 'kg', 'kg', '0', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', null, null);
INSERT INTO `sp_material` VALUES ('950', '7', '110', '结构连接件（墙体-墙体）', 'PJ-JG-01', 'PJ', 'JG', '0', '01', '热镀锌/G550/Z275/1.2厚', '2', '2', '1', '1', '超管', '2020-02-26', '2020-02-26', '1', '超管', 'm2', 'm2', '0', '箱装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', null, null);
INSERT INTO `sp_material` VALUES ('951', '7', '110', '结构屋架连接件（屋架-墙体）', 'PJ-JG-02', 'PJ', 'JG', '0', '02', '热镀锌/G550/Z275/1.2厚', '2', '3', '1', '1', '超管', '2020-02-26', '2020-02-26', '1', '超管', 'm2', 'm2', '捆装', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', '1', '2020-02-26');
INSERT INTO `sp_material` VALUES ('952', '7', '110', '结构屋架连接件（屋架-墙体）', 'PJ-JG-03', 'PJ', 'JG', '0', '03', '热镀锌/G550/Z275/1.2厚', '2', '4', '1', '1', '超管', '2020-02-26', '2020-02-26', '1', '超管', 'm2', 'm2', '0', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', null, null);
INSERT INTO `sp_material` VALUES ('953', '7', '110', '结构连接件（檐口）', 'PJ-JG-04', 'PJ', 'JG', '0', '04', '热镀锌/G550/Z275/1.2厚', '2', '5', '1', '1', '超管', '2020-02-26', '2020-02-26', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('954', '7', '110', '结构连接件（屋脊）', 'PJ-JG-05', 'PJ', 'JG', '0', '05', '热镀锌/G550/Z275/1.2厚', '2', '6', '1', '1', '超管', '2020-02-26', '2020-02-26', '1', '超管', 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '1', '0', '1', '2020-02-26', null, null);
INSERT INTO `sp_material` VALUES ('955', '7', '110', '自攻钉（结构）', 'LD-JG-Z', 'LD', 'JG', '0', 'Z', '自攻自钻螺钉系列/镀锌钢钉', '5', '7', '1', '1', '超管', '2020-02-26', '2020-02-26', '1', '超管', 'm2', 'm2', '0', '箱装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', null, null);
INSERT INTO `sp_material` VALUES ('956', '7', '109', '薄壁轻钢结构龙骨(140墙龙骨体系）', 'QGJG-JG-05', 'QGJG', 'JG', '0', '05', '热镀锌 /G550/Z185', '2', '1', '1', '1', '超管', '2020-02-26', '2020-02-26', '1', '超管', 'kg', 'kg', '0', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', null, null);
INSERT INTO `sp_material` VALUES ('957', '7', '109', '结构连接件（墙体-墙体）', 'PJ-JG-01', 'PJ', 'JG', '0', '01', '热镀锌/G550/Z185/1.2厚', '2', '2', '1', '1', '超管', '2020-02-26', '2020-02-26', '1', '超管', 'm2', 'm2', '0', '箱装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', null, null);
INSERT INTO `sp_material` VALUES ('958', '7', '109', '结构屋架连接件（屋架-墙体）', 'PJ-JG-03', 'PJ', 'JG', '0', '03', '热镀锌/G550/Z185/1.2厚', '2', '3', '1', '1', '超管', '2020-02-26', '2020-02-26', '1', '超管', 'm2', 'm2', '0', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', null, null);
INSERT INTO `sp_material` VALUES ('959', '7', '109', '结构屋架连接件（屋架-墙体）', 'PJ-JG-02', 'PJ', 'JG', '0', '02', '热镀锌/G550/Z185/1.2厚', '2', '4', '1', '1', '超管', '2020-02-26', '2020-02-26', '1', '超管', 'm2', 'm2', '捆装', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', '1', '2020-02-26');
INSERT INTO `sp_material` VALUES ('960', '7', '109', '结构连接件（檐口）', 'PJ-JG-04', 'PJ', 'JG', '0', '04', '热镀锌/G550/Z185/1.2厚', '2', '5', '1', '1', '超管', '2020-02-26', '2020-02-26', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('961', '7', '109', '结构连接件（屋脊）', 'PJ-JG-05', 'PJ', 'JG', '0', '05', '热镀锌/G550/Z185/1.2厚', '2', '6', '1', '1', '超管', '2020-02-26', '2020-02-26', '1', '超管', 'm', '根', '3m/根 ', '捆装', '0.33000', '3000', '0', '0', '1', '0', '1', '2020-02-26', null, null);
INSERT INTO `sp_material` VALUES ('962', '7', '109', '自攻钉（结构）', 'LD-JG-Z', 'LD', 'JG', '0', 'Z', '自攻自钻螺钉系列/镀锌钢钉', '5', '21', '0', '1', '超管', '2020-02-26', '2020-02-26', '1', '超管', 'm2', 'm2', '0', '箱装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', null, null);
INSERT INTO `sp_material` VALUES ('963', '7', '111', '焊接H型钢框架结构', 'HGJG-JG-01', 'HGJG', 'JG', '0', '01', 'Q345焊接H型钢', '2', '1', '1', '1', '超管', '2020-02-26', '2020-02-26', '1', '超管', 'kg', 'kg', '散装', '无', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', null, null);
INSERT INTO `sp_material` VALUES ('964', '7', '111', '薄壁轻钢结构龙骨(140墙龙骨体系）', 'QGJG-JG-03', 'QGJG', 'JG', '0', '03', '热镀锌 /G550/Z275', '2', '2', '1', '1', '超管', '2020-02-26', '2020-02-26', '1', '超管', 'kg', 'kg', '无', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', null, null);
INSERT INTO `sp_material` VALUES ('965', '7', '111', '结构连接件（墙体-墙体）', 'PJ-JG-01', 'PJ', 'JG', '0', '01', '热镀锌/G550/Z275/1.2厚', '2', '3', '1', '1', '超管', '2020-02-26', '2020-02-26', '1', '超管', 'm2', 'm2', '0', '箱装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', null, null);
INSERT INTO `sp_material` VALUES ('966', '7', '111', '结构屋架连接件（屋架-墙体）', 'PJ-JG-02', 'PJ', 'JG', '0', '02', '热镀锌/G550/Z275/1.2厚', '2', '4', '1', '1', '超管', '2020-02-26', '2020-02-26', '1', '超管', 'm2', 'm2', '捆装', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', '1', '2020-02-26');
INSERT INTO `sp_material` VALUES ('967', '7', '111', '结构连接件（檐口）', 'PJ-JG-03', 'PJ', 'JG', '0', '03', '热镀锌/G550/Z275/1.2厚', '2', '5', '1', '1', '超管', '2020-02-26', '2020-02-26', '1', '超管', 'm2', 'm2', '0', '捆装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', null, null);
INSERT INTO `sp_material` VALUES ('968', '7', '111', '结构连接件（屋脊）', 'PJ-JG-04', 'PJ', 'JG', '0', '04', '热镀锌/G550/Z275/1.2厚', '2', '6', '1', '1', '超管', '2020-02-26', '2020-02-26', '1', '超管', null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `sp_material` VALUES ('969', '7', '111', '自攻钉（结构）', 'LD-JG-Z', 'LD', 'JG', '0', 'Z', '自攻自钻螺钉系列/镀锌钢钉', '5', '10', '1', '1', '超管', '2020-02-26', '2020-02-26', '1', '超管', 'm2', 'm2', '0', '箱装', '1.00000', '0', '0', '0', '0', '0', '1', '2020-02-26', null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_material_brand_supplier
-- ----------------------------
INSERT INTO `sp_material_brand_supplier` VALUES ('1', '103', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '6.5000', 'kg', '6.5000', 'kg', '7.5000', 'kg', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('2', '33', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '9.5000', 'm2', '9.5000', '张', '11.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('3', '17', '12', null, '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '3.0000', '根', '3.0000', '根', '6.0000', '根', '1', '超管', '2020-02-23');
INSERT INTO `sp_material_brand_supplier` VALUES ('4', '29', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '6.0000', 'kg', '6.0000', 'kg', '7.0000', 'kg', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('5', '141', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '6.2000', 'kg', '6.2000', 'kg', '7.2000', 'kg', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('6', '150', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '6.2000', 'kg', '6.2000', 'kg', '7.2000', 'kg', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('7', '69', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '9.5000', 'm2', '9.5000', '张', '11.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('8', '163', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '9.5000', 'm2', '9.5000', '张', '11.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('9', '173', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '9.5000', 'm2', '9.5000', '张', '11.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('10', '183', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '9.5000', 'm2', '9.5000', '张', '11.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('11', '193', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '9.5000', 'm2', '9.5000', '张', '11.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('12', '203', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '9.5000', 'm2', '9.5000', '张', '11.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('13', '213', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '9.5000', 'm2', '9.5000', '张', '11.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('14', '239', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '9.5000', 'm2', '9.5000', '张', '11.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('15', '265', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '9.5000', 'm2', '9.5000', '张', '11.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('16', '291', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '9.5000', 'm2', '9.5000', '张', '11.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('17', '317', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '9.5000', 'm2', '9.5000', '张', '11.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('18', '344', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '9.5000', 'm2', '9.5000', '张', '11.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('19', '371', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '9.5000', 'm2', '9.5000', '张', '11.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('20', '398', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '9.5000', 'm2', '9.5000', '张', '11.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('21', '425', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '9.5000', 'm2', '9.5000', '张', '11.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('22', '715', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '9.5000', 'm2', '9.5000', '张', '11.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('23', '741', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '9.5000', 'm2', '9.5000', '张', '11.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('24', '767', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '9.5000', 'm2', '9.5000', '张', '11.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('25', '793', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '9.5000', 'm2', '9.5000', '张', '11.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('26', '820', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '9.5000', 'm2', '9.5000', '张', '11.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('27', '51', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '4.5000', 'm2', '4.5000', 'm2', '6.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('28', '61', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '4.5000', 'm2', '4.5000', 'm2', '6.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('29', '165', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '4.5000', 'm2', '4.5000', 'm2', '6.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('30', '175', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '4.5000', 'm2', '4.5000', 'm2', '6.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('31', '185', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '4.5000', 'm2', '4.5000', 'm2', '6.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('32', '195', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '4.5000', 'm2', '4.5000', 'm2', '6.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('33', '205', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '4.5000', 'm2', '4.5000', 'm2', '6.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('34', '218', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '4.5000', 'm2', '4.5000', 'm2', '6.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('35', '244', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '4.5000', 'm2', '4.5000', 'm2', '6.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('36', '270', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '4.5000', 'm2', '4.5000', 'm2', '6.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('37', '296', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '4.5000', 'm2', '4.5000', 'm2', '6.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('38', '322', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '4.5000', 'm2', '4.5000', 'm2', '6.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('39', '349', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '4.5000', 'm2', '4.5000', 'm2', '6.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('40', '376', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '4.5000', 'm2', '4.5000', 'm2', '6.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('41', '403', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '4.5000', 'm2', '4.5000', 'm2', '6.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('42', '430', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '4.5000', 'm2', '4.5000', 'm2', '6.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('43', '720', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '4.5000', 'm2', '4.5000', 'm2', '6.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('44', '746', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '4.5000', 'm2', '4.5000', 'm2', '6.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('45', '772', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '4.5000', 'm2', '4.5000', 'm2', '6.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('46', '798', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '4.5000', 'm2', '4.5000', 'm2', '6.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('47', '825', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '4.5000', 'm2', '4.5000', 'm2', '6.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('48', '67', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '28.0000', 'm2', '28.0000', '张', '35.0000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('49', '226', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '28.0000', 'm2', '28.0000', '张', '35.0000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('50', '252', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '28.0000', 'm2', '28.0000', '张', '35.0000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('51', '278', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '28.0000', 'm2', '28.0000', '张', '35.0000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('52', '304', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '28.0000', 'm2', '28.0000', '张', '35.0000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('53', '330', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '28.0000', 'm2', '28.0000', '张', '35.0000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('54', '357', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '28.0000', 'm2', '28.0000', '张', '35.0000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('55', '384', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '28.0000', 'm2', '28.0000', '张', '35.0000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('56', '411', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '28.0000', 'm2', '28.0000', '张', '35.0000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('57', '438', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '28.0000', 'm2', '28.0000', '张', '35.0000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('58', '728', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '28.0000', 'm2', '28.0000', '张', '35.0000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('59', '754', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '28.0000', 'm2', '28.0000', '张', '35.0000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('60', '780', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '28.0000', 'm2', '28.0000', '张', '35.0000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('61', '833', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '28.0000', 'm2', '28.0000', '张', '35.0000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('62', '54', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '28.0000', 'm2', '28.0000', '张', '35.0000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('63', '806', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '28.0000', 'm2', '28.0000', '张', '35.0000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('64', '56', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '4.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('65', '62', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '4.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('66', '167', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '4.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('67', '177', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '4.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('68', '187', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '4.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('69', '197', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '4.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('70', '207', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '4.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('71', '228', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '4.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('72', '254', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '4.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('73', '280', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '4.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('74', '306', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '4.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('75', '332', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '4.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('76', '359', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '4.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('77', '386', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '4.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('78', '413', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '4.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('79', '440', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '4.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('80', '730', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '4.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('81', '756', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '4.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('82', '782', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '4.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('83', '808', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '4.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('84', '835', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '4.5000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('85', '888', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '3000.0000', '樘', '3000.0000', '樘', '3800.0000', '樘', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('86', '889', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '3000.0000', '樘', '3000.0000', '樘', '3800.0000', '樘', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('87', '890', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '500.0000', 'm2', '500.0000', 'm2', '600.0000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('88', '891', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '1500.0000', '樘', '1500.0000', '樘', '2100.0000', '樘', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('89', '892', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '600.0000', 'm2', '600.0000', 'm2', '750.0000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('90', '893', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '750.0000', 'm2', '750.0000', 'm2', '850.0000', 'm2', '1', '超管', '2020-02-24');
INSERT INTO `sp_material_brand_supplier` VALUES ('91', '944', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '5.5000', 'm2', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('92', '143', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '5.5000', 'm2', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('93', '152', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '5.5000', 'm2', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('94', '932', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '5.5000', 'm2', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('95', '933', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '5.5000', 'm2', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('96', '937', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '5.5000', 'm2', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('97', '951', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '5.5000', 'm2', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('98', '959', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '5.5000', 'm2', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('99', '966', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '5.5000', 'm2', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('100', '948', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '25.0000', 'm2', '25.0000', 'm2', '35.0000', 'm2', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('101', '848', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '25.0000', 'm2', '25.0000', 'm2', '35.0000', 'm2', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('102', '849', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '25.0000', 'm2', '25.0000', 'm2', '35.0000', 'm2', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('103', '850', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '25.0000', 'm2', '25.0000', 'm2', '35.0000', 'm2', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('104', '851', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '25.0000', 'm2', '25.0000', 'm2', '35.0000', 'm2', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('105', '941', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '25.0000', 'm2', '25.0000', 'm2', '35.0000', 'm2', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('106', '955', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '25.0000', 'm2', '25.0000', 'm2', '35.0000', 'm2', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('107', '962', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '25.0000', 'm2', '25.0000', 'm2', '35.0000', 'm2', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('108', '969', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '25.0000', 'm2', '25.0000', 'm2', '35.0000', 'm2', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('109', '943', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '3.0000', 'm2', '3.0000', 'm2', '6.0000', 'm2', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('110', '104', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '3.0000', 'm2', '3.0000', 'm2', '6.0000', 'm2', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('111', '142', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '3.0000', 'm2', '3.0000', 'm2', '6.0000', 'm2', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('112', '151', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '3.0000', 'm2', '3.0000', 'm2', '6.0000', 'm2', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('113', '936', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '3.0000', 'm2', '3.0000', 'm2', '6.0000', 'm2', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('114', '950', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '3.0000', 'm2', '3.0000', 'm2', '6.0000', 'm2', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('115', '957', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '3.0000', 'm2', '3.0000', 'm2', '6.0000', 'm2', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('116', '965', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '3.0000', 'm2', '3.0000', 'm2', '6.0000', 'm2', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('117', '945', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '5.5000', 'm2', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('118', '105', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '5.5000', 'm2', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('119', '153', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '5.5000', 'm2', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('120', '934', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '5.5000', 'm2', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('121', '938', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '5.5000', 'm2', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('122', '952', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '5.5000', 'm2', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('123', '958', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '5.5000', 'm2', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('124', '967', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.5000', 'm2', '2.5000', 'm2', '5.5000', 'm2', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('125', '947', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '3.0000', 'm', '6.0000', '根', '15.0000', 'm', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('126', '41', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '3.0000', 'm', '6.0000', '根', '15.0000', 'm', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('127', '107', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '3.0000', 'm', '6.0000', '根', '15.0000', 'm', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('128', '145', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '3.0000', 'm', '6.0000', '根', '15.0000', 'm', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('129', '940', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '3.0000', 'm', '6.0000', '根', '15.0000', 'm', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('130', '954', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '3.0000', 'm', '6.0000', '根', '15.0000', 'm', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('131', '961', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '3.0000', 'm', '6.0000', '根', '15.0000', 'm', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('132', '964', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '6.2000', 'kg', '6.2000', 'kg', '7.2000', 'kg', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('133', '149', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '5.2000', 'kg', '5.2000', 'kg', '6.0000', 'kg', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('134', '963', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '5.2000', 'kg', '5.2000', 'kg', '6.0000', 'kg', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('135', '935', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '6.5000', 'kg', '6.5000', 'kg', '7.5000', 'kg', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('136', '942', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '6.0000', 'kg', '6.0000', 'kg', '7.0000', 'kg', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('137', '956', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '6.0000', 'kg', '6.0000', 'kg', '7.0000', 'kg', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('138', '949', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '6.2000', 'kg', '6.2000', 'kg', '7.2000', 'kg', '1', '超管', '2020-02-26');
INSERT INTO `sp_material_brand_supplier` VALUES ('139', '109', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '15.0000', '个', '15.0000', '个', '35.0000', '个', '1', '超管', '2020-03-04');
INSERT INTO `sp_material_brand_supplier` VALUES ('140', '118', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '15.0000', '个', '15.0000', '个', '35.0000', '个', '1', '超管', '2020-03-04');
INSERT INTO `sp_material_brand_supplier` VALUES ('141', '126', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '15.0000', '个', '15.0000', '个', '35.0000', '个', '1', '超管', '2020-03-04');
INSERT INTO `sp_material_brand_supplier` VALUES ('142', '136', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '15.0000', '个', '15.0000', '个', '35.0000', '个', '1', '超管', '2020-03-04');
INSERT INTO `sp_material_brand_supplier` VALUES ('143', '110', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '18.0000', '个', '18.0000', '个', '40.0000', '个', '1', '超管', '2020-03-04');
INSERT INTO `sp_material_brand_supplier` VALUES ('144', '119', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '18.0000', '个', '18.0000', '个', '40.0000', '个', '1', '超管', '2020-03-04');
INSERT INTO `sp_material_brand_supplier` VALUES ('145', '127', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '18.0000', '个', '18.0000', '个', '40.0000', '个', '1', '超管', '2020-03-04');
INSERT INTO `sp_material_brand_supplier` VALUES ('146', '137', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '18.0000', '个', '18.0000', '个', '40.0000', '个', '1', '超管', '2020-03-04');
INSERT INTO `sp_material_brand_supplier` VALUES ('147', '111', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.0000', '套', '2.0000', '套', '3.5000', '套', '1', '超管', '2020-03-04');
INSERT INTO `sp_material_brand_supplier` VALUES ('148', '120', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.0000', '套', '2.0000', '套', '3.5000', '套', '1', '超管', '2020-03-04');
INSERT INTO `sp_material_brand_supplier` VALUES ('149', '128', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.0000', '套', '2.0000', '套', '3.5000', '套', '1', '超管', '2020-03-04');
INSERT INTO `sp_material_brand_supplier` VALUES ('150', '138', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.0000', '套', '2.0000', '套', '3.5000', '套', '1', '超管', '2020-03-04');
INSERT INTO `sp_material_brand_supplier` VALUES ('151', '112', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.2000', '套', '2.0000', '套 ', '3.8000', '套', '1', '超管', '2020-03-04');
INSERT INTO `sp_material_brand_supplier` VALUES ('152', '121', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.2000', '套', '2.0000', '套 ', '3.8000', '套', '1', '超管', '2020-03-04');
INSERT INTO `sp_material_brand_supplier` VALUES ('153', '129', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.2000', '套', '2.0000', '套 ', '3.8000', '套', '1', '超管', '2020-03-04');
INSERT INTO `sp_material_brand_supplier` VALUES ('154', '139', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '2.2000', '套', '2.0000', '套 ', '3.8000', '套', '1', '超管', '2020-03-04');
INSERT INTO `sp_material_brand_supplier` VALUES ('155', '18', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '0.2000', '个', '0.2000', '个', '0.5000', '个', '1', '超管', '2020-04-07');
INSERT INTO `sp_material_brand_supplier` VALUES ('156', '115', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '0.2000', '个', '0.2000', '个', '0.5000', '个', '1', '超管', '2020-04-07');
INSERT INTO `sp_material_brand_supplier` VALUES ('157', '123', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '0.2000', '个', '0.2000', '个', '0.5000', '个', '1', '超管', '2020-04-07');
INSERT INTO `sp_material_brand_supplier` VALUES ('158', '133', '12', '优筑美邦', '1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '0.2000', '个', '0.2000', '个', '0.5000', '个', '1', '超管', '2020-04-07');

-- ----------------------------
-- Table structure for sp_material_file
-- ----------------------------
DROP TABLE IF EXISTS `sp_material_file`;
CREATE TABLE `sp_material_file` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `material_id` int(11) DEFAULT NULL COMMENT '材料id',
  `file_name` varchar(1000) DEFAULT NULL COMMENT '文件名',
  `file_url` varchar(1000) DEFAULT NULL COMMENT '文件路径',
  `remarks` varchar(1000) DEFAULT NULL COMMENT '备注',
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态 1再用 0删除',
  `created_at` datetime DEFAULT NULL COMMENT '创建时间\r\n',
  `update_at` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `material_id` (`material_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_material_file
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_offer
-- ----------------------------
INSERT INTO `sp_offer` VALUES ('1', 'BJD20200227150036747412', '4', '4', '1', '1', '2020-02-27', '30', '0.00', '0.00', '0.00', '0.00', '0.00', '18308.70', '0.00', '400.00', '72000.00', '90308.70', '5.00', '4515.44', '5.00', '4741.21', '99565.35', '0', '1', '2020-02-27', '1', '2020-02-27');

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sp_offer_item
-- ----------------------------
INSERT INTO `sp_offer_item` VALUES ('1', '4', '4', '1', '1', '1', '6', '2', '17', '抗拔螺栓', '镀锌螺杆  φ16  长度400mm', '根', '30.00', '5.00', '31.50', '12', null, '6.00', '189.00', '1', '2020-02-27');
INSERT INTO `sp_offer_item` VALUES ('2', '4', '4', '1', '1', '2', '7', '5', '103', '薄壁轻钢结构龙骨（90墙龙骨体系））', '镀铝锌G550  /55% /AZ150', 'kg', '180.00', '2.00', '183.60', '12', '优筑美邦', '7.50', '1377.00', '1', '2020-02-27');
INSERT INTO `sp_offer_item` VALUES ('3', '4', '4', '1', '1', '3', '7', '5', '104', '结构连接件（墙体-墙体）', '镀铝锌G550 /55%  AZ150/1.2厚', 'm2', '180.00', '2.00', '183.60', '12', '优筑美邦', '6.00', '1101.60', '1', '2020-02-27');
INSERT INTO `sp_offer_item` VALUES ('4', '4', '4', '1', '1', '4', '7', '5', '105', '结构屋架连接件（屋架-墙体）', '镀铝锌G550 /55%  AZ150/1.2厚', 'm2', '180.00', '2.00', '183.60', '12', '优筑美邦', '5.50', '1009.80', '1', '2020-02-27');
INSERT INTO `sp_offer_item` VALUES ('5', '4', '4', '1', '1', '5', '7', '5', '107', '结构连接件（屋脊）', '镀铝锌G550 /55%  AZ150/1.2厚', 'm', '180.00', '2.00', '183.60', '12', '优筑美邦', '15.00', '2754.00', '1', '2020-02-27');
INSERT INTO `sp_offer_item` VALUES ('6', '4', '4', '1', '1', '6', '7', '5', '848', '自攻钉（结构）', '自攻自钻螺钉系列/镀锌钢钉', 'm2', '180.00', '5.00', '189.00', '12', '优筑美邦', '35.00', '6615.00', '1', '2020-02-27');
INSERT INTO `sp_offer_item` VALUES ('7', '4', '4', '1', '1', '7', '7', '5', '932', '结构屋架连接件（屋架-墙体）', '镀铝锌G550 /55%  AZ150/1.2厚', 'm2', '180.00', '2.00', '183.60', '12', '优筑美邦', '5.50', '1009.80', '1', '2020-02-27');
INSERT INTO `sp_offer_item` VALUES ('8', '4', '4', '1', '1', '8', '8', '59', '239', '石膏板（外墙内侧）', '普通纸面石膏板/12厚', 'm2', '180.00', '5.00', '189.00', '12', '优筑美邦', '11.50', '2173.50', '1', '2020-02-27');
INSERT INTO `sp_offer_item` VALUES ('9', '4', '4', '1', '1', '9', '8', '59', '244', '玻璃棉（外墙龙骨内）', '单面铝箔玻璃棉毡/16KG/立方/75厚', 'm2', '180.00', '5.00', '189.00', '12', '优筑美邦', '6.50', '1228.50', '1', '2020-02-27');
INSERT INTO `sp_offer_item` VALUES ('10', '4', '4', '1', '1', '10', '8', '59', '254', '防潮纸（外墙）', '防潮纸/0.35厚', 'm2', '180.00', '5.00', '189.00', '12', '优筑美邦', '4.50', '850.50', '1', '2020-02-27');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_progress
-- ----------------------------
INSERT INTO `sp_progress` VALUES ('1', '4', '4', '1', '1', '1', '0', '', '1', '2020-09-28', null, null);

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
  `project_area_width` varchar(100) DEFAULT NULL COMMENT '项目场地尺寸：宽',
  `project_area_length` varchar(100) DEFAULT NULL COMMENT '项目场地尺寸：长',
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_project
-- ----------------------------
INSERT INTO `sp_project` VALUES ('1', '河北弓总乡村别墅', '国内', '河北省', '邯郸市', '邯郸县', '河北省', '', '乡村私宅', '295', null, null, '直接客户', '整体规划完成-单体建筑设计阶段', '2020-04-10', '30', '4', '平原', '13米（最大）货车可直达现场', '32', '39', '0', '-15', '现场堆放空间充足（50米以内）', '1', '弓总', '民营企业单位', '内蒙谷包头市', null, '13911111111', '', '', '1', '1', '1', '1', '弓总', '总经理', '13911111111', '7', '销售总监', '7', '销售总监', '5', '设计总监', '9', '预算经理', null, null, '15', '合约经理', '1', '0', '0', '0', '1', '2020-04-06', null, null);
INSERT INTO `sp_project` VALUES ('2', '北京顺义名都园别墅改造项目', '国内', '北京市', '北京市市辖区', '顺义区', '名都园别墅区', '', '已有建筑改扩建', '120', null, null, '直接客户', '单体建筑方案完成-施工图设计阶段', '2020-04-10', '60', '4', '平原', '7.2米（最大）货车可直达现场', '32', '39', '0', '-15', '现场堆放空间充足（50米以内）', '2', '曹总', '个人', '北京顺义', null, '13911111111', '', '', '1', '1', '1', '1', '曹总', '总经理', '13911111111', '7', '销售总监', '7', '销售总监', '4', '建筑设计师1', '13', '预算专员 1', null, null, '15', '合约经理', '1', '0', '0', '0', '1', '2020-02-15', null, null);
INSERT INTO `sp_project` VALUES ('3', '天津蓟县马伸桥张宅', '国内', '天津市', '天津市市辖区', '蓟县', '马伸桥镇', '', '乡村私宅', '160', '33', '12', '直接客户', '整体规划完成-单体建筑设计阶段', '2020-05-16', '30', '4', '平原', '9.6米(最大）货车可直达现场', '32', '39', '0', '-10', '现场堆放空间充足（50米以内）', '3', '张先生', '个人', '天津蓟县', null, '185011111111', '', '', '1', '1', '1', '1', '张先生', '业主', '185011111111', '7', '销售总监', '7', '销售总监', '5', '设计总监', '9', '预算经理', null, null, '15', '合约经理', '1', '0', '0', '0', '6', '2021-05-14', null, null);
INSERT INTO `sp_project` VALUES ('4', '河北保定张登镇张宅', '国内', '河北省', '保定市', '清苑区', '张登镇张登村', '', '乡村私宅', '180', null, null, '直接客户', '单体建筑方案完成-施工图设计阶段', '2020-05-16', '30', '5', '平原', '13米（最大）货车可直达现场', '32', '39', '0', '-10', '现场堆放空间充足（50米以内）', '4', '张先生', '个人', '北京', null, '185011111111', '', '', '1', '1', '1', '1', '张先生', '业主', '185011111111', '7', '销售总监', '7', '销售总监', '4', '建筑设计师1', '13', '预算专员 1', null, null, '15', '合约经理', '0', '1', '0', '0', '1', '2020-02-17', null, null);

-- ----------------------------
-- Table structure for sp_project_file
-- ----------------------------
DROP TABLE IF EXISTS `sp_project_file`;
CREATE TABLE `sp_project_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_key` varchar(1000) DEFAULT NULL COMMENT '文件索引：保存的文件名',
  `project_id` int(11) DEFAULT NULL,
  `file_type` varchar(255) DEFAULT NULL COMMENT '文件类型',
  `uploadfile` varchar(1000) DEFAULT NULL COMMENT '上传的文件名',
  `file_name` varchar(1000) DEFAULT NULL COMMENT '文件描述',
  `file_url` varchar(1000) DEFAULT NULL COMMENT '文件地址',
  `uid` int(11) DEFAULT NULL COMMENT '用户id',
  `status` tinyint(2) DEFAULT NULL COMMENT '状态1再用 0禁用',
  `created_at` date DEFAULT NULL COMMENT '创建时间',
  `update_at` date DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `project_id` (`project_id`) USING BTREE,
  KEY `file` (`project_id`,`status`,`file_type`(191)) USING BTREE,
  KEY `file_key` (`file_key`(191)) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_project_file
-- ----------------------------
INSERT INTO `sp_project_file` VALUES ('28', '9cb598be3ba91b32d71f86a0bd21b648', '2', '4现场场景图片', '现场照片.rar', '现场图片', '/projectfile/2/9cb598be3ba91b32d71f86a0bd21b648.rar', '6', '0', '2020-02-14', '2020-02-15');
INSERT INTO `sp_project_file` VALUES ('29', '4e2f395dcdf8988ceaf613a24ad44d48', '1', '4现场场景图片', '现场照片.rar', '现场照片', '/projectfile/1/4e2f395dcdf8988ceaf613a24ad44d48.rar', '1', '1', '2020-02-14', '2020-04-06');
INSERT INTO `sp_project_file` VALUES ('30', '43a5c49b1d9707fda014fd5f367934eb', '3', '4现场场景图片', '蓟县马伸桥镇张宅.rar', '现场照片', '/projectfile/3/43a5c49b1d9707fda014fd5f367934eb.rar', '6', '1', '2020-02-16', '2021-05-14');
INSERT INTO `sp_project_file` VALUES ('31', '8f605210b930d11deaa926dea9674cf2', '3', '1客户需求', '0b2dfa7f5c7d46f88a0e07655aa5ce3b.jpg', '现场照片', '/projectfile/3/8f605210b930d11deaa926dea9674cf2.jpg', '6', '1', '2021-05-14', '2021-05-14');
INSERT INTO `sp_project_file` VALUES ('32', '82e97d2eb17080e29850f31cbed6f2ac', '3', '1客户需求', '1d3f6e65f7ef4bab8b9ff3cf5f370adb.jpg', '现场照片', '/projectfile/3/82e97d2eb17080e29850f31cbed6f2ac.jpg', '6', '1', '2021-05-14', '2021-05-14');
INSERT INTO `sp_project_file` VALUES ('33', 'e388aab10df5e08e4e6068b073e73f39', '3', '1客户需求', '100101.jpg', '现场照片', '/projectfile/3/e388aab10df5e08e4e6068b073e73f39.jpg', '6', '1', '2021-05-14', '2021-05-14');
INSERT INTO `sp_project_file` VALUES ('34', '86aea1cd97d37e0bf6403ec522e78396', '3', '1客户需求', 'BJD20210129034350299327.pdf', 'pdf文件', '/projectfile/3/86aea1cd97d37e0bf6403ec522e78396.pdf', '6', '1', '2021-05-14', '2021-05-14');
INSERT INTO `sp_project_file` VALUES ('35', '5439b447fac24f5fff291180dd4d3b66', '3', '3效果图', '10010.jpg', 'qerqwer', '/projectfile/3/5439b447fac24f5fff291180dd4d3b66.jpg', '6', '1', '2021-05-14', '2021-05-14');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_purchase
-- ----------------------------
INSERT INTO `sp_purchase` VALUES ('1', '4', '4', '1', '0', '0', '1', '', '1', '2020-02-27', '1', '2020-09-28');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_purchase_batch
-- ----------------------------
INSERT INTO `sp_purchase_batch` VALUES ('1', '4', '4', '1', '1', '1', '2020-03-05', '2020-03-10', '2020-03-12', '汽运', '10.00', '散装整车', '0', '0', '13米货车', '1', '北京顺义', '6', '1', '1', '2020-02-27', '1', '2020-09-28');
INSERT INTO `sp_purchase_batch` VALUES ('2', '4', '4', '1', '1', '1', '2020-03-10', '2020-03-12', '2020-03-14', '汽运', '5.00', '散装整车', '0', '0', '7.2米货车', '1', '北京顺义', '4', '0', '1', '2020-02-29', '1', '2020-09-28');

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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_purchase_batch_relation_material
-- ----------------------------
INSERT INTO `sp_purchase_batch_relation_material` VALUES ('16', '4', '4', '1', '1', '1', '2', '1', '1', '2020-02-29');
INSERT INTO `sp_purchase_batch_relation_material` VALUES ('17', '4', '4', '1', '1', '1', '3', '1', '1', '2020-02-29');
INSERT INTO `sp_purchase_batch_relation_material` VALUES ('18', '4', '4', '1', '1', '1', '4', '1', '1', '2020-02-29');
INSERT INTO `sp_purchase_batch_relation_material` VALUES ('19', '4', '4', '1', '1', '1', '5', '1', '1', '2020-02-29');
INSERT INTO `sp_purchase_batch_relation_material` VALUES ('20', '4', '4', '1', '1', '1', '6', '1', '1', '2020-02-29');
INSERT INTO `sp_purchase_batch_relation_material` VALUES ('21', '4', '4', '1', '1', '1', '7', '1', '1', '2020-02-29');
INSERT INTO `sp_purchase_batch_relation_material` VALUES ('36', '4', '4', '2', '1', '1', '1', '2', '1', '2020-09-28');
INSERT INTO `sp_purchase_batch_relation_material` VALUES ('37', '4', '4', '2', '1', '1', '8', '2', '1', '2020-09-28');
INSERT INTO `sp_purchase_batch_relation_material` VALUES ('38', '4', '4', '2', '1', '1', '9', '2', '1', '2020-09-28');
INSERT INTO `sp_purchase_batch_relation_material` VALUES ('39', '4', '4', '2', '1', '1', '10', '2', '1', '2020-09-28');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_purchase_order
-- ----------------------------
INSERT INTO `sp_purchase_order` VALUES ('1', '4', '4', '1', '1', '1', 'CGD20200229165214506610', '2020-03-04', '卖方配送', '直达项目现场', '', '河北省保定市清苑区张登镇张登村', '汽运', '散装整车', '13米货车', '1', '无', '北京', '张三', '13588858858', '1', '北京优筑美邦建筑科技有限公司', '', '1', '0', '8489', null, null, '0', null, null, '1', '超管', '2020-02-29', '1', null, null, null, '0', '0', null, null, '0', null, null, '0', null, null, '0', null, null, null, null, null, null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_purchase_order_item
-- ----------------------------
INSERT INTO `sp_purchase_order_item` VALUES ('1', '4', '4', '1', '1', '2', '7', '5', '1', '1', '1', '103', '薄壁轻钢结构龙骨（90墙龙骨体系））', '镀铝锌G550  /55% /AZ150', '12', '优筑美邦', '183.60', '0.00', '183.60', '183.60', '1193.40', '1193.40', 'kg', '6.50', '1', '2020-02-29');
INSERT INTO `sp_purchase_order_item` VALUES ('2', '4', '4', '1', '1', '3', '7', '5', '1', '1', '110', '104', '结构连接件（墙体-墙体）', '镀铝锌G550 /55%  AZ150/1.2厚', '12', '优筑美邦', '183.60', '0.00', '183.60', '183.60', '550.80', '550.80', 'm2', '3.00', '1', '2020-02-29');
INSERT INTO `sp_purchase_order_item` VALUES ('3', '4', '4', '1', '1', '4', '7', '5', '1', '1', '118', '105', '结构屋架连接件（屋架-墙体）', '镀铝锌G550 /55%  AZ150/1.2厚', '12', '优筑美邦', '183.60', '0.00', '183.60', '183.60', '459.00', '459.00', 'm2', '2.50', '1', '2020-02-29');
INSERT INTO `sp_purchase_order_item` VALUES ('4', '4', '4', '1', '1', '5', '7', '5', '1', '1', '127', '107', '结构连接件（屋脊）', '镀铝锌G550 /55%  AZ150/1.2厚', '12', '优筑美邦', '183.60', '0.00', '183.60', '183.60', '1101.60', '1101.60', '根', '6.00', '1', '2020-02-29');
INSERT INTO `sp_purchase_order_item` VALUES ('5', '4', '4', '1', '1', '6', '7', '5', '1', '1', '101', '848', '自攻钉（结构）', '自攻自钻螺钉系列/镀锌钢钉', '12', '优筑美邦', '189.00', '0.00', '189.00', '189.00', '4725.00', '4725.00', 'm2', '25.00', '1', '2020-02-29');
INSERT INTO `sp_purchase_order_item` VALUES ('6', '4', '4', '1', '1', '7', '7', '5', '1', '1', '94', '932', '结构屋架连接件（屋架-墙体）', '镀铝锌G550 /55%  AZ150/1.2厚', '12', '优筑美邦', '183.60', '0.00', '183.60', '183.60', '459.00', '459.00', 'm2', '2.50', '1', '2020-02-29');

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

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
INSERT INTO `sp_role` VALUES ('25', '综合设计总监', '1', '2020-05-18 11:39:59', '2020-05-29 14:57:05');

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
) ENGINE=InnoDB AUTO_INCREMENT=8048 DEFAULT CHARSET=utf8mb4;

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
INSERT INTO `sp_role_authority` VALUES ('7446', '2', '10', '0', '1', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7447', '2', '1001', '10', '2', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7448', '2', '100101', '1001', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7449', '2', '100102', '1001', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7450', '2', '100103', '1001', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7451', '2', '100105', '1001', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7452', '2', '1002', '10', '2', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7453', '2', '100201', '1002', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7454', '2', '100202', '1002', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7455', '2', '100203', '1002', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7456', '2', '100204', '1002', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7457', '2', '100205', '1002', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7458', '2', '1003', '10', '2', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7459', '2', '100301', '1003', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7460', '2', '100302', '1003', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7461', '2', '100303', '1003', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7462', '2', '1004', '10', '2', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7463', '2', '100401', '1004', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7464', '2', '1005', '10', '2', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7465', '2', '1006', '10', '2', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7466', '2', '100601', '1006', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7467', '2', '100602', '1006', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7468', '2', '100603', '1006', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7469', '2', '15', '0', '1', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7470', '2', '1501', '15', '2', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7471', '2', '1502', '15', '2', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7472', '2', '150201', '1502', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7473', '2', '150202', '1502', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7474', '2', '150203', '1502', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7475', '2', '1503', '15', '2', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7476', '2', '150301', '1503', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7477', '2', '150302', '1503', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7478', '2', '150303', '1503', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7479', '2', '1504', '15', '2', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7480', '2', '150401', '1504', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7481', '2', '150402', '1504', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7482', '2', '1505', '15', '2', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7483', '2', '150501', '1505', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7484', '2', '150502', '1505', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7485', '2', '20', '0', '1', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7486', '2', '2001', '20', '2', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7487', '2', '200101', '2001', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7488', '2', '20010101', '200101', '4', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7489', '2', '20010102', '200101', '4', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7490', '2', '200102', '2001', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7491', '2', '20010201', '200102', '4', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7492', '2', '20010202', '200102', '4', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7493', '2', '200103', '2001', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7494', '2', '20010301', '200103', '4', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7495', '2', '200104', '2001', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7496', '2', '20010401', '200104', '4', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7497', '2', '2002', '20', '2', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7498', '2', '200201', '2002', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7499', '2', '20020101', '200201', '4', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7500', '2', '20020102', '200201', '4', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7501', '2', '200202', '2002', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7502', '2', '20020201', '200202', '4', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7503', '2', '20020202', '200202', '4', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7504', '2', '200203', '2002', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7505', '2', '20020301', '200203', '4', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7506', '2', '200204', '2002', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7507', '2', '20020401', '200204', '4', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7508', '2', '25', '0', '1', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7509', '2', '2501', '25', '2', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7510', '2', '250101', '2501', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7511', '2', '250102', '2501', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7512', '2', '250103', '2501', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7513', '2', '25010301', '250103', '4', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7514', '2', '25010302', '250103', '4', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7515', '2', '25010303', '250103', '4', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7516', '2', '25010304', '250103', '4', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7517', '2', '25010306', '250103', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7518', '2', '250104', '2501', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7519', '2', '25010401', '250104', '4', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7520', '2', '25010402', '250104', '4', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7521', '2', '25010403', '250104', '4', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7522', '2', '2502', '25', '2', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7523', '2', '250202', '2502', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7524', '2', '250203', '2502', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7525', '2', '250204', '2502', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7526', '2', '30', '0', '1', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7527', '2', '3001', '30', '2', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7528', '2', '300101', '3001', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7529', '2', '30010101', '300101', '4', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7530', '2', '300102', '3001', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7531', '2', '30010201', '300102', '4', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7532', '2', '30010202', '300102', '4', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7533', '2', '300103', '3001', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7534', '2', '30010301', '300101', '4', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7535', '2', '3002', '30', '2', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7536', '2', '3003', '30', '2', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7537', '2', '300301', '3003', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7538', '2', '300302', '3003', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7539', '2', '35', '0', '1', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7540', '2', '3500', '35', '2', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7541', '2', '350001', '3500', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7542', '2', '35000101', '350001', '4', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7543', '2', '35000102', '350001', '4', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7544', '2', '350002', '3500', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7545', '2', '35000201', '350002', '4', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7546', '2', '35000202', '350002', '4', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7547', '2', '350003', '3500', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7548', '2', '35000301', '350003', '4', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7549', '2', '350004', '3500', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7550', '2', '35000401', '350004', '4', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7551', '2', '3501', '35', '2', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7552', '2', '350101', '3501', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7553', '2', '350102', '3501', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7554', '2', '350103', '3501', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7555', '2', '350104', '3501', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7556', '2', '3502', '35', '2', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7557', '2', '350201', '3502', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7558', '2', '350202', '3502', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7559', '2', '40', '0', '1', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7560', '2', '4001', '40', '2', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7561', '2', '4002', '40', '2', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7562', '2', '4003', '40', '2', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7563', '2', '45', '0', '1', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7564', '2', '4501', '45', '2', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7565', '2', '450101', '4501', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7566', '2', '450102', '4501', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7567', '2', '450103', '4501', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7568', '2', '4502', '45', '2', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7569', '2', '450201', '4502', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7570', '2', '450202', '4502', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7571', '2', '450203', '4502', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7572', '2', '50', '0', '1', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7573', '2', '5001', '50', '2', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7574', '2', '500101', '5001', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7575', '2', '5002', '50', '2', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7576', '2', '500201', '5002', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7577', '2', '5003', '50', '2', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7578', '2', '500301', '5003', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7579', '2', '55', '0', '1', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7580', '2', '5501', '55', '2', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7581', '2', '5502', '55', '2', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7582', '2', '5503', '55', '2', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7583', '2', '5504', '55', '2', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7584', '2', '60', '0', '1', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7585', '2', '6002', '60', '2', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7586', '2', '600201', '6002', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7587', '2', '600202', '6002', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7588', '2', '600203', '6002', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7589', '2', '600204', '6002', '3', '1', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07');
INSERT INTO `sp_role_authority` VALUES ('7927', '25', '15', '0', '1', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7928', '25', '1501', '15', '2', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7929', '25', '1502', '15', '2', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7930', '25', '150201', '1502', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7931', '25', '150202', '1502', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7932', '25', '150203', '1502', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7933', '25', '1503', '15', '2', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7934', '25', '150301', '1503', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7935', '25', '150302', '1503', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7936', '25', '150303', '1503', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7937', '25', '1504', '15', '2', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7938', '25', '150401', '1504', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7939', '25', '150402', '1504', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7940', '25', '1505', '15', '2', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7941', '25', '150501', '1505', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7942', '25', '150502', '1505', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7943', '25', '20', '0', '1', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7944', '25', '2001', '20', '2', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7945', '25', '200101', '2001', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7946', '25', '20010101', '200101', '4', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7947', '25', '20010102', '200101', '4', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7948', '25', '200102', '2001', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7949', '25', '20010201', '200102', '4', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7950', '25', '20010202', '200102', '4', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7951', '25', '200103', '2001', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7952', '25', '20010301', '200103', '4', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7953', '25', '200104', '2001', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7954', '25', '20010401', '200104', '4', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7955', '25', '2002', '20', '2', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7956', '25', '200201', '2002', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7957', '25', '20020101', '200201', '4', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7958', '25', '20020102', '200201', '4', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7959', '25', '200202', '2002', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7960', '25', '20020201', '200202', '4', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7961', '25', '20020202', '200202', '4', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7962', '25', '200203', '2002', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7963', '25', '20020301', '200203', '4', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7964', '25', '200204', '2002', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7965', '25', '20020401', '200204', '4', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7966', '25', '25', '0', '1', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7967', '25', '2501', '25', '2', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7968', '25', '250101', '2501', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7969', '25', '250102', '2501', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7970', '25', '250103', '2501', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7971', '25', '25010301', '250103', '4', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7972', '25', '25010302', '250103', '4', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7973', '25', '25010303', '250103', '4', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7974', '25', '25010304', '250103', '4', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7975', '25', '25010306', '250103', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7976', '25', '250104', '2501', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7977', '25', '25010401', '250104', '4', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7978', '25', '25010402', '250104', '4', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7979', '25', '25010403', '250104', '4', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7980', '25', '2502', '25', '2', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7981', '25', '250202', '2502', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7982', '25', '250203', '2502', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7983', '25', '250204', '2502', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7984', '25', '30', '0', '1', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7985', '25', '3001', '30', '2', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7986', '25', '300101', '3001', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7987', '25', '30010101', '300101', '4', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7988', '25', '300102', '3001', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7989', '25', '30010201', '300102', '4', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7990', '25', '30010202', '300102', '4', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7991', '25', '300103', '3001', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7992', '25', '30010301', '300101', '4', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7993', '25', '3002', '30', '2', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7994', '25', '3003', '30', '2', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7995', '25', '300301', '3003', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7996', '25', '300302', '3003', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7997', '25', '35', '0', '1', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7998', '25', '3500', '35', '2', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('7999', '25', '350001', '3500', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8000', '25', '35000101', '350001', '4', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8001', '25', '35000102', '350001', '4', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8002', '25', '350002', '3500', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8003', '25', '35000201', '350002', '4', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8004', '25', '35000202', '350002', '4', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8005', '25', '350003', '3500', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8006', '25', '35000301', '350003', '4', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8007', '25', '350004', '3500', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8008', '25', '35000401', '350004', '4', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8009', '25', '3501', '35', '2', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8010', '25', '350101', '3501', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8011', '25', '350102', '3501', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8012', '25', '350103', '3501', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8013', '25', '350104', '3501', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8014', '25', '3502', '35', '2', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8015', '25', '350201', '3502', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8016', '25', '350202', '3502', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8017', '25', '40', '0', '1', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8018', '25', '4001', '40', '2', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8019', '25', '4002', '40', '2', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8020', '25', '4003', '40', '2', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8021', '25', '45', '0', '1', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8022', '25', '4501', '45', '2', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8023', '25', '450101', '4501', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8024', '25', '450102', '4501', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8025', '25', '450103', '4501', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8026', '25', '4502', '45', '2', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8027', '25', '450201', '4502', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8028', '25', '450202', '4502', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8029', '25', '450203', '4502', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8030', '25', '50', '0', '1', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8031', '25', '5001', '50', '2', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8032', '25', '500101', '5001', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8033', '25', '5002', '50', '2', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8034', '25', '500201', '5002', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8035', '25', '5003', '50', '2', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8036', '25', '500301', '5003', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8037', '25', '55', '0', '1', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8038', '25', '5501', '55', '2', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8039', '25', '5502', '55', '2', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8040', '25', '5503', '55', '2', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8041', '25', '5504', '55', '2', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8042', '25', '60', '0', '1', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8043', '25', '6002', '60', '2', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8044', '25', '600201', '6002', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8045', '25', '600202', '6002', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8046', '25', '600203', '6002', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');
INSERT INTO `sp_role_authority` VALUES ('8047', '25', '600204', '6002', '3', '1', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58');

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
) ENGINE=InnoDB AUTO_INCREMENT=3538 DEFAULT CHARSET=utf8mb4;

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
INSERT INTO `sp_role_manage_authority` VALUES ('3182', '2', '15', '0', '1', '项目信息管理', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3183', '2', '20', '0', '1', '预算报价管理', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3184', '2', '25', '0', '1', '采购集成管理', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3185', '2', '30', '0', '1', '施工安装管理', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3186', '2', '35', '0', '1', '建筑设计管理', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3187', '2', '40', '0', '1', '部件集成管理', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3188', '2', '45', '0', '1', '供应商管理', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3189', '2', '50', '0', '1', '财务信息管理', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3190', '2', '55', '0', '1', '客户信息管理', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3191', '2', '60', '0', '1', '系统公告管理', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3192', '2', '3501', '35', '2', '查询建筑系统详情', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3193', '2', '3502', '35', '2', '新增建筑系统', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3194', '2', '3503', '35', '2', '编辑建筑系统', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3195', '2', '3504', '35', '2', '更改建筑系统状态', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3196', '2', '3505', '35', '2', '查询建筑系统子系统', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3197', '2', '3506', '35', '2', '编辑建筑子系统', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3198', '2', '4501', '45', '2', '查询品牌信息', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3199', '2', '4502', '45', '2', '新增品牌信息', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3200', '2', '4503', '45', '2', '编辑品牌信息', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3201', '2', '4510', '45', '2', '查询供应商信息', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3202', '2', '4511', '45', '2', '新增供应商', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3203', '2', '4512', '45', '2', '编辑供应商', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3204', '2', '4513', '45', '2', '删除供应商', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3205', '2', '4001', '40', '2', '搜索部件信息', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3206', '2', '4002', '40', '2', '查询部件详情', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3207', '2', '4003', '40', '2', '编辑部件', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3208', '2', '5501', '55', '2', '客户信息列表', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3209', '2', '5502', '55', '2', '添加客户', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3210', '2', '5503', '55', '2', '编辑客户', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3211', '2', '5504', '55', '2', '删除客户', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3212', '2', '1501', '15', '2', '创建项目(工程)', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3213', '2', '1502', '15', '2', '洽谈项目', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3214', '2', '150201', '1502', '3', '查询项目详情', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3215', '2', '150202', '1502', '3', '编辑项目', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3216', '2', '1503', '15', '2', '实施项目', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3217', '2', '150301', '1503', '3', '查询项目详情', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3218', '2', '150302', '1503', '3', '编辑项目', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3219', '2', '1504', '15', '2', '竣工项目', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3220', '2', '150401', '1504', '3', '查询项目详情', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3221', '2', '150402', '1504', '3', '工程管理', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3222', '2', '1505', '15', '2', '终止项目', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3223', '2', '150501', '1505', '3', '查询项目详情', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3224', '2', '3507', '35', '2', '项目设计', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3225', '2', '350701', '3507', '3', '查询洽谈项目详情', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3226', '2', '350702', '3507', '3', '编辑洽谈项目', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3227', '2', '350703', '3507', '3', '查询实施项目详情', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3228', '2', '350704', '3507', '3', '编辑实施项目', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3229', '2', '350705', '3507', '3', '查询竣工项目详情', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3230', '2', '350706', '3507', '3', '查询终止项目详情', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3231', '2', '200101', '2001', '3', '查询洽谈预算详情', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3232', '2', '200102', '2001', '3', '编辑洽谈预算', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3233', '2', '200104', '2001', '3', '查询实施预算详情', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3234', '2', '200105', '2001', '3', '编辑实施预算', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3235', '2', '200107', '2001', '3', '查询竣工预算详情', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3236', '2', '200108', '2001', '3', '查询终止预算详情', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3237', '2', '200103', '2001', '3', '审核洽谈预算', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3238', '2', '200106', '2001', '3', '审核实施预算', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3239', '2', '2001', '20', '2', '预算管理', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3240', '2', '2002', '20', '2', '报价管理', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3241', '2', '200201', '2002', '3', '查询洽谈预算详情', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3242', '2', '200202', '2002', '3', '编辑洽谈预算', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3243', '2', '200204', '2002', '3', '查询实施预算详情', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3244', '2', '200205', '2002', '3', '编辑实施预算', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3245', '2', '200207', '2002', '3', '查询竣工预算详情', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3246', '2', '200208', '2002', '3', '查询终止预算详情', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3247', '2', '200203', '2002', '3', '审核洽谈预算', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3248', '2', '200206', '2002', '3', '审核实施预算', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3249', '2', '2501', '25', '2', '实施项目', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3250', '2', '2502', '25', '2', '竣工项目', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3251', '2', '250101', '2501', '3', '编辑采购单', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3252', '2', '250102', '2501', '3', '采购批次管理', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3253', '2', '250103', '2501', '3', '采购订单管理', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3254', '2', '250104', '2501', '3', '物流进度管理', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3255', '2', '250105', '2501', '3', '编辑(指定采购负责人和状态)', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3256', '2', '25010301', '250103', '4', '查看', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3257', '2', '25010302', '250103', '4', '编辑', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3258', '2', '25010303', '250103', '4', '删除', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3259', '2', '25010304', '250103', '4', '新增', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3260', '2', '25010305', '250103', '4', '审核', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3261', '2', '25010306', '250103', '4', '发送供应商', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3262', '2', '25010401', '250104', '4', '查看物流', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3263', '2', '25010402', '250104', '4', '编辑物流', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3264', '2', '250104031', '250104', '4', '更改物流状态', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3265', '2', '250202', '2502', '3', '采购批次管理', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3266', '2', '250203', '2502', '3', '采购订单管理', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3267', '2', '250204', '2502', '3', '物流进度管理', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3268', '2', '5001', '50', '2', '洽谈项目', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3269', '2', '5002', '50', '2', '实施项目', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3270', '2', '5003', '50', '2', '竣工项目', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3271', '2', '500101', '5001', '3', '编辑&查看', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3272', '2', '500201', '5002', '3', '编辑&查看', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3273', '2', '500301', '5003', '3', '编辑&查看', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3274', '2', '150203', '1502', '3', '工程管理', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3275', '2', '150303', '1503', '3', '工程管理', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3276', '2', '150502', '1505', '3', '工程管理', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3277', '2', '3001', '30', '2', '实施工程', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3278', '2', '3002', '30', '2', '竣工工程', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3279', '2', '300104', '3001', '3', '编辑(指定实施人员和状态)', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3280', '2', '300101', '3001', '3', '施工组织统筹', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3281', '2', '300102', '3001', '3', '现场材料管理', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3282', '2', '300103', '3001', '3', '施工进度管理', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3283', '2', '3003', '30', '2', '施工流程配置', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3284', '2', '300301', '3003', '3', '施工流程配置详情', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3285', '2', '300302', '3003', '3', '编辑施工流程配置', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3286', '2', '30010101', '300101', '4', '编辑施工组织统筹', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3287', '2', '30010201', '300102', '4', '查看现场材料管理', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3288', '2', '30010202', '300102', '4', '编辑现场材料管理', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3289', '2', '30010301', '300103', '4', '编辑施工进度管理', '6', '2020-02-11 12:28:07', '2020-02-11 12:28:07', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3430', '25', '15', '0', '1', '项目信息管理', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3431', '25', '20', '0', '1', '预算报价管理', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3432', '25', '25', '0', '1', '采购集成管理', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3433', '25', '30', '0', '1', '施工安装管理', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3434', '25', '35', '0', '1', '建筑设计管理', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3435', '25', '40', '0', '1', '部件集成管理', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3436', '25', '45', '0', '1', '供应商管理', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3437', '25', '50', '0', '1', '财务信息管理', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3438', '25', '55', '0', '1', '客户信息管理', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3439', '25', '60', '0', '1', '系统公告管理', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3440', '25', '3501', '35', '2', '查询建筑系统详情', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3441', '25', '3502', '35', '2', '新增建筑系统', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3442', '25', '3503', '35', '2', '编辑建筑系统', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3443', '25', '3504', '35', '2', '更改建筑系统状态', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3444', '25', '3505', '35', '2', '查询建筑系统子系统', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3445', '25', '3506', '35', '2', '编辑建筑子系统', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3446', '25', '4501', '45', '2', '查询品牌信息', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3447', '25', '4502', '45', '2', '新增品牌信息', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3448', '25', '4503', '45', '2', '编辑品牌信息', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3449', '25', '4510', '45', '2', '查询供应商信息', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3450', '25', '4511', '45', '2', '新增供应商', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3451', '25', '4512', '45', '2', '编辑供应商', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3452', '25', '4513', '45', '2', '删除供应商', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3453', '25', '4001', '40', '2', '搜索部件信息', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3454', '25', '4002', '40', '2', '查询部件详情', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3455', '25', '4003', '40', '2', '编辑部件', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3456', '25', '5501', '55', '2', '客户信息列表', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3457', '25', '5502', '55', '2', '添加客户', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3458', '25', '5503', '55', '2', '编辑客户', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3459', '25', '5504', '55', '2', '删除客户', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3460', '25', '1501', '15', '2', '创建项目(工程)', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3461', '25', '1502', '15', '2', '洽谈项目', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3462', '25', '150201', '1502', '3', '查询项目详情', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3463', '25', '150202', '1502', '3', '编辑项目', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3464', '25', '1503', '15', '2', '实施项目', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3465', '25', '150301', '1503', '3', '查询项目详情', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3466', '25', '150302', '1503', '3', '编辑项目', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3467', '25', '1504', '15', '2', '竣工项目', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3468', '25', '150401', '1504', '3', '查询项目详情', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3469', '25', '150402', '1504', '3', '工程管理', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3470', '25', '1505', '15', '2', '终止项目', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3471', '25', '150501', '1505', '3', '查询项目详情', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3472', '25', '3507', '35', '2', '项目设计', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3473', '25', '350701', '3507', '3', '查询洽谈项目详情', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3474', '25', '350702', '3507', '3', '编辑洽谈项目', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3475', '25', '350703', '3507', '3', '查询实施项目详情', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3476', '25', '350704', '3507', '3', '编辑实施项目', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3477', '25', '350705', '3507', '3', '查询竣工项目详情', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3478', '25', '350706', '3507', '3', '查询终止项目详情', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3479', '25', '200101', '2001', '3', '查询洽谈预算详情', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3480', '25', '200102', '2001', '3', '编辑洽谈预算', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3481', '25', '200104', '2001', '3', '查询实施预算详情', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3482', '25', '200105', '2001', '3', '编辑实施预算', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3483', '25', '200107', '2001', '3', '查询竣工预算详情', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3484', '25', '200108', '2001', '3', '查询终止预算详情', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3485', '25', '200103', '2001', '3', '审核洽谈预算', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3486', '25', '200106', '2001', '3', '审核实施预算', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3487', '25', '2001', '20', '2', '预算管理', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3488', '25', '2002', '20', '2', '报价管理', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3489', '25', '200201', '2002', '3', '查询洽谈预算详情', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3490', '25', '200202', '2002', '3', '编辑洽谈预算', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3491', '25', '200204', '2002', '3', '查询实施预算详情', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3492', '25', '200205', '2002', '3', '编辑实施预算', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3493', '25', '200207', '2002', '3', '查询竣工预算详情', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3494', '25', '200208', '2002', '3', '查询终止预算详情', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3495', '25', '200203', '2002', '3', '审核洽谈预算', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3496', '25', '200206', '2002', '3', '审核实施预算', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3497', '25', '2501', '25', '2', '实施项目', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3498', '25', '2502', '25', '2', '竣工项目', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3499', '25', '250101', '2501', '3', '编辑采购单', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3500', '25', '250102', '2501', '3', '采购批次管理', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3501', '25', '250103', '2501', '3', '采购订单管理', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3502', '25', '250104', '2501', '3', '物流进度管理', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3503', '25', '250105', '2501', '3', '编辑(指定采购负责人和状态)', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3504', '25', '25010301', '250103', '4', '查看', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3505', '25', '25010302', '250103', '4', '编辑', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3506', '25', '25010303', '250103', '4', '删除', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3507', '25', '25010304', '250103', '4', '新增', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3508', '25', '25010305', '250103', '4', '审核', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3509', '25', '25010306', '250103', '4', '发送供应商', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3510', '25', '25010401', '250104', '4', '查看物流', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3511', '25', '25010402', '250104', '4', '编辑物流', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3512', '25', '250104031', '250104', '4', '更改物流状态', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3513', '25', '250202', '2502', '3', '采购批次管理', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3514', '25', '250203', '2502', '3', '采购订单管理', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3515', '25', '250204', '2502', '3', '物流进度管理', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3516', '25', '5001', '50', '2', '洽谈项目', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3517', '25', '5002', '50', '2', '实施项目', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3518', '25', '5003', '50', '2', '竣工项目', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3519', '25', '500101', '5001', '3', '编辑&查看', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3520', '25', '500201', '5002', '3', '编辑&查看', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3521', '25', '500301', '5003', '3', '编辑&查看', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3522', '25', '150203', '1502', '3', '工程管理', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3523', '25', '150303', '1503', '3', '工程管理', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3524', '25', '150502', '1505', '3', '工程管理', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3525', '25', '3001', '30', '2', '实施工程', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3526', '25', '3002', '30', '2', '竣工工程', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3527', '25', '300104', '3001', '3', '编辑(指定实施人员和状态)', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3528', '25', '300101', '3001', '3', '施工组织统筹', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3529', '25', '300102', '3001', '3', '现场材料管理', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3530', '25', '300103', '3001', '3', '施工进度管理', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3531', '25', '3003', '30', '2', '施工流程配置', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3532', '25', '300301', '3003', '3', '施工流程配置详情', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3533', '25', '300302', '3003', '3', '编辑施工流程配置', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3534', '25', '30010101', '300101', '4', '编辑施工组织统筹', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3535', '25', '30010201', '300102', '4', '查看现场材料管理', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3536', '25', '30010202', '300102', '4', '编辑现场材料管理', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');
INSERT INTO `sp_role_manage_authority` VALUES ('3537', '25', '30010301', '300103', '4', '编辑施工进度管理', '1', '2020-05-29 15:02:58', '2020-05-29 15:02:58', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_supplier
-- ----------------------------
INSERT INTO `sp_supplier` VALUES ('1', '北京优筑美邦建筑科技有限公司', '北京优筑美邦建筑科技有限公司', '北京市朝阳区', '王海', '18501143866', '1615256550@qq.com', '1', '超管', '2020-02-22', '00000000001', '超管', '2020-02-22 00:00:00', '1');
INSERT INTO `sp_supplier` VALUES ('2', '天津路劲联合科技有限公司', '日吉华', '天津市南开区凌奥创意产业园凌奥国际C1-1005', '吉长贵', '13321185328', '443905604@qq.com', '1', '超管', '2020-03-12', null, null, null, '1');
INSERT INTO `sp_supplier` VALUES ('3', '承德泰合铭金建筑工程有限公司', '泰合铭金', '河北承德市滦平县张百湾镇周台子工业区', '闫永华', '13522589506', '13522589506@163.com', '1', '超管', '2020-03-12', '00000000001', '超管', '2020-03-12 00:00:00', '1');
INSERT INTO `sp_supplier` VALUES ('4', '北京德瑞鸿建筑工程有限公司', '北京德瑞鸿建筑工程有限公司', '北京市昌平区北七家建材城板材区8806-8808号', '王立生', '13520209699', '13520209699@163.com', '1', '超管', '2020-03-12', '00000000001', '超管', '2020-03-12 00:00:00', '1');
INSERT INTO `sp_supplier` VALUES ('5', '北京永成兴业轻钢彩板有限公司', '永成兴业', '北京市顺义区高丽营镇张喜庄村', '许猛', '15811183509', '512219593@qq.com', '1', '超管', '2020-03-12', '00000000001', '超管', '2020-03-12 00:00:00', '1');
INSERT INTO `sp_supplier` VALUES ('6', '北京英红建博科技发展有限公司', '广州埃特尼特', '海淀区建材城中路12号', '王建辉', '13001232481', '609006517@qq.com', '1', '超管', '2020-03-12', '00000000001', '超管', '2020-03-13 00:00:00', '1');
INSERT INTO `sp_supplier` VALUES ('7', '北京宝源新材科技有限公司', '宝源', '回龙观西大街118号龙冠置业大厦1210', '吕义安', '18600333899', '89277920@qq.com', '1', '超管', '2020-03-12', '00000000001', '超管', '2020-03-12 00:00:00', '1');
INSERT INTO `sp_supplier` VALUES ('8', '北京盛世卓烨科贸有限公司', '英红', '北京石景山区实兴大街西山汇大厦8号楼710室', '杨亚辉', '13601129018', '13601129018@163.cm', '1', '超管', '2020-03-12', null, null, null, '1');
INSERT INTO `sp_supplier` VALUES ('9', '晋亿雷特（北京）螺丝有限公司', '晋忆', '北京市亦庄经济技术开发区经海二路13号A4厂房', '徐华峰', '18601355586', 'slt1588@263.net', '1', '超管', '2020-03-12', null, null, null, '1');
INSERT INTO `sp_supplier` VALUES ('10', '固安县清馨建筑材料有限公司', '清馨建筑材料', '廊坊市固安县牛驼镇辛庄户', '朱德果', '13521126217', '87735290@qq.com', '1', '超管', '2020-03-12', '00000000001', '超管', '2020-03-12 00:00:00', '1');
INSERT INTO `sp_supplier` VALUES ('11', '北京中实嘉业建筑装饰工程有限公司', '科肯', '北京市大兴区赢海镇吉祥天龙写字楼', '赵成龙', '18601118114', '640571521@qq.com', '1', '超管', '2020-03-12', '00000000001', '超管', '2020-03-12 00:00:00', '1');
INSERT INTO `sp_supplier` VALUES ('12', '天津市美德宝科技有限公司', '美德宝', '天津市武清区', '韩梦', '18832603088', '1435949500@qq.com', '1', '超管', '2020-03-12', '00000000001', '超管', '2020-03-12 00:00:00', '1');
INSERT INTO `sp_supplier` VALUES ('13', '北京北鹏新型建材有限公司', '北鹏', '北京市大兴区青云店开发区创业大道', '王会杰', '13146220722', '1051661327@qq.com', '1', '超管', '2020-03-12', '00000000001', '超管', '2020-03-12 00:00:00', '1');
INSERT INTO `sp_supplier` VALUES ('14', '天津市禹红建筑防水材料有限公司', '禹红建筑防水', '天津市北辰区陆路港物流装备产业园区二经路9号', '阎军', '13612006976', '909010915@qq.com', '1', '超管', '2020-03-12', '00000000001', '超管', '2020-03-12 00:00:00', '1');
INSERT INTO `sp_supplier` VALUES ('15', '杭州昂世建筑节能科技有限公司', '昂世建筑节能', '杭州市余杭区仓前工业园余杭塘路2955号', '廖细兰', '15869174250', '450170484@qq.com', '1', '超管', '2020-03-12', '00000000001', '超管', '2020-03-12 00:00:00', '1');
INSERT INTO `sp_supplier` VALUES ('16', '北京敏欣祥商贸有限公司', '立邦涂料', '北七家建材批发市场F37', '吴亚概', '18910363624', '944059552@qq.com', '1', '超管', '2020-03-12', null, null, null, '1');
INSERT INTO `sp_supplier` VALUES ('17', '大圆节能材料股份有限公司', '大圆节能', '河北河间市尊祖庄开发区', '王彦沼', '13383163977', '2962928047@qq.com', '1', '超管', '2020-03-13', '00000000001', '超管', '2020-03-13 00:00:00', '1');
INSERT INTO `sp_supplier` VALUES ('18', '衡水神龙实业有限公司', '衡水神龙', '衡水市桃城区高新技术产业开发区六路', '倪总', '13785876666', '111111@qq.com', '1', '超管', '2020-03-13', null, null, null, '1');
INSERT INTO `sp_supplier` VALUES ('19', '上海钢之杰', '上海钢之杰', '上海市宝山工业园区罗宁路1309号', '朱亚文', '15216799824', '1111111@qq.com', '1', '超管', '2020-03-13', null, null, null, '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sp_supplier_brand
-- ----------------------------
INSERT INTO `sp_supplier_brand` VALUES ('2', '12', '1', '1', '超管', '1', '2020-02-22', null, null, null);
INSERT INTO `sp_supplier_brand` VALUES ('3', '6', '2', '1', '超管', '1', '2020-03-12', null, null, null);
INSERT INTO `sp_supplier_brand` VALUES ('7', '3', '8', '1', '超管', '1', '2020-03-12', null, null, null);
INSERT INTO `sp_supplier_brand` VALUES ('13', '8', '9', '1', '超管', '1', '2020-03-12', null, null, null);
INSERT INTO `sp_supplier_brand` VALUES ('23', '16', '16', '1', '超管', '1', '2020-03-12', null, null, null);
INSERT INTO `sp_supplier_brand` VALUES ('25', '19', '15', '1', '超管', '1', '2020-03-12', null, null, null);
INSERT INTO `sp_supplier_brand` VALUES ('26', '15', '14', '1', '超管', '1', '2020-03-12', null, null, null);
INSERT INTO `sp_supplier_brand` VALUES ('27', '12', '10', '1', '超管', '1', '2020-03-12', null, null, null);
INSERT INTO `sp_supplier_brand` VALUES ('28', '12', '3', '1', '超管', '1', '2020-03-12', null, null, null);
INSERT INTO `sp_supplier_brand` VALUES ('29', '12', '5', '1', '超管', '1', '2020-03-12', null, null, null);
INSERT INTO `sp_supplier_brand` VALUES ('31', '5', '7', '1', '超管', '1', '2020-03-12', null, null, null);
INSERT INTO `sp_supplier_brand` VALUES ('32', '4', '13', '1', '超管', '1', '2020-03-12', null, null, null);
INSERT INTO `sp_supplier_brand` VALUES ('33', '1', '12', '1', '超管', '1', '2020-03-12', null, null, null);
INSERT INTO `sp_supplier_brand` VALUES ('34', '12', '4', '1', '超管', '1', '2020-03-12', null, null, null);
INSERT INTO `sp_supplier_brand` VALUES ('41', '10', '6', '1', '超管', '1', '2020-03-13', null, null, null);
INSERT INTO `sp_supplier_brand` VALUES ('42', '21', '17', '1', '超管', '1', '2020-03-13', null, null, null);
INSERT INTO `sp_supplier_brand` VALUES ('43', '20', '11', '1', '超管', '1', '2020-03-13', null, null, null);
INSERT INTO `sp_supplier_brand` VALUES ('45', '22', '18', '1', '超管', '1', '2020-03-13', null, null, null);
INSERT INTO `sp_supplier_brand` VALUES ('47', '9', '19', '1', '超管', '1', '2020-03-13', null, null, null);

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
  `param` text COMMENT '请求参数',
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
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4;

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
INSERT INTO `sp_system_setting` VALUES ('61', 'purchase_batch_container_size', '20尺', '采购批次:集装箱尺寸', '2', null, '2020-02-27 15:12:23');
INSERT INTO `sp_system_setting` VALUES ('62', 'purchase_batch_container_size', '40尺', '采购批次:集装箱尺寸', '3', null, '2020-02-27 15:12:26');
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
INSERT INTO `sp_system_setting` VALUES ('137', 'project_file_type', '1客户需求', '项目:上传文件类型', '1', '2020-01-14 15:32:07', '2020-01-15 10:37:44');
INSERT INTO `sp_system_setting` VALUES ('138', 'project_file_type', '2甲方提供图纸', '项目:上传文件类型', '2', '2020-01-14 15:32:22', '2020-01-15 10:38:14');
INSERT INTO `sp_system_setting` VALUES ('139', 'project_file_type', '3效果图', '项目:上传文件类型', '3', '2020-01-15 10:38:38', '2020-01-15 10:38:38');
INSERT INTO `sp_system_setting` VALUES ('140', 'project_file_type', '4现场场景图片', '项目:上传文件类型', '4', '2020-01-15 10:39:00', '2020-01-15 10:39:00');
INSERT INTO `sp_system_setting` VALUES ('141', 'project_file_type', '5其他文件', '项目:上传文件类型', '5', '2020-01-15 10:39:19', '2020-01-15 10:39:27');
INSERT INTO `sp_system_setting` VALUES ('142', 'purchase_batch_container_size', '0', '采购批次:集装箱尺寸', '1', '2020-02-27 15:12:17', '2020-02-27 15:12:17');

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
  `sessionid` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '单点登录标记 phpsessionid',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sp_users
-- ----------------------------
INSERT INTO `sp_users` VALUES ('1', '超管', 'addye6666@163.com', null, '$2y$10$f5s5aFzp8Ea7mCeStS8Fd.oB7bvcX44LdO/p30pv6m5e1s1B7gIny', '1', 'R9vVQAa6jkpzTx2EEeoiOfRBSAy1A27si7OTE2msds34oQTd7R3jeC0W7xkD', '2019-08-28 11:05:06', '/img/user_image/934e653b851f27ff7a014938891b7716.png', '2020-07-31 11:44:50', '1', '', '     18501143866', 'lnBhtV9ZFYZER1okdKPioe3PqkNh8LUflaB6jq9z');
INSERT INTO `sp_users` VALUES ('2', '采购专员2', 'test4@qq.com', null, '$2y$10$oTPkMarBLf81rggDre0pE.R2gsQWyU0zIj92JTzYGjPC.iEKYviw.', '4', 'y095m6Z0JOuchRM1E46AU3qXykve1GRLkrdWI8qps6MjDAzJkbK92McnOTeo', '2019-07-22 11:05:53', null, '2019-11-06 15:50:31', '1', '', '', null);
INSERT INTO `sp_users` VALUES ('3', '建筑设计师2', 'test2@qq.com', null, '$2y$10$aKSLnSHm5wcw886HooDdmuXMkjjpw7WwZVR4pKzcZnLnFxzuU5nge', '6', null, '2019-07-22 10:59:51', null, '2019-11-06 15:40:50', '1', '', '', null);
INSERT INTO `sp_users` VALUES ('4', '建筑设计师1', 'test1@qq.com', null, '$2y$10$d.GnIWS4eZ/vaSwHeKM8ReUwxUkUp6dULcAFtkBPWdeFM2HsrhXDK', '6', '2qGuCWul8d3fSU5qboEZq31Wq3LZdNiSuYSSbnj1E0EgIt053VCm6F7GIflR', '2019-07-22 11:07:09', null, '2019-11-06 15:40:51', '1', '', '', null);
INSERT INTO `sp_users` VALUES ('5', '设计总监', 'test3@qq.com', null, '$2y$10$rP2v69M86nhP6iu3e5O3a.g6INplFnfw0y4wRVaCiIotQM4IqZRpu', '6', null, '2019-07-22 11:05:03', null, '2019-11-06 15:40:48', '1', '', '', null);
INSERT INTO `sp_users` VALUES ('6', '王括', 'everup@163.com', null, '$2y$10$4ln/6wTn65YCk40M5azi5enoxwL2F1oh179Joi7WDhL23BqPDECPi', '4', 'tlWLS3R0oRr6N69j2sIyGiRpik2MCLSZa6Pv4Qc1PmSPFR9L4ro0A1bZWtOQ', '2019-09-02 10:56:46', null, '2020-05-29 18:32:27', '1', null, null, 'MZ0EpXfd1abg6RxCLO5OQ74dRtJgQTaIObyV8JVK');
INSERT INTO `sp_users` VALUES ('7', '销售总监', 'test5@qq.com', null, '$2y$10$GDj6tdpsmW8rvD0bhi61F.4W5u75CUgl.l/YrVTlIRe3HUxoT.E9e', '2', 'diX9V5w5sZJ8COB9Ib9B1U1QxFKoud6c6D4VqzHbTpoPSOHqoXNUCbaKfI4x', '2019-09-02 10:57:46', null, '2019-11-07 16:02:28', '1', '', '', null);
INSERT INTO `sp_users` VALUES ('8', '预算专员2', 'test6@qq.com', null, '$2y$10$jETr86w49EhZGsAMwAkleeomZY3BZln3Gi5N4y2saqNq2R7KktTHS', '3', 'vIgfFv85klz0eA5g0hTYqVPUi0B7URgf406wiLCcFAoklmoPR9NWg46pDZ3e', '2019-07-22 11:08:21', null, '2019-11-06 15:40:54', '1', '', '', null);
INSERT INTO `sp_users` VALUES ('9', '预算经理', 'test7@qq.com', null, '$2y$10$Vt7XualSar7inVPa/L0KAO3QniMm2pZr76U5jaXixhcqPLEGNggRK', '3', null, '2019-07-22 11:08:56', null, '2019-11-06 15:40:55', '1', '', '', null);
INSERT INTO `sp_users` VALUES ('10', '工程部经理', 'test8@qq.com', null, '$2y$10$Kztt9fauNc5vA4jcI48ohOzdNtDKn2CtaK8yWuDZncAkJYAN1z8tm', '5', null, '2019-07-22 11:09:22', null, '2019-11-06 15:40:56', '1', '', '', null);
INSERT INTO `sp_users` VALUES ('11', '销售经理2', 'test9@qq.com', null, '$2y$10$4ln/6wTn65YCk40M5azi5enoxwL2F1oh179Joi7WDhL23BqPDECPi', '2', null, '2019-07-22 11:09:54', null, '2019-11-06 15:50:29', '1', '', '', null);
INSERT INTO `sp_users` VALUES ('12', '销售经理1', 'test10@qq.com', null, '$2y$10$hc7cNJhcXocWuDVAH2bulej1e25Z4iMWBVEpEwp/F4xmhAqm07252', '2', null, '2019-07-22 11:10:42', null, '2019-11-06 15:40:58', '1', '', '', null);
INSERT INTO `sp_users` VALUES ('13', '预算专员 1', 'test11@qq.com', null, '$2y$10$1VSCKro0bW4652VedicnQO8GRTRNDbWwUVZF4/PNmxbhEBXxbNP2C', '3', null, '2019-07-22 11:11:42', null, '2019-11-06 15:41:00', '1', '', '', null);
INSERT INTO `sp_users` VALUES ('14', '采购专员1', '497686205@qq.com', null, '$2y$10$23w8iI0kX4QmMIUucTxOOulmVWUr/Euq8RdCHbfYfRG.YBVaHb71m', '4', null, '2019-08-02 16:37:05', null, '2019-11-06 15:41:01', '1', '', '', null);
INSERT INTO `sp_users` VALUES ('15', '合约经理', 'test14@163.com', null, '$2y$10$9tZ9mrm/TBOge6rFf7D8G.YDODsoY7.LWZFOE4REdo2jKsc/VZgyG', '8', null, '2019-09-02 11:52:55', null, '2019-11-06 15:53:39', '1', '合约经理 ', '', null);
INSERT INTO `sp_users` VALUES ('16', '项目经理1', 'test12@136.co', null, '$2y$10$zL4ltraGEDlW4a8KNHow3.pG5o4g8V5S6pcK4slOkwmdpOefbs9yq', '5', null, '2019-11-06 15:43:23', null, '2019-11-06 15:47:10', '1', '', '13511111111', null);
INSERT INTO `sp_users` VALUES ('17', '项目经理2', 'test13@qq.com', null, '$2y$10$R2u.kl54GYwg3LxI3T9jcO/8qMHP5I091n4k53JoqmgBu/tl45jYa', '5', null, '2019-11-06 15:44:45', null, '2019-11-06 15:47:16', '1', '', '', null);
INSERT INTO `sp_users` VALUES ('18', '元铮', '1615256550@qq.com', null, '$2y$10$93PGTVXF6p9vLKGoa9AbT.UVu2b0euyMjkIZK2PDgc7N1QPp/Dfza', '1', '7UoWJ00DU7gbrOuNUjPe9BUxNZZBamghLQHGQEkoAv1Bffk0dwogVnYKNjnq', '2020-05-18 11:39:10', null, '2020-06-07 18:39:12', '1', '综合设计总监', '13331007787', 'JvnjHFgxf5EC9PmfOOSdxXCjQ7KpaMV46FHfATpe');

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
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4;

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
INSERT INTO `sp_user_role` VALUES ('104', '1', '1', '超级管理员2', '0', '2019-11-13 09:36:17', '2020-01-19 16:52:57');
INSERT INTO `sp_user_role` VALUES ('105', '1', '2', '超级管理员1', '1', '2020-01-19 16:52:57', '2020-01-19 16:52:57');
INSERT INTO `sp_user_role` VALUES ('106', '18', '25', 'UI设计总监', '0', '2020-05-18 11:42:20', '2020-05-29 15:03:13');
INSERT INTO `sp_user_role` VALUES ('107', '18', '25', 'UI设计总监', '0', '2020-05-18 11:42:30', '2020-05-29 15:03:13');
INSERT INTO `sp_user_role` VALUES ('108', '18', '25', 'UI设计总监', '0', '2020-05-18 11:43:32', '2020-05-29 15:03:13');
INSERT INTO `sp_user_role` VALUES ('109', '18', '25', '综合设计总监', '0', '2020-05-29 14:58:09', '2020-05-29 15:03:13');
INSERT INTO `sp_user_role` VALUES ('110', '18', '25', '综合设计总监', '0', '2020-05-29 15:00:05', '2020-05-29 15:03:13');
INSERT INTO `sp_user_role` VALUES ('111', '18', '25', '综合设计总监', '1', '2020-05-29 15:03:13', '2020-05-29 15:03:13');
