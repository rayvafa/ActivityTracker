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

 Date: 02/07/2014 11:29:02 AM
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

SET FOREIGN_KEY_CHECKS = 1;
