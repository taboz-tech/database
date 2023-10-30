-- MySQL dump 10.13  Distrib 8.0.34, for Linux (x86_64)
--
-- Host: localhost    Database: taedupulse
-- ------------------------------------------------------
-- Server version	8.0.34-0ubuntu0.22.04.1

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile1` varchar(15) NOT NULL,
  `mobile2` varchar(15) NOT NULL,
  `password` char(60) NOT NULL,
  `role` char(5) NOT NULL,
  `created_on` datetime NOT NULL,
  `last_login` datetime NOT NULL,
  `last_seen` datetime NOT NULL,
  `last_edited` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `account_status` char(1) NOT NULL DEFAULT '1',
  `deleted` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `mobile1` (`mobile1`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'Taboz','Mafura','admin@gmail.com','7012224570','7014547000','$2y$10$7rLSvRVyTQORapkDOqmkhetjF6H9lJHngr4hJMSM2lHObJbW5EQh6','Super','2017-01-04 22:19:16','2023-10-13 22:36:31','2023-10-13 23:19:02','2023-10-13 22:36:31','1','0'),(2,'Bruno','Denn','bruno@gmail.com','15788898550','245888888500','$2y$10$J8JbzxB6gRIfa.pwQmZlQe3A4KYlLDkBWSlI9gTPA3eyDLlMNOhR6','Basic','2021-04-19 23:37:20','2021-06-02 00:31:44','2021-06-01 22:39:19','2023-09-25 10:46:05','1','0'),(3,'Stephen','Mchan','stephen@gmail.com','70200000200','','$2y$10$BMts9/L0DedHjKbEX2s35evRiVKTfIfTAUGId92r037c3Ea1kmwES','Basic','2021-06-02 00:52:07','2021-06-02 01:10:30','2021-06-02 00:59:08','2021-06-01 19:25:30','1','0'),(4,'Taboz','Mafura','mafurataboz@gmail.com','07759234581','07153284081','$2y$10$a.ModJ4uzGvB9AxANyO0LOtTqTrWA3Q.et/tBz3SpZq12KJ2PcJkq','Basic','2023-06-24 13:39:33','2023-09-25 12:46:46','2023-09-25 07:21:50','2023-09-25 10:46:46','1','0'),(5,'Elain','Mafura','elainmafura@gmail.com','0775923458','0715328408','$2y$10$B3W5ulrg4Mcea6UxFZz.uutD4z6NLtnX14aveHtWjN40WlzQ0DOyu','Super','2023-06-25 14:08:54','2023-06-25 14:09:20','2023-06-25 17:04:35','2023-09-10 12:43:22','1','1'),(6,'Tavoz','Mafura','mafuratavoz@gmail.com','0773245612','0715328408','$2y$10$z.fac1VutF.y2b9jZeCAGO91gRohDUFQk/EkW3W9tV8sy6fk5Fycy','Super','2023-08-26 12:48:58','2023-08-26 12:49:25','0000-00-00 00:00:00','2023-08-26 10:49:25','1','0'),(7,'Update','UpdatedLastName','updatedemail@example.com','1234567890','9876543210','$2y$10$1J6fDNUrAwpzPK5f2x2kTeDV0xcveAHZ5WIyRxMEALcM5bYZ1p/HC','basic','2023-10-11 20:56:46','0000-00-00 00:00:00','0000-00-00 00:00:00','2023-10-12 10:11:50','0','0');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `asset_number` varchar(15) NOT NULL,
  `description` text,
  `serial_number` varchar(30) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `supplier` varchar(30) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `depreciation_method` varchar(30) DEFAULT NULL,
  `depreciation_rate` decimal(5,2) DEFAULT NULL,
  `owner` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `asset_number` (`asset_number`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` VALUES (3,'ASN202309000','IPT-Chinhoyi-Telone','235345387kj','masvingo','2023-09-27','hp',566.00,'Straight-Line',23.00,'taboz'),(5,'ASN202309002','reh','235345387kj8','masvingo','2023-09-27','uin',345.00,'Straight-Line',12.00,'taboz'),(6,'ASN202309003','gert','235345387kj','masvingo','2023-09-27','ret',456.00,'Straight-Line',12.00,'taboz'),(7,'ASN202309004','yui','235345387kj','masvingo','2023-09-27','oiu',456.00,'Straight-Line',13.00,'taboz');
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `dateAdded` datetime NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (8,'Fixed Costs','Fixed Costs','2023-09-24 14:32:30','2023-09-24 12:32:30'),(9,'Salary','Salary','2023-09-28 06:19:24','2023-09-28 04:34:18'),(14,'test','test','2023-09-28 06:46:38','2023-09-28 04:46:38');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `costs`
--

DROP TABLE IF EXISTS `costs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `costs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `category` varchar(30) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `dateAdded` datetime NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL,
  `paid` decimal(10,2) DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `costs`
--

LOCK TABLES `costs` WRITE;
/*!40000 ALTER TABLE `costs` DISABLE KEYS */;
INSERT INTO `costs` VALUES (11,'test',134.00,'Salary','test','USD','2023-09-14 14:50:36','2023-09-22 12:08:08',0,118.00,16.00),(13,'Salary_September',300.00,'Salary','Salary_September','USD','2023-09-16 11:24:41','2023-09-28 04:59:29',0,253.00,47.00),(14,'taboz',100.00,'Salary','taboz','USD','2023-11-14 14:07:17','2023-11-14 12:12:44',1,100.00,0.00),(15,'test',134.00,'Salary','test','USD','2023-11-14 14:50:36','2023-09-16 16:48:57',0,36.00,98.00),(16,'Salary_September',300.00,'Salary','Salary_September','USD','2023-11-16 11:24:41','2023-11-16 09:24:41',0,0.00,300.00),(17,'taboz',100.00,'Salary','taboz','USD','2023-12-14 14:07:17','2023-12-14 12:12:44',1,100.00,0.00),(18,'test',134.00,'Salary','test','USD','2023-12-14 14:50:36','2023-12-14 13:28:31',0,13.00,121.00),(19,'Salary_September',300.00,'Salary','Salary_September','USD','2023-12-16 11:24:41','2023-12-16 09:24:41',0,0.00,300.00),(20,'Test2',12000.00,'test','test','ZAR','2023-09-17 10:56:14','2023-09-17 08:56:14',0,0.00,12000.00),(22,'tavoznm',23.00,'Salary','atsku','RTGS','2023-09-19 00:02:01','2023-09-18 22:02:01',0,0.00,23.00),(30,'final',17.00,'test','final','ZAR','2023-09-28 05:54:27','2023-09-28 04:05:40',0,12.00,5.00),(31,'test final',100.00,'test','test','USD','2023-09-28 06:47:03','2023-09-28 04:47:48',0,15.00,85.00);
/*!40000 ALTER TABLE `costs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `rate` decimal(10,2) NOT NULL,
  `dateAdded` datetime NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (3,'ZAR',50.00,'2023-08-14 21:45:14','2023-08-19 09:54:01'),(4,'ZWL',1500.00,'2023-08-15 15:05:34','2023-08-19 09:34:52'),(5,'RTGS',100.00,'2023-09-08 13:44:50','2023-09-22 12:12:45'),(10,'USD',1.00,'2023-09-14 03:07:43','2023-09-14 01:07:43');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventlog`
--

DROP TABLE IF EXISTS `eventlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventlog` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `event` varchar(200) NOT NULL,
  `eventRowIdOrRef` varchar(20) DEFAULT NULL,
  `eventDesc` text,
  `eventTable` varchar(20) DEFAULT NULL,
  `staffInCharge` bigint unsigned NOT NULL,
  `eventTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=577 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventlog`
--

LOCK TABLES `eventlog` WRITE;
/*!40000 ALTER TABLE `eventlog` DISABLE KEYS */;
INSERT INTO `eventlog` VALUES (1,'Creation of new item','1','Addition of 69 quantities of a new item \'Demo Item\' with a unit price of &#8358;500.00 to stock','items',1,'2021-04-19 17:47:59'),(2,'New Transaction','765149033','1 items totalling &#8358;490.00 with reference number 765149033 was purchased','transactions',1,'2021-04-19 17:49:03'),(3,'Creation of new item','2','Addition of 669 quantities of a new item \'Toy Cars\' with a unit price of $24.00 to stock','items',1,'2021-06-01 13:57:58'),(4,'Creation of new item','3','Addition of 712 quantities of a new item \'Oats Crunchy Honey Roasted Cereal\' with a unit price of $12.00 to stock','items',1,'2021-06-01 13:59:54'),(5,'Creation of new item','4','Addition of 752 quantities of a new item \'KIND Breakfast Cereal\' with a unit price of $21.55 to stock','items',1,'2021-06-01 14:01:25'),(6,'New Transaction','23649438','1 items totalling $211.50 with reference number 23649438 was purchased','transactions',1,'2021-06-01 14:03:10'),(7,'Creation of new item','5','Addition of 1125 quantities of a new item \'Duck Brand Stretch Wrap\' with a unit price of $33.00 to stock','items',1,'2021-06-01 14:12:11'),(8,'Creation of new item','6','Addition of 1265 quantities of a new item \'Self Adhesive Clear Cookie Bags\' with a unit price of $8.00 to stock','items',1,'2021-06-01 14:14:09'),(9,'New Transaction','439972','1 items totalling $2,166.78 with reference number 439972 was purchased','transactions',1,'2021-06-01 14:15:41'),(10,'Creation of new item','7','Addition of 552 quantities of a new item \'Lightweight Satin Soft Fabric\' with a unit price of $12.00 to stock','items',1,'2021-06-01 14:19:42'),(11,'Creation of new item','8','Addition of 852 quantities of a new item \'Anderson&#039;s Black Flame Retardant Gossamer Fabric\' with a unit price of $12.00 to stock','items',1,'2021-06-01 14:21:08'),(12,'Creation of new item','9','Addition of 811 quantities of a new item \'Precut Quilting Sewing Fabric\' with a unit price of $9.00 to stock','items',1,'2021-06-01 14:25:01'),(13,'Creation of new item','10','Addition of 563 quantities of a new item \'Orgnisulmte USDA Organic Dragon Fruit Powder\' with a unit price of $9.00 to stock','items',1,'2021-06-01 14:30:45'),(14,'Creation of new item','11','Addition of 469 quantities of a new item \'KIND Whole Fruit Bars\' with a unit price of $11.00 to stock','items',1,'2021-06-01 14:31:45'),(15,'Creation of new item','12','Addition of 482 quantities of a new item \'Del Monte Fruit and Oats Snack Cups\' with a unit price of $11.55 to stock','items',1,'2021-06-01 14:33:14'),(16,'Creation of new item','13','Addition of 888 quantities of a new item \'Chicken of the Sea Sardines\' with a unit price of $20.06 to stock','items',1,'2021-06-01 14:34:28'),(17,'Creation of new item','14','Addition of 702 quantities of a new item \'Wild Sardines\' with a unit price of $31.95 to stock','items',1,'2021-06-01 14:35:38'),(18,'Creation of new item','15','Addition of 995 quantities of a new item \'MW Polar Smoked Brisling Sardines in Olive Oil\' with a unit price of $35.38 to stock','items',1,'2021-06-01 14:37:26'),(19,'Creation of new item','16','Addition of 196 quantities of a new item \'Bluetooth Headphones Over-Ear\' with a unit price of $23.91 to stock','items',1,'2021-06-01 14:38:54'),(20,'Creation of new item','17','Addition of 201 quantities of a new item \'Panasonic Full-Sized Headphones\' with a unit price of $13.77 to stock','items',1,'2021-06-01 14:39:55'),(21,'Creation of new item','18','Addition of 236 quantities of a new item \'Toshiba Canvio 1TB Portable External Hard Drive\' with a unit price of $62.55 to stock','items',1,'2021-06-01 16:25:16'),(22,'Creation of new item','19','Addition of 312 quantities of a new item \'Seagate BarraCuda 2TB Internal Hard Drive\' with a unit price of $71.50 to stock','items',1,'2021-06-01 16:26:55'),(23,'Creation of new item','20','Addition of 589 quantities of a new item \'Samsung BAR Plus USB 3.1 Flash Drive 128GB\' with a unit price of $24.59 to stock','items',1,'2021-06-01 16:28:30'),(24,'Creation of new item','21','Addition of 6540 quantities of a new item \'Multipurpose Copy Printer Paper\' with a unit price of $19.10 to stock','items',1,'2021-06-01 16:30:08'),(25,'New Transaction','03941028','1 items totalling $105.06 with reference number 03941028 was purchased','transactions',1,'2021-06-01 16:31:05'),(26,'New Transaction','872496','1 items totalling $226.38 with reference number 872496 was purchased','transactions',1,'2021-06-01 16:37:04'),(27,'Creation of new item','22','Addition of 2550 quantities of a new item \'Metronic Large Shipping Bags Poly Mailers\' with a unit price of $4.99 to stock','items',1,'2021-06-01 16:41:40'),(28,'New Transaction','374217','1 items totalling $429.14 with reference number 374217 was purchased','transactions',1,'2021-06-01 16:43:26'),(29,'New Transaction','18075809','1 items totalling $946.64 with reference number 18075809 was purchased','transactions',1,'2021-06-01 17:37:00'),(30,'New Transaction','192549','1 items totalling $254.52 with reference number 192549 was purchased','transactions',1,'2021-06-01 18:29:37'),(31,'New Transaction','641908','1 items totalling $344.42 with reference number 641908 was purchased','transactions',1,'2021-06-01 18:31:34'),(32,'New Transaction','2346405','1 items totalling $8,250.00 with reference number 2346405 was purchased','transactions',1,'2021-06-01 18:33:38'),(33,'New Transaction','983709261','1 items totalling $1,164.00 with reference number 983709261 was purchased','transactions',1,'2021-06-01 18:34:40'),(34,'Creation of new item','23','Addition of 369 quantities of a new item \'Crunchies Freeze-Dried Fruits Variety Pack\' with a unit price of $17.00 to stock','items',1,'2021-06-01 19:17:26'),(35,'New Transaction','32825746','1 items totalling $1,266.16 with reference number 32825746 was purchased','transactions',1,'2021-06-01 19:19:33'),(36,'New Transaction','895691278','1 items totalling $280.91 with reference number 895691278 was purchased','transactions',1,'2021-06-01 19:22:15'),(37,'New Transaction','1230158','1 items totalling $12,279.01 with reference number 1230158 was purchased','transactions',1,'2021-06-01 19:24:03'),(38,'New Transaction','069215370','1 items totalling $734.40 with reference number 069215370 was purchased','transactions',3,'2021-06-01 19:26:28'),(39,'Creation of new item','24','Addition of 20 quantities of a new item \'tavonga\' with a unit price of $25.00 to stock','items',1,'2023-06-21 07:12:48'),(40,'New Transaction','993658','1 items totalling $100.00 with reference number 993658 was purchased','transactions',1,'2023-06-22 07:23:12'),(41,'New Transaction','790358235','1 items totalling $175.00 with reference number 790358235 was purchased','transactions',1,'2023-06-23 08:43:36'),(42,'Creation of new item','25','Addition of 200 quantities of a new item \'taboz\' with a unit price of $55.00 to stock','items',1,'2023-06-23 10:37:58'),(43,'New Transaction','0315287','1 items totalling $385.00 with reference number 0315287 was purchased','transactions',1,'2023-06-23 14:47:01'),(44,'New Transaction','07612359','1 items totalling $125.00 with reference number 07612359 was purchased','transactions',1,'2023-06-25 09:54:28'),(45,'New Transaction','8395724','1 items totalling $25.00 with reference number 8395724 was purchased','transactions',1,'2023-06-25 10:35:01'),(46,'New Transaction','4072618','1 items totalling $25.00 with reference number 4072618 was purchased','transactions',1,'2023-06-25 10:47:43'),(47,'New Transaction','914019743','1 items totalling $275.00 with reference number 914019743 was purchased','transactions',1,'2023-06-25 10:58:52'),(48,'New Transaction','694570','1 items totalling $55.00 with reference number 694570 was purchased','transactions',1,'2023-06-25 11:04:28'),(49,'New Transaction','904725359','1 items totalling $55.00 with reference number 904725359 was purchased','transactions',1,'2023-06-25 11:06:06'),(50,'New Transaction','580952431','1 items totalling $55.00 with reference number 580952431 was purchased','transactions',1,'2023-06-25 11:06:38'),(51,'New Transaction','319324510','1 items totalling $55.00 with reference number 319324510 was purchased','transactions',1,'2023-06-25 11:08:04'),(52,'New Transaction','654209187','1 items totalling $55.00 with reference number 654209187 was purchased','transactions',1,'2023-06-25 11:10:15'),(53,'New Transaction','521492580','1 items totalling $55.00 with reference number 521492580 was purchased','transactions',1,'2023-06-25 11:10:49'),(54,'New Transaction','703861423','1 items totalling $55.00 with reference number 703861423 was purchased','transactions',1,'2023-06-25 11:39:37'),(55,'New Transaction','146579801','1 items totalling $165.00 with reference number 146579801 was purchased','transactions',1,'2023-06-26 06:13:46'),(56,'Item Update','24','Details of item with code \'30\' was updated','items',1,'2023-06-26 08:33:37'),(57,'Stock Update (New Stock)','24','<p>45 quantities of tavonga was added to stock</p>\n                Reason: <p>New items were purchased</p>','items',1,'2023-06-26 08:53:42'),(58,'Item Update','24','Details of item with code \'30\' was updated','items',1,'2023-06-26 10:08:50'),(59,'Creation of new categorie','11','Addition of \'maize\' into Categories with a price percentage of $12.40','categories',1,'2023-06-27 08:25:47'),(60,'Category Update',NULL,'Details of category with ID \'\' was updated','categories',1,'2023-06-27 11:58:21'),(61,'Category Update','9','Details of category with ID \'9\' was updated','categories',1,'2023-06-27 11:59:47'),(62,'Category Update','9','Details of category with ID \'9\' was updated','categories',1,'2023-06-27 12:00:41'),(63,'Creation of new categorie','12','Addition of \'Synthetic fertilizers\' into Categories with a price percentage of $8.90','categories',1,'2023-06-27 12:11:51'),(64,'Creation of new categorie','13','Addition of \'Soil conditioners\' into Categories with a price percentage of $6.70','categories',1,'2023-06-27 12:12:20'),(65,'Category Update','8','Details of category with ID \'8\' was updated','categories',1,'2023-06-27 12:37:07'),(66,'Category Update','9','Details of category with ID \'9\' was updated','categories',1,'2023-06-27 12:39:22'),(67,'Category Update','3','Details of category with ID \'3\' was updated','categories',1,'2023-06-27 12:41:57'),(68,'Category Update','3','Details of category with ID \'3\' was updated','categories',1,'2023-06-27 12:42:21'),(69,'Creation of new item','26','Addition of 23 quantities of a new item \'test1\' with a unit price of $12.00 and a unit cost of $25.00 to stock','items',1,'2023-06-29 14:40:35'),(70,'Creation of new item','27','Addition of 45 quantities of a new item \'maize\' with a unit price of $4.50 and a unit cost of $400.50 to stock','items',1,'2023-06-29 14:50:51'),(71,'Creation of new item','28','Addition of 23 quantities of a new item \'cousins\' with a unit price of $7.50 and a unit cost of $43.00 to stock','items',1,'2023-06-29 14:52:09'),(72,'Creation of new item','29','Addition of 20 quantities of a new item \'wheat\' with a unit price of $28.00 and a unit cost of $25.00 to stock','items',1,'2023-06-30 12:54:15'),(73,'New Transaction','520543','1 items totalling $168.00 with reference number 520543 was purchased','transactions',1,'2023-06-30 12:55:13'),(74,'Creation of new item','30','Addition of 75 quantities of a new item \'test123\' with a unit price of $35.14 and a unit cost of $32.00 to stock','items',1,'2023-07-02 09:10:37'),(75,'New Transaction','685310925','1 items totalling $1,194.76 with reference number 685310925 was purchased','transactions',1,'2023-07-02 09:15:23'),(76,'New Transaction','931287091','1 items totalling $500.00 with reference number 931287091 was purchased','transactions',1,'2023-07-03 08:54:01'),(77,'New Transaction','6029503','1 items totalling $392.00 with reference number 6029503 was purchased','transactions',1,'2023-07-03 08:56:54'),(78,'Stock Update (New Stock)','29','<p>10 quantities of wheat was added to stock</p>\n                Reason: <p>New items were purchased</p>','items',1,'2023-07-03 08:58:30'),(79,'Creation of new item','31','Addition of 30 quantities of a new item \'test cost\' with a unit price of $62.44 and a unit cost of $56.87 to stock','items',1,'2023-07-03 13:13:12'),(80,'Creation of new item','32','Addition of 50 quantities of a new item \'test cost\' with a unit price of $62.48 and a unit cost of $56.90 to stock','items',1,'2023-07-03 13:24:09'),(81,'New Transaction','416057265','1 items totalling $374.88 with reference number 416057265 was purchased','transactions',4,'2023-07-03 13:25:00'),(82,'New Transaction','035240543','1 items totalling $62.48 with reference number 035240543 was purchased','transactions',4,'2023-07-03 13:50:30'),(83,'New Transaction','534782161','1 items totalling $62.48 with reference number 534782161 was purchased','transactions',4,'2023-07-03 13:52:43'),(84,'New Transaction','1248134','1 items totalling $312.40 with reference number 1248134 was purchased','transactions',4,'2023-07-03 13:58:43'),(85,'New Transaction','363169075','1 items totalling $2,311.76 with reference number 363169075 was purchased','transactions',4,'2023-07-03 14:00:15'),(86,'Stock Update (New Stock)','32','<p>1 quantities of test cost was added to stock</p>\n                Reason: <p>New items were purchased</p>','items',1,'2023-07-03 14:04:21'),(87,'Stock Update (New Stock)','32','<p>1 quantities of test cost was added to stock</p>\n                Reason: <p>New items were purchased</p>','items',1,'2023-07-03 14:05:25'),(88,'New Transaction','2874932','1 items totalling $62.48 with reference number 2874932 was purchased','transactions',1,'2023-07-03 14:05:53'),(89,'New Transaction','523091','1 items totalling $62.48 with reference number 523091 was purchased','transactions',1,'2023-07-03 14:08:23'),(90,'Creation of new item','33','Addition of 23 quantities of a new item \'test cost1\' with a unit price of $37.03 and a unit cost of $34.00 to stock','items',1,'2023-07-03 14:21:02'),(91,'Stock Update (New Stock)','32','<p>57 quantities of test cost was added to stock</p>\n                Reason: <p>New items were purchased</p>','items',1,'2023-07-03 14:21:37'),(92,'New Transaction','26439195','1 items totalling $3,436.40 with reference number 26439195 was purchased','transactions',1,'2023-07-03 14:23:12'),(93,'New Transaction','128607483','2 items totalling $300.00 with reference number 128607483 was purchased','transactions',1,'2023-07-10 06:47:44'),(94,'New Transaction','473967314','1 items totalling $55.00 with reference number 473967314 was purchased','transactions',1,'2023-07-10 07:20:27'),(95,'New Transaction','590836748','1 items totalling $385.00 with reference number 590836748 was purchased','transactions',1,'2023-07-22 12:25:47'),(96,'New Transaction','526146179','1 items totalling $55.00 with reference number 526146179 was purchased','transactions',1,'2023-07-22 12:26:53'),(97,'New Transaction','417035261','1 items totalling $165.00 with reference number 417035261 was purchased','transactions',1,'2023-07-22 12:28:05'),(98,'New Transaction','6567092','1 items totalling $55.00 with reference number 6567092 was purchased','transactions',1,'2023-07-24 19:25:40'),(99,'Creation of new Student','3','Addition of terence mafura as a new student with ID \'CIC202307003\', Parent Name \'taboz\'and Address \'39 chitsere new mabvuku\' to the Students.','students',1,'2023-08-08 09:28:26'),(100,'Creation of new Student','4','Addition of terence mafura as a new student with ID \'CIC202307003\', Parent Name \'taboz\'and Address \'39 chitsere new mabvuku\' to the Students.','students',1,'2023-08-08 09:30:47'),(101,'Creation of new Student','5','Addition of terence mafura as a new student with ID \'CIC202307002\', Parent Name \'taboz\'and Address \'39 chitsere new mabvuku\' to the Students.','students',1,'2023-08-08 11:41:00'),(102,'Student Update','1','Details of student with Student ID \'CIC202307000\' was updated','students',1,'2023-08-08 12:46:50'),(103,'Student Update','1','Details of student with Student ID \'CIC202307000\' was updated','students',1,'2023-08-08 12:48:04'),(104,'Student Update','1','Details of student with Student ID \'CIC202307000\' was updated','students',1,'2023-08-08 12:48:45'),(105,'Student Update','1','Details of student with Student ID \'CIC202307000\' was updated','students',1,'2023-08-08 12:50:37'),(106,'Student Update','1','Details of student with Student ID \'CIC202307000\' was updated','students',1,'2023-08-08 12:54:54'),(107,'Student Update','1','Details of student with Student ID \'CIC202307000\' was updated','students',1,'2023-08-08 12:55:34'),(108,'Student Update','1','Details of student with Student ID \'CIC202307000\' was updated','students',1,'2023-08-08 12:56:51'),(109,'Student Update','1','Details of student with Student ID \'CIC202307000\' was updated','students',1,'2023-08-08 12:58:22'),(110,'Student Update','1','Details of student with Student ID \'CIC202307000\' was updated','students',1,'2023-08-08 13:21:41'),(111,'Student Update','1','Details of student with Student ID \'CIC202307000\' was updated','students',1,'2023-08-08 13:25:26'),(112,'Student Update','1','Details of student with Student ID \'CIC202307000\' was updated','students',1,'2023-08-08 13:28:17'),(113,'Student Update','4','Details of student with Student ID \'CIC202307003\' was updated','students',1,'2023-08-08 13:34:53'),(114,'Student Update','5','Details of student with Student ID \'CIC202307002\' was updated','students',1,'2023-08-08 13:35:13'),(115,'Student Update','1','Details of student with Student ID \'CIC202307000\' was updated','students',1,'2023-08-08 13:44:12'),(116,'Student Update','1','Details of student with Student ID \'CIC202307000\' was updated','students',1,'2023-08-08 14:03:46'),(117,'Student Update','1','Details of student with Student ID \'CIC202307000\' was updated','students',1,'2023-08-08 14:04:53'),(118,'Student Update','1','Details of student with Student ID \'CIC202307000\' was updated','students',1,'2023-08-08 14:16:14'),(119,'Student Update','1','Details of student with Student ID \'CIC202307000\' was updated','students',1,'2023-08-08 14:21:05'),(120,'Student Update','1','Details of student with Student ID \'CIC202307000\' was updated','students',1,'2023-08-08 14:28:55'),(121,'Student Update','4','Details of student with Student ID \'CIC202307003\' was updated','students',1,'2023-08-08 14:29:42'),(122,'Student Update','5','Details of student with Student ID \'CIC202307002\' was updated','students',1,'2023-08-08 14:30:22'),(123,'Student Update','4','Details of student with Student ID \'CIC202307003\' was updated','students',1,'2023-08-08 14:32:31'),(124,'Student Update','4','Details of student with Student ID \'CIC202307003\' was updated','students',1,'2023-08-08 14:32:52'),(125,'Student Update','1','Details of student with Student ID \'CIC202307000\' was updated','students',1,'2023-08-08 14:36:39'),(126,'Student Update','1','Details of student with Student ID \'CIC202307000\' was updated','students',1,'2023-08-08 14:36:52'),(127,'Creation of new Student','6','Addition of Tinovonga Mafura as a new student with ID \'CIC202307005\', Parent Name \'Tinovimba\'and Address \'39 chitsere new mabvuku\' to the Students.','students',1,'2023-08-10 09:38:12'),(128,'Student Update','1','Details of student with Student ID \'CIC202307000\' was updated','students',1,'2023-08-10 12:17:51'),(129,'Student Update','1','Details of student with Student ID \'CIC202307000\' was updated','students',1,'2023-08-10 12:18:10'),(130,'Student Update','1','Details of student with Student ID \'CIC202307000\' was updated','students',1,'2023-08-10 12:19:43'),(131,'Student Update','1','Details of student with Student ID \'CIC202307000\' was updated','students',1,'2023-08-10 12:19:48'),(132,'New Transaction','514148790','1 items totalling $1.00 with reference number 514148790 was purchased','transactions',1,'2023-08-12 09:03:57'),(133,'New Transaction','730685','1 items totalling $1.00 with reference number 730685 was purchased','transactions',1,'2023-08-12 09:31:41'),(134,'New Transaction','104395','2 items totalling $2.00 with reference number 104395 was purchased','transactions',1,'2023-08-12 09:45:35'),(135,'New Transaction','950964','2 items totalling $2.00 with reference number 950964 was purchased','transactions',1,'2023-08-12 09:46:15'),(136,'New Transaction','62102397','2 items totalling $6.00 with reference number 62102397 was purchased','transactions',1,'2023-08-12 09:48:10'),(137,'New Transaction','7856017','2 items totalling $6.00 with reference number 7856017 was purchased','transactions',1,'2023-08-12 09:57:27'),(138,'New Transaction','418503831','1 items totalling $1.00 with reference number 418503831 was purchased','transactions',1,'2023-08-12 10:04:55'),(139,'New Transaction','562857143','2 items totalling $2.00 with reference number 562857143 was purchased','transactions',1,'2023-08-12 10:05:41'),(140,'New Transaction','46578936','1 items totalling $3.00 with reference number 46578936 was purchased','transactions',1,'2023-08-12 11:35:43'),(141,'New Transaction','2168271','1 items totalling $1.00 with reference number 2168271 was purchased','transactions',1,'2023-08-12 11:43:16'),(142,'New Transaction','617507298','2 items totalling $2.00 with reference number 617507298 was purchased','transactions',1,'2023-08-12 11:46:18'),(143,'New Transaction','98643516','1 items totalling $1.00 with reference number 98643516 was purchased','transactions',1,'2023-08-12 11:48:33'),(144,'New Transaction','319084','2 items totalling $22.00 with reference number 319084 was purchased','transactions',1,'2023-08-12 11:52:10'),(145,'New Transaction','6685270','2 items totalling $5.00 with reference number 6685270 was purchased','transactions',1,'2023-08-12 12:44:40'),(146,'New Transaction','5009682','2 items totalling $5.00 with reference number 5009682 was purchased','transactions',1,'2023-08-12 12:45:58'),(147,'New Transaction','54092168','1 items totalling $1.00 with reference number 54092168 was purchased','transactions',1,'2023-08-12 12:59:56'),(148,'New Transaction','754803','2 items totalling $2.00 with reference number 754803 was purchased','transactions',1,'2023-08-12 13:00:44'),(149,'New Transaction','976018469','2 items totalling $9.00 with reference number 976018469 was purchased','transactions',1,'2023-08-12 13:13:32'),(150,'New Transaction','48255918','1 items totalling $1.00 with reference number 48255918 was purchased','transactions',1,'2023-08-12 13:16:43'),(151,'New Transaction','798516','2 items totalling $2.00 with reference number 798516 was purchased','transactions',1,'2023-08-12 13:18:02'),(152,'New Transaction','12686742','1 items totalling $1.00 with reference number 12686742 was purchased','transactions',1,'2023-08-12 13:20:49'),(153,'New Transaction','185359017','1 items totalling $1.00 with reference number 185359017 was purchased','transactions',1,'2023-08-12 13:23:44'),(154,'New Transaction','14390728','1 items totalling $1.00 with reference number 14390728 was purchased','transactions',1,'2023-08-12 13:26:24'),(155,'New Transaction','26590347','2 items totalling $2.00 with reference number 26590347 was purchased','transactions',1,'2023-08-12 13:27:07'),(156,'New Transaction','710925634','1 items totalling $1.00 with reference number 710925634 was purchased','transactions',1,'2023-08-12 13:28:51'),(157,'New Transaction','13892496','2 items totalling $2.00 with reference number 13892496 was purchased','transactions',1,'2023-08-12 13:29:36'),(158,'New Transaction','5480157','1 items totalling $1.00 with reference number 5480157 was purchased','transactions',1,'2023-08-12 13:45:57'),(159,'New Transaction','85328173','1 items totalling $1.00 with reference number 85328173 was purchased','transactions',1,'2023-08-12 13:47:51'),(160,'New Transaction','2553298','2 items totalling $2.00 with reference number 2553298 was purchased','transactions',1,'2023-08-12 13:54:45'),(161,'Creation of new Student','7','Addition of tanatswa mafura as a new student with ID \'CIC202307004\', Parent Name \'taboz\'and Address \'39 chitsere new mabvuku\' to the Students.','students',1,'2023-08-13 11:12:54'),(162,'Creation of new Grade','1','Addition of Form 1 as a new grade with teacher_id\'3\'to the Grades.','grades',1,'2023-08-13 11:22:54'),(163,'Creation of new Grade','2','Addition of Form 2 as a new grade with teacher_id\'4\'to the Grades.','grades',1,'2023-08-13 11:23:52'),(164,'Creation of new Grade','3','Addition of Form 3 as a new grade with teacher_id\'1\'to the Grades.','grades',1,'2023-08-13 11:24:16'),(165,'Creation of new Grade','4','Addition of Form 4 as a new grade with teacher_id\'2\'to the Grades.','grades',1,'2023-08-13 11:24:46'),(166,'Grade Update','1','Details of grade with Name \'Form 6\' was updated','grades',1,'2023-08-13 11:26:45'),(167,'Grade Update','1','Details of grade with Name \'Form 1\' was updated','grades',1,'2023-08-13 11:27:16'),(168,'Grade Update','4','Details of grade with Name \'Form 6\' was updated','grades',1,'2023-08-13 11:28:13'),(169,'Grade Update','4','Details of grade with Name \'Form 4\' was updated','grades',1,'2023-08-13 11:28:57'),(170,'Creation of new Student','8','Addition of Tino Mafura as a new student with ID \'CIC202307003\', Parent Name \'taboz\'and Address \'39 chitsere new mabvuku\' to the Students.','students',1,'2023-08-13 11:34:13'),(171,'Creation of new Grade','5','Addition of Form 4 as a new grade with teacher_id\'2\'to the Grades.','grades',1,'2023-08-13 11:36:45'),(172,'Creation of new Grade','6','Addition of Form 5 as a new grade with teacher_id\'5\'to the Grades.','grades',1,'2023-08-13 11:55:39'),(173,'Creation of new Grade','7','Addition of Form 6 as a new grade with teacher_id\'6\'to the Grades.','grades',1,'2023-08-13 11:55:49'),(174,'Creation of new Grade','8','Addition of Form 6 as a new grade with teacher_id\'6\'to the Grades.','grades',4,'2023-08-13 11:56:48'),(175,'Creation of new Student','9','Addition of mitchie mafura as a new student with ID \'CIC202307006\', Parent Name \'taboz\'and Address \'39 chitsere new mabvuku\' to the Students.','students',1,'2023-08-13 12:09:11'),(176,'Creation of new Student','10','Addition of mitchie mafura as a new student with ID \'CIC202307006\', Parent Name \'taboz\'and Address \'39 chitsere new mabvuku\' to the Students.','students',1,'2023-08-13 12:14:43'),(177,'Creation of new Student','11','Addition of mitchie mafura as a new student with ID \'CIC202307006\', Parent Name \'taboz\'and Address \'39 chitsere new mabvuku\' to the Students.','students',1,'2023-08-13 12:16:29'),(178,'Creation of new Student','12','Addition of mitchie mafura as a new student with ID \'CIC202307006\', Parent Name \'taboz\'and Address \'39 chitsere new mabvuku\' to the Students.','students',1,'2023-08-13 12:27:27'),(179,'Creation of new Teacher','1','Addition of taboz mafura as a new Teacher with  Address \'39 chitsere New Mabvuku\' and Subject \'\'to the Teachers.','teachers',1,'2023-08-14 07:27:58'),(180,'Creation of new Teacher','2','Addition of Taboz Mafura as a new Teacher with  Address \'39 Chitsere New Mabvuku Harare\' and Subject \'\'to the Teachers.','teachers',1,'2023-08-14 07:30:07'),(181,'Creation of new Teacher','3','Addition of Tinovonga Makomheke as a new Teacher with  Address \'39 Chitsere New Mabvuku Harare\' and Subject \'\'to the Teachers.','teachers',1,'2023-08-14 07:35:19'),(182,'Grade Update','1','Details of grade with Name \'Form 1i\' was updated','grades',1,'2023-08-14 07:36:30'),(183,'Grade Update','1','Details of grade with Name \'Form 1\' was updated','grades',1,'2023-08-14 07:36:40'),(184,'Teacher Update','','Details of Teacher with Teacher Name \'Taboz\' was updated','teachers',1,'2023-08-14 07:55:44'),(185,'Teacher Update','','Details of Teacher with Teacher Name \'Tavoz\' was updated','teachers',1,'2023-08-14 07:55:59'),(186,'Teacher Update','','Details of Teacher with Teacher Name \'taboz\' was updated','teachers',1,'2023-08-14 07:56:28'),(187,'Teacher Update','','Details of Teacher with Teacher Name \'taboz\' was updated','teachers',1,'2023-08-14 07:57:37'),(188,'Teacher Update','','Details of Teacher with Teacher Name \'Tavoz\' was updated','teachers',1,'2023-08-14 08:00:57'),(189,'Teacher Update','','Details of Teacher with Teacher Name \'taboz\' was updated','teachers',1,'2023-08-14 08:02:17'),(190,'Teacher Update','','Details of Teacher with Teacher Name \'Taboz\' was updated','teachers',1,'2023-08-14 08:02:35'),(191,'Teacher Update','1','Details of Teacher with Teacher Name \'Tavoz\' was updated','teachers',1,'2023-08-14 08:03:50'),(192,'New Transaction','320869152','2 fees totalling $4.00 with reference number 320869152 was paid','transactions',1,'2023-08-14 08:16:27'),(193,'Creation of new Cost','1','Addition of Fees as a new Cost with  Amount \'100\',Currency \'USD\' and Category \'Fees\'to the Costs.','costs',1,'2023-08-14 10:49:00'),(194,'Creation of new Cost','1','Addition of Fees as a new Cost with  Amount \'80\',Currency \'USD\' and Category \'Fees\'to the Costs.','costs',1,'2023-08-14 11:08:57'),(195,'Cost Update','1','Details of Cost with  Name \'Fees Taboz\' was updated','costs',1,'2023-08-14 11:11:36'),(196,'Creation of new Cost','2','Addition of drinks as a new Cost with  Amount \'56\',Currency \'USD\' and Category \'food and drinks\'to the Costs.','costs',1,'2023-08-14 11:12:44'),(197,'Creation of new Cost','3','Addition of stationery as a new Cost with  Amount \'567\',Currency \'USD\' and Category \'stationery and books\'to the Costs.','costs',1,'2023-08-14 11:13:28'),(198,'Creation of new Category','1','Addition of Fees as a new Category to the Categories.','categories',1,'2023-08-14 12:24:20'),(199,'Creation of new Category','2','Addition of supplies as a new Category to the Categories.','categories',1,'2023-08-14 12:24:34'),(200,'Category Update','1','Details of Category with  Name \'Fees 1\' was updated','categories',1,'2023-08-14 12:24:46'),(201,'Creation of new Category','3','Addition of supplies as a new Category to the Categories.','categories',1,'2023-08-14 12:25:00'),(202,'Creation of new Currency','1','Addition of USD with Rate 1867.89as a new Currency to the Currecies.','currencies',1,'2023-08-14 19:33:19'),(203,'Currency Update','1','Details of Currency with  Name \'USD\' was updated','currencies',1,'2023-08-14 19:43:24'),(204,'Creation of new Currency','2','Addition of RAR with Rate 89.45as a new Currency to the Currecies.','currencies',1,'2023-08-14 19:44:54'),(205,'Creation of new Currency','3','Addition of ZAR with Rate 45.34as a new Currency to the Currecies.','currencies',1,'2023-08-14 19:45:14'),(206,'Creation of new Income','1','Addition of Fees as a new Income with  Amount \'80\' and Currency \'USD\' to the Incomes.','incomes',1,'2023-08-15 10:16:30'),(207,'Creation of new Income','2','Addition of Good Hope Grant as a new Income with  Amount \'1000\' and Currency \'USD\' to the Incomes.','incomes',1,'2023-08-15 10:17:14'),(208,'Creation of new Income','3','Addition of Taboz Inve as a new Income with  Amount \'100000\' and Currency \'ZWL\' to the Incomes.','incomes',1,'2023-08-15 10:17:49'),(209,'Income Update','1','Details of Income with  Name \'Fees\' was updated','incomes',1,'2023-08-15 10:28:37'),(210,'Income Update','1','Details of Income with  Name \'Fees\' was updated','incomes',1,'2023-08-15 10:28:47'),(211,'New Transaction','016468','1 fees totalling $20.00 with reference number 016468 was paid','transactions',1,'2023-08-15 11:14:00'),(212,'New Transaction','01657093','2 fees totalling $14.00 with reference number 01657093 was paid','transactions',1,'2023-08-15 11:16:21'),(213,'New Transaction','6320579','2 fees totalling $2.00 with reference number 6320579 was paid','transactions',1,'2023-08-15 11:29:22'),(214,'Creation of new Grade','9','Addition of Form 1 A as a new grade with teacher_id\'5\'to the Grades.','grades',1,'2023-08-15 12:54:09'),(215,'Grade Update','1','Details of grade with Name \'Form 1 B\' was updated','grades',1,'2023-08-15 12:54:16'),(216,'Creation of new Teacher','4','Addition of tavoz mafura as a new Teacher with  Address \'35 chitsere\' and Subject \'\'to the Teachers.','teachers',1,'2023-08-15 12:58:06'),(217,'Creation of new Currency','4','Addition of USD-ZWL with Rate 1344.67as a new Currency to the Currecies.','currencies',1,'2023-08-15 13:05:34'),(218,'Currency Update','3','Details of Currency with  Name \'ZAR-ZWL\' was updated','currencies',1,'2023-08-15 13:05:48'),(219,'New Transaction','14510749','1 fees totalling $1.00 with reference number 14510749 was paid','transactions',1,'2023-08-15 13:27:24'),(220,'Creation of new Teacher','5','Addition of terence mafura as a new Teacher with  Address \'39 chitsrere\' and Subject \'\'to the Teachers.','teachers',1,'2023-08-16 13:01:20'),(221,'Teacher Update','5','Details of Teacher with Teacher Name \'terence\' was updated','teachers',1,'2023-08-16 13:01:39'),(222,'Creation of new Student','13','Addition of tabo9 mafura as a new student with ID \'CIC202307007\', Parent Name \'taboz\'and Address \'39 chitsere new mabvuku\' to the Students.','students',1,'2023-08-16 14:36:31'),(223,'Student Update','12','Details of student with Student ID \'CIC202307006\' was updated','students',1,'2023-08-16 14:40:07'),(224,'Student Update','7','Details of student with Student ID \'CIC202307004\' was updated','students',1,'2023-08-16 14:40:20'),(225,'Student Update','1','Details of student with Student ID \'CIC202307000\' was updated','students',1,'2023-08-16 14:40:31'),(226,'Student Update','5','Details of student with Student ID \'CIC202307002\' was updated','students',1,'2023-08-16 14:40:40'),(227,'Student Update','8','Details of student with Student ID \'CIC202307003\' was updated','students',1,'2023-08-16 14:40:48'),(228,'Student Update','2','Details of student with Student ID \'CIC202307001\' was updated','students',1,'2023-08-16 14:40:57'),(229,'Student Update','6','Details of student with Student ID \'CIC202307005\' was updated','students',1,'2023-08-16 14:41:05'),(230,'Student Update','12','Details of student with Student ID \'CIC202307006\' was updated','students',1,'2023-08-16 15:20:51'),(231,'Student Update','12','Details of student with Student ID \'CIC202307006\' was updated','students',1,'2023-08-16 15:21:04'),(232,'Student Update','12','Details of student with Student ID \'CIC202307006\' was updated','students',1,'2023-08-16 15:22:29'),(233,'Student Update','12','Details of student with Student ID \'CIC202307006\' was updated','students',1,'2023-08-16 15:30:20'),(234,'Student Update','12','Details of student with Student ID \'CIC202307006\' was updated','students',1,'2023-08-16 15:30:29'),(235,'Student Update','13','Details of student with Student ID \'CIC202307007\' was updated','students',1,'2023-08-16 18:59:12'),(236,'Student Update','12','Details of student with Student ID \'CIC202307006\' was updated','students',1,'2023-08-16 18:59:51'),(237,'Creation of new Grade','10','Addition of test 1 as a new grade with teacher_id\'3\'to the Grades.','grades',1,'2023-08-17 13:59:43'),(238,'Grade Update','9','Details of grade with Name \'Form 1 A\' was updated','grades',1,'2023-08-17 14:43:57'),(239,'Grade Update','9','Details of grade with Name \'Form 1 A\' was updated','grades',1,'2023-08-17 14:54:13'),(240,'Grade Update','1','Details of grade with Name \'Form 1 B\' was updated','grades',1,'2023-08-17 14:54:22'),(241,'Creation of new Cost','4','Addition of test 123 as a new Cost with  Amount \'67\',Currency \'USD\' and Category \'supplies\'to the Costs.','costs',1,'2023-08-17 15:11:40'),(242,'Creation of new Cost','5','Addition of anoteh test as a new Cost with  Amount \'45677\',Currency \'USD\' and Category \'Fees 1\'to the Costs.','costs',1,'2023-08-17 15:13:04'),(243,'Creation of new Cost','6','Addition of salary as a new Cost with  Amount \'100\',Currency \'USD-ZWL\' and Category \'supplies\'to the Costs.','costs',1,'2023-08-17 15:42:37'),(244,'Cost Update','5','Details of Cost with  Name \'anoteh test\' was updated','costs',1,'2023-08-17 18:38:27'),(245,'Income Update','1','Details of Income with  Name \'Fees\' was updated','incomes',1,'2023-08-18 06:04:30'),(246,'Income Update','1','Details of Income with  Name \'Fees\' was updated','incomes',1,'2023-08-18 06:04:41'),(247,'Income Update','1','Details of Income with  Name \'Fees\' was updated','incomes',1,'2023-08-18 06:04:53'),(248,'Income Update','1','Details of Income with  Name \'Fees\' was updated','incomes',1,'2023-08-18 08:32:11'),(249,'Bulk Fees Update','0','Bulk update of fees and owed fees for all students. New Fees: 5.00, Fees to Add: 5.00','students',1,'2023-08-18 08:43:47'),(250,'New Transaction','98418792','1 fees totalling $2.00 with reference number 98418792 was paid','transactions',1,'2023-08-18 10:23:58'),(251,'New Transaction','293164','1 fees totalling $1.00 with reference number 293164 was paid','transactions',1,'2023-08-18 10:26:55'),(252,'New Transaction','202671','1 fees totalling $1.00 with reference number 202671 was paid','transactions',1,'2023-08-18 10:36:25'),(253,'New Transaction','135940321','1 fees totalling $1.00 with reference number 135940321 was paid','transactions',1,'2023-08-18 10:50:54'),(254,'New Transaction','490752923','1 fees totalling $1.00 with reference number 490752923 was paid','transactions',1,'2023-08-18 10:51:54'),(255,'New Transaction','460145923','1 fees totalling $1.00 with reference number 460145923 was paid','transactions',1,'2023-08-18 10:53:25'),(256,'New Transaction','1621850','1 fees totalling $1.00 with reference number 1621850 was paid','transactions',1,'2023-08-18 11:20:33'),(257,'New Transaction','541926','1 fees totalling $1.00 with reference number 541926 was paid','transactions',1,'2023-08-18 11:22:33'),(258,'Currency Update','1','Details of Currency with  Name \'USD\' was updated','currencies',1,'2023-08-18 11:32:08'),(259,'Currency Update','4','Details of Currency with  Name \'ZWL\' was updated','currencies',1,'2023-08-18 11:32:24'),(260,'Currency Update','3','Details of Currency with  Name \'ZAR\' was updated','currencies',1,'2023-08-18 11:32:40'),(261,'New Transaction','0175290','1 fees totalling $1.00 with reference number 0175290 was paid','transactions',1,'2023-08-18 11:56:25'),(262,'New Transaction','159064047','1 fees totalling $1.00 with reference number 159064047 was paid','transactions',1,'2023-08-19 08:37:51'),(263,'New Transaction','516948','1 fees totalling $1.00 with reference number 516948 was paid','transactions',1,'2023-08-19 08:41:23'),(264,'Currency Update','4','Details of Currency with  Name \'ZWL\' was updated','currencies',1,'2023-08-19 09:34:52'),(265,'New Transaction','857352','1 fees totalling $3,000.00 with reference number 857352 was paid','transactions',1,'2023-08-19 09:52:40'),(266,'New Transaction','721048283','1 fees totalling $1,000.00 with reference number 721048283 was paid','transactions',1,'2023-08-19 09:53:29'),(267,'Currency Update','3','Details of Currency with  Name \'ZAR\' was updated','currencies',1,'2023-08-19 09:54:02'),(268,'New Transaction','357136984','1 fees totalling $100.00 with reference number 357136984 was paid','transactions',1,'2023-08-19 09:55:17'),(269,'New Transaction','603567','2 fees totalling $100.00 with reference number 603567 was paid','transactions',1,'2023-08-19 09:57:44'),(270,'Refund Processed',NULL,'Refund processed for transaction with ref: ','transactions',1,'2023-08-19 12:52:36'),(271,'Refund Processed',NULL,'Refund processed for transaction with ref: ','transactions',1,'2023-08-19 12:52:36'),(272,'Refund Processed','357136984','Refund processed for transaction with ref: 357136984','transactions',1,'2023-08-19 12:59:59'),(273,'Refund Processed','721048283','Refund processed for transaction with ref: 721048283','transactions',1,'2023-08-19 13:02:47'),(274,'Refund Processed','857352','Refund processed for transaction with ref: 857352','transactions',1,'2023-08-19 13:05:25'),(275,'Refund Processed','516948','Refund processed for transaction with ref: 516948','transactions',1,'2023-08-19 13:28:42'),(276,'Refund Processed','159064047','Refund processed for transaction with ref: 159064047','transactions',1,'2023-08-19 13:31:48'),(277,'Refund Processed','0175290','Refund processed for transaction with ref: 0175290','transactions',1,'2023-08-19 13:39:22'),(278,'Cost Update','5','Details of Cost with  Name \'anoteh test\' was updated','costs',1,'2023-08-20 08:41:52'),(279,'Cost Update','6','Details of Cost with  Name \'salary\' was updated','costs',1,'2023-08-20 08:42:08'),(280,'Creation of new Student','14','Addition of terence mafura as a new student with ID \'CIC202307008\', Parent Name \'taboz\'and Address \'39 chitsere new mabvuku\' to the Students.','students',1,'2023-08-20 09:36:12'),(281,'Creation of new Student','15','Addition of testnow mafura as a new student with ID \'CIC202307009\', Parent Name \'taboz\'and Address \'39 chitsere new mabvuku\' to the Students.','students',1,'2023-08-26 09:55:28'),(282,'Bulk Fees Update','0','Bulk update of fees and owed fees for all students. New Fees: 5.00, Fees to Add: 5.00','students',1,'2023-08-26 10:20:41'),(283,'Bulk Fees Update','0','Bulk update of fees and owed fees for all students. New Fees: 5.00, Fees to Add: 5.00','students',1,'2023-08-26 10:20:57'),(284,'Income Update','1','Details of Income with  Name \'Fees\' was updated','incomes',1,'2023-08-26 10:21:23'),(285,'New Transaction','387403','1 fees totalling $1.00 with reference number 387403 was paid','transactions',1,'2023-08-26 10:41:16'),(286,'New Transaction','81236159','1 fees totalling $1.00 with reference number 81236159 was paid','transactions',6,'2023-08-26 10:50:08'),(287,'Creation of new Student','16','Addition of test mafura as a new student with ID \'CIC2023070010\', Parent Name \'taboz\'and Address \'39 chitsere new mabvuku\' to the Students.','students',6,'2023-08-26 10:52:02'),(288,'New Transaction','61064931','1 fees totalling $1.00 with reference number 61064931 was paid','transactions',1,'2023-09-03 10:35:41'),(289,'New Transaction','146315','1 fees totalling $5.00 with reference number 146315 was paid','transactions',1,'2023-09-04 10:03:29'),(290,'New Transaction','5032174','1 fees totalling $5.00 with reference number 5032174 was paid','transactions',1,'2023-09-05 09:41:50'),(291,'Creation of new Student','17','Addition of terence mafura as a new student with ID \'TAB2309000\', Parent Name \'taboz\'and Address \'39 chitsere new mabvuku\' to the Students.','students',1,'2023-09-08 04:09:21'),(292,'Creation of new Student','18','Addition of terenc mafura as a new student with ID \'TAB2309001\', Parent Name \'taboz\'and Address \'39 chitsere new mabvuku\' to the Students.','students',1,'2023-09-08 04:15:54'),(293,'Creation of new Student','19','Addition of terence mafura as a new student with ID \'TAB2309002\', Parent Name \'taboz\'and Address \'39 chitsere new mabvuku\' to the Students.','students',1,'2023-09-08 05:03:14'),(294,'Creation of new Income','4','Addition of Reg_fee as a new Income with  Amount \'10\' and Currency \'USD\' to the Incomes.','incomes',1,'2023-09-08 05:13:58'),(295,'Creation of new Teacher','6','Addition of talain mafura as a new Teacher with  Address \'39 chitsere new mabvuku\',National ID \'77093551M77\' and Subject \'\'to the Teachers.','teachers',1,'2023-09-08 08:37:46'),(296,'Teacher Update','2','Details of Teacher with Teacher Name \'Taboz\' was updated','teachers',1,'2023-09-08 10:52:03'),(297,'Creation of new Student','20','Addition of ter mafura as a new student with ID \'TAB202309000\', Parent Name \'taboz\'and Address \'39 chitsere new mabvuku\' to the Students.','students',1,'2023-09-08 11:12:01'),(298,'Creation of new Currency','5','Addition of RTGS with Rate 1234as a new Currency to the Currecies.','currencies',1,'2023-09-08 11:44:50'),(299,'Creation of new Staff','1','Addition of Taboz Mafura as  new Staff with  Address \'39 Chitsere New Mabvuku\',National ID \'77093551M77\' and Email \'mafurataboz@gmail.com\'to Staff.','staffs',1,'2023-09-10 06:56:59'),(300,'Staff Update','','Details of Staff with Staff Name \'Taboz\' was updated','staffs',1,'2023-09-10 07:03:27'),(301,'Staff Update','','Details of Staff with Staff Name \'Taboz\' was updated','staffs',1,'2023-09-10 07:11:28'),(302,'Staff Update','','Details of Staff with Staff Name \'Taboz\' was updated','staffs',1,'2023-09-10 07:11:53'),(303,'Staff Update','','Details of Staff with Staff Name \'Taboz\' was updated','staffs',1,'2023-09-10 07:13:53'),(304,'Staff Update','','Details of Staff with Staff Name \'Taboz\' was updated','staffs',1,'2023-09-10 07:14:29'),(305,'Staff Update','','Details of Staff with Staff Name \'Taboz\' was updated','staffs',1,'2023-09-10 07:16:11'),(306,'Staff Update','1','Details of Staff with Staff Name \'Taboz\' was updated','staffs',1,'2023-09-10 07:17:00'),(307,'Creation of new Staff','2','Addition of Tavoz Mafura as  new Staff with  Address \'39 Chitsere New Mabvuku\',National ID \'77093551M77\' and Email \'mafuratavo@gmail.com\'to Staff.','staffs',1,'2023-09-10 07:19:08'),(308,'Staff Update','1','Details of Staff with Staff Name \'Taboz\' was updated','staffs',1,'2023-09-10 07:19:43'),(309,'Staff Update','1','Details of Staff with Staff Name \'Taboz\' was updated','staffs',1,'2023-09-10 07:20:04'),(310,'Staff Update','2','Details of Staff with Staff Name \'Tavoz\' was updated','staffs',1,'2023-09-10 07:21:04'),(311,'Staff Update','2','Details of Staff with Staff Name \'Tavoz\' was updated','staffs',1,'2023-09-10 07:27:07'),(312,'Staff Update','2','Details of Staff with Staff Name \'Tavoz\' was updated','staffs',1,'2023-09-10 07:28:33'),(313,'Creation of new Staff','3','Addition of taboz marezi as  new Staff with  Address \'39 Chitsere New Mabvuku\',National ID \'77093551M77\' and Email \'mafurataboz@gamil.com\'to Staff.','staffs',1,'2023-09-10 07:30:46'),(314,'Creation of new Teacher','7','Addition of Tafadzwa Mafura as a new Teacher with  Address \'39 Chitsere New Mabvuku\',National ID \'77093551M77\' and Subject \'Mathematics\'to the Teachers.','teachers',1,'2023-09-10 14:32:03'),(315,'Creation of new Staff','4','Addition of Terence Mafura as  new Staff with  Address \'39 Chitsere New Mabvuku\',National ID \'77093551M77\', Salary of \'50\' and Email \'mafuraterence@gmail.com\'to Staff.','staffs',1,'2023-09-10 17:36:48'),(316,'Staff Update','2','Details of Staff with Staff Name \'Tavoz\' was updated','staffs',1,'2023-09-10 17:37:05'),(317,'Staff Update','3','Details of Staff with Staff Name \'taboz\' was updated','staffs',1,'2023-09-12 15:41:17'),(318,'Creation of new Currency','6','Addition of USD with Rate 1as a new Currency to the Currecies.','currencies',1,'2023-09-14 00:47:36'),(319,'Creation of new Currency','7','Addition of Usd with Rate 1as a new Currency to the Currecies.','currencies',1,'2023-09-14 00:59:34'),(320,'Creation of new Currency','8','Addition of USD with Rate 1as a new Currency to the Currecies.','currencies',1,'2023-09-14 01:06:18'),(321,'Creation of new Currency','9','Addition of USD with Rate 1as a new Currency to the Currecies.','currencies',1,'2023-09-14 01:07:19'),(322,'Creation of new Currency','10','Addition of USD with Rate 1as a new Currency to the Currecies.','currencies',1,'2023-09-14 01:07:43'),(323,'New Payroll','PSL7337','taboz marezi (Staff ID: TAC202309000) in the Mathematics department received a payroll of $67.00 for September. Deductions include $0.00 for income tax and $0.00 for health insurance.','payrolls',1,'2023-09-14 01:58:38'),(324,'New Payroll','PSL8138','Tavoz Mafura (Staff ID: TAC202309001) in the Geography department received a payroll of $56.00 for September. Deductions include $0.00 for income tax and $0.00 for health insurance.','payrolls',1,'2023-09-14 02:04:56'),(325,'New Payroll','PSL3672','taboz marezi (Staff ID: TAC202309000) in the Mathematics department received a payroll of $67.00 for September. Deductions include $0.00 for income tax and $0.00 for health insurance.','payrolls',1,'2023-09-14 02:09:30'),(326,'New Payroll','PSL48574','taboz marezi (Staff ID: TAC202309000) in the Mathematics department received a payroll of $67.00 for September. Deductions include $0.00 for income tax and $0.00 for health insurance.','payrolls',1,'2023-09-14 02:10:53'),(327,'New Payroll','PSL76324','Tavoz Mafura (Staff ID: TAC202309001) in the Geography department received a payroll of $56.00 for September. Deductions include $0.00 for income tax and $0.00 for health insurance.','payrolls',1,'2023-09-14 02:13:32'),(328,'Creation of new Category','4','Addition of Salary as a new Category to the Categories.','categories',1,'2023-09-14 09:04:37'),(329,'Creation of new Cost','7','Addition of Salary_September as a new Cost with  Amount \'234\',Currency \'USD\' and Category \'Salary\'to the Costs.','costs',1,'2023-09-14 09:05:33'),(330,'Creation of new Cost','8','Addition of Salaries_September as a new Cost with  Amount \'100\',Currency \'USD\' and Category \'Salary\'to the Costs.','costs',1,'2023-09-14 11:34:19'),(331,'Creation of new Cost','9','Addition of Salary_September as a new Cost with  Amount \'100\',Currency \'USD\' and Category \'Salary\'to the Costs.','costs',1,'2023-09-14 12:00:10'),(332,'Creation of new Cost','10','Addition of taboz as a new Cost with  Amount \'100\',Currency \'USD\' and Category \'Salary\'to the Costs.','costs',1,'2023-09-14 12:07:17'),(333,'Creation of new Cost','11','Addition of test as a new Cost with  Amount \'134\',Currency \'USD\' and Category \'Salary\'to the Costs.','costs',1,'2023-09-14 12:50:37'),(334,'Cost Update','10','Details of Cost with  Name \'taboz\' was updated','costs',1,'2023-09-14 13:13:25'),(335,'Cost Update','11','Cost with Name \'test\' was paid by amount \'1\'','costs',1,'2023-09-14 13:15:24'),(336,'Cost Update','11','Cost with Name \'test\' was paid by amount \'1\'','costs',1,'2023-09-14 13:15:33'),(337,'Cost Update','11','Cost with Name \'test\' was paid by amount \'1\'','costs',1,'2023-09-14 13:16:03'),(338,'Cost Update','11','Cost with Name \'test\' was paid by amount \'1\'','costs',1,'2023-09-14 13:16:30'),(339,'Cost Update','11','Cost with Name \'test\' was paid by amount \'5\'','costs',1,'2023-09-14 13:23:37'),(340,'Cost Update','11','Cost with Name \'test\' was paid by amount \'3\'','costs',1,'2023-09-14 13:28:32'),(341,'Creation of new Cost','12','Addition of Salary_September as a new Cost with  Amount \'150\',Currency \'USD\' and Category \'Salary\'to the Costs.','costs',1,'2023-09-14 13:32:44'),(342,'New Payroll','PSL6794','taboz marezi (Staff ID: TAC202309000) in the Mathematics department received a payroll of $67.00 for September. Deductions include $0.00 for income tax and $0.00 for health insurance.','payrolls',1,'2023-09-15 08:06:30'),(343,'New Payroll','PSL6354','Tavoz Mafura (Staff ID: TAC202309001) in the Geography department received a payroll of $56.00 for September. Deductions include $0.00 for income tax and $0.00 for health insurance.','payrolls',1,'2023-09-15 08:06:31'),(344,'Cost Update','12','Details of Cost with  Name \'Salary_September\' was updated','costs',1,'2023-09-15 08:51:19'),(345,'Cost Update','12','Details of Cost with  Name \'Salary_September\' was updated','costs',1,'2023-09-15 08:51:39'),(346,'Cost Update','12','Details of Cost with  Name \'Salary_September\' was updated','costs',1,'2023-09-15 08:51:53'),(347,'Cost Update','12','Details of Cost with  Name \'Salary_September\' was updated','costs',1,'2023-09-15 08:52:49'),(348,'New Payroll','PSL1479','taboz marezi (Staff ID: TAC202309000) in the Mathematics department received a payroll of $67.00 for September. Deductions include $0.00 for income tax and $0.00 for health insurance.','payrolls',1,'2023-09-15 08:54:20'),(349,'New Payroll','PSL0193','taboz marezi (Staff ID: TAC202309000) in the Mathematics department received a payroll of $67.00 for September. Deductions include $0.00 for income tax and $0.00 for health insurance.','payrolls',1,'2023-09-15 08:57:51'),(350,'New Payroll','PSL3671','taboz marezi (Staff ID: TAC202309000) in the Mathematics department received a payroll of $67.00 for September. Deductions include $0.00 for income tax and $0.00 for health insurance.','payrolls',1,'2023-09-15 08:58:45'),(351,'New Payroll','PSL86156','taboz marezi (Staff ID: TAC202309000) in the Mathematics department received a payroll of $67.00 for September. Deductions include $0.00 for income tax and $0.00 for health insurance.','payrolls',1,'2023-09-15 09:24:41'),(352,'New Payroll','PSL2164','taboz marezi (Staff ID: TAC202309000) in the Mathematics department received a payroll of $67.00 for September. Deductions include $0.00 for income tax and $0.00 for health insurance.','payrolls',1,'2023-09-15 09:27:04'),(353,'New Payroll','PSL1983','  (Staff ID: ) in the  department received a payroll of $0.00 for September. Deductions include $0.00 for income tax and $0.00 for health insurance.','payrolls',1,'2023-09-15 09:37:19'),(354,'New Payroll','PSL78782','  (Staff ID: ) in the  department received a payroll of $0.00 for September. Deductions include $0.00 for income tax and $0.00 for health insurance.','payrolls',1,'2023-09-15 09:40:14'),(355,'New Payroll','PSL42623','  (Staff ID: ) in the  department received a payroll of $0.00 for September. Deductions include $0.00 for income tax and $0.00 for health insurance.','payrolls',1,'2023-09-15 09:43:56'),(356,'New Payroll','PSL91368','  (Staff ID: ) in the  department received a payroll of $0.00 for September. Deductions include $0.00 for income tax and $0.00 for health insurance.','payrolls',1,'2023-09-15 09:50:15'),(357,'New Payroll','PSL3109','  (Staff ID: ) in the  department received a payroll of $0.00 for September. Deductions include $0.00 for income tax and $0.00 for health insurance.','payrolls',1,'2023-09-15 09:50:15'),(358,'New Payroll','PSL7063','  (Staff ID: ) in the  department received a payroll of $0.00 for September. Deductions include $0.00 for income tax and $0.00 for health insurance.','payrolls',1,'2023-09-15 10:01:45'),(359,'New Payroll','PSL4459','  (Staff ID: ) in the  department received a payroll of $0.00 for September. Deductions include $0.00 for income tax and $0.00 for health insurance.','payrolls',1,'2023-09-15 10:04:40'),(360,'New Payroll','PSL83063','taboz marezi (Staff ID: TAC202309000) in the Mathematics department received a payroll of $67.00 for September. Deductions include $0.00 for income tax and $0.00 for health insurance.','payrolls',1,'2023-09-15 10:07:41'),(361,'New Payroll','PSL98442','taboz marezi (Staff ID: TAC202309000) in the Mathematics department received a payroll of $67.00 for September. Deductions include $0.00 for income tax and $0.00 for health insurance.','payrolls',1,'2023-09-15 10:10:16'),(362,'New Payroll','PSL49273','taboz marezi (Staff ID: TAC202309000) in the Mathematics department received a payroll of $67.00 for September. Deductions include $0.00 for income tax and $0.00 for health insurance.','payrolls',1,'2023-09-15 10:10:34'),(363,'New Payroll','PSL3704','taboz marezi (Staff ID: TAC202309000) in the Mathematics department received a payroll of $67.00 for September. Deductions include $0.00 for income tax and $0.00 for health insurance.','payrolls',1,'2023-09-15 10:27:27'),(364,'New Payroll','PSL56216','Tavoz Mafura (Staff ID: TAC202309001) in the Geography department received a payroll of $56.00 for September. Deductions include $0.00 for income tax and $0.00 for health insurance.','payrolls',1,'2023-09-15 14:07:06'),(365,'Creation of new Teacher','8','Addition of taboz marezi as a new Teacher with  Address \'39 Chitsere New Mabvuku\',National ID \'77093551M77\' and Subject \'Maths\'to the Teachers.','teachers',1,'2023-09-16 07:35:35'),(366,'Cost Update','12','Details of Cost with  Name \'Salary_September\' was updated','costs',1,'2023-09-16 08:26:58'),(367,'Cost Update','12','Details of Cost with  Name \'Salary_September\' was updated','costs',1,'2023-09-16 08:27:16'),(368,'Creation of new Staff','5','Addition of test test as  new Staff with  Address \'39 chitsere New Mabvuku\',National ID \'77093551M77\', Salary of \'45\' and Email \'test@gmail.com\'to Staff.','staffs',1,'2023-09-16 08:52:23'),(369,'Creation of new Teacher','9','Addition of test test as a new Teacher for \'test\'to the Teachers.','teachers',1,'2023-09-16 08:52:52'),(370,'Teacher Update','9','Details of Teacher with Teacher Name \'test1\' was updated','teachers',1,'2023-09-16 08:55:02'),(371,'Creation of new Cost','13','Addition of Salary_September as a new Cost with Amount \'300\', Currency \'USD\' and Category \'Salary\' to the Costs.','costs',1,'2023-09-16 09:24:41'),(372,'Creation of new Category','5','Addition of test as a new Category to the Categories.','categories',1,'2023-09-16 09:48:13'),(373,'Creation of new Category','6','Addition of get as a new Category to the Categories.','categories',1,'2023-09-16 09:48:21'),(374,'Creation of new Income','5','Addition of test as a new Income with  Amount \'2\' and Currency \'RTGS\' to the Incomes.','incomes',1,'2023-09-16 12:11:22'),(375,'Cost Update','11','Cost with Name \'test\' was paid by amount \'100\'','costs',1,'2023-09-16 16:47:57'),(376,'Cost Update','15','Cost with Name \'test\' was paid by amount \'23\'','costs',1,'2023-09-16 16:48:57'),(377,'New Transaction','034607483','1 fees totalling $25.00 with reference number 034607483 was paid','transactions',1,'2023-09-17 07:32:41'),(378,'New Transaction','31760248','1 fees totalling $20,000.00 with reference number 31760248 was paid','transactions',1,'2023-09-17 07:34:04'),(379,'New Transaction','309462081','1 fees totalling $23,000.00 with reference number 309462081 was paid','transactions',1,'2023-09-17 07:35:12'),(380,'Creation of new Income','6','Addition of TABOZ DONATION as a new Income with  Amount \'300\' and Currency \'USD\' to the Incomes.','incomes',1,'2023-09-17 08:36:59'),(381,'Creation of new Income','7','Addition of TABOZ as a new Income with  Amount \'10000\' and Currency \'ZWL\' to the Incomes.','incomes',1,'2023-09-17 08:37:30'),(382,'Creation of new Income','8','Addition of Test as a new Income with  Amount \'1200\' and Currency \'ZAR\' to the Incomes.','incomes',1,'2023-09-17 08:37:59'),(383,'Creation of new Income','9','Addition of TESt 2 as a new Income with  Amount \'12000\' and Currency \'RTGS\' to the Incomes.','incomes',1,'2023-09-17 08:38:23'),(384,'Creation of new Cost','20','Addition of Test2 as a new Cost with Amount \'12000\', Currency \'ZAR\' and Category \'test\' to the Costs.','costs',1,'2023-09-17 08:56:14'),(385,'New Transaction','937503817','1 fees totalling $70.00 with reference number 937503817 was paid','transactions',1,'2023-09-18 06:55:22'),(386,'New Transaction','402598437','1 fees totalling $25.33 with reference number 402598437 was paid','transactions',1,'2023-09-18 13:03:05'),(387,'Refund Processed','402598437','Refund processed for transaction with ref: 402598437','transactions',1,'2023-09-18 15:45:38'),(388,'Grade Update','9','Details of grade with Name \'Form 1 C\' was updated','grades',1,'2023-09-18 17:30:06'),(389,'New Transaction','159448','1 fees totalling $200.00 with reference number 159448 was paid','transactions',1,'2023-09-18 17:32:52'),(390,'Refund Processed','159448','Refund processed for transaction with ref: 159448','transactions',1,'2023-09-18 17:37:21'),(391,'New Transaction','01867495','1 fees totalling $1.00 with reference number 01867495 was paid','transactions',1,'2023-09-18 18:24:16'),(392,'New Transaction','1836987','1 fees totalling $1.00 with reference number 1836987 was paid','transactions',1,'2023-09-18 19:03:29'),(393,'New Transaction','3680869','1 fees totalling $1.00 with reference number 3680869 was paid','transactions',1,'2023-09-18 19:08:48'),(394,'New Transaction','267925','1 fees totalling $100.00 with reference number 267925 was paid','transactions',1,'2023-09-18 19:09:49'),(395,'Creation of new Cost','21','Addition of tavonga as a new Cost with Amount \'25\', Currency \'USD\' and Category \'Salary\' to the Costs.','costs',1,'2023-09-18 21:59:06'),(396,'Creation of new Cost','22','Addition of tavoznm as a new Cost with Amount \'23\', Currency \'RTGS\' and Category \'Salary\' to the Costs.','costs',1,'2023-09-18 22:02:01'),(397,'Student Update','12','Details of student with Student ID \'\' was updated','students',1,'2023-09-19 08:33:18'),(398,'Creation of new Student','21','Addition of Tab mafura as a new student with ID \'TAB202309000\', Parent Name \'taboz\'and Address \'39 chitsere new mabvuku\' to the Students.','students',1,'2023-09-19 10:18:51'),(399,'Creation of new Grade','11','Addition of ter as a new grade with teacher_id\'8\'to the Grades.','grades',1,'2023-09-19 10:44:25'),(400,'Grade Update','11','Details of grade with Name \'terr\' was updated','grades',1,'2023-09-19 10:44:35'),(401,'Creation of new Teacher','10','Addition of taboz marezi as a new Teacher for \'test\'to the Teachers.','teachers',1,'2023-09-19 10:46:08'),(402,'Teacher Update','8','Details of Teacher with Teacher Name \'taboz\' was updated','teachers',1,'2023-09-19 10:46:40'),(403,'Cost Update','13','Cost with Name \'Salary_September\' was paid by amount \'10\'','costs',1,'2023-09-19 10:47:35'),(404,'Cost Update','13','Cost with Name \'Salary_September\' was paid by amount \'5\'','costs',1,'2023-09-19 10:50:27'),(405,'Cost Update','13','Details of Cost with  Name \'Salary_September\' was updated','costs',1,'2023-09-19 10:51:30'),(406,'Creation of new Subject','1','Addition of test as a new subject to the Subjects.','subjects',1,'2023-09-19 15:22:11'),(407,'Creation of new Subject','2','Addition of taboz as a new subject to the Subjects.','subjects',1,'2023-09-19 15:22:27'),(408,'Creation of new Subject','3','Addition of tere as a new subject to the Subjects.','subjects',1,'2023-09-19 15:23:41'),(409,'Creation of new Subject','4','Addition of tere as a new subject to the Subjects.','subjects',1,'2023-09-19 15:23:44'),(410,'Creation of new Subject','5','Addition of tye as a new subject to the Subjects.','subjects',1,'2023-09-19 15:23:46'),(411,'Creation of new Subject','6','Addition of ty as a new subject to the Subjects.','subjects',1,'2023-09-19 15:23:48'),(412,'Subject Update','','Details of Subject with Name \'tere2\' was updated','subjects',1,'2023-09-19 15:29:35'),(413,'Subject Update','','Details of Subject with Name \'tere2\' was updated','subjects',1,'2023-09-19 15:29:44'),(414,'Subject Update','','Details of Subject with Name \'tere\' was updated','subjects',1,'2023-09-19 15:30:04'),(415,'Subject Update','','Details of Subject with Name \'tere\' was updated','subjects',1,'2023-09-19 15:30:38'),(416,'Subject Update','','Details of Subject with Name \'tere 4\' was updated','subjects',1,'2023-09-19 15:31:00'),(417,'Subject Update','3','Details of Subject with Name \'tere 5\' was updated','subjects',1,'2023-09-19 15:32:13'),(418,'Creation of new Income','10','Addition of Subject_Fee as a new Income with  Amount \'20\' and Currency \'USD\' to the Incomes.','incomes',1,'2023-09-20 05:51:16'),(419,'Creation of new Income','11','Addition of Centre_Fee as a new Income with  Amount \'15\' and Currency \'USD\' to the Incomes.','incomes',1,'2023-09-20 05:51:59'),(420,'Subject Update','4','Details of Subject with Name \'Maths\' was updated','subjects',1,'2023-09-20 06:49:27'),(421,'Subject Update','1','Details of Subject with Name \'Shona\' was updated','subjects',1,'2023-09-20 06:49:42'),(422,'Subject Update','6','Details of Subject with Name \'English\' was updated','subjects',1,'2023-09-20 06:50:01'),(423,'Subject Update','5','Details of Subject with Name \'Science\' was updated','subjects',1,'2023-09-20 06:50:23'),(424,'New Registration','8521234','Registration fee of $35.00 with reference number 8521234 was paid','transactions',1,'2023-09-20 10:00:09'),(425,'New Registration','3276832','Registration fee of $35.00 with reference number 3276832 was paid','transactions',1,'2023-09-20 10:12:43'),(426,'New Registration','1070853','Registration fee of $75.00 with reference number 1070853 was paid','transactions',1,'2023-09-20 10:18:28'),(427,'New Registration','2097570','Registration fee of $55.00 with reference number 2097570 was paid','transactions',1,'2023-09-20 10:35:04'),(428,'New Registration','32349875','Registration fee of $75.00 with reference number 32349875 was paid','transactions',1,'2023-09-20 10:36:07'),(429,'New Registration','907465389','Registration fee of $35.00 with reference number 907465389 was paid','transactions',1,'2023-09-20 13:37:03'),(430,'New Registration','5097186','Registration fee of $35.00 with reference number 5097186 was paid','transactions',1,'2023-09-20 13:43:06'),(431,'New Registration','6127983','Registration fee of $35.00 with reference number 6127983 was paid','transactions',1,'2023-09-20 13:43:41'),(432,'New Registration','270316','Registration fee of $55.00 with reference number 270316 was paid','transactions',1,'2023-09-20 13:44:11'),(433,'New Registration','8507420','Registration fee of $95.00 with reference number 8507420 was paid','transactions',1,'2023-09-21 01:23:58'),(434,'Stock Update (New Stock)','28','<p>10 quantities of cousins was added to stock</p>\n                Reason: <p>New items were purchased</p>','items',1,'2023-09-21 15:14:35'),(435,'Stock Update (New Stock)','16','<p>1 quantities of Bluetooth Headphones Over-Ear was added to stock</p>\n                Reason: <p>New items were purchased</p>','items',1,'2023-09-21 15:15:57'),(436,'Stock Update (New Stock)','26','<p>25 quantities of test1 was added to stock</p>\n                Reason: <p>New items were purchased</p>','items',1,'2023-09-21 15:18:27'),(437,'Stock Update (New Stock)','35','<p>2 quantities of tinovimba was added to stock</p>\n                Reason: <p>New items were purchased</p>','items',1,'2023-09-21 15:31:24'),(438,'New Transaction','054175826','1 items totalling $7.50 with reference number 054175826 was purchased','transactions_item',1,'2023-09-22 01:51:09'),(439,'New Transaction','562512403','1 items totalling $7.50 with reference number 562512403 was purchased','transactions_item',1,'2023-09-22 02:22:41'),(440,'New Transaction','4922069','1 items totalling $7.50 with reference number 4922069 was purchased','transactions_item',1,'2023-09-22 02:24:06'),(441,'New Transaction','076384159','1 items totalling $25.00 with reference number 076384159 was purchased','transactions_item',1,'2023-09-22 02:37:16'),(442,'New Transaction','978297','2 items totaling $29.50 with reference number 978297 was purchased','transactions_item',1,'2023-09-22 02:51:24'),(443,'New Transaction','87241394','3 items totaling $49.03 with reference number 87241394 was purchased','transactions_item',1,'2023-09-22 03:00:25'),(444,'New Transaction','499750136','1 items totaling $28.00 with reference number 499750136 was purchased','transactions_item',1,'2023-09-22 03:14:25'),(445,'New Transaction','0934967','2 items totaling $62.03 with reference number 0934967 was purchased','transactions_item',1,'2023-09-22 03:15:37'),(446,'New Transaction','1924609','1 items totaling $25.00 with reference number 1924609 was purchased','transactions_item',1,'2023-09-22 06:06:04'),(447,'Stock Update (Deficit)','32','<p>12 quantities of test cost was removed from stock</p>\n                Reason: <p>deficit</p>','items',1,'2023-09-22 10:52:33'),(448,'Stock Update (Deficit)','28','<p>10 quantities of cousins was removed from stock</p>\n                Reason: <p>defict</p>','items',1,'2023-09-22 10:52:59'),(449,'Stock Update (Deficit)','28','<p>10 quantities of cousins was removed from stock</p>\n                Reason: <p>DEFICIT</p>','items',1,'2023-09-22 10:53:23'),(450,'New Transaction','2655802','1 items totaling $7.50 with reference number 2655802 was purchased','transactions_item',1,'2023-09-22 10:54:23'),(451,'New Transaction','6517320','1 fees totalling $5.00 with reference number 6517320 was paid','transactions',1,'2023-09-22 11:01:31'),(452,'Refund Processed','6517320','Refund processed for transaction with ref: 6517320','transactions',1,'2023-09-22 11:01:50'),(453,'Creation of new Student','22','Addition of habah sithole as a new student with ID \'TAB202309001\', Parent Name \'peter\'and Address \'great hope\' to the Students.','students',1,'2023-09-22 11:42:33'),(454,'New Transaction','7129051','1 fees totalling $10.00 with reference number 7129051 was paid','transactions',1,'2023-09-22 11:48:51'),(455,'New Transaction','9185089','1 fees totalling $100.00 with reference number 9185089 was paid','transactions',1,'2023-09-22 11:54:37'),(456,'Cost Update','11','Cost with Name \'test\' was paid by amount \'5\'','costs',1,'2023-09-22 12:08:08'),(457,'New Payroll','PSL0013','Tavoz Mafura (Staff ID: TAC202309001) in the Geography department received a payroll of $56.00 for September. Deductions include $0.00 for income tax and $0.00 for health insurance.','payrolls',1,'2023-09-22 12:29:29'),(458,'New Payroll','PSL02975','taboz marezi (Staff ID: TAC202309000) in the Mathematics department received a payroll of $67.00 for September. Deductions include $0.00 for income tax and $0.00 for health insurance.','payrolls',1,'2023-09-22 12:31:18'),(459,'New Payroll','PSL94308','taboz marezi (Staff ID: TAC202309000) in the Mathematics department received a payroll of $67.00 for September. Deductions include $0.00 for income tax and $0.00 for health insurance.','payrolls',1,'2023-09-22 12:31:18'),(460,'New Payroll','PSL5406','taboz marezi (Staff ID: TAC202309000) in the Mathematics department received a payroll of $67.00 for September. Deductions include $0.00 for income tax and $0.00 for health insurance.','payrolls',1,'2023-09-22 12:31:18'),(461,'New Payroll','PSL86386','Tavoz Mafura (Staff ID: TAC202309001) in the Geography department received a payroll of $56.00 for September. Deductions include $0.00 for income tax and $0.00 for health insurance.','payrolls',1,'2023-09-22 12:31:19'),(462,'New Transaction','452995','1 items totaling $223.65 with reference number 452995 was purchased','transactions_item',1,'2023-09-22 12:43:49'),(463,'New Registration','302501','Registration fee of $55.00 with reference number 302501 was paid','transactions',1,'2023-09-22 12:49:34'),(464,'Creation of new Grade','12','Addition of Form 4 as a new grade with teacher_id \'7\' to the Grades.','grades',1,'2023-09-23 09:05:59'),(465,'New Transaction','4539072','1 fees totalling $66.00 with reference number 4539072 was paid','transactions',1,'2023-09-23 18:56:14'),(466,'Creation of new Teacher','11','Addition of taboz marezi as a new Teacher for \'Maths\'to the Teachers.','teachers',1,'2023-09-24 07:01:00'),(467,'Staff Update','3','Details of Staff with Staff Name \'taboz\' was updated','staffs',1,'2023-09-24 07:57:46'),(468,'Staff Update','3','Details of Staff with Staff Name \'taboz\' was updated','staffs',1,'2023-09-24 07:58:20'),(469,'Staff Update','3','Details of Staff with Staff Name \'taboz\' was updated','staffs',1,'2023-09-24 07:58:42'),(470,'Staff Update','3','Details of Staff with Staff Name \'taboz\' was updated','staffs',1,'2023-09-24 07:59:00'),(471,'Staff Update','3','Details of Staff with Staff Name \'taboz\' was updated','staffs',1,'2023-09-24 09:52:20'),(472,'Staff Update','3','Details of Staff with Staff Name \'taboz\' was updated','staffs',1,'2023-09-24 09:52:38'),(473,'New Payroll','PSL14759','taboz marezi (Staff ID: TAC202309000) in the Mathematics department received a payroll of $67.00 for September. Deductions include $0.00 for income tax and $0.00 for health insurance.','payrolls',1,'2023-09-24 09:53:05'),(474,'New Payroll','PSL66590','taboz marezi (Staff ID: TAC202309000) in the Mathematics department received a payroll of $67.00 for September. Deductions include $0.00 for income tax and $0.00 for health insurance.','payrolls',1,'2023-09-24 09:57:30'),(475,'New Payroll','PSL61583','taboz marezi (Staff ID: TAC202309000) in the Mathematics department received a payroll of $67.00 for September. Deductions include $0.00 for income tax and $0.00 for health insurance.','payrolls',1,'2023-09-24 10:00:08'),(476,'New Payroll','PSL11753','taboz marezi (Staff ID: TAC202309000) in the Mathematics department received a payroll of $67.00 for September. Deductions include $0.00 for income tax and $0.00 for health insurance.','payrolls',1,'2023-09-24 10:00:55'),(477,'Staff Update','3','Details of Staff with Staff Name \'taboz\' was updated','staffs',1,'2023-09-24 10:37:01'),(478,'Staff Update','2','Details of Staff with Staff Name \'Tavoz\' was updated','staffs',1,'2023-09-24 10:37:22'),(479,'Staff Update','2','Details of Staff with Staff Name \'Tavoz\' was updated','staffs',1,'2023-09-24 10:37:35'),(480,'Staff Update','2','Details of Staff with Staff Name \'Tavoz\' was updated','staffs',1,'2023-09-24 10:37:50'),(481,'Staff Update','2','Details of Staff with Staff Name \'Tavoz\' was updated','staffs',1,'2023-09-24 10:38:29'),(482,'New Payroll','PSL6917','Tavoz Mafura (Staff ID: TAC202309001) in the Geography department received a payroll of $56.00 for September. Deductions include $0.00 for income tax and $0.00 for health insurance.','payrolls',1,'2023-09-24 10:38:48'),(483,'New Payroll','PSL7852','taboz marezi (Staff ID: TAC202309000) in the Mathematics department received a payroll of $67.00 for September. Deductions include $0.00 for income tax and $0.00 for health insurance.','payrolls',1,'2023-09-24 10:38:48'),(484,'Creation of new Category','7','Addition of Fixed Cost as a new Category to the Categories.','categories',1,'2023-09-24 12:03:55'),(485,'Creation of new Cost','1','Addition of Rent as a new Cost with Amount \'500\', Currency \'USD\' and Category \'Fixed Cost\' to the  Fixed Costs.','fixed_costs',1,'2023-09-24 12:05:49'),(486,'Cost Update','1','Details of Cost with  Name \'Rent1\' was updated','fixed_costs',1,'2023-09-24 12:06:35'),(487,'Cost Update','1','Details of Cost with  Name \'Rent\' was updated','fixed_costs',1,'2023-09-24 12:07:21'),(488,'Creation of new Cost','2','Addition of tere as a new Cost with Amount \'56\', Currency \'RTGS\' and Category \'Fixed Cost\' to the  Fixed Costs.','fixed_costs',1,'2023-09-24 12:09:56'),(489,'Creation of new Category','8','Addition of Fixed Costs as a new Category to the Categories.','categories',1,'2023-09-24 12:32:30'),(490,'System Event','23','Creation of new Cost by the system: 2023_Sep_Salaries with Amount \'218.00\', Currency \'USD\' and Category \'Salary\' to the Costs.','costs',0,'2023-09-24 16:40:02'),(491,'System Event','24','Creation of new Fixed Cost by the system: 2023_Sep_Rent with Amount \'500.00\', Currency \'USD\' and Category \'Fixed Cost\' to the Costs.','costs',0,'2023-09-24 17:18:02'),(492,'System Event','25','Creation of new Fixed Cost by the system: 2023_Sep_tere with Amount \'56.00\', Currency \'RTGS\' and Category \'Fixed Cost\' to the Costs.','costs',0,'2023-09-24 17:18:02'),(493,'System Event','27','Creation of new Fixed Cost by the system: September_Rent with Amount \'500.00\', Currency \'USD\' and Category \'Fixed Cost\' to the Costs.','costs',0,'2023-09-24 17:23:02'),(494,'System Event','26','Creation of new Cost by the system: September_Salaries with Amount \'218.00\', Currency \'USD\' and Category \'Salary\' to the Costs.','costs',0,'2023-09-24 17:23:02'),(495,'System Event','28','Creation of new Fixed Cost by the system: September_tere with Amount \'56.00\', Currency \'RTGS\' and Category \'Fixed Cost\' to the Costs.','costs',0,'2023-09-24 17:23:03'),(496,'Creation of new Student','23','Addition of Final Final as a new student with ID \'TAB202309000\', Parent Name \'Final\'and Address \'Final\' to the Students.','students',1,'2023-09-24 19:07:53'),(497,'Creation of new Cost','29','Addition of final as a new Cost with Amount \'100\', Currency \'USD\' and Category \'test\' to the Costs.','costs',1,'2023-09-24 20:17:26'),(498,'Cost Update','29','Cost with Name \'final\' was paid by amount \'100\'','costs',1,'2023-09-24 20:17:49'),(499,'Cost Update','13','Cost with Name \'Salary_September\' was paid by amount \'45\'','costs',1,'2023-09-24 20:19:05'),(500,'New Transaction','4515280','1 fees totalling $85.00 with reference number 4515280 was paid','transactions',1,'2023-09-25 11:01:39'),(501,'Creation of new Staff','6','Addition of ronny bindu as  new Staff with  Address \'16491\',National ID \'12345678J56\', Salary of \'10\' and Email \'teacher@gmail.com\'to Staff.','staffs',1,'2023-09-25 11:12:00'),(502,'Creation of new Staff','7','Addition of kuda furex as  new Staff with  Address \'gh 1457\',National ID \'21436587G78\', Salary of \'0\' and Email \'gtfsg@gmail.com\'to Staff.','staffs',1,'2023-09-25 11:25:38'),(503,'Creation of new Student','24','Addition of taku moyo as a new student with ID \'TAB202309000\', Parent Name \'Moyo\'and Address \'39 chitsere new mabvuku\' to the Students.','students',1,'2023-09-25 11:30:24'),(504,'New Payroll','PSL36508','ronny bindu (Staff ID: TAC202309002) in the shona department received a payroll of $10.00 for September. Deductions include $0.00 for income tax and $0.00 for health insurance.','payrolls',1,'2023-09-25 11:37:56'),(505,'New Registration','841720','Registration fee of $95.00 with reference number 841720 was paid','transactions',1,'2023-09-25 11:40:17'),(506,'Creation of new Student','25','Addition of yeru yeru as a new student with ID \'TAB202309001\', Parent Name \'taboz\'and Address \'39 chitsere new mabvuku\' to the Students.','students',1,'2023-09-26 10:19:41'),(507,'Creation of new Student','26','Addition of rew rew as a new student with ID \'TAB202309002\', Parent Name \'taboz\'and Address \'39 chitsere new mabvuku\' to the Students.','students',1,'2023-09-26 11:35:47'),(508,'Staff Update','7','Details of Staff with Staff Name \'kuda\' was updated','staffs',1,'2023-09-26 12:42:49'),(509,'Staff Update','7','Details of Staff with Staff Name \'kuda\' was updated','staffs',1,'2023-09-26 12:45:26'),(510,'Creation of New Asset','1','Addition of asset \'Velocity55G\' (Asset Number: \'ASN202309000\', Cost: 234, Supplier: \'reu\') to the Assets.','assets',1,'2023-09-26 19:59:38'),(511,'Creation of New Asset','2','Addition of asset \'IPT-Chinhoyi-Telone\' (Asset Number: \'ASN202309001\', Cost: 678, Supplier: \'yet\') to the Assets.','assets',1,'2023-09-26 20:05:55'),(512,'Asset Update','2','Details of asset with Name \'IPT-Chinhoyi-Telone\' was updated','assets',1,'2023-09-27 06:05:53'),(513,'Asset Update','2','Details of asset with Name \'IPT-Chinhoyi-Telone\' was updated','assets',1,'2023-09-27 06:06:47'),(514,'Asset Update','2','Details of asset with Name \'IPT-Chinhoyi-Telone\' was updated','assets',1,'2023-09-27 08:47:32'),(515,'Creation of New Asset','3','Addition of asset \'IPT-Chinhoyi-Telone\' (Asset Number: \'ASN202309000\', Cost: 566, Supplier: \'hp\') to the Assets.','assets',1,'2023-09-27 08:51:19'),(516,'Asset Update','3','Details of asset with Name \'IPT-Chinhoyi-Telone\' was updated','assets',1,'2023-09-27 09:17:08'),(517,'Asset Update','3','Details of asset with Name \'IPT-Chinhoyi-Telone\' was updated','assets',1,'2023-09-27 09:21:33'),(518,'Creation of New Asset','4','Addition of asset \'test1\' (Asset Number: \'ASN202309001\', Cost: 456, Supplier: \'yetr\') to the Assets.','assets',1,'2023-09-27 11:02:09'),(519,'Creation of New Asset','5','Addition of asset \'reh\' (Asset Number: \'ASN202309002\', Cost: 345, Supplier: \'uin\') to the Assets.','assets',1,'2023-09-27 11:04:24'),(520,'Creation of New Asset','6','Addition of asset \'gert\' (Asset Number: \'ASN202309003\', Cost: 456, Supplier: \'ret\') to the Assets.','assets',1,'2023-09-27 11:36:00'),(521,'Creation of New Asset','7','Addition of asset \'yui\' (Asset Number: \'ASN202309004\', Cost: 456, Supplier: \'oiu\') to the Assets.','assets',1,'2023-09-27 11:36:23'),(522,'New Transaction','948069','1 fees totalling $8.00 with reference number 948069 was paid','transactions',1,'2023-09-27 21:09:48'),(523,'Creation of new Grade','13','Addition of Form 4 as a new grade with teacher_id \'11\' to the Grades.','grades',1,'2023-09-27 21:12:40'),(524,'Creation of new Grade','14','Addition of Form 4 A as a new grade with teacher_id \'2\' to the Grades.','grades',1,'2023-09-27 21:19:44'),(525,'Grade Update','2','Details of grade with Name \'Form 2 f\' was updated','grades',1,'2023-09-27 21:21:17'),(526,'Grade Update','2','Details of grade with Name \'Form 2 f\' was updated','grades',1,'2023-09-28 03:00:12'),(527,'Grade Update','2','Details of grade with Name \'Form 4 tere\' was updated','grades',1,'2023-09-28 03:03:53'),(528,'Creation of new Teacher','12','Addition of taboz marezi as a new Teacher for \'test\'to the Teachers.','teachers',1,'2023-09-28 03:39:00'),(529,'Creation of new Teacher','13','Addition of taboz marezi as a new Teacher for \'test\'to the Teachers.','teachers',1,'2023-09-28 03:39:18'),(530,'Creation of new Teacher','14','Addition of kuda furex as a new Teacher for \'test\'to the Teachers.','teachers',1,'2023-09-28 03:43:01'),(531,'Teacher Update','14','Details of Teacher with Teacher Name \'kuda\' was updated','teachers',1,'2023-09-28 03:45:14'),(532,'Creation of new Cost','30','Addition of final as a new Cost with Amount \'12\', Currency \'USD\' and Category \'test\' to the Costs.','costs',1,'2023-09-28 03:54:28'),(533,'Cost Update','30','Cost with Name \'final\' was paid by amount \'12\'','costs',1,'2023-09-28 03:54:48'),(534,'Cost Update','30','Details of Cost with  Name \'final\' was updated','costs',1,'2023-09-28 03:55:27'),(535,'Cost Update','30','Details of Cost with  Name \'final\' was updated','costs',1,'2023-09-28 03:56:01'),(536,'Cost Update','30','Details of Cost with  Name \'final\' was updated','costs',1,'2023-09-28 04:05:41'),(537,'Creation of new Category','9','Addition of Salary as a new Category to the Categories.','categories',1,'2023-09-28 04:19:24'),(538,'Creation of new Category','10','Addition of Salary as a new Category to the Categories.','categories',1,'2023-09-28 04:19:45'),(539,'Creation of new Category','11','Addition of Salary as a new Category to the Categories.','categories',1,'2023-09-28 04:19:58'),(540,'Creation of new Category','12','Addition of Salary as a new Category to the Categories.','categories',1,'2023-09-28 04:21:05'),(541,'Creation of new Category','13','Addition of Salary as a new Category to the Categories.','categories',1,'2023-09-28 04:21:53'),(542,'Category Update','9','Details of Category with  Name \'Salary\' was updated','categories',1,'2023-09-28 04:34:18'),(543,'Creation of new Category','14','Addition of test as a new Category to the Categories.','categories',1,'2023-09-28 04:46:38'),(544,'Creation of new Cost','31','Addition of test final as a new Cost with Amount \'100\', Currency \'USD\' and Category \'test\' to the Costs.','costs',1,'2023-09-28 04:47:03'),(545,'Cost Update','31','Cost with Name \'test final\' was paid by amount \'15\'','costs',1,'2023-09-28 04:47:48'),(546,'New Transaction','61547854','1 fees totalling $45.00 with reference number 61547854 was paid','transactions',1,'2023-09-28 11:34:17'),(547,'New Transaction','0389806','1 fees totalling $2,390.00 with reference number 0389806 was paid','transactions',1,'2023-09-28 11:35:17'),(548,'New Transaction','0640637','1 items totaling $37.50 with reference number 0640637 was purchased','transactions_item',1,'2023-09-28 11:39:30'),(549,'New Transaction','037205914','1 items totaling $600.00 with reference number 037205914 was purchased','transactions_item',1,'2023-09-28 11:40:12'),(550,'New Transaction','3131897','1 fees totalling $450.00 with reference number 3131897 was paid','transactions',1,'2023-09-28 11:42:27'),(551,'New Transaction','75468950','1 items totaling $500.00 with reference number 75468950 was purchased','transactions_item',1,'2023-09-29 10:10:15'),(552,'Creation of new Grade','15','Addition of Form 1 as a new grade with teacher_id \'14\' to the Grades.','grades',1,'2023-09-29 10:17:47'),(553,'Income Update','1','Details of Income with  Name \'Fees ZJC\' was updated','incomes',1,'2023-09-29 11:18:04'),(554,'Creation of new Income','12','Addition of Fees Olevel as a new Income with  Amount \'20\' and Currency \'USD\' to the Incomes.','incomes',1,'2023-09-29 11:18:53'),(555,'Creation of new Income','13','Addition of Fees Alevel as a new Income with  Amount \'45\' and Currency \'USD\' to the Incomes.','incomes',1,'2023-09-29 11:19:30'),(556,'New Transaction','258178510','1 fees totalling $4.70 with reference number 258178510 was paid','transactions',1,'2023-10-04 16:01:12'),(557,'New Registration','41480169','Registration fee of $35.00 with reference number 41480169 was paid','transactions',1,'2023-10-04 16:02:12'),(558,'New Transaction','8496802','1 items totaling $25.00 with reference number 8496802 was purchased','transactions_item',1,'2023-10-04 16:04:08'),(559,'Creation of new Income','14','Addition of Fees Alevel as a new Income with  Amount \'80\' and Currency \'USD\' to the Incomes.','incomes',1,'2023-10-05 08:53:56'),(560,'Bulk Fees Update','0','Bulk update of fees and owed fees for all students. New Fees: 20.00, Fees to Add: 20.00','students',1,'2023-10-05 09:00:15'),(561,'Bulk Fees Update','0','Bulk update of fees and owed fees for all students. New Fees: 20.00, Fees to Add: 20.00','students',1,'2023-10-05 09:12:29'),(562,'Bulk Fees Update','0','Bulk update of fees and owed fees for all students. New Fees: 20.00, Fees to Add: 20.00','students',1,'2023-10-05 10:22:48'),(563,'Bulk Fees Update','0','Bulk update of fees and owed fees for all students. New Fees: 20.00, Fees to Add: 20.00','students',1,'2023-10-05 10:23:33'),(564,'Bulk Fees Update','0','Bulk update of fees and owed fees for all students. New Fees: 80.00, Fees to Add: 80.00','students',1,'2023-10-05 10:23:55'),(565,'Bulk Fees Update','0','Bulk update of fees and owed fees for all students. New Fees: 75.00, Fees to Add: 75.00','students',1,'2023-10-05 10:24:21'),(566,'Bulk Fees Update','0','Bulk update of fees and owed fees for all students. New Fees: 75.00, Fees to Add: 75.00','students',1,'2023-10-05 10:24:49'),(567,'Bulk Fees Update','0','Bulk update of fees and owed fees for all students. New Fees: 80.00, Fees to Add: 80.00','students',1,'2023-10-05 10:25:31'),(568,'Bulk Fees Update','0','Bulk update of fees and owed fees for all students. New Fees: 80.00, Fees to Add: 80.00','students',1,'2023-10-05 10:26:04'),(569,'Bulk Fees Update','0','Bulk update of fees and owed fees for all students. New Fees: 75.00, Fees to Add: 75.00','students',1,'2023-10-05 10:27:00'),(570,'Bulk Fees Update','0','Bulk update of fees and owed fees for all students. New Fees: 75.00, Fees to Add: 75.00','students',1,'2023-10-05 10:31:06'),(571,'Bulk Fees Update','0','Bulk update of fees and owed fees for all students. New Fees: 75.00, Fees to Add: 75.00','students',1,'2023-10-05 10:32:53'),(572,'Bulk Fees Update','0','Bulk update of fees and owed fees for all students. New Fees: 75.00, Fees to Add: 75.00','students',1,'2023-10-05 10:34:29'),(573,'Bulk Fees Update','0','Bulk update of fees and owed fees for all students. New Fees: 75.00, Fees to Add: 75.00','students',1,'2023-10-05 10:34:48'),(574,'Creation of new Student','27','Addition of ooooooooo ooooooooooo as a new student with ID \'TAB202310000\', Parent Name \'taboz\'and Address \'39 chitsere new mabvuku\' to the Students.','students',1,'2023-10-05 10:43:02'),(575,'Staff Update','7','Details of Staff with Staff Name \'kuda\' was updated','staffs',1,'2023-10-05 10:46:54'),(576,'Staff Update','7','Details of Staff with Staff Name \'kuda\' was updated','staffs',1,'2023-10-05 10:54:13');
/*!40000 ALTER TABLE `eventlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exams_reg`
--

DROP TABLE IF EXISTS `exams_reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exams_reg` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `student_id` bigint unsigned NOT NULL,
  `zimsec_reg_num` varchar(20) NOT NULL,
  `payment_status` enum('Paid','Unpaid') NOT NULL,
  `payment_trans_id` varchar(10) DEFAULT NULL,
  `reg_status` enum('Pending','Confirmed','Cancelled') NOT NULL,
  `reg_date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `exams_reg_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exams_reg`
--

LOCK TABLES `exams_reg` WRITE;
/*!40000 ALTER TABLE `exams_reg` DISABLE KEYS */;
INSERT INTO `exams_reg` VALUES (10,7,'4533','Paid','125','Confirmed','2023-09-21 03:23:58'),(12,24,'234','Paid','132','Confirmed','2023-09-25 13:40:17'),(13,26,'453','Paid','138','Confirmed','2023-10-04 18:02:13');
/*!40000 ALTER TABLE `exams_reg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fixed_costs`
--

DROP TABLE IF EXISTS `fixed_costs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fixed_costs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `category` varchar(30) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `dateAdded` datetime NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL,
  `paid` decimal(10,2) DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fixed_costs`
--

LOCK TABLES `fixed_costs` WRITE;
/*!40000 ALTER TABLE `fixed_costs` DISABLE KEYS */;
INSERT INTO `fixed_costs` VALUES (1,'Rent',500.00,'Fixed Cost','Rent','USD','2023-09-24 14:05:49','2023-09-24 12:05:49',0,0.00,500.00);
/*!40000 ALTER TABLE `fixed_costs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grades` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `teacher_id` varchar(10) DEFAULT NULL,
  `dateAdded` datetime NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES (3,'Form 3','2','2023-08-13 13:24:16','2023-08-17 14:21:07'),(8,'Form 6','6','2023-08-13 13:56:48','2023-08-13 11:56:48'),(12,'Form 4','7','2023-09-23 11:05:58','2023-09-23 09:05:58'),(15,'Form 1','14','2023-09-29 12:17:46','2023-09-29 10:17:46');
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incomes`
--

DROP TABLE IF EXISTS `incomes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incomes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `description` varchar(30) DEFAULT NULL,
  `currency` varchar(15) DEFAULT NULL,
  `dateAdded` datetime NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incomes`
--

LOCK TABLES `incomes` WRITE;
/*!40000 ALTER TABLE `incomes` DISABLE KEYS */;
INSERT INTO `incomes` VALUES (1,'Fees ZJC',75.00,'Student Fees','USD','2023-08-15 12:16:30','2023-09-29 11:18:04'),(4,'Reg_fee',10.00,'Registration Fees','USD','2023-09-08 07:13:58','2023-09-08 05:13:58'),(6,'TABOZ DONATION',300.00,'Donation','USD','2023-09-17 10:36:59','2023-09-17 08:36:59'),(7,'TABOZ',10000.00,'Donation','ZWL','2023-09-17 10:37:29','2023-09-17 08:37:29'),(8,'Test',1200.00,'Test','ZAR','2023-09-17 10:37:59','2023-09-17 08:37:59'),(9,'TESt 2',12000.00,'Test2','RTGS','2023-09-17 10:38:23','2023-09-17 08:38:23'),(10,'Subject_Fee',20.00,'Exam Subject Fee','USD','2023-09-20 07:51:16','2023-09-20 05:51:16'),(11,'Centre_Fee',15.00,'Exam Centre Fee','USD','2023-09-20 07:51:59','2023-09-20 05:51:59'),(12,'Fees Olevel',20.00,'Student Fees','USD','2023-09-29 13:18:53','2023-09-29 11:18:53'),(14,'Fees Alevel',80.00,'Student Fees','USD','2023-10-05 10:53:56','2023-10-05 08:53:56');
/*!40000 ALTER TABLE `incomes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `description` text,
  `unitPrice` decimal(10,2) NOT NULL,
  `quantity` int NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `dateAdded` datetime NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'Demo Item','101','Demo Test',500.00,66,0.00,'2021-04-19 23:32:59','2023-09-29 10:10:15',NULL),(2,'Toy Cars','102','5 in 1 colorful transporter truck Toys set, including a big transporter, a mini airplane, a small Taxi, a small bus and a middle bus. Colored toy cars with cute expressions, cartoon drawings better arouse kid&#039;s curiosity and give children a happy world. The ideal gifts for birthdays, parties, Christmas and any festival.',24.00,639,0.00,'2021-06-01 19:42:58','2021-06-01 19:26:28',NULL),(3,'Oats Crunchy Honey Roasted Cereal','103','Honey Bunches of Oats cereal is the perfect combination of crispy flakes, crunchy oat clusters with a touch of honey.',12.00,712,0.00,'2021-06-01 19:44:54','2021-06-01 13:59:54',NULL),(4,'KIND Breakfast Cereal','104','Flavor: Apple Cinnamon, 100% whole grains',21.55,742,0.00,'2021-06-01 19:46:25','2021-06-01 14:03:09',NULL),(5,'Duck Brand Stretch Wrap','105','Heavy 70 gauge plastic wrap safely secures and bundles items while moving, in storage or in transit',33.00,808,0.00,'2021-06-01 19:57:11','2021-06-01 18:33:38',NULL),(6,'Self Adhesive Clear Cookie Bags','106','Our self-adhesive cookie bags are made of food grade opp plastic material with a matte surface design, and a comfortable feel which is safe to use, odor-free, non-toxic, durable for your daily or commercial use.',8.00,1265,0.00,'2021-06-01 19:59:09','2021-06-01 14:14:09',NULL),(7,'Lightweight Satin Soft Fabric','107','Color: Green, Maroon, Red, Navy Blue, Brown, Violet, Pattern: Solid, Weave Type: Satin',12.00,531,0.00,'2021-06-01 20:04:42','2021-06-01 18:29:37',NULL),(9,'Precut Quilting Sewing Fabric','109','Color: Green, Blue, Grey, White, Black, Purple, 18 x 22 inches',9.00,811,0.00,'2021-06-01 20:10:01','2021-06-01 14:25:01',NULL),(10,'Orgnisulmte USDA Organic Dragon Fruit Powder','110','100% Pure Freeze-Dried Pink Pitaya Powder, Natural Red Dragon Fruit Food Coloring Powder,Non GMO,Gluten Free 3.53oz(100g)',9.00,563,0.00,'2021-06-01 20:15:45','2021-06-01 14:30:45',NULL),(11,'KIND Whole Fruit Bars','111','Strawberry Apple Chia, Chocolate Bananam Dark Chocolate Strawberry No Sugar Added, 1.2oz, 12 Count',11.00,448,0.00,'2021-06-01 20:16:45','2021-06-01 16:37:04',NULL),(12,'Del Monte Fruit and Oats Snack Cups','112','7 Ounce, Premium Quality, No Preservatives',11.55,482,0.00,'2021-06-01 20:18:13','2021-06-01 14:33:13',NULL),(13,'Chicken of the Sea Sardines','113','Extra Virgin Olive Oil, 3.75 oz (Pack of 18)',20.06,888,0.00,'2021-06-01 20:19:28','2021-06-01 14:34:28',NULL),(14,'Wild Sardines','114','Skinless &amp; Boneless, in Extra Virgin Olive Oil, Lowest Mercury Limit, Keto, Paleo, 12 count, 4.4oz',31.95,684,0.00,'2021-06-01 20:20:38','2023-09-22 12:43:48',NULL),(15,'MW Polar Smoked Brisling Sardines in Olive Oil','115','9.5oz. Jar (Pack of 6), Wild caught in the Baltic Sea, Naturally wood smoked, Packaged in Olive Oil',35.38,992,0.00,'2021-06-01 20:22:26','2021-06-01 16:31:05',NULL),(16,'Bluetooth Headphones Over-Ear','116','Zihnic Foldable Wireless and Wired Stereo Headset Micro SD/TF, FM for Cell Phone,PC,Soft Earmuffs &amp;Light Weight for Prolonged Waring(Rose Gold)',23.91,157,0.00,'2021-06-01 20:23:54','2021-06-01 17:37:00',NULL),(17,'Panasonic Full-Sized Headphones','117','Contains Mic, Lightweight Long-Cord Headphones – RP-HT161-K (Black)',13.77,181,0.00,'2021-06-01 20:24:55','2021-06-01 19:22:15',NULL),(18,'Toshiba Canvio 1TB Portable External Hard Drive','118','Item Dimensions: LxWxH	4.3 x 3.1 x 0.55 inches, Drive USB 3.0, Black',62.55,236,0.00,'2021-06-01 22:10:16','2021-06-01 16:25:16',NULL),(19,'Seagate BarraCuda 2TB Internal Hard Drive','119','3.5 Inch SATA 6Gb/s 7200 RPM 256MB Cache 3.5-Inch – Frustration Free Packaging',71.50,312,0.00,'2021-06-01 22:11:55','2021-06-01 16:26:55',NULL),(20,'Samsung BAR Plus USB 3.1 Flash Drive 128GB','120','Brand: Samsung, Silver Color, Redefine everyday file transfers with read speeds up to 400MB/s; USB 3.1 flash drive with backwards compatibility (USB 3.0, USB 2.0)',24.59,589,0.00,'2021-06-01 22:13:30','2021-06-01 16:28:30',NULL),(21,'Multipurpose Copy Printer Paper','121','White, 8.5 x 11 Inches, 3 Ream Case',19.10,5884,0.00,'2021-06-01 22:15:08','2021-06-01 19:24:03',NULL),(22,'Metronic Large Shipping Bags Poly Mailers','122','19x24 Envelopes Mailers with Self Adhesive Waterproof and Tear-Proof Postal Bags in White, Black, Blue, Grey',4.99,2464,0.00,'2021-06-01 22:26:40','2021-06-01 16:43:26',NULL),(23,'Crunchies Freeze-Dried Fruits Variety Pack','123','100% All Natural Crispy Snacks, Gluten Free and Vegan, 5.8 Ounce-6 pack',17.00,293,0.00,'2021-06-02 01:02:26','2021-06-01 19:19:33',NULL),(24,'tavonga','30','test product',25.00,15,0.00,'2023-06-21 09:12:48','2023-10-04 16:04:08',NULL),(25,'taboz','4172','taboz the great',55.00,159,0.00,'2023-06-23 12:37:58','2023-07-29 07:40:59',NULL),(27,'maize','45','test maize',4.50,42,400.50,'2023-06-29 16:50:51','2023-09-22 03:00:25',1),(28,'cousins','24','test 456',7.50,3,43.00,'2023-06-29 16:52:09','2023-09-28 11:39:29',1),(29,'wheat','1','test price generation',28.00,7,25.00,'2023-06-30 14:54:15','2023-09-22 03:14:25',4),(32,'test cost','67','test 123',62.48,-10,56.90,'2023-07-03 15:24:09','2023-09-22 10:52:33',5),(33,'test cost1','56','test 1234',37.03,21,34.00,'2023-07-03 16:21:02','2023-09-22 03:15:37',12),(34,'test final','456','test final',15.00,9,10.00,'2023-07-29 10:18:01','2023-07-29 08:18:56',NULL),(35,'tinovimba','87','tstete',45.00,25,23.00,'2023-09-21 17:10:19','2023-09-21 15:31:24',NULL);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lk_sess`
--

DROP TABLE IF EXISTS `lk_sess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lk_sess` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lk_sess`
--

LOCK TABLES `lk_sess` WRITE;
/*!40000 ALTER TABLE `lk_sess` DISABLE KEYS */;
/*!40000 ALTER TABLE `lk_sess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payrolls`
--

DROP TABLE IF EXISTS `payrolls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payrolls` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ref` varchar(50) DEFAULT NULL,
  `staff_id` varchar(20) NOT NULL,
  `staff_name` varchar(255) NOT NULL,
  `staff_surname` varchar(255) DEFAULT NULL,
  `staff_address` varchar(255) DEFAULT NULL,
  `staff_phone` varchar(15) DEFAULT NULL,
  `staff_email` varchar(255) DEFAULT NULL,
  `staff_ssn` varchar(20) DEFAULT NULL,
  `personnelId` bigint unsigned NOT NULL,
  `tax_withholding` decimal(10,2) NOT NULL DEFAULT '0.00',
  `tax_identification_number` varchar(20) DEFAULT NULL,
  `leave_days_taken` int NOT NULL DEFAULT '0',
  `unpaid_leave_days` int NOT NULL DEFAULT '0',
  `pto_balance` decimal(10,2) NOT NULL DEFAULT '0.00',
  `health_insurance` decimal(10,2) NOT NULL DEFAULT '0.00',
  `other_allowances` decimal(10,2) NOT NULL DEFAULT '0.00',
  `gross_salary` decimal(10,2) NOT NULL,
  `net_salary` decimal(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `payroll_start_date` date DEFAULT NULL,
  `payroll_end_date` date DEFAULT NULL,
  `dateAdded` date DEFAULT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bank_account_number` varchar(30) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `payment_month` varchar(20) DEFAULT NULL,
  `staff_department` varchar(30) DEFAULT NULL,
  `staff_national_id` varchar(15) DEFAULT NULL,
  `staff_job_tittle` varchar(30) DEFAULT NULL,
  `advance_payment` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payrolls`
--

LOCK TABLES `payrolls` WRITE;
/*!40000 ALTER TABLE `payrolls` DISABLE KEYS */;
INSERT INTO `payrolls` VALUES (1,'REF001','S001','John','Doe','123 Main St','+1234567890','john.doe@example.com','12345',1,10.50,'TIN001',10,2,15.75,50.00,5.00,1000.00,950.00,1,'2023-09-01','2023-09-30','2023-09-12','2023-09-11 22:00:00','1234567890123456','Bank Transfer','September',NULL,NULL,NULL,0.00),(2,'PSL46859','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,67.00,67.00,1,'2023-09-13','2023-09-13','2023-09-13','0000-00-00 00:00:00',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',0.00),(3,'PSL3072','TAC202309001','Tavoz','Mafura','39 Chitsere New Mabvuku','0773372616','mafuratavo@gmail.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,56.00,56.00,1,'2023-09-13','2023-09-13','2023-09-13','0000-00-00 00:00:00',NULL,'Bank Transfer','September','Geography','77093551M77','Clearner',0.00),(4,'PSL9731','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,67.00,67.00,0,'2023-09-13','2023-09-13','2023-09-13','0000-00-00 00:00:00',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',0.00),(5,'PSL6903','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,67.00,67.00,0,'2023-09-13','2023-09-13','2023-09-13','0000-00-00 00:00:00',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',0.00),(6,'PSL3910','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,67.00,67.00,0,'2023-09-13','2023-09-13','2023-09-13','0000-00-00 00:00:00',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',0.00),(7,'PSL4215','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,67.00,67.00,0,'2023-09-13','2023-09-13','2023-09-13','0000-00-00 00:00:00',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',0.00),(8,'PSL0975','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,67.00,67.00,0,'2023-09-13','2023-09-13','2023-09-13','0000-00-00 00:00:00',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',0.00),(9,'PSL1652','TAC202309001','Tavoz','Mafura','39 Chitsere New Mabvuku','0773372616','mafuratavo@gmail.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,56.00,56.00,0,'2023-09-13','2023-09-13','2023-09-13','0000-00-00 00:00:00',NULL,'Bank Transfer','September','Geography','77093551M77','Clearner',0.00),(10,'PSL9723','TAC202309001','Tavoz','Mafura','39 Chitsere New Mabvuku','0773372616','mafuratavo@gmail.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,56.00,56.00,0,'2023-09-13','2023-09-13','2023-09-13','0000-00-00 00:00:00',NULL,'Bank Transfer','September','Geography','77093551M77','Clearner',0.00),(11,'PSL11672','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,67.00,67.00,1,'2023-09-13','2023-09-13','2023-09-13','0000-00-00 00:00:00',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',0.00),(12,'PSL06441','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,67.00,67.00,0,'2023-09-13','2023-09-13','2023-09-13','0000-00-00 00:00:00',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',0.00),(13,'PSL31908','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,67.00,67.00,0,'2023-09-13','2023-09-13','2023-09-13','0000-00-00 00:00:00',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',0.00),(14,'PSL73103','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,67.00,67.00,0,'2023-09-14','2023-09-14','2023-09-14','0000-00-00 00:00:00',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',0.00),(15,'PSL27356','TAC202309001','Tavoz','Mafura','39 Chitsere New Mabvuku','0773372616','mafuratavo@gmail.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,56.00,56.00,0,'2023-09-01','2023-09-30','2023-09-14','0000-00-00 00:00:00',NULL,'Bank Transfer','September','Geography','77093551M77','Clearner',0.00),(16,'PSL3876','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,67.00,67.00,0,'2023-09-01','2023-09-30','2023-09-14','2023-09-14 01:29:21',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',0.00),(17,'PSL3912','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,67.00,67.00,0,'2023-09-01','2023-09-30','2023-09-14','2023-09-14 01:34:46',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',0.00),(18,'PSL6849','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,67.00,67.00,0,'2023-09-01','2023-09-30','2023-09-14','2023-09-14 01:40:41',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',0.00),(19,'PSL3410','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,67.00,67.00,0,'2023-09-01','2023-09-30','2023-09-14','2023-09-14 01:42:34',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',0.00),(20,'PSL7231','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,67.00,67.00,0,'2023-09-01','2023-09-30','2023-09-14','2023-09-14 01:46:36',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',0.00),(21,'PSL9259','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,67.00,67.00,0,'2023-09-01','2023-09-30','2023-09-14','2023-09-14 01:50:09',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',0.00),(22,'PSL7337','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,67.00,67.00,0,'2023-09-01','2023-09-30','2023-09-14','2023-09-14 01:58:38',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',0.00),(23,'PSL8138','TAC202309001','Tavoz','Mafura','39 Chitsere New Mabvuku','0773372616','mafuratavo@gmail.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,56.00,56.00,0,'2023-09-01','2023-09-30','2023-09-14','2023-09-14 02:04:56',NULL,'Bank Transfer','September','Geography','77093551M77','Clearner',0.00),(24,'PSL3672','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,67.00,67.00,0,'2023-09-01','2023-09-30','2023-09-14','2023-09-14 02:09:30',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',0.00),(25,'PSL48574','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,67.00,67.00,0,'2023-09-01','2023-09-30','2023-09-14','2023-09-14 02:10:53',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',0.00),(26,'PSL76324','TAC202309001','Tavoz','Mafura','39 Chitsere New Mabvuku','0773372616','mafuratavo@gmail.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,56.00,56.00,0,'2023-09-01','2023-09-30','2023-09-14','2023-09-14 02:13:32',NULL,'Bank Transfer','September','Geography','77093551M77','Clearner',0.00),(27,'PSL6794','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,67.00,67.00,0,'2023-09-01','2023-09-30','2023-09-15','2023-09-15 08:06:28',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',0.00),(28,'PSL6354','TAC202309001','Tavoz','Mafura','39 Chitsere New Mabvuku','0773372616','mafuratavo@gmail.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,56.00,56.00,0,'2023-09-01','2023-09-30','2023-09-15','2023-09-15 08:06:31',NULL,'Bank Transfer','September','Geography','77093551M77','Clearner',0.00),(29,'PSL1479','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,67.00,67.00,0,'2023-09-01','2023-09-30','2023-09-15','2023-09-15 08:54:19',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',0.00),(30,'PSL0193','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,67.00,67.00,0,'2023-09-01','2023-09-30','2023-09-15','2023-09-15 08:57:51',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',0.00),(31,'PSL3671','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,67.00,67.00,0,'2023-09-01','2023-09-30','2023-09-15','2023-09-15 08:58:45',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',0.00),(32,'PSL86156','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,67.00,67.00,0,'2023-09-01','2023-09-30','2023-09-15','2023-09-15 09:24:41',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',0.00),(33,'PSL2164','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,67.00,67.00,0,'2023-09-01','2023-09-30','2023-09-15','2023-09-15 09:27:04',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',0.00),(34,'PSL83063','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,67.00,67.00,0,'2023-09-01','2023-09-30','2023-09-15','2023-09-15 10:07:41',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',0.00),(35,'PSL98442','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,67.00,67.00,0,'2023-09-01','2023-09-30','2023-09-15','2023-09-15 10:10:15',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',0.00),(36,'PSL49273','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,67.00,67.00,0,'2023-09-01','2023-09-30','2023-09-15','2023-09-15 10:10:33',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',0.00),(37,'PSL3704','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,67.00,67.00,0,'2023-09-01','2023-09-30','2023-09-15','2023-09-15 10:27:26',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',0.00),(38,'PSL56216','TAC202309001','Tavoz','Mafura','39 Chitsere New Mabvuku','0773372616','mafuratavo@gmail.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,56.00,56.00,0,'2023-09-01','2023-09-30','2023-09-15','2023-09-15 14:07:06',NULL,'Bank Transfer','September','Geography','77093551M77','Clearner',0.00),(39,'PSL0013','TAC202309001','Tavoz','Mafura','39 Chitsere New Mabvuku','0773372616','mafuratavo@gmail.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,56.00,56.00,1,'2023-09-01','2023-09-30','2023-09-22','2023-09-22 12:29:29',NULL,'Bank Transfer','September','Geography','77093551M77','Clearner',0.00),(40,'PSL02975','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,67.00,67.00,0,'2023-09-01','2023-09-30','2023-09-22','2023-09-22 12:31:17',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',0.00),(41,'PSL94308','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,67.00,67.00,0,'2023-09-01','2023-09-30','2023-09-22','2023-09-22 12:31:18',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',0.00),(42,'PSL5406','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,67.00,67.00,0,'2023-09-01','2023-09-30','2023-09-22','2023-09-22 12:31:18',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',0.00),(43,'PSL86386','TAC202309001','Tavoz','Mafura','39 Chitsere New Mabvuku','0773372616','mafuratavo@gmail.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,56.00,56.00,0,'2023-09-01','2023-09-30','2023-09-22','2023-09-22 12:31:19',NULL,'Bank Transfer','September','Geography','77093551M77','Clearner',0.00),(44,'PSL14759','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,13.00,80.00,70.00,0,'2023-09-01','2023-09-30','2023-09-24','2023-09-24 09:53:05',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',10.00),(45,'PSL66590','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,13.00,80.00,67.00,0,'2023-09-01','2023-09-30','2023-09-24','2023-09-24 09:57:30',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',10.00),(46,'PSL61583','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,13.00,80.00,67.00,0,'2023-09-01','2023-09-30','2023-09-24','2023-09-24 10:00:08',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',10.00),(47,'PSL11753','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,13.00,80.00,67.00,1,'2023-09-01','2023-09-30','2023-09-24','2023-09-24 10:00:55',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',10.00),(48,'PSL6917','TAC202309001','Tavoz','Mafura','39 Chitsere New Mabvuku','0773372616','mafuratavo@gmail.com',NULL,1,0.00,NULL,0,0,0.00,0.00,14.00,70.00,56.00,0,'2023-09-01','2023-09-30','2023-09-24','2023-09-24 10:38:48',NULL,'Bank Transfer','September','Geography','77093551M77','Clearner',15.00),(49,'PSL7852','TAC202309000','taboz','marezi','39 Chitsere New Mabvuku','0775923458','mafurataboz@gamil.com',NULL,1,0.00,NULL,0,0,0.00,0.00,13.00,80.00,67.00,0,'2023-09-01','2023-09-30','2023-09-24','2023-09-24 10:38:48',NULL,'Bank Transfer','September','Mathematics','77093551M77','Teacher',20.00),(50,'PSL36508','TAC202309002','ronny','bindu','16491','0717193509','teacher@gmail.com',NULL,1,0.00,NULL,0,0,0.00,0.00,0.00,10.00,10.00,0,'2023-09-01','2023-09-30','2023-09-25','2023-09-25 11:37:56',NULL,'Bank Transfer','September','shona','12345678J56','teacher',0.00);
/*!40000 ALTER TABLE `payrolls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reg_subjects`
--

DROP TABLE IF EXISTS `reg_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reg_subjects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reg_id` bigint unsigned NOT NULL,
  `subject_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reg_id` (`reg_id`),
  KEY `subject_id` (`subject_id`),
  CONSTRAINT `reg_subjects_ibfk_1` FOREIGN KEY (`reg_id`) REFERENCES `exams_reg` (`id`) ON DELETE CASCADE,
  CONSTRAINT `reg_subjects_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reg_subjects`
--

LOCK TABLES `reg_subjects` WRITE;
/*!40000 ALTER TABLE `reg_subjects` DISABLE KEYS */;
INSERT INTO `reg_subjects` VALUES (15,10,1),(16,10,4),(17,10,5),(18,10,6),(21,12,1),(22,12,4),(23,12,5),(24,12,6),(25,13,4);
/*!40000 ALTER TABLE `reg_subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffs`
--

DROP TABLE IF EXISTS `staffs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staffs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `staff_id` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `job_tittle` varchar(30) NOT NULL,
  `department` varchar(30) DEFAULT NULL,
  `dateAdded` date DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(50) DEFAULT NULL,
  `national_id` varchar(20) NOT NULL,
  `lastUpdated` timestamp NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `basic_salary` decimal(10,2) NOT NULL,
  `income_tax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `overtime` decimal(10,2) NOT NULL DEFAULT '0.00',
  `healthy_insurance` decimal(10,2) NOT NULL DEFAULT '0.00',
  `advance_payment` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffs`
--

LOCK TABLES `staffs` WRITE;
/*!40000 ALTER TABLE `staffs` DISABLE KEYS */;
INSERT INTO `staffs` VALUES (2,'TAC202309001','Tavoz','Mafura','mafuratavo@gmail.com','0773372616','2001-03-20','Clearner','Geography','2023-09-10','Male','39 Chitsere New Mabvuku','77093551M77','0000-00-00 00:00:00',1,56.00,0.00,14.00,0.00,15.00),(3,'TAC202309000','taboz','marezi','mafurataboz@gamil.com','0775923458','2001-03-20','Teacher','Mathematics','2023-09-10','Female','39 Chitsere New Mabvuku','77093551M77','0000-00-00 00:00:00',1,67.00,0.00,13.00,0.00,20.00),(4,'TAC202309000','Terence','Mafura','mafuraterence@gmail.com','0773372616','2001-03-20','Teacher','Mathematics','2023-09-10','Male','39 Chitsere New Mabvuku','77093551M77','0000-00-00 00:00:00',1,50.00,0.00,0.00,0.00,0.00),(5,'TAC202309000','test','test','test@gmail.com','0775923458','2001-03-20','test','test','2023-09-16','Male','39 chitsere New Mabvuku','77093551M77','0000-00-00 00:00:00',1,45.00,0.00,0.00,0.00,0.00),(6,'TAC202309002','ronny','bindu','teacher@gmail.com','0717193509','2023-09-25','teacher','shona','2023-09-25','none','16491','12345678J56','0000-00-00 00:00:00',1,10.00,0.00,0.00,0.00,0.00),(7,'TAC202309003','kuda','furex','gtfsg@gmail.com','9289765423','2005-10-04','teacher','maths','2023-09-25','Male','gh 1457','21436587G78','0000-00-00 00:00:00',1,4.00,0.00,0.00,0.00,0.00);
/*!40000 ALTER TABLE `staffs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_subject_marks`
--

DROP TABLE IF EXISTS `student_subject_marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_subject_marks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `student_id` bigint unsigned NOT NULL,
  `subject_id` int NOT NULL,
  `componentA` decimal(5,2) DEFAULT NULL,
  `componentB` decimal(5,2) DEFAULT NULL,
  `componentC` decimal(5,2) DEFAULT NULL,
  `componentD` decimal(5,2) DEFAULT NULL,
  `componentE` decimal(5,2) DEFAULT NULL,
  `grade_id` bigint unsigned NOT NULL,
  `average` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  KEY `subject_id` (`subject_id`),
  KEY `grade_id` (`grade_id`),
  CONSTRAINT `student_subject_marks_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  CONSTRAINT `student_subject_marks_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  CONSTRAINT `student_subject_marks_ibfk_3` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_subject_marks`
--

LOCK TABLES `student_subject_marks` WRITE;
/*!40000 ALTER TABLE `student_subject_marks` DISABLE KEYS */;
INSERT INTO `student_subject_marks` VALUES (33,15,1,0.00,0.00,0.00,0.00,0.00,8,NULL),(34,8,1,0.00,0.00,0.00,0.00,0.00,8,NULL),(35,7,1,0.00,0.00,0.00,0.00,0.00,8,NULL),(36,6,1,0.00,0.00,0.00,0.00,0.00,8,NULL),(37,5,1,0.00,0.00,0.00,0.00,0.00,8,NULL),(38,2,1,0.00,0.00,0.00,0.00,0.00,8,NULL),(39,1,1,0.00,0.00,0.00,0.00,0.00,8,NULL),(40,15,4,0.00,0.00,0.00,0.00,0.00,8,0.00),(41,8,4,0.00,0.00,0.00,0.00,0.00,8,0.00),(42,7,4,0.00,0.00,0.00,0.00,0.00,8,0.00),(43,6,4,0.00,0.00,0.00,0.00,0.00,8,0.00),(44,5,4,0.00,0.00,0.00,0.00,0.00,8,0.00),(45,2,4,0.00,0.00,0.00,0.00,0.00,8,0.00),(46,1,4,23.00,5.00,45.00,0.00,60.00,8,0.00),(47,15,5,0.00,0.00,0.00,0.00,0.00,8,0.00),(48,8,5,0.00,0.00,0.00,0.00,0.00,8,0.00),(49,7,5,0.00,0.00,0.00,0.00,0.00,8,0.00),(50,6,5,0.00,0.00,0.00,0.00,0.00,8,0.00),(51,5,5,56.00,0.01,0.00,0.00,0.00,8,0.00),(52,2,5,0.00,56.00,0.00,0.00,0.00,8,0.00),(53,1,5,0.00,67.00,0.00,0.00,0.00,8,12.00),(54,15,6,0.00,0.00,0.00,0.00,0.00,8,NULL),(55,8,6,0.00,0.00,0.00,0.00,0.00,8,NULL),(56,7,6,0.00,0.00,0.00,0.00,0.00,8,NULL),(57,6,6,0.00,0.00,0.00,0.00,0.00,8,NULL),(58,5,6,0.00,0.00,0.00,0.00,0.00,8,NULL),(59,2,6,0.00,0.00,0.00,0.00,0.00,8,NULL),(60,1,6,0.00,0.00,0.00,0.00,0.00,8,NULL),(62,15,1,0.00,0.00,0.00,0.00,0.00,8,0.00),(63,8,1,0.00,0.00,0.00,0.00,0.00,8,0.00),(64,7,1,0.00,0.00,0.00,0.00,0.00,8,0.00),(65,6,1,0.00,0.00,0.00,0.00,0.00,8,0.00),(66,5,1,0.00,0.00,0.00,0.00,0.00,8,0.00),(67,2,1,0.00,0.00,0.00,0.00,0.00,8,0.00),(68,1,1,0.00,0.00,0.00,0.00,0.00,8,0.00),(70,15,4,0.00,0.00,0.00,0.00,0.00,8,0.00),(71,8,4,0.00,0.00,0.00,0.00,0.00,8,0.00),(72,7,4,0.00,0.00,0.00,0.00,0.00,8,0.00),(73,6,4,0.00,0.00,0.00,0.00,0.00,8,0.00),(74,5,4,0.00,0.00,0.00,0.00,0.00,8,0.00),(75,2,4,0.00,0.00,0.00,0.00,0.00,8,0.00),(76,1,4,0.00,0.00,0.00,0.00,0.00,8,0.00),(78,15,5,0.00,0.00,0.00,0.00,0.00,8,0.00),(79,8,5,0.00,0.00,0.00,0.00,0.00,8,0.00),(80,7,5,0.00,0.00,0.00,0.00,0.00,8,0.00),(81,6,5,0.00,0.00,0.00,0.00,0.00,8,0.00),(82,5,5,0.00,0.00,0.00,0.00,0.00,8,0.00),(83,2,5,0.00,0.00,0.00,0.00,0.00,8,0.00),(84,1,5,0.00,0.00,0.00,0.00,0.00,8,0.00),(86,15,6,0.00,0.00,0.00,0.00,0.00,8,0.00),(87,8,6,0.00,0.00,0.00,0.00,0.00,8,0.00),(88,7,6,0.00,0.00,0.00,0.00,0.00,8,0.00),(89,6,6,0.00,0.00,0.00,0.00,0.00,8,0.00),(90,5,6,0.00,0.00,0.00,0.00,0.00,8,0.00),(91,2,6,0.00,0.00,0.00,0.00,0.00,8,0.00),(92,1,6,0.00,0.00,0.00,0.00,0.00,8,0.00);
/*!40000 ALTER TABLE `student_subject_marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `student_id` varchar(20) NOT NULL,
  `dateAdded` datetime NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `class_name` int DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `parent_name` varchar(100) DEFAULT NULL,
  `parent_phone` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `fees` decimal(10,2) DEFAULT NULL,
  `owed_fees` decimal(10,2) DEFAULT '0.00',
  `relationship` varchar(30) DEFAULT NULL,
  `healthyStatus` varchar(50) DEFAULT NULL,
  `dob` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_id` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Tavonga','Mafura','CIC202307000','2023-07-29 12:26:35','2023-10-05 10:26:04',8,'Male','Tavonga Mafura','Tavonga Mafura2','23 Main Street Apartment 4 Harare',80.00,277.00,NULL,NULL,'2018-09-26'),(2,'Tinovimba','Makomheke','CIC202307001','2023-07-29 12:26:35','2023-10-05 10:26:04',8,'Female','Taboz Mafura','0775652155','567 Park Road Bulawayo',80.00,297.50,NULL,NULL,'2018-09-26'),(5,'terence','mafura','CIC202307002','2023-08-08 13:41:00','2023-10-05 10:26:04',8,'male','Tabo Mafura','0775923458','39 chitsere new mabvuku',80.00,304.00,NULL,NULL,'2018-09-26'),(6,'Tinovonga','Mafura','CIC202307005','2023-08-10 11:38:12','2023-10-05 10:26:04',8,'Male','Tinovimba','0773372616','39 chitsere new mabvuku',80.00,385.00,NULL,NULL,'2018-09-26'),(7,'tanatswa','mafura','CIC202307004','2023-08-13 13:12:54','2023-10-05 10:26:04',8,'male','taboz','0773372616','39 chitsere new mabvuku',80.00,318.00,'','','2018-09-26'),(8,'Tino','Mafura','CIC202307003','2023-08-13 13:34:13','2023-10-05 10:26:04',8,'male','taboz','0773372616','39 chitsere new mabvuku',80.00,366.36,NULL,NULL,'2018-09-26'),(14,'terence','mafura','CIC202307008','2023-08-20 11:36:12','2023-10-05 09:12:28',5,'female','taboz','0773372616','39 chitsere new mabvuku',20.00,116.67,NULL,NULL,'2018-09-26'),(15,'testnow','mafura','CIC202307009','2023-08-26 11:55:28','2023-10-05 10:26:04',8,'male','taboz','0773372616','39 chitsere new mabvuku',80.00,368.60,'Father','None','2018-09-26'),(16,'test','mafura','CIC2023070010','2023-08-26 12:52:02','2023-10-05 09:12:28',2,'male','taboz','0773372616','39 chitsere new mabvuku',20.00,55.00,'Father','None','2018-09-26'),(24,'taku','moyo','TAB202309000','2023-09-25 13:30:24','2023-10-05 10:32:53',12,'Female','Moyo','077337261665','39 chitsere new mabvuku',75.00,495.00,'sister','None','2018-09-26'),(25,'yeru','yeru','TAB202309001','2023-09-26 12:19:40','2023-10-05 10:34:48',15,'Male','taboz','0773372616','39 chitsere new mabvuku',75.00,275.00,'Father','None','2022-10-05'),(26,'rew','rew','TAB202309002','2023-09-26 13:35:47','2023-10-05 10:32:53',12,'Male','taboz','0773372616','39 chitsere new mabvuku',75.00,532.00,'Father','None','2001-04-20'),(27,'ooooooooo','ooooooooooo','TAB202310000','2023-10-05 12:43:02','2023-10-05 10:46:00',3,'Female','taboz','0773372616','39 chitsere new mabvuku',20.00,30.00,'Father','None','2008-03-12');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `dateAdded` date DEFAULT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'Shona','2023-09-19','2023-09-19 15:22:11'),(4,'Maths','2023-09-19','2023-09-19 15:23:44'),(5,'Science','2023-09-19','2023-09-19 15:23:46'),(6,'English','2023-09-19','2023-09-19 15:23:48');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(10) DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `profession` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `dateAdded` datetime NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `department` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (2,'Taboz','Mafura','Male','','Mathematics','2023-08-14 09:30:07','2023-09-08 10:52:03','language'),(4,'tavoz','mafura','male',NULL,'English,Mathematics,shona','2023-08-15 14:58:06','2023-08-15 12:58:06',NULL),(5,'terence','mafura','male',NULL,'english','2023-08-16 15:01:20','2023-08-16 13:01:39','language'),(6,'talain','mafura','male','engineer','mathematics','2023-09-08 10:37:46','2023-09-08 08:37:46','maths'),(7,'Tafadzwa','Mafura','male','Teacher','Mathematics','2023-09-10 16:32:02','2023-09-10 14:32:02','Sciences'),(11,'taboz','marezi','Female','Teacher','Maths','2023-09-24 09:01:00','2023-09-24 07:01:00','Mathematics'),(13,'taboz','marezi','Female','test','test','2023-09-28 05:39:18','2023-09-28 03:39:18','Mathematics'),(14,'kuda','furex','Male','test','test','2023-09-28 05:43:01','2023-09-28 03:43:01','maths');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `transId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ref` varchar(10) NOT NULL,
  `studentName` varchar(50) DEFAULT NULL,
  `studentSurname` varchar(50) DEFAULT NULL,
  `student_id` varchar(20) NOT NULL,
  `studentClass_name` int NOT NULL,
  `description` text,
  `totalAmount` decimal(10,2) NOT NULL,
  `totalMoneySpent` decimal(10,2) NOT NULL,
  `amountTendered` decimal(10,2) NOT NULL,
  `changeDue` decimal(10,2) NOT NULL,
  `modeOfPayment` varchar(20) NOT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `cust_name` varchar(20) DEFAULT NULL,
  `cust_phone` varchar(15) DEFAULT NULL,
  `cust_email` varchar(50) DEFAULT NULL,
  `transType` char(1) NOT NULL,
  `staffId` bigint unsigned NOT NULL,
  `transDate` datetime NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cancelled` char(1) NOT NULL DEFAULT '0',
  `paymentStatus` tinyint(1) NOT NULL DEFAULT '0',
  `term` varchar(10) DEFAULT NULL,
  `latePenalty` decimal(10,2) DEFAULT NULL,
  `refundDate` datetime DEFAULT NULL,
  `refundAmount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`transId`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (134,'61547854','taku','moyo','TAB202309000',12,'Fees',45.00,45.00,50.00,5.00,'Cash','USD','','0773372616','','1',1,'2023-09-28 13:34:17','2023-09-28 11:34:17','0',1,'First',NULL,NULL,NULL),(135,'0389806','tanatswa','mafura','CIC202307004',8,'Fees',2390.00,2390.00,2390.00,0.00,'Cash','ZAR','','0773372616','','1',1,'2023-09-28 13:35:16','2023-09-28 11:35:16','0',1,'First',NULL,NULL,NULL),(136,'3131897','Tinovimba','Makomheke','CIC202307001',8,'Fees',450.00,450.00,450.00,0.00,'POS','RTGS','','0773372616','','1',1,'2023-09-28 13:42:27','2023-09-28 11:42:27','0',1,'',NULL,NULL,NULL),(137,'258178510','tanatswa','mafura','CIC202307004',8,'terrr',4.70,4.70,5.00,0.30,'Cash','USD','','0773372616','','1',1,'2023-10-04 18:01:10','2023-10-04 16:01:10','0',1,'Second',NULL,NULL,NULL),(138,'41480169','rew','rew','TAB202309002',12,'Registration Fee',35.00,35.00,35.00,0.00,'Cash','USD','rew rew','','','2',1,'2023-10-04 18:02:12','2023-10-04 16:02:12','0',1,'Exam',NULL,NULL,NULL);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions_item`
--

DROP TABLE IF EXISTS `transactions_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions_item` (
  `transId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ref` varchar(10) NOT NULL,
  `itemName` varchar(50) NOT NULL,
  `itemCode` varchar(50) NOT NULL,
  `description` text,
  `quantity` int NOT NULL,
  `unitPrice` decimal(10,2) NOT NULL,
  `totalPrice` decimal(10,2) NOT NULL,
  `totalMoneySpent` decimal(10,2) NOT NULL,
  `amountTendered` decimal(10,2) NOT NULL,
  `discount_amount` decimal(10,2) NOT NULL,
  `discount_percentage` decimal(10,2) NOT NULL,
  `vatPercentage` decimal(10,2) NOT NULL,
  `vatAmount` decimal(10,2) NOT NULL,
  `changeDue` decimal(10,2) NOT NULL,
  `modeOfPayment` varchar(20) NOT NULL,
  `cust_name` varchar(20) DEFAULT NULL,
  `cust_phone` varchar(20) DEFAULT NULL,
  `cust_email` varchar(20) DEFAULT NULL,
  `transType` char(1) NOT NULL,
  `staffId` bigint unsigned NOT NULL,
  `transDate` datetime NOT NULL,
  `lastUpdated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cancelled` char(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`transId`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions_item`
--

LOCK TABLES `transactions_item` WRITE;
/*!40000 ALTER TABLE `transactions_item` DISABLE KEYS */;
INSERT INTO `transactions_item` VALUES (164,'0640637','cousins','24','',5,7.50,37.50,37.50,50.00,0.00,0.00,0.00,0.00,12.50,'Cash','','0773372616','','1',1,'2023-09-28 13:39:29','2023-09-28 11:39:29','0'),(165,'037205914','tavonga','30','',24,25.00,600.00,600.00,1000.00,0.00,0.00,0.00,0.00,400.00,'Cash','','0773372616','','1',1,'2023-09-28 13:40:12','2023-09-28 11:40:12','0'),(166,'75468950','Demo Item','101','',1,500.00,500.00,500.00,4000.00,0.00,0.00,0.00,0.00,3500.00,'Cash','aatfhjhkl','0776988000','','1',1,'2023-09-29 12:10:15','2023-09-29 10:10:15','0'),(167,'8496802','tavonga','30','',1,25.00,25.00,25.00,56.00,0.00,0.00,0.00,0.00,31.00,'Cash','','0773372616','','1',1,'2023-10-04 18:04:08','2023-10-04 16:04:08','0');
/*!40000 ALTER TABLE `transactions_item` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-14  6:49:12
