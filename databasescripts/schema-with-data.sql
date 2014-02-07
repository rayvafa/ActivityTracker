/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 50535
 Source Host           : 203.170.85.245
 Source Database       : ramoonph_test

 Target Server Type    : MySQL
 Target Server Version : 50535
 File Encoding         : utf-8

 Date: 02/07/2014 11:29:14 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `tbl_tracker`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tracker`;
CREATE TABLE `tbl_tracker` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `tbl_tracker`
-- ----------------------------
BEGIN;
INSERT INTO `tbl_tracker` VALUES ('0', 'Test'), ('1', 'WEIGHT'), ('2', 'PUSH-UP');
COMMIT;

-- ----------------------------
--  Table structure for `tbl_user`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `email` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  PRIMARY KEY (`email`),
  UNIQUE KEY `UNQ_EMAIL` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `tbl_user`
-- ----------------------------
BEGIN;
INSERT INTO `tbl_user` VALUES ('vafatabar@gmail.com', '1', 'Ray', 'Vafa');
COMMIT;

-- ----------------------------
--  Table structure for `track_point`
-- ----------------------------
DROP TABLE IF EXISTS `track_point`;
CREATE TABLE `track_point` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TRACKER_ID` int(11) DEFAULT NULL,
  `QUANTITY` int(11) DEFAULT NULL,
  `TRACK_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `TRACKER_ID` (`TRACKER_ID`),
  CONSTRAINT `track_point_ibfk_1` FOREIGN KEY (`TRACKER_ID`) REFERENCES `tbl_tracker` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `track_point`
-- ----------------------------
BEGIN;
INSERT INTO `track_point` VALUES ('23', '0', '0', '2014-01-14 13:24:39'), ('24', '0', '0', '2014-01-14 15:14:25'), ('25', '0', '0', '2014-01-14 15:14:38'), ('26', '0', '0', '2014-01-15 09:44:15'), ('27', '0', '0', '2014-01-15 09:58:38'), ('28', '0', '0', '2014-01-15 10:03:16'), ('29', '0', '0', '2014-01-15 10:04:17'), ('30', '0', '0', '2014-01-15 10:10:59'), ('31', '0', '0', '2014-01-15 10:11:16'), ('32', '0', '0', '2014-02-06 19:34:39'), ('33', '0', '0', '2014-02-06 19:59:19');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
