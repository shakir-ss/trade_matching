-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: capstoneproject
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `tradedata`
--

DROP TABLE IF EXISTS `tradedata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tradedata` (
  `trade_id` int NOT NULL AUTO_INCREMENT,
  `buyer` varchar(255) DEFAULT NULL,
  `confirmation_timestamp` date DEFAULT NULL,
  `counter_party_fullname` varchar(200) DEFAULT NULL,
  `counter_party_name` varchar(200) DEFAULT NULL,
  `creation_timestamp` date NOT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `effective_date` date DEFAULT NULL,
  `institution_id` int DEFAULT NULL,
  `instrument_id` varchar(255) DEFAULT NULL,
  `maturity_date` date DEFAULT NULL,
  `notional_amount` bigint NOT NULL,
  `party_fullname` varchar(200) NOT NULL,
  `party_name` varchar(255) DEFAULT NULL,
  `seller` varchar(255) DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `trade_date` date DEFAULT NULL,
  `trade_ref_num` varchar(255) DEFAULT NULL,
  `version` int DEFAULT NULL,
  `version_timestamp` date NOT NULL,
  PRIMARY KEY (`trade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tradedata`
--

LOCK TABLES `tradedata` WRITE;
/*!40000 ALTER TABLE `tradedata` DISABLE KEYS */;
INSERT INTO `tradedata` VALUES (1,'SBID','2022-08-31','HDFC_MUMBAI','HDFCM','2022-08-31','INR','2022-08-31',2,'FUNDS','2022-08-31',200,'SBI_DELHI','SBID','HDFCM','UnConfirmed','2022-08-31','456',0,'2022-08-31'),(2,'SBID','2022-08-31','HDFC_MUMBAI','HDFCM','2022-08-31','INR','2022-08-31',2,'BONDS','2022-08-31',100,'SBI_DELHI','SBID','HDFCM','UnConfirmed','2022-08-31','760',0,'2022-08-31');
/*!40000 ALTER TABLE `tradedata` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-01 11:12:59
