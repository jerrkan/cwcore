/*
MySQL Data Transfer
Source Host: localhost
Source Database: world
Target Host: localhost
Target Database: world
Date: 08.08.2009 13:27:40
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for exploration_basexp
-- ----------------------------
DROP TABLE IF EXISTS `exploration_basexp`;
CREATE TABLE `exploration_basexp` (
  `level` tinyint(4) NOT NULL DEFAULT '0',
  `basexp` mediumint(9) NOT NULL DEFAULT '0',
  PRIMARY KEY (`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Exploration System';

-- ----------------------------
-- Records 
-- ----------------------------
