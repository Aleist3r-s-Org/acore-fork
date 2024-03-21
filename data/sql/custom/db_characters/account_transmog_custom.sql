DROP TABLE IF EXISTS `account_transmog`;
CREATE TABLE `account_transmog` (
	`accountid` int unsigned NOT NULL,
	`type` int unsigned NOT NULL,
	`entry` int unsigned NOT NULL,
	PRIMARY KEY (`accountid`,`type`,`entry`),
	KEY `accountid` (`accountid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
