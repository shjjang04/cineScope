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
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `m_genre` varchar(45) NOT NULL,
  `FK_m_number` int NOT NULL,
  KEY `fk_genre_movie1_idx` (`FK_m_number`),
  CONSTRAINT `fk_genre_movie1` FOREIGN KEY (`FK_m_number`) REFERENCES `movie` (`m_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES ('드라마',1),('SF',2),('액션',2),('드라마',3),('어드벤처',3),('액션',3),('판타지',4),('드라마',4),('액션',5),('어드벤처',5),('스릴러',6),('공포',6),('드라마',7),('코미디',8),('로맨스',8),('멜로',8),('스릴러',9),('액션',10),('어드벤처',10),('미스터리',10),('드라마',11),('드라마',12),('가족',12),('시대극',13),('코미디',14),('어드벤처',14),('액션',15),('전쟁',15),('드라마',16),('액션',17),('SF',17),('드라마',18),('스릴러',19),('액션',20),('코미디',21),('액션',21),('액션',22),('어드벤처',22),('공포',22),('스릴러',22),('로맨스',23),('멜로',23),('로맨스',24),('멜로',24),('액션',25),('SF',25),('스릴러',25),('공포',26),('스릴러',26),('코미디',27),('가족',27),('판타지',27),('미스터리',28),('스릴러',28),('드라마',29),('공포',30),('미스터리',30),('스릴러',30),('드라마',31),('액션',32),('전쟁',33),('드라마',34),('드라마',35),('스릴러',35),('로맨스',36),('멜로',36),('드라마',37),('로맨스',38),('멜로',38),('성인',38),('애니메이션',39),('어드벤처',39),('액션',40),('스릴러',41),('SF',42),('액션',42),('드라마',42),('드라마',43),('드라마',44),('액션',45),('로맨스',45),('멜로',45),('판타지',46),('코미디',47),('로맨스',48),('멜로',48),('로맨스',49),('멜로',49),('범죄',50),('스릴러',50),('미스터리',51),('드라마',51),('드라마',52),('코미디',52),('미스터리',53),('액션',53),('스릴러',53),('SF',53),('어드벤처',54),('코미디',54),('애니메이션',55),('코미디',55),('어드벤처',55),('스릴러',56),('드라마',56),('액션',57),('코미디',57),('드라마',58),('공포',59),('코미디',60),('드라마',60),('SF',61),('공포',61),('스릴러',61),('성인',62),('코미디',64),('드라마',64),('스릴러',65),('미스터리',65),('공포',65),('공포',66),('액션',67),('범죄',67),('드라마',67),('스릴러',67),('스릴러',68),('액션',69),('SF',69),('드라마',70),('로맨스',70),('멜로',70),('코미디',71),('로맨스',71),('멜로',71),('드라마',72),('코미디',72),('로맨스',73),('멜로',73),('공포',74),('스릴러',74),('액션',75),('드라마',76),('로맨스',76),('멜로',76),('로맨스',77),('멜로',77),('로맨스',78),('멜로',78),('전쟁',78),('드라마',78),('로맨스',79),('멜로',79),('드라마',80),('드라마',81),('로맨스',81),('멜로',81),('스릴러',82),('범죄',82),('액션',83),('공포',84),('드라마',85),('공포',86),('액션',87),('어드벤처',87),('로맨스',88),('멜로',88),('성인',89),('코미디',90),('스릴러',91),('드라마',91),('코미디',92),('코미디',93),('드라마',93),('성인',94),('드라마',95),('드라마',96),('공포',97),('스릴러',97),('전쟁',98),('드라마',99),('로맨스',100),('멜로',100),('무협',101),('코미디',101),('시대극',101),('코미디',102),('공포',102),('뮤지컬',103),('스릴러',104),('드라마',104),('액션',105),('스릴러',106),('코미디',107),('범죄',108),('드라마',108),('범죄',109),('드라마',109),('코미디',110),('드라마',111),('액션',112),('전쟁',112),('로맨스',113),('멜로',113),('드라마',113),('로맨스',114),('멜로',114),('코미디',114),('드라마',115),('로맨스',116),('멜로',116),('로맨스',117),('멜로',117),('드라마',117),('성인',118),('전쟁',119),('공포',120),('로맨스',120),('멜로',120),('코미디',120),('가족',121),('드라마',121),('뮤지컬',122),('드라마',122),('범죄',122),('범죄',123),('드라마',123),('애니메이션',124),('SF',124),('어드벤처',124),('드라마',125),('스릴러',126),('SF',127),('액션',127),('드라마',127),('스릴러',127),('드라마',128),('공포',129),('스릴러',129),('미스터리',130),('스릴러',130),('액션',131),('SF',131),('미스터리',132),('스릴러',132),('애니메이션',133),('어드벤처',133),('코미디',133),('가족',133),('드라마',134),('액션',135),('SF',135),('드라마',136),('스릴러',137),('공포',137),('드라마',138),('SF',139),('스릴러',139),('드라마',140),('드라마',141),('범죄',142),('성인',142),('공포',143),('판타지',143),('코미디',143),('코미디',144),('드라마',145),('로맨스',146),('멜로',146),('드라마',146),('시대극',147),('코미디',147),('공포',148),('스릴러',148),('미스터리',149),('스릴러',149),('성인',150),('코미디',151),('범죄',151),('드라마',152),('드라마',153),('코미디',154),('공포',155),('스릴러',155),('애니메이션',156),('드라마',157),('스릴러',158),('드라마',159),('범죄',160),('스릴러',160),('범죄',161),('다큐멘터리',162),('드라마',162),('공포',163),('스릴러',163),('코미디',164),('드라마',164),('로맨스',165),('멜로',165),('코미디',166),('판타지',167),('애니메이션',167),('드라마',167),('스릴러',168),('드라마',168),('로맨스',169),('멜로',169),('로맨스',170),('멜로',170),('판타지',170),('다큐멘터리',171),('다큐멘터리',172),('드라마',172),('로맨스',173),('멜로',173),('판타지',174),('스릴러',174),('다큐멘터리',175),('판타지',176),('애니메이션',176),('SF',177),('애니메이션',177),('드라마',177),('코미디',178),('드라마',178),('코미디',179),('로맨스',179),('멜로',179),('애니메이션',180),('뮤지컬',180),('어드벤처',180),('성인',182),('코미디',183),('드라마',183),('액션',184),('드라마',184),('로맨스',185),('멜로',185),('드라마',186),('가족',186),('드라마',187),('스릴러',188),('공포',189),('스릴러',189),('드라마',190),('미스터리',191),('스릴러',191),('로맨스',192),('멜로',192),('판타지',192),('가족',193),('판타지',194),('범죄',195),('코미디',196),('범죄',196),('로맨스',197),('멜로',197),('코미디',198),('범죄',198),('액션',198),('판타지',199),('어드벤처',199),('드라마',200),('드라마',201),('애니메이션',202),('판타지',203),('어드벤처',203),('애니메이션',203),('코미디',204),('뮤지컬',204),('범죄',205),('액션',205),('스릴러',206),('액션',206),('코미디',207),('드라마',207),('로맨스',208),('멜로',208),('드라마',208),('액션',209),('범죄',209),('액션',210),('범죄',210),('액션',211),('드라마',212),('미스터리',212),('성인',213),('드라마',213),('로맨스',214),('멜로',214),('코미디',215),('로맨스',216),('멜로',216),('코미디',217),('성인',218),('로맨스',218),('멜로',218),('드라마',219),('드라마',220),('범죄',221),('스릴러',221),('드라마',222),('액션',223),('SF',223),('액션',224),('SF',224),('액션',225),('스릴러',225),('SF',226),('로맨스',227),('멜로',227),('스릴러',228),('드라마',228),('드라마',229),('전쟁',229),('판타지',230),('로맨스',230),('멜로',230),('드라마',231),('코미디',232),('공포',233),('스릴러',233),('드라마',234),('코미디',235),('SF',236),('액션',236),('다큐멘터리',237),('로맨스',238),('멜로',238),('드라마',238),('미스터리',238),('애니메이션',239),('드라마',240),('스릴러',241),('로맨스',242),('멜로',242),('범죄',243),('스릴러',243),('코미디',244),('드라마',244),('드라마',245),('다큐멘터리',246),('코미디',247),('로맨스',247),('멜로',247),('코미디',248),('드라마',248),('드라마',250),('서부',250),('드라마',251),('액션',252),('애니메이션',253),('드라마',253),('전쟁',254),('드라마',254),('액션',255),('코미디',256),('로맨스',256),('멜로',256),('SF',257),('판타지',257),('어드벤처',257),('드라마',257),('다큐멘터리',258),('코미디',258),('드라마',259),('코미디',260),('로맨스',260),('멜로',260),('전쟁',261),('액션',261),('코미디',262),('드라마',262),('미스터리',263),('스릴러',263),('로맨스',264),('멜로',264),('성인',265),('드라마',266),('액션',267),('판타지',267),('SF',267),('드라마',268),('코미디',269),('범죄',269),('스릴러',269),('무협',270),('드라마',271),('액션',272),('성인',273),('드라마',274),('공포',275),('액션',276),('어드벤처',276),('판타지',276),('드라마',277),('성인',278),('뮤지컬',279),('드라마',279),('공연',280),('액션',281),('어드벤처',281),('로맨스',282),('멜로',282),('코미디',282),('애니메이션',283),('어드벤처',283),('다큐멘터리',284),('뮤지컬',285),('드라마',286),('SF',287),('판타지',287),('액션',287),('로맨스',287),('멜로',287),('애니메이션',288),('액션',288),('어드벤처',288),('드라마',289),('액션',290),('스릴러',291),('가족',291),('드라마',291),('SF',291),('애니메이션',292),('다큐멘터리',293),('스릴러',294),('애니메이션',295),('드라마',296),('로맨스',296),('멜로',296),('로맨스',297),('멜로',297),('드라마',298),('스릴러',299),('코미디',300),('로맨스',300),('멜로',300),('성인',301),('드라마',302),('코미디',303),('가족',304),('드라마',304),('액션',305),('다큐멘터리',306),('다큐멘터리',307),('애니메이션',308),('판타지',308),('미스터리',309),('스릴러',309),('드라마',309),('액션',310),('스릴러',310),('드라마',311),('로맨스',312),('멜로',312),('액션',313),('액션',314),('로맨스',314),('멜로',314),('액션',315),('판타지',315),('애니메이션',316),('드라마',316),('판타지',316),('드라마',317),('로맨스',317),('멜로',317),('SF',318),('판타지',318),('코미디',319),('로맨스',319),('멜로',319),('범죄',320),('스릴러',320),('드라마',321),('로맨스',322),('멜로',322),('드라마',323),('드라마',324),('SF',325),('스릴러',325),('로맨스',326),('멜로',326),('공포',327),('미스터리',327),('드라마',328),('액션',330),('다큐멘터리',331),('드라마',332),('액션',333),('로맨스',334),('멜로',334),('액션',335),('판타지',335),('시대극',335),('드라마',336),('로맨스',337),('멜로',337),('드라마',337),('드라마',338),('코미디',339),('스릴러',340),('스릴러',341),('공포',342),('미스터리',342),('스릴러',342),('액션',343),('드라마',343),('드라마',344),('로맨스',345),('멜로',345),('드라마',345),('코미디',346),('애니메이션',347),('어드벤처',347),('코미디',347),('로맨스',348),('멜로',348),('성인',349),('드라마',349),('스릴러',350),('애니메이션',351),('가족',351),('무협',352),('액션',352),('드라마',352),('다큐멘터리',353),('드라마',354),('액션',355),('SF',355),('스릴러',355),('범죄',356),('스릴러',356),('애니메이션',357),('어드벤처',357),('로맨스',358),('멜로',358),('스릴러',358),('다큐멘터리',359),('코미디',360),('드라마',361),('로맨스',362),('멜로',362),('SF',363),('드라마',363),('드라마',364),('드라마',365),('액션',366),('코미디',366),('드라마',367),('로맨스',367),('멜로',367),('다큐멘터리',368),('무협',370),('액션',371),('SF',371),('드라마',372),('드라마',373),('SF',374),('어드벤처',374),('액션',374),('어드벤처',375),('애니메이션',376),('범죄',377),('미스터리',377),('로맨스',377),('멜로',377),('스릴러',377),('액션',378),('범죄',379),('드라마',379),('로맨스',380),('멜로',380),('코미디',380),('코미디',381),('액션',382),('스릴러',382),('코미디',382),('스릴러',383),('액션',383),('로맨스',384),('멜로',384),('로맨스',385),('멜로',385),('드라마',386),('로맨스',387),('멜로',387),('드라마',387),('공포',388),('스릴러',388),('드라마',389),('가족',390),('판타지',390),('드라마',390),('애니메이션',390),('드라마',391),('드라마',392),('SF',393),('액션',393),('스릴러',393),('드라마',394),('공포',395),('미스터리',395),('액션',396),('드라마',396),('드라마',397),('공포',398),('공연',399),('전쟁',400),('드라마',400),('코미디',401),('드라마',402),('드라마',403),('드라마',404),('애니메이션',405),('드라마',405),('로맨스',405),('멜로',405),('액션',406),('범죄',406),('드라마',406),('드라마',407),('스릴러',408),('공포',408),('스릴러',409),('액션',410),('코미디',410),('성인',411),('액션',412),('스릴러',412),('로맨스',413),('멜로',413),('드라마',413),('드라마',414),('성인',414),('로맨스',415),('멜로',415),('코미디',416),('뮤지컬',416),('드라마',417),('로맨스',417),('멜로',417),('미스터리',418),('공포',418),('판타지',419),('어드벤처',419),('액션',420),('액션',421),('드라마',421),('다큐멘터리',422),('스릴러',423),('다큐멘터리',424),('액션',425),('드라마',425),('어드벤처',425),('코미디',426),('드라마',426),('코미디',427),('범죄',427),('다큐멘터리',428),('로맨스',429),('멜로',429),('코미디',429),('로맨스',430),('멜로',430),('드라마',430),('드라마',431),('드라마',432),('다큐멘터리',433),('스릴러',434),('드라마',435),('액션',436),('드라마',436),('드라마',437),('액션',437),('로맨스',437),('멜로',437),('액션',439),('어드벤처',439),('드라마',440),('성인',441),('드라마',441),('범죄',442),('스릴러',442),('판타지',443),('드라마',445),('판타지',446),('코미디',447),('어드벤처',447),('로맨스',448),('멜로',448),('코미디',448),('공포',449),('스릴러',449),('로맨스',450),('멜로',450),('코미디',450),('드라마',451),('애니메이션',452),('미스터리',452),('범죄',452),('로맨스',453),('멜로',453),('공포',454),('공연',455),('드라마',457),('스릴러',457),('액션',458),('드라마',458),('스릴러',458),('SF',458),('어드벤처',458),('로맨스',459),('멜로',459),('공포',460),('다큐멘터리',461),('애니메이션',462),('로맨스',462),('멜로',462),('SF',462),('로맨스',463),('멜로',463),('드라마',463),('스릴러',464),('액션',465),('코미디',466),('전쟁',466),('코미디',467),('드라마',467),('뮤지컬',468),('액션',469),('코미디',469),('드라마',470),('드라마',471),('범죄',472),('스릴러',472),('코미디',473),('코미디',474),('코미디',475),('로맨스',475),('멜로',475),('드라마',475),('액션',476),('어드벤처',476),('스릴러',477),('코미디',478),('어드벤처',478),('가족',478),('드라마',479),('가족',480),('코미디',480),('로맨스',481),('멜로',481),('드라마',481),('미스터리',482),('스릴러',482);
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
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