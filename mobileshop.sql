/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.9-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: mobileshop
-- ------------------------------------------------------
-- Server version	10.11.9-MariaDB-0+deb12u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Carts`
--

DROP TABLE IF EXISTS `Carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Carts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `quantity` int(11) DEFAULT 1,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productId` (`productId`),
  CONSTRAINT `Carts_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `Products` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Carts`
--

LOCK TABLES `Carts` WRITE;
/*!40000 ALTER TABLE `Carts` DISABLE KEYS */;
INSERT INTO `Carts` VALUES
(10,4,17,1,'2025-02-10 10:20:33','2025-02-10 10:20:33'),
(11,4,16,2,'2025-02-10 10:23:40','2025-02-10 10:26:07'),
(15,7,16,1,'2025-02-10 10:58:45','2025-02-10 10:58:45'),
(16,7,18,1,'2025-02-10 10:59:34','2025-02-10 10:59:34');
/*!40000 ALTER TABLE `Carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderItems`
--

DROP TABLE IF EXISTS `OrderItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OrderItems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orderId` (`orderId`),
  KEY `productId` (`productId`),
  CONSTRAINT `OrderItems_ibfk_1` FOREIGN KEY (`orderId`) REFERENCES `Orders` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `OrderItems_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `Products` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderItems`
--

LOCK TABLES `OrderItems` WRITE;
/*!40000 ALTER TABLE `OrderItems` DISABLE KEYS */;
INSERT INTO `OrderItems` VALUES
(1,1,16,1,65000,'2025-02-10 09:31:07','2025-02-10 09:31:07'),
(2,1,14,4,157000,'2025-02-10 09:31:07','2025-02-10 09:31:07'),
(3,1,18,2,45000,'2025-02-10 09:31:07','2025-02-10 09:31:07'),
(4,2,14,1,157000,'2025-02-10 09:35:32','2025-02-10 09:35:32'),
(5,3,14,1,157000,'2025-02-10 09:37:39','2025-02-10 09:37:39'),
(6,3,16,1,65000,'2025-02-10 09:37:39','2025-02-10 09:37:39'),
(7,4,14,1,157000,'2025-02-10 09:57:55','2025-02-10 09:57:55'),
(8,5,15,1,95000,'2025-02-10 10:08:01','2025-02-10 10:08:01'),
(9,6,16,1,65000,'2025-02-10 10:19:19','2025-02-10 10:19:19'),
(10,7,23,1,96200,'2025-02-10 10:34:39','2025-02-10 10:34:39'),
(11,8,19,1,32000,'2025-02-10 10:37:43','2025-02-10 10:37:43'),
(12,9,19,1,32000,'2025-02-10 10:57:48','2025-02-10 10:57:48');
/*!40000 ALTER TABLE `OrderItems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `totalAmount` float NOT NULL,
  `status` varchar(255) DEFAULT 'Pending',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES
(1,4,783000,'Pending','2025-02-10 09:31:07','2025-02-10 09:31:07'),
(2,4,157000,'Pending','2025-02-10 09:35:32','2025-02-10 09:35:32'),
(3,4,222000,'Pending','2025-02-10 09:37:39','2025-02-10 09:37:39'),
(4,4,157000,'Pending','2025-02-10 09:57:55','2025-02-10 09:57:55'),
(5,4,95000,'Pending','2025-02-10 10:08:01','2025-02-10 10:08:01'),
(6,4,65000,'Pending','2025-02-10 10:19:19','2025-02-10 10:19:19'),
(7,7,96200,'Pending','2025-02-10 10:34:39','2025-02-10 10:34:39'),
(8,7,32000,'Pending','2025-02-10 10:37:43','2025-02-10 10:37:43'),
(9,7,32000,'Pending','2025-02-10 10:57:48','2025-02-10 10:57:48');
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Products`
--

DROP TABLE IF EXISTS `Products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `image` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Products`
--

LOCK TABLES `Products` WRITE;
/*!40000 ALTER TABLE `Products` DISABLE KEYS */;
INSERT INTO `Products` VALUES
(14,'iphone',157000,'/uploads/1739074048827.png','2025-02-09 04:07:28','2025-02-09 04:07:28'),
(15,'Mac Book',95000,'/uploads/1739074077383.png','2025-02-09 04:07:57','2025-02-09 04:07:57'),
(16,'iphone 13',65000,'/uploads/1739074110363.webp','2025-02-09 04:08:30','2025-02-09 04:08:30'),
(17,'Charger',5000,'/uploads/1739074131221.png','2025-02-09 04:08:51','2025-02-09 04:08:51'),
(18,'Apple TV',45000,'/uploads/1739074162609.png','2025-02-09 04:09:22','2025-02-09 04:09:22'),
(19,'Speaker',32000,'/uploads/1739074185190.png','2025-02-09 04:09:45','2025-02-09 04:09:45'),
(20,'Airpods',19000,'/uploads/1739074245875.png','2025-02-09 04:10:45','2025-02-09 04:10:45'),
(21,'Monitor',70000,'/uploads/1739074282296.jpeg','2025-02-09 04:11:22','2025-02-09 04:11:22'),
(22,'Mac Air',125000,'/uploads/1739074317238.jpeg','2025-02-09 04:11:57','2025-02-09 04:11:57'),
(23,'i - Watch',96200,'/uploads/1739074400363.png','2025-02-09 04:13:20','2025-02-09 04:13:20'),
(24,'i - watch',56000,'/uploads/1739115432094.jpeg','2025-02-09 15:37:12','2025-02-09 15:37:12');
/*!40000 ALTER TABLE `Products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SequelizeMeta`
--

DROP TABLE IF EXISTS `SequelizeMeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SequelizeMeta`
--

LOCK TABLES `SequelizeMeta` WRITE;
/*!40000 ALTER TABLE `SequelizeMeta` DISABLE KEYS */;
INSERT INTO `SequelizeMeta` VALUES
('20250207060140-create-products-table.js');
/*!40000 ALTER TABLE `SequelizeMeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirmPassword` varchar(255) NOT NULL,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES
(1,'Jeevan sudhagar A ','jeevansudhagar@gmail.com','123','123','2025-02-04 11:32:21','2025-02-04 11:32:21'),
(2,'karthik k','karthi@gmail.com','$2b$10$0lHf83sw1QeNerdUKIMfruyHrbLVC6BKYIxR2UZV78r3ksJ90YP8S','123','2025-02-05 08:07:55','2025-02-05 08:07:55'),
(3,'tony','tony@gmai.com','$2b$10$.ZqkgHMjjeKUhOKtZSqbBOxcDBfuk6Lld37QhQt17WjiDNQiBLIeG','123','2025-02-06 10:07:22','2025-02-06 10:07:22'),
(4,'Jeevan ','jeevan@gmail.com','$2b$10$cpn69mngaOFP0W7ENsBTpeeFrcNBPEXmizG3QX/9Ebb3OvrF3o07.','123','2025-02-06 10:26:30','2025-02-06 10:26:30'),
(5,'jeeva','jeeva@gmail.com','$2b$10$ZcOHA0dNn.S0EizJo3LiFe/MKRlYpkBCvN5N3VOLB50qh5ptBAsL2','123','2025-02-07 05:33:31','2025-02-07 05:33:31'),
(6,'udhay','udhay@gmail.com','$2b$10$zleBPJJsrmWaLkZZEYItoufs.8PcSPVBwpo6BwMGzui7K7J8CoMiO','$2b$10$4k8rmPdB4yYzzDKLsHfGruCHLLB2kjeixk6GdFYc4Qfgy7wvhFv0K','2025-02-08 06:58:38','2025-02-08 06:58:38'),
(7,'velan','velan@gmail.com','$2b$10$8g97x3b0vMg6/pM34JJ4kezs/IubK7dJ6FPsk.9OSJD4A2iH5rohu','$2b$10$bhFykhfUJtJ3iO7bKd1a.OvRP/iPnhJsXAf0soLUaTfTLU8ijEhE2','2025-02-10 10:32:13','2025-02-10 10:32:13');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-10 16:51:52
