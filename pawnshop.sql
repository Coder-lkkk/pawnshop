/*
Navicat MySQL Data Transfer

Source Server         : h1
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : pawnshop

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2019-09-10 21:15:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bags
-- ----------------------------
DROP TABLE IF EXISTS `bags`;
CREATE TABLE `bags` (
  `bId` int(11) NOT NULL,
  `bName` varchar(255) DEFAULT NULL,
  `bBrand` varchar(255) DEFAULT NULL COMMENT '箱包品牌',
  `bUsage` double(255,0) DEFAULT NULL COMMENT 'x箱包使用情况',
  `bPerMoney` double(10,0) DEFAULT NULL COMMENT '箱包原价格',
  `bBuyTime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '箱包购买时间',
  `bPwanMoney` double(10,0) DEFAULT NULL COMMENT '箱包典当价格',
  `bSaleMoney` double(10,0) DEFAULT NULL COMMENT '箱包销售价格',
  `bState` varchar(255) DEFAULT NULL COMMENT '箱包使用情况',
  `bAttachment` varchar(255) DEFAULT NULL COMMENT '箱包附件',
  `bLength` double(255,0) DEFAULT NULL COMMENT '箱包的长度（cm)',
  `bPhoto` varchar(255) DEFAULT NULL,
  `bOther` varchar(255) DEFAULT NULL COMMENT '箱包的描述',
  `bCounts` int(11) DEFAULT NULL COMMENT '箱包库存',
  `uId` int(11) DEFAULT NULL COMMENT '典当人价格',
  PRIMARY KEY (`bId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bags
-- ----------------------------

-- ----------------------------
-- Table structure for diamonds
-- ----------------------------
DROP TABLE IF EXISTS `diamonds`;
CREATE TABLE `diamonds` (
  `dId` int(11) NOT NULL,
  `dName` varchar(255) DEFAULT NULL,
  `dBrand` varchar(255) DEFAULT NULL,
  `dType` varchar(255) DEFAULT NULL COMMENT '砖石款式',
  `dState` varchar(255) DEFAULT NULL COMMENT '钻石状态',
  `dShape` varchar(255) DEFAULT NULL COMMENT '钻石的形状',
  `dCarat` double(10,0) DEFAULT NULL COMMENT '钻石的克拉',
  `dColor` varchar(255) DEFAULT NULL COMMENT '钻石的颜色',
  `dClarity` varchar(255) DEFAULT NULL COMMENT '钻石的净度',
  `dCut` varchar(255) DEFAULT NULL COMMENT '钻石的切工',
  `dSize` double DEFAULT NULL COMMENT '钻石尺寸',
  `dPhoto` varchar(255) DEFAULT NULL COMMENT '钻石照片',
  `dPreMoney` double DEFAULT NULL COMMENT '砖石价格',
  `dPawnMoney` double(255,0) DEFAULT NULL COMMENT '钻石典当价格',
  `dSaleMoney` double(255,0) DEFAULT NULL COMMENT '钻石拍卖价格',
  `dCounts` int(11) DEFAULT NULL COMMENT '砖石数量、库存',
  `dOther` varchar(255) DEFAULT NULL COMMENT '钻石描述',
  `uId` int(11) DEFAULT NULL COMMENT '典当人编号',
  PRIMARY KEY (`dId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of diamonds
-- ----------------------------

-- ----------------------------
-- Table structure for jewellery
-- ----------------------------
DROP TABLE IF EXISTS `jewellery`;
CREATE TABLE `jewellery` (
  `jId` int(11) NOT NULL,
  `jName` varchar(255) DEFAULT NULL,
  `jBrand` varchar(255) DEFAULT NULL COMMENT '珠宝品牌',
  `jUsage` double(255,0) DEFAULT NULL COMMENT '珠宝使用情况',
  `jPreMoney` double(255,0) DEFAULT NULL COMMENT '原价格',
  `jBuyTime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '购买时间',
  `jPwanMoney` double(255,0) DEFAULT NULL COMMENT '典当价格',
  `jSaleMoney` double(255,0) DEFAULT NULL COMMENT '珠宝出售价格',
  `jState` varchar(255) DEFAULT NULL,
  `jAttachment` varchar(255) DEFAULT NULL COMMENT '附件',
  `jMaterial` varchar(255) DEFAULT NULL COMMENT '珠宝主体材质',
  `jInMaterial` varchar(255) DEFAULT NULL COMMENT '镶石材质',
  `jWeight` varchar(255) DEFAULT NULL COMMENT '克重（克）',
  `jDiam` double DEFAULT NULL COMMENT '单珠直径(mm)',
  `jLength` double DEFAULT NULL COMMENT '珠宝长度（厘米）',
  `jPhoto` varchar(255) DEFAULT NULL COMMENT '珠宝照片',
  `jOther` varchar(255) DEFAULT NULL COMMENT '珠宝其他说明',
  `jCounts` varchar(255) DEFAULT NULL COMMENT '珠宝数量',
  `jType` varchar(255) DEFAULT NULL COMMENT '珠宝种类',
  `jStyle` varchar(255) DEFAULT NULL COMMENT '珠宝款式',
  `jPawnTime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '典当时间',
  `uId` int(11) DEFAULT NULL COMMENT '典当人名字',
  PRIMARY KEY (`jId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jewellery
-- ----------------------------

-- ----------------------------
-- Table structure for metal
-- ----------------------------
DROP TABLE IF EXISTS `metal`;
CREATE TABLE `metal` (
  `mId` int(11) NOT NULL,
  `mName` varchar(255) DEFAULT NULL,
  `mState` varchar(255) DEFAULT NULL COMMENT '金属状态',
  `mType` varchar(255) DEFAULT NULL COMMENT '金属种类',
  `mPreMoney` double(11,0) DEFAULT NULL,
  `mPwanMoney` double(11,0) DEFAULT NULL COMMENT '金属典当价格',
  `mSaleMoney` double(11,0) DEFAULT NULL COMMENT '金属销售价格',
  `mPurity` varchar(255) DEFAULT NULL COMMENT '金属的纯度',
  `mUsage` double(255,0) DEFAULT NULL COMMENT '使用情况',
  `mStyle` varchar(255) DEFAULT NULL COMMENT '金属款式',
  `mOther` varchar(255) DEFAULT NULL COMMENT '金属其他描述',
  `mCounts` int(11) DEFAULT NULL COMMENT '金属库存',
  `mPhoto` varchar(255) DEFAULT NULL COMMENT '金属照片',
  `uId` int(11) DEFAULT NULL COMMENT '典当人编号',
  PRIMARY KEY (`mId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of metal
-- ----------------------------

-- ----------------------------
-- Table structure for stone
-- ----------------------------
DROP TABLE IF EXISTS `stone`;
CREATE TABLE `stone` (
  `sId` int(11) NOT NULL,
  `sName` varchar(255) DEFAULT NULL COMMENT '翡翠玉石的名字',
  `sStyle` varchar(255) DEFAULT NULL COMMENT '翡翠玉石的种水地',
  `sState` varchar(255) DEFAULT NULL COMMENT '玉石状态',
  `sPreMoney` double DEFAULT NULL COMMENT '玉石原价格',
  `sPawnMoney` double(11,0) DEFAULT NULL COMMENT '翡翠玉石典当价格',
  `sSaleMoney` double(11,0) DEFAULT NULL COMMENT '翡翠玉石销售价格',
  `sSize` double(11,0) DEFAULT NULL COMMENT '翡翠玉石尺寸',
  `sWeight` double(11,0) DEFAULT NULL COMMENT '翡翠玉石重量',
  `sType` varchar(255) DEFAULT NULL COMMENT '翡翠玉石款式',
  `sOther` varchar(255) DEFAULT NULL COMMENT '翡翠玉石描述',
  `sPhoto` varchar(255) DEFAULT NULL COMMENT '玉石照片',
  `sCounts` varchar(255) DEFAULT NULL COMMENT '玉石库存',
  `uId` int(11) DEFAULT NULL COMMENT '典当人编号',
  PRIMARY KEY (`sId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stone
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uId` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `uCard` varchar(255) DEFAULT NULL COMMENT '身份证',
  `tel` int(11) DEFAULT NULL COMMENT '电话',
  `uemail` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `uaddress` varchar(255) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`uId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'test', 'test', null, '123594958', '2295285120@qq.com', 'jiojkoihoi');
INSERT INTO `user` VALUES ('2', 'tom', '123456', null, null, null, null);
INSERT INTO `user` VALUES ('3', 'tom', '123456', null, null, null, null);
INSERT INTO `user` VALUES ('4', 'tom', '123456', null, null, null, null);
INSERT INTO `user` VALUES ('5', 'koionoin', 'Dd123456', null, null, null, null);
INSERT INTO `user` VALUES ('6', 'hifhif', 'gG1234', null, null, null, null);
INSERT INTO `user` VALUES ('7', 'admin', 'aDMIN12', null, null, null, null);
INSERT INTO `user` VALUES ('8', 'Hhyhh', 'Hy1234', null, null, null, null);
INSERT INTO `user` VALUES ('9', 'Hhy44', 'Hhy44', null, null, null, null);
INSERT INTO `user` VALUES ('10', 'Hhy445', 'Hhy44', null, null, null, null);
INSERT INTO `user` VALUES ('11', 'gggt', 'Ggt12', null, null, null, null);
INSERT INTO `user` VALUES ('12', 'ggho', 'Hhy456', null, null, null, null);

-- ----------------------------
-- Table structure for watch
-- ----------------------------
DROP TABLE IF EXISTS `watch`;
CREATE TABLE `watch` (
  `wId` int(11) NOT NULL,
  `wName` varchar(255) DEFAULT NULL,
  `wBrand` varchar(255) DEFAULT NULL COMMENT '手表品牌',
  `wUsage` varchar(255) DEFAULT NULL COMMENT '手表使用情况',
  `wPreMoney` double(255,0) DEFAULT NULL COMMENT '手表原价格',
  `wBuyTime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '购买时间',
  `wPawnMoney` double(255,0) DEFAULT NULL COMMENT '手表典当价格',
  `wSaleMoney` double(255,0) DEFAULT NULL,
  `wState` varchar(255) DEFAULT NULL,
  `wAttachment` varchar(255) DEFAULT NULL COMMENT '手表附件',
  `wStyle` varchar(255) DEFAULT NULL COMMENT '手表（男女款式）',
  `caseMaterial` varchar(255) DEFAULT NULL COMMENT '表壳材质',
  `surMaterial` varchar(255) DEFAULT NULL COMMENT '表镜材质',
  `bandMaterial` varchar(255) DEFAULT NULL COMMENT '表带材质',
  `wWeight` varchar(255) DEFAULT NULL COMMENT '手表克重',
  `wDiam` double DEFAULT NULL COMMENT '手表直径',
  `wType` varchar(255) DEFAULT NULL COMMENT '机芯种类',
  `wOther` varchar(255) DEFAULT NULL COMMENT '手表其他描述',
  `wPhoto` varchar(255) DEFAULT NULL COMMENT '手表照片',
  `wCounts` int(255) DEFAULT NULL,
  `uId` int(11) DEFAULT NULL COMMENT '典当人编号',
  PRIMARY KEY (`wId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of watch
-- ----------------------------
