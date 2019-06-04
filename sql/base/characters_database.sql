-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.6.44-log - MySQL Community Server (GPL)
-- Операционная система:         Win64
-- HeidiSQL Версия:              10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица characters_ashamane.account_data
DROP TABLE IF EXISTS `account_data`;
CREATE TABLE IF NOT EXISTS `account_data` (
  `accountId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`accountId`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.account_data: ~0 rows (приблизительно)
DELETE FROM `account_data`;
/*!40000 ALTER TABLE `account_data` DISABLE KEYS */;
INSERT INTO `account_data` (`accountId`, `type`, `time`, `data`) VALUES
	(1, 0, 1559682930, _binary 0x53455420666C61676765645475746F7269616C732022760123233A232325220D0A53455420616374696F6E6564416476656E747572654A6F75726E616C456E747269657320227601220D0A);
/*!40000 ALTER TABLE `account_data` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.account_instance_times
DROP TABLE IF EXISTS `account_instance_times`;
CREATE TABLE IF NOT EXISTS `account_instance_times` (
  `accountId` int(10) unsigned NOT NULL,
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0',
  `releaseTime` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`accountId`,`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.account_instance_times: ~0 rows (приблизительно)
DELETE FROM `account_instance_times`;
/*!40000 ALTER TABLE `account_instance_times` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_instance_times` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.account_tutorial
DROP TABLE IF EXISTS `account_tutorial`;
CREATE TABLE IF NOT EXISTS `account_tutorial` (
  `accountId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `tut0` int(10) unsigned NOT NULL DEFAULT '0',
  `tut1` int(10) unsigned NOT NULL DEFAULT '0',
  `tut2` int(10) unsigned NOT NULL DEFAULT '0',
  `tut3` int(10) unsigned NOT NULL DEFAULT '0',
  `tut4` int(10) unsigned NOT NULL DEFAULT '0',
  `tut5` int(10) unsigned NOT NULL DEFAULT '0',
  `tut6` int(10) unsigned NOT NULL DEFAULT '0',
  `tut7` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.account_tutorial: ~0 rows (приблизительно)
DELETE FROM `account_tutorial`;
/*!40000 ALTER TABLE `account_tutorial` DISABLE KEYS */;
INSERT INTO `account_tutorial` (`accountId`, `tut0`, `tut1`, `tut2`, `tut3`, `tut4`, `tut5`, `tut6`, `tut7`) VALUES
	(1, 1, 0, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `account_tutorial` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.arena_team
DROP TABLE IF EXISTS `arena_team`;
CREATE TABLE IF NOT EXISTS `arena_team` (
  `arenaTeamId` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL,
  `captainGuid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rating` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weekGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weekWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  `backgroundColor` int(10) unsigned NOT NULL DEFAULT '0',
  `emblemStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `emblemColor` int(10) unsigned NOT NULL DEFAULT '0',
  `borderStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `borderColor` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arenaTeamId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.arena_team: ~0 rows (приблизительно)
DELETE FROM `arena_team`;
/*!40000 ALTER TABLE `arena_team` DISABLE KEYS */;
/*!40000 ALTER TABLE `arena_team` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.arena_team_member
DROP TABLE IF EXISTS `arena_team_member`;
CREATE TABLE IF NOT EXISTS `arena_team_member` (
  `arenaTeamId` int(10) unsigned NOT NULL DEFAULT '0',
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `weekGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `weekWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonGames` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seasonWins` smallint(5) unsigned NOT NULL DEFAULT '0',
  `personalRating` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`arenaTeamId`,`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.arena_team_member: ~0 rows (приблизительно)
DELETE FROM `arena_team_member`;
/*!40000 ALTER TABLE `arena_team_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `arena_team_member` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.auctionhouse
DROP TABLE IF EXISTS `auctionhouse`;
CREATE TABLE IF NOT EXISTS `auctionhouse` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `auctioneerguid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `itemguid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `itemowner` bigint(20) unsigned NOT NULL DEFAULT '0',
  `buyoutprice` bigint(20) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `buyguid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `lastbid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `startbid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `deposit` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_guid` (`itemguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.auctionhouse: ~0 rows (приблизительно)
DELETE FROM `auctionhouse`;
/*!40000 ALTER TABLE `auctionhouse` DISABLE KEYS */;
/*!40000 ALTER TABLE `auctionhouse` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.blackmarket_auctions
DROP TABLE IF EXISTS `blackmarket_auctions`;
CREATE TABLE IF NOT EXISTS `blackmarket_auctions` (
  `marketId` int(10) NOT NULL DEFAULT '0',
  `currentBid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  `numBids` int(10) NOT NULL DEFAULT '0',
  `bidder` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`marketId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.blackmarket_auctions: ~12 rows (приблизительно)
DELETE FROM `blackmarket_auctions`;
/*!40000 ALTER TABLE `blackmarket_auctions` DISABLE KEYS */;
INSERT INTO `blackmarket_auctions` (`marketId`, `currentBid`, `time`, `numBids`, `bidder`) VALUES
	(32, 0, 1559768785, 0, 0),
	(38, 0, 1559768785, 0, 0),
	(40, 0, 1559768785, 0, 0),
	(45, 0, 1559768785, 0, 0),
	(46, 0, 1559768785, 0, 0),
	(53, 0, 1559768785, 0, 0),
	(63, 0, 1559768785, 0, 0),
	(65, 0, 1559768785, 0, 0),
	(68, 0, 1559768785, 0, 0),
	(74, 0, 1559768785, 0, 0),
	(88, 0, 1559768785, 0, 0),
	(89, 0, 1559768785, 0, 0);
/*!40000 ALTER TABLE `blackmarket_auctions` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.bugreport
DROP TABLE IF EXISTS `bugreport`;
CREATE TABLE IF NOT EXISTS `bugreport` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `type` longtext NOT NULL,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Debug System';

-- Дамп данных таблицы characters_ashamane.bugreport: ~0 rows (приблизительно)
DELETE FROM `bugreport`;
/*!40000 ALTER TABLE `bugreport` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugreport` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.calendar_events
DROP TABLE IF EXISTS `calendar_events`;
CREATE TABLE IF NOT EXISTS `calendar_events` (
  `EventID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Owner` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Title` varchar(255) NOT NULL DEFAULT '',
  `Description` varchar(255) NOT NULL DEFAULT '',
  `EventType` tinyint(1) unsigned NOT NULL DEFAULT '4',
  `TextureID` int(10) NOT NULL DEFAULT '-1',
  `Date` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `LockDate` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`EventID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.calendar_events: ~0 rows (приблизительно)
DELETE FROM `calendar_events`;
/*!40000 ALTER TABLE `calendar_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendar_events` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.calendar_invites
DROP TABLE IF EXISTS `calendar_invites`;
CREATE TABLE IF NOT EXISTS `calendar_invites` (
  `InviteID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `EventID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Invitee` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Sender` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ResponseTime` int(10) unsigned NOT NULL DEFAULT '0',
  `ModerationRank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`InviteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.calendar_invites: ~0 rows (приблизительно)
DELETE FROM `calendar_invites`;
/*!40000 ALTER TABLE `calendar_invites` DISABLE KEYS */;
/*!40000 ALTER TABLE `calendar_invites` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.channels
DROP TABLE IF EXISTS `channels`;
CREATE TABLE IF NOT EXISTS `channels` (
  `name` varchar(128) NOT NULL,
  `team` int(10) unsigned NOT NULL,
  `announce` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ownership` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `password` varchar(32) DEFAULT NULL,
  `bannedList` text,
  `lastUsed` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`,`team`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Channel System';

-- Дамп данных таблицы characters_ashamane.channels: ~0 rows (приблизительно)
DELETE FROM `channels`;
/*!40000 ALTER TABLE `channels` DISABLE KEYS */;
/*!40000 ALTER TABLE `channels` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.characters
DROP TABLE IF EXISTS `characters`;
CREATE TABLE IF NOT EXISTS `characters` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `account` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Account Identifier',
  `name` varchar(12) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `race` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gender` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `xp` int(10) unsigned NOT NULL DEFAULT '0',
  `money` bigint(20) unsigned NOT NULL DEFAULT '0',
  `skin` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `face` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hairStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hairColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `facialStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `customDisplay1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `customDisplay2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `customDisplay3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `inventorySlots` tinyint(3) unsigned NOT NULL DEFAULT '16',
  `bankSlots` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `restState` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `playerFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `playerFlagsEx` int(10) unsigned NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `instance_id` int(10) unsigned NOT NULL DEFAULT '0',
  `dungeonDifficulty` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `raidDifficulty` tinyint(3) unsigned NOT NULL DEFAULT '14',
  `legacyRaidDifficulty` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `orientation` float NOT NULL DEFAULT '0',
  `taximask` text NOT NULL,
  `online` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cinematic` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `totaltime` int(10) unsigned NOT NULL DEFAULT '0',
  `leveltime` int(10) unsigned NOT NULL DEFAULT '0',
  `logout_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_logout_resting` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rest_bonus` float NOT NULL DEFAULT '0',
  `resettalents_cost` int(10) unsigned NOT NULL DEFAULT '0',
  `resettalents_time` int(10) unsigned NOT NULL DEFAULT '0',
  `primarySpecialization` int(10) unsigned NOT NULL DEFAULT '0',
  `trans_x` float NOT NULL DEFAULT '0',
  `trans_y` float NOT NULL DEFAULT '0',
  `trans_z` float NOT NULL DEFAULT '0',
  `trans_o` float NOT NULL DEFAULT '0',
  `transguid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `extra_flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  `stable_slots` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `at_login` smallint(5) unsigned NOT NULL DEFAULT '0',
  `zone` smallint(5) unsigned NOT NULL DEFAULT '0',
  `death_expire_time` int(10) unsigned NOT NULL DEFAULT '0',
  `taxi_path` text,
  `totalKills` int(10) unsigned NOT NULL DEFAULT '0',
  `todayKills` smallint(5) unsigned NOT NULL DEFAULT '0',
  `yesterdayKills` smallint(5) unsigned NOT NULL DEFAULT '0',
  `chosenTitle` int(10) unsigned NOT NULL DEFAULT '0',
  `watchedFaction` int(10) unsigned NOT NULL DEFAULT '0',
  `drunk` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `health` int(10) unsigned NOT NULL DEFAULT '0',
  `power1` int(10) unsigned NOT NULL DEFAULT '0',
  `power2` int(10) unsigned NOT NULL DEFAULT '0',
  `power3` int(10) unsigned NOT NULL DEFAULT '0',
  `power4` int(10) unsigned NOT NULL DEFAULT '0',
  `power5` int(10) unsigned NOT NULL DEFAULT '0',
  `power6` int(10) unsigned NOT NULL DEFAULT '0',
  `latency` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `activeTalentGroup` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lootSpecId` int(10) unsigned NOT NULL DEFAULT '0',
  `exploredZones` longtext,
  `equipmentCache` longtext,
  `knownTitles` longtext,
  `actionBars` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `grantableLevels` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `xpRate` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `deleteInfos_Account` int(10) unsigned DEFAULT NULL,
  `deleteInfos_Name` varchar(12) DEFAULT NULL,
  `deleteDate` int(10) unsigned DEFAULT NULL,
  `honor` int(10) unsigned NOT NULL DEFAULT '0',
  `honorLevel` int(10) unsigned NOT NULL DEFAULT '1',
  `honorRestState` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `honorRestBonus` float NOT NULL DEFAULT '0',
  `lastLoginBuild` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`),
  KEY `idx_account` (`account`),
  KEY `idx_online` (`online`),
  KEY `idx_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Дамп данных таблицы characters_ashamane.characters: ~0 rows (приблизительно)
DELETE FROM `characters`;
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
INSERT INTO `characters` (`guid`, `account`, `name`, `slot`, `race`, `class`, `gender`, `level`, `xp`, `money`, `skin`, `face`, `hairStyle`, `hairColor`, `facialStyle`, `customDisplay1`, `customDisplay2`, `customDisplay3`, `inventorySlots`, `bankSlots`, `restState`, `playerFlags`, `playerFlagsEx`, `position_x`, `position_y`, `position_z`, `map`, `instance_id`, `dungeonDifficulty`, `raidDifficulty`, `legacyRaidDifficulty`, `orientation`, `taximask`, `online`, `cinematic`, `totaltime`, `leveltime`, `logout_time`, `is_logout_resting`, `rest_bonus`, `resettalents_cost`, `resettalents_time`, `primarySpecialization`, `trans_x`, `trans_y`, `trans_z`, `trans_o`, `transguid`, `extra_flags`, `stable_slots`, `at_login`, `zone`, `death_expire_time`, `taxi_path`, `totalKills`, `todayKills`, `yesterdayKills`, `chosenTitle`, `watchedFaction`, `drunk`, `health`, `power1`, `power2`, `power3`, `power4`, `power5`, `power6`, `latency`, `activeTalentGroup`, `lootSpecId`, `exploredZones`, `equipmentCache`, `knownTitles`, `actionBars`, `grantableLevels`, `xpRate`, `deleteInfos_Account`, `deleteInfos_Name`, `deleteDate`, `honor`, `honorLevel`, `honorRestState`, `honorRestBonus`, `lastLoginBuild`) VALUES
	(1, 1, 'Zgntest', 0, 1, 10, 0, 1, 0, 0, 9, 8, 7, 1, 1, 0, 0, 0, 16, 0, 2, 0, 0, -8914.57, -133.909, 80.5378, 0, 0, 1, 14, 3, 5.13806, '34 0 0 6 0 0 1 0 0 0 0 32 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 128 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 32 16 0 0 0 140 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 1, 1, 40, 40, 1559683064, 0, 0.0316889, 0, 0, 269, 0, 0, 0, 0, 0, 4, 0, 0, 6170, 0, '', 0, 0, 0, 0, 4294967295, 0, 48, 145, 100, 0, 0, 0, 0, 8, 2, 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0 0 0 0 0 0 0 0 0 0 0 0 5 105341 0 6 105152 0 7 105342 0 0 0 0 9 105153 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 13 110785 0 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', '0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 1, NULL, NULL, NULL, 0, 0, 1, 2.8026e-45, 28153);
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_account_data
DROP TABLE IF EXISTS `character_account_data`;
CREATE TABLE IF NOT EXISTS `character_account_data` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`guid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.character_account_data: ~2 rows (приблизительно)
DELETE FROM `character_account_data`;
/*!40000 ALTER TABLE `character_account_data` DISABLE KEYS */;
INSERT INTO `character_account_data` (`guid`, `type`, `time`, `data`) VALUES
	(1, 1, 1559682930, _binary 0x534554206175746F5175657374506F7055707320227601220D0A53455420747261636B656451756573747320227601265A70220D0A5345542068617264547261636B656451756573747320227601220D0A53455420747261636B6564576F726C6451756573747320227601220D0A5345542068617264547261636B6564576F726C6451756573747320227601220D0A53455420747261636B6564416368696576656D656E747320227601220D0A5345542063616D657261536176656444697374616E63652022352E353530303030220D0A5345542063616D65726153617665645069746368202231342E303530303034220D0A5345542063757272656E637943617465676F72696573436F6C6C617073656420227601220D0A534554206D696E696D617053686170657368696674547261636B696E6720227601220D0A5345542072657075746174696F6E73436F6C6C617073656420227601232324220D0A5345542061637469766543554650726F66696C652022D09ED181D0BDD0BED0B2D0BDD0BED0B9220D0A53455420454A4C6F6F74436C61737320223130220D0A),
	(1, 7, 1559682930, _binary 0x56455253494F4E20360A0A414444454456455253494F4E2032310A0A4348414E4E454C530AD09ED0B1D189D0B8D0B92030203120300AD0A2D0BED180D0B3D0BED0B2D0BBD18F2030203220300AD09ED0B1D0BED180D0BED0BDD0B0D09BD0BED0BAD0B0D0BBD18CD0BDD18BD0B92030203320300A454E440A0A5A4F4E454348414E4E454C5320300A0A434F4C4F52530A0A53595354454D20323535203235352030204E0A534159203235352032353520323535204E0A5041525459203137302031373020323535204E0A5241494420323535203132372030204E0A4755494C4420363420323535203634204E0A4F46464943455220363420313932203634204E0A59454C4C20323535203634203634204E0A57484953504552203235352031323820323535204E0A574849535045525F464F524549474E203235352031323820323535204E0A574849535045525F494E464F524D203235352031323820323535204E0A454D4F54452032353520313238203634204E0A544558545F454D4F54452032353520313238203634204E0A4D4F4E535445525F534159203235352032353520313539204E0A4D4F4E535445525F5041525459203137302031373020323535204E0A4D4F4E535445525F59454C4C20323535203634203634204E0A4D4F4E535445525F57484953504552203235352031383120323335204E0A4D4F4E535445525F454D4F54452032353520313238203634204E0A4348414E4E454C203235352031393220313932204E0A4348414E4E454C5F4A4F494E203139322031323820313238204E0A4348414E4E454C5F4C45415645203139322031323820313238204E0A4348414E4E454C5F4C495354203139322031323820313238204E0A4348414E4E454C5F4E4F54494345203139322031393220313932204E0A4348414E4E454C5F4E4F544943455F55534552203139322031393220313932204E0A41464B203235352031323820323535204E0A444E44203235352031323820323535204E0A49474E4F5245442032353520302030204E0A534B494C4C20383520383520323535204E0A4C4F4F542030203137302030204E0A4D4F4E455920323535203235352030204E0A4F50454E494E47203132382031323820323535204E0A5452414445534B494C4C53203235352032353520323535204E0A5045545F494E464F203132382031323820323535204E0A434F4D4241545F4D4953435F494E464F203132382031323820323535204E0A434F4D4241545F58505F4741494E203131312031313120323535204E0A434F4D4241545F484F4E4F525F4741494E2032323420323032203130204E0A434F4D4241545F46414354494F4E5F4348414E4745203132382031323820323535204E0A42475F53595354454D5F4E45555452414C2032353520313230203130204E0A42475F53595354454D5F414C4C49414E434520302031373420323339204E0A42475F53595354454D5F484F5244452032353520302030204E0A524149445F4C4541444552203235352037322039204E0A524149445F5741524E494E47203235352037322030204E0A524149445F424F53535F454D4F544520323535203232312030204E0A524149445F424F53535F5748495350455220323535203232312030204E0A46494C54455245442032353520302030204E0A524553545249435445442032353520302030204E0A424154544C454E4554203235352032353520323535204E0A414348494556454D454E5420323535203235352030204E0A4755494C445F414348494556454D454E5420363420323535203634204E0A4152454E415F504F494E5453203235352032353520323535204E0A50415254595F4C4541444552203131382032303020323535204E0A54415247455449434F4E5320323535203235352030204E0A424E5F5748495350455220302032353520323436204E0A424E5F574849535045525F494E464F524D20302032353520323436204E0A424E5F494E4C494E455F544F4153545F414C455254203133302031393720323535204E0A424E5F494E4C494E455F544F4153545F42524F414443415354203133302031393720323535204E0A424E5F494E4C494E455F544F4153545F42524F4144434153545F494E464F524D203133302031393720323535204E0A424E5F494E4C494E455F544F4153545F434F4E564552534154494F4E203133302031393720323535204E0A424E5F574849535045525F504C415945525F4F46464C494E4520323535203235352030204E0A43555252454E43592030203137302030204E0A51554553545F424F53535F454D4F54452032353520313238203634204E0A5045545F424154544C455F434F4D4241545F4C4F47203233312032323220313731204E0A5045545F424154544C455F494E464F2032323520323232203933204E0A494E5354414E43455F4348415420323535203132372030204E0A494E5354414E43455F434841545F4C4541444552203235352037322039204E0A4755494C445F4954454D5F4C4F4F54454420363420323535203634204E0A434F4D4D554E49544945535F4348414E4E454C203235352031393220313932204E0A4348414E4E454C31203235352031393220313932204E0A4348414E4E454C32203235352031393220313932204E0A4348414E4E454C33203235352031393220313932204E0A4348414E4E454C34203235352031393220313932204E0A4348414E4E454C35203235352031393220313932204E0A4348414E4E454C36203235352031393220313932204E0A4348414E4E454C37203235352031393220313932204E0A4348414E4E454C38203235352031393220313932204E0A4348414E4E454C39203235352031393220313932204E0A4348414E4E454C3130203235352031393220313932204E0A4348414E4E454C3131203235352031393220313932204E0A4348414E4E454C3132203235352031393220313932204E0A4348414E4E454C3133203235352031393220313932204E0A4348414E4E454C3134203235352031393220313932204E0A4348414E4E454C3135203235352031393220313932204E0A4348414E4E454C3136203235352031393220313932204E0A4348414E4E454C3137203235352031393220313932204E0A4348414E4E454C3138203235352031393220313932204E0A4348414E4E454C3139203235352031393220313932204E0A4348414E4E454C3230203235352031393220313932204E0A454E440A0A57494E444F5720310A4E414D4520D09ED0B1D189D0B8D0B90A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420310A53484F574E20310A4D455353414745530A53595354454D0A53595354454D5F4E4F4D454E550A5341590A454D4F54450A59454C4C0A574849535045520A50415254590A50415254595F4C45414445520A524149440A524149445F4C45414445520A524149445F5741524E494E470A4755494C440A4F4646494345520A4D4F4E535445525F5341590A4D4F4E535445525F59454C4C0A4D4F4E535445525F454D4F54450A4D4F4E535445525F574849535045520A4D4F4E535445525F424F53535F454D4F54450A4D4F4E535445525F424F53535F574849535045520A4552524F52530A41464B0A444E440A49474E4F5245440A42475F484F5244450A42475F414C4C49414E43450A42475F4E45555452414C0A434F4D4241545F46414354494F4E5F4348414E47450A534B494C4C0A4C4F4F540A4D4F4E45590A4348414E4E454C0A414348494556454D454E540A4755494C445F414348494556454D454E540A424E5F574849535045520A424E5F574849535045525F494E464F524D0A424E5F434F4E564552534154494F4E0A424E5F494E4C494E455F544F4153545F414C4552540A43555252454E43590A424E5F574849535045525F504C415945525F4F46464C494E450A5045545F424154544C455F494E464F0A494E5354414E43455F434841540A494E5354414E43455F434841545F4C45414445520A4755494C445F4954454D5F4C4F4F5445440A434F4D4241545F484F4E4F525F4741494E0A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320323039373135350A0A454E440A0A57494E444F5720320A4E414D4520D096D183D180D0BDD0B0D0BB20D0B1D0BED18F0A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420320A53484F574E20300A4D455353414745530A4F50454E494E470A5452414445534B494C4C530A5045545F494E464F0A434F4D4241545F58505F4741494E0A434F4D4241545F484F4E4F525F4741494E0A434F4D4241545F4D4953435F494E464F0A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720330A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720340A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720350A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720360A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720370A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720380A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F5720390A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A57494E444F572031300A53495A4520300A434F4C4F522030203020302034300A4C4F434B454420310A554E494E54455241435441424C4520300A444F434B454420300A53484F574E20300A4D455353414745530A454E440A0A4348414E4E454C530A454E440A0A5A4F4E454348414E4E454C5320300A0A454E440A0A);
/*!40000 ALTER TABLE `character_account_data` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_achievement
DROP TABLE IF EXISTS `character_achievement`;
CREATE TABLE IF NOT EXISTS `character_achievement` (
  `guid` bigint(20) unsigned NOT NULL,
  `achievement` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`achievement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.character_achievement: ~28 rows (приблизительно)
DELETE FROM `character_achievement`;
/*!40000 ALTER TABLE `character_achievement` DISABLE KEYS */;
INSERT INTO `character_achievement` (`guid`, `achievement`, `date`) VALUES
	(1, 429, 1559682939),
	(1, 522, 1559682937),
	(1, 1017, 1559682939),
	(1, 2398, 1559682937),
	(1, 3636, 1559682937),
	(1, 4400, 1559682938),
	(1, 5512, 1559682938),
	(1, 5863, 1559682938),
	(1, 6131, 1559682938),
	(1, 7853, 1559682938),
	(1, 8820, 1559682938),
	(1, 9496, 1559682938),
	(1, 10056, 1559682939),
	(1, 10058, 1559682938),
	(1, 10741, 1559682939),
	(1, 11210, 1559682939),
	(1, 11211, 1559682939),
	(1, 11606, 1559682939),
	(1, 11632, 1559682939),
	(1, 11633, 1559682939),
	(1, 11847, 1559682939),
	(1, 11848, 1559682939),
	(1, 12827, 1559682939),
	(1, 13149, 1559682939),
	(1, 13152, 1559682939),
	(1, 13153, 1559682939),
	(1, 13155, 1559682939),
	(1, 13170, 1559682939);
/*!40000 ALTER TABLE `character_achievement` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_achievement_count
DROP TABLE IF EXISTS `character_achievement_count`;
CREATE TABLE IF NOT EXISTS `character_achievement_count` (
  `guid` bigint(11) NOT NULL DEFAULT '0',
  `count` int(11) DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Дамп данных таблицы characters_ashamane.character_achievement_count: 0 rows
DELETE FROM `character_achievement_count`;
/*!40000 ALTER TABLE `character_achievement_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_achievement_count` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_achievement_progress
DROP TABLE IF EXISTS `character_achievement_progress`;
CREATE TABLE IF NOT EXISTS `character_achievement_progress` (
  `guid` bigint(20) unsigned NOT NULL,
  `criteria` int(10) unsigned NOT NULL,
  `counter` bigint(20) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.character_achievement_progress: ~69 rows (приблизительно)
DELETE FROM `character_achievement_progress`;
/*!40000 ALTER TABLE `character_achievement_progress` DISABLE KEYS */;
INSERT INTO `character_achievement_progress` (`guid`, `criteria`, `counter`, `date`) VALUES
	(1, 167, 1, 1559682932),
	(1, 641, 1, 1559682932),
	(1, 655, 1, 1559682932),
	(1, 656, 1, 1559682932),
	(1, 657, 1, 1559682932),
	(1, 753, 1, 1559682932),
	(1, 982, 1, 1559682937),
	(1, 2020, 200, 1559682937),
	(1, 5212, 1, 1559682932),
	(1, 5233, 1, 1559682932),
	(1, 5299, 1, 1559682939),
	(1, 5300, 1, 1559682939),
	(1, 5301, 8, 1559682939),
	(1, 5328, 3100, 1559682937),
	(1, 5329, 3100, 1559682937),
	(1, 5330, 3100, 1559682937),
	(1, 5331, 4000, 1559682937),
	(1, 5332, 3000, 1559682937),
	(1, 6789, 2, 1559682966),
	(1, 9058, 1, 1559682937),
	(1, 11238, 1, 1559682937),
	(1, 12562, 1, 1559682938),
	(1, 12698, 20, 1559682939),
	(1, 16082, 1, 1559682938),
	(1, 17804, 1, 1559682938),
	(1, 18500, 1, 1559682938),
	(1, 19395, 3000, 1559682937),
	(1, 19481, 3100, 1559682937),
	(1, 19598, 1, 1559682939),
	(1, 19661, 1, 1559682932),
	(1, 20677, 1, 1559682932),
	(1, 20678, 1, 1559682932),
	(1, 22242, 1, 1559682938),
	(1, 22926, 3000, 1559682937),
	(1, 23250, 2, 1559682966),
	(1, 24192, 1, 1559682938),
	(1, 25828, 3000, 1559682937),
	(1, 25887, 1, 1559682938),
	(1, 28201, 1, 1559682938),
	(1, 28720, 1, 1559682939),
	(1, 28981, 3000, 1559682937),
	(1, 30478, 2, 1559682966),
	(1, 30977, 1, 1559682939),
	(1, 32886, 1, 1559682939),
	(1, 32887, 1, 1559682939),
	(1, 35786, 1, 1559682939),
	(1, 35787, 1, 1559682939),
	(1, 35889, 1, 1559682939),
	(1, 35977, 3000, 1559682937),
	(1, 36132, 1, 1559682939),
	(1, 36696, 1, 1559682939),
	(1, 36699, 1, 1559682939),
	(1, 37604, 3000, 1559682937),
	(1, 40478, 1, 1559682939),
	(1, 40921, 1, 1559682939),
	(1, 41480, 1, 1559682932),
	(1, 41481, 1, 1559682932),
	(1, 41482, 1, 1559682932),
	(1, 41483, 1, 1559682932),
	(1, 41484, 3000, 1559682937),
	(1, 41486, 3000, 1559682937),
	(1, 41488, 3000, 1559682937),
	(1, 41490, 3000, 1559682937),
	(1, 41494, 1, 1559682932),
	(1, 41654, 3000, 1559682937),
	(1, 43143, 1, 1559682939),
	(1, 43157, 1, 1559682939),
	(1, 43160, 1, 1559682939),
	(1, 43215, 1, 1559682939);
/*!40000 ALTER TABLE `character_achievement_progress` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_action
DROP TABLE IF EXISTS `character_action`;
CREATE TABLE IF NOT EXISTS `character_action` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `spec` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `button` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spec`,`button`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.character_action: ~3 rows (приблизительно)
DELETE FROM `character_action`;
/*!40000 ALTER TABLE `character_action` DISABLE KEYS */;
INSERT INTO `character_action` (`guid`, `spec`, `button`, `action`, `type`) VALUES
	(1, 2, 0, 100780, 0),
	(1, 2, 72, 100780, 0),
	(1, 2, 81, 59752, 0);
/*!40000 ALTER TABLE `character_action` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_archaeology_branchs
DROP TABLE IF EXISTS `character_archaeology_branchs`;
CREATE TABLE IF NOT EXISTS `character_archaeology_branchs` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `projectId` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`projectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы characters_ashamane.character_archaeology_branchs: ~0 rows (приблизительно)
DELETE FROM `character_archaeology_branchs`;
/*!40000 ALTER TABLE `character_archaeology_branchs` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_archaeology_branchs` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_archaeology_digsites
DROP TABLE IF EXISTS `character_archaeology_digsites`;
CREATE TABLE IF NOT EXISTS `character_archaeology_digsites` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `digsiteId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `point_x` float DEFAULT '0',
  `point_y` float DEFAULT '0',
  `count` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`digsiteId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы characters_ashamane.character_archaeology_digsites: ~0 rows (приблизительно)
DELETE FROM `character_archaeology_digsites`;
/*!40000 ALTER TABLE `character_archaeology_digsites` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_archaeology_digsites` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_archaeology_history
DROP TABLE IF EXISTS `character_archaeology_history`;
CREATE TABLE IF NOT EXISTS `character_archaeology_history` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `projectId` int(10) unsigned NOT NULL DEFAULT '0',
  `count` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`projectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы characters_ashamane.character_archaeology_history: ~0 rows (приблизительно)
DELETE FROM `character_archaeology_history`;
/*!40000 ALTER TABLE `character_archaeology_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_archaeology_history` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_arena_data
DROP TABLE IF EXISTS `character_arena_data`;
CREATE TABLE IF NOT EXISTS `character_arena_data` (
  `guid` bigint(20) unsigned NOT NULL,
  `slot` tinyint(3) unsigned NOT NULL,
  `rating` int(10) unsigned NOT NULL DEFAULT '0',
  `bestRatingOfWeek` int(10) unsigned NOT NULL DEFAULT '0',
  `bestRatingOfSeason` int(10) unsigned NOT NULL DEFAULT '0',
  `matchMakerRating` int(10) unsigned NOT NULL DEFAULT '0',
  `weekGames` int(10) unsigned NOT NULL DEFAULT '0',
  `weekWins` int(10) unsigned NOT NULL DEFAULT '0',
  `prevWeekGames` int(10) unsigned NOT NULL DEFAULT '0',
  `prevWeekWins` int(10) unsigned NOT NULL DEFAULT '0',
  `seasonGames` int(10) unsigned NOT NULL DEFAULT '0',
  `seasonWins` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы characters_ashamane.character_arena_data: ~6 rows (приблизительно)
DELETE FROM `character_arena_data`;
/*!40000 ALTER TABLE `character_arena_data` DISABLE KEYS */;
INSERT INTO `character_arena_data` (`guid`, `slot`, `rating`, `bestRatingOfWeek`, `bestRatingOfSeason`, `matchMakerRating`, `weekGames`, `weekWins`, `prevWeekGames`, `prevWeekWins`, `seasonGames`, `seasonWins`) VALUES
	(1, 0, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0),
	(1, 1, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0),
	(1, 2, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0),
	(1, 3, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0),
	(1, 4, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0),
	(1, 5, 0, 0, 0, 1500, 0, 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `character_arena_data` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_aura
DROP TABLE IF EXISTS `character_aura`;
CREATE TABLE IF NOT EXISTS `character_aura` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `casterGuid` binary(16) NOT NULL COMMENT 'Full Global Unique Identifier',
  `itemGuid` binary(16) NOT NULL,
  `spell` int(10) unsigned NOT NULL,
  `effectMask` int(10) unsigned NOT NULL,
  `recalculateMask` int(10) unsigned NOT NULL DEFAULT '0',
  `stackCount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `maxDuration` int(11) NOT NULL DEFAULT '0',
  `remainTime` int(11) NOT NULL DEFAULT '0',
  `remainCharges` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `castItemLevel` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`guid`,`casterGuid`,`itemGuid`,`spell`,`effectMask`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Дамп данных таблицы characters_ashamane.character_aura: ~0 rows (приблизительно)
DELETE FROM `character_aura`;
/*!40000 ALTER TABLE `character_aura` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_aura` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_aura_effect
DROP TABLE IF EXISTS `character_aura_effect`;
CREATE TABLE IF NOT EXISTS `character_aura_effect` (
  `guid` bigint(20) unsigned NOT NULL,
  `casterGuid` binary(16) NOT NULL COMMENT 'Full Global Unique Identifier',
  `itemGuid` binary(16) NOT NULL,
  `spell` int(10) unsigned NOT NULL,
  `effectMask` int(10) unsigned NOT NULL,
  `effectIndex` tinyint(3) unsigned NOT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `baseAmount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`casterGuid`,`itemGuid`,`spell`,`effectMask`,`effectIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Дамп данных таблицы characters_ashamane.character_aura_effect: ~0 rows (приблизительно)
DELETE FROM `character_aura_effect`;
/*!40000 ALTER TABLE `character_aura_effect` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_aura_effect` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_banned
DROP TABLE IF EXISTS `character_banned`;
CREATE TABLE IF NOT EXISTS `character_banned` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `bandate` int(10) unsigned NOT NULL DEFAULT '0',
  `unbandate` int(10) unsigned NOT NULL DEFAULT '0',
  `bannedby` varchar(50) NOT NULL,
  `banreason` varchar(255) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`guid`,`bandate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Ban List';

-- Дамп данных таблицы characters_ashamane.character_banned: ~0 rows (приблизительно)
DELETE FROM `character_banned`;
/*!40000 ALTER TABLE `character_banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_banned` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_battleground_data
DROP TABLE IF EXISTS `character_battleground_data`;
CREATE TABLE IF NOT EXISTS `character_battleground_data` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `instanceId` int(10) unsigned NOT NULL COMMENT 'Instance Identifier',
  `team` smallint(5) unsigned NOT NULL,
  `joinX` float NOT NULL DEFAULT '0',
  `joinY` float NOT NULL DEFAULT '0',
  `joinZ` float NOT NULL DEFAULT '0',
  `joinO` float NOT NULL DEFAULT '0',
  `joinMapId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `taxiStart` int(10) unsigned NOT NULL DEFAULT '0',
  `taxiEnd` int(10) unsigned NOT NULL DEFAULT '0',
  `mountSpell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Дамп данных таблицы characters_ashamane.character_battleground_data: ~1 rows (приблизительно)
DELETE FROM `character_battleground_data`;
/*!40000 ALTER TABLE `character_battleground_data` DISABLE KEYS */;
INSERT INTO `character_battleground_data` (`guid`, `instanceId`, `team`, `joinX`, `joinY`, `joinZ`, `joinO`, `joinMapId`, `taxiStart`, `taxiEnd`, `mountSpell`) VALUES
	(1, 0, 0, 0, 0, 0, 0, 65535, 0, 0, 0);
/*!40000 ALTER TABLE `character_battleground_data` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_battleground_random
DROP TABLE IF EXISTS `character_battleground_random`;
CREATE TABLE IF NOT EXISTS `character_battleground_random` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.character_battleground_random: ~0 rows (приблизительно)
DELETE FROM `character_battleground_random`;
/*!40000 ALTER TABLE `character_battleground_random` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_battleground_random` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_cuf_profiles
DROP TABLE IF EXISTS `character_cuf_profiles`;
CREATE TABLE IF NOT EXISTS `character_cuf_profiles` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Guid',
  `id` tinyint(3) unsigned NOT NULL COMMENT 'Profile Id (0-4)',
  `name` varchar(12) NOT NULL COMMENT 'Profile Name',
  `frameHeight` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Frame Height',
  `frameWidth` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Frame Width',
  `sortBy` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Frame Sort By',
  `healthText` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Frame Health Text',
  `boolOptions` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Many Configurable Bool Options',
  `topPoint` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Frame top alignment',
  `bottomPoint` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Frame bottom alignment',
  `leftPoint` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Frame left alignment',
  `topOffset` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Frame position offset from top',
  `bottomOffset` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Frame position offset from bottom',
  `leftOffset` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Frame position offset from left',
  PRIMARY KEY (`guid`,`id`),
  KEY `index` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.character_cuf_profiles: ~0 rows (приблизительно)
DELETE FROM `character_cuf_profiles`;
/*!40000 ALTER TABLE `character_cuf_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_cuf_profiles` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_currency
DROP TABLE IF EXISTS `character_currency`;
CREATE TABLE IF NOT EXISTS `character_currency` (
  `CharacterGuid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Currency` smallint(5) unsigned NOT NULL,
  `Quantity` int(10) unsigned NOT NULL,
  `WeeklyQuantity` int(10) unsigned NOT NULL,
  `TrackedQuantity` int(10) unsigned NOT NULL,
  `Flags` tinyint(3) unsigned NOT NULL,
  `WeekCap` int(10) unsigned NOT NULL,
  PRIMARY KEY (`CharacterGuid`,`Currency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.character_currency: ~2 rows (приблизительно)
DELETE FROM `character_currency`;
/*!40000 ALTER TABLE `character_currency` DISABLE KEYS */;
INSERT INTO `character_currency` (`CharacterGuid`, `Currency`, `Quantity`, `WeeklyQuantity`, `TrackedQuantity`, `Flags`, `WeekCap`) VALUES
	(1, 395, 0, 0, 0, 0, 4294967294),
	(1, 823, 0, 0, 0, 0, 4294967294);
/*!40000 ALTER TABLE `character_currency` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_declinedname
DROP TABLE IF EXISTS `character_declinedname`;
CREATE TABLE IF NOT EXISTS `character_declinedname` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `genitive` varchar(15) NOT NULL DEFAULT '',
  `dative` varchar(15) NOT NULL DEFAULT '',
  `accusative` varchar(15) NOT NULL DEFAULT '',
  `instrumental` varchar(15) NOT NULL DEFAULT '',
  `prepositional` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.character_declinedname: ~0 rows (приблизительно)
DELETE FROM `character_declinedname`;
/*!40000 ALTER TABLE `character_declinedname` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_declinedname` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_equipmentsets
DROP TABLE IF EXISTS `character_equipmentsets`;
CREATE TABLE IF NOT EXISTS `character_equipmentsets` (
  `guid` bigint(20) NOT NULL DEFAULT '0',
  `setguid` bigint(20) NOT NULL AUTO_INCREMENT,
  `setindex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(31) NOT NULL,
  `iconname` varchar(100) NOT NULL,
  `ignore_mask` int(11) unsigned NOT NULL DEFAULT '0',
  `AssignedSpecIndex` int(11) NOT NULL DEFAULT '-1',
  `item0` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item1` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item2` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item3` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item4` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item5` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item6` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item7` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item8` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item9` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item10` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item11` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item12` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item13` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item14` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item15` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item16` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item17` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item18` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`setguid`),
  UNIQUE KEY `idx_set` (`guid`,`setguid`,`setindex`),
  KEY `Idx_setindex` (`setindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.character_equipmentsets: ~0 rows (приблизительно)
DELETE FROM `character_equipmentsets`;
/*!40000 ALTER TABLE `character_equipmentsets` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_equipmentsets` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_fishingsteps
DROP TABLE IF EXISTS `character_fishingsteps`;
CREATE TABLE IF NOT EXISTS `character_fishingsteps` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `fishingSteps` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.character_fishingsteps: ~0 rows (приблизительно)
DELETE FROM `character_fishingsteps`;
/*!40000 ALTER TABLE `character_fishingsteps` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_fishingsteps` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_garrison
DROP TABLE IF EXISTS `character_garrison`;
CREATE TABLE IF NOT EXISTS `character_garrison` (
  `guid` bigint(20) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `siteLevelId` int(10) unsigned NOT NULL DEFAULT '0',
  `followerActivationsRemainingToday` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.character_garrison: ~0 rows (приблизительно)
DELETE FROM `character_garrison`;
/*!40000 ALTER TABLE `character_garrison` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_garrison` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_garrison_blueprints
DROP TABLE IF EXISTS `character_garrison_blueprints`;
CREATE TABLE IF NOT EXISTS `character_garrison_blueprints` (
  `guid` bigint(20) unsigned NOT NULL,
  `garrison_type` tinyint(3) unsigned NOT NULL,
  `buildingId` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`garrison_type`,`buildingId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.character_garrison_blueprints: ~0 rows (приблизительно)
DELETE FROM `character_garrison_blueprints`;
/*!40000 ALTER TABLE `character_garrison_blueprints` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_garrison_blueprints` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_garrison_buildings
DROP TABLE IF EXISTS `character_garrison_buildings`;
CREATE TABLE IF NOT EXISTS `character_garrison_buildings` (
  `guid` bigint(20) unsigned NOT NULL,
  `garrison_type` tinyint(3) unsigned NOT NULL,
  `plotInstanceId` int(10) unsigned NOT NULL DEFAULT '0',
  `buildingId` int(10) unsigned NOT NULL DEFAULT '0',
  `timeBuilt` bigint(20) unsigned NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`garrison_type`,`plotInstanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.character_garrison_buildings: ~0 rows (приблизительно)
DELETE FROM `character_garrison_buildings`;
/*!40000 ALTER TABLE `character_garrison_buildings` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_garrison_buildings` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_garrison_followers
DROP TABLE IF EXISTS `character_garrison_followers`;
CREATE TABLE IF NOT EXISTS `character_garrison_followers` (
  `dbId` bigint(20) unsigned NOT NULL,
  `guid` bigint(20) unsigned NOT NULL,
  `garrison_type` tinyint(3) unsigned NOT NULL,
  `followerId` int(10) unsigned NOT NULL,
  `quality` int(10) unsigned NOT NULL DEFAULT '2',
  `level` int(10) unsigned NOT NULL DEFAULT '90',
  `itemLevelWeapon` int(10) unsigned NOT NULL DEFAULT '600',
  `itemLevelArmor` int(10) unsigned NOT NULL DEFAULT '600',
  `xp` int(10) unsigned NOT NULL DEFAULT '0',
  `currentBuilding` int(10) unsigned NOT NULL DEFAULT '0',
  `currentMission` int(10) unsigned NOT NULL DEFAULT '0',
  `status` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`dbId`),
  UNIQUE KEY `idx_guid_id` (`guid`,`followerId`),
  CONSTRAINT `character_garrison_followers_ibfk_1` FOREIGN KEY (`guid`) REFERENCES `characters` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.character_garrison_followers: ~0 rows (приблизительно)
DELETE FROM `character_garrison_followers`;
/*!40000 ALTER TABLE `character_garrison_followers` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_garrison_followers` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_garrison_follower_abilities
DROP TABLE IF EXISTS `character_garrison_follower_abilities`;
CREATE TABLE IF NOT EXISTS `character_garrison_follower_abilities` (
  `dbId` bigint(20) unsigned NOT NULL,
  `abilityId` int(10) unsigned NOT NULL,
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`dbId`,`abilityId`,`slot`),
  CONSTRAINT `character_garrison_follower_abilities_ibfk_1` FOREIGN KEY (`dbId`) REFERENCES `character_garrison_followers` (`dbId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.character_garrison_follower_abilities: ~0 rows (приблизительно)
DELETE FROM `character_garrison_follower_abilities`;
/*!40000 ALTER TABLE `character_garrison_follower_abilities` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_garrison_follower_abilities` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_garrison_missions
DROP TABLE IF EXISTS `character_garrison_missions`;
CREATE TABLE IF NOT EXISTS `character_garrison_missions` (
  `dbId` bigint(20) unsigned NOT NULL,
  `guid` bigint(20) unsigned NOT NULL,
  `garrison_type` tinyint(3) unsigned NOT NULL,
  `missionId` int(10) unsigned NOT NULL,
  `offerTime` int(10) NOT NULL,
  `startTime` int(10) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`dbId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Дамп данных таблицы characters_ashamane.character_garrison_missions: ~0 rows (приблизительно)
DELETE FROM `character_garrison_missions`;
/*!40000 ALTER TABLE `character_garrison_missions` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_garrison_missions` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_garrison_mission_rewards
DROP TABLE IF EXISTS `character_garrison_mission_rewards`;
CREATE TABLE IF NOT EXISTS `character_garrison_mission_rewards` (
  `dbId` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `itemId` int(10) NOT NULL DEFAULT '0',
  `itemQuantity` int(10) unsigned NOT NULL DEFAULT '0',
  `currencyId` int(10) NOT NULL DEFAULT '0',
  `currencyQuantity` int(10) unsigned NOT NULL DEFAULT '0',
  `FollowerXP` int(10) unsigned NOT NULL DEFAULT '0',
  `BonusAbilityId` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы characters_ashamane.character_garrison_mission_rewards: ~0 rows (приблизительно)
DELETE FROM `character_garrison_mission_rewards`;
/*!40000 ALTER TABLE `character_garrison_mission_rewards` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_garrison_mission_rewards` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_gifts
DROP TABLE IF EXISTS `character_gifts`;
CREATE TABLE IF NOT EXISTS `character_gifts` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `item_guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_guid`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.character_gifts: ~0 rows (приблизительно)
DELETE FROM `character_gifts`;
/*!40000 ALTER TABLE `character_gifts` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_gifts` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_glyphs
DROP TABLE IF EXISTS `character_glyphs`;
CREATE TABLE IF NOT EXISTS `character_glyphs` (
  `guid` bigint(20) unsigned NOT NULL,
  `talentGroup` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `glyphId` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`talentGroup`,`glyphId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.character_glyphs: ~0 rows (приблизительно)
DELETE FROM `character_glyphs`;
/*!40000 ALTER TABLE `character_glyphs` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_glyphs` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_homebind
DROP TABLE IF EXISTS `character_homebind`;
CREATE TABLE IF NOT EXISTS `character_homebind` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `zoneId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Zone Identifier',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Дамп данных таблицы characters_ashamane.character_homebind: ~0 rows (приблизительно)
DELETE FROM `character_homebind`;
/*!40000 ALTER TABLE `character_homebind` DISABLE KEYS */;
INSERT INTO `character_homebind` (`guid`, `mapId`, `zoneId`, `posX`, `posY`, `posZ`) VALUES
	(1, 0, 9, -8914.57, -133.909, 80.5378);
/*!40000 ALTER TABLE `character_homebind` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_instance
DROP TABLE IF EXISTS `character_instance`;
CREATE TABLE IF NOT EXISTS `character_instance` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `instance` int(10) unsigned NOT NULL DEFAULT '0',
  `permanent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `extendState` tinyint(2) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`guid`,`instance`),
  KEY `instance` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.character_instance: ~0 rows (приблизительно)
DELETE FROM `character_instance`;
/*!40000 ALTER TABLE `character_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_instance` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_inventory
DROP TABLE IF EXISTS `character_inventory`;
CREATE TABLE IF NOT EXISTS `character_inventory` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `bag` bigint(20) unsigned NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Global Unique Identifier',
  PRIMARY KEY (`item`),
  UNIQUE KEY `guid` (`guid`,`bag`,`slot`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Дамп данных таблицы characters_ashamane.character_inventory: ~0 rows (приблизительно)
DELETE FROM `character_inventory`;
/*!40000 ALTER TABLE `character_inventory` DISABLE KEYS */;
INSERT INTO `character_inventory` (`guid`, `bag`, `slot`, `item`) VALUES
	(1, 0, 4, 4),
	(1, 0, 5, 12),
	(1, 0, 6, 6),
	(1, 0, 8, 8),
	(1, 0, 15, 2),
	(1, 0, 16, 10),
	(1, 0, 23, 14);
/*!40000 ALTER TABLE `character_inventory` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_pet
DROP TABLE IF EXISTS `character_pet`;
CREATE TABLE IF NOT EXISTS `character_pet` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `owner` bigint(10) unsigned NOT NULL DEFAULT '0',
  `modelid` int(10) unsigned DEFAULT '0',
  `CreatedBySpell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `PetType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` smallint(5) unsigned NOT NULL DEFAULT '1',
  `exp` int(10) unsigned NOT NULL DEFAULT '0',
  `Reactstate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(21) NOT NULL DEFAULT 'Pet',
  `renamed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `curhealth` int(10) unsigned NOT NULL DEFAULT '1',
  `curmana` int(10) unsigned NOT NULL DEFAULT '0',
  `savetime` int(10) unsigned NOT NULL DEFAULT '0',
  `abdata` text,
  `specialization` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `owner` (`owner`),
  KEY `idx_slot` (`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pet System';

-- Дамп данных таблицы characters_ashamane.character_pet: ~0 rows (приблизительно)
DELETE FROM `character_pet`;
/*!40000 ALTER TABLE `character_pet` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_pet` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_pet_declinedname
DROP TABLE IF EXISTS `character_pet_declinedname`;
CREATE TABLE IF NOT EXISTS `character_pet_declinedname` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `owner` int(10) unsigned NOT NULL DEFAULT '0',
  `genitive` varchar(12) NOT NULL DEFAULT '',
  `dative` varchar(12) NOT NULL DEFAULT '',
  `accusative` varchar(12) NOT NULL DEFAULT '',
  `instrumental` varchar(12) NOT NULL DEFAULT '',
  `prepositional` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `owner_key` (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.character_pet_declinedname: ~0 rows (приблизительно)
DELETE FROM `character_pet_declinedname`;
/*!40000 ALTER TABLE `character_pet_declinedname` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_pet_declinedname` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_pvp_talent
DROP TABLE IF EXISTS `character_pvp_talent`;
CREATE TABLE IF NOT EXISTS `character_pvp_talent` (
  `Guid` bigint(20) unsigned NOT NULL,
  `talentId0` int(10) unsigned NOT NULL,
  `talentId1` int(10) unsigned NOT NULL,
  `talentId2` int(10) unsigned NOT NULL,
  `talentId3` int(10) unsigned NOT NULL,
  `TalentGroup` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Guid`,`TalentGroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.character_pvp_talent: ~4 rows (приблизительно)
DELETE FROM `character_pvp_talent`;
/*!40000 ALTER TABLE `character_pvp_talent` DISABLE KEYS */;
INSERT INTO `character_pvp_talent` (`Guid`, `talentId0`, `talentId1`, `talentId2`, `talentId3`, `TalentGroup`) VALUES
	(1, 0, 0, 0, 0, 0),
	(1, 0, 0, 0, 0, 1),
	(1, 0, 0, 0, 0, 2),
	(1, 0, 0, 80, 0, 3);
/*!40000 ALTER TABLE `character_pvp_talent` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_queststatus
DROP TABLE IF EXISTS `character_queststatus`;
CREATE TABLE IF NOT EXISTS `character_queststatus` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `quest` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `timer` int(10) unsigned NOT NULL DEFAULT '0',
  `explored` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Дамп данных таблицы characters_ashamane.character_queststatus: ~0 rows (приблизительно)
DELETE FROM `character_queststatus`;
/*!40000 ALTER TABLE `character_queststatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_queststatus_daily
DROP TABLE IF EXISTS `character_queststatus_daily`;
CREATE TABLE IF NOT EXISTS `character_queststatus_daily` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Дамп данных таблицы characters_ashamane.character_queststatus_daily: ~0 rows (приблизительно)
DELETE FROM `character_queststatus_daily`;
/*!40000 ALTER TABLE `character_queststatus_daily` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_daily` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_queststatus_monthly
DROP TABLE IF EXISTS `character_queststatus_monthly`;
CREATE TABLE IF NOT EXISTS `character_queststatus_monthly` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Дамп данных таблицы characters_ashamane.character_queststatus_monthly: ~0 rows (приблизительно)
DELETE FROM `character_queststatus_monthly`;
/*!40000 ALTER TABLE `character_queststatus_monthly` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_monthly` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_queststatus_objectives
DROP TABLE IF EXISTS `character_queststatus_objectives`;
CREATE TABLE IF NOT EXISTS `character_queststatus_objectives` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `quest` int(10) unsigned NOT NULL DEFAULT '0',
  `objective` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`quest`,`objective`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Дамп данных таблицы characters_ashamane.character_queststatus_objectives: ~0 rows (приблизительно)
DELETE FROM `character_queststatus_objectives`;
/*!40000 ALTER TABLE `character_queststatus_objectives` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_objectives` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_queststatus_objectives_criteria
DROP TABLE IF EXISTS `character_queststatus_objectives_criteria`;
CREATE TABLE IF NOT EXISTS `character_queststatus_objectives_criteria` (
  `guid` bigint(20) unsigned NOT NULL,
  `questObjectiveId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`questObjectiveId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.character_queststatus_objectives_criteria: ~35 rows (приблизительно)
DELETE FROM `character_queststatus_objectives_criteria`;
/*!40000 ALTER TABLE `character_queststatus_objectives_criteria` DISABLE KEYS */;
INSERT INTO `character_queststatus_objectives_criteria` (`guid`, `questObjectiveId`) VALUES
	(1, 278862),
	(1, 279097),
	(1, 279348),
	(1, 279352),
	(1, 283743),
	(1, 283886),
	(1, 283921),
	(1, 284137),
	(1, 284138),
	(1, 284386),
	(1, 284387),
	(1, 284425),
	(1, 284426),
	(1, 284459),
	(1, 284460),
	(1, 284462),
	(1, 284463),
	(1, 284556),
	(1, 284557),
	(1, 284559),
	(1, 284560),
	(1, 284569),
	(1, 284570),
	(1, 284582),
	(1, 284583),
	(1, 284729),
	(1, 284730),
	(1, 284847),
	(1, 285013),
	(1, 285126),
	(1, 285127),
	(1, 285140),
	(1, 285141),
	(1, 285152),
	(1, 285153);
/*!40000 ALTER TABLE `character_queststatus_objectives_criteria` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_queststatus_objectives_criteria_progress
DROP TABLE IF EXISTS `character_queststatus_objectives_criteria_progress`;
CREATE TABLE IF NOT EXISTS `character_queststatus_objectives_criteria_progress` (
  `guid` bigint(20) unsigned NOT NULL,
  `criteriaId` int(10) unsigned NOT NULL,
  `counter` bigint(20) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`criteriaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.character_queststatus_objectives_criteria_progress: ~35 rows (приблизительно)
DELETE FROM `character_queststatus_objectives_criteria_progress`;
/*!40000 ALTER TABLE `character_queststatus_objectives_criteria_progress` DISABLE KEYS */;
INSERT INTO `character_queststatus_objectives_criteria_progress` (`guid`, `criteriaId`, `counter`, `date`) VALUES
	(1, 28071, 1, 1559682940),
	(1, 28431, 1, 1559682940),
	(1, 28451, 1, 1559682940),
	(1, 28472, 1, 1559682940),
	(1, 30128, 1, 1559682940),
	(1, 30129, 1, 1559682940),
	(1, 30391, 1, 1559682940),
	(1, 30394, 1, 1559682940),
	(1, 30399, 1, 1559682940),
	(1, 30400, 1, 1559682940),
	(1, 30406, 1, 1559682940),
	(1, 30407, 1, 1559682940),
	(1, 30436, 1, 1559682940),
	(1, 30437, 1, 1559682940),
	(1, 30438, 1, 1559682940),
	(1, 30439, 1, 1559682940),
	(1, 30509, 1, 1559682940),
	(1, 30510, 1, 1559682940),
	(1, 30511, 1, 1559682940),
	(1, 30514, 1, 1559682940),
	(1, 30515, 1, 1559682940),
	(1, 30516, 1, 1559682940),
	(1, 30517, 1, 1559682940),
	(1, 30533, 1, 1559682940),
	(1, 30534, 1, 1559682940),
	(1, 30628, 1, 1559682940),
	(1, 30660, 1, 1559682940),
	(1, 30916, 1, 1559682940),
	(1, 30922, 1, 1559682940),
	(1, 30927, 1, 1559682940),
	(1, 30928, 1, 1559682940),
	(1, 30934, 1, 1559682940),
	(1, 30935, 1, 1559682940),
	(1, 30944, 1, 1559682940),
	(1, 30945, 1, 1559682940);
/*!40000 ALTER TABLE `character_queststatus_objectives_criteria_progress` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_queststatus_rewarded
DROP TABLE IF EXISTS `character_queststatus_rewarded`;
CREATE TABLE IF NOT EXISTS `character_queststatus_rewarded` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `active` tinyint(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`guid`,`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Дамп данных таблицы characters_ashamane.character_queststatus_rewarded: ~0 rows (приблизительно)
DELETE FROM `character_queststatus_rewarded`;
/*!40000 ALTER TABLE `character_queststatus_rewarded` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_rewarded` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_queststatus_seasonal
DROP TABLE IF EXISTS `character_queststatus_seasonal`;
CREATE TABLE IF NOT EXISTS `character_queststatus_seasonal` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  `event` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Event Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Дамп данных таблицы characters_ashamane.character_queststatus_seasonal: ~0 rows (приблизительно)
DELETE FROM `character_queststatus_seasonal`;
/*!40000 ALTER TABLE `character_queststatus_seasonal` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_seasonal` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_queststatus_weekly
DROP TABLE IF EXISTS `character_queststatus_weekly`;
CREATE TABLE IF NOT EXISTS `character_queststatus_weekly` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `quest` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`guid`,`quest`),
  KEY `idx_guid` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Дамп данных таблицы characters_ashamane.character_queststatus_weekly: ~0 rows (приблизительно)
DELETE FROM `character_queststatus_weekly`;
/*!40000 ALTER TABLE `character_queststatus_weekly` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_queststatus_weekly` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_recovery
DROP TABLE IF EXISTS `character_recovery`;
CREATE TABLE IF NOT EXISTS `character_recovery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `delivered` tinyint(1) DEFAULT '0',
  `account` int(11) unsigned NOT NULL,
  `race` int(11) unsigned NOT NULL,
  `class` int(11) unsigned NOT NULL,
  `level` int(11) unsigned NOT NULL,
  `skill1` int(11) NOT NULL DEFAULT '0',
  `skill1_value` int(11) NOT NULL DEFAULT '0',
  `skill2` int(11) NOT NULL DEFAULT '0',
  `skill2_value` int(11) NOT NULL DEFAULT '0',
  `items` text NOT NULL,
  `spells` text NOT NULL,
  `at_login` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Дамп данных таблицы characters_ashamane.character_recovery: ~0 rows (приблизительно)
DELETE FROM `character_recovery`;
/*!40000 ALTER TABLE `character_recovery` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_recovery` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_reputation
DROP TABLE IF EXISTS `character_reputation`;
CREATE TABLE IF NOT EXISTS `character_reputation` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `faction` smallint(5) unsigned NOT NULL DEFAULT '0',
  `standing` int(11) NOT NULL DEFAULT '0',
  `flags` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`faction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Дамп данных таблицы characters_ashamane.character_reputation: ~249 rows (приблизительно)
DELETE FROM `character_reputation`;
/*!40000 ALTER TABLE `character_reputation` DISABLE KEYS */;
INSERT INTO `character_reputation` (`guid`, `faction`, `standing`, `flags`) VALUES
	(1, 21, 0, 64),
	(1, 46, 0, 4),
	(1, 47, 0, 17),
	(1, 54, 0, 17),
	(1, 59, 0, 16),
	(1, 67, 0, 14),
	(1, 68, 0, 6),
	(1, 69, 0, 17),
	(1, 70, 0, 2),
	(1, 72, 0, 17),
	(1, 76, 0, 6),
	(1, 81, 0, 6),
	(1, 83, 0, 4),
	(1, 86, 0, 4),
	(1, 87, 0, 2),
	(1, 92, 0, 2),
	(1, 93, 0, 2),
	(1, 169, 0, 12),
	(1, 270, 0, 16),
	(1, 289, 0, 4),
	(1, 349, 0, 0),
	(1, 369, 0, 64),
	(1, 469, 0, 25),
	(1, 470, 0, 64),
	(1, 509, 0, 16),
	(1, 510, 0, 2),
	(1, 529, 0, 0),
	(1, 530, 0, 6),
	(1, 549, 0, 4),
	(1, 550, 0, 4),
	(1, 551, 0, 4),
	(1, 569, 0, 4),
	(1, 570, 0, 4),
	(1, 571, 0, 4),
	(1, 574, 0, 4),
	(1, 576, 0, 0),
	(1, 577, 0, 64),
	(1, 589, 0, 0),
	(1, 609, 0, 16),
	(1, 729, 0, 6),
	(1, 730, 0, 16),
	(1, 749, 0, 0),
	(1, 809, 0, 16),
	(1, 889, 0, 6),
	(1, 890, 0, 16),
	(1, 891, 0, 24),
	(1, 892, 0, 14),
	(1, 909, 0, 16),
	(1, 910, 0, 0),
	(1, 911, 0, 6),
	(1, 922, 0, 6),
	(1, 930, 0, 17),
	(1, 932, 0, 80),
	(1, 933, 0, 16),
	(1, 934, 0, 80),
	(1, 935, 0, 16),
	(1, 936, 0, 28),
	(1, 941, 0, 6),
	(1, 942, 0, 16),
	(1, 946, 0, 16),
	(1, 947, 0, 0),
	(1, 948, 0, 8),
	(1, 949, 0, 24),
	(1, 952, 0, 0),
	(1, 953, 0, 4),
	(1, 967, 0, 16),
	(1, 970, 0, 0),
	(1, 978, 0, 16),
	(1, 980, 0, 24),
	(1, 989, 0, 16),
	(1, 990, 0, 16),
	(1, 1005, 0, 0),
	(1, 1011, 0, 16),
	(1, 1012, 0, 16),
	(1, 1015, 0, 2),
	(1, 1031, 0, 16),
	(1, 1037, 0, 136),
	(1, 1038, 0, 16),
	(1, 1050, 0, 16),
	(1, 1052, 0, 0),
	(1, 1064, 0, 6),
	(1, 1067, 0, 0),
	(1, 1068, 0, 16),
	(1, 1073, 0, 16),
	(1, 1077, 0, 16),
	(1, 1085, 0, 6),
	(1, 1090, 0, 16),
	(1, 1091, 0, 16),
	(1, 1094, 0, 16),
	(1, 1097, 0, 12),
	(1, 1098, 0, 16),
	(1, 1104, 0, 16),
	(1, 1105, 0, 16),
	(1, 1106, 0, 16),
	(1, 1117, 0, 12),
	(1, 1118, 0, 12),
	(1, 1119, 0, 0),
	(1, 1124, 0, 6),
	(1, 1126, 0, 16),
	(1, 1133, 0, 6),
	(1, 1134, 0, 17),
	(1, 1135, 0, 16),
	(1, 1136, 0, 4),
	(1, 1137, 0, 0),
	(1, 1154, 0, 4),
	(1, 1155, 0, 4),
	(1, 1156, 0, 16),
	(1, 1158, 0, 16),
	(1, 1162, 0, 8),
	(1, 1163, 0, 0),
	(1, 1168, 0, 16),
	(1, 1169, 0, 28),
	(1, 1171, 0, 64),
	(1, 1172, 0, 0),
	(1, 1173, 0, 16),
	(1, 1174, 0, 16),
	(1, 1177, 0, 0),
	(1, 1178, 0, 6),
	(1, 1204, 0, 16),
	(1, 1216, 0, 0),
	(1, 1228, 0, 2),
	(1, 1242, 0, 16),
	(1, 1245, 0, 8),
	(1, 1269, 0, 16),
	(1, 1270, 0, 16),
	(1, 1271, 0, 16),
	(1, 1272, 0, 152),
	(1, 1273, 0, 16),
	(1, 1275, 0, 16),
	(1, 1276, 0, 16),
	(1, 1277, 0, 16),
	(1, 1278, 0, 16),
	(1, 1279, 0, 16),
	(1, 1280, 0, 16),
	(1, 1281, 0, 16),
	(1, 1282, 0, 16),
	(1, 1283, 0, 16),
	(1, 1302, 0, 152),
	(1, 1337, 0, 16),
	(1, 1341, 0, 16),
	(1, 1345, 0, 16),
	(1, 1351, 0, 0),
	(1, 1352, 0, 6),
	(1, 1353, 0, 17),
	(1, 1357, 0, 4),
	(1, 1358, 0, 16),
	(1, 1359, 0, 16),
	(1, 1374, 0, 0),
	(1, 1375, 0, 2),
	(1, 1376, 0, 144),
	(1, 1387, 0, 144),
	(1, 1388, 0, 2),
	(1, 1416, 0, 0),
	(1, 1419, 0, 16),
	(1, 1433, 0, 20),
	(1, 1435, 0, 16),
	(1, 1440, 0, 16),
	(1, 1444, 0, 24),
	(1, 1445, 0, 2),
	(1, 1492, 0, 16),
	(1, 1515, 0, 16),
	(1, 1520, 0, 0),
	(1, 1679, 0, 0),
	(1, 1681, 0, 18),
	(1, 1682, 0, 16),
	(1, 1690, 0, 0),
	(1, 1691, 0, 16),
	(1, 1708, 0, 2),
	(1, 1710, 0, 16),
	(1, 1711, 0, 16),
	(1, 1712, 0, 4),
	(1, 1713, 0, 4),
	(1, 1714, 0, 4),
	(1, 1715, 0, 4),
	(1, 1716, 0, 4),
	(1, 1717, 0, 4),
	(1, 1718, 0, 4),
	(1, 1731, 0, 16),
	(1, 1732, 0, 4),
	(1, 1733, 0, 16),
	(1, 1735, 0, 0),
	(1, 1736, 0, 16),
	(1, 1737, 0, 16),
	(1, 1738, 0, 16),
	(1, 1739, 0, 0),
	(1, 1740, 0, 0),
	(1, 1741, 0, 16),
	(1, 1815, 0, 4),
	(1, 1828, 0, 16),
	(1, 1834, 0, 24),
	(1, 1847, 0, 16),
	(1, 1848, 0, 2),
	(1, 1849, 0, 16),
	(1, 1850, 0, 16),
	(1, 1859, 0, 16),
	(1, 1860, 0, 20),
	(1, 1861, 0, 20),
	(1, 1862, 0, 20),
	(1, 1883, 0, 16),
	(1, 1888, 0, 6),
	(1, 1894, 0, 16),
	(1, 1899, 0, 16),
	(1, 1900, 0, 16),
	(1, 1919, 0, 20),
	(1, 1947, 0, 20),
	(1, 1948, 0, 16),
	(1, 1975, 0, 16),
	(1, 1984, 0, 0),
	(1, 1989, 0, 4),
	(1, 2010, 0, 0),
	(1, 2011, 0, 16),
	(1, 2018, 0, 16),
	(1, 2045, 0, 16),
	(1, 2063, 0, 0),
	(1, 2085, 0, 16),
	(1, 2086, 0, 16),
	(1, 2087, 0, 16),
	(1, 2088, 0, 16),
	(1, 2089, 0, 16),
	(1, 2090, 0, 16),
	(1, 2091, 0, 16),
	(1, 2097, 0, 16),
	(1, 2098, 0, 16),
	(1, 2099, 0, 16),
	(1, 2100, 0, 16),
	(1, 2101, 0, 16),
	(1, 2102, 0, 16),
	(1, 2103, 0, 2),
	(1, 2104, 0, 0),
	(1, 2111, 0, 6),
	(1, 2120, 0, 20),
	(1, 2135, 0, 16),
	(1, 2156, 0, 2),
	(1, 2157, 0, 2),
	(1, 2158, 0, 20),
	(1, 2159, 0, 16),
	(1, 2160, 0, 16),
	(1, 2161, 0, 16),
	(1, 2162, 0, 16),
	(1, 2163, 0, 16),
	(1, 2164, 0, 16),
	(1, 2165, 0, 16),
	(1, 2166, 0, 0),
	(1, 2167, 0, 16),
	(1, 2170, 0, 16),
	(1, 2180, 0, 0),
	(1, 2233, 0, 4),
	(1, 2264, 0, 20),
	(1, 2265, 0, 20);
/*!40000 ALTER TABLE `character_reputation` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_shop
DROP TABLE IF EXISTS `character_shop`;
CREATE TABLE IF NOT EXISTS `character_shop` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `guid` bigint(20) NOT NULL,
  `type` tinyint(3) NOT NULL,
  `itemId` int(10) NOT NULL DEFAULT '0',
  `itemCount` int(10) NOT NULL DEFAULT '0',
  `delivered` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы characters_ashamane.character_shop: ~0 rows (приблизительно)
DELETE FROM `character_shop`;
/*!40000 ALTER TABLE `character_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_shop` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_skills
DROP TABLE IF EXISTS `character_skills`;
CREATE TABLE IF NOT EXISTS `character_skills` (
  `guid` bigint(20) unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `skill` smallint(5) unsigned NOT NULL,
  `value` smallint(5) unsigned NOT NULL,
  `max` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Дамп данных таблицы characters_ashamane.character_skills: ~18 rows (приблизительно)
DELETE FROM `character_skills`;
/*!40000 ALTER TABLE `character_skills` DISABLE KEYS */;
INSERT INTO `character_skills` (`guid`, `skill`, `value`, `max`) VALUES
	(1, 43, 1, 5),
	(1, 44, 1, 5),
	(1, 54, 1, 5),
	(1, 95, 1, 5),
	(1, 98, 300, 300),
	(1, 118, 1, 1),
	(1, 136, 1, 5),
	(1, 162, 1, 5),
	(1, 183, 5, 5),
	(1, 229, 1, 5),
	(1, 414, 1, 1),
	(1, 415, 1, 1),
	(1, 473, 1, 5),
	(1, 754, 5, 5),
	(1, 777, 5, 5),
	(1, 810, 5, 5),
	(1, 829, 5, 5),
	(1, 934, 5, 5);
/*!40000 ALTER TABLE `character_skills` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_social
DROP TABLE IF EXISTS `character_social`;
CREATE TABLE IF NOT EXISTS `character_social` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `friend` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Friend Global Unique Identifier',
  `flags` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Friend Flags',
  `note` varchar(48) NOT NULL DEFAULT '' COMMENT 'Friend Note',
  PRIMARY KEY (`guid`,`friend`,`flags`),
  KEY `friend` (`friend`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Дамп данных таблицы characters_ashamane.character_social: ~0 rows (приблизительно)
DELETE FROM `character_social`;
/*!40000 ALTER TABLE `character_social` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_social` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_spell
DROP TABLE IF EXISTS `character_spell`;
CREATE TABLE IF NOT EXISTS `character_spell` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `disabled` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player System';

-- Дамп данных таблицы characters_ashamane.character_spell: ~4 rows (приблизительно)
DELETE FROM `character_spell`;
/*!40000 ALTER TABLE `character_spell` DISABLE KEYS */;
INSERT INTO `character_spell` (`guid`, `spell`, `active`, `disabled`) VALUES
	(1, 124146, 1, 0),
	(1, 137025, 1, 0),
	(1, 157445, 1, 0),
	(1, 162697, 1, 0),
	(1, 195710, 1, 0);
/*!40000 ALTER TABLE `character_spell` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_spell_charges
DROP TABLE IF EXISTS `character_spell_charges`;
CREATE TABLE IF NOT EXISTS `character_spell_charges` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `categoryId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'SpellCategory.dbc Identifier',
  `rechargeStart` int(10) unsigned NOT NULL DEFAULT '0',
  `rechargeEnd` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `idx_guid` (`guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.character_spell_charges: ~0 rows (приблизительно)
DELETE FROM `character_spell_charges`;
/*!40000 ALTER TABLE `character_spell_charges` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_spell_charges` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_spell_cooldown
DROP TABLE IF EXISTS `character_spell_cooldown`;
CREATE TABLE IF NOT EXISTS `character_spell_cooldown` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `spell` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `item` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Item Identifier',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `categoryId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell category Id',
  `categoryEnd` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.character_spell_cooldown: ~0 rows (приблизительно)
DELETE FROM `character_spell_cooldown`;
/*!40000 ALTER TABLE `character_spell_cooldown` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_spell_cooldown` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_stats
DROP TABLE IF EXISTS `character_stats`;
CREATE TABLE IF NOT EXISTS `character_stats` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `maxhealth` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower1` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower2` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower3` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower4` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower5` int(10) unsigned NOT NULL DEFAULT '0',
  `maxpower6` int(10) unsigned NOT NULL DEFAULT '0',
  `strength` int(10) unsigned NOT NULL DEFAULT '0',
  `agility` int(10) unsigned NOT NULL DEFAULT '0',
  `stamina` int(10) unsigned NOT NULL DEFAULT '0',
  `intellect` int(10) unsigned NOT NULL DEFAULT '0',
  `armor` int(10) unsigned NOT NULL DEFAULT '0',
  `resHoly` int(10) unsigned NOT NULL DEFAULT '0',
  `resFire` int(10) unsigned NOT NULL DEFAULT '0',
  `resNature` int(10) unsigned NOT NULL DEFAULT '0',
  `resFrost` int(10) unsigned NOT NULL DEFAULT '0',
  `resShadow` int(10) unsigned NOT NULL DEFAULT '0',
  `resArcane` int(10) unsigned NOT NULL DEFAULT '0',
  `blockPct` float unsigned NOT NULL DEFAULT '0',
  `dodgePct` float unsigned NOT NULL DEFAULT '0',
  `parryPct` float unsigned NOT NULL DEFAULT '0',
  `critPct` float unsigned NOT NULL DEFAULT '0',
  `rangedCritPct` float unsigned NOT NULL DEFAULT '0',
  `spellCritPct` float unsigned NOT NULL DEFAULT '0',
  `attackPower` int(10) unsigned NOT NULL DEFAULT '0',
  `rangedAttackPower` int(10) unsigned NOT NULL DEFAULT '0',
  `spellPower` int(10) unsigned NOT NULL DEFAULT '0',
  `resilience` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.character_stats: ~0 rows (приблизительно)
DELETE FROM `character_stats`;
/*!40000 ALTER TABLE `character_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_stats` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_talent
DROP TABLE IF EXISTS `character_talent`;
CREATE TABLE IF NOT EXISTS `character_talent` (
  `guid` bigint(20) unsigned NOT NULL,
  `talentId` mediumint(8) unsigned NOT NULL,
  `talentGroup` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`talentId`,`talentGroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.character_talent: ~0 rows (приблизительно)
DELETE FROM `character_talent`;
/*!40000 ALTER TABLE `character_talent` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_talent` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_transmog_outfits
DROP TABLE IF EXISTS `character_transmog_outfits`;
CREATE TABLE IF NOT EXISTS `character_transmog_outfits` (
  `guid` bigint(20) NOT NULL DEFAULT '0',
  `setguid` bigint(20) NOT NULL AUTO_INCREMENT,
  `setindex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  `iconname` varchar(256) NOT NULL,
  `ignore_mask` int(11) NOT NULL DEFAULT '0',
  `appearance0` int(10) NOT NULL DEFAULT '0',
  `appearance1` int(10) NOT NULL DEFAULT '0',
  `appearance2` int(10) NOT NULL DEFAULT '0',
  `appearance3` int(10) NOT NULL DEFAULT '0',
  `appearance4` int(10) NOT NULL DEFAULT '0',
  `appearance5` int(10) NOT NULL DEFAULT '0',
  `appearance6` int(10) NOT NULL DEFAULT '0',
  `appearance7` int(10) NOT NULL DEFAULT '0',
  `appearance8` int(10) NOT NULL DEFAULT '0',
  `appearance9` int(10) NOT NULL DEFAULT '0',
  `appearance10` int(10) NOT NULL DEFAULT '0',
  `appearance11` int(10) NOT NULL DEFAULT '0',
  `appearance12` int(10) NOT NULL DEFAULT '0',
  `appearance13` int(10) NOT NULL DEFAULT '0',
  `appearance14` int(10) NOT NULL DEFAULT '0',
  `appearance15` int(10) NOT NULL DEFAULT '0',
  `appearance16` int(10) NOT NULL DEFAULT '0',
  `appearance17` int(10) NOT NULL DEFAULT '0',
  `appearance18` int(10) NOT NULL DEFAULT '0',
  `mainHandEnchant` int(10) NOT NULL DEFAULT '0',
  `offHandEnchant` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`setguid`),
  UNIQUE KEY `idx_set` (`guid`,`setguid`,`setindex`),
  KEY `Idx_setindex` (`setindex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.character_transmog_outfits: ~0 rows (приблизительно)
DELETE FROM `character_transmog_outfits`;
/*!40000 ALTER TABLE `character_transmog_outfits` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_transmog_outfits` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.character_void_storage
DROP TABLE IF EXISTS `character_void_storage`;
CREATE TABLE IF NOT EXISTS `character_void_storage` (
  `itemId` bigint(20) unsigned NOT NULL,
  `playerGuid` bigint(20) unsigned NOT NULL,
  `itemEntry` mediumint(8) unsigned NOT NULL,
  `slot` tinyint(3) unsigned NOT NULL,
  `creatorGuid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `randomPropertyType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `randomProperty` int(10) unsigned NOT NULL DEFAULT '0',
  `suffixFactor` int(10) unsigned NOT NULL DEFAULT '0',
  `upgradeId` int(10) unsigned NOT NULL DEFAULT '0',
  `fixedScalingLevel` int(10) unsigned DEFAULT '0',
  `artifactKnowledgeLevel` int(10) unsigned DEFAULT '0',
  `challengeId` int(10) unsigned NOT NULL DEFAULT '0',
  `challengeLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `challengeAffix1` int(10) unsigned NOT NULL DEFAULT '0',
  `challengeAffix2` int(10) unsigned NOT NULL DEFAULT '0',
  `challengeAffix3` int(10) unsigned NOT NULL DEFAULT '0',
  `challengeIsCharged` int(10) unsigned NOT NULL DEFAULT '0',
  `context` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonusListIDs` text,
  PRIMARY KEY (`itemId`),
  UNIQUE KEY `idx_player_slot` (`playerGuid`,`slot`),
  KEY `idx_player` (`playerGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.character_void_storage: ~0 rows (приблизительно)
DELETE FROM `character_void_storage`;
/*!40000 ALTER TABLE `character_void_storage` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_void_storage` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.corpse
DROP TABLE IF EXISTS `corpse`;
CREATE TABLE IF NOT EXISTS `corpse` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `displayId` int(10) unsigned NOT NULL DEFAULT '0',
  `itemCache` text NOT NULL,
  `bytes1` int(10) unsigned NOT NULL DEFAULT '0',
  `bytes2` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dynFlags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `corpseType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (`guid`),
  KEY `idx_type` (`corpseType`),
  KEY `idx_instance` (`instanceId`),
  KEY `idx_time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Death System';

-- Дамп данных таблицы characters_ashamane.corpse: ~0 rows (приблизительно)
DELETE FROM `corpse`;
/*!40000 ALTER TABLE `corpse` DISABLE KEYS */;
/*!40000 ALTER TABLE `corpse` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.corpse_phases
DROP TABLE IF EXISTS `corpse_phases`;
CREATE TABLE IF NOT EXISTS `corpse_phases` (
  `OwnerGuid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `PhaseId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`OwnerGuid`,`PhaseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.corpse_phases: ~0 rows (приблизительно)
DELETE FROM `corpse_phases`;
/*!40000 ALTER TABLE `corpse_phases` DISABLE KEYS */;
/*!40000 ALTER TABLE `corpse_phases` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.creature_respawn
DROP TABLE IF EXISTS `creature_respawn`;
CREATE TABLE IF NOT EXISTS `creature_respawn` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `respawnTime` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(10) unsigned NOT NULL DEFAULT '0',
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (`guid`,`instanceId`),
  KEY `idx_instance` (`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Grid Loading System';

-- Дамп данных таблицы characters_ashamane.creature_respawn: ~0 rows (приблизительно)
DELETE FROM `creature_respawn`;
/*!40000 ALTER TABLE `creature_respawn` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_respawn` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.gameobject_respawn
DROP TABLE IF EXISTS `gameobject_respawn`;
CREATE TABLE IF NOT EXISTS `gameobject_respawn` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `respawnTime` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(10) unsigned NOT NULL DEFAULT '0',
  `instanceId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Identifier',
  PRIMARY KEY (`guid`,`instanceId`),
  KEY `idx_instance` (`instanceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Grid Loading System';

-- Дамп данных таблицы characters_ashamane.gameobject_respawn: ~0 rows (приблизительно)
DELETE FROM `gameobject_respawn`;
/*!40000 ALTER TABLE `gameobject_respawn` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject_respawn` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.game_event_condition_save
DROP TABLE IF EXISTS `game_event_condition_save`;
CREATE TABLE IF NOT EXISTS `game_event_condition_save` (
  `eventEntry` tinyint(3) unsigned NOT NULL,
  `condition_id` int(10) unsigned NOT NULL DEFAULT '0',
  `done` float DEFAULT '0',
  PRIMARY KEY (`eventEntry`,`condition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.game_event_condition_save: ~0 rows (приблизительно)
DELETE FROM `game_event_condition_save`;
/*!40000 ALTER TABLE `game_event_condition_save` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_event_condition_save` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.game_event_save
DROP TABLE IF EXISTS `game_event_save`;
CREATE TABLE IF NOT EXISTS `game_event_save` (
  `eventEntry` tinyint(3) unsigned NOT NULL,
  `state` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `next_start` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`eventEntry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.game_event_save: ~0 rows (приблизительно)
DELETE FROM `game_event_save`;
/*!40000 ALTER TABLE `game_event_save` DISABLE KEYS */;
/*!40000 ALTER TABLE `game_event_save` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.gm_bug
DROP TABLE IF EXISTS `gm_bug`;
CREATE TABLE IF NOT EXISTS `gm_bug` (
  `id` int(10) unsigned NOT NULL,
  `playerGuid` bigint(20) unsigned NOT NULL,
  `note` text NOT NULL,
  `createTime` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `facing` float NOT NULL DEFAULT '0',
  `closedBy` bigint(20) NOT NULL DEFAULT '0',
  `assignedTo` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'GUID of admin to whom ticket is assigned',
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.gm_bug: ~0 rows (приблизительно)
DELETE FROM `gm_bug`;
/*!40000 ALTER TABLE `gm_bug` DISABLE KEYS */;
/*!40000 ALTER TABLE `gm_bug` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.gm_complaint
DROP TABLE IF EXISTS `gm_complaint`;
CREATE TABLE IF NOT EXISTS `gm_complaint` (
  `id` int(10) unsigned NOT NULL,
  `playerGuid` bigint(20) unsigned NOT NULL,
  `note` text NOT NULL,
  `createTime` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `facing` float NOT NULL DEFAULT '0',
  `targetCharacterGuid` bigint(20) unsigned NOT NULL,
  `complaintType` smallint(5) unsigned NOT NULL,
  `reportLineIndex` int(10) NOT NULL,
  `closedBy` bigint(20) NOT NULL DEFAULT '0',
  `assignedTo` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'GUID of admin to whom ticket is assigned',
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.gm_complaint: ~0 rows (приблизительно)
DELETE FROM `gm_complaint`;
/*!40000 ALTER TABLE `gm_complaint` DISABLE KEYS */;
/*!40000 ALTER TABLE `gm_complaint` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.gm_complaint_chatlog
DROP TABLE IF EXISTS `gm_complaint_chatlog`;
CREATE TABLE IF NOT EXISTS `gm_complaint_chatlog` (
  `complaintId` int(10) unsigned NOT NULL,
  `lineId` int(10) unsigned NOT NULL,
  `timestamp` int(10) unsigned NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`complaintId`,`lineId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.gm_complaint_chatlog: ~0 rows (приблизительно)
DELETE FROM `gm_complaint_chatlog`;
/*!40000 ALTER TABLE `gm_complaint_chatlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `gm_complaint_chatlog` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.gm_suggestion
DROP TABLE IF EXISTS `gm_suggestion`;
CREATE TABLE IF NOT EXISTS `gm_suggestion` (
  `id` int(10) unsigned NOT NULL,
  `playerGuid` bigint(20) unsigned NOT NULL,
  `note` text NOT NULL,
  `createTime` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `facing` float NOT NULL DEFAULT '0',
  `closedBy` bigint(20) NOT NULL DEFAULT '0',
  `assignedTo` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'GUID of admin to whom ticket is assigned',
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.gm_suggestion: ~0 rows (приблизительно)
DELETE FROM `gm_suggestion`;
/*!40000 ALTER TABLE `gm_suggestion` DISABLE KEYS */;
/*!40000 ALTER TABLE `gm_suggestion` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.groups
DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `guid` int(10) unsigned NOT NULL,
  `leaderGuid` bigint(20) unsigned NOT NULL,
  `lootMethod` tinyint(3) unsigned NOT NULL,
  `looterGuid` bigint(20) unsigned NOT NULL,
  `lootThreshold` tinyint(3) unsigned NOT NULL,
  `icon1` binary(16) NOT NULL,
  `icon2` binary(16) NOT NULL,
  `icon3` binary(16) NOT NULL,
  `icon4` binary(16) NOT NULL,
  `icon5` binary(16) NOT NULL,
  `icon6` binary(16) NOT NULL,
  `icon7` binary(16) NOT NULL,
  `icon8` binary(16) NOT NULL,
  `groupType` tinyint(3) unsigned NOT NULL,
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `raidDifficulty` tinyint(3) unsigned NOT NULL DEFAULT '14',
  `legacyRaidDifficulty` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `masterLooterGuid` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`guid`),
  KEY `leaderGuid` (`leaderGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Groups';

-- Дамп данных таблицы characters_ashamane.groups: ~0 rows (приблизительно)
DELETE FROM `groups`;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.group_instance
DROP TABLE IF EXISTS `group_instance`;
CREATE TABLE IF NOT EXISTS `group_instance` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `instance` int(10) unsigned NOT NULL DEFAULT '0',
  `permanent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`instance`),
  KEY `instance` (`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.group_instance: ~0 rows (приблизительно)
DELETE FROM `group_instance`;
/*!40000 ALTER TABLE `group_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_instance` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.group_member
DROP TABLE IF EXISTS `group_member`;
CREATE TABLE IF NOT EXISTS `group_member` (
  `guid` int(10) unsigned NOT NULL,
  `memberGuid` bigint(20) unsigned NOT NULL,
  `memberFlags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subgroup` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `roles` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`memberGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Groups';

-- Дамп данных таблицы characters_ashamane.group_member: ~0 rows (приблизительно)
DELETE FROM `group_member`;
/*!40000 ALTER TABLE `group_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_member` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.guild
DROP TABLE IF EXISTS `guild`;
CREATE TABLE IF NOT EXISTS `guild` (
  `guildid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `leaderguid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `EmblemStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `EmblemColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BorderStyle` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BorderColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BackgroundColor` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `info` varchar(500) NOT NULL DEFAULT '',
  `motd` varchar(128) NOT NULL DEFAULT '',
  `createdate` int(10) unsigned NOT NULL DEFAULT '0',
  `BankMoney` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- Дамп данных таблицы characters_ashamane.guild: ~0 rows (приблизительно)
DELETE FROM `guild`;
/*!40000 ALTER TABLE `guild` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.guild_achievement
DROP TABLE IF EXISTS `guild_achievement`;
CREATE TABLE IF NOT EXISTS `guild_achievement` (
  `guildId` bigint(20) unsigned NOT NULL,
  `achievement` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `guids` text NOT NULL,
  PRIMARY KEY (`guildId`,`achievement`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.guild_achievement: ~0 rows (приблизительно)
DELETE FROM `guild_achievement`;
/*!40000 ALTER TABLE `guild_achievement` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_achievement` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.guild_achievement_progress
DROP TABLE IF EXISTS `guild_achievement_progress`;
CREATE TABLE IF NOT EXISTS `guild_achievement_progress` (
  `guildId` bigint(20) unsigned NOT NULL,
  `criteria` int(10) unsigned NOT NULL,
  `counter` bigint(20) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `completedGuid` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildId`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.guild_achievement_progress: ~0 rows (приблизительно)
DELETE FROM `guild_achievement_progress`;
/*!40000 ALTER TABLE `guild_achievement_progress` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_achievement_progress` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.guild_bank_eventlog
DROP TABLE IF EXISTS `guild_bank_eventlog`;
CREATE TABLE IF NOT EXISTS `guild_bank_eventlog` (
  `guildid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Guild Identificator',
  `LogGuid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Log record identificator - auxiliary column',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Guild bank TabId',
  `EventType` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Event type',
  `PlayerGuid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `ItemOrMoney` bigint(20) unsigned NOT NULL DEFAULT '0',
  `ItemStackCount` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DestTabId` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Destination Tab Id',
  `TimeStamp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`,`TabId`),
  KEY `guildid_key` (`guildid`),
  KEY `Idx_PlayerGuid` (`PlayerGuid`),
  KEY `Idx_LogGuid` (`LogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.guild_bank_eventlog: ~0 rows (приблизительно)
DELETE FROM `guild_bank_eventlog`;
/*!40000 ALTER TABLE `guild_bank_eventlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_bank_eventlog` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.guild_bank_item
DROP TABLE IF EXISTS `guild_bank_item`;
CREATE TABLE IF NOT EXISTS `guild_bank_item` (
  `guildid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `SlotId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item_guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`TabId`,`SlotId`),
  KEY `guildid_key` (`guildid`),
  KEY `Idx_item_guid` (`item_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.guild_bank_item: ~0 rows (приблизительно)
DELETE FROM `guild_bank_item`;
/*!40000 ALTER TABLE `guild_bank_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_bank_item` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.guild_bank_right
DROP TABLE IF EXISTS `guild_bank_right`;
CREATE TABLE IF NOT EXISTS `guild_bank_right` (
  `guildid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `rid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gbright` tinyint(3) NOT NULL DEFAULT '0',
  `SlotPerDay` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`TabId`,`rid`),
  KEY `guildid_key` (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.guild_bank_right: ~0 rows (приблизительно)
DELETE FROM `guild_bank_right`;
/*!40000 ALTER TABLE `guild_bank_right` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_bank_right` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.guild_bank_tab
DROP TABLE IF EXISTS `guild_bank_tab`;
CREATE TABLE IF NOT EXISTS `guild_bank_tab` (
  `guildid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `TabId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `TabName` varchar(16) NOT NULL DEFAULT '',
  `TabIcon` varchar(100) NOT NULL DEFAULT '',
  `TabText` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`guildid`,`TabId`),
  KEY `guildid_key` (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.guild_bank_tab: ~0 rows (приблизительно)
DELETE FROM `guild_bank_tab`;
/*!40000 ALTER TABLE `guild_bank_tab` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_bank_tab` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.guild_eventlog
DROP TABLE IF EXISTS `guild_eventlog`;
CREATE TABLE IF NOT EXISTS `guild_eventlog` (
  `guildid` bigint(20) unsigned NOT NULL COMMENT 'Guild Identificator',
  `LogGuid` int(10) unsigned NOT NULL COMMENT 'Log record identificator - auxiliary column',
  `EventType` tinyint(3) unsigned NOT NULL COMMENT 'Event type',
  `PlayerGuid1` bigint(20) unsigned NOT NULL COMMENT 'Player 1',
  `PlayerGuid2` bigint(20) unsigned NOT NULL COMMENT 'Player 2',
  `NewRank` tinyint(3) unsigned NOT NULL COMMENT 'New rank(in case promotion/demotion)',
  `TimeStamp` int(10) unsigned NOT NULL COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`),
  KEY `Idx_PlayerGuid1` (`PlayerGuid1`),
  KEY `Idx_PlayerGuid2` (`PlayerGuid2`),
  KEY `Idx_LogGuid` (`LogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild Eventlog';

-- Дамп данных таблицы characters_ashamane.guild_eventlog: ~0 rows (приблизительно)
DELETE FROM `guild_eventlog`;
/*!40000 ALTER TABLE `guild_eventlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_eventlog` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.guild_finder_applicant
DROP TABLE IF EXISTS `guild_finder_applicant`;
CREATE TABLE IF NOT EXISTS `guild_finder_applicant` (
  `guildId` bigint(20) unsigned NOT NULL DEFAULT '0',
  `playerGuid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `availability` tinyint(3) unsigned DEFAULT '0',
  `classRole` tinyint(3) unsigned DEFAULT '0',
  `interests` tinyint(3) unsigned DEFAULT '0',
  `comment` varchar(255) DEFAULT NULL,
  `submitTime` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`guildId`,`playerGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.guild_finder_applicant: ~0 rows (приблизительно)
DELETE FROM `guild_finder_applicant`;
/*!40000 ALTER TABLE `guild_finder_applicant` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_finder_applicant` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.guild_finder_guild_settings
DROP TABLE IF EXISTS `guild_finder_guild_settings`;
CREATE TABLE IF NOT EXISTS `guild_finder_guild_settings` (
  `guildId` bigint(20) unsigned NOT NULL,
  `availability` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `classRoles` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `interests` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `listed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`guildId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.guild_finder_guild_settings: ~0 rows (приблизительно)
DELETE FROM `guild_finder_guild_settings`;
/*!40000 ALTER TABLE `guild_finder_guild_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_finder_guild_settings` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.guild_member
DROP TABLE IF EXISTS `guild_member`;
CREATE TABLE IF NOT EXISTS `guild_member` (
  `guildid` bigint(20) unsigned NOT NULL COMMENT 'Guild Identificator',
  `guid` bigint(20) unsigned NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL,
  `pnote` varchar(31) NOT NULL DEFAULT '',
  `offnote` varchar(31) NOT NULL DEFAULT '',
  UNIQUE KEY `guid_key` (`guid`),
  KEY `guildid_key` (`guildid`),
  KEY `guildid_rank_key` (`guildid`,`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- Дамп данных таблицы characters_ashamane.guild_member: ~0 rows (приблизительно)
DELETE FROM `guild_member`;
/*!40000 ALTER TABLE `guild_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_member` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.guild_member_withdraw
DROP TABLE IF EXISTS `guild_member_withdraw`;
CREATE TABLE IF NOT EXISTS `guild_member_withdraw` (
  `guid` bigint(20) unsigned NOT NULL,
  `tab0` int(10) unsigned NOT NULL DEFAULT '0',
  `tab1` int(10) unsigned NOT NULL DEFAULT '0',
  `tab2` int(10) unsigned NOT NULL DEFAULT '0',
  `tab3` int(10) unsigned NOT NULL DEFAULT '0',
  `tab4` int(10) unsigned NOT NULL DEFAULT '0',
  `tab5` int(10) unsigned NOT NULL DEFAULT '0',
  `tab6` int(10) unsigned NOT NULL DEFAULT '0',
  `tab7` int(10) unsigned NOT NULL DEFAULT '0',
  `money` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild Member Daily Withdraws';

-- Дамп данных таблицы characters_ashamane.guild_member_withdraw: ~0 rows (приблизительно)
DELETE FROM `guild_member_withdraw`;
/*!40000 ALTER TABLE `guild_member_withdraw` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_member_withdraw` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.guild_newslog
DROP TABLE IF EXISTS `guild_newslog`;
CREATE TABLE IF NOT EXISTS `guild_newslog` (
  `guildid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Guild Identificator',
  `LogGuid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Log record identificator - auxiliary column',
  `EventType` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Event type',
  `PlayerGuid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `Value` int(10) unsigned NOT NULL DEFAULT '0',
  `TimeStamp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`),
  KEY `guildid_key` (`guildid`),
  KEY `Idx_PlayerGuid` (`PlayerGuid`),
  KEY `Idx_LogGuid` (`LogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.guild_newslog: ~0 rows (приблизительно)
DELETE FROM `guild_newslog`;
/*!40000 ALTER TABLE `guild_newslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_newslog` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.guild_rank
DROP TABLE IF EXISTS `guild_rank`;
CREATE TABLE IF NOT EXISTS `guild_rank` (
  `guildid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `rid` tinyint(3) unsigned NOT NULL,
  `rname` varchar(20) NOT NULL DEFAULT '',
  `rights` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `BankMoneyPerDay` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`,`rid`),
  KEY `Idx_rid` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- Дамп данных таблицы characters_ashamane.guild_rank: ~0 rows (приблизительно)
DELETE FROM `guild_rank`;
/*!40000 ALTER TABLE `guild_rank` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_rank` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.instance
DROP TABLE IF EXISTS `instance`;
CREATE TABLE IF NOT EXISTS `instance` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0',
  `resettime` int(10) unsigned NOT NULL DEFAULT '0',
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `completedEncounters` int(10) unsigned NOT NULL DEFAULT '0',
  `data` tinytext NOT NULL,
  `entranceId` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `map` (`map`),
  KEY `resettime` (`resettime`),
  KEY `difficulty` (`difficulty`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.instance: ~0 rows (приблизительно)
DELETE FROM `instance`;
/*!40000 ALTER TABLE `instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `instance` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.instance_reset
DROP TABLE IF EXISTS `instance_reset`;
CREATE TABLE IF NOT EXISTS `instance_reset` (
  `mapid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `resettime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`mapid`,`difficulty`),
  KEY `difficulty` (`difficulty`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.instance_reset: ~235 rows (приблизительно)
DELETE FROM `instance_reset`;
/*!40000 ALTER TABLE `instance_reset` DISABLE KEYS */;
INSERT INTO `instance_reset` (`mapid`, `difficulty`, `resettime`) VALUES
	(33, 2, 1559707200),
	(36, 2, 1559707200),
	(249, 3, 1560225600),
	(249, 4, 1560225600),
	(269, 2, 1559707200),
	(409, 9, 1560225600),
	(469, 9, 1560225600),
	(509, 3, 1559707200),
	(531, 9, 1560225600),
	(532, 3, 1560225600),
	(533, 3, 1560225600),
	(533, 4, 1560225600),
	(534, 4, 1560225600),
	(540, 2, 1559707200),
	(542, 2, 1559707200),
	(543, 2, 1559707200),
	(544, 4, 1560225600),
	(545, 2, 1559707200),
	(546, 2, 1559707200),
	(547, 2, 1559707200),
	(548, 4, 1560225600),
	(550, 4, 1560225600),
	(552, 2, 1559707200),
	(553, 2, 1559707200),
	(554, 2, 1559707200),
	(555, 2, 1559707200),
	(556, 2, 1559707200),
	(557, 2, 1559707200),
	(558, 2, 1559707200),
	(560, 2, 1559707200),
	(564, 14, 1560225600),
	(564, 33, 1560225600),
	(565, 4, 1560225600),
	(568, 2, 1559707200),
	(574, 2, 1559707200),
	(575, 2, 1559707200),
	(576, 2, 1559707200),
	(578, 2, 1559707200),
	(580, 4, 1560225600),
	(585, 2, 1559707200),
	(595, 2, 1559707200),
	(598, 2, 1559707200),
	(599, 2, 1559707200),
	(600, 2, 1559707200),
	(601, 2, 1559707200),
	(602, 2, 1559707200),
	(603, 14, 1560225600),
	(603, 33, 1560225600),
	(604, 2, 1559707200),
	(608, 2, 1559707200),
	(615, 3, 1560225600),
	(615, 4, 1560225600),
	(616, 3, 1560225600),
	(616, 4, 1560225600),
	(619, 2, 1559707200),
	(624, 3, 1560225600),
	(624, 4, 1560225600),
	(631, 3, 1560225600),
	(631, 4, 1560225600),
	(631, 5, 1560225600),
	(631, 6, 1560225600),
	(632, 2, 1559707200),
	(643, 2, 1559707200),
	(644, 2, 1559707200),
	(645, 2, 1559707200),
	(649, 3, 1560225600),
	(649, 4, 1560225600),
	(649, 5, 1560225600),
	(649, 6, 1560225600),
	(650, 2, 1559707200),
	(657, 2, 1559707200),
	(658, 2, 1559707200),
	(668, 2, 1559707200),
	(669, 3, 1560225600),
	(669, 4, 1560225600),
	(669, 5, 1560225600),
	(669, 6, 1560225600),
	(670, 2, 1559707200),
	(671, 3, 1560225600),
	(671, 4, 1560225600),
	(671, 5, 1560225600),
	(671, 6, 1560225600),
	(720, 3, 1560225600),
	(720, 4, 1560225600),
	(720, 5, 1560225600),
	(720, 6, 1560225600),
	(724, 3, 1560225600),
	(724, 4, 1560225600),
	(724, 5, 1560225600),
	(724, 6, 1560225600),
	(725, 2, 1559707200),
	(754, 3, 1560225600),
	(754, 4, 1560225600),
	(754, 5, 1560225600),
	(754, 6, 1560225600),
	(755, 2, 1559707200),
	(757, 3, 1560225600),
	(757, 4, 1560225600),
	(757, 5, 1560225600),
	(757, 6, 1560225600),
	(859, 2, 1559707200),
	(938, 2, 1559707200),
	(939, 2, 1559707200),
	(940, 2, 1559707200),
	(959, 2, 1559707200),
	(960, 2, 1559707200),
	(961, 2, 1559707200),
	(962, 2, 1559707200),
	(967, 3, 1560225600),
	(967, 4, 1560225600),
	(967, 5, 1560225600),
	(967, 6, 1560225600),
	(967, 7, 1560225600),
	(994, 2, 1559707200),
	(996, 3, 1560225600),
	(996, 4, 1560225600),
	(996, 5, 1560225600),
	(996, 6, 1560225600),
	(996, 7, 1560225600),
	(1001, 2, 1559707200),
	(1004, 2, 1559707200),
	(1007, 2, 1559707200),
	(1008, 3, 1560225600),
	(1008, 4, 1560225600),
	(1008, 5, 1560225600),
	(1008, 6, 1560225600),
	(1008, 7, 1560225600),
	(1009, 3, 1560225600),
	(1009, 4, 1560225600),
	(1009, 5, 1560225600),
	(1009, 6, 1560225600),
	(1009, 7, 1560225600),
	(1011, 2, 1559707200),
	(1098, 3, 1560225600),
	(1098, 4, 1560225600),
	(1098, 5, 1560225600),
	(1098, 6, 1560225600),
	(1098, 7, 1560225600),
	(1136, 14, 1560225600),
	(1136, 15, 1560225600),
	(1136, 16, 1560225600),
	(1136, 17, 1560225600),
	(1175, 2, 1559707200),
	(1175, 23, 1560225600),
	(1176, 2, 1559707200),
	(1176, 23, 1560225600),
	(1182, 2, 1559707200),
	(1182, 23, 1560225600),
	(1195, 2, 1559707200),
	(1195, 23, 1560225600),
	(1205, 14, 1560225600),
	(1205, 15, 1560225600),
	(1205, 16, 1560225600),
	(1205, 17, 1560225600),
	(1208, 2, 1559707200),
	(1208, 23, 1560225600),
	(1209, 2, 1559707200),
	(1209, 23, 1560225600),
	(1228, 14, 1560225600),
	(1228, 15, 1560225600),
	(1228, 16, 1560225600),
	(1228, 17, 1560225600),
	(1279, 2, 1559707200),
	(1279, 23, 1560225600),
	(1358, 2, 1559707200),
	(1358, 23, 1560225600),
	(1448, 14, 1560225600),
	(1448, 15, 1560225600),
	(1448, 16, 1560225600),
	(1448, 17, 1560225600),
	(1456, 2, 1559707200),
	(1456, 23, 1560225600),
	(1458, 2, 1559707200),
	(1458, 23, 1560225600),
	(1466, 2, 1559707200),
	(1466, 23, 1560225600),
	(1477, 2, 1559707200),
	(1477, 23, 1560225600),
	(1492, 2, 1559707200),
	(1492, 23, 1560225600),
	(1493, 2, 1559707200),
	(1493, 23, 1560225600),
	(1501, 2, 1559707200),
	(1501, 23, 1560225600),
	(1516, 23, 1560225600),
	(1520, 14, 1560225600),
	(1520, 15, 1560225600),
	(1520, 16, 1560225600),
	(1520, 17, 1560225600),
	(1530, 14, 1560225600),
	(1530, 15, 1560225600),
	(1530, 16, 1560225600),
	(1530, 17, 1560225600),
	(1544, 2, 1559707200),
	(1544, 23, 1560225600),
	(1571, 23, 1560225600),
	(1594, 2, 1559707200),
	(1594, 23, 1560225600),
	(1648, 14, 1560225600),
	(1648, 15, 1560225600),
	(1648, 16, 1560225600),
	(1648, 17, 1560225600),
	(1651, 23, 1560225600),
	(1676, 14, 1560225600),
	(1676, 15, 1560225600),
	(1676, 16, 1560225600),
	(1676, 17, 1560225600),
	(1677, 2, 1559707200),
	(1677, 23, 1560225600),
	(1712, 14, 1560225600),
	(1712, 15, 1560225600),
	(1712, 16, 1560225600),
	(1712, 17, 1560225600),
	(1753, 2, 1559707200),
	(1753, 23, 1560225600),
	(1754, 2, 1559707200),
	(1754, 23, 1560225600),
	(1762, 23, 1560225600),
	(1763, 2, 1559707200),
	(1763, 23, 1560225600),
	(1771, 2, 1559707200),
	(1771, 23, 1560225600),
	(1822, 23, 1560225600),
	(1841, 2, 1559707200),
	(1841, 23, 1560225600),
	(1861, 14, 1560225600),
	(1861, 15, 1560225600),
	(1861, 16, 1560225600),
	(1861, 17, 1560225600),
	(1862, 2, 1559707200),
	(1862, 23, 1560225600),
	(1864, 2, 1559707200),
	(1864, 23, 1560225600),
	(1877, 2, 1559707200),
	(1877, 23, 1560225600);
/*!40000 ALTER TABLE `instance_reset` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.instance_scenario_progress
DROP TABLE IF EXISTS `instance_scenario_progress`;
CREATE TABLE IF NOT EXISTS `instance_scenario_progress` (
  `id` int(10) unsigned NOT NULL,
  `criteria` int(10) unsigned NOT NULL,
  `counter` bigint(20) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`criteria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.instance_scenario_progress: ~0 rows (приблизительно)
DELETE FROM `instance_scenario_progress`;
/*!40000 ALTER TABLE `instance_scenario_progress` DISABLE KEYS */;
/*!40000 ALTER TABLE `instance_scenario_progress` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.item_azerite
DROP TABLE IF EXISTS `item_azerite`;
CREATE TABLE IF NOT EXISTS `item_azerite` (
  `CharacterGuid` bigint(20) unsigned NOT NULL,
  `ItemGuid` bigint(20) unsigned NOT NULL,
  `Level` int(10) unsigned NOT NULL DEFAULT '0',
  `Xp` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`CharacterGuid`,`ItemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.item_azerite: ~0 rows (приблизительно)
DELETE FROM `item_azerite`;
/*!40000 ALTER TABLE `item_azerite` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_azerite` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.item_azerite_empowered
DROP TABLE IF EXISTS `item_azerite_empowered`;
CREATE TABLE IF NOT EXISTS `item_azerite_empowered` (
  `CharacterGuid` bigint(20) unsigned NOT NULL,
  `ItemGuid` bigint(20) unsigned NOT NULL,
  `PowereId1` int(10) unsigned NOT NULL DEFAULT '0',
  `PowereId2` int(10) unsigned NOT NULL DEFAULT '0',
  `PowereId3` int(10) unsigned NOT NULL DEFAULT '0',
  `PowereId4` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`CharacterGuid`,`ItemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.item_azerite_empowered: ~0 rows (приблизительно)
DELETE FROM `item_azerite_empowered`;
/*!40000 ALTER TABLE `item_azerite_empowered` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_azerite_empowered` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.item_instance
DROP TABLE IF EXISTS `item_instance`;
CREATE TABLE IF NOT EXISTS `item_instance` (
  `guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `itemEntry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `owner_guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `creatorGuid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `giftCreatorGuid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `duration` int(10) NOT NULL DEFAULT '0',
  `charges` tinytext,
  `flags` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `enchantments` text NOT NULL,
  `randomPropertyType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `randomPropertyId` int(10) unsigned NOT NULL DEFAULT '0',
  `durability` smallint(5) unsigned NOT NULL DEFAULT '0',
  `playedTime` int(10) unsigned NOT NULL DEFAULT '0',
  `text` text,
  `transmogrification` int(10) unsigned NOT NULL DEFAULT '0',
  `upgradeId` int(10) unsigned NOT NULL DEFAULT '0',
  `enchantIllusion` int(10) unsigned NOT NULL DEFAULT '0',
  `battlePetSpeciesId` int(10) unsigned NOT NULL DEFAULT '0',
  `battlePetBreedData` int(10) unsigned NOT NULL DEFAULT '0',
  `battlePetLevel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `battlePetDisplayId` int(10) unsigned NOT NULL DEFAULT '0',
  `context` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonusListIDs` text,
  PRIMARY KEY (`guid`),
  KEY `idx_owner_guid` (`owner_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item System';

-- Дамп данных таблицы characters_ashamane.item_instance: ~0 rows (приблизительно)
DELETE FROM `item_instance`;
/*!40000 ALTER TABLE `item_instance` DISABLE KEYS */;
INSERT INTO `item_instance` (`guid`, `itemEntry`, `owner_guid`, `creatorGuid`, `giftCreatorGuid`, `count`, `duration`, `charges`, `flags`, `enchantments`, `randomPropertyType`, `randomPropertyId`, `durability`, `playedTime`, `text`, `transmogrification`, `upgradeId`, `enchantIllusion`, `battlePetSpeciesId`, `battlePetBreedData`, `battlePetLevel`, `battlePetDisplayId`, `context`, `bonusListIDs`) VALUES
	(2, 77279, 1, 0, 0, 1, 0, '0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 25, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, ''),
	(4, 72019, 1, 0, 0, 1, 0, '', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 55, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, ''),
	(6, 72020, 1, 0, 0, 1, 0, '', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 40, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, ''),
	(8, 77526, 1, 0, 0, 1, 0, '', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 20, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, ''),
	(10, 77278, 1, 0, 0, 1, 0, '0 ', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 25, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, ''),
	(12, 77509, 1, 0, 0, 1, 0, '', 1, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 20, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, ''),
	(14, 6948, 1, 0, 0, 1, 0, '0 ', 2097153, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, ''),
	(15, 44819, 1, 0, 0, 1, 0, '0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, ''),
	(16, 46894, 1, 0, 0, 1, 0, '0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, ''),
	(17, 49362, 1, 0, 0, 1, 0, '0 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, ''),
	(18, 71134, 1, 0, 0, 1, 0, '0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, ''),
	(19, 71134, 1, 0, 0, 1, 0, '0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, ''),
	(20, 90918, 1, 0, 0, 1, 0, '0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, ''),
	(21, 115301, 1, 0, 0, 1, 0, '-1 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, ''),
	(22, 116788, 1, 0, 0, 1, 0, '-1 0 ', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, ''),
	(23, 128513, 1, 0, 0, 1, 0, '', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, ''),
	(24, 139284, 1, 0, 0, 1, 0, '', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, ''),
	(25, 140997, 1, 0, 0, 1, 0, '', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, ''),
	(26, 140998, 1, 0, 0, 1, 0, '', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, ''),
	(27, 147876, 1, 0, 0, 1, 0, '', 0, '0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ', 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '');
/*!40000 ALTER TABLE `item_instance` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.item_instance_artifact
DROP TABLE IF EXISTS `item_instance_artifact`;
CREATE TABLE IF NOT EXISTS `item_instance_artifact` (
  `itemGuid` bigint(20) unsigned NOT NULL,
  `xp` bigint(20) unsigned NOT NULL DEFAULT '0',
  `artifactAppearanceId` int(10) unsigned NOT NULL DEFAULT '0',
  `artifactTierId` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.item_instance_artifact: ~0 rows (приблизительно)
DELETE FROM `item_instance_artifact`;
/*!40000 ALTER TABLE `item_instance_artifact` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_instance_artifact` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.item_instance_artifact_powers
DROP TABLE IF EXISTS `item_instance_artifact_powers`;
CREATE TABLE IF NOT EXISTS `item_instance_artifact_powers` (
  `itemGuid` bigint(20) unsigned NOT NULL,
  `artifactPowerId` int(10) unsigned NOT NULL,
  `purchasedRank` tinyint(3) unsigned DEFAULT '0',
  PRIMARY KEY (`itemGuid`,`artifactPowerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.item_instance_artifact_powers: ~0 rows (приблизительно)
DELETE FROM `item_instance_artifact_powers`;
/*!40000 ALTER TABLE `item_instance_artifact_powers` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_instance_artifact_powers` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.item_instance_azerite
DROP TABLE IF EXISTS `item_instance_azerite`;
CREATE TABLE IF NOT EXISTS `item_instance_azerite` (
  `itemGuid` bigint(20) unsigned NOT NULL,
  `xp` int(10) unsigned NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemGuid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- Дамп данных таблицы characters_ashamane.item_instance_azerite: ~0 rows (приблизительно)
DELETE FROM `item_instance_azerite`;
/*!40000 ALTER TABLE `item_instance_azerite` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_instance_azerite` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.item_instance_gems
DROP TABLE IF EXISTS `item_instance_gems`;
CREATE TABLE IF NOT EXISTS `item_instance_gems` (
  `itemGuid` bigint(20) unsigned NOT NULL,
  `gemItemId1` int(10) unsigned NOT NULL DEFAULT '0',
  `gemBonuses1` text,
  `gemContext1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gemScalingLevel1` int(10) unsigned NOT NULL DEFAULT '0',
  `gemItemId2` int(10) unsigned NOT NULL DEFAULT '0',
  `gemBonuses2` text,
  `gemContext2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gemScalingLevel2` int(10) unsigned NOT NULL DEFAULT '0',
  `gemItemId3` int(10) unsigned NOT NULL DEFAULT '0',
  `gemBonuses3` text,
  `gemContext3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `gemScalingLevel3` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.item_instance_gems: ~0 rows (приблизительно)
DELETE FROM `item_instance_gems`;
/*!40000 ALTER TABLE `item_instance_gems` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_instance_gems` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.item_instance_modifiers
DROP TABLE IF EXISTS `item_instance_modifiers`;
CREATE TABLE IF NOT EXISTS `item_instance_modifiers` (
  `itemGuid` bigint(20) unsigned NOT NULL,
  `fixedScalingLevel` int(10) unsigned DEFAULT '0',
  `artifactKnowledgeLevel` int(10) unsigned DEFAULT '0',
  `challengeId` int(10) unsigned NOT NULL DEFAULT '0',
  `challengeLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `challengeAffix1` int(10) unsigned NOT NULL DEFAULT '0',
  `challengeAffix2` int(10) unsigned NOT NULL DEFAULT '0',
  `challengeAffix3` int(10) unsigned NOT NULL DEFAULT '0',
  `challengeIsCharged` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.item_instance_modifiers: ~0 rows (приблизительно)
DELETE FROM `item_instance_modifiers`;
/*!40000 ALTER TABLE `item_instance_modifiers` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_instance_modifiers` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.item_instance_transmog
DROP TABLE IF EXISTS `item_instance_transmog`;
CREATE TABLE IF NOT EXISTS `item_instance_transmog` (
  `itemGuid` bigint(20) unsigned NOT NULL,
  `itemModifiedAppearanceAllSpecs` int(11) NOT NULL DEFAULT '0',
  `itemModifiedAppearanceSpec1` int(11) NOT NULL DEFAULT '0',
  `itemModifiedAppearanceSpec2` int(11) NOT NULL DEFAULT '0',
  `itemModifiedAppearanceSpec3` int(11) NOT NULL DEFAULT '0',
  `itemModifiedAppearanceSpec4` int(11) NOT NULL DEFAULT '0',
  `spellItemEnchantmentAllSpecs` int(11) NOT NULL DEFAULT '0',
  `spellItemEnchantmentSpec1` int(11) NOT NULL DEFAULT '0',
  `spellItemEnchantmentSpec2` int(11) NOT NULL DEFAULT '0',
  `spellItemEnchantmentSpec3` int(11) NOT NULL DEFAULT '0',
  `spellItemEnchantmentSpec4` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.item_instance_transmog: ~0 rows (приблизительно)
DELETE FROM `item_instance_transmog`;
/*!40000 ALTER TABLE `item_instance_transmog` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_instance_transmog` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.item_loot_items
DROP TABLE IF EXISTS `item_loot_items`;
CREATE TABLE IF NOT EXISTS `item_loot_items` (
  `container_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'guid of container (item_instance.guid)',
  `item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'loot item entry (item_instance.itemEntry)',
  `item_count` int(10) NOT NULL DEFAULT '0' COMMENT 'stack size',
  `follow_rules` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'follow loot rules',
  `ffa` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'free-for-all',
  `blocked` tinyint(1) NOT NULL DEFAULT '0',
  `counted` tinyint(1) NOT NULL DEFAULT '0',
  `under_threshold` tinyint(1) NOT NULL DEFAULT '0',
  `needs_quest` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'quest drop',
  `rnd_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'random enchantment type',
  `rnd_prop` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'random enchantment added when originally rolled',
  `rnd_suffix` int(10) NOT NULL DEFAULT '0' COMMENT 'random suffix added when originally rolled',
  `context` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonus_list_ids` text COMMENT 'Space separated list of bonus list ids',
  PRIMARY KEY (`container_id`,`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.item_loot_items: ~0 rows (приблизительно)
DELETE FROM `item_loot_items`;
/*!40000 ALTER TABLE `item_loot_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_loot_items` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.item_loot_money
DROP TABLE IF EXISTS `item_loot_money`;
CREATE TABLE IF NOT EXISTS `item_loot_money` (
  `container_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'guid of container (item_instance.guid)',
  `money` int(10) NOT NULL DEFAULT '0' COMMENT 'money loot (in copper)',
  PRIMARY KEY (`container_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.item_loot_money: ~0 rows (приблизительно)
DELETE FROM `item_loot_money`;
/*!40000 ALTER TABLE `item_loot_money` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_loot_money` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.item_refund_instance
DROP TABLE IF EXISTS `item_refund_instance`;
CREATE TABLE IF NOT EXISTS `item_refund_instance` (
  `item_guid` bigint(20) unsigned NOT NULL COMMENT 'Item GUID',
  `player_guid` bigint(20) unsigned NOT NULL COMMENT 'Player GUID',
  `paidMoney` bigint(20) unsigned NOT NULL DEFAULT '0',
  `paidExtendedCost` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`item_guid`,`player_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item Refund System';

-- Дамп данных таблицы characters_ashamane.item_refund_instance: ~0 rows (приблизительно)
DELETE FROM `item_refund_instance`;
/*!40000 ALTER TABLE `item_refund_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_refund_instance` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.item_soulbound_trade_data
DROP TABLE IF EXISTS `item_soulbound_trade_data`;
CREATE TABLE IF NOT EXISTS `item_soulbound_trade_data` (
  `itemGuid` bigint(20) unsigned NOT NULL COMMENT 'Item GUID',
  `allowedPlayers` text NOT NULL COMMENT 'Space separated GUID list of players who can receive this item in trade',
  PRIMARY KEY (`itemGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Item Refund System';

-- Дамп данных таблицы characters_ashamane.item_soulbound_trade_data: ~0 rows (приблизительно)
DELETE FROM `item_soulbound_trade_data`;
/*!40000 ALTER TABLE `item_soulbound_trade_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_soulbound_trade_data` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.lfg_data
DROP TABLE IF EXISTS `lfg_data`;
CREATE TABLE IF NOT EXISTS `lfg_data` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `dungeon` int(10) unsigned NOT NULL DEFAULT '0',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='LFG Data';

-- Дамп данных таблицы characters_ashamane.lfg_data: ~0 rows (приблизительно)
DELETE FROM `lfg_data`;
/*!40000 ALTER TABLE `lfg_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `lfg_data` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.log_gm
DROP TABLE IF EXISTS `log_gm`;
CREATE TABLE IF NOT EXISTS `log_gm` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `gm_account_id` bigint(20) DEFAULT NULL,
  `gm_account_name` blob,
  `gm_character_id` bigint(20) DEFAULT NULL,
  `gm_character_name` blob,
  `gm_ip` text,
  `target_account_id` bigint(20) DEFAULT NULL,
  `target_account_name` blob,
  `target_character_id` bigint(20) DEFAULT NULL,
  `target_character_name` blob,
  `target_ip` text,
  `command` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84485 DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы characters_ashamane.log_gm: ~0 rows (приблизительно)
DELETE FROM `log_gm`;
/*!40000 ALTER TABLE `log_gm` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_gm` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.mail
DROP TABLE IF EXISTS `mail`;
CREATE TABLE IF NOT EXISTS `mail` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Identifier',
  `messageType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stationery` tinyint(3) NOT NULL DEFAULT '41',
  `mailTemplateId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sender` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `receiver` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  `subject` longtext,
  `body` longtext,
  `has_items` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `expire_time` int(10) unsigned NOT NULL DEFAULT '0',
  `deliver_time` int(10) unsigned NOT NULL DEFAULT '0',
  `money` bigint(20) unsigned NOT NULL DEFAULT '0',
  `cod` bigint(20) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_receiver` (`receiver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Mail System';

-- Дамп данных таблицы characters_ashamane.mail: ~0 rows (приблизительно)
DELETE FROM `mail`;
/*!40000 ALTER TABLE `mail` DISABLE KEYS */;
INSERT INTO `mail` (`id`, `messageType`, `stationery`, `mailTemplateId`, `sender`, `receiver`, `subject`, `body`, `has_items`, `expire_time`, `deliver_time`, `money`, `cod`, `checked`) VALUES
	(1, 3, 41, 0, 32842, 1, 'WoW\'s 4th anniversary!', 'Do you know that the World of Warcraft is now four years old? $B$BWe wanted to send you something to say thanks for sharing this game with us. Sure, the 4th anniversary present is traditionally "flowers"... but in WoW, it\'s "bear". $B$BWith that said, please accept this furry little friend! Just remember to hold his fish by the tail, not the body... that mouth is bigger than it looks. $B$BThe WoW Dev Team.', 1, 1562274937, 1559682937, 0, 0, 0),
	(2, 3, 41, 0, 24380, 1, 'Jade Tiger', '', 1, 1562274938, 1559682938, 0, 0, 0),
	(3, 3, 41, 0, 32842, 1, 'WoW\'s 5th anniversary!', 'Wow, another year has gone by for WoW! $B$BWe wanted to thank you again for continuing to play World of Warcraft with us. In celebration of our 5th year online, we decided to bring back our first raid encounter, the black dragon Onyxia. $B$BTo help remember the event, you are now the proud owner of your very own Onyxian Whelpling. We suggest you bring the little guy out whenever you can and say, "Many whelps! Handle it!" Your friends won\'t mind. Honest. $B$BThe WoW Dev Team.', 1, 1562274938, 1559682938, 0, 0, 0),
	(4, 3, 41, 0, 32842, 1, 'WoW\'s 7th Anniversary!', 'Wow, yet another year has gone by for WoW! $B$BWe wanted to thank you again for continuing to play World of Warcraft with us. With the return of a certain large dragon, this has been a rough year for the world of Azeroth. On the other hand, that means heroes like you are needed more than ever. $B$BGet out there and defend a shattered world! $B$BThe WoW Dev Team.', 1, 1562274938, 1559682938, 0, 0, 0),
	(5, 3, 41, 0, 32842, 1, 'WoW\'s 8th Anniversary!', 'Wow, yet another year has gone by for WoW! $B$BWe wanted to thank you again for continuing to play World of Warcraft with us. With the return of a certain large dragon, this has been a rough year for the world of Azeroth. On the other hand, that means heroes like you are needed more than ever. $B$BGet out there and defend a shattered world! $B$BThe WoW Dev Team.', 1, 1562274938, 1559682938, 0, 0, 0),
	(6, 3, 41, 0, 32842, 1, 'WoW\'s 9th Anniversary!', 'Wow, yet another year has gone by for WoW! $B$BWe wanted to thank you for continuing to play World of Warcraft with us. So here\'s a little celebration package to go with your adventures! $B$BThe WoW Dev Team.', 1, 1562274938, 1559682938, 0, 0, 0),
	(7, 3, 41, 0, 32842, 1, 'WoW\'s 10th Anniversary', 'Can you believe it\'s been ten years? $B$BWe wanted to thank you for joining us in our celebration of the tenth anniversary of World of Warcraft with this adorable fiery fellow. Plucked from the Firelord\'s litter. $B$BThe Wow Dev Team.', 1, 1562274938, 1559682938, 0, 0, 0),
	(8, 3, 41, 0, 24380, 1, 'Warlord\'s Deathwheel', '', 1, 1562274938, 1559682938, 0, 0, 0),
	(9, 3, 41, 0, 32842, 1, 'WoW\'s 11th Anniversary!', 'Wow, yet another year has gone by for WoW! $B$BWe wanted to thank you for continuing to play World of Warcraft With us, so here\'s an Anniversary Gift to go with your adventures! $B$BThe WoW Dev Team.', 1, 1562274939, 1559682939, 0, 0, 0),
	(10, 3, 41, 0, 32842, 1, 'WoW\'s 12th Anniversary!', 'Wow, yet another year has gone by for WoW! $B$BWe wanted to thank you for continuing to play World of Warcraft With us, so here\'s an Anniversary Gift to go with your adventures! $B$BThe WoW Dev Team.', 1, 1562274939, 1559682939, 0, 0, 0),
	(11, 3, 41, 0, 92219, 1, 'For the Alliance!', 'Decades ago, bloodthristy invaders emerged from the Dark Portal, rampaging through our lands and threatening our very existence. But with might, cunning, and a resolve that forged the Alliance amidst the flames of destruction. Our champions drove them back. Take these arms and bear them with pride. for you are a champion of the alliance!', 1, 1562274939, 1559682939, 0, 0, 0),
	(12, 3, 41, 0, 89753, 1, 'For the Horde!', 'We Orcs came to this world decades ago, driven by demonic bloodlust. Pillaging and carving a swath of destruction. Now free of the blood curse. We stand proudly alongside the greatest warriors of azeroth. Defending family and homeland with our dying breath. But we must never forget that dark past. Lest it overtake us once again.Take these arms as a reminder of our origins, the foe we now face, and what it means to be of Horde, Lok\'tar Ogar!', 1, 1562274939, 1559682939, 0, 0, 0),
	(13, 3, 41, 0, 32842, 1, 'WoW\'s 13th Anniversary!', 'Wow, yet another year has gone by for WoW! $B$BWe wanted to thank you for continuing to play World of Warcraft With us, so here\'s an Anniversary Gift to go with your adventures! $B$BThe WoW Dev Team.', 1, 1562274939, 1559682939, 0, 0, 0);
/*!40000 ALTER TABLE `mail` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.mail_items
DROP TABLE IF EXISTS `mail_items`;
CREATE TABLE IF NOT EXISTS `mail_items` (
  `mail_id` int(10) unsigned NOT NULL DEFAULT '0',
  `item_guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `receiver` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Character Global Unique Identifier',
  PRIMARY KEY (`item_guid`),
  KEY `idx_receiver` (`receiver`),
  KEY `idx_mail_id` (`mail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.mail_items: ~0 rows (приблизительно)
DELETE FROM `mail_items`;
/*!40000 ALTER TABLE `mail_items` DISABLE KEYS */;
INSERT INTO `mail_items` (`mail_id`, `item_guid`, `receiver`) VALUES
	(1, 15, 1),
	(2, 16, 1),
	(3, 17, 1),
	(4, 18, 1),
	(5, 19, 1),
	(6, 20, 1),
	(7, 21, 1),
	(8, 22, 1),
	(9, 23, 1),
	(10, 24, 1),
	(11, 25, 1),
	(12, 26, 1),
	(13, 27, 1);
/*!40000 ALTER TABLE `mail_items` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.petition
DROP TABLE IF EXISTS `petition`;
CREATE TABLE IF NOT EXISTS `petition` (
  `ownerguid` bigint(20) unsigned NOT NULL,
  `petitionguid` bigint(20) unsigned DEFAULT '0',
  `name` varchar(24) NOT NULL,
  PRIMARY KEY (`ownerguid`),
  UNIQUE KEY `index_ownerguid_petitionguid` (`ownerguid`,`petitionguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- Дамп данных таблицы characters_ashamane.petition: ~0 rows (приблизительно)
DELETE FROM `petition`;
/*!40000 ALTER TABLE `petition` DISABLE KEYS */;
/*!40000 ALTER TABLE `petition` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.petition_sign
DROP TABLE IF EXISTS `petition_sign`;
CREATE TABLE IF NOT EXISTS `petition_sign` (
  `ownerguid` bigint(20) unsigned NOT NULL,
  `petitionguid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `playerguid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `player_account` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`petitionguid`,`playerguid`),
  KEY `Idx_playerguid` (`playerguid`),
  KEY `Idx_ownerguid` (`ownerguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Guild System';

-- Дамп данных таблицы characters_ashamane.petition_sign: ~0 rows (приблизительно)
DELETE FROM `petition_sign`;
/*!40000 ALTER TABLE `petition_sign` DISABLE KEYS */;
/*!40000 ALTER TABLE `petition_sign` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.pet_aura
DROP TABLE IF EXISTS `pet_aura`;
CREATE TABLE IF NOT EXISTS `pet_aura` (
  `guid` int(10) unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `casterGuid` binary(16) NOT NULL COMMENT 'Full Global Unique Identifier',
  `spell` int(10) unsigned NOT NULL,
  `effectMask` int(10) unsigned NOT NULL,
  `recalculateMask` int(10) unsigned NOT NULL DEFAULT '0',
  `stackCount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `maxDuration` int(11) NOT NULL DEFAULT '0',
  `remainTime` int(11) NOT NULL DEFAULT '0',
  `remainCharges` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`,`effectMask`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pet System';

-- Дамп данных таблицы characters_ashamane.pet_aura: ~0 rows (приблизительно)
DELETE FROM `pet_aura`;
/*!40000 ALTER TABLE `pet_aura` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_aura` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.pet_aura_effect
DROP TABLE IF EXISTS `pet_aura_effect`;
CREATE TABLE IF NOT EXISTS `pet_aura_effect` (
  `guid` int(10) unsigned NOT NULL COMMENT 'Global Unique Identifier',
  `casterGuid` binary(16) NOT NULL COMMENT 'Full Global Unique Identifier',
  `spell` int(10) unsigned NOT NULL,
  `effectMask` int(10) unsigned NOT NULL,
  `effectIndex` tinyint(3) unsigned NOT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `baseAmount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`casterGuid`,`spell`,`effectMask`,`effectIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pet System';

-- Дамп данных таблицы characters_ashamane.pet_aura_effect: ~0 rows (приблизительно)
DELETE FROM `pet_aura_effect`;
/*!40000 ALTER TABLE `pet_aura_effect` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_aura_effect` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.pet_spell
DROP TABLE IF EXISTS `pet_spell`;
CREATE TABLE IF NOT EXISTS `pet_spell` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `active` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pet System';

-- Дамп данных таблицы characters_ashamane.pet_spell: ~0 rows (приблизительно)
DELETE FROM `pet_spell`;
/*!40000 ALTER TABLE `pet_spell` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_spell` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.pet_spell_charges
DROP TABLE IF EXISTS `pet_spell_charges`;
CREATE TABLE IF NOT EXISTS `pet_spell_charges` (
  `guid` int(10) unsigned NOT NULL,
  `categoryId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'SpellCategory.dbc Identifier',
  `rechargeStart` int(10) unsigned NOT NULL DEFAULT '0',
  `rechargeEnd` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `idx_guid` (`guid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.pet_spell_charges: ~0 rows (приблизительно)
DELETE FROM `pet_spell_charges`;
/*!40000 ALTER TABLE `pet_spell_charges` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_spell_charges` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.pet_spell_cooldown
DROP TABLE IF EXISTS `pet_spell_cooldown`;
CREATE TABLE IF NOT EXISTS `pet_spell_cooldown` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier, Low part',
  `spell` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell Identifier',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `categoryId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Spell category Id',
  `categoryEnd` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.pet_spell_cooldown: ~0 rows (приблизительно)
DELETE FROM `pet_spell_cooldown`;
/*!40000 ALTER TABLE `pet_spell_cooldown` DISABLE KEYS */;
/*!40000 ALTER TABLE `pet_spell_cooldown` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.pool_quest_save
DROP TABLE IF EXISTS `pool_quest_save`;
CREATE TABLE IF NOT EXISTS `pool_quest_save` (
  `pool_id` int(10) unsigned NOT NULL DEFAULT '0',
  `quest_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pool_id`,`quest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.pool_quest_save: ~19 rows (приблизительно)
DELETE FROM `pool_quest_save`;
/*!40000 ALTER TABLE `pool_quest_save` DISABLE KEYS */;
INSERT INTO `pool_quest_save` (`pool_id`, `quest_id`) VALUES
	(346, 29345),
	(347, 26556),
	(348, 25105),
	(349, 25158),
	(350, 26536),
	(351, 26183),
	(352, 29356),
	(353, 29343),
	(354, 29358),
	(355, 29360),
	(356, 29319),
	(357, 29314),
	(358, 29324),
	(359, 11377),
	(360, 11669),
	(361, 13833),
	(362, 13103),
	(363, 12961),
	(364, 31335);
/*!40000 ALTER TABLE `pool_quest_save` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.pvpstats_battlegrounds
DROP TABLE IF EXISTS `pvpstats_battlegrounds`;
CREATE TABLE IF NOT EXISTS `pvpstats_battlegrounds` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `winner_faction` tinyint(4) NOT NULL,
  `bracket_id` tinyint(3) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.pvpstats_battlegrounds: ~0 rows (приблизительно)
DELETE FROM `pvpstats_battlegrounds`;
/*!40000 ALTER TABLE `pvpstats_battlegrounds` DISABLE KEYS */;
/*!40000 ALTER TABLE `pvpstats_battlegrounds` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.pvpstats_players
DROP TABLE IF EXISTS `pvpstats_players`;
CREATE TABLE IF NOT EXISTS `pvpstats_players` (
  `battleground_id` bigint(20) unsigned NOT NULL,
  `character_guid` bigint(20) unsigned NOT NULL,
  `winner` bit(1) NOT NULL,
  `score_killing_blows` int(10) unsigned NOT NULL,
  `score_deaths` int(10) unsigned NOT NULL,
  `score_honorable_kills` int(10) unsigned NOT NULL,
  `score_bonus_honor` int(10) unsigned NOT NULL,
  `score_damage_done` int(10) unsigned NOT NULL,
  `score_healing_done` int(10) unsigned NOT NULL,
  `attr_1` int(10) unsigned NOT NULL,
  `attr_2` int(10) unsigned NOT NULL,
  `attr_3` int(10) unsigned NOT NULL,
  `attr_4` int(10) unsigned NOT NULL,
  `attr_5` int(10) unsigned NOT NULL,
  PRIMARY KEY (`battleground_id`,`character_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.pvpstats_players: ~0 rows (приблизительно)
DELETE FROM `pvpstats_players`;
/*!40000 ALTER TABLE `pvpstats_players` DISABLE KEYS */;
/*!40000 ALTER TABLE `pvpstats_players` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.quest_tracker
DROP TABLE IF EXISTS `quest_tracker`;
CREATE TABLE IF NOT EXISTS `quest_tracker` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `character_guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `quest_accept_time` datetime NOT NULL,
  `quest_complete_time` datetime DEFAULT NULL,
  `quest_abandon_time` datetime DEFAULT NULL,
  `completed_by_gm` tinyint(1) NOT NULL DEFAULT '0',
  `core_hash` varchar(120) NOT NULL DEFAULT '0',
  `core_revision` varchar(120) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`character_guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.quest_tracker: ~0 rows (приблизительно)
DELETE FROM `quest_tracker`;
/*!40000 ALTER TABLE `quest_tracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `quest_tracker` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.reserved_name
DROP TABLE IF EXISTS `reserved_name`;
CREATE TABLE IF NOT EXISTS `reserved_name` (
  `name` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Player Reserved Names';

-- Дамп данных таблицы characters_ashamane.reserved_name: ~0 rows (приблизительно)
DELETE FROM `reserved_name`;
/*!40000 ALTER TABLE `reserved_name` DISABLE KEYS */;
/*!40000 ALTER TABLE `reserved_name` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.updates
DROP TABLE IF EXISTS `updates`;
CREATE TABLE IF NOT EXISTS `updates` (
  `name` varchar(200) NOT NULL COMMENT 'filename with extension of the update.',
  `hash` char(40) DEFAULT '' COMMENT 'sha1 hash of the sql file.',
  `state` enum('RELEASED','ARCHIVED') NOT NULL DEFAULT 'RELEASED' COMMENT 'defines if an update is released or archived.',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'timestamp when the query was applied.',
  `speed` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'time the query takes to apply in ms.',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='List of all applied updates in this database.';

-- Дамп данных таблицы characters_ashamane.updates: 1 rows
DELETE FROM `updates`;
/*!40000 ALTER TABLE `updates` DISABLE KEYS */;
INSERT INTO `updates` (`name`, `hash`, `state`, `timestamp`, `speed`) VALUES
	('2019_06_04_00_characters.sql', '9579FA086A8ED44291314AD0EF08B82FAEECBDC9', 'RELEASED', '2019-06-04 23:57:23', 91);
/*!40000 ALTER TABLE `updates` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.updates_include
DROP TABLE IF EXISTS `updates_include`;
CREATE TABLE IF NOT EXISTS `updates_include` (
  `path` varchar(200) NOT NULL COMMENT 'directory to include. $ means relative to the source directory.',
  `state` enum('RELEASED','ARCHIVED') NOT NULL DEFAULT 'RELEASED' COMMENT 'defines if the directory contains released or archived updates.',
  PRIMARY KEY (`path`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='List of directories where we want to include sql updates.';

-- Дамп данных таблицы characters_ashamane.updates_include: 2 rows
DELETE FROM `updates_include`;
/*!40000 ALTER TABLE `updates_include` DISABLE KEYS */;
INSERT INTO `updates_include` (`path`, `state`) VALUES
	('$/sql/updates/characters', 'RELEASED'),
	('$/sql/custom/characters', 'RELEASED');
/*!40000 ALTER TABLE `updates_include` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.warden_action
DROP TABLE IF EXISTS `warden_action`;
CREATE TABLE IF NOT EXISTS `warden_action` (
  `wardenId` smallint(5) unsigned NOT NULL,
  `action` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`wardenId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы characters_ashamane.warden_action: ~0 rows (приблизительно)
DELETE FROM `warden_action`;
/*!40000 ALTER TABLE `warden_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `warden_action` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.worldstates
DROP TABLE IF EXISTS `worldstates`;
CREATE TABLE IF NOT EXISTS `worldstates` (
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `value` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` tinytext,
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variable Saves';

-- Дамп данных таблицы characters_ashamane.worldstates: ~203 rows (приблизительно)
DELETE FROM `worldstates`;
/*!40000 ALTER TABLE `worldstates` DISABLE KEYS */;
INSERT INTO `worldstates` (`entry`, `value`, `comment`) VALUES
	(1, 0, NULL),
	(2, 0, NULL),
	(3, 0, NULL),
	(4, 0, NULL),
	(5, 0, NULL),
	(6, 0, NULL),
	(7, 0, NULL),
	(8, 0, NULL),
	(9, 0, NULL),
	(10, 0, NULL),
	(11, 0, NULL),
	(12, 0, NULL),
	(13, 0, NULL),
	(14, 0, NULL),
	(15, 0, NULL),
	(16, 1559682319, NULL),
	(17, 0, NULL),
	(18, 0, NULL),
	(19, 0, NULL),
	(20, 0, NULL),
	(21, 0, NULL),
	(22, 0, NULL),
	(23, 0, NULL),
	(24, 0, NULL),
	(25, 1559682319, NULL),
	(26, 0, NULL),
	(27, 1559682319, NULL),
	(28, 0, NULL),
	(29, 0, NULL),
	(30, 0, NULL),
	(31, 0, NULL),
	(32, 0, NULL),
	(33, 0, NULL),
	(34, 0, NULL),
	(35, 0, NULL),
	(36, 0, NULL),
	(37, 0, NULL),
	(38, 0, NULL),
	(39, 0, NULL),
	(40, 0, NULL),
	(41, 0, NULL),
	(42, 1559682319, NULL),
	(43, 0, NULL),
	(44, 0, NULL),
	(45, 0, NULL),
	(46, 0, NULL),
	(47, 0, NULL),
	(48, 0, NULL),
	(49, 0, NULL),
	(50, 0, NULL),
	(51, 0, NULL),
	(52, 0, NULL),
	(53, 0, NULL),
	(54, 0, NULL),
	(55, 0, NULL),
	(56, 0, NULL),
	(57, 0, NULL),
	(58, 0, NULL),
	(59, 0, NULL),
	(60, 0, NULL),
	(61, 0, NULL),
	(62, 0, NULL),
	(63, 0, NULL),
	(64, 0, NULL),
	(65, 0, NULL),
	(66, 0, NULL),
	(67, 0, NULL),
	(68, 0, NULL),
	(69, 0, NULL),
	(70, 0, NULL),
	(71, 0, NULL),
	(72, 0, NULL),
	(73, 0, NULL),
	(74, 0, NULL),
	(75, 0, NULL),
	(76, 0, NULL),
	(77, 0, NULL),
	(78, 0, NULL),
	(79, 0, NULL),
	(80, 0, NULL),
	(81, 0, NULL),
	(82, 0, NULL),
	(83, 0, NULL),
	(84, 0, NULL),
	(85, 0, NULL),
	(86, 0, NULL),
	(87, 0, NULL),
	(88, 0, NULL),
	(89, 0, NULL),
	(90, 0, NULL),
	(91, 0, NULL),
	(92, 0, NULL),
	(93, 0, NULL),
	(94, 0, NULL),
	(95, 0, NULL),
	(96, 0, NULL),
	(97, 0, NULL),
	(98, 0, NULL),
	(99, 0, NULL),
	(100, 1559682319, NULL),
	(101, 0, NULL),
	(102, 0, NULL),
	(103, 0, NULL),
	(104, 0, NULL),
	(105, 0, NULL),
	(106, 0, NULL),
	(107, 0, NULL),
	(108, 0, NULL),
	(109, 0, NULL),
	(110, 0, NULL),
	(111, 0, NULL),
	(112, 0, NULL),
	(113, 0, NULL),
	(114, 0, NULL),
	(115, 0, NULL),
	(116, 0, NULL),
	(117, 0, NULL),
	(118, 0, NULL),
	(119, 0, NULL),
	(120, 0, NULL),
	(121, 0, NULL),
	(122, 0, NULL),
	(123, 0, NULL),
	(124, 0, NULL),
	(125, 0, NULL),
	(126, 0, NULL),
	(127, 0, NULL),
	(128, 0, NULL),
	(129, 0, NULL),
	(130, 0, NULL),
	(131, 0, NULL),
	(132, 0, NULL),
	(133, 0, NULL),
	(134, 0, NULL),
	(135, 0, NULL),
	(136, 0, NULL),
	(137, 0, NULL),
	(138, 0, NULL),
	(139, 0, NULL),
	(140, 0, NULL),
	(141, 0, NULL),
	(142, 0, NULL),
	(143, 0, NULL),
	(144, 0, NULL),
	(145, 0, NULL),
	(146, 0, NULL),
	(147, 0, NULL),
	(148, 0, NULL),
	(149, 0, NULL),
	(150, 0, NULL),
	(151, 0, NULL),
	(152, 0, NULL),
	(153, 0, NULL),
	(154, 0, NULL),
	(155, 0, NULL),
	(156, 0, NULL),
	(157, 0, NULL),
	(158, 0, NULL),
	(159, 0, NULL),
	(160, 0, NULL),
	(161, 0, NULL),
	(162, 0, NULL),
	(163, 0, NULL),
	(164, 0, NULL),
	(165, 0, NULL),
	(166, 0, NULL),
	(167, 0, NULL),
	(168, 0, NULL),
	(169, 0, NULL),
	(170, 0, NULL),
	(171, 0, NULL),
	(172, 0, NULL),
	(173, 0, NULL),
	(174, 0, NULL),
	(175, 0, NULL),
	(176, 0, NULL),
	(177, 0, NULL),
	(178, 0, NULL),
	(179, 0, NULL),
	(180, 0, NULL),
	(181, 0, NULL),
	(182, 0, NULL),
	(183, 0, NULL),
	(184, 0, NULL),
	(185, 0, NULL),
	(186, 0, NULL),
	(187, 0, NULL),
	(188, 0, NULL),
	(189, 0, NULL),
	(190, 0, NULL),
	(191, 0, NULL),
	(192, 0, NULL),
	(193, 0, NULL),
	(194, 0, NULL),
	(195, 0, NULL),
	(196, 0, NULL),
	(197, 0, NULL),
	(198, 0, NULL),
	(199, 0, NULL),
	(200, 0, NULL),
	(3781, 9000000, NULL),
	(3801, 0, NULL),
	(3802, 1, NULL),
	(5332, 600000, NULL),
	(5334, 1, NULL),
	(5344, 0, NULL),
	(5384, 0, NULL),
	(5385, 1, NULL),
	(5387, 1, NULL),
	(5546, 0, NULL),
	(5547, 0, NULL),
	(20001, 1559703600, NULL),
	(20002, 1560287172, NULL),
	(20003, 1559703600, NULL),
	(20006, 1559703600, NULL),
	(20007, 1561928400, NULL),
	(20050, 1, NULL);
/*!40000 ALTER TABLE `worldstates` ENABLE KEYS */;

-- Дамп структуры для таблица characters_ashamane.world_quest
DROP TABLE IF EXISTS `world_quest`;
CREATE TABLE IF NOT EXISTS `world_quest` (
  `id` int(10) unsigned NOT NULL,
  `rewardid` int(10) unsigned NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Дамп данных таблицы characters_ashamane.world_quest: ~203 rows (приблизительно)
DELETE FROM `world_quest`;
/*!40000 ALTER TABLE `world_quest` DISABLE KEYS */;
INSERT INTO `world_quest` (`id`, `rewardid`, `starttime`) VALUES
	(41025, 35, 1559682435),
	(41057, 19, 1559682435),
	(41078, 71, 1559682435),
	(41090, 0, 1559682435),
	(41210, 9, 1559682435),
	(41243, 83, 1559682435),
	(41278, 43, 1559682435),
	(41304, 22, 1559682435),
	(41315, 10, 1559682435),
	(41327, 1, 1559682435),
	(41339, 65, 1559682435),
	(41350, 21, 1559682435),
	(41457, 50, 1559682435),
	(41516, 22, 1559682435),
	(41537, 22, 1559682435),
	(41558, 55, 1559682435),
	(41561, 85, 1559682435),
	(41564, 85, 1559682435),
	(41609, 43, 1559682435),
	(41641, 0, 1559682435),
	(41644, 0, 1559682435),
	(41652, 84, 1559682435),
	(41673, 0, 1559682435),
	(41816, 0, 1559682435),
	(42082, 1, 1559682435),
	(42105, 35, 1559682435),
	(42233, 0, 1559682435),
	(42274, 15, 1559682435),
	(42631, 63, 1559682435),
	(42652, 6, 1559682435),
	(42779, 54, 1559682435),
	(42798, 0, 1559682435),
	(43193, 72, 1559682435),
	(43303, 79, 1559682435),
	(43324, 46, 1559682435),
	(43332, 47, 1559682435),
	(43455, 33, 1559682435),
	(43583, 53, 1559682435),
	(43612, 58, 1559682435),
	(43632, 52, 1559682435),
	(43637, 13, 1559682435),
	(43710, 16, 1559682435),
	(43758, 46, 1559682435),
	(43774, 71, 1559682435),
	(43814, 0, 1559682435),
	(44016, 46, 1559682435),
	(44018, 18, 1559682435),
	(44021, 20, 1559682435),
	(44048, 0, 1559682435),
	(44867, 52, 1559682435),
	(44892, 29, 1559682435),
	(45047, 19, 1559682435),
	(45058, 0, 1559682435),
	(45068, 10, 1559682435),
	(45626, 25, 1559682435),
	(45840, 0, 1559682435),
	(45970, 6, 1559682435),
	(45977, 7, 1559682435),
	(46066, 66, 1559682435),
	(46138, 84, 1559682435),
	(46139, 84, 1559682435),
	(46165, 0, 1559682435),
	(46185, 0, 1559682435),
	(46325, 6, 1559682435),
	(46506, 67, 1559682435),
	(46745, 0, 1559682435),
	(47135, 2, 1559682435),
	(47705, 16, 1559682435),
	(48091, 0, 1559682435),
	(48105, 38, 1559682435),
	(48502, 0, 1559682435),
	(48637, 7, 1559682435),
	(48641, 0, 1559682435),
	(48698, 0, 1559682435),
	(48740, 0, 1559682435),
	(48931, 6, 1559682435),
	(48952, 68, 1559682435),
	(48958, 52, 1559682435),
	(49042, 56, 1559682435),
	(49091, 0, 1559682435),
	(49413, 4, 1559682435),
	(49444, 35, 1559682435),
	(50000, 32, 1559682435),
	(50299, 18, 1559682435),
	(50322, 2, 1559682435),
	(50483, 0, 1559682435),
	(50491, 59, 1559682435),
	(50506, 3, 1559682435),
	(50509, 81, 1559682435),
	(50512, 68, 1559682435),
	(50524, 46, 1559682435),
	(50540, 34, 1559682435),
	(50549, 8, 1559682435),
	(50562, 0, 1559682435),
	(50564, 73, 1559682435),
	(50568, 26, 1559682435),
	(50592, 5, 1559682435),
	(50598, 0, 1559682435),
	(50600, 0, 1559682435),
	(50605, 0, 1559682435),
	(50606, 0, 1559682435),
	(50665, 16, 1559682435),
	(50737, 34, 1559682435),
	(50776, 20, 1559682435),
	(50782, 63, 1559682435),
	(50853, 0, 1559682435),
	(50870, 59, 1559682435),
	(50874, 73, 1559682435),
	(50876, 28, 1559682435),
	(50985, 22, 1559682435),
	(50986, 22, 1559682435),
	(51023, 2, 1559682435),
	(51025, 40, 1559682435),
	(51034, 63, 1559682435),
	(51043, 14, 1559682435),
	(51064, 0, 1559682435),
	(51081, 68, 1559682435),
	(51092, 47, 1559682435),
	(51115, 57, 1559682435),
	(51153, 0, 1559682435),
	(51213, 13, 1559682435),
	(51252, 53, 1559682435),
	(51284, 49, 1559682435),
	(51305, 2, 1559682435),
	(51397, 1, 1559682435),
	(51411, 0, 1559682435),
	(51415, 0, 1559682435),
	(51431, 0, 1559682435),
	(51434, 0, 1559682435),
	(51497, 64, 1559682435),
	(51500, 13, 1559682435),
	(51528, 7, 1559682435),
	(51530, 14, 1559682435),
	(51559, 63, 1559682435),
	(51565, 65, 1559682435),
	(51578, 71, 1559682435),
	(51586, 0, 1559682435),
	(51609, 0, 1559682435),
	(51613, 0, 1559682435),
	(51621, 31, 1559682435),
	(51629, 0, 1559682435),
	(51633, 0, 1559682435),
	(51635, 0, 1559682435),
	(51637, 0, 1559682435),
	(51638, 0, 1559682435),
	(51659, 68, 1559682435),
	(51667, 16, 1559682435),
	(51670, 58, 1559682435),
	(51683, 14, 1559682435),
	(51686, 19, 1559682435),
	(51694, 49, 1559682435),
	(51709, 51, 1559682435),
	(51737, 38, 1559682435),
	(51781, 60, 1559682435),
	(51791, 48, 1559682435),
	(51794, 20, 1559682435),
	(51804, 49, 1559682435),
	(51815, 35, 1559682435),
	(51843, 59, 1559682435),
	(51853, 8, 1559682435),
	(51874, 73, 1559682435),
	(51919, 57, 1559682435),
	(51921, 58, 1559682435),
	(51988, 25, 1559682435),
	(52011, 32, 1559682435),
	(52059, 18, 1559682435),
	(52163, 54, 1559682435),
	(52165, 36, 1559682435),
	(52166, 54, 1559682435),
	(52180, 2, 1559682435),
	(52181, 23, 1559682435),
	(52196, 72, 1559682435),
	(52229, 69, 1559682435),
	(52297, 36, 1559682435),
	(52302, 13, 1559682435),
	(52309, 73, 1559682435),
	(52310, 7, 1559682435),
	(52325, 36, 1559682435),
	(52332, 89, 1559682435),
	(52333, 87, 1559682435),
	(52339, 0, 1559682435),
	(52340, 0, 1559682435),
	(52348, 55, 1559682435),
	(52375, 16, 1559682435),
	(52377, 33, 1559682435),
	(52381, 38, 1559682435),
	(52404, 84, 1559682435),
	(52415, 0, 1559682435),
	(52432, 57, 1559682435),
	(52847, 11, 1559682435),
	(52849, 0, 1559682435),
	(52856, 45, 1559682435),
	(52864, 36, 1559682435),
	(52869, 0, 1559682435),
	(52873, 0, 1559682435),
	(52874, 0, 1559682435),
	(52875, 0, 1559682435),
	(52879, 1, 1559682435),
	(52884, 0, 1559682435),
	(52939, 15, 1559682435),
	(53274, 22, 1559682435),
	(53313, 9, 1559682435),
	(53314, 50, 1559682435);
/*!40000 ALTER TABLE `world_quest` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
