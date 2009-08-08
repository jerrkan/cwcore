/*
MySQL Data Transfer
Source Host: localhost
Source Database: world
Target Host: localhost
Target Database: world
Date: 08.08.2009 13:26:35
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for creature_equip_template
-- ----------------------------
DROP TABLE IF EXISTS `creature_equip_template`;
CREATE TABLE `creature_equip_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Unique entry',
  `equipentry1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `equipentry2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `equipentry3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Creature System (Equipment)';

-- ----------------------------
-- Records 
-- ----------------------------
