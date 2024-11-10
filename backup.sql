-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: pizza1
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `prices`
--

DROP TABLE IF EXISTS `prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `price_small` decimal(10,2) DEFAULT NULL,
  `price_medium` decimal(10,2) DEFAULT NULL,
  `price_large` decimal(10,2) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `prices_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prices`
--

LOCK TABLES `prices` WRITE;
/*!40000 ALTER TABLE `prices` DISABLE KEYS */;
INSERT INTO `prices` VALUES (7,7,210.00,320.00,342.00,NULL),(8,8,320.00,504.00,765.00,NULL),(9,9,209.00,329.00,539.00,NULL),(10,10,300.00,400.00,500.00,NULL),(11,11,210.00,233.00,432.00,NULL),(12,12,210.00,439.00,600.00,NULL),(13,13,320.00,430.00,600.00,NULL),(14,14,210.00,600.00,900.00,NULL),(15,15,NULL,NULL,NULL,300.00),(16,16,NULL,NULL,NULL,400.00),(17,17,NULL,NULL,NULL,300.00),(18,18,NULL,NULL,NULL,999.00);
/*!40000 ALTER TABLE `prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `category` varchar(255) NOT NULL,
  `sub_category` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (7,'Opew PIZZA','Water, Solt, Orangr, Poees, Ferwd, Jeed, Cheez, Sopd.','╨Я╨╕╤Ж╤Ж╤Л',NULL,'/uploads/1731118259044.png'),(8,'Feod','Water, Solt, Orangr, Poees, Ferwd, Jeed, Cheez, Sopd.','╨Я╨╕╤Ж╤Ж╤Л',NULL,'/uploads/1731118283947.png'),(9,'GwOPe pizza','Water, Solt, Orangr, Poees, Ferwd, Jeed, Cheez, Sopd.','╨Я╨╕╤Ж╤Ж╤Л',NULL,'/uploads/1731118318061.png'),(10,'Pizza pep','Water, Solt, Orangr, Poees, Ferwd, Jeed, Cheez, Sopd.','╨Я╨╕╤Ж╤Ж╤Л',NULL,'/uploads/1731118344133.png'),(11,'FIsp pizza','Water, Solt, Orangr, Poees, Ferwd, Jeed, Cheez, Sopd.','╨з╨░╤Б╤В╨╛ ╨┐╤А╨╛╨┤╨░╨▓╨░╨╡╨╝╤Л╨╡ ╤В╨╛╨▓╨░╤А╤Л','╨Я╨╕╤Ж╤Ж╤Л','/uploads/1731118377610.png'),(12,'Poil Pizza','Water, Solt, Orangr, Poees, Ferwd, Jeed, Cheez, Sopd.','╨з╨░╤Б╤В╨╛ ╨┐╤А╨╛╨┤╨░╨▓╨░╨╡╨╝╤Л╨╡ ╤В╨╛╨▓╨░╤А╤Л','╨Я╨╕╤Ж╤Ж╤Л','/uploads/1731118405503.png'),(13,'Qpo pizza','Water, Solt, Orangr, Poees, Ferwd, Jeed, Cheez, Sopd.','╨з╨░╤Б╤В╨╛ ╨┐╤А╨╛╨┤╨░╨▓╨░╨╡╨╝╤Л╨╡ ╤В╨╛╨▓╨░╤А╤Л','╨Я╨╕╤Ж╤Ж╤Л','/uploads/1731118425401.png'),(14,'Rewq Peperoni','Water, Solt, Orangr, Poees, Ferwd, Jeed, Cheez, Sopd.','╨з╨░╤Б╤В╨╛ ╨┐╤А╨╛╨┤╨░╨▓╨░╨╡╨╝╤Л╨╡ ╤В╨╛╨▓╨░╤А╤Л','╨Я╨╕╤Ж╤Ж╤Л','/uploads/1731118456909.png'),(15,'Ps Zhes','Water, Solt, Orangr, Poees, Ferwd, Jeed, Cheez, Sopd.','╨б╨░╨╗╨░╤В╤Л',NULL,'/uploads/1731118507681.jpg'),(16,'Wolivcie','Water, Solt, Orangr, Poees, Ferwd, Jeed, Cheez, Sopd.','╨б╨░╨╗╨░╤В╤Л',NULL,'/uploads/1731118524523.jpg'),(17,'Epoped','Water, Solt, Orangr, Poees, Ferwd, Jeed, Cheez, Sopd.','╨б╨░╨╗╨░╤В╤Л',NULL,'/uploads/1731118537893.png'),(18,'Epoop','Water, Solt, Orangr, Poees, Ferwd, Jeed, Cheez, Sopd.','╨б╨░╨╗╨░╤В╤Л',NULL,'/uploads/1731118556508.jpg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin@example.com','$2a$10$iD6D.0um9VXWXolEypos4.ZEzlpfO/RaM77X0G72NXkzFd9cJO5NK','admin','1234567890','DefaultCountry','male');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-10 14:51:39
