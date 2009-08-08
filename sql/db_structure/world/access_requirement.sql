/*
MySQL Data Transfer
Source Host: localhost
Source Database: world
Target Host: localhost
Target Database: world
Date: 08.08.2009 13:25:19
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for access_requirement
-- ----------------------------
DROP TABLE IF EXISTS `access_requirement`;
CREATE TABLE `access_requirement` (
  `id` bigint(20) unsigned NOT NULL COMMENT 'Identifier',
  `level_min` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `heroic_level_min` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level_max` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `heroic_key` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `heroic_key2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `quest_done` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `quest_failed_text` text,
  `heroic_quest_done` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `heroic_quest_failed_text` text,
  `comment` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Access Requirements';

-- ----------------------------
-- Records 
-- ----------------------------
