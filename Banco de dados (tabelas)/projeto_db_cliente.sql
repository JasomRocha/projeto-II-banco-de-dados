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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `torce_flamengo` tinyint(1) NOT NULL DEFAULT '0',
  `assiste_one_piece` tinyint(1) NOT NULL DEFAULT '0',
  `cidade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cliente_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'João Silva','joao@example.com',1,0,'Rio de Janeiro','2024-04-28 16:20:03','2024-04-28 16:20:03'),(2,'Maria Santos','maria@example.com',0,1,'São Paulo','2024-04-28 16:20:03','2024-04-28 16:20:03'),(4,'Ana Souza','ana@example.com',1,1,'Brasília','2024-04-28 16:20:03','2024-04-28 16:20:03'),(5,'Carlos Ferreira','carlos@example.com',0,0,'Curitiba','2024-04-28 16:20:03','2024-04-28 16:20:03'),(6,'Luciana Pereira','luciana@example.com',1,0,'Salvador','2024-04-28 16:20:03','2024-04-28 16:20:03'),(7,'Fernando Silva','fernando@example.com',0,1,'Porto Alegre','2024-04-28 16:20:03','2024-04-28 16:20:03'),(8,'Mariana Oliveira','mariana@example.com',1,0,'Manaus','2024-04-28 16:20:03','2024-04-28 16:20:03'),(9,'Rafael Rodrigues','rafael@example.com',0,1,'Fortaleza','2024-04-28 16:20:03','2024-04-28 16:20:03'),(10,'Amanda Costa','amanda@example.com',1,0,'Recife','2024-04-28 16:20:03','2024-04-28 16:20:03'),(11,'Rodrigo Almeida','rodrigo@example.com',0,1,'Belém','2024-04-28 16:20:03','2024-04-28 16:20:03'),(12,'Juliana Santos','juliana@example.com',1,0,'Natal','2024-04-28 16:20:03','2024-04-28 16:20:03'),(13,'Gustavo Lima','gustavo@example.com',0,1,'João Pessoa','2024-04-28 16:20:03','2024-04-28 16:20:03'),(14,'Carolina Martins','carolina@example.com',1,0,'Aracaju','2024-04-28 16:20:03','2024-04-28 16:20:03'),(15,'Bruno Oliveira','bruno@example.com',0,1,'Vitória','2024-04-28 16:20:03','2024-04-28 16:20:03'),(16,'Isabela Fernandes','isabela@example.com',1,0,'Teresina','2024-04-28 16:20:03','2024-04-28 16:20:03'),(18,'Fernanda Santos','fernanda@example.com',1,0,'Cuiabá','2024-04-28 16:20:03','2024-04-28 16:20:03'),(19,'Luiz Souza','luiz@example.com',0,1,'Macapá','2024-04-28 16:20:03','2024-04-28 16:20:03'),(20,'Patrícia Lima','patricia@example.com',1,0,'Boa Vista','2024-04-28 16:20:03','2024-04-28 16:20:03'),(22,'Patrícia Limeira','patricia2@example.com',1,0,'Boa Vista','2024-04-29 05:34:18','2024-04-29 05:34:18'),(24,'Ricardo da Silva','ric10@gmail.com',1,0,'Natal','2024-04-29 06:10:07','2024-04-29 06:10:07'),(25,'Ricardo Maia','ricardo@hotmail.com.br',1,1,'cajazeiras','2024-04-29 19:33:39','2024-04-29 19:33:39'),(27,'Talida Rocha','tata@gmail.com',0,0,'Cabedelo','2024-04-29 19:37:20','2024-04-29 19:37:20'),(28,'Talita Rocha','tata2@hotmail.com',0,0,'Cabedelo','2024-04-29 19:37:53','2024-04-29 19:37:53'),(29,'Phillip Paiva','phi@gmail.com',1,1,'Cabedelo','2024-05-01 14:15:05','2024-05-01 14:15:05');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
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
