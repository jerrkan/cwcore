/*
MySQL Data Transfer
Source Host: localhost
Source Database: world
Target Host: localhost
Target Database: world
Date: 08.08.2009 14:31:19
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for page_text
-- ----------------------------
DROP TABLE IF EXISTS `page_text`;
CREATE TABLE `page_text` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `text` longtext NOT NULL,
  `next_page` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Item System';

-- ----------------------------
-- Records 
-- ----------------------------
