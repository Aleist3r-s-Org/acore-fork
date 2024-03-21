DROP TABLE IF EXISTS `item_appearance_groups`;
CREATE TABLE IF NOT EXISTS `item_appearance_groups` (
	`entry` int unsigned NOT NULL DEFAULT '0',
	`itemId` int unsigned NOT NULL DEFAULT '0',
	`comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
	 PRIMARY KEY (`entry`, `itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `item_appearance_groups` (`entry`, `itemId`, `comment`) VALUES
	(1262, 34652, 'Acherus Knight\'s Hood'),
	(1262, 34655, 'Acherus Knight\'s Pauldrons'),
	(1262, 34650, 'Acherus Knight\'s Tunic'),
	(1262, 34651, 'Acherus Knight\'s Girdle'),
	(1262, 34656, 'Acherus Knight\'s Legplates'),
	(1262, 34648, 'Acherus Knight\'s Greaves'),
	(1262, 34653, 'Acherus Knight\'s Wristguard'),
	(1262, 34649, 'Acherus Knight\'s Gauntlets');
