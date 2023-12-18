UPDATE `item_template` SET `stackable` = `stackable` * (200 / `stackable`) WHERE (`class` = 0) AND (`maxcount` < 1) AND (`stackable` > 1) AND (`stackable` <= 200);
UPDATE `item_template` SET `stackable` = `stackable` * (200 / `stackable`) WHERE (`class` = 3) AND (`maxcount` < 1) AND (`stackable` > 1) AND (`stackable` <= 200);
UPDATE `item_template` SET `stackable` = `stackable` * (200 / `stackable`) WHERE (`class` = 5) AND (`maxcount` < 1) AND (`stackable` > 1) AND (`stackable` <= 200);
UPDATE `item_template` SET `stackable` = `stackable` * (1000 / `stackable`) WHERE (`class` = 6) AND (`maxcount` < 1) AND (`stackable` > 1) AND (`stackable` < 1000);
UPDATE `item_template` SET `stackable` = `stackable` * (200 / `stackable`) WHERE (`class` = 7) AND (`maxcount` < 1) AND (`subclass` >= 1) AND (`stackable` > 1) AND (`stackable` <= 200);
UPDATE `item_template` SET `stackable` = `stackable` * (200 / `stackable`) WHERE (`class` = 8) AND (`maxcount` < 1) AND (`stackable` > 1) AND (`stackable` <= 200);
UPDATE `item_template` SET `stackable` = `stackable` * (200 / `stackable`) WHERE (`class` = 13) AND (`maxcount` < 1) AND (`stackable` > 1) AND (`stackable` <= 200);
UPDATE `item_template` SET `stackable` = `stackable` * (200 / `stackable`) WHERE (`class` = 15) AND (`maxcount` < 1) AND (`stackable` > 1) AND (`stackable` <= 200) AND (`entry` != 22726) AND (`entry` != 50274);
UPDATE `item_template` SET `stackable` = `stackable` * (200 / `stackable`) WHERE (`class` = 16) AND (`maxcount` < 1) AND (`stackable` > 1) AND (`stackable` <= 200);
