/*
MySQL Data Transfer
Source Host: localhost
Source Database: world
Target Host: localhost
Target Database: world
Date: 08.08.2009 14:29:07
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for item_enchantment_template
-- ----------------------------
DROP TABLE IF EXISTS `item_enchantment_template`;
CREATE TABLE `item_enchantment_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ench` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `chance` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`,`ench`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Item Random Enchantment System';

-- ----------------------------
-- Records 
-- ----------------------------
