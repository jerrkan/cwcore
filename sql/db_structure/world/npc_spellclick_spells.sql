/*
MySQL Data Transfer
Source Host: localhost
Source Database: world
Target Host: localhost
Target Database: world
Date: 08.08.2009 14:30:19
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for npc_spellclick_spells
-- ----------------------------
DROP TABLE IF EXISTS `npc_spellclick_spells`;
CREATE TABLE `npc_spellclick_spells` (
  `npc_entry` int(10) unsigned NOT NULL COMMENT 'reference to creature_template',
  `spell_id` int(10) unsigned NOT NULL COMMENT 'spell which should be casted ',
  `quest_id` int(10) unsigned NOT NULL COMMENT 'reference to quest_template',
  `cast_flags` tinyint(3) unsigned NOT NULL COMMENT 'first bit defines caster: 1=player, 0=creature; second bit defines target, same mapping as caster bit',
  `quest_status` int(11) unsigned NOT NULL DEFAULT '3' COMMENT 'Quest status: 3 incompleted, 1 completed/rewarded'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
