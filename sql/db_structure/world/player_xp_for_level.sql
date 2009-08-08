/*
MySQL Data Transfer
Source Host: localhost
Source Database: world
Target Host: localhost
Target Database: world
Date: 08.08.2009 14:31:44
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for player_xp_for_level
-- ----------------------------
DROP TABLE IF EXISTS `player_xp_for_level`;
CREATE TABLE `player_xp_for_level` (
  `lvl` int(3) unsigned NOT NULL,
  `xp_for_next_level` int(10) unsigned NOT NULL,
  PRIMARY KEY (`lvl`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
