/*
MySQL Data Transfer
Source Host: localhost
Source Database: world
Target Host: localhost
Target Database: world
Date: 08.08.2009 14:34:25
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for spell_required
-- ----------------------------
DROP TABLE IF EXISTS `spell_required`;
CREATE TABLE `spell_required` (
  `spell_id` mediumint(9) NOT NULL DEFAULT '0',
  `req_spell` mediumint(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`spell_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Spell Additinal Data';

-- ----------------------------
-- Records 
-- ----------------------------
