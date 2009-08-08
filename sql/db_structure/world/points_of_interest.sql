/*
MySQL Data Transfer
Source Host: localhost
Source Database: world
Target Host: localhost
Target Database: world
Date: 08.08.2009 14:32:09
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for points_of_interest
-- ----------------------------
DROP TABLE IF EXISTS `points_of_interest`;
CREATE TABLE `points_of_interest` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `icon` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `flags` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `data` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_name` text NOT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
