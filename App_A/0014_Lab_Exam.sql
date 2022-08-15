-- MySQL dump 10.13  Distrib 8.0.30, for Linux (x86_64)
--
-- Host: localhost    Database: 0014_Lab_Exam
-- ------------------------------------------------------
-- Server version	8.0.30-0ubuntu0.20.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Hero`
--

DROP TABLE IF EXISTS `Hero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Hero` (
  `Hero_id` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Detail` varchar(255) NOT NULL,
  `Picture_link` varchar(255) NOT NULL,
  PRIMARY KEY (`Hero_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hero`
--

LOCK TABLES `Hero` WRITE;
/*!40000 ALTER TABLE `Hero` DISABLE KEYS */;
INSERT INTO `Hero` VALUES (1,'Dwayne Johnson','American actor, producer, and former professional wrestler\r\n','https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Dwayne_Johnson_2018.jpg/330px-Dwayne_Johnson_2018.jpg'),(2,'The Terminator','The Terminator, a cyborg assassin sent back in time from 2029 to 1984 to kill Sarah Connor (Linda Hamilton), whose unborn son will one day save mankind from extinction by Skynet, a hostile artificial intelligence in a post-apocalyptic future.\r\n','https://upload.wikimedia.org/wikipedia/en/7/70/Terminator1984movieposter.jpg'),(3,'Iron Man','A wealthy American business magnate, playboy, philanthropist, inventor and ingenious scientist, Anthony Edward Stark suffers a severe chest injury during a kidnapping.\r\n','https://upload.wikimedia.org/wikipedia/en/4/47/Iron_Man_%28circa_2018%29.png');
/*!40000 ALTER TABLE `Hero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hero_in_movie`
--

DROP TABLE IF EXISTS `Hero_in_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Hero_in_movie` (
  `Hero_id` int NOT NULL,
  `Movie_id` int NOT NULL,
  PRIMARY KEY (`Hero_id`,`Movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hero_in_movie`
--

LOCK TABLES `Hero_in_movie` WRITE;
/*!40000 ALTER TABLE `Hero_in_movie` DISABLE KEYS */;
INSERT INTO `Hero_in_movie` VALUES (1,1),(1,2),(2,3),(2,4),(3,5),(3,6);
/*!40000 ALTER TABLE `Hero_in_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Movie`
--

DROP TABLE IF EXISTS `Movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Movie` (
  `Movie_id` int NOT NULL,
  `Movie_Name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Trailer_link` varchar(255) NOT NULL,
  PRIMARY KEY (`Movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movie`
--

LOCK TABLES `Movie` WRITE;
/*!40000 ALTER TABLE `Movie` DISABLE KEYS */;
INSERT INTO `Movie` VALUES (1,'Hercules','https://www.youtube.com/watch?v=OwlynHlZEc4'),(2,'Rampage','https://www.youtube.com/watch?v=coOKvrsmQiI'),(3,'The Terminator (1984)','https://www.youtube.com/watch?v=k64P4l2Wmeg\r\n'),(4,'Terminator: Genisys','https://www.youtube.com/watch?v=jNU_jrPxs-0'),(5,'Iron Man 2','https://www.youtube.com/watch?v=BoohRoVA9WQ&t=9s'),(6,'Iron Man 3','https://www.youtube.com/watch?v=Ke1Y3P9D0Bc');
/*!40000 ALTER TABLE `Movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database '0014_Lab_Exam'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-15 13:42:23
