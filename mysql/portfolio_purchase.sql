-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: localhost    Database: portfolio
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase` (
  `purchase_code` varchar(255) NOT NULL,
  `purchase_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `purchase_price` int NOT NULL,
  `purchase_monthlyLeft` int DEFAULT NULL,
  `purchase_class_code` varchar(20) DEFAULT NULL,
  `purchase_package_code` varchar(50) DEFAULT NULL,
  `purchase_vip_code` varchar(25) DEFAULT NULL,
  `purchase_st_id` varchar(20) NOT NULL,
  PRIMARY KEY (`purchase_code`),
  KEY `purchase_class_code_idx` (`purchase_class_code`),
  KEY `purchase_st_id_idx` (`purchase_st_id`),
  KEY `purchase_vip_code_idx` (`purchase_vip_code`),
  CONSTRAINT `purchase_class_code` FOREIGN KEY (`purchase_class_code`) REFERENCES `class` (`class_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `purchase_st_id` FOREIGN KEY (`purchase_st_id`) REFERENCES `student` (`st_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `purchase_vip_code` FOREIGN KEY (`purchase_vip_code`) REFERENCES `vipcodelist` (`vip_code`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase`
--

LOCK TABLES `purchase` WRITE;
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
INSERT INTO `purchase` VALUES ('CDWFOIBDMNSRFTWNJJRS','2020-09-25 14:03:41',55000,4,'Z8aLm742oHRT4q5e21Ek',NULL,NULL,'test1'),('CQDYMKXSJEVSAWEXBCXP','2020-09-21 17:09:32',125000,11,NULL,NULL,'53CMdepyXAolQAHqI8TkoLEH3','chester2'),('WXJEQOUBHUANBFWYITSZ','2020-09-21 12:44:20',0,0,'3smBBohC75Z8FNtN9wa6',NULL,NULL,'chester2');
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-28  7:40:41
