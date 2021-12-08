# ************************************************************
# Sequel Pro SQL dump
# Version 5446
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 8.0.26)
# Database: shop
# Generation Time: 2021-12-08 01:11:48 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table boardinit
# ------------------------------------------------------------

DROP TABLE IF EXISTS `boardinit`;

CREATE TABLE `boardinit` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `boardType` enum('default','gallery') NOT NULL DEFAULT 'default',
  `useImg` enum('0','1','2','3','4','5','6','7','8','9','10') NOT NULL DEFAULT '0',
  `useFile` enum('0','1','2') NOT NULL DEFAULT '0',
  `useComment` tinyint(1) NOT NULL DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

LOCK TABLES `boardinit` WRITE;
/*!40000 ALTER TABLE `boardinit` DISABLE KEYS */;

INSERT INTO `boardinit` (`id`, `title`, `boardType`, `useImg`, `useFile`, `useComment`, `createdAt`, `updatedAt`, `deletedAt`)
VALUES
	(1,'공지사항','default','3','2',0,'2021-12-02 10:40:24','2021-12-02 10:40:24',NULL),
	(2,'사용후기','gallery','5','1',1,'2021-12-02 10:40:24','2021-12-02 10:40:24',NULL),
	(3,'메인배너','gallery','3','0',0,'2021-12-02 10:41:01','2021-12-02 10:41:01',NULL);

/*!40000 ALTER TABLE `boardinit` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cate
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cate`;

CREATE TABLE `cate` (
  `id` varchar(50) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

LOCK TABLES `cate` WRITE;
/*!40000 ALTER TABLE `cate` DISABLE KEYS */;

INSERT INTO `cate` (`id`, `createdAt`, `updatedAt`, `deletedAt`)
VALUES
	('j1_1','2021-12-06 11:20:13','2021-12-06 11:20:13',NULL),
	('j1_11','2021-12-06 11:20:13','2021-12-06 11:20:13',NULL),
	('j1_13','2021-12-06 11:20:13','2021-12-06 11:20:13',NULL),
	('j1_15','2021-12-06 11:20:13','2021-12-06 11:20:13',NULL),
	('j1_17','2021-12-06 11:20:13','2021-12-06 11:20:13',NULL),
	('j1_19','2021-12-06 11:20:13','2021-12-06 11:20:13',NULL),
	('j1_2','2021-12-06 11:20:13','2021-12-06 11:20:13',NULL),
	('j1_20','2021-12-06 11:20:13','2021-12-06 11:20:13',NULL),
	('j1_22','2021-12-06 11:20:13','2021-12-06 11:20:13',NULL),
	('j1_23','2021-12-06 11:20:13','2021-12-06 11:20:13',NULL),
	('j1_24','2021-12-06 11:20:13','2021-12-06 11:20:13',NULL),
	('j1_25','2021-12-06 11:20:13','2021-12-06 11:20:13',NULL),
	('j1_3','2021-12-06 11:20:13','2021-12-06 11:20:13',NULL),
	('j1_4','2021-12-06 11:20:13','2021-12-06 11:20:13',NULL),
	('j1_6','2021-12-06 11:20:13','2021-12-06 11:20:13',NULL),
	('j1_7','2021-12-06 11:20:13','2021-12-06 11:20:13',NULL),
	('j1_9','2021-12-06 11:20:13','2021-12-06 11:20:13',NULL);

/*!40000 ALTER TABLE `cate` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table color
# ------------------------------------------------------------

DROP TABLE IF EXISTS `color`;

CREATE TABLE `color` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `code` varchar(7) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

LOCK TABLES `color` WRITE;
/*!40000 ALTER TABLE `color` DISABLE KEYS */;

INSERT INTO `color` (`id`, `name`, `code`, `createdAt`, `updatedAt`)
VALUES
	(1,'기본 컬러','#333333','2021-12-07 11:38:15','2021-12-07 11:38:15'),
	(2,'오렌지','#d1a11f','2021-12-07 11:38:53','2021-12-07 11:38:53'),
	(3,'아쿠아마린','#2f8283','2021-12-07 11:39:13','2021-12-07 11:39:13'),
	(4,'Green','#52d51a','2021-12-08 09:37:36','2021-12-08 09:37:36'),
	(5,'Orange Red','#c62c06','2021-12-08 09:37:52','2021-12-08 09:37:52'),
	(6,'Cyan ','#3ab6cf','2021-12-08 09:38:14','2021-12-08 09:38:14');

/*!40000 ALTER TABLE `color` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table section
# ------------------------------------------------------------

DROP TABLE IF EXISTS `section`;

CREATE TABLE `section` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `color` varchar(7) NOT NULL DEFAULT '#000000',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;

INSERT INTO `section` (`id`, `name`, `color`, `createdAt`, `updatedAt`)
VALUES
	(1,'특가상품','#9ab224','2021-12-07 13:20:40','2021-12-07 13:20:40'),
	(2,'New!!','#1a88ad','2021-12-07 16:37:33','2021-12-07 16:37:33'),
	(3,'임박할인','#db0f0f','2021-12-08 09:38:36','2021-12-08 09:38:36'),
	(4,'한정상품','#eace1a','2021-12-08 09:38:49','2021-12-08 09:38:49');

/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
