-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: human_friends
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.24.04.2

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
-- Table structure for table `AllAnimals`
--

DROP TABLE IF EXISTS `AllAnimals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `AllAnimals` (
  `id` int NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `type` varchar(50) NOT NULL DEFAULT '',
  `birthdate` date NOT NULL,
  `command` varchar(50) DEFAULT NULL,
  `PreviousMembership` varchar(16) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AllAnimals`
--

LOCK TABLES `AllAnimals` WRITE;
/*!40000 ALTER TABLE `AllAnimals` DISABLE KEYS */;
INSERT INTO `AllAnimals` VALUES (1,'Sharik','Dog','2020-04-15','Stand, Sit, To me','Pets'),(2,'Rex','Dog','2017-11-23','Sit, Lie, Give_paw','Pets'),(3,'Musya','Cat','2022-06-03','Sit, Pounce','Pets'),(4,'Hammy','Hamster','2017-02-23','Roll, Hide','Pets'),(5,'Bella','Dog','2022-04-25','Sit, Lie, To me','Pets'),(6,'Oliver','Cat','2020-06-12','Meow, Jamp','Pets'),(7,'Flash','Cat','2021-09-15','Sit, Scratch, Jamp','Pets'),(1,'Sandy','Horse','2021-04-05','Trot, Canter, Gallop','HorsesAndDonkeys'),(3,'Belaze','Horse','0202-05-06','Trot, Jump, Gallop','HorsesAndDonkeys'),(4,'Muil','Donkey','2022-08-23','Walk, Bray, Kick','HorsesAndDonkeys'),(6,'Trey','Horse','2019-12-05','Trot, Gallop','HorsesAndDonkeys'),(7,'Burrito','Donkey','2021-03-13','Walk, Bray','HorsesAndDonkeys'),(8,'Rawly','Horse','2020-05-06','Trot, Gallop','HorsesAndDonkeys'),(9,'Bluz','Donkey','2018-04-18','Walk, Bray','HorsesAndDonkeys'),(3,'Musya','Cat','2022-06-03','Sit, Pounce','YoungAnimals'),(5,'Bella','Dog','2022-04-25','Sit, Lie, To me','YoungAnimals'),(7,'Flash','Cat','2021-09-15','Sit, Scratch, Jamp','YoungAnimals'),(1,'Sandy','Horse','2021-04-05','Trot, Canter, Gallop','YoungAnimals'),(4,'Muil','Donkey','2022-08-23','Walk, Bray, Kick','YoungAnimals'),(7,'Burrito','Donkey','2021-03-13','Walk, Bray','YoungAnimals');
/*!40000 ALTER TABLE `AllAnimals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HorsesAndDonkeys`
--

DROP TABLE IF EXISTS `HorsesAndDonkeys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HorsesAndDonkeys` (
  `id` int NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `birthdate` date NOT NULL,
  `command` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HorsesAndDonkeys`
--

LOCK TABLES `HorsesAndDonkeys` WRITE;
/*!40000 ALTER TABLE `HorsesAndDonkeys` DISABLE KEYS */;
INSERT INTO `HorsesAndDonkeys` VALUES (1,'Sandy','Horse','2021-04-05','Trot, Canter, Gallop'),(3,'Belaze','Horse','0202-05-06','Trot, Jump, Gallop'),(4,'Muil','Donkey','2022-08-23','Walk, Bray, Kick'),(6,'Trey','Horse','2019-12-05','Trot, Gallop'),(7,'Burrito','Donkey','2021-03-13','Walk, Bray'),(8,'Rawly','Horse','2020-05-06','Trot, Gallop'),(9,'Bluz','Donkey','2018-04-18','Walk, Bray');
/*!40000 ALTER TABLE `HorsesAndDonkeys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PackAnimals`
--

DROP TABLE IF EXISTS `PackAnimals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PackAnimals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `birthdate` date NOT NULL,
  `command` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PackAnimals`
--

LOCK TABLES `PackAnimals` WRITE;
/*!40000 ALTER TABLE `PackAnimals` DISABLE KEYS */;
INSERT INTO `PackAnimals` VALUES (1,'Sandy','Horse','2021-04-05','Trot, Canter, Gallop'),(3,'Belaze','Horse','0202-05-06','Trot, Jump, Gallop'),(4,'Muil','Donkey','2022-08-23','Walk, Bray, Kick'),(6,'Trey','Horse','2019-12-05','Trot, Gallop'),(7,'Burrito','Donkey','2021-03-13','Walk, Bray'),(8,'Rawly','Horse','2020-05-06','Trot, Gallop'),(9,'Bluz','Donkey','2018-04-18','Walk, Bray');
/*!40000 ALTER TABLE `PackAnimals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pets`
--

DROP TABLE IF EXISTS `Pets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `birthdate` date NOT NULL,
  `command` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pets`
--

LOCK TABLES `Pets` WRITE;
/*!40000 ALTER TABLE `Pets` DISABLE KEYS */;
INSERT INTO `Pets` VALUES (1,'Sharik','Dog','2020-04-15','Stand, Sit, To me'),(2,'Rex','Dog','2017-11-23','Sit, Lie, Give_paw'),(3,'Musya','Cat','2022-06-03','Sit, Pounce'),(4,'Hammy','Hamster','2017-02-23','Roll, Hide'),(5,'Bella','Dog','2022-04-25','Sit, Lie, To me'),(6,'Oliver','Cat','2020-06-12','Meow, Jamp'),(7,'Flash','Cat','2021-09-15','Sit, Scratch, Jamp');
/*!40000 ALTER TABLE `Pets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `YoungAnimals`
--

DROP TABLE IF EXISTS `YoungAnimals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `YoungAnimals` (
  `id` int NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `type` varchar(50) NOT NULL DEFAULT '',
  `birthdate` date NOT NULL,
  `command` varchar(50) DEFAULT NULL,
  `age_in_months` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `YoungAnimals`
--

LOCK TABLES `YoungAnimals` WRITE;
/*!40000 ALTER TABLE `YoungAnimals` DISABLE KEYS */;
INSERT INTO `YoungAnimals` VALUES (3,'Musya','Cat','2022-06-03','Sit, Pounce',27),(5,'Bella','Dog','2022-04-25','Sit, Lie, To me',28),(7,'Flash','Cat','2021-09-15','Sit, Scratch, Jamp',36),(1,'Sandy','Horse','2021-04-05','Trot, Canter, Gallop',41),(4,'Muil','Donkey','2022-08-23','Walk, Bray, Kick',24),(7,'Burrito','Donkey','2021-03-13','Walk, Bray',42);
/*!40000 ALTER TABLE `YoungAnimals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-25 16:52:27
