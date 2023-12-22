DROP TABLE IF EXISTS `playercreateinfo_cast_spell`;
CREATE TABLE IF NOT EXISTS `playercreateinfo_cast_spell` (
  `raceMask` int unsigned NOT NULL DEFAULT '0',
  `classMask` int unsigned NOT NULL DEFAULT '0',
  `spell` int unsigned NOT NULL DEFAULT '0',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `playercreateinfo_cast_spell` (`raceMask`, `classMask`, `spell`, `note`) VALUES
	(0, 32, 48266, 'Death Knight - Blood Presence'),
	(0, 1, 2457, 'Warrior - Battle Stance'),
	(0, 512, 0, 'Monk - Tiger Stance');		-- placeholder
