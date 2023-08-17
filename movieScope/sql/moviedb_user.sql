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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `u_number` int NOT NULL AUTO_INCREMENT,
  `u_id` varchar(45) NOT NULL,
  `u_pw` varchar(45) NOT NULL,
  `u_age` int DEFAULT NULL,
  `u_addr` varchar(45) DEFAULT NULL,
  `u_date` datetime DEFAULT NULL,
  `u_gender` varchar(45) DEFAULT NULL,
  `u_email` varchar(45) DEFAULT NULL,
  `u_birthday` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`u_number`),
  UNIQUE KEY `u_number_UNIQUE` (`u_number`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'root','root',10,'12',NULL,'ì¬ì',NULL,NULL),(2,'a','aa',0,'aaa','2023-08-03 00:00:00','a','asd@asda','2023-08-11'),(3,'r','r',0,'r','2023-08-03 00:00:00','r','r','2023-08-14'),(4,'zzxc','zxc',0,'zxc','2023-08-07 00:00:00','zxc','zxc','2023-08-19'),(5,'ããã','zxc',0,'zxc','2023-08-07 00:00:00','zxc','zxc','2023-08-03'),(6,'root1','123',0,'123','2023-08-08 00:00:00','21','123','2023-08-01'),(7,'asd','asd',11,'asd','2023-08-10 00:00:00','M','asdasd@naver.com','2023-08-17'),(8,'as','',121,'asasas','2023-08-10 00:00:00','M','aaaaaa@naver.com','2023-08-18'),(9,'eee','',22,'eeeee','2023-08-10 00:00:00','M','aaaaaa@naver.com','2023-09-01'),(10,'','',11111,'aaa','2023-08-10 00:00:00','M','aaaaaa@naver.com','2023-08-23'),(11,'!','',0,'!','2023-08-10 00:00:00','M','aaaaasda@naver.com','2027-06-16'),(12,'aaaaaa','aaaaaa',-1,'aaaaaa','2023-08-11 00:00:00','M','aaaaaa@naver.com','2023-08-11'),(13,'aaaaaaa','',-1,'@@','2023-08-17 00:00:00','M','asdasd@asdasd','2023-08-15'),(14,'123456','123456',-1,'213','2023-08-17 00:00:00','M','aa@aa','2023-08-17'),(15,'dongdong','123123',-1,'dong','2023-08-17 00:00:00','M','dong@naver.com','2023-08-15');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-17 17:21:59
