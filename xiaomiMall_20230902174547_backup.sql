-- MySQL dump 10.13  Distrib 5.7.26, for Win64 (x86_64)
--
-- Host: localhost    Database: xiaomiMall
-- ------------------------------------------------------
-- Server version	5.7.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `oprice` float DEFAULT NULL,
  `price` float DEFAULT NULL,
  `image` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2,NULL,NULL,NULL,'static/uploads/products/20230831/pro1.jpg'),(3,NULL,NULL,NULL,'static/uploads/products/20230831/pro2.jpg'),(4,NULL,NULL,NULL,'static/uploads/products/20230831/pro3.jpg'),(5,NULL,NULL,NULL,'static/uploads/products/20230831/pro4.jpg'),(6,NULL,NULL,NULL,'static/uploads/products/20230831/pro5.jpg'),(7,NULL,NULL,NULL,'static/uploads/products/20230831/pro6.jpg'),(8,NULL,NULL,NULL,'static/uploads/products/20230831/pro7.jpg'),(9,NULL,NULL,NULL,'static/uploads/products/20230831/pro8.jpg'),(10,NULL,NULL,NULL,'static/uploads/products/20230831/pro9.jpg'),(11,NULL,NULL,NULL,'static/uploads/products/20230831/pro10.jpg'),(12,NULL,NULL,NULL,'static/uploads/products/20230831/pro11.jpg'),(13,NULL,NULL,NULL,'static/uploads/products/20230831/pro12.jpg'),(14,NULL,NULL,NULL,'static/uploads/products/20230831/pro13.jpg'),(15,NULL,NULL,NULL,'static/uploads/products/20230831/pro14.jpg'),(16,NULL,NULL,NULL,'static/uploads/products/20230831/pro15.jpg'),(17,NULL,NULL,NULL,'static/uploads/products/20230831/pro16.jpg'),(18,NULL,NULL,NULL,'static/uploads/products/20230831/pro17.jpg'),(19,NULL,NULL,NULL,'static/uploads/products/20230831/pro18.jpg'),(20,NULL,NULL,NULL,'static/uploads/products/20230831/pro19.jpg'),(21,NULL,NULL,NULL,'static/uploads/products/20230831/pro20.jpg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-02 17:45:47
