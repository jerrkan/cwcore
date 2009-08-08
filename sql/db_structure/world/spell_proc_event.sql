/*
MySQL Data Transfer
Source Host: localhost
Source Database: world
Target Host: localhost
Target Database: world
Date: 08.08.2009 14:34:20
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for spell_proc_event
-- ----------------------------
DROP TABLE IF EXISTS `spell_proc_event`;
CREATE TABLE `spell_proc_event` (
  `entry` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SchoolMask` tinyint(4) NOT NULL DEFAULT '0',
  `SpellFamilyName` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SpellFamilyMask0` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellFamilyMask1` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellFamilyMask2` int(10) unsigned NOT NULL DEFAULT '0',
  `procFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `procEx` int(10) unsigned NOT NULL DEFAULT '0',
  `ppmRate` float NOT NULL DEFAULT '0',
  `CustomChance` float NOT NULL DEFAULT '0',
  `Cooldown` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
