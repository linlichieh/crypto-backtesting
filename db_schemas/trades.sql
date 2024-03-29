-- MySQL dump 10.13  Distrib 8.0.19, for osx10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: crypto_db
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.2-MariaDB-1:10.6.2+maria~focal

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `trades`
--

DROP TABLE IF EXISTS `trades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test_id` int(11) NOT NULL COMMENT 'test id',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: undone 1: done',
  `bid_price` decimal(18,8) unsigned NOT NULL COMMENT 'Bid price',
  `bid_volume` decimal(18,8) unsigned NOT NULL COMMENT 'Bid volume',
  `bid_fee` decimal(18,8) NOT NULL COMMENT 'Bid fee',
  `bought at` datetime NOT NULL COMMENT 'Bought time',
  `ask_price` decimal(18,8) unsigned NOT NULL COMMENT 'Ask price',
  `ask_volume` decimal(18,8) unsigned NOT NULL COMMENT 'Ask volume',
  `ask_fee` decimal(18,8) NOT NULL COMMENT 'Ask fee',
  `sold_at` datetime NOT NULL COMMENT 'Sold time',
  `cost` decimal(18,8) unsigned NOT NULL COMMENT 'Cost',
  `revenue` decimal(18,8) NOT NULL COMMENT 'Revenue',
  `profit` decimal(18,8) NOT NULL COMMENT 'Profit',
  `ROI` decimal(18,8) NOT NULL COMMENT 'Return on investment',
  `created_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Create time',
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Update time',
  PRIMARY KEY (`id`),
  KEY `test_id` (`test_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
