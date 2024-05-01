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
-- Temporary view structure for view `produtosbaixoestoque`
--

DROP TABLE IF EXISTS `produtosbaixoestoque`;
/*!50001 DROP VIEW IF EXISTS `produtosbaixoestoque`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `produtosbaixoestoque` AS SELECT 
 1 AS `id`,
 1 AS `nome`,
 1 AS `preco`,
 1 AS `estoque`,
 1 AS `categoria`,
 1 AS `fabricante`,
 1 AS `created_at`,
 1 AS `updated_at`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `produtosbaixoestoque`
--

/*!50001 DROP VIEW IF EXISTS `produtosbaixoestoque`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `produtosbaixoestoque` AS select `produto`.`id` AS `id`,`produto`.`nome` AS `nome`,`produto`.`preco` AS `preco`,`produto`.`estoque` AS `estoque`,`produto`.`categoria` AS `categoria`,`produto`.`fabricante` AS `fabricante`,`produto`.`created_at` AS `created_at`,`produto`.`updated_at` AS `updated_at` from `produto` where (`produto`.`estoque` < 5) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'projeto_db'
--

--
-- Dumping routines for database 'projeto_db'
--
/*!50003 DROP PROCEDURE IF EXISTS `InserirCompra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InserirCompra`(
    IN p_ClienteID INT,
    IN p_VendedorID INT,
    IN p_FormaPagamento VARCHAR(50),
    IN p_StatusPagamento VARCHAR(50),
    IN p_cupom_desc VARCHAR(50),
    IN p_ProdutoID INT,
    IN p_Quantidade INT
)
BEGIN
    DECLARE produtoEstoque INT;
    SELECT Estoque INTO produtoEstoque FROM Produto WHERE id = p_ProdutoID;
    
    IF produtoEstoque >= p_Quantidade THEN
        INSERT INTO compra (cliente_id, vendedor_id, forma_pagamento, status_pagamento, cupom_desconto, created_at, updated_at)
        VALUES (p_ClienteID, p_VendedorID, p_FormaPagamento, p_StatusPagamento, p_cupom_desc, now(), now());
        
        INSERT INTO itemcompra (compra_id, produto_id, quantidade)
        VALUES (LAST_INSERT_ID(), p_ProdutoID, p_Quantidade);
        
        UPDATE Produto SET Estoque = Estoque - p_Quantidade WHERE id = p_ProdutoID;
    ELSE
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Estoque insuficiente para realizar a compra';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-01 10:01:15
