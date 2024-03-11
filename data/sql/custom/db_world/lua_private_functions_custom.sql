DROP TABLE IF EXISTS `lua_private_functions`;
CREATE TABLE IF NOT EXISTS `lua_private_functions` (
	`function_name` varchar(255) NOT NULL DEFAULT '0',
	`enabled` tinyint NOT NULL DEFAULT '1',
	PRIMARY KEY (`function_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `lua_private_functions` (`function_name`, `enabled`) VALUES
	('CastSpellByName', 1),
	('RunMacroText', 1);
