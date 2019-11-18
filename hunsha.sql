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

 Date: 10/10/2019 10:50:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cate
-- ----------------------------
DROP TABLE IF EXISTS `cate`;
CREATE TABLE `cate`  (
  `cid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cate
-- ----------------------------
INSERT INTO `cate` VALUES (1, '全部');
INSERT INTO `cate` VALUES (3, '热门目的地');
INSERT INTO `cate` VALUES (4, '当季推荐');
INSERT INTO `cate` VALUES (5, '主题精选');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `gid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `gname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gprice` decimal(10, 2) UNSIGNED NOT NULL,
  `sale` decimal(10, 2) UNSIGNED NOT NULL,
  `stock` int(255) UNSIGNED NOT NULL,
  `detail` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `banner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(0) NOT NULL,
  `cid` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`gid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (14, '俄罗斯', 4000.00, 3200.00, 3452, '俄罗斯是世界上面积最大的国家，绵延的海岸线从北冰洋一直伸展到北太平洋，还包括了内陆海黑海和里海，涵盖广泛的地理环境，拥有世界最大的森林储备和含有约世界四分之一淡水的湖泊，自然资源极其丰富，地貌景观多种多样，再加上大量的历史文化古迹、人文城市景观和特殊的北国风光，吸引了众多游客前往俄罗斯游玩参观。', '/pc/uploads/20191009/15706358812071.jpeg', '/pc/uploads/20191009/15706358889455.jpeg,/pc/uploads/20191009/1570635888270.jpeg,/pc/uploads/20191009/15706358884227.jpeg', '2019-09-30 10:56:44', 3);
INSERT INTO `goods` VALUES (18, '香港', 2800.00, 2150.00, 55657, '香港的景点花费主要集中在游乐园的门票上，香港汇集了全世界各地的顶尖、地道美食、米其林餐厅云集，香港是名副其实的美食之都。本地的茶餐厅、冰室也独具风味，行前值得仔细做一份“美食地图”。10月到次年5月是前往香港的最佳时间。', '/pc/uploads/20191009/15706364216052.jpeg', '/pc/uploads/20191009/15706364289226.jpeg,/pc/uploads/20191009/15706364288362.jpeg,/pc/uploads/20191009/15706364287143.jpeg', '2019-10-07 11:36:27', 4);
INSERT INTO `goods` VALUES (17, '全部', 232.00, 23.00, 23, 'sdsd', '/pc/uploads/20191007/15704188666230.jpeg', '/pc/uploads/20191007/15704186875405.png,/pc/uploads/20191007/15704186876556.png,/pc/uploads/20191007/15704186958142.jpeg,/pc/uploads/20191007/15704186959641.jpeg,/pc/uploads/20191007/15704186952238.jpeg', '2019-10-07 11:27:58', 3);

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES (1, 'hyl', '3c021eaef5b2fa9d90c5591a762aaddb');

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

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (3, '简约 ', '2019-10-04', '时尚欧式系列');
INSERT INTO `news` VALUES (4, '甜美 ', '2019-09-23', '公主型系列');
INSERT INTO `news` VALUES (5, '简约 ', ' 2019-09-22', '韩式系列');
INSERT INTO `news` VALUES (6, '秀禾 ', ' 2019-09-27', ' 满庭芳系列');
INSERT INTO `news` VALUES (7, ' 秀禾 ', '2019-10-03', ' 花漾绽放系列');

-- ----------------------------
-- Table structure for online
-- ----------------------------
DROP TABLE IF EXISTS `online`;
CREATE TABLE `online`  (
  `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT,
  `server` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `data` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` int(255) NOT NULL,
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `captcha` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of online
-- ----------------------------
INSERT INTO `online` VALUES (4, 'sd', '345', '65', '45', 876, '87', '56');
INSERT INTO `online` VALUES (5, 'SASFTHTR', '大幅度', '女', '胡意玲', 435, '按实际啦', '354');

SET FOREIGN_KEY_CHECKS = 1;
