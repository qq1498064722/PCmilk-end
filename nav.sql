/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50714
 Source Host           : localhost:3306
 Source Schema         : hunsha

 Target Server Type    : MySQL
 Target Server Version : 50714
 File Encoding         : 65001

 Date: 10/10/2019 10:46:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for nav
-- ----------------------------
DROP TABLE IF EXISTS `nav`;
CREATE TABLE `nav`  (
  `id` tinyint(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '中文名字',
  `ename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '英文名字',
  `nthumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '缩略图',
  `sort` tinyint(10) NOT NULL COMMENT '排序',
  `ntpl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '栏目模板',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of nav
-- ----------------------------
INSERT INTO `nav` VALUES (13, '目的地', 'Selected destinationstinations', '54', 3, 'center');
INSERT INTO `nav` VALUES (11, ' 首页', 'Index', '12', 1, 'index');
INSERT INTO `nav` VALUES (12, '关于我们', 'About Us', '34', 2, 'aboutus');
INSERT INTO `nav` VALUES (14, ' 服务项目', 'Services', '21', 43, 'fwxm');
INSERT INTO `nav` VALUES (15, ' 旅游攻略', 'Tourist strategy', '34', 5, 'xinwenzixun');
INSERT INTO `nav` VALUES (16, ' 在线预约', 'Online Appointment', '32', 6, 'zaixianyuyue');

SET FOREIGN_KEY_CHECKS = 1;
