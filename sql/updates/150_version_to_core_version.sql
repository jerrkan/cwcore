DROP TABLE IF EXISTS `version`;

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `core_version`
-- ----------------------------
DROP TABLE IF EXISTS `core_version`;
CREATE TABLE `core_version` (
  `core_version` varchar(120) DEFAULT NULL COMMENT 'Core revision dumped at startup.',
  `core_revision` bigint(20) unsigned DEFAULT NULL,
  `db_version` varchar(120) DEFAULT NULL COMMENT 'Version of world DB.',
  `script_version` varchar(120) DEFAULT NULL COMMENT 'Version of scripts DB.',
  `cache_id` int(10) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Version Notes';

-- ----------------------------
-- Records of core_version
-- ----------------------------
INSERT INTO `core_version` VALUES ('CWCore', '0', '0', '0', '0');
