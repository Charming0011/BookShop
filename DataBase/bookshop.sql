/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : bookshop

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-11-07 23:22:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `easybuy_comment`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_comment`;
CREATE TABLE `easybuy_comment` (
  `EC_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EC_CONTENT` varchar(200) NOT NULL,
  `EC_CREATE_TIME` datetime NOT NULL,
  `EC_REPLY` varchar(200) DEFAULT NULL,
  `EC_REPLY_TIME` datetime DEFAULT NULL,
  `EC_NICK_NAME` varchar(10) NOT NULL,
  PRIMARY KEY (`EC_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of easybuy_comment
-- ----------------------------
INSERT INTO `easybuy_comment` VALUES ('9', '全网图书最全的网站', '2019-08-19 14:30:42', '', null, '阿星');
INSERT INTO `easybuy_comment` VALUES ('10', '性价比真的高！', '2019-08-19 14:31:06', '', null, '阿朱');
INSERT INTO `easybuy_comment` VALUES ('11', '很不错的购物网站', '2019-08-19 14:35:35', '', null, '啊明');
INSERT INTO `easybuy_comment` VALUES ('12', 'just buy it', '2019-08-19 14:37:54', '', null, '啊秦');

-- ----------------------------
-- Table structure for `easybuy_news`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_news`;
CREATE TABLE `easybuy_news` (
  `EN_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EN_TITLE` varchar(40) NOT NULL,
  `EN_CONTENT` varchar(1000) NOT NULL,
  `EN_CREATE_TIME` datetime NOT NULL,
  PRIMARY KEY (`EN_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of easybuy_news
-- ----------------------------
INSERT INTO `easybuy_news` VALUES ('6', '会员注册须知', '会员注册须知', '2019-07-27 13:23:47');
INSERT INTO `easybuy_news` VALUES ('7', '会员购买须知', '会员购买须知', '2019-07-27 13:24:01');

-- ----------------------------
-- Table structure for `easybuy_order`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_order`;
CREATE TABLE `easybuy_order` (
  `EO_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EO_USER_ID` varchar(10) NOT NULL,
  `EO_USER_NAME` varchar(20) DEFAULT NULL,
  `EO_USER_ADDRESS` varchar(200) DEFAULT NULL,
  `EO_CREATE_TIME` datetime NOT NULL,
  `EO_COST` decimal(10,2) NOT NULL,
  `EO_STATUS` decimal(6,0) NOT NULL,
  `EO_TYPE` decimal(6,0) NOT NULL,
  PRIMARY KEY (`EO_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of easybuy_order
-- ----------------------------
INSERT INTO `easybuy_order` VALUES ('8', '阿醒', '阿醒', '四川省 成都市 新都区 阿明工作室', '2019-07-27 11:01:00', '16.00', '3', '1');
INSERT INTO `easybuy_order` VALUES ('9', 'admin', '管理员', '成都', '2019-07-20 19:10:25', '3876.00', '1', '1');
INSERT INTO `easybuy_order` VALUES ('10', 'admin', '管理员', '成都', '2019-07-19 20:18:30', '20.00', '1', '1');

-- ----------------------------
-- Table structure for `easybuy_order_detail`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_order_detail`;
CREATE TABLE `easybuy_order_detail` (
  `EOD_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EO_ID` decimal(10,0) NOT NULL,
  `EP_ID` decimal(10,0) NOT NULL,
  `EOD_QUANTITY` decimal(6,0) NOT NULL,
  `EOD_COST` decimal(10,2) NOT NULL,
  PRIMARY KEY (`EOD_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of easybuy_order_detail
-- ----------------------------
INSERT INTO `easybuy_order_detail` VALUES ('11', '8', '20', '1', '16.00');
INSERT INTO `easybuy_order_detail` VALUES ('12', '9', '27', '323', '3876.00');
INSERT INTO `easybuy_order_detail` VALUES ('13', '10', '25', '1', '4.00');
INSERT INTO `easybuy_order_detail` VALUES ('14', '10', '20', '1', '16.00');

-- ----------------------------
-- Table structure for `easybuy_product`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_product`;
CREATE TABLE `easybuy_product` (
  `EP_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EP_NAME` varchar(128) NOT NULL,
  `EP_DESCRIPTION` varchar(512) DEFAULT NULL,
  `EP_PRICE` decimal(10,2) NOT NULL,
  `EP_STOCK` decimal(10,0) NOT NULL,
  `EPC_ID` decimal(10,0) DEFAULT NULL,
  `EPC_CHILD_ID` decimal(10,0) DEFAULT NULL,
  `EP_FILE_NAME` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`EP_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of easybuy_product
-- ----------------------------
INSERT INTO `easybuy_product` VALUES ('20', 'bootstrap实战', 'bootstrap实战（第二版）', '16.00', '17', '16', '20', 'goods1438050944_m.jpg');
INSERT INTO `easybuy_product` VALUES ('21', 'OAuth2实战', 'OAuth2实战', '27.00', '22', '16', '21', 'goods13772354821288127790_m.jpg');
INSERT INTO `easybuy_product` VALUES ('22', 'Django企业开发实战', 'Django企业开发实战', '23.00', '45', '16', '22', '201308231504346196_m.jpg');
INSERT INTO `easybuy_product` VALUES ('24', 'Kotlin从小白到大牛', 'Kotlin从小白到大牛，全新立体化图书', '32.00', '32', '16', '23', 'goods1438591037_m.jpg');
INSERT INTO `easybuy_product` VALUES ('25', 'Vue.js深入浅出', 'Vue.js深入浅出', '4.00', '322', '17', '24', 'goods1411022636_m.jpg');
INSERT INTO `easybuy_product` VALUES ('27', '网络游戏核心技术与实战', '网络游戏核心技术与实战', '12.00', '0', '17', '26', 'u=189404210,2788192053&fm=27&gp=0.jpg');
INSERT INTO `easybuy_product` VALUES ('28', 'Python深度学习', 'Python深度学习', '32.00', '3223', '18', '27', 'goods13801796061288130653_m.jpg');
INSERT INTO `easybuy_product` VALUES ('29', '不脑残 科学', '台湾第一科普网站  首部力作               用理性与科学带你重新发现生活的乐趣！', '8.00', '32', '18', '28', 'u=702189391,3456313470&fm=58.jpg');
INSERT INTO `easybuy_product` VALUES ('30', '极简算法表', '极简算法表', '44.00', '323', '18', '29', 'u=1921186747,914205630&fm=200&gp=0.jpg');
INSERT INTO `easybuy_product` VALUES ('31', '人人都是设计师', '人人都是设计师', '33.00', '32', '19', '30', 'u=2313857963,2992583774&fm=58&bpow=650&bpoh=433.jpg');
INSERT INTO `easybuy_product` VALUES ('32', '简约至上', '简约至上  交互式设计四策略（第二版）', '78.00', '323', '19', '31', 'u=3416364401,1008420908&fm=202&src=781&mola=new&crop=v1.jpg');
INSERT INTO `easybuy_product` VALUES ('33', '说服式设计七原则', '说服式设计七原则  用设计影响用户的选择', '323.00', '888', '19', '32', 'u=3893092790,864232993&fm=27&gp=0.jpg');
INSERT INTO `easybuy_product` VALUES ('35', '深入理解Python特性', '深入理解Python特性', '65.00', '100', '17', '25', 'u=4093368452,440755421&fm=27&gp=0.jpg');

-- ----------------------------
-- Table structure for `easybuy_product_category`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_product_category`;
CREATE TABLE `easybuy_product_category` (
  `EPC_ID` int(10) NOT NULL AUTO_INCREMENT,
  `EPC_NAME` varchar(20) NOT NULL,
  `EPC_PARENT_ID` decimal(10,0) NOT NULL,
  PRIMARY KEY (`EPC_ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of easybuy_product_category
-- ----------------------------
INSERT INTO `easybuy_product_category` VALUES ('17', '计算机类', '0');
INSERT INTO `easybuy_product_category` VALUES ('18', '科普类', '0');
INSERT INTO `easybuy_product_category` VALUES ('19', '设计类', '0');
INSERT INTO `easybuy_product_category` VALUES ('20', 'C语言', '16');
INSERT INTO `easybuy_product_category` VALUES ('21', 'Java', '16');
INSERT INTO `easybuy_product_category` VALUES ('22', 'C#', '16');
INSERT INTO `easybuy_product_category` VALUES ('23', 'PS', '16');
INSERT INTO `easybuy_product_category` VALUES ('24', '编程语言', '17');
INSERT INTO `easybuy_product_category` VALUES ('25', '软件开发', '17');
INSERT INTO `easybuy_product_category` VALUES ('27', '数学', '18');
INSERT INTO `easybuy_product_category` VALUES ('28', '通识教育', '18');
INSERT INTO `easybuy_product_category` VALUES ('29', '哲学', '18');
INSERT INTO `easybuy_product_category` VALUES ('30', '产品设计', '19');
INSERT INTO `easybuy_product_category` VALUES ('31', '平面设计', '19');

-- ----------------------------
-- Table structure for `easybuy_shop`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_shop`;
CREATE TABLE `easybuy_shop` (
  `es_id` int(11) NOT NULL AUTO_INCREMENT,
  `es_ep_file_name` varchar(128) DEFAULT NULL,
  `es_ep_name` varchar(64) DEFAULT NULL,
  `es_ep_price` decimal(10,0) DEFAULT NULL,
  `es_eod_quantity` int(11) DEFAULT NULL,
  `es_ep_stock` int(11) DEFAULT NULL,
  `es_ep_id` int(11) DEFAULT NULL,
  `es_eu_user_id` varchar(64) DEFAULT NULL,
  `es_valid` int(11) DEFAULT NULL,
  PRIMARY KEY (`es_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of easybuy_shop
-- ----------------------------

-- ----------------------------
-- Table structure for `easybuy_user`
-- ----------------------------
DROP TABLE IF EXISTS `easybuy_user`;
CREATE TABLE `easybuy_user` (
  `EU_USER_ID` varchar(32) NOT NULL,
  `EU_USER_NAME` varchar(20) NOT NULL,
  `EU_PASSWORD` varchar(20) NOT NULL,
  `EU_SEX` varchar(1) NOT NULL,
  `EU_BIRTHDAY` datetime DEFAULT NULL,
  `EU_IDENTITY_CODE` varchar(60) DEFAULT NULL,
  `EU_EMAIL` varchar(80) DEFAULT NULL,
  `EU_MOBILE` varchar(11) DEFAULT NULL,
  `EU_ADDRESS` varchar(200) DEFAULT NULL,
  `EU_STATUS` decimal(6,0) NOT NULL,
  PRIMARY KEY (`EU_USER_ID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of easybuy_user
-- ----------------------------
INSERT INTO `easybuy_user` VALUES ('admin', 'admin', 'admin', 'T', '2019-10-26 00:00:00', null, 'hh@163.com', '13666666666', '成都', '2');
INSERT INTO `easybuy_user` VALUES ('秦傲明', '乔明', '123', 'T', '2019-10-26 00:00:00', null, '123@qq.com', '123', 'asdf', '1');
