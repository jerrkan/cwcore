/*
MySQL Data Transfer
Source Host: localhost
Source Database: world
Target Host: localhost
Target Database: world
Date: 08.08.2009 14:30:14
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for npc_option
-- ----------------------------
DROP TABLE IF EXISTS `npc_option`;
CREATE TABLE `npc_option` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `gossip_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `npcflag` int(10) unsigned NOT NULL DEFAULT '0',
  `icon` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `box_money` int(10) unsigned NOT NULL DEFAULT '0',
  `coded` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `option_text` text,
  `box_text` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
