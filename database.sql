-- MySQL dump 10.13  Distrib 8.0.19, for osx10.15 (x86_64)
--
-- Host: fatimadr.cx2qlsor5mk2.eu-west-1.rds.amazonaws.com    Database: Tasks
-- ------------------------------------------------------
-- Server version	5.7.26-log

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `Tasks`
--

DROP TABLE IF EXISTS `Tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tasks` (
  `TaskID` int(11) NOT NULL AUTO_INCREMENT,
  `Task` varchar(255) NOT NULL,
  `Urgent` tinyint(1) DEFAULT NULL,
  `DueDate` date DEFAULT NULL,
  `Completed` tinyint(1) DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TaskID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `Tasks_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `User` (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tasks`
--

LOCK TABLES `Tasks` WRITE;
/*!40000 ALTER TABLE `Tasks` DISABLE KEYS */;
INSERT INTO `Tasks` VALUES (1,'Do Homework',1,'2020-04-15',1,1),(2,'Take kids to swimming',1,'2020-04-14',0,1),(3,'Clean the kitchen',0,'2020-04-18',0,1),(4,'Go shopping',0,'2020-04-15',0,3),(5,'help with kids school project',0,'2020-04-18',0,1),(6,'Wash the dishes',1,'2020-04-11',0,3),(7,'Plant some flowers',0,'2020-04-16',0,3),(8,'Go for a walk',0,'2020-04-11',1,3),(9,'Go to work',1,'2020-04-11',1,2),(10,'Feed the birds',1,'2020-04-11',1,2),(11,'Pick out kids party outfit',0,'2020-04-17',1,2),(12,'Visit Dad',1,'2020-04-17',1,2);
/*!40000 ALTER TABLE `Tasks` ENABLE KEYS */;
UNLOCK TABLES;
