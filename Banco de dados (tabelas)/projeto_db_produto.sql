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
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `estoque` int NOT NULL,
  `categoria` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fabricante` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'Camisa Flamengo',50.00,5,'Roupa','Flamengo LTDA','2024-04-28 16:20:03','2024-05-01 14:31:06'),(2,'Manga One Piece',25.00,4,'Manga','Shueisha','2024-04-28 16:20:03','2024-05-01 14:31:06'),(3,'Bola de Futebol',30.00,12,'Esporte','Nike','2024-04-28 16:20:03','2024-04-29 21:22:17'),(4,'Boné Flamengo',20.00,4,'Acessório','Flamengo LTDA','2024-04-28 16:20:03','2024-04-29 19:18:02'),(5,'DVD One Piece',15.00,5,'Mídia','Toei Animation','2024-04-28 16:20:03','2024-04-29 19:18:02'),(6,'Chuteira Nike',80.00,8,'Esporte','Nike','2024-04-28 16:20:03','2024-04-29 21:22:17'),(7,'Shorts Esportivo',35.00,16,'Roupa','Adidas','2024-04-28 16:20:03','2024-04-29 19:39:07'),(8,'Caneca Flamengo',10.00,27,'Acessório','Flamengo LTDA','2024-04-28 16:20:03','2024-04-29 04:23:30'),(9,'Figura de Ação Luffy',40.00,10,'Brinquedo','Bandai','2024-04-28 16:20:03','2024-04-28 16:20:03'),(10,'Bola de Basquete',40.00,21,'Esporte','Wilson','2024-04-28 16:20:03','2024-04-28 16:20:03'),(11,'Camiseta One Piece',30.00,13,'Roupa','Shueisha','2024-04-28 16:20:03','2024-04-29 06:34:55'),(12,'Boné Nike',25.00,9,'Acessório','Nike','2024-04-28 16:20:03','2024-04-29 04:22:20'),(13,'DVD Flamengo - O Filme',20.00,5,'Mídia','Flamengo LTDA','2024-04-28 16:20:03','2024-04-28 16:20:03'),(14,'Meias Esportivas',12.00,18,'Acessório','Adidas','2024-04-28 16:20:03','2024-04-29 04:23:30'),(15,'Chapéu de Palha',18.00,8,'Acessório','Bandai','2024-04-28 16:20:03','2024-04-28 16:20:03'),(16,'Bola de Vôlei',35.00,15,'Esporte','Mikasa','2024-04-28 16:20:03','2024-04-28 16:20:03'),(17,'Camiseta Flamengo',40.00,20,'Roupa','Flamengo LTDA','2024-04-28 16:20:03','2024-04-28 16:20:03'),(18,'Copo One Piece',8.00,25,'Acessório','Toei Animation','2024-04-28 16:20:03','2024-04-28 16:20:03'),(19,'Caneleira Nike',15.00,10,'Esporte','Nike','2024-04-28 16:20:03','2024-04-28 16:20:03'),(20,'Boneco Zoro',30.00,12,'Brinquedo','Bandai','2024-04-28 16:20:03','2024-04-28 16:20:03'),(21,'Camisa do Vasco',198.00,10,'Camisas','Vasco da Gama','2024-04-28 23:01:57','2024-04-28 23:01:57'),(22,'Garrafa do Vasco',80.00,25,'Garrafas','Vasco da Gama','2024-04-28 23:13:59','2024-04-28 23:13:59'),(23,'Moose',99.00,22,'Eletrônicos','Logitec','2024-04-29 02:28:30','2024-04-29 02:28:30'),(24,'Iphone 15',1500.00,18,'Eletrônicos','Apple','2024-04-29 06:08:50','2024-04-29 06:11:04'),(25,'Teclado p/ computador',60.00,20,'Eletrônicos','Logitec','2024-05-01 14:14:34','2024-05-01 14:14:34');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-01 10:01:13
