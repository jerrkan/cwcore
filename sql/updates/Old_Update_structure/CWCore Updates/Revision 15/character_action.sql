DROP TABLE IF EXISTS `character_action`;
CREATE TABLE `character_action` (
  `guid` int(11) unsigned NOT NULL default '0' COMMENT 'Global Unique Identifier',
  `spec` tinyint(3) NOT NULL default '0',
  `button` tinyint(3) unsigned NOT NULL default '0',
  `action` int(11) unsigned NOT NULL default '0',
  `type` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`guid`,`spec`,`button`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Player System';