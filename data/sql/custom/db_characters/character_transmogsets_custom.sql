DROP TABLE IF EXISTS `character_transmog_sets`;
CREATE TABLE IF NOT EXISTS `character_transmog_sets` (
	`owner` INT(10) UNSIGNED NOT NULL,
	`presetid` TINYINT(3) UNSIGNED NOT NULL,
	`setname` TEXT NULL,
	`setdata` TEXT NULL,
	PRIMARY KEY (`owner`, `presetid`),
	INDEX `Owner` (`owner`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
