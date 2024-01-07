DELETE FROM `dungeon_access_template` WHERE `id` IN (122, 123);

INSERT INTO `dungeon_access_template` (`id`, `map_id`, `difficulty`, `min_level`, `max_level`, `min_avg_item_level`, `comment`) VALUES
	(122, 725, 0, 62, 0, 0, 'Blackrock Caverns'),
	(123, 725, 1, 70, 0, 0, 'Blackrock Caverns - Heroic');
