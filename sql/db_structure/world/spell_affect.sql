/*
MySQL Data Transfer
Source Host: localhost
Source Database: world
Target Host: localhost
Target Database: world
Date: 08.08.2009 14:33:39
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for spell_affect
-- ----------------------------
DROP TABLE IF EXISTS `spell_affect`;
CREATE TABLE `spell_affect` (
  `entry` smallint(5) unsigned NOT NULL DEFAULT '0',
  `effectId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SpellClassMask0` int(5) unsigned NOT NULL DEFAULT '0',
  `SpellClassMask1` int(5) unsigned NOT NULL DEFAULT '0',
  `SpellClassMask2` int(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`,`effectId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
