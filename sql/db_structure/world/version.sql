/*
MySQL Data Transfer
Source Host: localhost
Source Database: world
Target Host: localhost
Target Database: world
Date: 08.08.2009 14:34:57
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for version
-- ----------------------------
DROP TABLE IF EXISTS `version`;
CREATE TABLE `version` (
  `core_version` varchar(120) DEFAULT NULL COMMENT 'Core revision dumped at startup.',
  `core_revision` varchar(120) DEFAULT NULL COMMENT 'Revision of Core.',
  `db_version` varchar(120) DEFAULT NULL COMMENT 'Version of world DB.',
  `script_version` varchar(120) DEFAULT NULL COMMENT 'Version of scripts DB.'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Version Notes';

-- ----------------------------
-- Records 
-- ----------------------------
