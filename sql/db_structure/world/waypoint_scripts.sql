/*
MySQL Data Transfer
Source Host: localhost
Source Database: world
Target Host: localhost
Target Database: world
Date: 08.08.2009 14:35:06
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for waypoint_scripts
-- ----------------------------
DROP TABLE IF EXISTS `waypoint_scripts`;
CREATE TABLE `waypoint_scripts` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `delay` int(11) unsigned NOT NULL DEFAULT '0',
  `command` int(11) unsigned NOT NULL DEFAULT '0',
  `datalong` int(11) unsigned NOT NULL DEFAULT '0',
  `datalong2` int(11) unsigned NOT NULL DEFAULT '0',
  `dataint` int(11) unsigned NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `o` float NOT NULL DEFAULT '0',
  `guid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
