DELETE FROM `areatrigger_teleport` WHERE `ID` IN (1468, 6877, 6878);

INSERT INTO `areatrigger_teleport` (`ID`, `Name`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES
	(6877, 'Blackrock Caverns (Entrance)', 725, -43.567, -5.976, -12.118, 0),
	(6878, 'Blackrock Caverns (Exit)', 0, -7571.14, -1324.96, 245.538, 1.67552);
