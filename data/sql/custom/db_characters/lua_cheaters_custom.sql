CREATE TABLE IF NOT EXISTS `lua_cheaters` (
	`guid` int unsigned NOT NULL DEFAULT 0,
	`account` int unsigned NOT NULL DEFAULT 0,
	`macro` varchar(255) NOT NULL DEFAULT '',
	PRIMARY KEY (`guid`,`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
