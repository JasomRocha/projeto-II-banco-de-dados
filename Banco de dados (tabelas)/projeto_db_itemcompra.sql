-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: projeto_db
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `itemcompra`
--

DROP TABLE IF EXISTS `itemcompra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itemcompra` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `compra_id` bigint unsigned NOT NULL,
  `produto_id` bigint unsigned NOT NULL,
  `quantidade` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `itemcompra_compra_id_foreign` (`compra_id`),
  KEY `itemcompra_produto_id_foreign` (`produto_id`),
  CONSTRAINT `itemcompra_compra_id_foreign` FOREIGN KEY (`compra_id`) REFERENCES `compra` (`id`) ON DELETE CASCADE,
  CONSTRAINT `itemcompra_produto_id_foreign` FOREIGN KEY (`produto_id`) REFERENCES `produto` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemcompra`
--

LOCK TABLES `itemcompra` WRITE;
/*!40000 ALTER TABLE `itemcompra` DISABLE KEYS */;
INSERT INTO `itemcompra` VALUES (2,7,3,7,'2024-04-28 16:20:30','2024-04-28 16:20:30'),(21,23,12,1,'2024-04-29 04:22:20','2024-04-29 04:22:20'),(24,25,5,1,'2024-04-29 06:01:32','2024-04-29 06:01:32'),(25,26,7,2,'2024-04-29 06:01:59','2024-04-29 06:01:59'),(30,29,1,2,'2024-04-29 06:42:49','2024-04-29 06:42:49'),(31,31,3,2,'2024-04-29 14:57:42','2024-04-29 14:57:42'),(32,32,1,1,'2024-04-29 18:44:42','2024-04-29 18:44:42'),(33,32,2,1,'2024-04-29 18:44:42','2024-04-29 18:44:42'),(34,34,1,2,'2024-04-29 18:45:48','2024-04-29 18:45:48'),(35,34,2,1,'2024-04-29 18:45:48','2024-04-29 18:45:48'),(36,35,1,1,'2024-04-29 18:56:23','2024-04-29 18:56:23'),(42,38,7,3,'2024-04-29 19:39:07','2024-04-29 19:39:07'),(46,40,1,1,'2024-04-30 20:47:39','2024-04-30 20:47:39'),(47,40,2,1,'2024-04-30 20:47:39','2024-04-30 20:47:39'),(48,41,10,2,'2024-04-30 20:47:39','2024-04-30 20:47:39'),(49,42,2,1,'2024-04-30 20:47:39','2024-04-30 20:47:39'),(50,9,2,3,'2024-04-30 20:47:39','2024-04-30 20:47:39'),(51,11,10,2,'2024-04-30 20:47:39','2024-04-30 20:47:39'),(52,43,10,2,NULL,NULL),(53,44,1,1,'2024-05-01 08:36:36','2024-05-01 08:36:36'),(54,44,2,1,'2024-05-01 08:36:36','2024-05-01 08:36:36'),(55,45,1,2,'2024-05-01 14:23:53','2024-05-01 14:23:53'),(56,46,2,1,NULL,NULL),(57,47,1,2,'2024-05-01 14:31:06','2024-05-01 14:31:06'),(58,47,2,2,'2024-05-01 14:31:06','2024-05-01 14:31:06');
/*!40000 ALTER TABLE `itemcompra` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-01 10:01:14
