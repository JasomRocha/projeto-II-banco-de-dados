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
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cliente_id` bigint unsigned NOT NULL,
  `vendedor_id` bigint unsigned NOT NULL,
  `forma_pagamento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_pagamento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cupom_desconto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `compra_cliente_id_foreign` (`cliente_id`),
  KEY `compra_vendedor_id_foreign` (`vendedor_id`),
  CONSTRAINT `compra_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`) ON DELETE CASCADE,
  CONSTRAINT `compra_vendedor_id_foreign` FOREIGN KEY (`vendedor_id`) REFERENCES `vendedor` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` VALUES (7,10,5,'Cartão','confirmado','LOL','2024-04-28 16:20:03','2024-04-28 16:20:03'),(9,20,4,'Cartão','confirmado','onepice10','2024-04-28 16:20:03','2024-04-28 16:20:03'),(11,9,1,'Cartão','confirmado',NULL,'2024-04-28 16:20:03','2024-04-28 16:20:03'),(23,2,2,'boleto','confirmado',NULL,'2024-04-29 04:22:20','2024-04-29 04:22:20'),(25,1,3,'boleto','confirmado',NULL,'2024-04-29 06:01:31','2024-04-29 06:01:31'),(26,4,5,'boleto','confirmado',NULL,'2024-04-29 06:01:59','2024-04-29 06:01:59'),(29,10,3,'pix','confirmado',NULL,'2024-04-29 06:42:49','2024-04-29 06:42:49'),(31,4,3,'boleto','confirmado',NULL,'2024-04-29 14:57:42','2024-04-29 14:57:42'),(32,1,3,'cartao','confirmado','Jasão da massa','2024-04-29 18:44:42','2024-04-29 18:44:42'),(34,1,2,'boleto','confirmado','souza','2024-04-29 18:45:48','2024-04-29 18:45:48'),(35,9,1,'boleto','confirmado','Mengo','2024-04-29 18:56:23','2024-04-29 18:56:23'),(38,8,4,'pix','confirmado','lucidio','2024-04-29 19:39:07','2024-04-29 19:39:07'),(40,11,4,'pix','confirmado','vasco','2024-04-30 20:47:39','2024-04-30 20:47:39'),(41,2,2,'PIX','confirmado','lucidio','2024-04-30 20:47:39','2024-04-30 20:47:39'),(42,2,2,'PIX','confirmado','lucidio','2024-05-01 04:36:02','2024-05-01 04:36:02'),(43,1,5,'PIX','confirmado','vasco','2024-05-01 05:18:23','2024-05-01 05:18:23'),(44,13,2,'pix','confirmado','vasco','2024-05-01 08:36:36','2024-05-01 08:36:36'),(45,5,2,'pix','confirmado','lucidio','2024-05-01 14:23:53','2024-05-01 14:23:53'),(46,2,2,'PIX','confirmado','lucidio','2024-05-01 11:25:38','2024-05-01 11:25:38'),(47,5,2,'pix','confirmado','lucidio','2024-05-01 14:31:06','2024-05-01 14:31:06');
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
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
