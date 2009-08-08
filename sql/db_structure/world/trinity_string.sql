/*
MySQL Data Transfer
Source Host: localhost
Source Database: world
Target Host: localhost
Target Database: world
Date: 08.08.2009 14:34:52
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for trinity_string
-- ----------------------------
DROP TABLE IF EXISTS `trinity_string`;
CREATE TABLE `trinity_string` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content_default` text NOT NULL,
  `content_loc1` text,
  `content_loc2` text,
  `content_loc3` text,
  `content_loc4` text,
  `content_loc5` text,
  `content_loc6` text,
  `content_loc7` text,
  `content_loc8` text,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `trinity_string` VALUES ('11000', '|cffffff00[|c00077766Autobroadcast|cffffff00]: |cFFF222FF%s|r', null, null, null, null, null, null, null, null);
