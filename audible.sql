CREATE DATABASE  IF NOT EXISTS `audible` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `audible`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: audible
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.22-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add author',7,'add_author'),(26,'Can change author',7,'change_author'),(27,'Can delete author',7,'delete_author'),(28,'Can view author',7,'view_author'),(29,'Can add book',8,'add_book'),(30,'Can change book',8,'change_book'),(31,'Can delete book',8,'delete_book'),(32,'Can view book',8,'view_book'),(33,'Can add bookauthor',9,'add_bookauthor'),(34,'Can change bookauthor',9,'change_bookauthor'),(35,'Can delete bookauthor',9,'delete_bookauthor'),(36,'Can view bookauthor',9,'view_bookauthor'),(37,'Can add bookgenre',10,'add_bookgenre'),(38,'Can change bookgenre',10,'change_bookgenre'),(39,'Can delete bookgenre',10,'delete_bookgenre'),(40,'Can view bookgenre',10,'view_bookgenre'),(41,'Can add booklanguage',11,'add_booklanguage'),(42,'Can change booklanguage',11,'change_booklanguage'),(43,'Can delete booklanguage',11,'delete_booklanguage'),(44,'Can view booklanguage',11,'view_booklanguage'),(45,'Can add booknarrator',12,'add_booknarrator'),(46,'Can change booknarrator',12,'change_booknarrator'),(47,'Can delete booknarrator',12,'delete_booknarrator'),(48,'Can view booknarrator',12,'view_booknarrator'),(49,'Can add buys',13,'add_buys'),(50,'Can change buys',13,'change_buys'),(51,'Can delete buys',13,'delete_buys'),(52,'Can view buys',13,'view_buys'),(53,'Can add narrator',14,'add_narrator'),(54,'Can change narrator',14,'change_narrator'),(55,'Can delete narrator',14,'delete_narrator'),(56,'Can view narrator',14,'view_narrator'),(57,'Can add playtime',15,'add_playtime'),(58,'Can change playtime',15,'change_playtime'),(59,'Can delete playtime',15,'delete_playtime'),(60,'Can view playtime',15,'view_playtime'),(61,'Can add review',16,'add_review'),(62,'Can change review',16,'change_review'),(63,'Can delete review',16,'delete_review'),(64,'Can view review',16,'view_review'),(65,'Can add user',17,'add_user'),(66,'Can change user',17,'change_user'),(67,'Can delete user',17,'delete_user'),(68,'Can view user',17,'view_user');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (4,'pbkdf2_sha256$320000$v4WtVWby0qQYirDFOI8MkM$l3sOwZYRISCxSdpCCdI+qHflgyKk6VX5jfyXmUWakRg=','2022-01-11 12:30:38.967883',1,'admin','','','admin@example.com',1,1,'2022-01-11 12:23:58.494080'),(6,'pbkdf2_sha256$320000$QlqjMEgGtYrpjOSs3IKQgt$I64KFkkviIvA6TB6cyhhrX+kmISW/RPlT6c84ctfxgY=','2022-01-12 01:24:32.575234',0,'test','','','8',0,1,'2022-01-11 12:35:48.506969'),(7,'pbkdf2_sha256$320000$VGlyEzbRmQlvaVpuEh6ScY$gI9MCStsD+BEAT23JEvnG2dqU27dAqilejOIF8qJfVg=','2022-01-11 22:07:08.656499',0,'test2','','','',0,1,'2022-01-11 22:07:07.790241'),(9,'pbkdf2_sha256$320000$cSvLyfhu3QXrac9k5iKN3A$dkuhKhiq+/PgIfje25toYd8wPkjZK3YXBTodXpTnQ20=','2022-01-12 00:05:20.133082',0,'test3','','','',0,1,'2022-01-12 00:05:19.440484'),(10,'pbkdf2_sha256$320000$m6LKFwidBi4489cc2jEeV2$XLbBR1gHdiZKO9Y/PSDm9ukPB3w3fn9BlkHMx7VPlZs=','2022-01-12 00:09:16.275460',0,'thanosnos','','','',0,1,'2022-01-12 00:09:15.181429');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author` (
  `AuthorID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Country` enum('usa','uk','germany','france','greece','albania','brazil','turkey') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Bio` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Website` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`AuthorID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'William Shakespeare','uk','William Shakespeare (bapt. 26 April 1564 - 23 April 1616) was an..','https://www.shakespeare.org.uk/'),(2,'Agatha Christie','uk','Dame Agatha Mary Clarissa Christie, Lady Mallowan, DBE..','https://www.agathachristie.com/'),(3,'Barbara Cartland','uk','DameMary Barbara Hamilton Cartland, DBE, DStJ (9 July 1901 - 21 May 2000) was..','https://www.barbaracartland.com/'),(4,'J. K. Rowling','uk','Joanne Rowling born 31 July 1965), better known by..','https://www.jkrowling.com/'),(5,'Charles Dickens','uk','Charles John Huffam Dickens 7 February 1812 - 9 June 1870) was..','https://www.charlesdickenspage.com/'),(6,'Θεόδωρος Τσιμπούκης','greece','Τσιμπούκης Θεόδωρος. Γεννήθηκε το 1948 στη Λάρισα. Έλαβε..',''),(7,'Marel Robins','usa','Im this guy','');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `BookID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Length` int(11) NOT NULL,
  `ReleaseDate` date DEFAULT NULL,
  `Price` double NOT NULL,
  PRIMARY KEY (`BookID`),
  UNIQUE KEY `AK1_Customer_CustomerName` (`Title`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Basic information \nabout Customer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'Atomic','\"The #1 New York Times bestseller ...\"',511,'2018-06-12',7.99),(2,'Born a Crime','\"Stories from a South African Childhood ...\"',630,'2016-11-15',4.49),(3,'Dune','\"Dune is a 1965 science fiction ...\"',705,'1965-08-10',9.99),(4,'The Lost Apothecary','\"This is a historical fiction read that mixes ...\"',589,'2021-07-23',12.49),(5,'The Push','\"\"The Push\" is a thriller that demands to be ..\"',502,'2021-08-02',9.99),(6,'The Lord of the Rings','\"The Lord of the Rings is an epic high fantasy..\"',1460,'1954-07-29',16.79),(7,'ΗΛΕΚΤΡΟΜΑΓΝΗΤΙΚΟ ΠΕΔΙΟ','“Στο παρόν βιβλίο επιχειρείται μια -κατά το δυνατό..\"',1000,'2014-06-01',89.99),(8,'5 Second Rule','The title says it all',999,'2016-08-03',4.99);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `book_BEFORE_INSERT` BEFORE INSERT ON `book` FOR EACH ROW BEGIN
	IF (NEW.Length <= 0) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'invalid data';
	END IF;
    IF (NEW.Price <= 0) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'invalid data';
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `book_BEFORE_UPDATE` BEFORE UPDATE ON `book` FOR EACH ROW BEGIN
	IF (NEW.Length <= 0) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'invalid data';
	END IF;
    IF (NEW.Price <= 0) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'invalid data';
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `bookauthor`
--

DROP TABLE IF EXISTS `bookauthor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookauthor` (
  `BookID` int(11) NOT NULL,
  `AuthorID` int(11) NOT NULL,
  PRIMARY KEY (`BookID`,`AuthorID`),
  KEY `fkIdx_212` (`BookID`),
  KEY `fkIdx_216` (`AuthorID`),
  CONSTRAINT `FK_210` FOREIGN KEY (`BookID`) REFERENCES `book` (`BookID`),
  CONSTRAINT `FK_214` FOREIGN KEY (`AuthorID`) REFERENCES `author` (`AuthorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookauthor`
--

LOCK TABLES `bookauthor` WRITE;
/*!40000 ALTER TABLE `bookauthor` DISABLE KEYS */;
INSERT INTO `bookauthor` VALUES (1,3),(2,1),(3,2),(4,4),(5,1),(5,4),(7,6),(8,7);
/*!40000 ALTER TABLE `bookauthor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookgenre`
--

DROP TABLE IF EXISTS `bookgenre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookgenre` (
  `BookID` int(11) NOT NULL,
  `Genre` enum('fantasy','sci-fi','mystery','thriller','romance','western','classics','horror','fiction','novel','history') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`BookID`,`Genre`),
  KEY `fkIdx_298` (`BookID`),
  CONSTRAINT `FK_295` FOREIGN KEY (`BookID`) REFERENCES `book` (`BookID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookgenre`
--

LOCK TABLES `bookgenre` WRITE;
/*!40000 ALTER TABLE `bookgenre` DISABLE KEYS */;
INSERT INTO `bookgenre` VALUES (1,'fiction'),(2,'novel'),(3,'history'),(4,'horror'),(5,'romance'),(5,'horror'),(6,'horror'),(6,'fiction'),(7,'novel'),(8,'fiction');
/*!40000 ALTER TABLE `bookgenre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booklanguage`
--

DROP TABLE IF EXISTS `booklanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booklanguage` (
  `BookID` int(11) NOT NULL,
  `Language` enum('gr','en','de','fr','sq','br','tr') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`BookID`,`Language`),
  KEY `fkIdx_301` (`BookID`),
  CONSTRAINT `FK_299` FOREIGN KEY (`BookID`) REFERENCES `book` (`BookID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booklanguage`
--

LOCK TABLES `booklanguage` WRITE;
/*!40000 ALTER TABLE `booklanguage` DISABLE KEYS */;
INSERT INTO `booklanguage` VALUES (1,'en'),(2,'gr'),(3,'fr'),(4,'en'),(5,'gr'),(5,'de'),(6,'en'),(7,'en'),(8,'en');
/*!40000 ALTER TABLE `booklanguage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booknarrator`
--

DROP TABLE IF EXISTS `booknarrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booknarrator` (
  `NarratorID` int(11) NOT NULL,
  `BookID` int(11) NOT NULL,
  PRIMARY KEY (`NarratorID`,`BookID`),
  KEY `fkIdx_256` (`BookID`),
  KEY `fkIdx_259` (`NarratorID`),
  CONSTRAINT `FK_254` FOREIGN KEY (`BookID`) REFERENCES `book` (`BookID`),
  CONSTRAINT `FK_257` FOREIGN KEY (`NarratorID`) REFERENCES `narrator` (`NarratorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booknarrator`
--

LOCK TABLES `booknarrator` WRITE;
/*!40000 ALTER TABLE `booknarrator` DISABLE KEYS */;
INSERT INTO `booknarrator` VALUES (1,2),(1,3),(1,5),(3,1),(3,8),(4,4),(4,5),(6,7);
/*!40000 ALTER TABLE `booknarrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buys`
--

DROP TABLE IF EXISTS `buys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buys` (
  `BookID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `DateTime` datetime NOT NULL,
  PRIMARY KEY (`BookID`,`UserID`),
  KEY `fkIdx_186` (`BookID`),
  KEY `fkIdx_189` (`UserID`),
  CONSTRAINT `FK_184` FOREIGN KEY (`BookID`) REFERENCES `book` (`BookID`),
  CONSTRAINT `FK_187` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buys`
--

LOCK TABLES `buys` WRITE;
/*!40000 ALTER TABLE `buys` DISABLE KEYS */;
INSERT INTO `buys` VALUES (1,3,'2020-04-07 12:30:12'),(2,1,'2021-01-03 10:59:14'),(3,1,'2020-02-28 08:59:30'),(4,4,'2021-06-04 18:00:23'),(5,1,'2019-10-29 23:50:01'),(5,4,'2020-04-23 12:59:12'),(5,5,'2020-10-05 12:00:01'),(6,2,'2021-01-01 12:59:10'),(7,5,'2020-03-05 11:35:20');
/*!40000 ALTER TABLE `buys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `concatbook_v`
--

DROP TABLE IF EXISTS `concatbook_v`;
/*!50001 DROP VIEW IF EXISTS `concatbook_v`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `concatbook_v` AS SELECT 
 1 AS `BookID`,
 1 AS `Title`,
 1 AS `OverallStars`,
 1 AS `Price`,
 1 AS `ReleaseDate`,
 1 AS `NarratorNames`,
 1 AS `AuthorNames`,
 1 AS `Genres`,
 1 AS `Languages`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-01-11 12:24:48.699097','3','test',3,'',4,4),(2,'2022-01-11 12:30:58.401054','1','kachatzis',3,'',4,4),(3,'2022-01-11 12:30:58.465421','2','kostas615',3,'',4,4),(4,'2022-01-11 12:30:58.641465','5','test',3,'',4,4);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'web','author'),(8,'web','book'),(9,'web','bookauthor'),(10,'web','bookgenre'),(11,'web','booklanguage'),(12,'web','booknarrator'),(13,'web','buys'),(14,'web','narrator'),(15,'web','playtime'),(16,'web','review'),(17,'web','user');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-01-02 21:07:38.705436'),(2,'auth','0001_initial','2022-01-02 21:07:48.389735'),(3,'admin','0001_initial','2022-01-02 21:07:50.307492'),(4,'admin','0002_logentry_remove_auto_add','2022-01-02 21:07:50.354507'),(5,'admin','0003_logentry_add_action_flag_choices','2022-01-02 21:07:50.394504'),(6,'contenttypes','0002_remove_content_type_name','2022-01-02 21:07:51.174761'),(7,'auth','0002_alter_permission_name_max_length','2022-01-02 21:07:52.509093'),(8,'auth','0003_alter_user_email_max_length','2022-01-02 21:07:52.663095'),(9,'auth','0004_alter_user_username_opts','2022-01-02 21:07:52.701103'),(10,'auth','0005_alter_user_last_login_null','2022-01-02 21:07:53.269962'),(11,'auth','0006_require_contenttypes_0002','2022-01-02 21:07:53.302959'),(12,'auth','0007_alter_validators_add_error_messages','2022-01-02 21:07:53.343522'),(13,'auth','0008_alter_user_username_max_length','2022-01-02 21:07:53.462940'),(14,'auth','0009_alter_user_last_name_max_length','2022-01-02 21:07:53.834432'),(15,'auth','0010_alter_group_name_max_length','2022-01-02 21:07:54.061515'),(16,'auth','0011_update_proxy_permissions','2022-01-02 21:07:54.101521'),(17,'auth','0012_alter_user_first_name_max_length','2022-01-02 21:07:54.251568'),(18,'sessions','0001_initial','2022-01-02 21:07:54.760173');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('5mpk6av7nxnt881n659xwe5dxb32s39u','.eJxVjEEOwiAQRe_C2hCYIi0u3fcMZDozSNVAUtqV8e7apAvd_vfef6mI25rj1mSJM6uL8ur0u01IDyk74DuWW9VUy7rMk94VfdCmx8ryvB7u30HGlr9158FLoL536Mh358QUIHTIkgagwGBYWGwyCEEoOOtMkoFJxCIka9X7A_gGOMs:1n7SNM:d5As95zXvm-FH8rvqfJEyBGk79Lg85aMN-NcdZ8VbWA','2022-01-26 01:24:32.745225'),('d0wkllg4wrim35dgkybw3shuy2mcglh0','.eJxVjDEOwjAMRe-SGUWhOE7CyM4ZKjuOSQG1UtNOiLtDpQ6w_vfef5me1qX2aytzP4g5m6M5_G5M-VHGDcidxttk8zQu88B2U-xOm71OUp6X3f07qNTqt4aMnj0QqgPFE0RxSK4LLJJAFDASKbuEKlCYMWAgL4mTixo6JfP-AOsKOHM:1n4AuW:5oAhI75uz2WXfnOICNn9XW0ge4chUl7jfQsFDBtuJ00','2022-01-17 00:09:12.221855'),('etmvb25l0ggwhzia88onkx6oaft8j0rg','.eJxVjEEOwiAQRe_C2hCYIi0u3fcMZDozSNVAUtqV8e7apAvd_vfef6mI25rj1mSJM6uL8ur0u01IDyk74DuWW9VUy7rMk94VfdCmx8ryvB7u30HGlr9158FLoL536Mh358QUIHTIkgagwGBYWGwyCEEoOOtMkoFJxCIka9X7A_gGOMs:1n7SMZ:y0zpMzBkEe_t6w26pW4sIhv023FzQV8mI_GCuX8Kftc','2022-01-26 01:23:43.758819'),('j2v5was4i9wo1slw3afnny6o5vbbtb0z','.eJxVjEEOwiAQRe_C2hCYIi0u3fcMZDozSNVAUtqV8e7apAvd_vfef6mI25rj1mSJM6uL8ur0u01IDyk74DuWW9VUy7rMk94VfdCmx8ryvB7u30HGlr9158FLoL536Mh358QUIHTIkgagwGBYWGwyCEEoOOtMkoFJxCIka9X7A_gGOMs:1n7RQ3:VgtOcbJdArJqjW6KPG6K_l3dd4aopdIUYDwndwhNYKE','2022-01-26 00:23:15.608926');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `fullbook_v`
--

DROP TABLE IF EXISTS `fullbook_v`;
/*!50001 DROP VIEW IF EXISTS `fullbook_v`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `fullbook_v` AS SELECT 
 1 AS `BookID`,
 1 AS `Title`,
 1 AS `OverallStars`,
 1 AS `Price`,
 1 AS `ReleaseDate`,
 1 AS `NarratorName`,
 1 AS `AuthorName`,
 1 AS `Genre`,
 1 AS `Language`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `listeningtime_v`
--

DROP TABLE IF EXISTS `listeningtime_v`;
/*!50001 DROP VIEW IF EXISTS `listeningtime_v`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `listeningtime_v` AS SELECT 
 1 AS `UserID`,
 1 AS `ListeningTime`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `listens`
--

DROP TABLE IF EXISTS `listens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listens` (
  `UserID` int(11) NOT NULL,
  `BookID` int(11) NOT NULL,
  `PlayTimeID` int(11) NOT NULL,
  `DateTimeBegin` datetime NOT NULL,
  `DateTimeEnd` datetime DEFAULT NULL,
  PRIMARY KEY (`UserID`,`BookID`,`PlayTimeID`),
  KEY `FK_122` (`UserID`),
  KEY `FK_128` (`PlayTimeID`,`BookID`),
  CONSTRAINT `FK_120` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`),
  CONSTRAINT `FK_126` FOREIGN KEY (`PlayTimeID`, `BookID`) REFERENCES `playtime` (`PlayTimeID`, `BookID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listens`
--

LOCK TABLES `listens` WRITE;
/*!40000 ALTER TABLE `listens` DISABLE KEYS */;
INSERT INTO `listens` VALUES (1,1,1,'2021-10-05 16:13:34','2021-10-05 17:32:12'),(2,3,2,'2021-10-05 15:13:13','2021-10-05 16:32:43'),(3,1,1,'2021-10-01 15:35:49','2021-10-01 16:24:13'),(3,3,4,'2021-10-05 08:14:59','2021-10-05 10:19:50'),(4,3,4,'2021-10-05 19:13:52','2021-10-05 20:32:50');
/*!40000 ALTER TABLE `listens` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `listens_BEFORE_INSERT` BEFORE INSERT ON `listens` FOR EACH ROW BEGIN
	IF (NEW.DateTimeBegin > NEW.DateTimeEnd) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'invalid data';
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `listens_BEFORE_UPDATE` BEFORE UPDATE ON `listens` FOR EACH ROW BEGIN
	IF (NEW.DateTimeBegin > NEW.DateTimeEnd) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'invalid data';
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `narrator`
--

DROP TABLE IF EXISTS `narrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `narrator` (
  `NarratorID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Country` enum('usa','uk','germany','france','greece','albania','brazil','turkey') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`NarratorID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `narrator`
--

LOCK TABLES `narrator` WRITE;
/*!40000 ALTER TABLE `narrator` DISABLE KEYS */;
INSERT INTO `narrator` VALUES (1,'Scott Brick','usa'),(2,'Cassandra Campbell','usa'),(3,'Prentice Onayemi','usa'),(4,'Davina Porter','usa'),(5,'Bahni Turpin','usa'),(6,'Κωνσταντίνος Παπαλάμπρου','greece');
/*!40000 ALTER TABLE `narrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `overallstars_v`
--

DROP TABLE IF EXISTS `overallstars_v`;
/*!50001 DROP VIEW IF EXISTS `overallstars_v`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `overallstars_v` AS SELECT 
 1 AS `OverallStars`,
 1 AS `BookID`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `playtime`
--

DROP TABLE IF EXISTS `playtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playtime` (
  `PlayTimeID` int(11) NOT NULL AUTO_INCREMENT,
  `BookID` int(11) NOT NULL,
  `BeginTimestamp` int(11) NOT NULL,
  `EndTimestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`PlayTimeID`,`BookID`),
  KEY `fkIdx_199` (`BookID`),
  CONSTRAINT `FK_197` FOREIGN KEY (`BookID`) REFERENCES `book` (`BookID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playtime`
--

LOCK TABLES `playtime` WRITE;
/*!40000 ALTER TABLE `playtime` DISABLE KEYS */;
INSERT INTO `playtime` VALUES (1,1,2521,5312),(1,2,0,2968),(2,3,0,3212),(4,1,0,6435),(4,3,1251,4513);
/*!40000 ALTER TABLE `playtime` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `playtime_BEFORE_INSERT` BEFORE INSERT ON `playtime` FOR EACH ROW BEGIN
	IF (NEW.BeginTimestamp >= NEW.EndTimestamp) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'invalid data';
	END IF;
    IF (NEW.BeginTimestamp < 0 OR NEW.EndTimestamp < 0) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'invalid data';
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `playtime_BEFORE_UPDATE` BEFORE UPDATE ON `playtime` FOR EACH ROW BEGIN
	IF (NEW.BeginTimestamp >= NEW.EndTimestamp) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'invalid data';
	END IF;
    IF (NEW.BeginTimestamp < 0 OR NEW.EndTimestamp < 0) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'invalid data';
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `BookID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Stars` tinyint(1) NOT NULL,
  `Description` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DateTime` datetime NOT NULL,
  PRIMARY KEY (`BookID`,`UserID`),
  KEY `fkIdx_175` (`UserID`),
  KEY `fkIdx_178` (`BookID`),
  CONSTRAINT `FK_173` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`),
  CONSTRAINT `FK_176` FOREIGN KEY (`BookID`) REFERENCES `book` (`BookID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,2,5,'Excellent!!!','2020-04-03 12:59:12'),(2,2,5,'Try It NOW...','2020-12-05 16:45:31'),(2,8,4,'Good Book','2022-01-12 00:30:29'),(3,1,4,'OMG that was long','2021-02-21 11:21:45'),(4,3,1,'My ears are burning, go away','2021-06-15 19:28:39'),(4,8,4,'Davina, the best narrator on this platform','2022-01-12 02:40:39'),(5,8,4,'Deafening thoughts','2022-01-12 00:30:12'),(5,9,5,'Where do I write the review??','2022-01-12 00:08:59'),(5,11,4,'Good Read. Don\'t know about the audio thing','2022-01-12 02:05:56'),(5,12,5,'That\'s a nice audiobook to have in your library.\r\n5/5 would recommend to my deaf friends','2022-01-12 02:10:59'),(7,3,2,'Οι Ινδοί στο youtube τα λένε καλύτερα','2021-10-23 01:35:21'),(8,8,2,'It took me 4 seconds to close this!','2022-01-12 02:40:07'),(8,12,5,'Good Read','2022-01-12 02:21:00');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `review_BEFORE_INSERT` BEFORE INSERT ON `review` FOR EACH ROW BEGIN
	IF (NEW.Stars <= 0 OR NEW.Stars >5) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'invalid data';
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `review_BEFORE_UPDATE` BEFORE UPDATE ON `review` FOR EACH ROW BEGIN
	IF (NEW.Stars <= 0 OR NEW.Stars >5) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'invalid data';
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `reviews_v`
--

DROP TABLE IF EXISTS `reviews_v`;
/*!50001 DROP VIEW IF EXISTS `reviews_v`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `reviews_v` AS SELECT 
 1 AS `BookID`,
 1 AS `Title`,
 1 AS `UserID`,
 1 AS `FirstName`,
 1 AS `DateTime`,
 1 AS `Description`,
 1 AS `Stars`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LastName` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Username` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PasswordHash` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Konstantinos','Moratis','kmoratis','ee6ht451bd3f26e5tgd13fv...'),(2,'Dimitra','Petsa','petsadimitr','x46ht451bd3f26e5tgd13fv...'),(3,'Konstantinos','Chatzis','kachatzis','9g6ht451bd3f26e5tgd13fv...'),(4,'Giorgos','Karydas','geokar','5r6ht451bd3f26e5tgd13fv...'),(5,'Anastasis','Dimakis','dimdim','6e6ht451bd3f26e5tgd13fv...'),(7,'kostas','xat','kostas','kostas'),(8,'John','test','test','test'),(9,'Nikos','test2','test2','test2'),(11,'Milo','Yanopoulos','test3','test3'),(12,'Thanos','F','thanosnos','thanosnos');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'audible'
--

--
-- Dumping routines for database 'audible'
--

--
-- Final view structure for view `concatbook_v`
--

/*!50001 DROP VIEW IF EXISTS `concatbook_v`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `concatbook_v` AS select `fullbook_v`.`BookID` AS `BookID`,`fullbook_v`.`Title` AS `Title`,`fullbook_v`.`OverallStars` AS `OverallStars`,`fullbook_v`.`Price` AS `Price`,`fullbook_v`.`ReleaseDate` AS `ReleaseDate`,group_concat(distinct `fullbook_v`.`NarratorName` separator ', ') AS `NarratorNames`,group_concat(distinct `fullbook_v`.`AuthorName` separator ', ') AS `AuthorNames`,group_concat(distinct `fullbook_v`.`Genre` separator ', ') AS `Genres`,group_concat(distinct `fullbook_v`.`Language` separator ', ') AS `Languages` from `fullbook_v` group by `fullbook_v`.`BookID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `fullbook_v`
--

/*!50001 DROP VIEW IF EXISTS `fullbook_v`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `fullbook_v` AS select `book`.`BookID` AS `BookID`,`book`.`Title` AS `Title`,`overallstars_v`.`OverallStars` AS `OverallStars`,`book`.`Price` AS `Price`,`book`.`ReleaseDate` AS `ReleaseDate`,`narrator`.`Name` AS `NarratorName`,`author`.`Name` AS `AuthorName`,`bookgenre`.`Genre` AS `Genre`,`booklanguage`.`Language` AS `Language` from (((((`book` left join `overallstars_v` on(`overallstars_v`.`BookID` = `book`.`BookID`)) join (`bookauthor` join `author` on(`bookauthor`.`AuthorID` = `author`.`AuthorID`)) on(`bookauthor`.`BookID` = `book`.`BookID`)) join (`booknarrator` join `narrator` on(`booknarrator`.`NarratorID` = `narrator`.`NarratorID`)) on(`booknarrator`.`BookID` = `book`.`BookID`)) join `bookgenre` on(`bookgenre`.`BookID` = `book`.`BookID`)) join `booklanguage` on(`booklanguage`.`BookID` = `book`.`BookID`)) group by `book`.`BookID`,`overallstars_v`.`BookID`,`author`.`AuthorID`,`narrator`.`NarratorID`,`bookgenre`.`Genre`,`booklanguage`.`Language`,`booknarrator`.`NarratorID`,`bookauthor`.`BookID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `listeningtime_v`
--

/*!50001 DROP VIEW IF EXISTS `listeningtime_v`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `listeningtime_v` AS select `user`.`UserID` AS `UserID`,sum(`playtime`.`EndTimestamp` - `playtime`.`BeginTimestamp`) AS `ListeningTime` from (`user` join (`playtime` join `listens` on(`playtime`.`PlayTimeID` = `listens`.`PlayTimeID` and `playtime`.`BookID` = `listens`.`BookID`)) on(`user`.`UserID` = `listens`.`UserID`)) group by `user`.`UserID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `overallstars_v`
--

/*!50001 DROP VIEW IF EXISTS `overallstars_v`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `overallstars_v` AS select avg(`review`.`Stars`) AS `OverallStars`,`review`.`BookID` AS `BookID` from `review` group by `review`.`BookID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `reviews_v`
--

/*!50001 DROP VIEW IF EXISTS `reviews_v`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `reviews_v` AS select `book`.`BookID` AS `BookID`,`book`.`Title` AS `Title`,`user`.`UserID` AS `UserID`,`user`.`FirstName` AS `FirstName`,`review`.`DateTime` AS `DateTime`,`review`.`Description` AS `Description`,`review`.`Stars` AS `Stars` from ((`book` join `review` on(`review`.`BookID` = `book`.`BookID`)) join `user` on(`review`.`UserID` = `user`.`UserID`)) group by `book`.`BookID`,`book`.`BookID`,`user`.`UserID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-12  4:36:01
