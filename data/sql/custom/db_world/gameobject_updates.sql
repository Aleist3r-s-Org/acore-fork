DELETE FROM `gameobject` WHERE `guid` IN (212275, 212276, 212281, 225987, 225988);

INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES
	(212275,204858,0,25,5374,1,1,-7570.3,-1329.83,246.733,1.69297,0,0,0.748956,0.66262,300,255,1,'',0,'Blackrock Caverns Portal - Heroic'),
	(212276,204857,0,25,5374,1,1,-7570.3,-1329.83,246.733,1.69297,0,0,0.748956,0.66262,300,255,1,'',0,'Blackrock Caverns Portal - Normal'),
	(212281,205566,0,0,0,1,1,-7520,-1285.75,477.894,3.38993,0,0,0.992301,-0.12385,7200,100,1,'',1,'Meeting Stone - Blackwing Descent'),
	(225987,202718,725,0,0,3,1,-48.586,0,-12.178,0,0,0,0,0,7200,255,1,'',0,'Blackrock Caverns Exit Portal - Heroic'),
	(225988,202698,725,0,0,3,1,-48.586,0,-12.178,0,0,0,0,0,7200,255,1,'',0,'Blackrock Caverns Exit Portal - Normal');
