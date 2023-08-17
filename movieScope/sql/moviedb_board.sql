-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: moviedb
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `b_number` int NOT NULL AUTO_INCREMENT,
  `b_title` varchar(100) NOT NULL,
  `b_context` varchar(2000) NOT NULL,
  `b_date` datetime NOT NULL,
  `b_cnt` int DEFAULT NULL,
  `FK_u_number` int NOT NULL,
  PRIMARY KEY (`b_number`),
  KEY `fk_board_user1_idx` (`FK_u_number`),
  CONSTRAINT `fk_board_user1` FOREIGN KEY (`FK_u_number`) REFERENCES `user` (`u_number`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'asd','asd','1999-01-01 00:00:00',0,1),(2,'a','a','2023-08-24 00:00:00',0,1),(3,'asd','asdas','2023-08-06 00:00:00',0,2),(4,'title1','title1','2023-08-10 00:00:00',0,1),(5,'title2','title2','2023-08-10 00:00:00',0,1),(6,'title3','title3','2023-08-10 00:00:00',0,1),(7,'title4','title4','2023-08-10 00:00:00',0,1),(8,'title5','title5','2023-08-10 00:00:00',0,1),(9,'title6','title6','2023-08-10 00:00:00',0,1),(10,'title7','title7','2023-08-10 00:00:00',0,1),(11,'title8','title8','2023-08-10 00:00:00',0,1),(12,'title9','title9','2023-08-10 00:00:00',0,1),(13,'title10','title10','2023-08-10 00:00:00',0,1),(14,'title11','title11','2023-08-10 00:00:00',0,1),(15,'title12','title12','2023-08-10 00:00:00',0,1),(16,'title13','title13','2023-08-10 00:00:00',0,1),(17,'title14','title14','2023-08-10 00:00:00',0,1),(18,'title15','title15','2023-08-10 00:00:00',0,1),(19,'title16','title16','2023-08-10 00:00:00',0,1),(20,'title17','title17','2023-08-10 00:00:00',0,1),(21,'title18','title18','2023-08-10 00:00:00',0,1),(22,'title19','title19','2023-08-10 00:00:00',0,1),(23,'title20','title20','2023-08-10 00:00:00',0,1),(24,'title21','title21','2023-08-10 00:00:00',0,1),(25,'title22','title22','2023-08-10 00:00:00',0,1),(26,'title23','title23','2023-08-10 00:00:00',0,1),(27,'title24','title24','2023-08-10 00:00:00',0,1),(28,'title25','title25','2023-08-10 00:00:00',0,1),(29,'title26','title26','2023-08-10 00:00:00',0,1),(30,'title27','title27','2023-08-10 00:00:00',0,1),(31,'title28','title28','2023-08-10 00:00:00',0,1),(32,'title29','title29','2023-08-10 00:00:00',0,1),(33,'title30','title30','2023-08-10 00:00:00',0,1),(34,'title31','title31','2023-08-10 00:00:00',0,1),(35,'title32','title32','2023-08-10 00:00:00',0,1),(36,'title33','title33','2023-08-10 00:00:00',0,1),(37,'title34','title34','2023-08-10 00:00:00',0,1),(38,'title35','title35','2023-08-10 00:00:00',0,1),(39,'title36','title36','2023-08-10 00:00:00',0,1),(40,'title37','title37','2023-08-10 00:00:00',0,1),(41,'title38','title38','2023-08-10 00:00:00',0,1),(42,'title39','title39','2023-08-10 00:00:00',0,1),(43,'title40','title40','2023-08-10 00:00:00',0,1),(44,'title41','title41','2023-08-10 00:00:00',0,1),(45,'title42','title42','2023-08-10 00:00:00',0,1),(46,'title43','title43','2023-08-10 00:00:00',0,1),(47,'title44','title44','2023-08-10 00:00:00',0,1),(48,'title45','title45','2023-08-10 00:00:00',0,1),(49,'title46','title46','2023-08-10 00:00:00',0,1),(50,'title47','title47','2023-08-10 00:00:00',0,1),(51,'title48','title48','2023-08-10 00:00:00',0,1),(52,'title49','title49','2023-08-10 00:00:00',0,1),(53,'title50','title50','2023-08-10 00:00:00',0,1),(54,'title51','title51','2023-08-10 00:00:00',0,1),(55,'title52','title52','2023-08-10 00:00:00',0,1),(56,'title53','title53','2023-08-10 00:00:00',0,1),(57,'title54','title54','2023-08-10 00:00:00',0,1),(58,'title55','title55','2023-08-10 00:00:00',0,1),(59,'title56','title56','2023-08-10 00:00:00',0,1),(60,'title57','title57','2023-08-10 00:00:00',0,1),(61,'title58','title58','2023-08-10 00:00:00',0,1),(62,'title59','title59','2023-08-10 00:00:00',0,1),(63,'title60','title60','2023-08-10 00:00:00',0,1),(64,'title61','title61','2023-08-10 00:00:00',0,1),(65,'title62','title62','2023-08-10 00:00:00',0,1),(66,'title63','title63','2023-08-10 00:00:00',0,1),(67,'title64','title64','2023-08-10 00:00:00',0,1),(68,'title65','title65','2023-08-10 00:00:00',0,1),(69,'title66','title66','2023-08-10 00:00:00',0,1),(70,'title67','title67','2023-08-10 00:00:00',0,1),(71,'title68','title68','2023-08-10 00:00:00',0,1),(72,'title69','title69','2023-08-10 00:00:00',0,1),(73,'title70','title70','2023-08-10 00:00:00',0,1),(74,'title71','title71','2023-08-10 00:00:00',0,1),(75,'title72','title72','2023-08-10 00:00:00',0,1),(76,'title73','title73','2023-08-10 00:00:00',0,1),(77,'title74','title74','2023-08-10 00:00:00',0,1),(78,'title75','title75','2023-08-10 00:00:00',0,1),(79,'title76','title76','2023-08-10 00:00:00',0,1),(80,'title77','title77','2023-08-10 00:00:00',0,1),(81,'title78','title78','2023-08-10 00:00:00',0,1),(82,'title79','title79','2023-08-10 00:00:00',0,1),(83,'title80','title80','2023-08-10 00:00:00',0,1),(84,'title81','title81','2023-08-10 00:00:00',0,1),(85,'title82','title82','2023-08-10 00:00:00',0,1),(86,'title83','title83','2023-08-10 00:00:00',0,1),(87,'title84','title84','2023-08-10 00:00:00',0,1),(88,'title85','title85','2023-08-10 00:00:00',0,1),(89,'title86','title86','2023-08-10 00:00:00',0,1),(90,'title87','title87','2023-08-10 00:00:00',0,1),(91,'title88','title88','2023-08-10 00:00:00',0,1),(92,'title89','title89','2023-08-10 00:00:00',0,1),(93,'title90','title90','2023-08-10 00:00:00',0,1),(94,'title91','title91','2023-08-10 00:00:00',0,1),(95,'title92','title92','2023-08-10 00:00:00',0,1),(96,'title93','title93','2023-08-10 00:00:00',0,1),(97,'title94','title94','2023-08-10 00:00:00',0,1),(98,'title95','title95','2023-08-10 00:00:00',0,1),(99,'title96','title96','2023-08-10 00:00:00',0,1),(100,'title97','title97','2023-08-10 00:00:00',0,1),(101,'title98','title98','2023-08-10 00:00:00',0,1),(102,'title99asdasd','title99asdasa','2023-08-10 00:00:00',8,1),(103,'title100','title100','2023-08-10 00:00:00',1,1),(105,'asd','asd','2023-08-01 00:00:00',13,2),(106,'asdas','dasdasd','2023-08-11 00:00:00',43,2);
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-17 17:21:58
