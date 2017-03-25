-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: localhost    Database: Movie
-- ------------------------------------------------------
-- Server version	5.7.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Genres_Movies`
--

DROP TABLE IF EXISTS `Genres_Movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Genres_Movies` (
  `idGenre` int(11) NOT NULL,
  `idMovie` int(11) NOT NULL,
  PRIMARY KEY (`idGenre`,`idMovie`),
  KEY `idGenre_idx` (`idGenre`),
  KEY `idMovie_idx` (`idMovie`),
  CONSTRAINT `idGenre` FOREIGN KEY (`idGenre`) REFERENCES `Genres` (`idGenre`) ON UPDATE CASCADE,
  CONSTRAINT `idMovie` FOREIGN KEY (`idMovie`) REFERENCES `Movies` (`idMovie`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Genres_Movies`
--

LOCK TABLES `Genres_Movies` WRITE;
/*!40000 ALTER TABLE `Genres_Movies` DISABLE KEYS */;
INSERT INTO `Genres_Movies` VALUES (1,743088),(1,818145),(2,425673),(2,468522),(2,818145),(3,425673),(3,468522),(3,602749),(3,743088),(3,784288),(3,786958),(3,814482),(3,818145),(3,841147),(3,893362),(3,918087),(3,954504),(4,468522),(4,756799),(4,786958),(4,818145),(4,918087),(5,743088),(5,756799),(5,818145),(6,373158),(6,623721),(6,899500),(6,919515),(7,373158),(7,461939),(7,463464),(7,623721),(7,786958),(8,461939),(8,463464),(8,557787),(8,602749),(8,726794),(8,762750),(8,784288),(8,841147),(8,882569),(8,893362),(8,893735),(8,918087),(9,784288),(9,841147),(9,882569),(9,893362),(9,918087),(10,461939),(10,463464),(10,726794),(10,786958),(11,602749),(12,425673),(12,756799),(12,918087),(13,425673),(13,468522),(13,786958),(14,928938),(15,463464),(15,557787),(16,786958);
/*!40000 ALTER TABLE `Genres_Movies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-25 22:21:43