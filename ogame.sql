-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.14 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.1.0.5469
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for ogame
CREATE DATABASE IF NOT EXISTS `ogame` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ogame`;

-- Dumping structure for table ogame.aliances
CREATE TABLE IF NOT EXISTS `aliances` (
  `aliance_id` int(11) DEFAULT NULL,
  `aliance_name` varchar(50) DEFAULT NULL,
  `aliance_owner` int(11) DEFAULT NULL,
  `aliance_description` text,
  `created_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table ogame.aliances: 0 rows
DELETE FROM `aliances`;
/*!40000 ALTER TABLE `aliances` DISABLE KEYS */;
/*!40000 ALTER TABLE `aliances` ENABLE KEYS */;

-- Dumping structure for table ogame.factories
CREATE TABLE IF NOT EXISTS `factories` (
  `factory_id` int(11) DEFAULT NULL,
  `factory_name` varchar(50) DEFAULT NULL,
  `factory_description` text,
  `factory_picture` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table ogame.factories: 0 rows
DELETE FROM `factories`;
/*!40000 ALTER TABLE `factories` DISABLE KEYS */;
/*!40000 ALTER TABLE `factories` ENABLE KEYS */;

-- Dumping structure for table ogame.factories_overall
CREATE TABLE IF NOT EXISTS `factories_overall` (
  `factory_list_id` int(11) DEFAULT NULL,
  `planet_id` int(11) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `factory_id` int(11) DEFAULT NULL,
  `factory_level` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table ogame.factories_overall: 0 rows
DELETE FROM `factories_overall`;
/*!40000 ALTER TABLE `factories_overall` DISABLE KEYS */;
/*!40000 ALTER TABLE `factories_overall` ENABLE KEYS */;

-- Dumping structure for table ogame.fleet
CREATE TABLE IF NOT EXISTS `fleet` (
  `fleet_id` int(11) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `planet_id` int(11) DEFAULT NULL,
  `ship_id` int(11) DEFAULT NULL,
  `ships_total` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table ogame.fleet: 0 rows
DELETE FROM `fleet`;
/*!40000 ALTER TABLE `fleet` DISABLE KEYS */;
/*!40000 ALTER TABLE `fleet` ENABLE KEYS */;

-- Dumping structure for table ogame.galaxy
CREATE TABLE IF NOT EXISTS `galaxy` (
  `galaxy_id` int(11) DEFAULT NULL,
  `sol_system_id` int(11) DEFAULT NULL,
  `planet_id` int(11) DEFAULT NULL,
  `moon` int(11) DEFAULT NULL,
  `scrap` int(11) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `aliance_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table ogame.galaxy: 0 rows
DELETE FROM `galaxy`;
/*!40000 ALTER TABLE `galaxy` DISABLE KEYS */;
/*!40000 ALTER TABLE `galaxy` ENABLE KEYS */;

-- Dumping structure for table ogame.news_feeds
CREATE TABLE IF NOT EXISTS `news_feeds` (
  `feed_id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) DEFAULT NULL,
  `feed_category` int(11) DEFAULT NULL,
  `feed_text` text,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`feed_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table ogame.news_feeds: 0 rows
DELETE FROM `news_feeds`;
/*!40000 ALTER TABLE `news_feeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `news_feeds` ENABLE KEYS */;

-- Dumping structure for table ogame.news_feeds_categories
CREATE TABLE IF NOT EXISTS `news_feeds_categories` (
  `cat_id` int(11) DEFAULT NULL,
  `cat_name` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table ogame.news_feeds_categories: 0 rows
DELETE FROM `news_feeds_categories`;
/*!40000 ALTER TABLE `news_feeds_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `news_feeds_categories` ENABLE KEYS */;

-- Dumping structure for table ogame.planets
CREATE TABLE IF NOT EXISTS `planets` (
  `planet_id` int(11) NOT NULL AUTO_INCREMENT,
  `planet_name` varchar(50) NOT NULL DEFAULT '0',
  `planet_description` text NOT NULL,
  `planet_owner` int(11) NOT NULL,
  `colonized_date` date NOT NULL,
  `colonized_status` int(1) NOT NULL,
  PRIMARY KEY (`planet_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table ogame.planets: 0 rows
DELETE FROM `planets`;
/*!40000 ALTER TABLE `planets` DISABLE KEYS */;
/*!40000 ALTER TABLE `planets` ENABLE KEYS */;

-- Dumping structure for table ogame.planets_overall
CREATE TABLE IF NOT EXISTS `planets_overall` (
  `planet_stats_id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) DEFAULT NULL,
  `planet_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`planet_stats_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table ogame.planets_overall: 0 rows
DELETE FROM `planets_overall`;
/*!40000 ALTER TABLE `planets_overall` DISABLE KEYS */;
/*!40000 ALTER TABLE `planets_overall` ENABLE KEYS */;

-- Dumping structure for table ogame.research
CREATE TABLE IF NOT EXISTS `research` (
  `research_id` int(11) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `research_level` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table ogame.research: 0 rows
DELETE FROM `research`;
/*!40000 ALTER TABLE `research` DISABLE KEYS */;
/*!40000 ALTER TABLE `research` ENABLE KEYS */;

-- Dumping structure for table ogame.resources_overall
CREATE TABLE IF NOT EXISTS `resources_overall` (
  `resource_id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) DEFAULT NULL,
  `planet_id` int(11) DEFAULT NULL,
  `metal_level` int(11) DEFAULT NULL,
  `crystal_level` int(11) DEFAULT NULL,
  `deuterium level` int(11) DEFAULT NULL,
  PRIMARY KEY (`resource_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table ogame.resources_overall: 0 rows
DELETE FROM `resources_overall`;
/*!40000 ALTER TABLE `resources_overall` DISABLE KEYS */;
/*!40000 ALTER TABLE `resources_overall` ENABLE KEYS */;

-- Dumping structure for table ogame.ships
CREATE TABLE IF NOT EXISTS `ships` (
  `ship_id` int(11) DEFAULT NULL,
  `ship_name` varchar(50) DEFAULT NULL,
  `ship_description` varchar(50) DEFAULT NULL,
  `ship_picture` varchar(50) DEFAULT NULL,
  `ship_category` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table ogame.ships: 0 rows
DELETE FROM `ships`;
/*!40000 ALTER TABLE `ships` DISABLE KEYS */;
/*!40000 ALTER TABLE `ships` ENABLE KEYS */;

-- Dumping structure for table ogame.users
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` int(11) DEFAULT NULL,
  `user_email` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table ogame.users: 0 rows
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
