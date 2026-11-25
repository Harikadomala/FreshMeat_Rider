-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: freshmeat
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `rider_documents`
--

DROP TABLE IF EXISTS `rider_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rider_documents` (
  `document_id` int NOT NULL AUTO_INCREMENT,
  `rider_id` int NOT NULL,
  `rider_photo` varchar(255) DEFAULT NULL,
  `license_front` varchar(255) DEFAULT NULL,
  `license_back` varchar(255) DEFAULT NULL,
  `rc_front` varchar(255) DEFAULT NULL,
  `rc_back` varchar(255) DEFAULT NULL,
  `vehicle_photo` varchar(255) DEFAULT NULL,
  `submitted_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`document_id`),
  UNIQUE KEY `rider_id` (`rider_id`),
  CONSTRAINT `rider_documents_ibfk_1` FOREIGN KEY (`rider_id`) REFERENCES `riders` (`rider_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rider_documents`
--

LOCK TABLES `rider_documents` WRITE;
/*!40000 ALTER TABLE `rider_documents` DISABLE KEYS */;
INSERT INTO `rider_documents` VALUES (1,1,'rider_photo.jpg','license_front.jpg','license_back.jpg','rc_front.jpg','rc_back.jpg','vehicle_photo.jpg','2026-11-20 03:36:24'),(2,2,'rider_photo.jpg','license_front.jpg','license_back.jpg','rc_front.jpg','rc_back.jpg','vehicle_photo.jpg','2026-11-20 03:53:25'),(3,3,'rider_photo.jpg','license_front.jpg','license_back.jpg','rc_front.jpg','rc_back.jpg','vehicle_photo.jpg','2026-11-23 03:06:44'),(4,4,'rider_photo.jpg','license_front.jpg','license_back.jpg','rc_front.jpg','rc_back.jpg','vehicle_photo.jpg','2026-11-23 04:30:01');
/*!40000 ALTER TABLE `rider_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `riders`
--

DROP TABLE IF EXISTS `riders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `riders` (
  `rider_id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `vehicle_number` varchar(20) NOT NULL,
  `licence_number` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `status` varchar(20) DEFAULT 'Approved',
  `verification_submitted` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`rider_id`),
  UNIQUE KEY `phone` (`phone`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `vehicle_number` (`vehicle_number`),
  UNIQUE KEY `licence_number` (`licence_number`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `riders`
--

LOCK TABLES `riders` WRITE;
/*!40000 ALTER TABLE `riders` DISABLE KEYS */;
INSERT INTO `riders` VALUES (1,'Domala Satya Harika','9014063368','harikadomala9@gmail.com','beside uinon bank prathipadu\r\nbhanugudi','AP 05 AB 1234','123456','aditya','scrypt:32768:8:1$EcdXPXNIP5USIqxS$6736db4f73ba73b35326f98f90a5672fb09970d4c5e2bdca95f1c732a8005f70f20673d4552db7467632777b2a958f6811f8cbb1d2a7c3819f3a50c4cf6360c8','Approved',1,'2026-11-20 03:30:00'),(2,'Domala Venu','9110766143','domala@lpu.in','beside uinon bank prathipadu\r\nbhanugudi','AP 05 AB 1788','678832204','varshika_12','scrypt:32768:8:1$al5FMKwLr6Qi4sZ6$4fb6f66727c4800ed8e841d4922adda81ce0f4f81c1440e40cfec6f02056f34a68a9d0e9ecb96725eafba3200ec543beef12515824952fc2ef158b36fcba82ec','Approved',1,'2026-11-20 03:52:19'),(3,'Domala Vimala','7397272918','harika@lpu.in','beside uinon bank prathipadu\r\nbhanugudi','AP31AB5679','795565789','vimala','scrypt:32768:8:1$qTBIoXfkQzlGhmTf$64ffbdb01f17c0d19ff6725b4a4216b247165a3c45b2534277919bffb4cdb84c54abe8535829d332e43ce8044c9008665487e840a7baf8429f72c94605cceb40','Approved',1,'2026-11-23 03:05:22'),(4,'vivek','7601009824','vivek12@gmail.com','beside uinon bank prathipadu\r\nbhanugudi','AP 05 AB 1889','795565849','vivek','scrypt:32768:8:1$dkpHsX5kRETtIk95$74fd57cb5fcd86ce204c3e4d30946e78cac6339373ac728e41658b5e6047bf8c9f54639bbebbee22a4d6885e3748a2e43e1f9ec014324a479237c009a32e21eb','Approved',1,'2026-11-23 04:29:10');
/*!40000 ALTER TABLE `riders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-24  9:23:04
