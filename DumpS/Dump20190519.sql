CREATE DATABASE  IF NOT EXISTS `db_mysql_destino` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_mysql_destino`;
-- MySQL dump 10.16  Distrib 10.1.37-MariaDB, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: db_mysql_destino
-- ------------------------------------------------------
-- Server version	10.1.37-MariaDB

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
-- Table structure for table `cultura_log`
--

DROP TABLE IF EXISTS `cultura_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cultura_log` (
  `ID` int(11) NOT NULL,
  `IDCultura_OLD` int(11) DEFAULT NULL,
  `IDCultura_NEW` int(11) DEFAULT NULL,
  `NomeCultura_OLD` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NomeCultura_NEW` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DescricaoCultura_OLD` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DescricaoCultura_NEW` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email_Investigador_OLD` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email_Investigador_NEW` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Operacao` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Utilizador` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DataHora` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cultura_log`
--

LOCK TABLES `cultura_log` WRITE;
/*!40000 ALTER TABLE `cultura_log` DISABLE KEYS */;
INSERT INTO `cultura_log` VALUES (1,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(2,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(3,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(4,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(5,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(6,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(7,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(8,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(9,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(10,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(11,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(12,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(13,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(14,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(15,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(16,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(17,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(18,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(19,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(20,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(21,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(22,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(23,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(24,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(25,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(26,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(27,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(28,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(29,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(30,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(31,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(32,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(33,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(34,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(35,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(36,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(37,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(38,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(39,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(40,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(41,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(42,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(43,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(44,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(45,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(46,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(47,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(48,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(49,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(50,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(51,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(52,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(53,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(54,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(55,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(56,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(57,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(58,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(59,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(60,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(61,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(62,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(63,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(64,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(65,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(66,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(67,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(68,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(69,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(70,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(71,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(72,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(73,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(74,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(75,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(76,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(77,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(78,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(79,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(80,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(81,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(82,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(83,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(84,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(85,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(86,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(87,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(88,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(89,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(90,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(91,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(92,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(93,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(94,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(95,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(96,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(97,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(98,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(99,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00'),(100,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost','U','root@localhost','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `cultura_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investigador_log`
--

DROP TABLE IF EXISTS `investigador_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `investigador_log` (
  `ID` int(11) NOT NULL,
  `Email_OLD` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email_NEW` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NomeInvestigador_OLD` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NomeInvestigador_NEW` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CategoriaProfissional_OLD` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CategoriaProfissional_NEW` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Operacao` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Utilizador` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `DataHora` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investigador_log`
--

LOCK TABLES `investigador_log` WRITE;
/*!40000 ALTER TABLE `investigador_log` DISABLE KEYS */;
INSERT INTO `investigador_log` VALUES (1,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(2,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(3,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(4,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(5,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(6,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(7,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(8,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(9,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(10,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(11,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(12,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(13,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(14,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(15,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(16,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(17,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(18,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(19,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(20,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(21,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','I','root@localhost','0000-00-00 00:00:00'),(22,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(23,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(24,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(25,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(26,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(27,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(28,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(29,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(30,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(31,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(32,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(33,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(34,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(35,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(36,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(37,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(38,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(39,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(40,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(41,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(42,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(43,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(44,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(45,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(46,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(47,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(48,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(49,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(50,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(51,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(52,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(53,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(54,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(55,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(56,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(57,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(58,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(59,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(60,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(61,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(62,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(63,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(64,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(65,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(66,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(67,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(68,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(69,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(70,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(71,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(72,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(73,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(74,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(75,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(76,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(77,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(78,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(79,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(80,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(81,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(82,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(83,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(84,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(85,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(86,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(87,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(88,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(89,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(90,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(91,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(92,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(93,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(94,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(95,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(96,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(97,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(98,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(99,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(100,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador','U','root@localhost','0000-00-00 00:00:00'),(100001,NULL,'manel@gmail.com',NULL,'manel',NULL,'Investigador Muita bom','I','root@localhost','2019-03-30 16:28:47'),(100002,NULL,'antonio@hotmail.com',NULL,'antonio',NULL,'descrição','I','root@localhost','2019-04-10 11:53:14');
/*!40000 ALTER TABLE `investigador_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicoes_consultados_log`
--

DROP TABLE IF EXISTS `medicoes_consultados_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicoes_consultados_log` (
  `ID` int(11) NOT NULL,
  `IDMedicoes_LOG` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NumeroMedicao` int(11) DEFAULT NULL,
  `IDVariaveis_VariaveisMedidas` int(11) DEFAULT NULL,
  `IDCultura_VariaveisMedidas` int(11) DEFAULT NULL,
  `ValorMedicao` decimal(8,2) DEFAULT NULL,
  `DataHoraMedicao` timestamp NULL DEFAULT NULL,
  `Operacao_LOG` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Utilizador_LOG` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DataHora_LOG` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicoes_consultados_log`
--

LOCK TABLES `medicoes_consultados_log` WRITE;
/*!40000 ALTER TABLE `medicoes_consultados_log` DISABLE KEYS */;
INSERT INTO `medicoes_consultados_log` VALUES (1,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(2,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(3,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(4,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(5,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(6,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(7,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(8,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(9,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(10,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(11,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(12,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(13,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(14,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(15,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(16,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(17,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(18,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(19,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(20,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(21,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(22,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(23,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(24,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(25,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(26,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(27,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(28,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(29,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(30,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(31,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(32,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(33,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(34,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(35,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(36,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(37,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(38,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(39,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(40,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(41,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(42,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(43,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(44,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(45,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(46,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(47,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(48,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(49,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(50,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(51,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(52,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(53,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(54,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(55,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(56,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(57,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(58,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(59,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(60,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(61,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(62,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(63,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(64,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(65,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(66,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(67,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(68,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(69,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(70,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(71,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(72,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(73,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(74,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(75,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(76,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(77,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(78,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(79,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(80,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(81,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(82,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(83,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(84,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(85,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(86,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(87,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(88,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(89,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(90,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(91,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(92,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(93,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(94,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(95,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(96,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(97,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(98,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(99,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(100,'1',1,1,1,15.00,'0000-00-00 00:00:00','S','root@localhost','0000-00-00 00:00:00'),(100001,'100001',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100002,'100001',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100003,'100001',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100004,'100001',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100005,'100001',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100006,'100001',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100007,'100001',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100008,'100001',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100016,'100002',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100017,'100002',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100018,'100002',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100019,'100002',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100020,'100002',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100021,'100002',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100022,'100002',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100023,'100002',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100031,'100003',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100032,'100003',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100033,'100003',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100034,'100003',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100035,'100003',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100036,'100003',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100037,'100003',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100038,'100003',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100046,'100004',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100047,'100004',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100048,'100004',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100049,'100004',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100050,'100004',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100051,'100004',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100052,'100004',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100053,'100004',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100061,'100005',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100062,'100005',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100063,'100005',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100064,'100005',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100065,'100005',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100066,'100005',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100067,'100005',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100068,'100005',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100076,'100006',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100077,'100006',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100078,'100006',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100079,'100006',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100080,'100006',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100081,'100006',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100082,'100006',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100083,'100006',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100091,'100007',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100092,'100007',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100093,'100007',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100094,'100007',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100095,'100007',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100096,'100007',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100097,'100007',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100098,'100007',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100106,'100008',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100107,'100008',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100108,'100008',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100109,'100008',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100110,'100008',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100111,'100008',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100112,'100008',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100113,'100008',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100121,'100009',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100122,'100009',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100123,'100009',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100124,'100009',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100125,'100009',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100126,'100009',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100127,'100009',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100128,'100009',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100136,'100010',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100137,'100010',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100138,'100010',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100139,'100010',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100140,'100010',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100141,'100010',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100142,'100010',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100143,'100010',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100151,'100011',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100152,'100011',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100153,'100011',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100154,'100011',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100155,'100011',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100156,'100011',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100157,'100011',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100158,'100011',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100166,'100012',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100167,'100012',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100168,'100012',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100169,'100012',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100170,'100012',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100171,'100012',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100172,'100012',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100173,'100012',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100181,'100013',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100182,'100013',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100183,'100013',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100184,'100013',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100185,'100013',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100186,'100013',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100187,'100013',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100188,'100013',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100196,'100014',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100197,'100014',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100198,'100014',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100199,'100014',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100200,'100014',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100201,'100014',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100202,'100014',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100203,'100014',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100211,'100015',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100212,'100015',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100213,'100015',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100214,'100015',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100215,'100015',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100216,'100015',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100217,'100015',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100218,'100015',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100226,'100016',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100227,'100016',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100228,'100016',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100229,'100016',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100230,'100016',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100231,'100016',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100232,'100016',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100233,'100016',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100241,'100017',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100242,'100017',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100243,'100017',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100244,'100017',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100245,'100017',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100246,'100017',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100247,'100017',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100248,'100017',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100256,'100018',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100257,'100018',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100258,'100018',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100259,'100018',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100260,'100018',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100261,'100018',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100262,'100018',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100263,'100018',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100271,'100019',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100272,'100019',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100273,'100019',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100274,'100019',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100275,'100019',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100276,'100019',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100277,'100019',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100278,'100019',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100286,'100020',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100287,'100020',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100288,'100020',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100289,'100020',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100290,'100020',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100291,'100020',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100292,'100020',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100293,'100020',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100301,'100021',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100302,'100021',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100303,'100021',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100304,'100021',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100305,'100021',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100306,'100021',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100307,'100021',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100308,'100021',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100316,'100022',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100317,'100022',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100318,'100022',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100319,'100022',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100320,'100022',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100321,'100022',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100322,'100022',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100323,'100022',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100331,'100023',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100332,'100023',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100333,'100023',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100334,'100023',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100335,'100023',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100336,'100023',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100337,'100023',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100338,'100023',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100346,'100024',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100347,'100024',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100348,'100024',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100349,'100024',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100350,'100024',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100351,'100024',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100352,'100024',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100353,'100024',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100361,'100025',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100362,'100025',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100363,'100025',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100364,'100025',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100365,'100025',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100366,'100025',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100367,'100025',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100368,'100025',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100376,'100026',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100377,'100026',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100378,'100026',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100379,'100026',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100380,'100026',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100381,'100026',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100382,'100026',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100383,'100026',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100391,'100027',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100392,'100027',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100393,'100027',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100394,'100027',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100395,'100027',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100396,'100027',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100397,'100027',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100398,'100027',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100406,'100028',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100407,'100028',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100408,'100028',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100409,'100028',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100410,'100028',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100411,'100028',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100412,'100028',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100413,'100028',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100421,'100029',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100422,'100029',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100423,'100029',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100424,'100029',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100425,'100029',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100426,'100029',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100427,'100029',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100428,'100029',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100436,'100030',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100437,'100030',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100438,'100030',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100439,'100030',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100440,'100030',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100441,'100030',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100442,'100030',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100443,'100030',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100451,'100031',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100452,'100031',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100453,'100031',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100454,'100031',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100455,'100031',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100456,'100031',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100457,'100031',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100458,'100031',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100466,'100032',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100467,'100032',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100468,'100032',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100469,'100032',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100470,'100032',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100471,'100032',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100472,'100032',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100473,'100032',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100481,'100033',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100482,'100033',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100483,'100033',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100484,'100033',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100485,'100033',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100486,'100033',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100487,'100033',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100488,'100033',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100496,'100034',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100497,'100034',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100498,'100034',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100499,'100034',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100500,'100034',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100501,'100034',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100502,'100034',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100503,'100034',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100511,'100035',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100512,'100035',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100513,'100035',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100514,'100035',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100515,'100035',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100516,'100035',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100517,'100035',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100518,'100035',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100526,'100036',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100527,'100036',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100528,'100036',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100529,'100036',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100530,'100036',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100531,'100036',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100532,'100036',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100533,'100036',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100541,'100037',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100542,'100037',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100543,'100037',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100544,'100037',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100545,'100037',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100546,'100037',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100547,'100037',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100548,'100037',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100556,'100038',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100557,'100038',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100558,'100038',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100559,'100038',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100560,'100038',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100561,'100038',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100562,'100038',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100563,'100038',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100571,'100039',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100572,'100039',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100573,'100039',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100574,'100039',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100575,'100039',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100576,'100039',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100577,'100039',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100578,'100039',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100586,'100040',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100587,'100040',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100588,'100040',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100589,'100040',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100590,'100040',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100591,'100040',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100592,'100040',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100593,'100040',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100601,'100041',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100602,'100041',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100603,'100041',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100604,'100041',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100605,'100041',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100606,'100041',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100607,'100041',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100608,'100041',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100616,'100042',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100617,'100042',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100618,'100042',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100619,'100042',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100620,'100042',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100621,'100042',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100622,'100042',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100623,'100042',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100631,'100043',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100632,'100043',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100633,'100043',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100634,'100043',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100635,'100043',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100636,'100043',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100637,'100043',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100638,'100043',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100646,'100044',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100647,'100044',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100648,'100044',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100649,'100044',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100650,'100044',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100651,'100044',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100652,'100044',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100653,'100044',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100661,'100045',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100662,'100045',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100663,'100045',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100664,'100045',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100665,'100045',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100666,'100045',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100667,'100045',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100668,'100045',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100676,'100046',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100677,'100046',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100678,'100046',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100679,'100046',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100680,'100046',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100681,'100046',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100682,'100046',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100683,'100046',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100691,'100047',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100692,'100047',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100693,'100047',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100694,'100047',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100695,'100047',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100696,'100047',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100697,'100047',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100698,'100047',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100706,'100048',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100707,'100048',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100708,'100048',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100709,'100048',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100710,'100048',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100711,'100048',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100712,'100048',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100713,'100048',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100721,'100049',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100722,'100049',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100723,'100049',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100724,'100049',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100725,'100049',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100726,'100049',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100727,'100049',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100728,'100049',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100736,'100050',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100737,'100050',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100738,'100050',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100739,'100050',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100740,'100050',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100741,'100050',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100742,'100050',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100743,'100050',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100751,'100051',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100752,'100051',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100753,'100051',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100754,'100051',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100755,'100051',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100756,'100051',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100757,'100051',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100758,'100051',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100766,'100052',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100767,'100052',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100768,'100052',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100769,'100052',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100770,'100052',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100771,'100052',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100772,'100052',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100773,'100052',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100781,'100053',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100782,'100053',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100783,'100053',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100784,'100053',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100785,'100053',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100786,'100053',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100787,'100053',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100788,'100053',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100796,'100054',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100797,'100054',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100798,'100054',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100799,'100054',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100800,'100054',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100801,'100054',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100802,'100054',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100803,'100054',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100811,'100055',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100812,'100055',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100813,'100055',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100814,'100055',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100815,'100055',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100816,'100055',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100817,'100055',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100818,'100055',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100826,'100056',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100827,'100056',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100828,'100056',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100829,'100056',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100830,'100056',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100831,'100056',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100832,'100056',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100833,'100056',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100841,'100057',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100842,'100057',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100843,'100057',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100844,'100057',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100845,'100057',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100846,'100057',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100847,'100057',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100848,'100057',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100856,'100058',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100857,'100058',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100858,'100058',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100859,'100058',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100860,'100058',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100861,'100058',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100862,'100058',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100863,'100058',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100871,'100059',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100872,'100059',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100873,'100059',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100874,'100059',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100875,'100059',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100876,'100059',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100877,'100059',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100878,'100059',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100886,'100060',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100887,'100060',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100888,'100060',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100889,'100060',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100890,'100060',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100891,'100060',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100892,'100060',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100893,'100060',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100901,'100061',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100902,'100061',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100903,'100061',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100904,'100061',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100905,'100061',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100906,'100061',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100907,'100061',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100908,'100061',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100916,'100062',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100917,'100062',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100918,'100062',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100919,'100062',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100920,'100062',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100921,'100062',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100922,'100062',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100923,'100062',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100931,'100063',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100932,'100063',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100933,'100063',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100934,'100063',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100935,'100063',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100936,'100063',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100937,'100063',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100938,'100063',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100946,'100064',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100947,'100064',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100948,'100064',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100949,'100064',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100950,'100064',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100951,'100064',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100952,'100064',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100953,'100064',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100961,'100065',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100962,'100065',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100963,'100065',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100964,'100065',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100965,'100065',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100966,'100065',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100967,'100065',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100968,'100065',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100976,'100066',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100977,'100066',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100978,'100066',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100979,'100066',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100980,'100066',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100981,'100066',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100982,'100066',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100983,'100066',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(100991,'100067',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100992,'100067',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100993,'100067',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100994,'100067',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100995,'100067',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(100996,'100067',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(100997,'100067',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(100998,'100067',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(101006,'100068',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101007,'100068',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101008,'100068',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101009,'100068',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101010,'100068',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101011,'100068',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(101012,'100068',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(101013,'100068',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(101021,'100069',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101022,'100069',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101023,'100069',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101024,'100069',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101025,'100069',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101026,'100069',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(101027,'100069',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(101028,'100069',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(101036,'100070',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101037,'100070',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101038,'100070',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101039,'100070',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101040,'100070',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101041,'100070',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(101042,'100070',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(101043,'100070',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(101051,'100071',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101052,'100071',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101053,'100071',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101054,'100071',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101055,'100071',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101056,'100071',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(101057,'100071',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(101058,'100071',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(101066,'100072',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101067,'100072',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101068,'100072',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101069,'100072',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101070,'100072',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101071,'100072',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(101072,'100072',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(101073,'100072',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(101081,'100073',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101082,'100073',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101083,'100073',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101084,'100073',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101085,'100073',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101086,'100073',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(101087,'100073',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(101088,'100073',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(101096,'100074',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101097,'100074',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101098,'100074',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101099,'100074',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101100,'100074',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101101,'100074',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(101102,'100074',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(101103,'100074',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(101111,'100075',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101112,'100075',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101113,'100075',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101114,'100075',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101115,'100075',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101116,'100075',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(101117,'100075',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(101118,'100075',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(101126,'100076',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101127,'100076',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101128,'100076',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101129,'100076',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101130,'100076',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101131,'100076',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(101132,'100076',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(101133,'100076',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(101141,'100077',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101142,'100077',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101143,'100077',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101144,'100077',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101145,'100077',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101146,'100077',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(101147,'100077',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(101148,'100077',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(101156,'100078',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101157,'100078',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101158,'100078',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101159,'100078',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101160,'100078',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101161,'100078',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(101162,'100078',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(101163,'100078',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(101171,'100079',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101172,'100079',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101173,'100079',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101174,'100079',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101175,'100079',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101176,'100079',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(101177,'100079',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(101178,'100079',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(101186,'100080',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101187,'100080',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101188,'100080',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101189,'100080',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101190,'100080',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101191,'100080',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(101192,'100080',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(101193,'100080',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(101201,'100081',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101202,'100081',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101203,'100081',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101204,'100081',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101205,'100081',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101206,'100081',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(101207,'100081',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(101208,'100081',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(101216,'100082',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101217,'100082',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101218,'100082',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101219,'100082',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101220,'100082',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101221,'100082',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(101222,'100082',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(101223,'100082',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(101231,'100083',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101232,'100083',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101233,'100083',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101234,'100083',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101235,'100083',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101236,'100083',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(101237,'100083',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(101238,'100083',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(101246,'100084',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101247,'100084',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101248,'100084',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101249,'100084',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101250,'100084',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101251,'100084',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(101252,'100084',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(101253,'100084',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(101261,'100085',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101262,'100085',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101263,'100085',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101264,'100085',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101265,'100085',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101266,'100085',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(101267,'100085',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(101268,'100085',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(101276,'100086',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101277,'100086',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101278,'100086',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101279,'100086',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101280,'100086',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101281,'100086',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(101282,'100086',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(101283,'100086',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(101291,'100087',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101292,'100087',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101293,'100087',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101294,'100087',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101295,'100087',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101296,'100087',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(101297,'100087',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(101298,'100087',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(101306,'100088',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101307,'100088',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101308,'100088',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101309,'100088',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101310,'100088',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101311,'100088',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(101312,'100088',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(101313,'100088',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(101321,'100089',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101322,'100089',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101323,'100089',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101324,'100089',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101325,'100089',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101326,'100089',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(101327,'100089',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(101328,'100089',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(101336,'100090',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101337,'100090',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101338,'100090',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101339,'100090',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101340,'100090',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101341,'100090',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(101342,'100090',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(101343,'100090',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(101351,'100091',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101352,'100091',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101353,'100091',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101354,'100091',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101355,'100091',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101356,'100091',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(101357,'100091',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(101358,'100091',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(101366,'100092',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101367,'100092',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101368,'100092',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101369,'100092',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101370,'100092',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101371,'100092',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(101372,'100092',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(101373,'100092',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(101381,'100093',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101382,'100093',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101383,'100093',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101384,'100093',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101385,'100093',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101386,'100093',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(101387,'100093',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(101388,'100093',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(101396,'100094',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101397,'100094',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101398,'100094',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101399,'100094',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101400,'100094',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101401,'100094',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(101402,'100094',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(101403,'100094',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(101411,'100095',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101412,'100095',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101413,'100095',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101414,'100095',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101415,'100095',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101416,'100095',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(101417,'100095',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(101418,'100095',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(101426,'100096',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101427,'100096',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101428,'100096',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101429,'100096',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101430,'100096',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101431,'100096',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(101432,'100096',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(101433,'100096',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(101441,'100097',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101442,'100097',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101443,'100097',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101444,'100097',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101445,'100097',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101446,'100097',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(101447,'100097',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(101448,'100097',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(101456,'100098',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101457,'100098',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101458,'100098',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101459,'100098',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101460,'100098',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:29'),(101461,'100098',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:29'),(101462,'100098',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:29'),(101463,'100098',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:29'),(101471,'100099',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101472,'100099',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101473,'100099',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101474,'100099',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101475,'100099',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101476,'100099',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:30'),(101477,'100099',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:30'),(101478,'100099',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:30'),(101486,'100100',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101487,'100100',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101488,'100100',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101489,'100100',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101490,'100100',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101491,'100100',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:30'),(101492,'100100',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:30'),(101493,'100100',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:30'),(101501,'100101',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101502,'100101',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101503,'100101',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101504,'100101',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101505,'100101',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101506,'100101',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:30'),(101507,'100101',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:30'),(101508,'100101',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:30'),(101516,'100102',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101517,'100102',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101518,'100102',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101519,'100102',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101520,'100102',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101521,'100102',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:30'),(101522,'100102',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:30'),(101523,'100102',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:30'),(101531,'100103',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101532,'100103',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101533,'100103',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101534,'100103',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101535,'100103',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101536,'100103',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:30'),(101537,'100103',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:30'),(101538,'100103',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:30'),(101546,'100104',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101547,'100104',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101548,'100104',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101549,'100104',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101550,'100104',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101551,'100104',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:30'),(101552,'100104',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:30'),(101553,'100104',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:30'),(101561,'100105',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101562,'100105',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101563,'100105',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101564,'100105',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101565,'100105',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101566,'100105',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:30'),(101567,'100105',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:30'),(101568,'100105',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:30'),(101576,'100106',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101577,'100106',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101578,'100106',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101579,'100106',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101580,'100106',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101581,'100106',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:30'),(101582,'100106',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:30'),(101583,'100106',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:30'),(101591,'100107',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101592,'100107',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101593,'100107',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101594,'100107',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101595,'100107',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101596,'100107',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:30'),(101597,'100107',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:30'),(101598,'100107',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:30'),(101606,'100108',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101607,'100108',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101608,'100108',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101609,'100108',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101610,'100108',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101611,'100108',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:30'),(101612,'100108',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:30'),(101613,'100108',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:30'),(101621,'100109',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101622,'100109',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101623,'100109',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101624,'100109',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101625,'100109',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101626,'100109',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:30'),(101627,'100109',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:30'),(101628,'100109',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:30'),(101636,'100110',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101637,'100110',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101638,'100110',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101639,'100110',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101640,'100110',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101641,'100110',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:30'),(101642,'100110',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:30'),(101643,'100110',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:30'),(101651,'100111',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101652,'100111',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101653,'100111',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101654,'100111',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101655,'100111',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101656,'100111',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:30'),(101657,'100111',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:30'),(101658,'100111',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:30'),(101666,'100112',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101667,'100112',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101668,'100112',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101669,'100112',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101670,'100112',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101671,'100112',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:30'),(101672,'100112',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:30'),(101673,'100112',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:30'),(101681,'100113',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101682,'100113',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101683,'100113',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101684,'100113',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101685,'100113',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101686,'100113',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:30'),(101687,'100113',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:30'),(101688,'100113',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:30'),(101696,'100114',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101697,'100114',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101698,'100114',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101699,'100114',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101700,'100114',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101701,'100114',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:30'),(101702,'100114',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:30'),(101703,'100114',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:30'),(101711,'100115',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101712,'100115',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101713,'100115',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101714,'100115',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101715,'100115',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101716,'100115',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:30'),(101717,'100115',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:30'),(101718,'100115',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:30'),(101726,'100116',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101727,'100116',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101728,'100116',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101729,'100116',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101730,'100116',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101731,'100116',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:30'),(101732,'100116',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:30'),(101733,'100116',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:30'),(101741,'100117',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101742,'100117',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101743,'100117',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101744,'100117',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101745,'100117',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101746,'100117',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:30'),(101747,'100117',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:30'),(101748,'100117',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:30'),(101756,'100118',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101757,'100118',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101758,'100118',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101759,'100118',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101760,'100118',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101761,'100118',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:30'),(101762,'100118',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:30'),(101763,'100118',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:30'),(101771,'100119',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101772,'100119',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101773,'100119',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101774,'100119',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101775,'100119',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101776,'100119',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:30'),(101777,'100119',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:30'),(101778,'100119',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:30'),(101786,'100120',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101787,'100120',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101788,'100120',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101789,'100120',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101790,'100120',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101791,'100120',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:30'),(101792,'100120',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:30'),(101793,'100120',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:30'),(101801,'100121',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101802,'100121',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101803,'100121',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101804,'100121',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101805,'100121',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101806,'100121',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:30'),(101807,'100121',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:30'),(101808,'100121',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:30'),(101816,'100122',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101817,'100122',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101818,'100122',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101819,'100122',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101820,'100122',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101821,'100122',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:30'),(101822,'100122',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:30'),(101823,'100122',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:30'),(101831,'100123',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101832,'100123',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101833,'100123',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101834,'100123',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101835,'100123',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101836,'100123',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:30'),(101837,'100123',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:30'),(101838,'100123',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:30'),(101846,'100124',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101847,'100124',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101848,'100124',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101849,'100124',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101850,'100124',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101851,'100124',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:30'),(101852,'100124',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:30'),(101853,'100124',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:30'),(101861,'100125',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101862,'100125',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101863,'100125',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101864,'100125',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101865,'100125',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-07 15:52:30'),(101866,'100125',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-07 15:52:30'),(101867,'100125',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-07 15:52:30'),(101868,'100125',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-07 15:52:30'),(101869,'100127',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-08 17:59:18'),(101870,'100127',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-08 17:59:18'),(101871,'100127',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-08 17:59:18'),(101872,'100127',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-08 17:59:18'),(101873,'100127',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-08 17:59:18'),(101874,'100127',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-08 17:59:18'),(101875,'100127',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-08 17:59:18'),(101876,'100127',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-08 17:59:18'),(101877,'100127',10,1,2,34.00,'2019-04-08 17:57:21','S','root@localhost','2019-04-08 17:59:18'),(101884,'100128',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-08 18:00:40'),(101885,'100128',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-08 18:00:40'),(101886,'100128',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-08 18:00:40'),(101887,'100128',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-08 18:00:40'),(101888,'100128',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-08 18:00:40'),(101889,'100128',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-08 18:00:40'),(101890,'100128',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-08 18:00:40'),(101891,'100128',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-08 18:00:40'),(101892,'100128',10,1,2,34.00,'2019-04-08 17:57:21','S','root@localhost','2019-04-08 18:00:40'),(101899,'100129',1,1,1,345.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-08 18:00:42'),(101900,'100129',2,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-08 18:00:42'),(101901,'100129',3,1,1,0.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-08 18:00:42'),(101902,'100129',4,1,1,33.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-08 18:00:42'),(101903,'100129',5,1,1,10000.00,'2019-03-04 20:23:32','S','root@localhost','2019-04-08 18:00:42'),(101904,'100129',7,1,2,60.00,'2019-03-05 11:10:31','S','root@localhost','2019-04-08 18:00:42'),(101905,'100129',8,1,2,650.00,'2019-03-05 11:54:41','S','root@localhost','2019-04-08 18:00:42'),(101906,'100129',9,1,2,320.00,'2019-03-05 11:54:52','S','root@localhost','2019-04-08 18:00:42'),(101907,'100129',10,1,2,34.00,'2019-04-08 17:57:21','S','root@localhost','2019-04-08 18:00:42'),(101914,'100130',10,1,2,34.00,'2019-04-08 17:57:21','S','root@localhost','2019-04-08 18:09:03');
/*!40000 ALTER TABLE `medicoes_consultados_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicoes_log`
--

DROP TABLE IF EXISTS `medicoes_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicoes_log` (
  `ID` int(11) NOT NULL,
  `NumeroMedicao_OLD` int(11) DEFAULT NULL,
  `NumeroMedicao_NEW` int(11) DEFAULT NULL,
  `DataHoraMedicao_OLD` timestamp NULL DEFAULT NULL,
  `DataHoraMedicao_NEW` timestamp NULL DEFAULT NULL,
  `ValorMedicao_OLD` decimal(8,2) DEFAULT NULL,
  `ValorMedicao_NEW` decimal(8,2) DEFAULT NULL,
  `IDVariaveis_VariaveisMedidas_OLD` int(11) DEFAULT NULL,
  `IDVariaveis_VariaveisMedidas_NEW` int(11) DEFAULT NULL,
  `IDCultura_VariaveisMedidas_OLD` int(11) DEFAULT NULL,
  `IDCultura_VariaveisMedidas_NEW` int(11) DEFAULT NULL,
  `Operacao` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Utilizador` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DataHora` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicoes_log`
--

LOCK TABLES `medicoes_log` WRITE;
/*!40000 ALTER TABLE `medicoes_log` DISABLE KEYS */;
INSERT INTO `medicoes_log` VALUES (1,0,9,'0000-00-00 00:00:00','0000-00-00 00:00:00',69643.00,81151.00,4,0,4,8,'S','root@localhost','0000-00-00 00:00:00'),(2,4,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',63811.00,11395.00,9,1,8,6,'S','root@localhost','0000-00-00 00:00:00'),(3,4,9,'0000-00-00 00:00:00','0000-00-00 00:00:00',33600.00,70372.00,4,7,8,0,'S','root@localhost','0000-00-00 00:00:00'),(4,1,6,'0000-00-00 00:00:00','0000-00-00 00:00:00',51360.00,79558.00,7,3,9,1,'S','root@localhost','0000-00-00 00:00:00'),(5,9,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',39818.00,9805.00,7,3,0,0,'S','root@localhost','0000-00-00 00:00:00'),(6,9,5,'0000-00-00 00:00:00','0000-00-00 00:00:00',3554.00,48444.00,7,9,3,0,'S','root@localhost','0000-00-00 00:00:00'),(7,7,6,'0000-00-00 00:00:00','0000-00-00 00:00:00',14782.00,95439.00,6,3,0,3,'S','root@localhost','0000-00-00 00:00:00'),(8,2,8,'0000-00-00 00:00:00','0000-00-00 00:00:00',86855.00,11872.00,7,8,0,1,'S','root@localhost','0000-00-00 00:00:00'),(9,7,5,'0000-00-00 00:00:00','0000-00-00 00:00:00',43105.00,30870.00,5,6,0,3,'S','root@localhost','0000-00-00 00:00:00'),(10,5,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',49869.00,74710.00,8,4,4,6,'S','root@localhost','0000-00-00 00:00:00'),(11,8,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',68719.00,84956.00,3,0,5,4,'S','root@localhost','0000-00-00 00:00:00'),(12,2,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',53293.00,73921.00,9,8,5,5,'S','root@localhost','0000-00-00 00:00:00'),(13,3,6,'0000-00-00 00:00:00','0000-00-00 00:00:00',10302.00,64646.00,2,9,0,0,'S','root@localhost','0000-00-00 00:00:00'),(14,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',96505.00,89758.00,7,6,2,1,'S','root@localhost','0000-00-00 00:00:00'),(15,0,9,'0000-00-00 00:00:00','0000-00-00 00:00:00',21499.00,64316.00,8,0,4,7,'S','root@localhost','0000-00-00 00:00:00'),(16,8,9,'0000-00-00 00:00:00','0000-00-00 00:00:00',62025.00,49244.00,1,8,6,5,'S','root@localhost','0000-00-00 00:00:00'),(17,2,7,'0000-00-00 00:00:00','0000-00-00 00:00:00',20705.00,30987.00,2,1,2,7,'S','root@localhost','0000-00-00 00:00:00'),(18,7,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',95094.00,92502.00,8,9,4,4,'S','root@localhost','0000-00-00 00:00:00'),(19,2,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',432.00,9772.00,5,9,2,2,'S','root@localhost','0000-00-00 00:00:00'),(20,6,5,'0000-00-00 00:00:00','0000-00-00 00:00:00',63406.00,94062.00,4,1,1,7,'S','root@localhost','0000-00-00 00:00:00'),(21,0,7,'0000-00-00 00:00:00','0000-00-00 00:00:00',46992.00,3967.00,0,5,0,9,'S','root@localhost','0000-00-00 00:00:00'),(22,7,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',58921.00,6857.00,8,5,7,8,'S','root@localhost','0000-00-00 00:00:00'),(23,7,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',87045.00,23971.00,0,6,3,6,'S','root@localhost','0000-00-00 00:00:00'),(24,6,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',88532.00,24337.00,1,8,0,3,'S','root@localhost','0000-00-00 00:00:00'),(25,7,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',22927.00,12746.00,7,7,8,0,'S','root@localhost','0000-00-00 00:00:00'),(26,8,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',72652.00,28857.00,9,0,0,7,'S','root@localhost','0000-00-00 00:00:00'),(27,9,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',24296.00,64754.00,6,5,9,2,'S','root@localhost','0000-00-00 00:00:00'),(28,5,9,'0000-00-00 00:00:00','0000-00-00 00:00:00',94008.00,70692.00,8,4,9,6,'S','root@localhost','0000-00-00 00:00:00'),(29,8,9,'0000-00-00 00:00:00','0000-00-00 00:00:00',99959.00,38087.00,2,2,9,3,'S','root@localhost','0000-00-00 00:00:00'),(30,7,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',65460.00,99217.00,1,1,0,1,'S','root@localhost','0000-00-00 00:00:00'),(31,3,9,'0000-00-00 00:00:00','0000-00-00 00:00:00',35464.00,49625.00,6,6,1,6,'S','root@localhost','0000-00-00 00:00:00'),(32,0,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',25527.00,23799.00,5,0,4,9,'S','root@localhost','0000-00-00 00:00:00'),(33,3,7,'0000-00-00 00:00:00','0000-00-00 00:00:00',85769.00,5000.00,9,4,4,7,'S','root@localhost','0000-00-00 00:00:00'),(34,9,8,'0000-00-00 00:00:00','0000-00-00 00:00:00',10967.00,45890.00,7,5,1,2,'S','root@localhost','0000-00-00 00:00:00'),(35,5,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',46170.00,1593.00,6,0,8,1,'S','root@localhost','0000-00-00 00:00:00'),(36,8,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',29092.00,2942.00,1,9,5,1,'S','root@localhost','0000-00-00 00:00:00'),(37,7,7,'0000-00-00 00:00:00','0000-00-00 00:00:00',54232.00,38953.00,4,9,0,8,'S','root@localhost','0000-00-00 00:00:00'),(38,7,8,'0000-00-00 00:00:00','0000-00-00 00:00:00',16373.00,94131.00,4,7,5,1,'S','root@localhost','0000-00-00 00:00:00'),(39,0,8,'0000-00-00 00:00:00','0000-00-00 00:00:00',1296.00,89461.00,5,7,2,4,'S','root@localhost','0000-00-00 00:00:00'),(40,6,4,'0000-00-00 00:00:00','0000-00-00 00:00:00',7926.00,81472.00,6,3,4,3,'S','root@localhost','0000-00-00 00:00:00'),(41,6,4,'0000-00-00 00:00:00','0000-00-00 00:00:00',23467.00,44373.00,7,2,7,4,'S','root@localhost','0000-00-00 00:00:00'),(42,0,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',82415.00,26426.00,2,6,3,8,'S','root@localhost','0000-00-00 00:00:00'),(43,3,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',74899.00,33813.00,5,0,3,8,'S','root@localhost','0000-00-00 00:00:00'),(44,1,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',96635.00,30949.00,9,3,3,4,'S','root@localhost','0000-00-00 00:00:00'),(45,8,8,'0000-00-00 00:00:00','0000-00-00 00:00:00',20408.00,14867.00,3,4,2,5,'S','root@localhost','0000-00-00 00:00:00'),(46,4,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',70024.00,48121.00,3,2,6,8,'S','root@localhost','0000-00-00 00:00:00'),(47,6,9,'0000-00-00 00:00:00','0000-00-00 00:00:00',23704.00,79949.00,5,7,8,9,'S','root@localhost','0000-00-00 00:00:00'),(48,6,4,'0000-00-00 00:00:00','0000-00-00 00:00:00',93577.00,50900.00,4,6,6,5,'S','root@localhost','0000-00-00 00:00:00'),(49,7,6,'0000-00-00 00:00:00','0000-00-00 00:00:00',47416.00,14724.00,4,2,4,7,'S','root@localhost','0000-00-00 00:00:00'),(50,5,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',23803.00,6025.00,1,6,0,5,'S','root@localhost','0000-00-00 00:00:00'),(51,1,4,'0000-00-00 00:00:00','0000-00-00 00:00:00',3046.00,63035.00,6,6,2,6,'S','root@localhost','0000-00-00 00:00:00'),(52,2,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',54753.00,887.00,9,6,8,5,'S','root@localhost','0000-00-00 00:00:00'),(53,6,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',19165.00,12986.00,1,8,3,4,'S','root@localhost','0000-00-00 00:00:00'),(54,7,9,'0000-00-00 00:00:00','0000-00-00 00:00:00',85977.00,54588.00,1,0,3,0,'S','root@localhost','0000-00-00 00:00:00'),(55,6,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',37166.00,52496.00,0,9,8,2,'S','root@localhost','0000-00-00 00:00:00'),(56,7,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',65092.00,19210.00,9,0,5,1,'S','root@localhost','0000-00-00 00:00:00'),(57,9,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',45625.00,77356.00,7,7,3,9,'S','root@localhost','0000-00-00 00:00:00'),(58,2,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',32767.00,91426.00,9,5,7,1,'S','root@localhost','0000-00-00 00:00:00'),(59,2,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',89201.00,60672.00,7,8,1,0,'S','root@localhost','0000-00-00 00:00:00'),(60,0,9,'0000-00-00 00:00:00','0000-00-00 00:00:00',46051.00,52015.00,3,6,0,6,'S','root@localhost','0000-00-00 00:00:00'),(61,3,9,'0000-00-00 00:00:00','0000-00-00 00:00:00',80721.00,4468.00,5,9,8,8,'S','root@localhost','0000-00-00 00:00:00'),(62,3,5,'0000-00-00 00:00:00','0000-00-00 00:00:00',50033.00,32771.00,7,1,5,1,'S','root@localhost','0000-00-00 00:00:00'),(63,1,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',52207.00,69540.00,2,4,6,9,'S','root@localhost','0000-00-00 00:00:00'),(64,5,5,'0000-00-00 00:00:00','0000-00-00 00:00:00',30943.00,90060.00,0,4,4,5,'S','root@localhost','0000-00-00 00:00:00'),(65,0,4,'0000-00-00 00:00:00','0000-00-00 00:00:00',45886.00,39331.00,0,5,4,4,'S','root@localhost','0000-00-00 00:00:00'),(66,9,7,'0000-00-00 00:00:00','0000-00-00 00:00:00',82747.00,23589.00,4,1,1,6,'S','root@localhost','0000-00-00 00:00:00'),(67,4,5,'0000-00-00 00:00:00','0000-00-00 00:00:00',11088.00,84179.00,2,5,4,1,'S','root@localhost','0000-00-00 00:00:00'),(68,6,8,'0000-00-00 00:00:00','0000-00-00 00:00:00',94501.00,86363.00,5,0,8,4,'S','root@localhost','0000-00-00 00:00:00'),(69,4,9,'0000-00-00 00:00:00','0000-00-00 00:00:00',5534.00,36238.00,1,0,0,6,'S','root@localhost','0000-00-00 00:00:00'),(70,4,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',50611.00,29078.00,3,9,2,8,'S','root@localhost','0000-00-00 00:00:00'),(71,6,4,'0000-00-00 00:00:00','0000-00-00 00:00:00',33172.00,62283.00,1,4,8,0,'S','root@localhost','0000-00-00 00:00:00'),(72,4,7,'0000-00-00 00:00:00','0000-00-00 00:00:00',22717.00,9075.00,0,6,5,0,'S','root@localhost','0000-00-00 00:00:00'),(73,3,7,'0000-00-00 00:00:00','0000-00-00 00:00:00',17744.00,50783.00,3,7,9,8,'S','root@localhost','0000-00-00 00:00:00'),(74,2,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',45971.00,31589.00,8,7,4,5,'S','root@localhost','0000-00-00 00:00:00'),(75,3,4,'0000-00-00 00:00:00','0000-00-00 00:00:00',53073.00,79932.00,2,6,9,6,'S','root@localhost','0000-00-00 00:00:00'),(76,3,9,'0000-00-00 00:00:00','0000-00-00 00:00:00',90473.00,20418.00,9,6,8,2,'S','root@localhost','0000-00-00 00:00:00'),(77,8,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',84430.00,78776.00,3,0,2,3,'S','root@localhost','0000-00-00 00:00:00'),(78,3,6,'0000-00-00 00:00:00','0000-00-00 00:00:00',31770.00,57692.00,5,5,6,8,'S','root@localhost','0000-00-00 00:00:00'),(79,2,9,'0000-00-00 00:00:00','0000-00-00 00:00:00',95814.00,40878.00,6,0,1,1,'S','root@localhost','0000-00-00 00:00:00'),(80,1,7,'0000-00-00 00:00:00','0000-00-00 00:00:00',88486.00,30798.00,8,5,7,1,'S','root@localhost','0000-00-00 00:00:00'),(81,1,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',88878.00,27012.00,7,6,6,8,'S','root@localhost','0000-00-00 00:00:00'),(82,0,8,'0000-00-00 00:00:00','0000-00-00 00:00:00',52993.00,49101.00,3,3,2,5,'S','root@localhost','0000-00-00 00:00:00'),(83,7,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',58231.00,71711.00,3,3,7,5,'S','root@localhost','0000-00-00 00:00:00'),(84,4,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',89551.00,49992.00,6,5,9,5,'S','root@localhost','0000-00-00 00:00:00'),(85,1,7,'0000-00-00 00:00:00','0000-00-00 00:00:00',51957.00,74659.00,7,5,5,0,'S','root@localhost','0000-00-00 00:00:00'),(86,6,4,'0000-00-00 00:00:00','0000-00-00 00:00:00',17103.00,94186.00,8,7,4,1,'S','root@localhost','0000-00-00 00:00:00'),(87,3,6,'0000-00-00 00:00:00','0000-00-00 00:00:00',72987.00,62691.00,9,6,1,5,'S','root@localhost','0000-00-00 00:00:00'),(88,4,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',59742.00,25396.00,5,1,5,2,'S','root@localhost','0000-00-00 00:00:00'),(89,7,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',73527.00,21736.00,3,9,2,4,'S','root@localhost','0000-00-00 00:00:00'),(90,8,9,'0000-00-00 00:00:00','0000-00-00 00:00:00',59498.00,35104.00,8,8,0,3,'S','root@localhost','0000-00-00 00:00:00'),(91,1,8,'0000-00-00 00:00:00','0000-00-00 00:00:00',36845.00,44558.00,0,6,0,1,'S','root@localhost','0000-00-00 00:00:00'),(92,7,8,'0000-00-00 00:00:00','0000-00-00 00:00:00',64865.00,11293.00,6,0,6,2,'S','root@localhost','0000-00-00 00:00:00'),(93,8,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',70407.00,73788.00,0,5,6,2,'S','root@localhost','0000-00-00 00:00:00'),(94,6,9,'0000-00-00 00:00:00','0000-00-00 00:00:00',71958.00,74110.00,7,0,7,0,'S','root@localhost','0000-00-00 00:00:00'),(95,4,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',86984.00,46394.00,8,2,3,3,'S','root@localhost','0000-00-00 00:00:00'),(96,4,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',39179.00,45317.00,6,0,0,1,'S','root@localhost','0000-00-00 00:00:00'),(97,8,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',29189.00,95080.00,7,9,7,3,'S','root@localhost','0000-00-00 00:00:00'),(98,9,4,'0000-00-00 00:00:00','0000-00-00 00:00:00',33829.00,84014.00,4,0,3,6,'S','root@localhost','0000-00-00 00:00:00'),(99,0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',31508.00,79172.00,8,3,6,9,'S','root@localhost','0000-00-00 00:00:00'),(100,2,4,'0000-00-00 00:00:00','0000-00-00 00:00:00',43423.00,6240.00,7,3,4,9,'S','root@localhost','0000-00-00 00:00:00'),(100001,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100002,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100003,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100004,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100005,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100006,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100007,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100008,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100009,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100010,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100011,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100012,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100013,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100015,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100016,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100017,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100018,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100019,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100020,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100021,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100022,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100023,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100024,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100025,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100026,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100027,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100028,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100029,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100030,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100031,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100032,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100033,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100034,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100035,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100036,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100037,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100038,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100039,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100040,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100041,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100042,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100043,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100044,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100045,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100046,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100047,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100048,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100049,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100050,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100051,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100052,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100053,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100054,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100055,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100056,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100057,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100058,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100059,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100060,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100061,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100062,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100063,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100064,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100065,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100066,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100067,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100068,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100069,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100070,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100071,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100072,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100073,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100074,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100075,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100076,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100077,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100078,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100079,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100080,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100081,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100082,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100083,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100084,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100085,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100086,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100087,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100088,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100089,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100090,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100091,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100092,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100093,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100094,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100095,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100096,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100097,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100098,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:29'),(100099,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:30'),(100100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:30'),(100101,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:30'),(100102,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:30'),(100103,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:30'),(100104,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:30'),(100105,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:30'),(100106,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:30'),(100107,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:30'),(100108,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:30'),(100109,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:30'),(100110,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:30'),(100111,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:30'),(100112,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:30'),(100113,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:30'),(100114,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:30'),(100115,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:30'),(100116,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:30'),(100117,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:30'),(100118,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:30'),(100119,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:30'),(100120,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:30'),(100121,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:30'),(100122,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:30'),(100123,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:30'),(100124,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:30'),(100125,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-07 15:52:30'),(100126,NULL,10,NULL,'2019-04-08 17:57:21',NULL,34.00,NULL,1,NULL,2,'I','root@localhost','2019-04-08 17:57:21'),(100127,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-08 17:59:18'),(100128,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-08 18:00:40'),(100129,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-08 18:00:42'),(100130,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'S','root@localhost','2019-04-08 18:09:03');
/*!40000 ALTER TABLE `medicoes_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicoesluminosidade_log`
--

DROP TABLE IF EXISTS `medicoesluminosidade_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicoesluminosidade_log` (
  `ID` int(11) NOT NULL,
  `DataHoraMedicao_NEW` timestamp NULL DEFAULT NULL,
  `ValorMedicaoLuminosidade_NEW` decimal(8,2) DEFAULT NULL,
  `IDMedicao_NEW` int(11) DEFAULT NULL,
  `Operacao` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Utilizador` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DataHora` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicoesluminosidade_log`
--

LOCK TABLES `medicoesluminosidade_log` WRITE;
/*!40000 ALTER TABLE `medicoesluminosidade_log` DISABLE KEYS */;
INSERT INTO `medicoesluminosidade_log` VALUES (1,'0000-00-00 00:00:00',30.00,1,'I','root@localhost.com','0000-00-00 00:00:00'),(2,'0000-00-00 00:00:00',30.00,2,'I','root@localhost.com','0000-00-00 00:00:00'),(3,'0000-00-00 00:00:00',30.00,3,'I','root@localhost.com','0000-00-00 00:00:00'),(4,'0000-00-00 00:00:00',30.00,4,'I','root@localhost.com','0000-00-00 00:00:00'),(5,'0000-00-00 00:00:00',30.00,5,'I','root@localhost.com','0000-00-00 00:00:00'),(6,'0000-00-00 00:00:00',30.00,6,'I','root@localhost.com','0000-00-00 00:00:00'),(7,'0000-00-00 00:00:00',30.00,7,'I','root@localhost.com','0000-00-00 00:00:00'),(8,'0000-00-00 00:00:00',30.00,8,'I','root@localhost.com','0000-00-00 00:00:00'),(9,'0000-00-00 00:00:00',30.00,9,'I','root@localhost.com','0000-00-00 00:00:00'),(10,'0000-00-00 00:00:00',30.00,10,'I','root@localhost.com','0000-00-00 00:00:00'),(11,'0000-00-00 00:00:00',30.00,11,'I','root@localhost.com','0000-00-00 00:00:00'),(12,'0000-00-00 00:00:00',30.00,12,'I','root@localhost.com','0000-00-00 00:00:00'),(13,'0000-00-00 00:00:00',30.00,13,'I','root@localhost.com','0000-00-00 00:00:00'),(14,'0000-00-00 00:00:00',30.00,14,'I','root@localhost.com','0000-00-00 00:00:00'),(15,'0000-00-00 00:00:00',30.00,15,'I','root@localhost.com','0000-00-00 00:00:00'),(16,'0000-00-00 00:00:00',30.00,16,'I','root@localhost.com','0000-00-00 00:00:00'),(17,'0000-00-00 00:00:00',30.00,17,'I','root@localhost.com','0000-00-00 00:00:00'),(18,'0000-00-00 00:00:00',30.00,18,'I','root@localhost.com','0000-00-00 00:00:00'),(19,'0000-00-00 00:00:00',30.00,19,'I','root@localhost.com','0000-00-00 00:00:00'),(20,'0000-00-00 00:00:00',30.00,20,'I','root@localhost.com','0000-00-00 00:00:00'),(21,'0000-00-00 00:00:00',30.00,21,'I','root@localhost.com','0000-00-00 00:00:00'),(22,'0000-00-00 00:00:00',30.00,22,'I','root@localhost.com','0000-00-00 00:00:00'),(23,'0000-00-00 00:00:00',30.00,23,'I','root@localhost.com','0000-00-00 00:00:00'),(24,'0000-00-00 00:00:00',30.00,24,'I','root@localhost.com','0000-00-00 00:00:00'),(25,'0000-00-00 00:00:00',30.00,25,'I','root@localhost.com','0000-00-00 00:00:00'),(26,'0000-00-00 00:00:00',30.00,26,'I','root@localhost.com','0000-00-00 00:00:00'),(27,'0000-00-00 00:00:00',30.00,27,'I','root@localhost.com','0000-00-00 00:00:00'),(28,'0000-00-00 00:00:00',30.00,28,'I','root@localhost.com','0000-00-00 00:00:00'),(29,'0000-00-00 00:00:00',30.00,29,'I','root@localhost.com','0000-00-00 00:00:00'),(30,'0000-00-00 00:00:00',30.00,30,'I','root@localhost.com','0000-00-00 00:00:00'),(31,'0000-00-00 00:00:00',30.00,31,'I','root@localhost.com','0000-00-00 00:00:00'),(32,'0000-00-00 00:00:00',30.00,32,'I','root@localhost.com','0000-00-00 00:00:00'),(33,'0000-00-00 00:00:00',30.00,33,'I','root@localhost.com','0000-00-00 00:00:00'),(34,'0000-00-00 00:00:00',30.00,34,'I','root@localhost.com','0000-00-00 00:00:00'),(35,'0000-00-00 00:00:00',30.00,35,'I','root@localhost.com','0000-00-00 00:00:00'),(36,'0000-00-00 00:00:00',30.00,36,'I','root@localhost.com','0000-00-00 00:00:00'),(37,'0000-00-00 00:00:00',30.00,37,'I','root@localhost.com','0000-00-00 00:00:00'),(38,'0000-00-00 00:00:00',30.00,38,'I','root@localhost.com','0000-00-00 00:00:00'),(39,'0000-00-00 00:00:00',30.00,39,'I','root@localhost.com','0000-00-00 00:00:00'),(40,'0000-00-00 00:00:00',30.00,40,'I','root@localhost.com','0000-00-00 00:00:00'),(41,'0000-00-00 00:00:00',30.00,41,'I','root@localhost.com','0000-00-00 00:00:00'),(42,'0000-00-00 00:00:00',30.00,42,'I','root@localhost.com','0000-00-00 00:00:00'),(43,'0000-00-00 00:00:00',30.00,43,'I','root@localhost.com','0000-00-00 00:00:00'),(44,'0000-00-00 00:00:00',30.00,44,'I','root@localhost.com','0000-00-00 00:00:00'),(45,'0000-00-00 00:00:00',30.00,45,'I','root@localhost.com','0000-00-00 00:00:00'),(46,'0000-00-00 00:00:00',30.00,46,'I','root@localhost.com','0000-00-00 00:00:00'),(47,'0000-00-00 00:00:00',30.00,47,'I','root@localhost.com','0000-00-00 00:00:00'),(48,'0000-00-00 00:00:00',30.00,48,'I','root@localhost.com','0000-00-00 00:00:00'),(49,'0000-00-00 00:00:00',30.00,49,'I','root@localhost.com','0000-00-00 00:00:00'),(50,'0000-00-00 00:00:00',30.00,50,'I','root@localhost.com','0000-00-00 00:00:00'),(51,'0000-00-00 00:00:00',30.00,51,'I','root@localhost.com','0000-00-00 00:00:00'),(52,'0000-00-00 00:00:00',30.00,52,'I','root@localhost.com','0000-00-00 00:00:00'),(53,'0000-00-00 00:00:00',30.00,53,'I','root@localhost.com','0000-00-00 00:00:00'),(54,'0000-00-00 00:00:00',30.00,54,'I','root@localhost.com','0000-00-00 00:00:00'),(55,'0000-00-00 00:00:00',30.00,55,'I','root@localhost.com','0000-00-00 00:00:00'),(56,'0000-00-00 00:00:00',30.00,56,'I','root@localhost.com','0000-00-00 00:00:00'),(57,'0000-00-00 00:00:00',30.00,57,'I','root@localhost.com','0000-00-00 00:00:00'),(58,'0000-00-00 00:00:00',30.00,58,'I','root@localhost.com','0000-00-00 00:00:00'),(59,'0000-00-00 00:00:00',30.00,59,'I','root@localhost.com','0000-00-00 00:00:00'),(60,'0000-00-00 00:00:00',30.00,60,'I','root@localhost.com','0000-00-00 00:00:00'),(61,'0000-00-00 00:00:00',30.00,61,'I','root@localhost.com','0000-00-00 00:00:00'),(62,'0000-00-00 00:00:00',30.00,62,'I','root@localhost.com','0000-00-00 00:00:00'),(63,'0000-00-00 00:00:00',30.00,63,'I','root@localhost.com','0000-00-00 00:00:00'),(64,'0000-00-00 00:00:00',30.00,64,'I','root@localhost.com','0000-00-00 00:00:00'),(65,'0000-00-00 00:00:00',30.00,65,'I','root@localhost.com','0000-00-00 00:00:00'),(66,'0000-00-00 00:00:00',30.00,66,'I','root@localhost.com','0000-00-00 00:00:00'),(67,'0000-00-00 00:00:00',30.00,67,'I','root@localhost.com','0000-00-00 00:00:00'),(68,'0000-00-00 00:00:00',30.00,68,'I','root@localhost.com','0000-00-00 00:00:00'),(69,'0000-00-00 00:00:00',30.00,69,'I','root@localhost.com','0000-00-00 00:00:00'),(70,'0000-00-00 00:00:00',30.00,70,'I','root@localhost.com','0000-00-00 00:00:00'),(71,'0000-00-00 00:00:00',30.00,71,'I','root@localhost.com','0000-00-00 00:00:00'),(72,'0000-00-00 00:00:00',30.00,72,'I','root@localhost.com','0000-00-00 00:00:00'),(73,'0000-00-00 00:00:00',30.00,73,'I','root@localhost.com','0000-00-00 00:00:00'),(74,'0000-00-00 00:00:00',30.00,74,'I','root@localhost.com','0000-00-00 00:00:00'),(75,'0000-00-00 00:00:00',30.00,75,'I','root@localhost.com','0000-00-00 00:00:00'),(76,'0000-00-00 00:00:00',30.00,76,'I','root@localhost.com','0000-00-00 00:00:00'),(77,'0000-00-00 00:00:00',30.00,77,'I','root@localhost.com','0000-00-00 00:00:00'),(78,'0000-00-00 00:00:00',30.00,78,'I','root@localhost.com','0000-00-00 00:00:00'),(79,'0000-00-00 00:00:00',30.00,79,'I','root@localhost.com','0000-00-00 00:00:00'),(80,'0000-00-00 00:00:00',30.00,80,'I','root@localhost.com','0000-00-00 00:00:00'),(81,'0000-00-00 00:00:00',30.00,81,'I','root@localhost.com','0000-00-00 00:00:00'),(82,'0000-00-00 00:00:00',30.00,82,'I','root@localhost.com','0000-00-00 00:00:00'),(83,'0000-00-00 00:00:00',30.00,83,'I','root@localhost.com','0000-00-00 00:00:00'),(84,'0000-00-00 00:00:00',30.00,84,'I','root@localhost.com','0000-00-00 00:00:00'),(85,'0000-00-00 00:00:00',30.00,85,'I','root@localhost.com','0000-00-00 00:00:00'),(86,'0000-00-00 00:00:00',30.00,86,'I','root@localhost.com','0000-00-00 00:00:00'),(87,'0000-00-00 00:00:00',30.00,87,'I','root@localhost.com','0000-00-00 00:00:00'),(88,'0000-00-00 00:00:00',30.00,88,'I','root@localhost.com','0000-00-00 00:00:00'),(89,'0000-00-00 00:00:00',30.00,89,'I','root@localhost.com','0000-00-00 00:00:00'),(90,'0000-00-00 00:00:00',30.00,90,'I','root@localhost.com','0000-00-00 00:00:00'),(91,'0000-00-00 00:00:00',30.00,91,'I','root@localhost.com','0000-00-00 00:00:00'),(92,'0000-00-00 00:00:00',30.00,92,'I','root@localhost.com','0000-00-00 00:00:00'),(93,'0000-00-00 00:00:00',30.00,93,'I','root@localhost.com','0000-00-00 00:00:00'),(94,'0000-00-00 00:00:00',30.00,94,'I','root@localhost.com','0000-00-00 00:00:00'),(95,'0000-00-00 00:00:00',30.00,95,'I','root@localhost.com','0000-00-00 00:00:00'),(96,'0000-00-00 00:00:00',30.00,96,'I','root@localhost.com','0000-00-00 00:00:00'),(97,'0000-00-00 00:00:00',30.00,97,'I','root@localhost.com','0000-00-00 00:00:00'),(98,'0000-00-00 00:00:00',30.00,98,'I','root@localhost.com','0000-00-00 00:00:00'),(99,'0000-00-00 00:00:00',30.00,99,'I','root@localhost.com','0000-00-00 00:00:00'),(100,'0000-00-00 00:00:00',30.00,100,'I','root@localhost.com','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `medicoesluminosidade_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicoestemperatura_log`
--

DROP TABLE IF EXISTS `medicoestemperatura_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicoestemperatura_log` (
  `ID` int(11) NOT NULL,
  `DataHoraMedicao_NEW` timestamp NULL DEFAULT NULL,
  `ValorMedicaoTemperatura_NEW` decimal(8,2) DEFAULT NULL,
  `IDMedicao_NEW` int(11) DEFAULT NULL,
  `Operacao` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Utilizador` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DataHora` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicoestemperatura_log`
--

LOCK TABLES `medicoestemperatura_log` WRITE;
/*!40000 ALTER TABLE `medicoestemperatura_log` DISABLE KEYS */;
INSERT INTO `medicoestemperatura_log` VALUES (1,'0000-00-00 00:00:00',30.00,1,'I','root@localhost.com','0000-00-00 00:00:00'),(2,'0000-00-00 00:00:00',30.00,2,'I','root@localhost.com','0000-00-00 00:00:00'),(3,'0000-00-00 00:00:00',30.00,3,'I','root@localhost.com','0000-00-00 00:00:00'),(4,'0000-00-00 00:00:00',30.00,4,'I','root@localhost.com','0000-00-00 00:00:00'),(5,'0000-00-00 00:00:00',30.00,5,'I','root@localhost.com','0000-00-00 00:00:00'),(6,'0000-00-00 00:00:00',30.00,6,'I','root@localhost.com','0000-00-00 00:00:00'),(7,'0000-00-00 00:00:00',30.00,7,'I','root@localhost.com','0000-00-00 00:00:00'),(8,'0000-00-00 00:00:00',30.00,8,'I','root@localhost.com','0000-00-00 00:00:00'),(9,'0000-00-00 00:00:00',30.00,9,'I','root@localhost.com','0000-00-00 00:00:00'),(10,'0000-00-00 00:00:00',30.00,10,'I','root@localhost.com','0000-00-00 00:00:00'),(11,'0000-00-00 00:00:00',30.00,11,'I','root@localhost.com','0000-00-00 00:00:00'),(12,'0000-00-00 00:00:00',30.00,12,'I','root@localhost.com','0000-00-00 00:00:00'),(13,'0000-00-00 00:00:00',30.00,13,'I','root@localhost.com','0000-00-00 00:00:00'),(14,'0000-00-00 00:00:00',30.00,14,'I','root@localhost.com','0000-00-00 00:00:00'),(15,'0000-00-00 00:00:00',30.00,15,'I','root@localhost.com','0000-00-00 00:00:00'),(16,'0000-00-00 00:00:00',30.00,16,'I','root@localhost.com','0000-00-00 00:00:00'),(17,'0000-00-00 00:00:00',30.00,17,'I','root@localhost.com','0000-00-00 00:00:00'),(18,'0000-00-00 00:00:00',30.00,18,'I','root@localhost.com','0000-00-00 00:00:00'),(19,'0000-00-00 00:00:00',30.00,19,'I','root@localhost.com','0000-00-00 00:00:00'),(20,'0000-00-00 00:00:00',30.00,20,'I','root@localhost.com','0000-00-00 00:00:00'),(21,'0000-00-00 00:00:00',30.00,21,'I','root@localhost.com','0000-00-00 00:00:00'),(22,'0000-00-00 00:00:00',30.00,22,'I','root@localhost.com','0000-00-00 00:00:00'),(23,'0000-00-00 00:00:00',30.00,23,'I','root@localhost.com','0000-00-00 00:00:00'),(24,'0000-00-00 00:00:00',30.00,24,'I','root@localhost.com','0000-00-00 00:00:00'),(25,'0000-00-00 00:00:00',30.00,25,'I','root@localhost.com','0000-00-00 00:00:00'),(26,'0000-00-00 00:00:00',30.00,26,'I','root@localhost.com','0000-00-00 00:00:00'),(27,'0000-00-00 00:00:00',30.00,27,'I','root@localhost.com','0000-00-00 00:00:00'),(28,'0000-00-00 00:00:00',30.00,28,'I','root@localhost.com','0000-00-00 00:00:00'),(29,'0000-00-00 00:00:00',30.00,29,'I','root@localhost.com','0000-00-00 00:00:00'),(30,'0000-00-00 00:00:00',30.00,30,'I','root@localhost.com','0000-00-00 00:00:00'),(31,'0000-00-00 00:00:00',30.00,31,'I','root@localhost.com','0000-00-00 00:00:00'),(32,'0000-00-00 00:00:00',30.00,32,'I','root@localhost.com','0000-00-00 00:00:00'),(33,'0000-00-00 00:00:00',30.00,33,'I','root@localhost.com','0000-00-00 00:00:00'),(34,'0000-00-00 00:00:00',30.00,34,'I','root@localhost.com','0000-00-00 00:00:00'),(35,'0000-00-00 00:00:00',30.00,35,'I','root@localhost.com','0000-00-00 00:00:00'),(36,'0000-00-00 00:00:00',30.00,36,'I','root@localhost.com','0000-00-00 00:00:00'),(37,'0000-00-00 00:00:00',30.00,37,'I','root@localhost.com','0000-00-00 00:00:00'),(38,'0000-00-00 00:00:00',30.00,38,'I','root@localhost.com','0000-00-00 00:00:00'),(39,'0000-00-00 00:00:00',30.00,39,'I','root@localhost.com','0000-00-00 00:00:00'),(40,'0000-00-00 00:00:00',30.00,40,'I','root@localhost.com','0000-00-00 00:00:00'),(41,'0000-00-00 00:00:00',30.00,41,'I','root@localhost.com','0000-00-00 00:00:00'),(42,'0000-00-00 00:00:00',30.00,42,'I','root@localhost.com','0000-00-00 00:00:00'),(43,'0000-00-00 00:00:00',30.00,43,'I','root@localhost.com','0000-00-00 00:00:00'),(44,'0000-00-00 00:00:00',30.00,44,'I','root@localhost.com','0000-00-00 00:00:00'),(45,'0000-00-00 00:00:00',30.00,45,'I','root@localhost.com','0000-00-00 00:00:00'),(46,'0000-00-00 00:00:00',30.00,46,'I','root@localhost.com','0000-00-00 00:00:00'),(47,'0000-00-00 00:00:00',30.00,47,'I','root@localhost.com','0000-00-00 00:00:00'),(48,'0000-00-00 00:00:00',30.00,48,'I','root@localhost.com','0000-00-00 00:00:00'),(49,'0000-00-00 00:00:00',30.00,49,'I','root@localhost.com','0000-00-00 00:00:00'),(50,'0000-00-00 00:00:00',30.00,50,'I','root@localhost.com','0000-00-00 00:00:00'),(51,'0000-00-00 00:00:00',30.00,51,'I','root@localhost.com','0000-00-00 00:00:00'),(52,'0000-00-00 00:00:00',30.00,52,'I','root@localhost.com','0000-00-00 00:00:00'),(53,'0000-00-00 00:00:00',30.00,53,'I','root@localhost.com','0000-00-00 00:00:00'),(54,'0000-00-00 00:00:00',30.00,54,'I','root@localhost.com','0000-00-00 00:00:00'),(55,'0000-00-00 00:00:00',30.00,55,'I','root@localhost.com','0000-00-00 00:00:00'),(56,'0000-00-00 00:00:00',30.00,56,'I','root@localhost.com','0000-00-00 00:00:00'),(57,'0000-00-00 00:00:00',30.00,57,'I','root@localhost.com','0000-00-00 00:00:00'),(58,'0000-00-00 00:00:00',30.00,58,'I','root@localhost.com','0000-00-00 00:00:00'),(59,'0000-00-00 00:00:00',30.00,59,'I','root@localhost.com','0000-00-00 00:00:00'),(60,'0000-00-00 00:00:00',30.00,60,'I','root@localhost.com','0000-00-00 00:00:00'),(61,'0000-00-00 00:00:00',30.00,61,'I','root@localhost.com','0000-00-00 00:00:00'),(62,'0000-00-00 00:00:00',30.00,62,'I','root@localhost.com','0000-00-00 00:00:00'),(63,'0000-00-00 00:00:00',30.00,63,'I','root@localhost.com','0000-00-00 00:00:00'),(64,'0000-00-00 00:00:00',30.00,64,'I','root@localhost.com','0000-00-00 00:00:00'),(65,'0000-00-00 00:00:00',30.00,65,'I','root@localhost.com','0000-00-00 00:00:00'),(66,'0000-00-00 00:00:00',30.00,66,'I','root@localhost.com','0000-00-00 00:00:00'),(67,'0000-00-00 00:00:00',30.00,67,'I','root@localhost.com','0000-00-00 00:00:00'),(68,'0000-00-00 00:00:00',30.00,68,'I','root@localhost.com','0000-00-00 00:00:00'),(69,'0000-00-00 00:00:00',30.00,69,'I','root@localhost.com','0000-00-00 00:00:00'),(70,'0000-00-00 00:00:00',30.00,70,'I','root@localhost.com','0000-00-00 00:00:00'),(71,'0000-00-00 00:00:00',30.00,71,'I','root@localhost.com','0000-00-00 00:00:00'),(72,'0000-00-00 00:00:00',30.00,72,'I','root@localhost.com','0000-00-00 00:00:00'),(73,'0000-00-00 00:00:00',30.00,73,'I','root@localhost.com','0000-00-00 00:00:00'),(74,'0000-00-00 00:00:00',30.00,74,'I','root@localhost.com','0000-00-00 00:00:00'),(75,'0000-00-00 00:00:00',30.00,75,'I','root@localhost.com','0000-00-00 00:00:00'),(76,'0000-00-00 00:00:00',30.00,76,'I','root@localhost.com','0000-00-00 00:00:00'),(77,'0000-00-00 00:00:00',30.00,77,'I','root@localhost.com','0000-00-00 00:00:00'),(78,'0000-00-00 00:00:00',30.00,78,'I','root@localhost.com','0000-00-00 00:00:00'),(79,'0000-00-00 00:00:00',30.00,79,'I','root@localhost.com','0000-00-00 00:00:00'),(80,'0000-00-00 00:00:00',30.00,80,'I','root@localhost.com','0000-00-00 00:00:00'),(81,'0000-00-00 00:00:00',30.00,81,'I','root@localhost.com','0000-00-00 00:00:00'),(82,'0000-00-00 00:00:00',30.00,82,'I','root@localhost.com','0000-00-00 00:00:00'),(83,'0000-00-00 00:00:00',30.00,83,'I','root@localhost.com','0000-00-00 00:00:00'),(84,'0000-00-00 00:00:00',30.00,84,'I','root@localhost.com','0000-00-00 00:00:00'),(85,'0000-00-00 00:00:00',30.00,85,'I','root@localhost.com','0000-00-00 00:00:00'),(86,'0000-00-00 00:00:00',30.00,86,'I','root@localhost.com','0000-00-00 00:00:00'),(87,'0000-00-00 00:00:00',30.00,87,'I','root@localhost.com','0000-00-00 00:00:00'),(88,'0000-00-00 00:00:00',30.00,88,'I','root@localhost.com','0000-00-00 00:00:00'),(89,'0000-00-00 00:00:00',30.00,89,'I','root@localhost.com','0000-00-00 00:00:00'),(90,'0000-00-00 00:00:00',30.00,90,'I','root@localhost.com','0000-00-00 00:00:00'),(91,'0000-00-00 00:00:00',30.00,91,'I','root@localhost.com','0000-00-00 00:00:00'),(92,'0000-00-00 00:00:00',30.00,92,'I','root@localhost.com','0000-00-00 00:00:00'),(93,'0000-00-00 00:00:00',30.00,93,'I','root@localhost.com','0000-00-00 00:00:00'),(94,'0000-00-00 00:00:00',30.00,94,'I','root@localhost.com','0000-00-00 00:00:00'),(95,'0000-00-00 00:00:00',30.00,95,'I','root@localhost.com','0000-00-00 00:00:00'),(96,'0000-00-00 00:00:00',30.00,96,'I','root@localhost.com','0000-00-00 00:00:00'),(97,'0000-00-00 00:00:00',30.00,97,'I','root@localhost.com','0000-00-00 00:00:00'),(98,'0000-00-00 00:00:00',30.00,98,'I','root@localhost.com','0000-00-00 00:00:00'),(99,'0000-00-00 00:00:00',30.00,99,'I','root@localhost.com','0000-00-00 00:00:00'),(100,'0000-00-00 00:00:00',30.00,100,'I','root@localhost.com','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `medicoestemperatura_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migracao_log`
--

DROP TABLE IF EXISTS `migracao_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migracao_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `tabela` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registos_migrados` int(11) DEFAULT NULL,
  `sucesso` tinyint(4) DEFAULT NULL,
  `DataHora` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migracao_log`
--

LOCK TABLES `migracao_log` WRITE;
/*!40000 ALTER TABLE `migracao_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `migracao_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sistema_log`
--

DROP TABLE IF EXISTS `sistema_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sistema_log` (
  `ID` int(11) NOT NULL,
  `LimiteInferiorTemperatura_OLD` decimal(8,2) DEFAULT NULL,
  `LimiteInferiorTemperatura_NEW` decimal(8,2) DEFAULT NULL,
  `LimiteSuperiorTemperatura_OLD` decimal(8,2) DEFAULT NULL,
  `LimiteSuperiorTemperatura_NEW` decimal(8,2) DEFAULT NULL,
  `LimiteInferiorLuz_OLD` decimal(8,2) DEFAULT NULL,
  `LimiteInferiorLuz_NEW` decimal(8,2) DEFAULT NULL,
  `LimiteSuperiorLuz_OLD` decimal(8,2) DEFAULT NULL,
  `LimiteSuperiorLuz_NEW` decimal(8,2) DEFAULT NULL,
  `Operacao` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Utilizador` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DataHora` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sistema_log`
--

LOCK TABLES `sistema_log` WRITE;
/*!40000 ALTER TABLE `sistema_log` DISABLE KEYS */;
INSERT INTO `sistema_log` VALUES (1,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(2,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(3,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(4,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(5,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(6,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(7,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(8,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(9,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(10,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(11,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(12,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(13,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(14,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(15,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(16,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(17,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(18,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(19,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(20,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(21,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(22,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(23,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(24,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(25,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(26,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(27,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(28,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(29,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(30,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(31,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(32,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(33,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(34,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(35,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(36,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(37,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(38,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(39,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(40,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(41,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(42,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(43,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(44,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(45,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(46,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(47,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(48,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(49,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(50,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(51,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(52,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(53,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(54,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(55,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(56,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(57,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(58,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(59,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(60,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(61,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(62,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(63,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(64,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(65,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(66,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(67,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(68,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(69,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(70,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(71,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(72,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(73,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(74,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(75,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(76,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(77,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(78,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(79,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(80,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(81,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(82,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(83,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(84,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(85,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(86,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(87,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(88,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(89,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(90,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(91,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(92,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(93,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(94,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(95,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(96,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(97,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(98,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(99,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00'),(100,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,'U','root@localhost','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `sistema_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variaveis_log`
--

DROP TABLE IF EXISTS `variaveis_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `variaveis_log` (
  `ID` int(11) NOT NULL,
  `IDVariavel_OLD` int(11) DEFAULT NULL,
  `IDVariavel_NEW` int(11) DEFAULT NULL,
  `NomeVariavel_OLD` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NomeVariavel_NEW` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Operacao` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Utilizador` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DataHora` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variaveis_log`
--

LOCK TABLES `variaveis_log` WRITE;
/*!40000 ALTER TABLE `variaveis_log` DISABLE KEYS */;
INSERT INTO `variaveis_log` VALUES (1,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(2,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(3,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(4,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(5,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(6,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(7,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(8,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(9,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(10,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(11,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(12,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(13,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(14,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(15,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(16,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(17,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(18,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(19,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(20,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(21,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(22,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(23,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(24,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(25,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(26,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(27,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(28,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(29,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(30,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(31,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(32,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(33,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(34,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(35,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(36,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(37,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(38,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(39,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(40,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(41,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(42,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(43,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(44,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(45,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(46,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(47,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(48,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(49,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(50,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(51,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(52,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(53,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(54,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(55,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(56,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(57,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(58,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(59,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(60,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(61,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(62,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(63,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(64,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(65,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(66,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(67,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(68,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(69,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(70,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(71,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(72,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(73,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(74,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(75,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(76,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(77,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(78,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(79,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(80,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(81,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(82,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(83,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(84,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(85,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(86,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(87,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(88,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(89,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(90,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(91,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(92,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(93,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(94,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(95,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(96,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(97,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(98,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(99,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00'),(100,1,2,'VarA',NULL,'U','root@localhost','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `variaveis_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variaveismedidas_log`
--

DROP TABLE IF EXISTS `variaveismedidas_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `variaveismedidas_log` (
  `ID` int(11) NOT NULL,
  `LimiteInferior_OLD` decimal(8,2) DEFAULT NULL,
  `LimiteInferior_NEW` decimal(8,2) DEFAULT NULL,
  `LimiteSuperior_OLD` decimal(8,2) DEFAULT NULL,
  `LimiteSuperior_NEW` decimal(8,2) DEFAULT NULL,
  `IDVariavel_Variaveis_OLD` int(11) DEFAULT NULL,
  `IDVariavel_Variaveis_NEW` int(11) DEFAULT NULL,
  `IDCultura_Cultura_OLD` int(11) DEFAULT NULL,
  `IDCultura_Cultura_NEW` int(11) DEFAULT NULL,
  `Operacao` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Utilizador` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DataHora` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variaveismedidas_log`
--

LOCK TABLES `variaveismedidas_log` WRITE;
/*!40000 ALTER TABLE `variaveismedidas_log` DISABLE KEYS */;
INSERT INTO `variaveismedidas_log` VALUES (1,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(2,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(3,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(4,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(5,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(6,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(7,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(8,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(9,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(10,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(11,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(12,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(13,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(14,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(15,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(16,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(17,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(18,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(19,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(20,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(21,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(22,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(23,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(24,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(25,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(26,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(27,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(28,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(29,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(30,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(31,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(32,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(33,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(34,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(35,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(36,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(37,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(38,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(39,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(40,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(41,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(42,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(43,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(44,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(45,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(46,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(47,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(48,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(49,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(50,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(51,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(52,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(53,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(54,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(55,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(56,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(57,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(58,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(59,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(60,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(61,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(62,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(63,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(64,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(65,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(66,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(67,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(68,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(69,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(70,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(71,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(72,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(73,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(74,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(75,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(76,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(77,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(78,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(79,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(80,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(81,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(82,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(83,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(84,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(85,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(86,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(87,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(88,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(89,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(90,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(91,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(92,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(93,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(94,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(95,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(96,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(97,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(98,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(99,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00'),(100,10.00,12.00,20.00,18.00,1,2,1,2,'U','root@localhost','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `variaveismedidas_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_mysql_destino'
--

--
-- Dumping routines for database 'db_mysql_destino'
--
/*!50003 DROP PROCEDURE IF EXISTS `delete_allfromtables_log` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_allfromtables_log`()
BEGIN
	delete FROM db_mysql_destino.cultura_log;
	delete FROM db_mysql_destino.investigador_log;
	delete FROM db_mysql_destino.medicoes_consultados_log;
	delete FROM db_mysql_destino.medicoes_log;
	delete FROM db_mysql_destino.medicoesluminosidade_log;
	delete FROM db_mysql_destino.medicoestemperatura_log;
	delete FROM db_mysql_destino.sistema_log;
	delete FROM db_mysql_destino.variaveis_log;
	delete FROM db_mysql_destino.variaveismedidas_log;
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

-- Dump completed on 2019-05-19  8:46:15
CREATE DATABASE  IF NOT EXISTS `db_mysql_origem` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_mysql_origem`;
-- MySQL dump 10.16  Distrib 10.1.37-MariaDB, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: db_mysql_origem
-- ------------------------------------------------------
-- Server version	10.1.37-MariaDB

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
-- Table structure for table `alertas`
--

DROP TABLE IF EXISTS `alertas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alertas` (
  `IDAlerta` int(11) NOT NULL AUTO_INCREMENT,
  `IDMedicao_Temp` int(11) DEFAULT NULL,
  `IDMedicao_Lum` int(11) DEFAULT NULL,
  `IDMedicao_Cultura` int(11) DEFAULT NULL,
  `ID_Cultura` int(11) DEFAULT NULL,
  `Email_Investigador` varchar(45) DEFAULT NULL,
  `NomeVariavel` varchar(45) DEFAULT NULL,
  `ValorMedicao` decimal(8,2) DEFAULT NULL,
  `LimiteInferior` int(11) DEFAULT NULL,
  `LimiteSuperior` int(11) DEFAULT NULL,
  `Descricao` text,
  `DataHora` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`IDAlerta`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alertas`
--

LOCK TABLES `alertas` WRITE;
/*!40000 ALTER TABLE `alertas` DISABLE KEYS */;
INSERT INTO `alertas` VALUES (1,1,NULL,NULL,NULL,'investigador@hotmail.com','Temperatura',35.00,10,40,'Limite Superior está próximo de ser ultrapassado','2019-04-09 13:59:32'),(2,1,NULL,NULL,NULL,'root@localhost','Temperatura',35.00,10,40,'Limite Superior está próximo de ser ultrapassado','2019-04-09 13:59:32'),(4,5,NULL,NULL,NULL,'antonio@hotmail.com','Temperatura',50.00,10,40,'Limite Superior foi ultrapassado','2019-04-09 13:59:32'),(5,11,NULL,NULL,NULL,'root@localhost','Temperatura',40.00,10,40,'Limite Superior está próximo de ser ultrapassado','2019-04-09 13:59:32'),(6,NULL,1,NULL,NULL,'investigador@hotmail.com','Luminosidade',1.00,1000,4000,'Limite Inferior foi ultrapassado','2019-04-09 13:59:32'),(7,NULL,1,NULL,NULL,'root@localhost','Luminosidade',1.00,1000,4000,'Limite Inferior foi ultrapassado','2019-04-09 13:59:32'),(9,NULL,6,NULL,NULL,'root@localhost','Luminosidade',35.00,1000,4000,'Limite Inferior foi ultrapassado','2019-04-09 13:59:32'),(10,NULL,13,NULL,NULL,'root@localhost','Luminosidade',35.00,1000,4000,'Limite Inferior foi ultrapassado','2019-04-09 13:59:32'),(11,NULL,NULL,36,4,'root@localhost','Variavel de Teste 2',324.23,30,40,'Limite Superior foi ultrapassado','2019-05-12 08:52:53'),(12,NULL,NULL,37,4,'root@localhost','Variavel de Teste 2',4.90,30,40,'Limite Inferior foi ultrapassado','2019-05-12 08:52:54'),(13,NULL,15,NULL,NULL,'antonio@hotmail.com','Luminosidade',500000.00,1000,4000,'Limite Superior foi ultrapassado','2019-04-09 13:59:32'),(14,NULL,15,NULL,NULL,'investigador@hotmail.com','Luminosidade',500000.00,1000,4000,'Limite Superior foi ultrapassado','2019-04-09 13:59:32'),(15,NULL,15,NULL,NULL,'root@localhost','Luminosidade',500000.00,1000,4000,'Limite Superior foi ultrapassado','2019-04-09 13:59:32'),(16,NULL,16,NULL,NULL,'root@localhost','Luminosidade',500000.00,1000,4000,'Limite Superior foi ultrapassado','2019-04-09 13:59:32'),(17,NULL,17,NULL,NULL,'investigador@hotmail.com','Luminosidade',35.00,1000,4000,'Limite Inferior foi ultrapassado','2019-04-09 13:59:32'),(18,NULL,17,NULL,NULL,'root@localhost','Luminosidade',35.00,1000,4000,'Limite Inferior foi ultrapassado','2019-04-09 13:59:32'),(19,NULL,NULL,40,4,'root@localhost','Variavel de Teste 2',30.00,30,40,'Limite Inferior foi ultrapassado','2019-05-19 07:24:38'),(20,NULL,NULL,41,4,'root@localhost','Variavel de Teste 2',32.00,30,40,'Limite Inferior foi ultrapassado','2019-05-19 07:24:42'),(21,NULL,NULL,44,6,'root@localhost','Variavel de Teste 3',0.00,0,50,'Limite Inferior foi ultrapassado','2019-05-19 07:26:37'),(22,NULL,NULL,45,6,'root@localhost','Variavel de Teste 3',1.00,0,50,'Limite Inferior foi ultrapassado','2019-05-19 07:26:43'),(23,NULL,NULL,46,6,'root@localhost','Variavel de Teste 3',4.00,0,50,'Limite Inferior foi ultrapassado','2019-05-19 07:26:47'),(24,NULL,NULL,47,6,'root@localhost','Variavel de Teste 3',6.00,0,50,'Limite Inferior foi ultrapassado','2019-05-19 07:26:50'),(25,NULL,NULL,48,6,'root@localhost','Variavel de Teste 3',20.00,0,50,'Limite Inferior foi ultrapassado','2019-05-19 07:26:53'),(26,NULL,NULL,49,6,'root@localhost','Variavel de Teste 3',10.00,10,50,'Limite Inferior foi ultrapassado','2019-05-19 07:29:05'),(27,NULL,NULL,50,6,'root@localhost','Variavel de Teste 3',20.00,10,50,'Limite Inferior foi ultrapassado','2019-05-19 07:29:09'),(28,NULL,NULL,51,6,'root@localhost','Variavel de Teste 3',30.00,10,50,'Limite Inferior foi ultrapassado','2019-05-19 07:29:12'),(29,NULL,NULL,52,6,'root@localhost','Variavel de Teste 3',40.00,10,50,'Limite Superior foi ultrapassado','2019-05-19 07:29:14'),(30,NULL,NULL,53,6,'root@localhost','Variavel de Teste 3',50.00,10,50,'Limite Superior foi ultrapassado','2019-05-19 07:29:21'),(31,NULL,NULL,54,6,'root@localhost','Variavel de Teste 3',20.00,10,50,'Limite Inferior foi ultrapassado','2019-05-19 07:29:25'),(32,NULL,NULL,55,6,'root@localhost','Variavel de Teste 3',30.00,10,50,'Limite Inferior foi ultrapassado','2019-05-19 07:39:14'),(33,NULL,NULL,56,6,'root@localhost','Variavel de Teste 3',30.00,10,50,'Limite Inferior foi ultrapassado','2019-05-19 07:40:24'),(34,NULL,NULL,57,6,'root@localhost','Variavel de Teste 3',30.00,10,50,'Limite Inferior foi ultrapassado','2019-05-19 07:41:55');
/*!40000 ALTER TABLE `alertas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `alertas_android`
--

DROP TABLE IF EXISTS `alertas_android`;
/*!50001 DROP VIEW IF EXISTS `alertas_android`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `alertas_android` (
  `IDAlerta` tinyint NOT NULL,
  `NomeVariavel` tinyint NOT NULL,
  `NomeCultura` tinyint NOT NULL,
  `EmailInvestigador` tinyint NOT NULL,
  `ValorMedicao` tinyint NOT NULL,
  `LimiteInferior` tinyint NOT NULL,
  `LimiteSuperior` tinyint NOT NULL,
  `Descricao` tinyint NOT NULL,
  `DataHora` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cultura`
--

DROP TABLE IF EXISTS `cultura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cultura` (
  `IDCultura` int(11) NOT NULL,
  `Email_Investigador` varchar(50) NOT NULL,
  `NomeCultura` varchar(100) NOT NULL,
  `DescricaoCultura` text,
  PRIMARY KEY (`IDCultura`,`Email_Investigador`),
  UNIQUE KEY `IDCultura_UNIQUE` (`IDCultura`),
  KEY `Email_Investigador_idx` (`Email_Investigador`),
  CONSTRAINT `Email_Investigador` FOREIGN KEY (`Email_Investigador`) REFERENCES `investigador` (`Email`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cultura`
--

LOCK TABLES `cultura` WRITE;
/*!40000 ALTER TABLE `cultura` DISABLE KEYS */;
INSERT INTO `cultura` VALUES (1,'root@localhost','Cultura de teste do RooT','TESTE ROOT'),(2,'root@localhost','Cultura de teste do RooT 2','TESTE ROOT 2'),(4,'root@localhost','Cultura de teste do RooT 2','TESTE ROOT 2'),(5,'investigador@hotmail.com','Cultura de teste do investigador1','TESTE tt'),(6,'email2@teste.tt','Cultura de teste do tt','TESTE tt');
/*!40000 ALTER TABLE `cultura` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `cultura_AFTER_INSERT` AFTER INSERT ON `cultura` FOR EACH ROW BEGIN
	insert into cultura_log (
							idcultura_old, 
                            idcultura_new, 
							nomecultura_old, 
                            nomecultura_new, 
                            descricaocultura_old, 
                            descricaocultura_new, 
                            email_investigador_old, 
                            email_investigador_new, 
                            operacao, 
                            utilizador, 
                            datahora
                            )
    values (
		null, 
        new.idcultura,
        null, 
        new.nomecultura,
        null,
        new.descricaocultura,
        null,
        new.email_investigador,
        'I',
        current_user(),
        now()
        );     
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `db_mysql_origem`.`cultura_AFTER_UPDATE` AFTER UPDATE ON `cultura` FOR EACH ROW
BEGIN
	insert into 
    cultura_log (
				IDCultura_OLD,
                IDCultura_NEW, 
                NomeCultura_OLD, 
                NomeCultura_NEW, 
                DescricaoCultura_OLD, 
                DescricaoCultura_NEW, 
                Email_Investigador_OLD, 
                Email_Investigador_NEW, 
                Operacao, 
                Utilizador, 
                DataHora
                )
	values (
			old.idcultura,
			case 
				when new.idcultura <> old.idcultura then new.idcultura
				else null
			end,
            old.nomecultura,
            case 
				when new.nomecultura <> old.nomecultura then new.nomecultura
				else null
			end,
            old.DescricaoCultura,
            case 
				when new.DescricaoCultura <> old.DescricaoCultura then new.DescricaoCultura
				else null
			end,
            old.Email_Investigador,
            case 
				when new.Email_Investigador <> old.Email_Investigador then new.Email_Investigador
				else null
			end,
            'U',
            current_user(),
            now()
            );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `db_mysql_origem`.`cultura_AFTER_DELETE` AFTER DELETE ON `cultura` FOR EACH ROW
BEGIN
		insert into cultura_log ( 
								IDCultura_OLD,
								IDCultura_NEW, 
								NomeCultura_OLD, 
								NomeCultura_NEW, 
								DescricaoCultura_OLD, 
								DescricaoCultura_NEW, 
								Email_Investigador_OLD, 
								Email_Investigador_NEW, 
								Operacao, 
								Utilizador, 
								DataHora
								)
		values (
				old.idcultura,
                null,
                old.nomecultura,
                null,
                old.descricaocultura,
                null,
                old.email_investigador,
                null,
                'D',
                current_user(),
                now()
				);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cultura_log`
--

DROP TABLE IF EXISTS `cultura_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cultura_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDCultura_OLD` int(11) DEFAULT NULL,
  `IDCultura_NEW` int(11) DEFAULT NULL,
  `NomeCultura_OLD` varchar(100) DEFAULT NULL,
  `NomeCultura_NEW` varchar(100) DEFAULT NULL,
  `DescricaoCultura_OLD` varchar(500) DEFAULT NULL,
  `DescricaoCultura_NEW` varchar(500) DEFAULT NULL,
  `Email_Investigador_OLD` varchar(50) DEFAULT NULL,
  `Email_Investigador_NEW` varchar(50) DEFAULT NULL,
  `Flag_Migracao` tinyint(4) NOT NULL DEFAULT '0',
  `Operacao` varchar(20) NOT NULL,
  `Utilizador` varchar(45) NOT NULL,
  `DataHora` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cultura_log`
--

LOCK TABLES `cultura_log` WRITE;
/*!40000 ALTER TABLE `cultura_log` DISABLE KEYS */;
INSERT INTO `cultura_log` VALUES (1,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(2,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(3,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(4,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(5,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(6,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(7,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(8,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(9,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(10,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(11,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(12,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(13,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(14,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(15,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(16,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(17,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(18,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(19,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(20,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(21,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(22,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(23,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(24,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(25,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(26,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(27,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(28,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(29,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(30,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(31,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(32,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(33,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(34,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(35,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(36,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(37,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(38,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(39,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(40,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(41,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(42,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(43,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(44,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(45,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(46,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(47,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(48,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(49,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(50,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(51,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(52,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(53,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(54,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(55,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(56,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(57,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(58,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(59,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(60,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(61,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(62,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(63,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(64,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(65,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(66,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(67,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(68,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(69,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(70,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(71,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(72,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(73,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(74,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(75,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(76,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(77,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(78,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(79,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(80,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(81,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(82,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(83,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(84,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(85,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(86,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(87,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(88,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(89,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(90,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(91,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(92,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(93,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(94,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(95,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(96,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(97,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(98,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(99,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00'),(100,1,2,'CulturaA','CulturaB','DescricaoA','DescricaoB','email@teste.com','root@localhost',1,'U','root@localhost','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `cultura_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investigador`
--

DROP TABLE IF EXISTS `investigador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `investigador` (
  `Email` varchar(50) NOT NULL,
  `NomeInvestigador` varchar(100) NOT NULL,
  `CategoriaProfissional` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`Email`),
  UNIQUE KEY `Email_UNIQUE` (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investigador`
--

LOCK TABLES `investigador` WRITE;
/*!40000 ALTER TABLE `investigador` DISABLE KEYS */;
INSERT INTO `investigador` VALUES ('antonio@hotmail.com','antonio','descrição'),('email2@teste.tt','test','test'),('email3@teste.tt','test','test'),('email@hotmail.com','outronome','outracategoria'),('investigador1@hotmail.com','Investigador 1','Professor'),('investigador@hotmail.com','Investigador 1','Professor'),('joao@gmail.com','joao lopes','investigador master'),('manel@gmail.com','manel','Investigador Muita bom'),('root@localhost','ROOT','ROOT');
/*!40000 ALTER TABLE `investigador` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `investigador_AFTER_INSERT` AFTER INSERT ON `investigador` FOR EACH ROW BEGIN
	Insert into 
	investigador_log (
					email_new, 
                    email_old, 
                    nomeinvestigador_new, 
                    nomeinvestigador_old, 
                    categoriaprofissional_new, 
                    categoriaprofissional_old, 
                    operacao, 
                    utilizador, 
                    datahora
                    )
  values (
		new.email, 
        null, 
		new.nomeinvestigador, 
        null, 
		new.categoriaprofissional, 
        null,
		'I', 
        current_user(), 
        now()
        );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `db_mysql_origem`.`investigador_AFTER_UPDATE` AFTER UPDATE ON `investigador` FOR EACH ROW
BEGIN
	Insert into 
	investigador_log (email_new, email_old, nomeinvestigador_new, nomeinvestigador_old, categoriaprofissional_new, categoriaprofissional_old, operacao, utilizador, datahora)
  values (
	case 
		when new.email <> old.email then new.email
		else null
	end,
    old.email,
    case 
		when new.nomeinvestigador <> old.nomeinvestigador then new.nomeinvestigador
        else null
	end, 
    old.nomeinvestigador,
    case 
		when new.categoriaprofissional <> old.categoriaprofissional then new.categoriaprofissional
        else null
	end,
    old.categoriaprofissional,
    'U', 
    current_user(), 
    now()); 
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `db_mysql_origem`.`investigador_AFTER_DELETE` AFTER DELETE ON `investigador` FOR EACH ROW
BEGIN
	Insert into 
	investigador_log (
					email_new, 
                    email_old, 
                    nomeinvestigador_new, 
                    nomeinvestigador_old, 
                    categoriaprofissional_new, 
                    categoriaprofissional_old, 
                    operacao, 
                    utilizador, 
                    datahora
                    )
	values (
			null,
            old.email,
            null,
            old.nomeinvestigador,
            null,
            old.categoriaprofissional,
            'D',
            current_user(),
            now()
            );	
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `investigador_log`
--

DROP TABLE IF EXISTS `investigador_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `investigador_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Email_OLD` varchar(50) DEFAULT NULL,
  `Email_NEW` varchar(50) DEFAULT NULL,
  `NomeInvestigador_OLD` varchar(100) DEFAULT NULL,
  `NomeInvestigador_NEW` varchar(100) DEFAULT NULL,
  `CategoriaProfissional_OLD` varchar(300) DEFAULT NULL,
  `CategoriaProfissional_NEW` varchar(300) DEFAULT NULL,
  `Flag_Migracao` tinyint(4) NOT NULL DEFAULT '0',
  `Operacao` varchar(20) NOT NULL,
  `Utilizador` varchar(45) NOT NULL,
  `DataHora` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=100003 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investigador_log`
--

LOCK TABLES `investigador_log` WRITE;
/*!40000 ALTER TABLE `investigador_log` DISABLE KEYS */;
INSERT INTO `investigador_log` VALUES (1,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(2,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(3,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(4,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(5,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(6,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(7,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(8,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(9,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(10,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(11,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(12,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(13,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(14,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(15,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(16,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(17,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(18,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(19,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(20,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(21,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'I','root@localhost','0000-00-00 00:00:00'),(22,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(23,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(24,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(25,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(26,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(27,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(28,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(29,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(30,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(31,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(32,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(33,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(34,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(35,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(36,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(37,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(38,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(39,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(40,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(41,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(42,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(43,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(44,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(45,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(46,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(47,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(48,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(49,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(50,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(51,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(52,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(53,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(54,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(55,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(56,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(57,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(58,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(59,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(60,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(61,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(62,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(63,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(64,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(65,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(66,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(67,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(68,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(69,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(70,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(71,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(72,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(73,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(74,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(75,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(76,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(77,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(78,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(79,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(80,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(81,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(82,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(83,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(84,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(85,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(86,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(87,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(88,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(89,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(90,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(91,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(92,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(93,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(94,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(95,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(96,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(97,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(98,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(99,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(100,'email1@teste.com','email2@teste.com','Bob','David','Auxiliar','Investigador',1,'U','root@localhost','0000-00-00 00:00:00'),(100001,NULL,'manel@gmail.com',NULL,'manel',NULL,'Investigador Muita bom',1,'I','root@localhost','2019-03-30 16:28:47'),(100002,NULL,'antonio@hotmail.com',NULL,'antonio',NULL,'descrição',1,'I','root@localhost','2019-04-10 11:53:14');
/*!40000 ALTER TABLE `investigador_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `limites_percent_config`
--

DROP TABLE IF EXISTS `limites_percent_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `limites_percent_config` (
  `ID` int(11) NOT NULL,
  `Email_Investigador` varchar(45) DEFAULT NULL,
  `tempo_alerta` int(11) DEFAULT NULL,
  `valor_min_tmp` decimal(5,3) DEFAULT NULL,
  `valor_max_tmp` decimal(5,3) DEFAULT NULL,
  `valor_min_lum` decimal(5,3) DEFAULT NULL,
  `valor_max_lum` decimal(5,3) DEFAULT NULL,
  `valor_min` decimal(5,3) DEFAULT NULL,
  `valor_max` decimal(5,3) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `limites_percent_config`
--

LOCK TABLES `limites_percent_config` WRITE;
/*!40000 ALTER TABLE `limites_percent_config` DISABLE KEYS */;
INSERT INTO `limites_percent_config` VALUES (1,'antonio@hotmail.com',60,0.500,0.500,0.250,0.250,0.750,0.750),(2,'root@localhost',5,1.000,0.750,1.250,1.250,0.750,0.750),(3,'investigador@hotmail.com',30,0.450,0.750,1.250,1.250,0.750,0.750);
/*!40000 ALTER TABLE `limites_percent_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicoes`
--

DROP TABLE IF EXISTS `medicoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicoes` (
  `NumeroMedicao` int(11) NOT NULL,
  `IDVariaveis_VariaveisMedidas` int(11) NOT NULL,
  `IDCultura_VariaveisMedidas` int(11) NOT NULL,
  `ValorMedicao` decimal(8,2) NOT NULL,
  `DataHoraMedicao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`NumeroMedicao`,`IDVariaveis_VariaveisMedidas`,`IDCultura_VariaveisMedidas`),
  UNIQUE KEY `NumeroMedicao_UNIQUE` (`NumeroMedicao`),
  KEY `IDVariáveis_VariáveisMedidas_idx` (`IDVariaveis_VariaveisMedidas`),
  KEY `IDCultura_VariáveisMedidas_idx` (`IDCultura_VariaveisMedidas`),
  CONSTRAINT `IDCultura_VariáveisMedidas` FOREIGN KEY (`IDCultura_VariaveisMedidas`) REFERENCES `variaveismedidas` (`IDCultura_Cultura`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `IDVariáveis_VariáveisMedidas` FOREIGN KEY (`IDVariaveis_VariaveisMedidas`) REFERENCES `variaveismedidas` (`IDVariavel_Variaveis`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicoes`
--

LOCK TABLES `medicoes` WRITE;
/*!40000 ALTER TABLE `medicoes` DISABLE KEYS */;
INSERT INTO `medicoes` VALUES (1,1,1,345.00,'2019-03-04 20:23:32'),(2,1,1,0.00,'2019-03-04 20:23:32'),(3,1,1,0.00,'2019-03-04 20:23:32'),(4,1,1,33.00,'2019-03-04 20:23:32'),(5,1,1,10000.00,'2019-03-04 20:23:32'),(7,1,2,60.00,'2019-03-05 11:10:31'),(8,1,2,650.00,'2019-03-05 11:54:41'),(9,1,2,320.00,'2019-03-05 11:54:52'),(10,1,2,34.00,'2019-04-08 17:57:21'),(11,2,4,5.00,'2019-05-12 08:19:30'),(12,2,4,5.00,'2019-05-12 08:19:55'),(13,2,4,5.00,'2019-05-12 08:20:31'),(14,2,4,4.90,'2019-05-12 08:21:52'),(15,2,4,4.90,'2019-05-12 08:26:22'),(16,2,4,4.90,'2019-05-12 08:27:11'),(17,2,4,324.23,'2019-05-12 08:30:09'),(18,2,4,35.50,'2019-05-12 08:34:36'),(19,2,4,35.00,'2019-05-12 08:35:08'),(20,2,4,35.00,'2019-05-12 08:35:59'),(21,2,4,35.50,'2019-05-12 08:36:10'),(22,2,4,39.00,'2019-05-12 08:36:16'),(23,2,4,38.00,'2019-05-12 08:36:19'),(24,2,4,37.00,'2019-05-12 08:36:23'),(25,2,4,37.50,'2019-05-12 08:36:28'),(26,2,4,37.40,'2019-05-12 08:36:31'),(27,2,4,35.00,'2019-05-12 08:36:40'),(28,2,4,35.00,'2019-05-12 08:37:38'),(29,2,4,35.00,'2019-05-12 08:38:30'),(30,2,4,4.90,'2019-05-12 08:38:36'),(31,2,4,324.23,'2019-05-12 08:38:37'),(32,2,4,35.00,'2019-05-12 08:38:38'),(33,2,4,324.23,'2019-05-12 08:38:46'),(34,2,4,4.90,'2019-05-12 08:38:48'),(35,2,4,35.00,'2019-05-12 08:38:50'),(36,2,4,324.23,'2019-05-12 08:52:53'),(37,2,4,4.90,'2019-05-12 08:52:54'),(38,2,4,35.00,'2019-05-12 08:52:55'),(39,2,4,35.00,'2019-05-19 07:24:29'),(40,2,4,30.00,'2019-05-19 07:24:38'),(41,2,4,32.00,'2019-05-19 07:24:42'),(42,2,4,33.00,'2019-05-19 07:24:44'),(43,2,4,34.00,'2019-05-19 07:24:52'),(44,3,6,0.00,'2019-05-19 07:26:37'),(45,3,6,1.00,'2019-05-19 07:26:43'),(46,3,6,4.00,'2019-05-19 07:26:47'),(47,3,6,6.00,'2019-05-19 07:26:50'),(48,3,6,20.00,'2019-05-19 07:26:53'),(49,3,6,10.00,'2019-05-19 07:29:05'),(50,3,6,20.00,'2019-05-19 07:29:09'),(51,3,6,30.00,'2019-05-19 07:29:12'),(52,3,6,40.00,'2019-05-19 07:29:14'),(53,3,6,50.00,'2019-05-19 07:29:21'),(54,3,6,20.00,'2019-05-19 07:29:25'),(55,3,6,30.00,'2019-05-19 07:39:14'),(56,3,6,30.00,'2019-05-19 07:40:24'),(57,3,6,30.00,'2019-05-19 07:41:55'),(58,3,6,30.00,'2019-05-19 07:44:39'),(59,3,6,30.00,'2019-05-19 07:45:09');
/*!40000 ALTER TABLE `medicoes` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `medicoes_AFTER_INSERT` AFTER INSERT ON `medicoes` FOR EACH ROW BEGIN
	insert into medicoes_log(
								NumeroMedicao_OLD, 
                                NumeroMedicao_NEW, 
                                DataHoraMedicao_OLD, 
                                DataHoraMedicao_NEW, 
                                ValorMedicao_OLD, 
                                ValorMedicao_NEW, 
                                IDVariaveis_VariaveisMedidas_OLD, 
                                IDVariaveis_VariaveisMedidas_NEW, 
                                IDCultura_VariaveisMedidas_OLD, 
                                IDCultura_VariaveisMedidas_NEW, 
                                Operacao, 
                                Utilizador, 
                                DataHora
                                )
	values (
			null,
            new.NumeroMedicao,
            null,
            new.DataHoraMedicao,
            null,
            new.ValorMedicao,
            null,
            new.IDVariaveis_VariaveisMedidas,
            null,
            new.IDCultura_VariaveisMedidas,
            'I',
            current_user(),
            now()
            );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `medicoes_AFTER_UPDATE` AFTER UPDATE ON `medicoes` FOR EACH ROW BEGIN
	insert into medicoes_log(
								NumeroMedicao_OLD, 
                                NumeroMedicao_NEW, 
                                DataHoraMedicao_OLD, 
                                DataHoraMedicao_NEW, 
                                ValorMedicao_OLD, 
                                ValorMedicao_NEW, 
                                IDVariaveis_VariaveisMedidas_OLD, 
                                IDVariaveis_VariaveisMedidas_NEW, 
                                IDCultura_VariaveisMedidas_OLD, 
                                IDCultura_VariaveisMedidas_NEW, 
                                Operacao, 
                                Utilizador, 
                                DataHora
                                )
	values (
			old.NumeroMedicao,
            case
				when old.NumeroMedicao <> new.NumeroMedicao then new.NumeroMedicao
                else null
			end,
            old.DataHoraMedicao,
            case 
				when old.DataHoraMedicao <> new.DataHoraMedicao then new.DataHoraMedicao
                else null
			end,
            old.ValorMedicao,
            case
				when old.ValorMedicao <> new.ValorMedicao then new.ValorMedicao
                else null
			end,
            old.IDVariaveis_VariaveisMedidas,
            case
				when old.IDVariaveis_VariaveisMedidas <> new.IDVariaveis_VariaveisMedidas then new.IDVariaveis_VariaveisMedidas
                else null
			end,
            old.IDCultura_VariaveisMedidas,
            case
				when old.IDCultura_VariaveisMedidas <> new.IDCultura_VariaveisMedidas then new.IDCultura_VariaveisMedidas
                else null
			end,
            'U',
            current_user(),
            now()
            );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `medicoes_AFTER_DELETE` AFTER DELETE ON `medicoes` FOR EACH ROW BEGIN
	insert into medicoes_log(
								NumeroMedicao_OLD, 
                                NumeroMedicao_NEW, 
                                DataHoraMedicao_OLD, 
                                DataHoraMedicao_NEW, 
                                ValorMedicao_OLD, 
                                ValorMedicao_NEW, 
                                IDVariaveis_VariaveisMedidas_OLD, 
                                IDVariaveis_VariaveisMedidas_NEW, 
                                IDCultura_VariaveisMedidas_OLD, 
                                IDCultura_VariaveisMedidas_NEW, 
                                Operacao, 
                                Utilizador, 
                                DataHora
                                )
	values (
			old.NumeroMedicao,
            null,
            old.DataHoraMedicao,
            null,
            old.ValorMedicao,
            null,
            old.IDVariaveis_VariaveisMedidas,
            null,
            old.IDCultura_VariaveisMedidas,
            null,
            'D',
            current_user(),
            now()
            );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `medicoes_consultados_log`
--

DROP TABLE IF EXISTS `medicoes_consultados_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicoes_consultados_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDMedicoes_LOG` varchar(45) DEFAULT NULL,
  `NumeroMedicao` int(11) DEFAULT NULL,
  `IDVariaveis_VariaveisMedidas` int(11) DEFAULT NULL,
  `IDCultura_VariaveisMedidas` int(11) DEFAULT NULL,
  `ValorMedicao` decimal(8,2) DEFAULT NULL,
  `DataHoraMedicao` timestamp NULL DEFAULT NULL,
  `Flag_Migracao` tinyint(4) NOT NULL DEFAULT '0',
  `Operacao_LOG` varchar(20) NOT NULL,
  `Utilizador_LOG` varchar(45) NOT NULL,
  `DataHora_LOG` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=101915 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicoes_consultados_log`
--

LOCK TABLES `medicoes_consultados_log` WRITE;
/*!40000 ALTER TABLE `medicoes_consultados_log` DISABLE KEYS */;
INSERT INTO `medicoes_consultados_log` VALUES (1,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(2,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(3,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(4,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(5,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(6,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(7,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(8,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(9,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(10,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(11,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(12,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(13,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(14,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(15,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(16,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(17,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(18,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(19,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(20,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(21,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(22,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(23,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(24,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(25,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(26,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(27,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(28,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(29,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(30,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(31,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(32,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(33,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(34,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(35,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(36,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(37,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(38,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(39,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(40,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(41,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(42,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(43,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(44,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(45,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(46,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(47,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(48,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(49,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(50,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(51,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(52,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(53,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(54,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(55,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(56,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(57,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(58,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(59,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(60,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(61,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(62,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(63,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(64,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(65,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(66,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(67,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(68,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(69,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(70,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(71,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(72,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(73,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(74,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(75,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(76,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(77,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(78,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(79,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(80,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(81,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(82,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(83,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(84,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(85,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(86,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(87,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(88,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(89,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(90,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(91,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(92,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(93,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(94,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(95,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(96,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(97,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(98,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(99,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(100,'1',1,1,1,15.00,'0000-00-00 00:00:00',1,'S','root@localhost','0000-00-00 00:00:00'),(100001,'100001',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100002,'100001',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100003,'100001',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100004,'100001',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100005,'100001',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100006,'100001',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100007,'100001',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100008,'100001',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100016,'100002',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100017,'100002',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100018,'100002',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100019,'100002',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100020,'100002',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100021,'100002',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100022,'100002',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100023,'100002',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100031,'100003',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100032,'100003',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100033,'100003',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100034,'100003',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100035,'100003',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100036,'100003',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100037,'100003',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100038,'100003',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100046,'100004',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100047,'100004',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100048,'100004',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100049,'100004',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100050,'100004',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100051,'100004',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100052,'100004',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100053,'100004',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100061,'100005',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100062,'100005',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100063,'100005',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100064,'100005',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100065,'100005',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100066,'100005',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100067,'100005',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100068,'100005',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100076,'100006',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100077,'100006',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100078,'100006',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100079,'100006',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100080,'100006',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100081,'100006',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100082,'100006',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100083,'100006',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100091,'100007',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100092,'100007',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100093,'100007',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100094,'100007',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100095,'100007',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100096,'100007',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100097,'100007',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100098,'100007',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100106,'100008',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100107,'100008',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100108,'100008',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100109,'100008',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100110,'100008',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100111,'100008',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100112,'100008',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100113,'100008',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100121,'100009',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100122,'100009',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100123,'100009',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100124,'100009',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100125,'100009',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100126,'100009',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100127,'100009',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100128,'100009',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100136,'100010',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100137,'100010',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100138,'100010',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100139,'100010',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100140,'100010',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100141,'100010',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100142,'100010',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100143,'100010',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100151,'100011',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100152,'100011',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100153,'100011',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100154,'100011',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100155,'100011',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100156,'100011',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100157,'100011',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100158,'100011',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100166,'100012',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100167,'100012',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100168,'100012',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100169,'100012',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100170,'100012',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100171,'100012',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100172,'100012',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100173,'100012',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100181,'100013',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100182,'100013',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100183,'100013',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100184,'100013',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100185,'100013',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100186,'100013',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100187,'100013',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100188,'100013',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100196,'100014',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100197,'100014',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100198,'100014',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100199,'100014',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100200,'100014',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100201,'100014',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100202,'100014',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100203,'100014',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100211,'100015',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100212,'100015',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100213,'100015',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100214,'100015',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100215,'100015',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100216,'100015',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100217,'100015',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100218,'100015',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100226,'100016',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100227,'100016',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100228,'100016',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100229,'100016',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100230,'100016',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100231,'100016',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100232,'100016',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100233,'100016',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100241,'100017',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100242,'100017',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100243,'100017',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100244,'100017',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100245,'100017',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100246,'100017',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100247,'100017',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100248,'100017',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100256,'100018',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100257,'100018',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100258,'100018',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100259,'100018',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100260,'100018',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100261,'100018',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100262,'100018',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100263,'100018',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100271,'100019',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100272,'100019',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100273,'100019',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100274,'100019',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100275,'100019',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100276,'100019',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100277,'100019',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100278,'100019',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100286,'100020',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100287,'100020',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100288,'100020',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100289,'100020',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100290,'100020',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100291,'100020',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100292,'100020',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100293,'100020',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100301,'100021',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100302,'100021',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100303,'100021',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100304,'100021',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100305,'100021',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100306,'100021',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100307,'100021',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100308,'100021',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100316,'100022',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100317,'100022',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100318,'100022',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100319,'100022',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100320,'100022',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100321,'100022',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100322,'100022',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100323,'100022',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100331,'100023',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100332,'100023',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100333,'100023',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100334,'100023',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100335,'100023',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100336,'100023',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100337,'100023',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100338,'100023',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100346,'100024',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100347,'100024',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100348,'100024',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100349,'100024',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100350,'100024',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100351,'100024',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100352,'100024',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100353,'100024',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100361,'100025',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100362,'100025',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100363,'100025',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100364,'100025',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100365,'100025',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100366,'100025',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100367,'100025',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100368,'100025',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100376,'100026',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100377,'100026',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100378,'100026',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100379,'100026',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100380,'100026',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100381,'100026',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100382,'100026',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100383,'100026',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100391,'100027',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100392,'100027',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100393,'100027',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100394,'100027',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100395,'100027',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100396,'100027',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100397,'100027',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100398,'100027',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100406,'100028',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100407,'100028',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100408,'100028',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100409,'100028',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100410,'100028',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100411,'100028',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100412,'100028',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100413,'100028',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100421,'100029',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100422,'100029',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100423,'100029',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100424,'100029',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100425,'100029',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100426,'100029',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100427,'100029',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100428,'100029',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100436,'100030',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100437,'100030',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100438,'100030',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100439,'100030',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100440,'100030',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100441,'100030',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100442,'100030',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100443,'100030',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100451,'100031',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100452,'100031',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100453,'100031',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100454,'100031',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100455,'100031',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100456,'100031',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100457,'100031',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100458,'100031',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100466,'100032',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100467,'100032',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100468,'100032',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100469,'100032',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100470,'100032',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100471,'100032',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100472,'100032',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100473,'100032',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100481,'100033',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100482,'100033',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100483,'100033',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100484,'100033',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100485,'100033',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100486,'100033',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100487,'100033',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100488,'100033',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100496,'100034',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100497,'100034',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100498,'100034',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100499,'100034',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100500,'100034',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100501,'100034',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100502,'100034',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100503,'100034',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100511,'100035',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100512,'100035',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100513,'100035',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100514,'100035',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100515,'100035',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100516,'100035',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100517,'100035',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100518,'100035',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100526,'100036',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100527,'100036',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100528,'100036',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100529,'100036',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100530,'100036',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100531,'100036',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100532,'100036',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100533,'100036',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100541,'100037',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100542,'100037',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100543,'100037',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100544,'100037',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100545,'100037',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100546,'100037',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100547,'100037',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100548,'100037',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100556,'100038',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100557,'100038',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100558,'100038',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100559,'100038',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100560,'100038',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100561,'100038',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100562,'100038',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100563,'100038',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100571,'100039',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100572,'100039',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100573,'100039',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100574,'100039',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100575,'100039',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100576,'100039',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100577,'100039',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100578,'100039',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100586,'100040',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100587,'100040',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100588,'100040',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100589,'100040',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100590,'100040',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100591,'100040',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100592,'100040',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100593,'100040',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100601,'100041',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100602,'100041',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100603,'100041',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100604,'100041',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100605,'100041',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100606,'100041',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100607,'100041',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100608,'100041',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100616,'100042',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100617,'100042',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100618,'100042',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100619,'100042',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100620,'100042',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100621,'100042',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100622,'100042',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100623,'100042',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100631,'100043',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100632,'100043',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100633,'100043',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100634,'100043',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100635,'100043',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100636,'100043',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100637,'100043',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100638,'100043',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100646,'100044',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100647,'100044',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100648,'100044',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100649,'100044',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100650,'100044',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100651,'100044',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100652,'100044',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100653,'100044',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100661,'100045',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100662,'100045',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100663,'100045',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100664,'100045',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100665,'100045',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100666,'100045',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100667,'100045',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100668,'100045',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100676,'100046',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100677,'100046',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100678,'100046',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100679,'100046',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100680,'100046',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100681,'100046',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100682,'100046',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100683,'100046',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100691,'100047',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100692,'100047',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100693,'100047',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100694,'100047',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100695,'100047',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100696,'100047',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100697,'100047',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100698,'100047',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100706,'100048',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100707,'100048',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100708,'100048',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100709,'100048',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100710,'100048',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100711,'100048',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100712,'100048',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100713,'100048',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100721,'100049',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100722,'100049',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100723,'100049',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100724,'100049',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100725,'100049',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100726,'100049',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100727,'100049',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100728,'100049',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100736,'100050',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100737,'100050',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100738,'100050',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100739,'100050',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100740,'100050',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100741,'100050',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100742,'100050',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100743,'100050',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100751,'100051',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100752,'100051',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100753,'100051',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100754,'100051',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100755,'100051',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100756,'100051',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100757,'100051',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100758,'100051',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100766,'100052',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100767,'100052',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100768,'100052',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100769,'100052',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100770,'100052',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100771,'100052',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100772,'100052',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100773,'100052',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100781,'100053',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100782,'100053',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100783,'100053',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100784,'100053',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100785,'100053',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100786,'100053',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100787,'100053',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100788,'100053',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100796,'100054',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100797,'100054',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100798,'100054',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100799,'100054',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100800,'100054',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100801,'100054',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100802,'100054',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100803,'100054',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100811,'100055',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100812,'100055',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100813,'100055',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100814,'100055',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100815,'100055',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100816,'100055',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100817,'100055',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100818,'100055',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100826,'100056',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100827,'100056',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100828,'100056',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100829,'100056',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100830,'100056',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100831,'100056',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100832,'100056',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100833,'100056',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100841,'100057',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100842,'100057',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100843,'100057',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100844,'100057',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100845,'100057',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100846,'100057',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100847,'100057',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100848,'100057',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100856,'100058',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100857,'100058',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100858,'100058',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100859,'100058',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100860,'100058',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100861,'100058',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100862,'100058',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100863,'100058',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100871,'100059',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100872,'100059',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100873,'100059',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100874,'100059',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100875,'100059',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100876,'100059',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100877,'100059',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100878,'100059',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100886,'100060',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100887,'100060',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100888,'100060',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100889,'100060',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100890,'100060',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100891,'100060',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100892,'100060',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100893,'100060',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100901,'100061',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100902,'100061',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100903,'100061',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100904,'100061',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100905,'100061',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100906,'100061',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100907,'100061',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100908,'100061',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100916,'100062',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100917,'100062',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100918,'100062',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100919,'100062',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100920,'100062',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100921,'100062',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100922,'100062',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100923,'100062',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100931,'100063',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100932,'100063',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100933,'100063',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100934,'100063',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100935,'100063',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100936,'100063',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100937,'100063',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100938,'100063',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100946,'100064',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100947,'100064',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100948,'100064',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100949,'100064',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100950,'100064',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100951,'100064',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100952,'100064',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100953,'100064',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100961,'100065',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100962,'100065',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100963,'100065',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100964,'100065',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100965,'100065',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100966,'100065',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100967,'100065',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100968,'100065',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100976,'100066',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100977,'100066',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100978,'100066',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100979,'100066',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100980,'100066',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100981,'100066',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100982,'100066',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100983,'100066',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(100991,'100067',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100992,'100067',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100993,'100067',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100994,'100067',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100995,'100067',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(100996,'100067',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(100997,'100067',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(100998,'100067',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(101006,'100068',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101007,'100068',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101008,'100068',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101009,'100068',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101010,'100068',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101011,'100068',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(101012,'100068',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(101013,'100068',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(101021,'100069',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101022,'100069',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101023,'100069',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101024,'100069',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101025,'100069',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101026,'100069',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(101027,'100069',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(101028,'100069',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(101036,'100070',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101037,'100070',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101038,'100070',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101039,'100070',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101040,'100070',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101041,'100070',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(101042,'100070',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(101043,'100070',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(101051,'100071',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101052,'100071',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101053,'100071',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101054,'100071',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101055,'100071',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101056,'100071',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(101057,'100071',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(101058,'100071',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(101066,'100072',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101067,'100072',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101068,'100072',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101069,'100072',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101070,'100072',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101071,'100072',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(101072,'100072',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(101073,'100072',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(101081,'100073',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101082,'100073',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101083,'100073',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101084,'100073',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101085,'100073',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101086,'100073',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(101087,'100073',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(101088,'100073',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(101096,'100074',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101097,'100074',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101098,'100074',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101099,'100074',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101100,'100074',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101101,'100074',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(101102,'100074',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(101103,'100074',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(101111,'100075',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101112,'100075',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101113,'100075',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101114,'100075',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101115,'100075',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101116,'100075',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(101117,'100075',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(101118,'100075',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(101126,'100076',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101127,'100076',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101128,'100076',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101129,'100076',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101130,'100076',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101131,'100076',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(101132,'100076',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(101133,'100076',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(101141,'100077',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101142,'100077',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101143,'100077',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101144,'100077',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101145,'100077',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101146,'100077',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(101147,'100077',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(101148,'100077',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(101156,'100078',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101157,'100078',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101158,'100078',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101159,'100078',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101160,'100078',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101161,'100078',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(101162,'100078',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(101163,'100078',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(101171,'100079',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101172,'100079',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101173,'100079',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101174,'100079',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101175,'100079',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101176,'100079',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(101177,'100079',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(101178,'100079',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(101186,'100080',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101187,'100080',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101188,'100080',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101189,'100080',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101190,'100080',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101191,'100080',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(101192,'100080',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(101193,'100080',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(101201,'100081',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101202,'100081',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101203,'100081',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101204,'100081',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101205,'100081',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101206,'100081',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(101207,'100081',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(101208,'100081',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(101216,'100082',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101217,'100082',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101218,'100082',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101219,'100082',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101220,'100082',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101221,'100082',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(101222,'100082',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(101223,'100082',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(101231,'100083',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101232,'100083',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101233,'100083',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101234,'100083',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101235,'100083',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101236,'100083',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(101237,'100083',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(101238,'100083',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(101246,'100084',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101247,'100084',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101248,'100084',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101249,'100084',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101250,'100084',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101251,'100084',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(101252,'100084',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(101253,'100084',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(101261,'100085',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101262,'100085',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101263,'100085',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101264,'100085',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101265,'100085',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101266,'100085',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(101267,'100085',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(101268,'100085',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(101276,'100086',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101277,'100086',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101278,'100086',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101279,'100086',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101280,'100086',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101281,'100086',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(101282,'100086',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(101283,'100086',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(101291,'100087',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101292,'100087',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101293,'100087',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101294,'100087',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101295,'100087',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101296,'100087',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(101297,'100087',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(101298,'100087',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(101306,'100088',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101307,'100088',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101308,'100088',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101309,'100088',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101310,'100088',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101311,'100088',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(101312,'100088',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(101313,'100088',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(101321,'100089',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101322,'100089',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101323,'100089',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101324,'100089',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101325,'100089',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101326,'100089',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(101327,'100089',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(101328,'100089',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(101336,'100090',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101337,'100090',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101338,'100090',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101339,'100090',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101340,'100090',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101341,'100090',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(101342,'100090',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(101343,'100090',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(101351,'100091',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101352,'100091',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101353,'100091',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101354,'100091',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101355,'100091',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101356,'100091',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(101357,'100091',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(101358,'100091',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(101366,'100092',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101367,'100092',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101368,'100092',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101369,'100092',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101370,'100092',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101371,'100092',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(101372,'100092',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(101373,'100092',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(101381,'100093',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101382,'100093',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101383,'100093',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101384,'100093',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101385,'100093',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101386,'100093',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(101387,'100093',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(101388,'100093',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(101396,'100094',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101397,'100094',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101398,'100094',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101399,'100094',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101400,'100094',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101401,'100094',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(101402,'100094',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(101403,'100094',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(101411,'100095',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101412,'100095',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101413,'100095',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101414,'100095',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101415,'100095',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101416,'100095',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(101417,'100095',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(101418,'100095',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(101426,'100096',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101427,'100096',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101428,'100096',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101429,'100096',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101430,'100096',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101431,'100096',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(101432,'100096',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(101433,'100096',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(101441,'100097',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101442,'100097',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101443,'100097',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101444,'100097',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101445,'100097',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101446,'100097',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(101447,'100097',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(101448,'100097',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(101456,'100098',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101457,'100098',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101458,'100098',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101459,'100098',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101460,'100098',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:29'),(101461,'100098',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:29'),(101462,'100098',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:29'),(101463,'100098',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:29'),(101471,'100099',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101472,'100099',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101473,'100099',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101474,'100099',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101475,'100099',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101476,'100099',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:30'),(101477,'100099',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:30'),(101478,'100099',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:30'),(101486,'100100',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101487,'100100',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101488,'100100',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101489,'100100',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101490,'100100',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101491,'100100',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:30'),(101492,'100100',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:30'),(101493,'100100',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:30'),(101501,'100101',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101502,'100101',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101503,'100101',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101504,'100101',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101505,'100101',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101506,'100101',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:30'),(101507,'100101',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:30'),(101508,'100101',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:30'),(101516,'100102',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101517,'100102',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101518,'100102',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101519,'100102',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101520,'100102',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101521,'100102',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:30'),(101522,'100102',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:30'),(101523,'100102',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:30'),(101531,'100103',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101532,'100103',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101533,'100103',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101534,'100103',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101535,'100103',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101536,'100103',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:30'),(101537,'100103',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:30'),(101538,'100103',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:30'),(101546,'100104',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101547,'100104',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101548,'100104',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101549,'100104',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101550,'100104',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101551,'100104',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:30'),(101552,'100104',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:30'),(101553,'100104',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:30'),(101561,'100105',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101562,'100105',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101563,'100105',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101564,'100105',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101565,'100105',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101566,'100105',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:30'),(101567,'100105',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:30'),(101568,'100105',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:30'),(101576,'100106',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101577,'100106',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101578,'100106',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101579,'100106',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101580,'100106',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101581,'100106',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:30'),(101582,'100106',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:30'),(101583,'100106',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:30'),(101591,'100107',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101592,'100107',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101593,'100107',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101594,'100107',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101595,'100107',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101596,'100107',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:30'),(101597,'100107',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:30'),(101598,'100107',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:30'),(101606,'100108',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101607,'100108',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101608,'100108',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101609,'100108',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101610,'100108',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101611,'100108',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:30'),(101612,'100108',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:30'),(101613,'100108',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:30'),(101621,'100109',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101622,'100109',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101623,'100109',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101624,'100109',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101625,'100109',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101626,'100109',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:30'),(101627,'100109',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:30'),(101628,'100109',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:30'),(101636,'100110',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101637,'100110',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101638,'100110',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101639,'100110',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101640,'100110',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101641,'100110',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:30'),(101642,'100110',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:30'),(101643,'100110',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:30'),(101651,'100111',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101652,'100111',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101653,'100111',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101654,'100111',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101655,'100111',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101656,'100111',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:30'),(101657,'100111',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:30'),(101658,'100111',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:30'),(101666,'100112',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101667,'100112',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101668,'100112',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101669,'100112',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101670,'100112',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101671,'100112',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:30'),(101672,'100112',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:30'),(101673,'100112',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:30'),(101681,'100113',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101682,'100113',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101683,'100113',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101684,'100113',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101685,'100113',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101686,'100113',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:30'),(101687,'100113',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:30'),(101688,'100113',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:30'),(101696,'100114',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101697,'100114',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101698,'100114',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101699,'100114',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101700,'100114',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101701,'100114',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:30'),(101702,'100114',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:30'),(101703,'100114',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:30'),(101711,'100115',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101712,'100115',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101713,'100115',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101714,'100115',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101715,'100115',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101716,'100115',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:30'),(101717,'100115',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:30'),(101718,'100115',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:30'),(101726,'100116',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101727,'100116',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101728,'100116',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101729,'100116',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101730,'100116',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101731,'100116',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:30'),(101732,'100116',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:30'),(101733,'100116',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:30'),(101741,'100117',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101742,'100117',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101743,'100117',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101744,'100117',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101745,'100117',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101746,'100117',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:30'),(101747,'100117',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:30'),(101748,'100117',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:30'),(101756,'100118',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101757,'100118',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101758,'100118',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101759,'100118',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101760,'100118',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101761,'100118',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:30'),(101762,'100118',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:30'),(101763,'100118',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:30'),(101771,'100119',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101772,'100119',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101773,'100119',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101774,'100119',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101775,'100119',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101776,'100119',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:30'),(101777,'100119',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:30'),(101778,'100119',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:30'),(101786,'100120',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101787,'100120',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101788,'100120',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101789,'100120',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101790,'100120',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101791,'100120',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:30'),(101792,'100120',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:30'),(101793,'100120',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:30'),(101801,'100121',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101802,'100121',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101803,'100121',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101804,'100121',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101805,'100121',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101806,'100121',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:30'),(101807,'100121',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:30'),(101808,'100121',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:30'),(101816,'100122',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101817,'100122',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101818,'100122',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101819,'100122',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101820,'100122',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101821,'100122',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:30'),(101822,'100122',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:30'),(101823,'100122',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:30'),(101831,'100123',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101832,'100123',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101833,'100123',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101834,'100123',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101835,'100123',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101836,'100123',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:30'),(101837,'100123',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:30'),(101838,'100123',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:30'),(101846,'100124',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101847,'100124',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101848,'100124',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101849,'100124',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101850,'100124',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101851,'100124',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:30'),(101852,'100124',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:30'),(101853,'100124',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:30'),(101861,'100125',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101862,'100125',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101863,'100125',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101864,'100125',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101865,'100125',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-07 15:52:30'),(101866,'100125',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-07 15:52:30'),(101867,'100125',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-07 15:52:30'),(101868,'100125',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-07 15:52:30'),(101869,'100127',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-08 17:59:18'),(101870,'100127',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-08 17:59:18'),(101871,'100127',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-08 17:59:18'),(101872,'100127',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-08 17:59:18'),(101873,'100127',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-08 17:59:18'),(101874,'100127',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-08 17:59:18'),(101875,'100127',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-08 17:59:18'),(101876,'100127',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-08 17:59:18'),(101877,'100127',10,1,2,34.00,'2019-04-08 17:57:21',1,'S','root@localhost','2019-04-08 17:59:18'),(101884,'100128',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-08 18:00:40'),(101885,'100128',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-08 18:00:40'),(101886,'100128',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-08 18:00:40'),(101887,'100128',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-08 18:00:40'),(101888,'100128',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-08 18:00:40'),(101889,'100128',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-08 18:00:40'),(101890,'100128',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-08 18:00:40'),(101891,'100128',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-08 18:00:40'),(101892,'100128',10,1,2,34.00,'2019-04-08 17:57:21',1,'S','root@localhost','2019-04-08 18:00:40'),(101899,'100129',1,1,1,345.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-08 18:00:42'),(101900,'100129',2,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-08 18:00:42'),(101901,'100129',3,1,1,0.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-08 18:00:42'),(101902,'100129',4,1,1,33.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-08 18:00:42'),(101903,'100129',5,1,1,10000.00,'2019-03-04 20:23:32',1,'S','root@localhost','2019-04-08 18:00:42'),(101904,'100129',7,1,2,60.00,'2019-03-05 11:10:31',1,'S','root@localhost','2019-04-08 18:00:42'),(101905,'100129',8,1,2,650.00,'2019-03-05 11:54:41',1,'S','root@localhost','2019-04-08 18:00:42'),(101906,'100129',9,1,2,320.00,'2019-03-05 11:54:52',1,'S','root@localhost','2019-04-08 18:00:42'),(101907,'100129',10,1,2,34.00,'2019-04-08 17:57:21',1,'S','root@localhost','2019-04-08 18:00:42'),(101914,'100130',10,1,2,34.00,'2019-04-08 17:57:21',1,'S','root@localhost','2019-04-08 18:09:03');
/*!40000 ALTER TABLE `medicoes_consultados_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicoes_log`
--

DROP TABLE IF EXISTS `medicoes_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicoes_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NumeroMedicao_OLD` int(11) DEFAULT NULL,
  `NumeroMedicao_NEW` int(11) DEFAULT NULL,
  `DataHoraMedicao_OLD` timestamp NULL DEFAULT NULL,
  `DataHoraMedicao_NEW` timestamp NULL DEFAULT NULL,
  `ValorMedicao_OLD` decimal(8,2) DEFAULT NULL,
  `ValorMedicao_NEW` decimal(8,2) DEFAULT NULL,
  `IDVariaveis_VariaveisMedidas_OLD` int(11) DEFAULT NULL,
  `IDVariaveis_VariaveisMedidas_NEW` int(11) DEFAULT NULL,
  `IDCultura_VariaveisMedidas_OLD` int(11) DEFAULT NULL,
  `IDCultura_VariaveisMedidas_NEW` int(11) DEFAULT NULL,
  `Flag_Migracao` tinyint(4) NOT NULL DEFAULT '0',
  `Operacao` varchar(20) NOT NULL,
  `Utilizador` varchar(45) NOT NULL,
  `DataHora` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=100180 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicoes_log`
--

LOCK TABLES `medicoes_log` WRITE;
/*!40000 ALTER TABLE `medicoes_log` DISABLE KEYS */;
INSERT INTO `medicoes_log` VALUES (1,0,9,'0000-00-00 00:00:00','0000-00-00 00:00:00',69643.00,81151.00,4,0,4,8,1,'S','root@localhost','0000-00-00 00:00:00'),(2,4,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',63811.00,11395.00,9,1,8,6,1,'S','root@localhost','0000-00-00 00:00:00'),(3,4,9,'0000-00-00 00:00:00','0000-00-00 00:00:00',33600.00,70372.00,4,7,8,0,1,'S','root@localhost','0000-00-00 00:00:00'),(4,1,6,'0000-00-00 00:00:00','0000-00-00 00:00:00',51360.00,79558.00,7,3,9,1,1,'S','root@localhost','0000-00-00 00:00:00'),(5,9,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',39818.00,9805.00,7,3,0,0,1,'S','root@localhost','0000-00-00 00:00:00'),(6,9,5,'0000-00-00 00:00:00','0000-00-00 00:00:00',3554.00,48444.00,7,9,3,0,1,'S','root@localhost','0000-00-00 00:00:00'),(7,7,6,'0000-00-00 00:00:00','0000-00-00 00:00:00',14782.00,95439.00,6,3,0,3,1,'S','root@localhost','0000-00-00 00:00:00'),(8,2,8,'0000-00-00 00:00:00','0000-00-00 00:00:00',86855.00,11872.00,7,8,0,1,1,'S','root@localhost','0000-00-00 00:00:00'),(9,7,5,'0000-00-00 00:00:00','0000-00-00 00:00:00',43105.00,30870.00,5,6,0,3,1,'S','root@localhost','0000-00-00 00:00:00'),(10,5,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',49869.00,74710.00,8,4,4,6,1,'S','root@localhost','0000-00-00 00:00:00'),(11,8,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',68719.00,84956.00,3,0,5,4,1,'S','root@localhost','0000-00-00 00:00:00'),(12,2,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',53293.00,73921.00,9,8,5,5,1,'S','root@localhost','0000-00-00 00:00:00'),(13,3,6,'0000-00-00 00:00:00','0000-00-00 00:00:00',10302.00,64646.00,2,9,0,0,1,'S','root@localhost','0000-00-00 00:00:00'),(14,1,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',96505.00,89758.00,7,6,2,1,1,'S','root@localhost','0000-00-00 00:00:00'),(15,0,9,'0000-00-00 00:00:00','0000-00-00 00:00:00',21499.00,64316.00,8,0,4,7,1,'S','root@localhost','0000-00-00 00:00:00'),(16,8,9,'0000-00-00 00:00:00','0000-00-00 00:00:00',62025.00,49244.00,1,8,6,5,1,'S','root@localhost','0000-00-00 00:00:00'),(17,2,7,'0000-00-00 00:00:00','0000-00-00 00:00:00',20705.00,30987.00,2,1,2,7,1,'S','root@localhost','0000-00-00 00:00:00'),(18,7,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',95094.00,92502.00,8,9,4,4,1,'S','root@localhost','0000-00-00 00:00:00'),(19,2,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',432.00,9772.00,5,9,2,2,1,'S','root@localhost','0000-00-00 00:00:00'),(20,6,5,'0000-00-00 00:00:00','0000-00-00 00:00:00',63406.00,94062.00,4,1,1,7,1,'S','root@localhost','0000-00-00 00:00:00'),(21,0,7,'0000-00-00 00:00:00','0000-00-00 00:00:00',46992.00,3967.00,0,5,0,9,1,'S','root@localhost','0000-00-00 00:00:00'),(22,7,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',58921.00,6857.00,8,5,7,8,1,'S','root@localhost','0000-00-00 00:00:00'),(23,7,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',87045.00,23971.00,0,6,3,6,1,'S','root@localhost','0000-00-00 00:00:00'),(24,6,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',88532.00,24337.00,1,8,0,3,1,'S','root@localhost','0000-00-00 00:00:00'),(25,7,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',22927.00,12746.00,7,7,8,0,1,'S','root@localhost','0000-00-00 00:00:00'),(26,8,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',72652.00,28857.00,9,0,0,7,1,'S','root@localhost','0000-00-00 00:00:00'),(27,9,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',24296.00,64754.00,6,5,9,2,1,'S','root@localhost','0000-00-00 00:00:00'),(28,5,9,'0000-00-00 00:00:00','0000-00-00 00:00:00',94008.00,70692.00,8,4,9,6,1,'S','root@localhost','0000-00-00 00:00:00'),(29,8,9,'0000-00-00 00:00:00','0000-00-00 00:00:00',99959.00,38087.00,2,2,9,3,1,'S','root@localhost','0000-00-00 00:00:00'),(30,7,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',65460.00,99217.00,1,1,0,1,1,'S','root@localhost','0000-00-00 00:00:00'),(31,3,9,'0000-00-00 00:00:00','0000-00-00 00:00:00',35464.00,49625.00,6,6,1,6,1,'S','root@localhost','0000-00-00 00:00:00'),(32,0,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',25527.00,23799.00,5,0,4,9,1,'S','root@localhost','0000-00-00 00:00:00'),(33,3,7,'0000-00-00 00:00:00','0000-00-00 00:00:00',85769.00,5000.00,9,4,4,7,1,'S','root@localhost','0000-00-00 00:00:00'),(34,9,8,'0000-00-00 00:00:00','0000-00-00 00:00:00',10967.00,45890.00,7,5,1,2,1,'S','root@localhost','0000-00-00 00:00:00'),(35,5,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',46170.00,1593.00,6,0,8,1,1,'S','root@localhost','0000-00-00 00:00:00'),(36,8,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',29092.00,2942.00,1,9,5,1,1,'S','root@localhost','0000-00-00 00:00:00'),(37,7,7,'0000-00-00 00:00:00','0000-00-00 00:00:00',54232.00,38953.00,4,9,0,8,1,'S','root@localhost','0000-00-00 00:00:00'),(38,7,8,'0000-00-00 00:00:00','0000-00-00 00:00:00',16373.00,94131.00,4,7,5,1,1,'S','root@localhost','0000-00-00 00:00:00'),(39,0,8,'0000-00-00 00:00:00','0000-00-00 00:00:00',1296.00,89461.00,5,7,2,4,1,'S','root@localhost','0000-00-00 00:00:00'),(40,6,4,'0000-00-00 00:00:00','0000-00-00 00:00:00',7926.00,81472.00,6,3,4,3,1,'S','root@localhost','0000-00-00 00:00:00'),(41,6,4,'0000-00-00 00:00:00','0000-00-00 00:00:00',23467.00,44373.00,7,2,7,4,1,'S','root@localhost','0000-00-00 00:00:00'),(42,0,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',82415.00,26426.00,2,6,3,8,1,'S','root@localhost','0000-00-00 00:00:00'),(43,3,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',74899.00,33813.00,5,0,3,8,1,'S','root@localhost','0000-00-00 00:00:00'),(44,1,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',96635.00,30949.00,9,3,3,4,1,'S','root@localhost','0000-00-00 00:00:00'),(45,8,8,'0000-00-00 00:00:00','0000-00-00 00:00:00',20408.00,14867.00,3,4,2,5,1,'S','root@localhost','0000-00-00 00:00:00'),(46,4,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',70024.00,48121.00,3,2,6,8,1,'S','root@localhost','0000-00-00 00:00:00'),(47,6,9,'0000-00-00 00:00:00','0000-00-00 00:00:00',23704.00,79949.00,5,7,8,9,1,'S','root@localhost','0000-00-00 00:00:00'),(48,6,4,'0000-00-00 00:00:00','0000-00-00 00:00:00',93577.00,50900.00,4,6,6,5,1,'S','root@localhost','0000-00-00 00:00:00'),(49,7,6,'0000-00-00 00:00:00','0000-00-00 00:00:00',47416.00,14724.00,4,2,4,7,1,'S','root@localhost','0000-00-00 00:00:00'),(50,5,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',23803.00,6025.00,1,6,0,5,1,'S','root@localhost','0000-00-00 00:00:00'),(51,1,4,'0000-00-00 00:00:00','0000-00-00 00:00:00',3046.00,63035.00,6,6,2,6,1,'S','root@localhost','0000-00-00 00:00:00'),(52,2,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',54753.00,887.00,9,6,8,5,1,'S','root@localhost','0000-00-00 00:00:00'),(53,6,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',19165.00,12986.00,1,8,3,4,1,'S','root@localhost','0000-00-00 00:00:00'),(54,7,9,'0000-00-00 00:00:00','0000-00-00 00:00:00',85977.00,54588.00,1,0,3,0,1,'S','root@localhost','0000-00-00 00:00:00'),(55,6,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',37166.00,52496.00,0,9,8,2,1,'S','root@localhost','0000-00-00 00:00:00'),(56,7,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',65092.00,19210.00,9,0,5,1,1,'S','root@localhost','0000-00-00 00:00:00'),(57,9,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',45625.00,77356.00,7,7,3,9,1,'S','root@localhost','0000-00-00 00:00:00'),(58,2,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',32767.00,91426.00,9,5,7,1,1,'S','root@localhost','0000-00-00 00:00:00'),(59,2,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',89201.00,60672.00,7,8,1,0,1,'S','root@localhost','0000-00-00 00:00:00'),(60,0,9,'0000-00-00 00:00:00','0000-00-00 00:00:00',46051.00,52015.00,3,6,0,6,1,'S','root@localhost','0000-00-00 00:00:00'),(61,3,9,'0000-00-00 00:00:00','0000-00-00 00:00:00',80721.00,4468.00,5,9,8,8,1,'S','root@localhost','0000-00-00 00:00:00'),(62,3,5,'0000-00-00 00:00:00','0000-00-00 00:00:00',50033.00,32771.00,7,1,5,1,1,'S','root@localhost','0000-00-00 00:00:00'),(63,1,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',52207.00,69540.00,2,4,6,9,1,'S','root@localhost','0000-00-00 00:00:00'),(64,5,5,'0000-00-00 00:00:00','0000-00-00 00:00:00',30943.00,90060.00,0,4,4,5,1,'S','root@localhost','0000-00-00 00:00:00'),(65,0,4,'0000-00-00 00:00:00','0000-00-00 00:00:00',45886.00,39331.00,0,5,4,4,1,'S','root@localhost','0000-00-00 00:00:00'),(66,9,7,'0000-00-00 00:00:00','0000-00-00 00:00:00',82747.00,23589.00,4,1,1,6,1,'S','root@localhost','0000-00-00 00:00:00'),(67,4,5,'0000-00-00 00:00:00','0000-00-00 00:00:00',11088.00,84179.00,2,5,4,1,1,'S','root@localhost','0000-00-00 00:00:00'),(68,6,8,'0000-00-00 00:00:00','0000-00-00 00:00:00',94501.00,86363.00,5,0,8,4,1,'S','root@localhost','0000-00-00 00:00:00'),(69,4,9,'0000-00-00 00:00:00','0000-00-00 00:00:00',5534.00,36238.00,1,0,0,6,1,'S','root@localhost','0000-00-00 00:00:00'),(70,4,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',50611.00,29078.00,3,9,2,8,1,'S','root@localhost','0000-00-00 00:00:00'),(71,6,4,'0000-00-00 00:00:00','0000-00-00 00:00:00',33172.00,62283.00,1,4,8,0,1,'S','root@localhost','0000-00-00 00:00:00'),(72,4,7,'0000-00-00 00:00:00','0000-00-00 00:00:00',22717.00,9075.00,0,6,5,0,1,'S','root@localhost','0000-00-00 00:00:00'),(73,3,7,'0000-00-00 00:00:00','0000-00-00 00:00:00',17744.00,50783.00,3,7,9,8,1,'S','root@localhost','0000-00-00 00:00:00'),(74,2,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',45971.00,31589.00,8,7,4,5,1,'S','root@localhost','0000-00-00 00:00:00'),(75,3,4,'0000-00-00 00:00:00','0000-00-00 00:00:00',53073.00,79932.00,2,6,9,6,1,'S','root@localhost','0000-00-00 00:00:00'),(76,3,9,'0000-00-00 00:00:00','0000-00-00 00:00:00',90473.00,20418.00,9,6,8,2,1,'S','root@localhost','0000-00-00 00:00:00'),(77,8,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',84430.00,78776.00,3,0,2,3,1,'S','root@localhost','0000-00-00 00:00:00'),(78,3,6,'0000-00-00 00:00:00','0000-00-00 00:00:00',31770.00,57692.00,5,5,6,8,1,'S','root@localhost','0000-00-00 00:00:00'),(79,2,9,'0000-00-00 00:00:00','0000-00-00 00:00:00',95814.00,40878.00,6,0,1,1,1,'S','root@localhost','0000-00-00 00:00:00'),(80,1,7,'0000-00-00 00:00:00','0000-00-00 00:00:00',88486.00,30798.00,8,5,7,1,1,'S','root@localhost','0000-00-00 00:00:00'),(81,1,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',88878.00,27012.00,7,6,6,8,1,'S','root@localhost','0000-00-00 00:00:00'),(82,0,8,'0000-00-00 00:00:00','0000-00-00 00:00:00',52993.00,49101.00,3,3,2,5,1,'S','root@localhost','0000-00-00 00:00:00'),(83,7,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',58231.00,71711.00,3,3,7,5,1,'S','root@localhost','0000-00-00 00:00:00'),(84,4,2,'0000-00-00 00:00:00','0000-00-00 00:00:00',89551.00,49992.00,6,5,9,5,1,'S','root@localhost','0000-00-00 00:00:00'),(85,1,7,'0000-00-00 00:00:00','0000-00-00 00:00:00',51957.00,74659.00,7,5,5,0,1,'S','root@localhost','0000-00-00 00:00:00'),(86,6,4,'0000-00-00 00:00:00','0000-00-00 00:00:00',17103.00,94186.00,8,7,4,1,1,'S','root@localhost','0000-00-00 00:00:00'),(87,3,6,'0000-00-00 00:00:00','0000-00-00 00:00:00',72987.00,62691.00,9,6,1,5,1,'S','root@localhost','0000-00-00 00:00:00'),(88,4,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',59742.00,25396.00,5,1,5,2,1,'S','root@localhost','0000-00-00 00:00:00'),(89,7,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',73527.00,21736.00,3,9,2,4,1,'S','root@localhost','0000-00-00 00:00:00'),(90,8,9,'0000-00-00 00:00:00','0000-00-00 00:00:00',59498.00,35104.00,8,8,0,3,1,'S','root@localhost','0000-00-00 00:00:00'),(91,1,8,'0000-00-00 00:00:00','0000-00-00 00:00:00',36845.00,44558.00,0,6,0,1,1,'S','root@localhost','0000-00-00 00:00:00'),(92,7,8,'0000-00-00 00:00:00','0000-00-00 00:00:00',64865.00,11293.00,6,0,6,2,1,'S','root@localhost','0000-00-00 00:00:00'),(93,8,3,'0000-00-00 00:00:00','0000-00-00 00:00:00',70407.00,73788.00,0,5,6,2,1,'S','root@localhost','0000-00-00 00:00:00'),(94,6,9,'0000-00-00 00:00:00','0000-00-00 00:00:00',71958.00,74110.00,7,0,7,0,1,'S','root@localhost','0000-00-00 00:00:00'),(95,4,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',86984.00,46394.00,8,2,3,3,1,'S','root@localhost','0000-00-00 00:00:00'),(96,4,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',39179.00,45317.00,6,0,0,1,1,'S','root@localhost','0000-00-00 00:00:00'),(97,8,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',29189.00,95080.00,7,9,7,3,1,'S','root@localhost','0000-00-00 00:00:00'),(98,9,4,'0000-00-00 00:00:00','0000-00-00 00:00:00',33829.00,84014.00,4,0,3,6,1,'S','root@localhost','0000-00-00 00:00:00'),(99,0,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',31508.00,79172.00,8,3,6,9,1,'S','root@localhost','0000-00-00 00:00:00'),(100,2,4,'0000-00-00 00:00:00','0000-00-00 00:00:00',43423.00,6240.00,7,3,4,9,1,'S','root@localhost','0000-00-00 00:00:00'),(100001,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100002,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100003,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100004,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100005,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100006,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100007,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100008,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100009,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100010,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100011,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100012,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100013,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100014,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100015,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100016,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100017,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100018,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100019,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100020,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100021,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100022,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100023,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100024,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100025,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100026,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100027,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100028,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100029,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100030,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100031,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100032,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100033,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100034,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100035,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100036,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100037,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100038,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100039,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100040,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100041,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100042,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100043,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100044,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100045,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100046,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100047,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100048,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100049,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100050,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100051,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100052,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100053,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100054,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100055,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100056,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100057,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100058,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100059,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100060,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100061,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100062,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100063,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100064,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100065,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100066,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100067,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100068,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100069,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100070,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100071,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100072,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100073,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100074,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100075,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100076,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100077,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100078,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100079,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100080,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100081,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100082,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100083,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100084,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100085,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100086,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100087,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100088,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100089,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100090,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100091,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100092,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100093,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100094,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100095,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100096,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100097,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100098,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:29'),(100099,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:30'),(100100,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:30'),(100101,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:30'),(100102,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:30'),(100103,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:30'),(100104,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:30'),(100105,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:30'),(100106,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:30'),(100107,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:30'),(100108,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:30'),(100109,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:30'),(100110,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:30'),(100111,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:30'),(100112,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:30'),(100113,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:30'),(100114,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:30'),(100115,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:30'),(100116,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:30'),(100117,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:30'),(100118,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:30'),(100119,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:30'),(100120,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:30'),(100121,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:30'),(100122,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:30'),(100123,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:30'),(100124,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:30'),(100125,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-07 15:52:30'),(100126,NULL,10,NULL,'2019-04-08 17:57:21',NULL,34.00,NULL,1,NULL,2,1,'I','root@localhost','2019-04-08 17:57:21'),(100127,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-08 17:59:18'),(100128,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-08 18:00:40'),(100129,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-08 18:00:42'),(100130,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'S','root@localhost','2019-04-08 18:09:03'),(100131,NULL,11,NULL,'2019-05-12 08:19:30',NULL,5.00,NULL,2,NULL,4,0,'I','root@localhost','2019-05-12 08:19:30'),(100132,NULL,12,NULL,'2019-05-12 08:19:55',NULL,5.00,NULL,2,NULL,4,0,'I','root@localhost','2019-05-12 08:19:55'),(100133,NULL,13,NULL,'2019-05-12 08:20:31',NULL,5.00,NULL,2,NULL,4,0,'I','root@localhost','2019-05-12 08:20:31'),(100134,NULL,14,NULL,'2019-05-12 08:21:52',NULL,4.90,NULL,2,NULL,4,0,'I','root@localhost','2019-05-12 08:21:52'),(100135,NULL,15,NULL,'2019-05-12 08:26:22',NULL,4.90,NULL,2,NULL,4,0,'I','root@localhost','2019-05-12 08:26:22'),(100136,NULL,16,NULL,'2019-05-12 08:27:11',NULL,4.90,NULL,2,NULL,4,0,'I','root@localhost','2019-05-12 08:27:11'),(100137,NULL,17,NULL,'2019-05-12 08:30:09',NULL,324.23,NULL,2,NULL,4,0,'I','root@localhost','2019-05-12 08:30:09'),(100138,NULL,18,NULL,'2019-05-12 08:34:36',NULL,35.50,NULL,2,NULL,4,0,'I','root@localhost','2019-05-12 08:34:36'),(100139,NULL,19,NULL,'2019-05-12 08:35:08',NULL,35.00,NULL,2,NULL,4,0,'I','root@localhost','2019-05-12 08:35:08'),(100140,NULL,20,NULL,'2019-05-12 08:35:59',NULL,35.00,NULL,2,NULL,4,0,'I','root@localhost','2019-05-12 08:35:59'),(100141,NULL,21,NULL,'2019-05-12 08:36:10',NULL,35.50,NULL,2,NULL,4,0,'I','root@localhost','2019-05-12 08:36:10'),(100142,NULL,22,NULL,'2019-05-12 08:36:16',NULL,39.00,NULL,2,NULL,4,0,'I','root@localhost','2019-05-12 08:36:16'),(100143,NULL,23,NULL,'2019-05-12 08:36:19',NULL,38.00,NULL,2,NULL,4,0,'I','root@localhost','2019-05-12 08:36:19'),(100144,NULL,24,NULL,'2019-05-12 08:36:23',NULL,37.00,NULL,2,NULL,4,0,'I','root@localhost','2019-05-12 08:36:23'),(100145,NULL,25,NULL,'2019-05-12 08:36:28',NULL,37.50,NULL,2,NULL,4,0,'I','root@localhost','2019-05-12 08:36:28'),(100146,NULL,26,NULL,'2019-05-12 08:36:31',NULL,37.40,NULL,2,NULL,4,0,'I','root@localhost','2019-05-12 08:36:31'),(100147,NULL,27,NULL,'2019-05-12 08:36:40',NULL,35.00,NULL,2,NULL,4,0,'I','root@localhost','2019-05-12 08:36:40'),(100148,NULL,28,NULL,'2019-05-12 08:37:38',NULL,35.00,NULL,2,NULL,4,0,'I','root@localhost','2019-05-12 08:37:38'),(100149,NULL,29,NULL,'2019-05-12 08:38:30',NULL,35.00,NULL,2,NULL,4,0,'I','root@localhost','2019-05-12 08:38:30'),(100150,NULL,30,NULL,'2019-05-12 08:38:36',NULL,4.90,NULL,2,NULL,4,0,'I','root@localhost','2019-05-12 08:38:36'),(100151,NULL,31,NULL,'2019-05-12 08:38:37',NULL,324.23,NULL,2,NULL,4,0,'I','root@localhost','2019-05-12 08:38:37'),(100152,NULL,32,NULL,'2019-05-12 08:38:38',NULL,35.00,NULL,2,NULL,4,0,'I','root@localhost','2019-05-12 08:38:38'),(100153,NULL,33,NULL,'2019-05-12 08:38:46',NULL,324.23,NULL,2,NULL,4,0,'I','root@localhost','2019-05-12 08:38:46'),(100154,NULL,34,NULL,'2019-05-12 08:38:48',NULL,4.90,NULL,2,NULL,4,0,'I','root@localhost','2019-05-12 08:38:48'),(100155,NULL,35,NULL,'2019-05-12 08:38:50',NULL,35.00,NULL,2,NULL,4,0,'I','root@localhost','2019-05-12 08:38:50'),(100156,NULL,36,NULL,'2019-05-12 08:52:53',NULL,324.23,NULL,2,NULL,4,0,'I','root@localhost','2019-05-12 08:52:53'),(100157,NULL,37,NULL,'2019-05-12 08:52:54',NULL,4.90,NULL,2,NULL,4,0,'I','root@localhost','2019-05-12 08:52:54'),(100158,NULL,38,NULL,'2019-05-12 08:52:55',NULL,35.00,NULL,2,NULL,4,0,'I','root@localhost','2019-05-12 08:52:55'),(100159,NULL,39,NULL,'2019-05-19 07:24:29',NULL,35.00,NULL,2,NULL,4,0,'I','root@localhost','2019-05-19 07:24:30'),(100160,NULL,40,NULL,'2019-05-19 07:24:38',NULL,30.00,NULL,2,NULL,4,0,'I','root@localhost','2019-05-19 07:24:38'),(100161,NULL,41,NULL,'2019-05-19 07:24:42',NULL,32.00,NULL,2,NULL,4,0,'I','root@localhost','2019-05-19 07:24:42'),(100162,NULL,42,NULL,'2019-05-19 07:24:44',NULL,33.00,NULL,2,NULL,4,0,'I','root@localhost','2019-05-19 07:24:44'),(100163,NULL,43,NULL,'2019-05-19 07:24:52',NULL,34.00,NULL,2,NULL,4,0,'I','root@localhost','2019-05-19 07:24:52'),(100164,NULL,44,NULL,'2019-05-19 07:26:37',NULL,0.00,NULL,3,NULL,6,0,'I','root@localhost','2019-05-19 07:26:37'),(100165,NULL,45,NULL,'2019-05-19 07:26:43',NULL,1.00,NULL,3,NULL,6,0,'I','root@localhost','2019-05-19 07:26:43'),(100166,NULL,46,NULL,'2019-05-19 07:26:47',NULL,4.00,NULL,3,NULL,6,0,'I','root@localhost','2019-05-19 07:26:47'),(100167,NULL,47,NULL,'2019-05-19 07:26:50',NULL,6.00,NULL,3,NULL,6,0,'I','root@localhost','2019-05-19 07:26:50'),(100168,NULL,48,NULL,'2019-05-19 07:26:53',NULL,20.00,NULL,3,NULL,6,0,'I','root@localhost','2019-05-19 07:26:53'),(100169,NULL,49,NULL,'2019-05-19 07:29:05',NULL,10.00,NULL,3,NULL,6,0,'I','root@localhost','2019-05-19 07:29:05'),(100170,NULL,50,NULL,'2019-05-19 07:29:09',NULL,20.00,NULL,3,NULL,6,0,'I','root@localhost','2019-05-19 07:29:09'),(100171,NULL,51,NULL,'2019-05-19 07:29:12',NULL,30.00,NULL,3,NULL,6,0,'I','root@localhost','2019-05-19 07:29:12'),(100172,NULL,52,NULL,'2019-05-19 07:29:14',NULL,40.00,NULL,3,NULL,6,0,'I','root@localhost','2019-05-19 07:29:14'),(100173,NULL,53,NULL,'2019-05-19 07:29:21',NULL,50.00,NULL,3,NULL,6,0,'I','root@localhost','2019-05-19 07:29:21'),(100174,NULL,54,NULL,'2019-05-19 07:29:25',NULL,20.00,NULL,3,NULL,6,0,'I','root@localhost','2019-05-19 07:29:25'),(100175,NULL,55,NULL,'2019-05-19 07:39:14',NULL,30.00,NULL,3,NULL,6,0,'I','root@localhost','2019-05-19 07:39:14'),(100176,NULL,56,NULL,'2019-05-19 07:40:24',NULL,30.00,NULL,3,NULL,6,0,'I','root@localhost','2019-05-19 07:40:24'),(100177,NULL,57,NULL,'2019-05-19 07:41:55',NULL,30.00,NULL,3,NULL,6,0,'I','root@localhost','2019-05-19 07:41:55'),(100178,NULL,58,NULL,'2019-05-19 07:44:39',NULL,30.00,NULL,3,NULL,6,0,'I','root@localhost','2019-05-19 07:44:39'),(100179,NULL,59,NULL,'2019-05-19 07:45:09',NULL,30.00,NULL,3,NULL,6,0,'I','root@localhost','2019-05-19 07:45:09');
/*!40000 ALTER TABLE `medicoes_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicoes_sinalizadas`
--

DROP TABLE IF EXISTS `medicoes_sinalizadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicoes_sinalizadas` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDMedicao_Temp` int(11) DEFAULT NULL,
  `IDMedicao_Lum` int(11) DEFAULT NULL,
  `IDMedicao_Cultura` int(11) DEFAULT NULL,
  `IDAlerta` int(11) DEFAULT NULL,
  `Email_Investigador` varchar(45) DEFAULT NULL,
  `Flag_Sinalizado` tinyint(4) DEFAULT NULL,
  `Flag_Alertado` tinyint(4) DEFAULT NULL,
  `DataHora` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicoes_sinalizadas`
--

LOCK TABLES `medicoes_sinalizadas` WRITE;
/*!40000 ALTER TABLE `medicoes_sinalizadas` DISABLE KEYS */;
INSERT INTO `medicoes_sinalizadas` VALUES (1,1,NULL,NULL,NULL,'root@localhost',1,0,'2019-05-12 08:51:32'),(2,1,NULL,NULL,NULL,'investigador@hotmail.com',1,0,'2019-05-12 08:51:32'),(4,1,NULL,NULL,1,'investigador@hotmail.com',0,1,'2019-05-12 08:51:32'),(5,1,NULL,NULL,2,'root@localhost',0,1,'2019-05-12 08:51:32'),(7,2,NULL,NULL,NULL,'root@localhost',1,0,'2019-05-12 08:51:32'),(8,2,NULL,NULL,NULL,'investigador@hotmail.com',1,0,'2019-05-12 08:51:32'),(10,3,NULL,NULL,NULL,'antonio@hotmail.com',1,0,'2019-05-12 08:51:33'),(11,3,NULL,NULL,NULL,'root@localhost',1,0,'2019-05-12 08:51:33'),(12,3,NULL,NULL,NULL,'investigador@hotmail.com',1,0,'2019-05-12 08:51:33'),(13,4,NULL,NULL,NULL,'antonio@hotmail.com',0,0,'2019-05-12 08:51:34'),(14,4,NULL,NULL,NULL,'root@localhost',0,0,'2019-05-12 08:51:34'),(15,4,NULL,NULL,NULL,'investigador@hotmail.com',0,0,'2019-05-12 08:51:34'),(16,5,NULL,NULL,NULL,'antonio@hotmail.com',1,0,'2019-05-12 08:51:35'),(17,5,NULL,NULL,NULL,'root@localhost',1,0,'2019-05-12 08:51:35'),(18,5,NULL,NULL,NULL,'investigador@hotmail.com',1,0,'2019-05-12 08:51:35'),(19,5,NULL,NULL,4,'antonio@hotmail.com',0,1,'2019-05-12 08:51:35'),(20,6,NULL,NULL,NULL,'antonio@hotmail.com',1,0,'2019-05-12 08:51:36'),(21,6,NULL,NULL,NULL,'root@localhost',1,0,'2019-05-12 08:51:36'),(22,6,NULL,NULL,NULL,'investigador@hotmail.com',1,0,'2019-05-12 08:51:36'),(23,7,NULL,NULL,NULL,'antonio@hotmail.com',1,0,'2019-05-12 08:51:36'),(24,7,NULL,NULL,NULL,'root@localhost',1,0,'2019-05-12 08:51:36'),(25,7,NULL,NULL,NULL,'investigador@hotmail.com',1,0,'2019-05-12 08:51:36'),(26,8,NULL,NULL,NULL,'antonio@hotmail.com',1,0,'2019-05-12 08:51:37'),(27,8,NULL,NULL,NULL,'root@localhost',1,0,'2019-05-12 08:51:37'),(28,8,NULL,NULL,NULL,'investigador@hotmail.com',1,0,'2019-05-12 08:51:37'),(29,9,NULL,NULL,NULL,'antonio@hotmail.com',0,0,'2019-05-12 08:51:38'),(30,9,NULL,NULL,NULL,'root@localhost',0,0,'2019-05-12 08:51:38'),(31,9,NULL,NULL,NULL,'investigador@hotmail.com',0,0,'2019-05-12 08:51:38'),(32,10,NULL,NULL,NULL,'antonio@hotmail.com',0,0,'2019-05-12 08:51:39'),(33,10,NULL,NULL,NULL,'root@localhost',0,0,'2019-05-12 08:51:39'),(34,10,NULL,NULL,NULL,'investigador@hotmail.com',0,0,'2019-05-12 08:51:39'),(35,11,NULL,NULL,NULL,'antonio@hotmail.com',1,0,'2019-05-12 08:51:39'),(36,11,NULL,NULL,NULL,'root@localhost',1,0,'2019-05-12 08:51:39'),(37,11,NULL,NULL,NULL,'investigador@hotmail.com',1,0,'2019-05-12 08:51:39'),(38,11,NULL,NULL,5,'root@localhost',0,1,'2019-05-12 08:51:39'),(39,NULL,1,NULL,NULL,'antonio@hotmail.com',1,0,'2019-05-12 08:52:04'),(40,NULL,1,NULL,NULL,'root@localhost',1,0,'2019-05-12 08:52:04'),(41,NULL,1,NULL,NULL,'investigador@hotmail.com',1,0,'2019-05-12 08:52:04'),(42,NULL,1,NULL,6,'investigador@hotmail.com',0,1,'2019-05-12 08:52:04'),(43,NULL,1,NULL,7,'root@localhost',0,1,'2019-05-12 08:52:04'),(45,NULL,2,NULL,NULL,'antonio@hotmail.com',1,0,'2019-05-12 08:52:06'),(46,NULL,2,NULL,NULL,'root@localhost',1,0,'2019-05-12 08:52:06'),(47,NULL,2,NULL,NULL,'investigador@hotmail.com',1,0,'2019-05-12 08:52:06'),(48,NULL,3,NULL,NULL,'antonio@hotmail.com',1,0,'2019-05-12 08:52:07'),(49,NULL,3,NULL,NULL,'root@localhost',1,0,'2019-05-12 08:52:07'),(50,NULL,3,NULL,NULL,'investigador@hotmail.com',1,0,'2019-05-12 08:52:07'),(51,NULL,4,NULL,NULL,'antonio@hotmail.com',1,0,'2019-05-12 08:52:08'),(52,NULL,4,NULL,NULL,'root@localhost',1,0,'2019-05-12 08:52:08'),(53,NULL,4,NULL,NULL,'investigador@hotmail.com',1,0,'2019-05-12 08:52:08'),(54,NULL,5,NULL,NULL,'antonio@hotmail.com',1,0,'2019-05-12 08:52:09'),(55,NULL,5,NULL,NULL,'root@localhost',1,0,'2019-05-12 08:52:09'),(56,NULL,5,NULL,NULL,'investigador@hotmail.com',1,0,'2019-05-12 08:52:09'),(57,NULL,6,NULL,NULL,'antonio@hotmail.com',1,0,'2019-05-12 08:52:10'),(58,NULL,6,NULL,NULL,'root@localhost',1,0,'2019-05-12 08:52:10'),(59,NULL,6,NULL,NULL,'investigador@hotmail.com',1,0,'2019-05-12 08:52:10'),(60,NULL,6,NULL,9,'root@localhost',0,1,'2019-05-12 08:52:10'),(61,NULL,7,NULL,NULL,'antonio@hotmail.com',1,0,'2019-05-12 08:52:12'),(62,NULL,7,NULL,NULL,'root@localhost',1,0,'2019-05-12 08:52:12'),(63,NULL,7,NULL,NULL,'investigador@hotmail.com',1,0,'2019-05-12 08:52:12'),(64,NULL,8,NULL,NULL,'antonio@hotmail.com',1,0,'2019-05-12 08:52:13'),(65,NULL,8,NULL,NULL,'root@localhost',1,0,'2019-05-12 08:52:13'),(66,NULL,8,NULL,NULL,'investigador@hotmail.com',1,0,'2019-05-12 08:52:13'),(67,NULL,9,NULL,NULL,'antonio@hotmail.com',1,0,'2019-05-12 08:52:14'),(68,NULL,9,NULL,NULL,'root@localhost',1,0,'2019-05-12 08:52:14'),(69,NULL,9,NULL,NULL,'investigador@hotmail.com',1,0,'2019-05-12 08:52:14'),(70,NULL,10,NULL,NULL,'root@localhost',1,0,'2019-05-12 08:52:15'),(71,NULL,10,NULL,NULL,'investigador@hotmail.com',1,0,'2019-05-12 08:52:15'),(73,NULL,11,NULL,NULL,'root@localhost',1,0,'2019-05-12 08:52:16'),(74,NULL,11,NULL,NULL,'investigador@hotmail.com',1,0,'2019-05-12 08:52:16'),(76,NULL,12,NULL,NULL,'root@localhost',1,0,'2019-05-12 08:52:17'),(77,NULL,12,NULL,NULL,'investigador@hotmail.com',1,0,'2019-05-12 08:52:17'),(79,NULL,13,NULL,NULL,'antonio@hotmail.com',1,0,'2019-05-12 08:52:18'),(80,NULL,13,NULL,NULL,'root@localhost',1,0,'2019-05-12 08:52:18'),(81,NULL,13,NULL,NULL,'investigador@hotmail.com',1,0,'2019-05-12 08:52:18'),(82,NULL,13,NULL,10,'root@localhost',0,1,'2019-05-12 08:52:18'),(83,NULL,NULL,36,11,'root@localhost',0,1,'2019-05-12 08:52:53'),(84,NULL,NULL,37,12,'root@localhost',0,1,'2019-05-12 08:52:54'),(85,NULL,NULL,38,NULL,'root@localhost',0,0,'2019-05-12 08:52:55'),(86,NULL,14,NULL,NULL,'root@localhost',1,0,'2019-05-12 08:53:07'),(87,NULL,14,NULL,NULL,'investigador@hotmail.com',1,0,'2019-05-12 08:53:07'),(89,NULL,15,NULL,NULL,'antonio@hotmail.com',1,0,'2019-05-12 08:53:07'),(90,NULL,15,NULL,NULL,'root@localhost',1,0,'2019-05-12 08:53:07'),(91,NULL,15,NULL,NULL,'investigador@hotmail.com',1,0,'2019-05-12 08:53:07'),(92,NULL,15,NULL,13,'antonio@hotmail.com',0,1,'2019-05-12 08:53:07'),(93,NULL,15,NULL,14,'investigador@hotmail.com',0,1,'2019-05-12 08:53:07'),(94,NULL,15,NULL,15,'root@localhost',0,1,'2019-05-12 08:53:07'),(95,NULL,16,NULL,NULL,'antonio@hotmail.com',1,0,'2019-05-12 08:53:20'),(96,NULL,16,NULL,NULL,'root@localhost',1,0,'2019-05-12 08:53:20'),(97,NULL,16,NULL,NULL,'investigador@hotmail.com',1,0,'2019-05-12 08:53:20'),(98,NULL,16,NULL,16,'root@localhost',0,1,'2019-05-12 08:53:20'),(99,NULL,17,NULL,NULL,'antonio@hotmail.com',1,0,'2019-05-12 08:53:43'),(100,NULL,17,NULL,NULL,'root@localhost',1,0,'2019-05-12 08:53:43'),(101,NULL,17,NULL,NULL,'investigador@hotmail.com',1,0,'2019-05-12 08:53:43'),(102,NULL,17,NULL,17,'investigador@hotmail.com',0,1,'2019-05-12 08:53:43'),(103,NULL,17,NULL,18,'root@localhost',0,1,'2019-05-12 08:53:43'),(105,NULL,18,NULL,NULL,'antonio@hotmail.com',1,0,'2019-05-12 08:53:44'),(106,NULL,18,NULL,NULL,'root@localhost',1,0,'2019-05-12 08:53:44'),(107,NULL,18,NULL,NULL,'investigador@hotmail.com',1,0,'2019-05-12 08:53:44'),(108,NULL,NULL,39,NULL,'root@localhost',0,0,'2019-05-19 07:24:29'),(109,NULL,NULL,40,19,'root@localhost',0,1,'2019-05-19 07:24:38'),(110,NULL,NULL,41,20,'root@localhost',0,1,'2019-05-19 07:24:42'),(111,NULL,NULL,42,NULL,'root@localhost',0,0,'2019-05-19 07:24:44'),(112,NULL,NULL,43,NULL,'root@localhost',0,0,'2019-05-19 07:24:52'),(113,NULL,NULL,44,21,'root@localhost',0,1,'2019-05-19 07:26:37'),(114,NULL,NULL,45,22,'root@localhost',0,1,'2019-05-19 07:26:43'),(115,NULL,NULL,46,23,'root@localhost',0,1,'2019-05-19 07:26:47'),(116,NULL,NULL,47,24,'root@localhost',0,1,'2019-05-19 07:26:50'),(117,NULL,NULL,48,25,'root@localhost',0,1,'2019-05-19 07:26:53'),(118,NULL,NULL,49,26,'root@localhost',0,1,'2019-05-19 07:29:05'),(119,NULL,NULL,50,27,'root@localhost',0,1,'2019-05-19 07:29:09'),(120,NULL,NULL,51,28,'root@localhost',0,1,'2019-05-19 07:29:12'),(121,NULL,NULL,52,29,'root@localhost',0,1,'2019-05-19 07:29:14'),(122,NULL,NULL,53,30,'root@localhost',0,1,'2019-05-19 07:29:21'),(123,NULL,NULL,54,31,'root@localhost',0,1,'2019-05-19 07:29:25'),(124,NULL,NULL,55,32,'root@localhost',0,1,'2019-05-19 07:39:14'),(125,NULL,NULL,56,33,'root@localhost',0,1,'2019-05-19 07:40:24'),(126,NULL,NULL,57,34,'root@localhost',0,1,'2019-05-19 07:41:55');
/*!40000 ALTER TABLE `medicoes_sinalizadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicoesluminosidade`
--

DROP TABLE IF EXISTS `medicoesluminosidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicoesluminosidade` (
  `IDMedicao` int(11) NOT NULL,
  `ValorMedicaoLuminosidade` decimal(8,2) NOT NULL,
  `DataHoraMedicao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IDMedicao`),
  UNIQUE KEY `IDMedicao_UNIQUE` (`IDMedicao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicoesluminosidade`
--

LOCK TABLES `medicoesluminosidade` WRITE;
/*!40000 ALTER TABLE `medicoesluminosidade` DISABLE KEYS */;
INSERT INTO `medicoesluminosidade` VALUES (1,1.00,'2019-04-09 13:59:32'),(2,35.00,'2019-04-09 13:59:32'),(3,35.00,'2019-04-09 13:59:32'),(4,35.00,'2019-04-09 13:59:32'),(5,35.00,'2019-04-09 13:59:32'),(6,35.00,'2019-04-09 13:59:32'),(7,500000.00,'2019-04-09 13:59:32'),(8,500000.00,'2019-04-09 13:59:32'),(9,500000.00,'2019-04-09 13:59:32'),(10,2000.00,'2019-04-09 13:59:32'),(11,2000.00,'2019-04-09 13:59:32'),(12,2000.00,'2019-04-09 13:59:32'),(13,35.00,'2019-04-09 13:59:32'),(14,2000.00,'2019-04-09 13:59:32'),(15,500000.00,'2019-04-09 13:59:32'),(16,500000.00,'2019-04-09 13:59:32'),(17,35.00,'2019-04-09 13:59:32'),(18,500000.00,'2019-04-09 13:59:32');
/*!40000 ALTER TABLE `medicoesluminosidade` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `medicoesluminosidade_AFTER_INSERT` AFTER INSERT ON `medicoesluminosidade` FOR EACH ROW BEGIN
	insert into medicoesluminosidade_log (
                                            DataHoraMedicao_NEW,  
                                            ValorMedicaoLuminosidade_NEW, 
                                            IDMedicao_NEW, 
                                            Operacao, 
                                            Utilizador, 
                                            DataHora
                                            )
	values (
            new.DataHoraMedicao,
            new.ValorMedicaoLuminosidade,
            new.IDMedicao,
            'I',
            current_user(),
            now()
            );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `medicoesluminosidade_log`
--

DROP TABLE IF EXISTS `medicoesluminosidade_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicoesluminosidade_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DataHoraMedicao_NEW` timestamp NULL DEFAULT NULL,
  `ValorMedicaoLuminosidade_NEW` decimal(8,2) DEFAULT NULL,
  `IDMedicao_NEW` int(11) DEFAULT NULL,
  `Flag_Migracao` tinyint(4) NOT NULL DEFAULT '0',
  `Operacao` varchar(20) NOT NULL,
  `Utilizador` varchar(45) NOT NULL,
  `DataHora` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=687 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicoesluminosidade_log`
--

LOCK TABLES `medicoesluminosidade_log` WRITE;
/*!40000 ALTER TABLE `medicoesluminosidade_log` DISABLE KEYS */;
INSERT INTO `medicoesluminosidade_log` VALUES (1,'0000-00-00 00:00:00',30.00,1,1,'I','root@localhost.com','0000-00-00 00:00:00'),(2,'0000-00-00 00:00:00',30.00,2,1,'I','root@localhost.com','0000-00-00 00:00:00'),(3,'0000-00-00 00:00:00',30.00,3,1,'I','root@localhost.com','0000-00-00 00:00:00'),(4,'0000-00-00 00:00:00',30.00,4,1,'I','root@localhost.com','0000-00-00 00:00:00'),(5,'0000-00-00 00:00:00',30.00,5,1,'I','root@localhost.com','0000-00-00 00:00:00'),(6,'0000-00-00 00:00:00',30.00,6,1,'I','root@localhost.com','0000-00-00 00:00:00'),(7,'0000-00-00 00:00:00',30.00,7,1,'I','root@localhost.com','0000-00-00 00:00:00'),(8,'0000-00-00 00:00:00',30.00,8,1,'I','root@localhost.com','0000-00-00 00:00:00'),(9,'0000-00-00 00:00:00',30.00,9,1,'I','root@localhost.com','0000-00-00 00:00:00'),(10,'0000-00-00 00:00:00',30.00,10,1,'I','root@localhost.com','0000-00-00 00:00:00'),(11,'0000-00-00 00:00:00',30.00,11,1,'I','root@localhost.com','0000-00-00 00:00:00'),(12,'0000-00-00 00:00:00',30.00,12,1,'I','root@localhost.com','0000-00-00 00:00:00'),(13,'0000-00-00 00:00:00',30.00,13,1,'I','root@localhost.com','0000-00-00 00:00:00'),(14,'0000-00-00 00:00:00',30.00,14,1,'I','root@localhost.com','0000-00-00 00:00:00'),(15,'0000-00-00 00:00:00',30.00,15,1,'I','root@localhost.com','0000-00-00 00:00:00'),(16,'0000-00-00 00:00:00',30.00,16,1,'I','root@localhost.com','0000-00-00 00:00:00'),(17,'0000-00-00 00:00:00',30.00,17,1,'I','root@localhost.com','0000-00-00 00:00:00'),(18,'0000-00-00 00:00:00',30.00,18,1,'I','root@localhost.com','0000-00-00 00:00:00'),(19,'0000-00-00 00:00:00',30.00,19,1,'I','root@localhost.com','0000-00-00 00:00:00'),(20,'0000-00-00 00:00:00',30.00,20,1,'I','root@localhost.com','0000-00-00 00:00:00'),(21,'0000-00-00 00:00:00',30.00,21,1,'I','root@localhost.com','0000-00-00 00:00:00'),(22,'0000-00-00 00:00:00',30.00,22,1,'I','root@localhost.com','0000-00-00 00:00:00'),(23,'0000-00-00 00:00:00',30.00,23,1,'I','root@localhost.com','0000-00-00 00:00:00'),(24,'0000-00-00 00:00:00',30.00,24,1,'I','root@localhost.com','0000-00-00 00:00:00'),(25,'0000-00-00 00:00:00',30.00,25,1,'I','root@localhost.com','0000-00-00 00:00:00'),(26,'0000-00-00 00:00:00',30.00,26,1,'I','root@localhost.com','0000-00-00 00:00:00'),(27,'0000-00-00 00:00:00',30.00,27,1,'I','root@localhost.com','0000-00-00 00:00:00'),(28,'0000-00-00 00:00:00',30.00,28,1,'I','root@localhost.com','0000-00-00 00:00:00'),(29,'0000-00-00 00:00:00',30.00,29,1,'I','root@localhost.com','0000-00-00 00:00:00'),(30,'0000-00-00 00:00:00',30.00,30,1,'I','root@localhost.com','0000-00-00 00:00:00'),(31,'0000-00-00 00:00:00',30.00,31,1,'I','root@localhost.com','0000-00-00 00:00:00'),(32,'0000-00-00 00:00:00',30.00,32,1,'I','root@localhost.com','0000-00-00 00:00:00'),(33,'0000-00-00 00:00:00',30.00,33,1,'I','root@localhost.com','0000-00-00 00:00:00'),(34,'0000-00-00 00:00:00',30.00,34,1,'I','root@localhost.com','0000-00-00 00:00:00'),(35,'0000-00-00 00:00:00',30.00,35,1,'I','root@localhost.com','0000-00-00 00:00:00'),(36,'0000-00-00 00:00:00',30.00,36,1,'I','root@localhost.com','0000-00-00 00:00:00'),(37,'0000-00-00 00:00:00',30.00,37,1,'I','root@localhost.com','0000-00-00 00:00:00'),(38,'0000-00-00 00:00:00',30.00,38,1,'I','root@localhost.com','0000-00-00 00:00:00'),(39,'0000-00-00 00:00:00',30.00,39,1,'I','root@localhost.com','0000-00-00 00:00:00'),(40,'0000-00-00 00:00:00',30.00,40,1,'I','root@localhost.com','0000-00-00 00:00:00'),(41,'0000-00-00 00:00:00',30.00,41,1,'I','root@localhost.com','0000-00-00 00:00:00'),(42,'0000-00-00 00:00:00',30.00,42,1,'I','root@localhost.com','0000-00-00 00:00:00'),(43,'0000-00-00 00:00:00',30.00,43,1,'I','root@localhost.com','0000-00-00 00:00:00'),(44,'0000-00-00 00:00:00',30.00,44,1,'I','root@localhost.com','0000-00-00 00:00:00'),(45,'0000-00-00 00:00:00',30.00,45,1,'I','root@localhost.com','0000-00-00 00:00:00'),(46,'0000-00-00 00:00:00',30.00,46,1,'I','root@localhost.com','0000-00-00 00:00:00'),(47,'0000-00-00 00:00:00',30.00,47,1,'I','root@localhost.com','0000-00-00 00:00:00'),(48,'0000-00-00 00:00:00',30.00,48,1,'I','root@localhost.com','0000-00-00 00:00:00'),(49,'0000-00-00 00:00:00',30.00,49,1,'I','root@localhost.com','0000-00-00 00:00:00'),(50,'0000-00-00 00:00:00',30.00,50,1,'I','root@localhost.com','0000-00-00 00:00:00'),(51,'0000-00-00 00:00:00',30.00,51,1,'I','root@localhost.com','0000-00-00 00:00:00'),(52,'0000-00-00 00:00:00',30.00,52,1,'I','root@localhost.com','0000-00-00 00:00:00'),(53,'0000-00-00 00:00:00',30.00,53,1,'I','root@localhost.com','0000-00-00 00:00:00'),(54,'0000-00-00 00:00:00',30.00,54,1,'I','root@localhost.com','0000-00-00 00:00:00'),(55,'0000-00-00 00:00:00',30.00,55,1,'I','root@localhost.com','0000-00-00 00:00:00'),(56,'0000-00-00 00:00:00',30.00,56,1,'I','root@localhost.com','0000-00-00 00:00:00'),(57,'0000-00-00 00:00:00',30.00,57,1,'I','root@localhost.com','0000-00-00 00:00:00'),(58,'0000-00-00 00:00:00',30.00,58,1,'I','root@localhost.com','0000-00-00 00:00:00'),(59,'0000-00-00 00:00:00',30.00,59,1,'I','root@localhost.com','0000-00-00 00:00:00'),(60,'0000-00-00 00:00:00',30.00,60,1,'I','root@localhost.com','0000-00-00 00:00:00'),(61,'0000-00-00 00:00:00',30.00,61,1,'I','root@localhost.com','0000-00-00 00:00:00'),(62,'0000-00-00 00:00:00',30.00,62,1,'I','root@localhost.com','0000-00-00 00:00:00'),(63,'0000-00-00 00:00:00',30.00,63,1,'I','root@localhost.com','0000-00-00 00:00:00'),(64,'0000-00-00 00:00:00',30.00,64,1,'I','root@localhost.com','0000-00-00 00:00:00'),(65,'0000-00-00 00:00:00',30.00,65,1,'I','root@localhost.com','0000-00-00 00:00:00'),(66,'0000-00-00 00:00:00',30.00,66,1,'I','root@localhost.com','0000-00-00 00:00:00'),(67,'0000-00-00 00:00:00',30.00,67,1,'I','root@localhost.com','0000-00-00 00:00:00'),(68,'0000-00-00 00:00:00',30.00,68,1,'I','root@localhost.com','0000-00-00 00:00:00'),(69,'0000-00-00 00:00:00',30.00,69,1,'I','root@localhost.com','0000-00-00 00:00:00'),(70,'0000-00-00 00:00:00',30.00,70,1,'I','root@localhost.com','0000-00-00 00:00:00'),(71,'0000-00-00 00:00:00',30.00,71,1,'I','root@localhost.com','0000-00-00 00:00:00'),(72,'0000-00-00 00:00:00',30.00,72,1,'I','root@localhost.com','0000-00-00 00:00:00'),(73,'0000-00-00 00:00:00',30.00,73,1,'I','root@localhost.com','0000-00-00 00:00:00'),(74,'0000-00-00 00:00:00',30.00,74,1,'I','root@localhost.com','0000-00-00 00:00:00'),(75,'0000-00-00 00:00:00',30.00,75,1,'I','root@localhost.com','0000-00-00 00:00:00'),(76,'0000-00-00 00:00:00',30.00,76,1,'I','root@localhost.com','0000-00-00 00:00:00'),(77,'0000-00-00 00:00:00',30.00,77,1,'I','root@localhost.com','0000-00-00 00:00:00'),(78,'0000-00-00 00:00:00',30.00,78,1,'I','root@localhost.com','0000-00-00 00:00:00'),(79,'0000-00-00 00:00:00',30.00,79,1,'I','root@localhost.com','0000-00-00 00:00:00'),(80,'0000-00-00 00:00:00',30.00,80,1,'I','root@localhost.com','0000-00-00 00:00:00'),(81,'0000-00-00 00:00:00',30.00,81,1,'I','root@localhost.com','0000-00-00 00:00:00'),(82,'0000-00-00 00:00:00',30.00,82,1,'I','root@localhost.com','0000-00-00 00:00:00'),(83,'0000-00-00 00:00:00',30.00,83,1,'I','root@localhost.com','0000-00-00 00:00:00'),(84,'0000-00-00 00:00:00',30.00,84,1,'I','root@localhost.com','0000-00-00 00:00:00'),(85,'0000-00-00 00:00:00',30.00,85,1,'I','root@localhost.com','0000-00-00 00:00:00'),(86,'0000-00-00 00:00:00',30.00,86,1,'I','root@localhost.com','0000-00-00 00:00:00'),(87,'0000-00-00 00:00:00',30.00,87,1,'I','root@localhost.com','0000-00-00 00:00:00'),(88,'0000-00-00 00:00:00',30.00,88,1,'I','root@localhost.com','0000-00-00 00:00:00'),(89,'0000-00-00 00:00:00',30.00,89,1,'I','root@localhost.com','0000-00-00 00:00:00'),(90,'0000-00-00 00:00:00',30.00,90,1,'I','root@localhost.com','0000-00-00 00:00:00'),(91,'0000-00-00 00:00:00',30.00,91,1,'I','root@localhost.com','0000-00-00 00:00:00'),(92,'0000-00-00 00:00:00',30.00,92,1,'I','root@localhost.com','0000-00-00 00:00:00'),(93,'0000-00-00 00:00:00',30.00,93,1,'I','root@localhost.com','0000-00-00 00:00:00'),(94,'0000-00-00 00:00:00',30.00,94,1,'I','root@localhost.com','0000-00-00 00:00:00'),(95,'0000-00-00 00:00:00',30.00,95,1,'I','root@localhost.com','0000-00-00 00:00:00'),(96,'0000-00-00 00:00:00',30.00,96,1,'I','root@localhost.com','0000-00-00 00:00:00'),(97,'0000-00-00 00:00:00',30.00,97,1,'I','root@localhost.com','0000-00-00 00:00:00'),(98,'0000-00-00 00:00:00',30.00,98,1,'I','root@localhost.com','0000-00-00 00:00:00'),(99,'0000-00-00 00:00:00',30.00,99,1,'I','root@localhost.com','0000-00-00 00:00:00'),(100,'0000-00-00 00:00:00',30.00,100,1,'I','root@localhost.com','0000-00-00 00:00:00'),(101,'2019-04-09 13:59:32',100.00,35,0,'I','root@localhost','2019-05-01 18:34:17'),(102,'2019-04-09 13:59:32',100.00,1,0,'I','root@localhost','2019-05-01 18:45:27'),(103,'2019-04-09 13:59:32',1000.00,2,0,'I','root@localhost','2019-05-01 18:45:32'),(104,'2019-04-09 13:59:32',2000.00,3,0,'I','root@localhost','2019-05-01 18:45:42'),(105,'2019-04-09 13:59:32',3500.00,4,0,'I','root@localhost','2019-05-01 18:53:49'),(106,'2019-04-09 13:59:32',100.00,1,0,'I','root@localhost','2019-05-01 21:40:52'),(107,'2019-04-09 13:59:32',100.00,2,0,'I','root@localhost','2019-05-01 21:41:57'),(108,'2019-04-09 13:59:32',1000.00,3,0,'I','root@localhost','2019-05-01 21:42:00'),(109,'2019-04-09 13:59:32',2000.00,4,0,'I','root@localhost','2019-05-01 21:42:01'),(110,'2019-04-09 13:59:32',1000.00,5,0,'I','root@localhost','2019-05-01 21:42:02'),(111,'2019-04-09 13:59:32',3500.00,6,0,'I','root@localhost','2019-05-01 21:42:03'),(112,'2019-04-09 13:59:32',100.00,7,0,'I','root@localhost','2019-05-01 21:42:34'),(113,'2019-04-09 13:59:32',100.00,8,0,'I','root@localhost','2019-05-01 21:42:43'),(114,'2019-04-09 13:59:32',100.00,9,0,'I','root@localhost','2019-05-01 21:42:44'),(115,'2019-04-09 13:59:32',100.00,10,0,'I','root@localhost','2019-05-01 21:42:44'),(116,'2019-04-09 13:59:32',100.00,11,0,'I','root@localhost','2019-05-01 21:42:44'),(117,'2019-04-09 13:59:32',3500.00,12,0,'I','root@localhost','2019-05-01 22:01:03'),(118,'2019-04-09 13:59:32',3500.00,13,0,'I','root@localhost','2019-05-01 22:01:04'),(119,'2019-04-09 13:59:32',3500.00,14,0,'I','root@localhost','2019-05-01 22:01:05'),(120,'2019-04-09 13:59:32',3500.00,15,0,'I','root@localhost','2019-05-01 22:07:09'),(121,'2019-04-09 13:59:32',3500.00,16,0,'I','root@localhost','2019-05-01 22:07:18'),(122,'2019-04-09 13:59:32',3500.00,17,0,'I','root@localhost','2019-05-01 22:07:19'),(123,'2019-04-09 13:59:32',3500.00,18,0,'I','root@localhost','2019-05-01 22:07:20'),(124,'2019-04-09 13:59:32',3500.00,19,0,'I','root@localhost','2019-05-01 22:07:20'),(125,'2019-04-09 13:59:32',3500.00,20,0,'I','root@localhost','2019-05-01 22:07:21'),(126,'2019-04-09 13:59:32',3500.00,21,0,'I','root@localhost','2019-05-01 22:07:21'),(127,'2019-04-09 13:59:32',3500.00,22,0,'I','root@localhost','2019-05-01 22:07:21'),(128,'2019-04-09 13:59:32',3500.00,23,0,'I','root@localhost','2019-05-01 22:07:21'),(129,'2019-04-09 13:59:32',3500.00,24,0,'I','root@localhost','2019-05-01 22:07:21'),(130,'2019-04-09 13:59:32',3138.00,25,0,'I','root@localhost','2019-05-05 15:38:52'),(131,'2019-05-05 15:41:32',5000.00,26,0,'I','root@localhost','2019-05-05 15:41:12'),(132,'2019-05-05 15:41:32',5000.00,27,0,'I','root@localhost','2019-05-05 15:42:32'),(133,'2019-05-05 15:41:32',5000.00,28,0,'I','root@localhost','2019-05-05 15:42:32'),(134,'2019-05-05 15:41:32',5000.00,29,0,'I','root@localhost','2019-05-05 15:42:32'),(135,'2019-05-11 06:33:52',2.00,1,0,'I','root@localhost','2019-05-11 07:36:34'),(136,'2019-05-11 06:33:59',3.00,2,0,'I','root@localhost','2019-05-11 07:36:34'),(137,'2019-05-11 06:34:15',1.00,3,0,'I','root@localhost','2019-05-11 07:36:34'),(138,'2019-05-11 06:34:28',1.00,4,0,'I','root@localhost','2019-05-11 07:36:34'),(139,'2019-05-11 06:34:32',0.00,5,0,'I','root@localhost','2019-05-11 07:36:34'),(140,'2019-05-11 06:34:35',2.00,6,0,'I','root@localhost','2019-05-11 07:36:34'),(141,'2019-05-11 06:35:58',3.00,7,0,'I','root@localhost','2019-05-11 07:36:34'),(142,'2019-05-11 06:36:00',3.00,8,0,'I','root@localhost','2019-05-11 07:36:34'),(143,'2019-05-11 06:36:02',2.00,9,0,'I','root@localhost','2019-05-11 07:36:34'),(144,'2019-05-11 06:36:07',3.00,10,0,'I','root@localhost','2019-05-11 07:36:34'),(145,'2019-05-11 06:36:11',3.00,11,0,'I','root@localhost','2019-05-11 07:36:34'),(146,'2019-05-11 06:36:22',1.00,12,0,'I','root@localhost','2019-05-11 07:36:34'),(147,'2019-05-11 06:36:37',2.00,13,0,'I','root@localhost','2019-05-11 07:36:54'),(148,'2019-05-11 06:36:46',1.00,14,0,'I','root@localhost','2019-05-11 07:36:54'),(149,'2019-05-11 06:36:53',3.00,15,0,'I','root@localhost','2019-05-11 07:37:14'),(150,'2019-05-11 06:36:55',0.00,16,0,'I','root@localhost','2019-05-11 07:37:14'),(151,'2019-05-11 06:36:57',2.00,17,0,'I','root@localhost','2019-05-11 07:37:14'),(152,'2019-05-11 06:37:06',3.00,18,0,'I','root@localhost','2019-05-11 07:37:14'),(153,'2019-05-11 06:37:17',1.00,19,0,'I','root@localhost','2019-05-11 07:37:35'),(154,'2019-05-11 06:37:51',3.00,20,0,'I','root@localhost','2019-05-11 07:37:55'),(155,'2019-05-11 06:37:53',2.00,21,0,'I','root@localhost','2019-05-11 07:38:15'),(156,'2019-05-11 06:37:55',1.00,22,0,'I','root@localhost','2019-05-11 07:38:15'),(157,'2019-05-11 06:38:13',3.00,23,0,'I','root@localhost','2019-05-11 07:38:35'),(158,'2019-05-11 06:38:15',1.00,24,0,'I','root@localhost','2019-05-11 07:38:35'),(159,'2019-05-11 06:38:20',3.00,25,0,'I','root@localhost','2019-05-11 07:38:35'),(160,'2019-05-11 06:38:31',1.00,26,0,'I','root@localhost','2019-05-11 07:38:35'),(161,'2019-05-11 06:38:56',3.00,27,0,'I','root@localhost','2019-05-11 07:39:15'),(162,'2019-05-11 06:39:13',3.00,28,0,'I','root@localhost','2019-05-11 07:39:35'),(163,'2019-05-11 06:39:15',2.00,29,0,'I','root@localhost','2019-05-11 07:39:35'),(164,'2019-05-11 06:39:25',3.00,30,0,'I','root@localhost','2019-05-11 07:39:35'),(165,'2019-05-11 06:39:36',3.00,31,0,'I','root@localhost','2019-05-11 07:39:55'),(166,'2019-05-11 06:39:40',2.00,32,0,'I','root@localhost','2019-05-11 07:39:55'),(167,'2019-05-11 06:39:43',3.00,33,0,'I','root@localhost','2019-05-11 07:39:55'),(168,'2019-05-11 06:39:53',1.00,34,0,'I','root@localhost','2019-05-11 07:40:15'),(169,'2019-05-11 06:40:00',3.00,35,0,'I','root@localhost','2019-05-11 07:40:15'),(170,'2019-05-11 06:40:07',3.00,36,0,'I','root@localhost','2019-05-11 07:40:15'),(171,'2019-05-11 06:40:18',2.00,37,0,'I','root@localhost','2019-05-11 07:40:35'),(172,'2019-05-11 06:40:47',1.00,38,0,'I','root@localhost','2019-05-11 07:40:55'),(173,'2019-05-11 06:40:52',3.00,39,0,'I','root@localhost','2019-05-11 07:40:55'),(174,'2019-05-11 06:41:10',3.00,40,0,'I','root@localhost','2019-05-11 07:41:15'),(175,'2019-05-11 06:41:14',2.00,41,0,'I','root@localhost','2019-05-11 07:41:35'),(176,'2019-05-11 06:41:23',1.00,42,0,'I','root@localhost','2019-05-11 07:41:35'),(177,'2019-05-11 06:41:28',3.00,43,0,'I','root@localhost','2019-05-11 07:41:35'),(178,'2019-05-11 06:41:36',3.00,44,0,'I','root@localhost','2019-05-11 07:41:55'),(179,'2019-05-11 06:41:41',3.00,45,0,'I','root@localhost','2019-05-11 07:41:55'),(180,'2019-05-11 06:41:48',3.00,46,0,'I','root@localhost','2019-05-11 07:41:55'),(181,'2019-05-11 06:41:53',2.00,47,0,'I','root@localhost','2019-05-11 07:42:15'),(182,'2019-05-11 06:42:06',3.00,48,0,'I','root@localhost','2019-05-11 07:42:15'),(183,'2019-05-11 06:42:17',2.00,49,0,'I','root@localhost','2019-05-11 07:42:35'),(184,'2019-05-11 06:42:19',2.00,50,0,'I','root@localhost','2019-05-11 07:42:35'),(185,'2019-05-11 06:42:22',2.00,51,0,'I','root@localhost','2019-05-11 07:42:35'),(186,'2019-05-11 06:42:26',2.00,52,0,'I','root@localhost','2019-05-11 07:42:35'),(187,'2019-05-11 06:42:30',1.00,53,0,'I','root@localhost','2019-05-11 07:42:35'),(188,'2019-05-11 06:42:41',1.00,54,0,'I','root@localhost','2019-05-11 07:42:55'),(189,'2019-05-11 06:42:44',3.00,55,0,'I','root@localhost','2019-05-11 07:42:55'),(190,'2019-05-11 06:42:53',1.00,56,0,'I','root@localhost','2019-05-11 07:43:15'),(191,'2019-05-11 06:43:02',3.00,57,0,'I','root@localhost','2019-05-11 07:43:15'),(192,'2019-05-11 06:43:08',3.00,58,0,'I','root@localhost','2019-05-11 07:43:15'),(193,'2019-05-11 06:43:09',2.00,59,0,'I','root@localhost','2019-05-11 07:43:15'),(194,'2019-05-11 06:43:13',2.00,60,0,'I','root@localhost','2019-05-11 07:43:35'),(195,'2019-05-11 06:43:26',3.00,61,0,'I','root@localhost','2019-05-11 07:43:35'),(196,'2019-05-11 06:43:46',3.00,62,0,'I','root@localhost','2019-05-11 07:43:55'),(197,'2019-05-11 06:44:05',1.00,63,0,'I','root@localhost','2019-05-11 07:44:15'),(198,'2019-05-11 06:44:15',2.00,64,0,'I','root@localhost','2019-05-11 07:44:35'),(199,'2019-05-11 06:44:22',3.00,65,0,'I','root@localhost','2019-05-11 07:44:35'),(200,'2019-05-11 06:44:36',2.00,66,0,'I','root@localhost','2019-05-11 07:44:55'),(201,'2019-05-11 06:44:38',2.00,67,0,'I','root@localhost','2019-05-11 07:44:55'),(202,'2019-05-11 06:44:40',1.00,68,0,'I','root@localhost','2019-05-11 07:44:55'),(203,'2019-05-11 06:44:45',3.00,69,0,'I','root@localhost','2019-05-11 07:44:55'),(204,'2019-05-11 06:45:07',1.00,70,0,'I','root@localhost','2019-05-11 07:45:15'),(205,'2019-05-11 06:45:16',2.00,71,0,'I','root@localhost','2019-05-11 07:45:35'),(206,'2019-05-11 06:45:18',1.00,72,0,'I','root@localhost','2019-05-11 07:45:35'),(207,'2019-05-11 06:45:27',1.00,73,0,'I','root@localhost','2019-05-11 07:45:35'),(208,'2019-05-11 06:45:29',2.00,74,0,'I','root@localhost','2019-05-11 07:45:35'),(209,'2019-05-11 06:45:47',3.00,75,0,'I','root@localhost','2019-05-11 07:45:55'),(210,'2019-05-11 06:45:54',3.00,76,0,'I','root@localhost','2019-05-11 07:46:15'),(211,'2019-05-11 06:46:19',3.00,77,0,'I','root@localhost','2019-05-11 07:46:35'),(212,'2019-05-11 06:46:25',3.00,78,0,'I','root@localhost','2019-05-11 07:46:35'),(213,'2019-05-11 06:46:49',1.00,79,0,'I','root@localhost','2019-05-11 07:46:55'),(214,'2019-05-11 06:46:56',2.00,80,0,'I','root@localhost','2019-05-11 07:47:15'),(215,'2019-05-11 06:47:16',2.00,81,0,'I','root@localhost','2019-05-11 07:47:35'),(216,'2019-05-11 06:47:22',2.00,82,0,'I','root@localhost','2019-05-11 07:47:35'),(217,'2019-05-11 06:47:31',1.00,83,0,'I','root@localhost','2019-05-11 07:47:35'),(218,'2019-05-11 06:47:40',3.00,84,0,'I','root@localhost','2019-05-11 07:47:55'),(219,'2019-05-11 06:47:54',2.00,85,0,'I','root@localhost','2019-05-11 07:48:15'),(220,'2019-05-11 06:48:12',1.00,86,0,'I','root@localhost','2019-05-11 07:48:15'),(221,'2019-05-11 06:48:19',1.00,87,0,'I','root@localhost','2019-05-11 07:48:35'),(222,'2019-05-11 06:48:27',3.00,88,0,'I','root@localhost','2019-05-11 07:48:55'),(223,'2019-05-11 06:48:34',2.00,89,0,'I','root@localhost','2019-05-11 07:48:55'),(224,'2019-05-11 06:48:56',2.00,90,0,'I','root@localhost','2019-05-11 07:49:15'),(225,'2019-05-11 06:48:59',2.00,91,0,'I','root@localhost','2019-05-11 07:49:15'),(226,'2019-05-11 06:49:06',3.00,92,0,'I','root@localhost','2019-05-11 07:49:15'),(227,'2019-05-11 06:49:19',2.00,93,0,'I','root@localhost','2019-05-11 07:49:35'),(228,'2019-05-11 06:49:28',1.00,94,0,'I','root@localhost','2019-05-11 07:49:35'),(229,'2019-05-11 06:49:41',3.00,95,0,'I','root@localhost','2019-05-11 07:49:56'),(230,'2019-05-11 06:49:48',3.00,96,0,'I','root@localhost','2019-05-11 07:49:56'),(231,'2019-05-11 06:49:54',1.00,97,0,'I','root@localhost','2019-05-11 07:50:16'),(232,'2019-05-11 06:49:57',2.00,98,0,'I','root@localhost','2019-05-11 07:50:16'),(233,'2019-05-11 06:49:59',3.00,99,0,'I','root@localhost','2019-05-11 07:50:16'),(234,'2019-05-11 06:50:01',3.00,100,0,'I','root@localhost','2019-05-11 07:50:16'),(235,'2019-05-11 06:50:04',3.00,101,0,'I','root@localhost','2019-05-11 07:50:16'),(236,'2019-05-11 06:59:34',0.00,102,0,'I','root@localhost','2019-05-11 08:00:41'),(237,'2019-05-11 06:59:35',1.00,103,0,'I','root@localhost','2019-05-11 08:00:41'),(238,'2019-05-11 06:59:37',3.00,104,0,'I','root@localhost','2019-05-11 08:00:41'),(239,'2019-05-11 06:59:39',0.00,105,0,'I','root@localhost','2019-05-11 08:00:41'),(240,'2019-05-11 06:59:41',0.00,106,0,'I','root@localhost','2019-05-11 08:00:41'),(241,'2019-05-11 06:59:43',0.00,107,0,'I','root@localhost','2019-05-11 08:00:41'),(242,'2019-05-11 06:59:44',0.00,108,0,'I','root@localhost','2019-05-11 08:00:41'),(243,'2019-05-11 06:59:46',0.00,109,0,'I','root@localhost','2019-05-11 08:00:41'),(244,'2019-05-11 06:59:48',0.00,110,0,'I','root@localhost','2019-05-11 08:00:41'),(245,'2019-05-11 06:59:50',0.00,111,0,'I','root@localhost','2019-05-11 08:00:41'),(246,'2019-05-11 06:59:52',3.00,112,0,'I','root@localhost','2019-05-11 08:00:41'),(247,'2019-05-11 06:59:54',0.00,113,0,'I','root@localhost','2019-05-11 08:00:41'),(248,'2019-05-11 06:59:55',0.00,114,0,'I','root@localhost','2019-05-11 08:00:41'),(249,'2019-05-11 06:59:57',0.00,115,0,'I','root@localhost','2019-05-11 08:00:41'),(250,'2019-05-11 06:59:59',1.00,116,0,'I','root@localhost','2019-05-11 08:00:41'),(251,'2019-05-11 07:00:01',2.00,117,0,'I','root@localhost','2019-05-11 08:00:41'),(252,'2019-05-11 07:00:03',0.00,118,0,'I','root@localhost','2019-05-11 08:00:41'),(253,'2019-05-11 07:00:04',0.00,119,0,'I','root@localhost','2019-05-11 08:00:41'),(254,'2019-05-11 07:00:06',0.00,120,0,'I','root@localhost','2019-05-11 08:00:41'),(255,'2019-05-11 07:00:08',2.00,121,0,'I','root@localhost','2019-05-11 08:00:41'),(256,'2019-05-11 07:00:10',0.00,122,0,'I','root@localhost','2019-05-11 08:00:41'),(257,'2019-05-11 07:00:12',0.00,123,0,'I','root@localhost','2019-05-11 08:00:41'),(258,'2019-05-11 07:00:13',0.00,124,0,'I','root@localhost','2019-05-11 08:00:41'),(259,'2019-05-11 07:00:15',0.00,125,0,'I','root@localhost','2019-05-11 08:00:41'),(260,'2019-05-11 07:00:17',0.00,126,0,'I','root@localhost','2019-05-11 08:00:41'),(261,'2019-05-11 07:00:19',0.00,127,0,'I','root@localhost','2019-05-11 08:00:41'),(262,'2019-05-11 07:00:21',0.00,128,0,'I','root@localhost','2019-05-11 08:00:41'),(263,'2019-05-11 07:00:22',2.00,129,0,'I','root@localhost','2019-05-11 08:00:41'),(264,'2019-05-11 07:00:24',0.00,130,0,'I','root@localhost','2019-05-11 08:00:41'),(265,'2019-05-11 07:00:26',1.00,131,0,'I','root@localhost','2019-05-11 08:00:41'),(266,'2019-05-11 07:00:28',1.00,132,0,'I','root@localhost','2019-05-11 08:00:41'),(267,'2019-05-11 07:00:30',1.00,133,0,'I','root@localhost','2019-05-11 08:00:41'),(268,'2019-05-11 07:00:31',0.00,134,0,'I','root@localhost','2019-05-11 08:00:41'),(269,'2019-05-11 07:00:33',0.00,135,0,'I','root@localhost','2019-05-11 08:00:41'),(270,'2019-05-11 07:00:35',0.00,136,0,'I','root@localhost','2019-05-11 08:00:41'),(271,'2019-05-11 07:00:37',0.00,137,0,'I','root@localhost','2019-05-11 08:00:41'),(272,'2019-05-11 07:00:39',0.00,138,0,'I','root@localhost','2019-05-11 08:01:01'),(273,'2019-05-11 07:00:41',0.00,139,0,'I','root@localhost','2019-05-11 08:01:01'),(274,'2019-05-11 07:00:42',0.00,140,0,'I','root@localhost','2019-05-11 08:01:01'),(275,'2019-05-11 07:00:44',1.00,141,0,'I','root@localhost','2019-05-11 08:01:01'),(276,'2019-05-11 07:00:46',0.00,142,0,'I','root@localhost','2019-05-11 08:01:01'),(277,'2019-05-11 07:00:48',0.00,143,0,'I','root@localhost','2019-05-11 08:01:01'),(278,'2019-05-11 07:00:50',0.00,144,0,'I','root@localhost','2019-05-11 08:01:01'),(279,'2019-05-11 07:00:51',1.00,145,0,'I','root@localhost','2019-05-11 08:01:01'),(280,'2019-05-11 07:00:53',0.00,146,0,'I','root@localhost','2019-05-11 08:01:01'),(281,'2019-05-11 07:00:55',0.00,147,0,'I','root@localhost','2019-05-11 08:01:01'),(282,'2019-05-11 07:00:57',0.00,148,0,'I','root@localhost','2019-05-11 08:01:01'),(283,'2019-05-11 07:00:59',0.00,149,0,'I','root@localhost','2019-05-11 08:01:21'),(284,'2019-05-11 07:01:00',0.00,150,0,'I','root@localhost','2019-05-11 08:01:21'),(285,'2019-05-11 07:01:02',0.00,151,0,'I','root@localhost','2019-05-11 08:01:21'),(286,'2019-05-11 07:01:04',0.00,152,0,'I','root@localhost','2019-05-11 08:01:21'),(287,'2019-05-11 07:01:06',0.00,153,0,'I','root@localhost','2019-05-11 08:01:21'),(288,'2019-05-11 07:01:08',0.00,154,0,'I','root@localhost','2019-05-11 08:01:21'),(289,'2019-05-11 07:01:09',0.00,155,0,'I','root@localhost','2019-05-11 08:01:21'),(290,'2019-05-11 07:01:11',0.00,156,0,'I','root@localhost','2019-05-11 08:01:21'),(291,'2019-05-11 07:01:13',0.00,157,0,'I','root@localhost','2019-05-11 08:01:21'),(292,'2019-05-11 07:01:15',0.00,158,0,'I','root@localhost','2019-05-11 08:01:21'),(293,'2019-05-11 07:01:17',0.00,159,0,'I','root@localhost','2019-05-11 08:01:21'),(294,'2019-05-11 07:01:19',3.00,160,0,'I','root@localhost','2019-05-11 08:01:41'),(295,'2019-05-11 07:01:20',0.00,161,0,'I','root@localhost','2019-05-11 08:01:41'),(296,'2019-05-11 07:01:22',3.00,162,0,'I','root@localhost','2019-05-11 08:01:41'),(297,'2019-05-11 07:01:24',0.00,163,0,'I','root@localhost','2019-05-11 08:01:41'),(298,'2019-05-11 07:01:26',0.00,164,0,'I','root@localhost','2019-05-11 08:01:41'),(299,'2019-05-11 07:01:28',0.00,165,0,'I','root@localhost','2019-05-11 08:01:41'),(300,'2019-05-11 07:01:29',0.00,166,0,'I','root@localhost','2019-05-11 08:01:41'),(301,'2019-05-11 07:01:31',0.00,167,0,'I','root@localhost','2019-05-11 08:01:41'),(302,'2019-05-11 07:01:33',0.00,168,0,'I','root@localhost','2019-05-11 08:01:41'),(303,'2019-05-11 07:01:35',2.00,169,0,'I','root@localhost','2019-05-11 08:01:41'),(304,'2019-05-11 07:01:37',0.00,170,0,'I','root@localhost','2019-05-11 08:01:42'),(305,'2019-05-11 16:09:11',0.00,1,0,'I','root@localhost','2019-05-11 17:09:54'),(306,'2019-05-11 16:09:13',3.00,2,0,'I','root@localhost','2019-05-11 17:09:54'),(307,'2019-05-11 16:09:14',3.00,3,0,'I','root@localhost','2019-05-11 17:09:54'),(308,'2019-05-11 16:09:16',0.00,4,0,'I','root@localhost','2019-05-11 17:09:54'),(309,'2019-05-11 16:09:18',3.00,5,0,'I','root@localhost','2019-05-11 17:09:54'),(310,'2019-05-11 16:09:20',0.00,6,0,'I','root@localhost','2019-05-11 17:09:54'),(311,'2019-05-11 16:09:22',2.00,7,0,'I','root@localhost','2019-05-11 17:09:54'),(312,'2019-05-11 16:09:23',0.00,8,0,'I','root@localhost','2019-05-11 17:09:54'),(313,'2019-05-11 16:09:25',0.00,9,0,'I','root@localhost','2019-05-11 17:09:54'),(314,'2019-05-11 16:09:27',3.00,10,0,'I','root@localhost','2019-05-11 17:09:54'),(315,'2019-05-11 16:09:29',0.00,11,0,'I','root@localhost','2019-05-11 17:09:54'),(316,'2019-05-11 16:09:31',0.00,12,0,'I','root@localhost','2019-05-11 17:09:54'),(317,'2019-05-11 16:09:32',0.00,13,0,'I','root@localhost','2019-05-11 17:09:54'),(318,'2019-05-11 16:09:34',0.00,14,0,'I','root@localhost','2019-05-11 17:09:54'),(319,'2019-05-11 16:09:36',0.00,15,0,'I','root@localhost','2019-05-11 17:09:54'),(320,'2019-05-11 16:09:38',0.00,16,0,'I','root@localhost','2019-05-11 17:09:54'),(321,'2019-05-11 16:09:40',2.00,17,0,'I','root@localhost','2019-05-11 17:09:54'),(322,'2019-05-11 16:09:41',3.00,18,0,'I','root@localhost','2019-05-11 17:09:54'),(323,'2019-05-11 16:09:43',0.00,19,0,'I','root@localhost','2019-05-11 17:09:54'),(324,'2019-05-11 16:09:45',0.00,20,0,'I','root@localhost','2019-05-11 17:09:54'),(325,'2019-05-11 16:09:47',0.00,21,0,'I','root@localhost','2019-05-11 17:09:54'),(326,'2019-05-11 16:09:49',0.00,22,0,'I','root@localhost','2019-05-11 17:09:54'),(327,'2019-05-11 16:09:51',0.00,23,0,'I','root@localhost','2019-05-11 17:09:54'),(328,'2019-05-11 16:09:52',3.00,24,0,'I','root@localhost','2019-05-11 17:10:14'),(329,'2019-05-11 16:09:54',0.00,25,0,'I','root@localhost','2019-05-11 17:10:14'),(330,'2019-05-11 16:09:56',0.00,26,0,'I','root@localhost','2019-05-11 17:10:14'),(331,'2019-05-11 16:09:58',0.00,27,0,'I','root@localhost','2019-05-11 17:10:14'),(332,'2019-05-11 16:10:00',0.00,28,0,'I','root@localhost','2019-05-11 17:10:14'),(333,'2019-05-11 16:10:01',0.00,29,0,'I','root@localhost','2019-05-11 17:10:14'),(334,'2019-05-11 16:10:03',0.00,30,0,'I','root@localhost','2019-05-11 17:10:14'),(335,'2019-05-11 16:10:05',2.00,31,0,'I','root@localhost','2019-05-11 17:10:14'),(336,'2019-05-11 16:10:07',3.00,32,0,'I','root@localhost','2019-05-11 17:10:14'),(337,'2019-05-11 16:10:09',0.00,33,0,'I','root@localhost','2019-05-11 17:10:14'),(338,'2019-05-11 16:10:10',0.00,34,0,'I','root@localhost','2019-05-11 17:10:15'),(339,'2019-05-11 16:10:12',2.00,35,0,'I','root@localhost','2019-05-11 17:10:35'),(340,'2019-05-11 16:10:14',0.00,36,0,'I','root@localhost','2019-05-11 17:10:35'),(341,'2019-05-11 16:10:16',0.00,37,0,'I','root@localhost','2019-05-11 17:10:35'),(342,'2019-05-11 16:10:18',0.00,38,0,'I','root@localhost','2019-05-11 17:10:35'),(343,'2019-05-11 16:10:19',3.00,39,0,'I','root@localhost','2019-05-11 17:10:35'),(344,'2019-05-11 16:10:21',0.00,40,0,'I','root@localhost','2019-05-11 17:10:35'),(345,'2019-05-11 16:10:23',0.00,41,0,'I','root@localhost','2019-05-11 17:10:35'),(346,'2019-05-11 16:10:25',0.00,42,0,'I','root@localhost','2019-05-11 17:10:35'),(347,'2019-05-11 16:10:27',3.00,43,0,'I','root@localhost','2019-05-11 17:10:35'),(348,'2019-05-11 16:10:29',0.00,44,0,'I','root@localhost','2019-05-11 17:10:35'),(349,'2019-05-11 16:10:30',0.00,45,0,'I','root@localhost','2019-05-11 17:10:35'),(350,'2019-05-11 16:10:32',0.00,46,0,'I','root@localhost','2019-05-11 17:10:55'),(351,'2019-05-11 16:10:34',1.00,47,0,'I','root@localhost','2019-05-11 17:10:55'),(352,'2019-05-11 16:10:36',0.00,48,0,'I','root@localhost','2019-05-11 17:10:55'),(353,'2019-05-11 16:10:38',0.00,49,0,'I','root@localhost','2019-05-11 17:10:55'),(354,'2019-05-11 16:10:39',0.00,50,0,'I','root@localhost','2019-05-11 17:10:55'),(355,'2019-05-11 16:10:41',0.00,51,0,'I','root@localhost','2019-05-11 17:10:55'),(356,'2019-05-11 16:10:43',0.00,52,0,'I','root@localhost','2019-05-11 17:10:55'),(357,'2019-05-11 16:10:45',2.00,53,0,'I','root@localhost','2019-05-11 17:10:55'),(358,'2019-05-11 16:10:47',0.00,54,0,'I','root@localhost','2019-05-11 17:10:55'),(359,'2019-05-11 16:10:48',0.00,55,0,'I','root@localhost','2019-05-11 17:10:55'),(360,'2019-05-11 16:10:50',0.00,56,0,'I','root@localhost','2019-05-11 17:10:55'),(361,'2019-05-11 16:10:54',2.00,57,0,'I','root@localhost','2019-05-11 17:11:15'),(362,'2019-05-11 16:10:56',0.00,58,0,'I','root@localhost','2019-05-11 17:11:15'),(363,'2019-05-11 16:10:57',2.00,59,0,'I','root@localhost','2019-05-11 17:11:15'),(364,'2019-05-11 16:10:59',0.00,60,0,'I','root@localhost','2019-05-11 17:11:15'),(365,'2019-05-11 16:11:01',0.00,61,0,'I','root@localhost','2019-05-11 17:11:15'),(366,'2019-05-11 16:11:03',2.00,62,0,'I','root@localhost','2019-05-11 17:11:15'),(367,'2019-05-11 16:11:05',0.00,63,0,'I','root@localhost','2019-05-11 17:11:15'),(368,'2019-05-11 16:11:06',0.00,64,0,'I','root@localhost','2019-05-11 17:11:15'),(369,'2019-05-11 16:11:08',0.00,65,0,'I','root@localhost','2019-05-11 17:11:15'),(370,'2019-05-11 16:11:10',1.00,66,0,'I','root@localhost','2019-05-11 17:11:15'),(371,'2019-05-11 16:11:12',2.00,67,0,'I','root@localhost','2019-05-11 17:11:15'),(372,'2019-05-11 16:11:14',0.00,68,0,'I','root@localhost','2019-05-11 17:11:35'),(373,'2019-05-11 16:11:16',3.00,69,0,'I','root@localhost','2019-05-11 17:11:35'),(374,'2019-05-11 16:11:17',0.00,70,0,'I','root@localhost','2019-05-11 17:11:35'),(375,'2019-05-11 16:11:19',0.00,71,0,'I','root@localhost','2019-05-11 17:11:35'),(376,'2019-05-11 16:11:21',0.00,72,0,'I','root@localhost','2019-05-11 17:11:35'),(377,'2019-05-11 16:11:23',0.00,73,0,'I','root@localhost','2019-05-11 17:11:35'),(378,'2019-05-11 16:11:25',0.00,74,0,'I','root@localhost','2019-05-11 17:11:35'),(379,'2019-05-11 16:11:26',0.00,75,0,'I','root@localhost','2019-05-11 17:11:35'),(380,'2019-05-11 16:11:28',3.00,76,0,'I','root@localhost','2019-05-11 17:11:35'),(381,'2019-05-11 16:11:30',0.00,77,0,'I','root@localhost','2019-05-11 17:11:35'),(382,'2019-05-11 16:11:32',1.00,78,0,'I','root@localhost','2019-05-11 17:11:35'),(383,'2019-05-11 16:11:34',0.00,79,0,'I','root@localhost','2019-05-11 17:11:39'),(384,'2019-05-11 16:11:35',0.00,80,0,'I','root@localhost','2019-05-11 17:11:39'),(385,'2019-05-11 16:11:37',0.00,81,0,'I','root@localhost','2019-05-11 17:11:44'),(386,'2019-05-11 16:11:39',3.00,82,0,'I','root@localhost','2019-05-11 17:11:44'),(387,'2019-05-11 16:11:41',0.00,83,0,'I','root@localhost','2019-05-11 17:11:44'),(388,'2019-05-11 16:11:43',0.00,84,0,'I','root@localhost','2019-05-11 17:11:49'),(389,'2019-05-11 16:11:44',3.00,85,0,'I','root@localhost','2019-05-11 17:11:49'),(390,'2019-05-11 16:11:46',0.00,86,0,'I','root@localhost','2019-05-11 17:11:49'),(391,'2019-05-11 16:11:48',2.00,87,0,'I','root@localhost','2019-05-11 17:11:54'),(392,'2019-05-11 16:11:50',0.00,88,0,'I','root@localhost','2019-05-11 17:11:54'),(393,'2019-05-11 16:11:52',0.00,89,0,'I','root@localhost','2019-05-11 17:11:59'),(394,'2019-05-11 16:11:54',3.00,90,0,'I','root@localhost','2019-05-11 17:11:59'),(395,'2019-05-11 16:11:55',0.00,91,0,'I','root@localhost','2019-05-11 17:11:59'),(396,'2019-05-11 16:11:57',0.00,92,0,'I','root@localhost','2019-05-11 17:12:04'),(397,'2019-05-11 16:11:59',0.00,93,0,'I','root@localhost','2019-05-11 17:12:04'),(398,'2019-05-11 16:12:01',0.00,94,0,'I','root@localhost','2019-05-11 17:12:04'),(399,'2019-05-11 16:12:03',3.00,95,0,'I','root@localhost','2019-05-11 17:12:10'),(400,'2019-05-11 16:12:04',2.00,96,0,'I','root@localhost','2019-05-11 17:12:10'),(401,'2019-05-11 16:12:06',0.00,97,0,'I','root@localhost','2019-05-11 17:12:10'),(402,'2019-05-11 16:12:08',0.00,98,0,'I','root@localhost','2019-05-11 17:12:15'),(403,'2019-05-11 16:12:10',0.00,99,0,'I','root@localhost','2019-05-11 17:12:15'),(404,'2019-05-11 16:12:12',1.00,100,0,'I','root@localhost','2019-05-11 17:12:15'),(405,'2019-05-11 16:12:13',1.00,101,0,'I','root@localhost','2019-05-11 17:12:20'),(406,'2019-05-11 16:12:15',0.00,102,0,'I','root@localhost','2019-05-11 17:12:20'),(407,'2019-05-11 16:12:17',0.00,103,0,'I','root@localhost','2019-05-11 17:12:25'),(408,'2019-05-11 16:12:19',3.00,104,0,'I','root@localhost','2019-05-11 17:12:25'),(409,'2019-05-11 16:12:21',3.00,105,0,'I','root@localhost','2019-05-11 17:12:25'),(410,'2019-05-11 16:12:23',0.00,106,0,'I','root@localhost','2019-05-11 17:12:30'),(411,'2019-05-11 16:12:25',0.00,107,0,'I','root@localhost','2019-05-11 17:12:30'),(412,'2019-05-11 16:12:27',0.00,108,0,'I','root@localhost','2019-05-11 17:12:30'),(413,'2019-05-11 16:12:29',3.00,109,0,'I','root@localhost','2019-05-11 17:12:35'),(414,'2019-05-11 16:12:30',0.00,110,0,'I','root@localhost','2019-05-11 17:12:35'),(415,'2019-05-11 16:12:32',0.00,111,0,'I','root@localhost','2019-05-11 17:12:35'),(416,'2019-05-11 16:12:34',0.00,112,0,'I','root@localhost','2019-05-11 17:12:40'),(417,'2019-05-11 16:12:36',0.00,113,0,'I','root@localhost','2019-05-11 17:12:40'),(418,'2019-05-11 16:12:38',0.00,114,0,'I','root@localhost','2019-05-11 17:12:40'),(419,'2019-05-11 16:12:39',0.00,115,0,'I','root@localhost','2019-05-11 17:12:45'),(420,'2019-05-11 16:12:41',0.00,116,0,'I','root@localhost','2019-05-11 17:12:45'),(421,'2019-05-11 16:12:43',2.00,117,0,'I','root@localhost','2019-05-11 17:12:50'),(422,'2019-05-11 16:12:45',0.00,118,0,'I','root@localhost','2019-05-11 17:12:50'),(423,'2019-05-11 16:12:47',0.00,119,0,'I','root@localhost','2019-05-11 17:12:50'),(424,'2019-05-11 16:12:49',0.00,120,0,'I','root@localhost','2019-05-11 17:15:30'),(425,'2019-05-11 16:15:19',0.00,121,0,'I','root@localhost','2019-05-11 17:15:30'),(426,'2019-05-11 16:15:20',3.00,122,0,'I','root@localhost','2019-05-11 17:15:30'),(427,'2019-05-11 16:15:22',0.00,123,0,'I','root@localhost','2019-05-11 17:15:30'),(428,'2019-05-11 16:15:24',0.00,124,0,'I','root@localhost','2019-05-11 17:15:30'),(429,'2019-05-11 16:15:26',2.00,125,0,'I','root@localhost','2019-05-11 17:15:30'),(430,'2019-05-11 16:15:28',0.00,126,0,'I','root@localhost','2019-05-11 17:15:30'),(431,'2019-05-11 16:15:30',0.00,127,0,'I','root@localhost','2019-05-11 17:15:36'),(432,'2019-05-11 16:15:31',0.00,128,0,'I','root@localhost','2019-05-11 17:15:36'),(433,'2019-05-11 16:15:33',3.00,129,0,'I','root@localhost','2019-05-11 17:15:36'),(434,'2019-05-11 16:15:35',0.00,130,0,'I','root@localhost','2019-05-11 17:15:41'),(435,'2019-05-11 16:15:37',0.00,131,0,'I','root@localhost','2019-05-11 17:15:41'),(436,'2019-05-11 16:15:39',0.00,132,0,'I','root@localhost','2019-05-11 17:15:46'),(437,'2019-05-11 16:15:40',3.00,133,0,'I','root@localhost','2019-05-11 17:15:46'),(438,'2019-05-11 16:15:42',0.00,134,0,'I','root@localhost','2019-05-11 17:15:46'),(439,'2019-05-11 16:15:44',0.00,135,0,'I','root@localhost','2019-05-11 17:15:51'),(440,'2019-05-11 16:15:46',0.00,136,0,'I','root@localhost','2019-05-11 17:15:51'),(441,'2019-05-11 16:15:48',0.00,137,0,'I','root@localhost','2019-05-11 17:15:51'),(442,'2019-05-11 16:15:49',0.00,138,0,'I','root@localhost','2019-05-11 17:15:56'),(443,'2019-05-11 16:15:51',0.00,139,0,'I','root@localhost','2019-05-11 17:15:56'),(444,'2019-05-11 16:15:53',0.00,140,0,'I','root@localhost','2019-05-11 17:15:56'),(445,'2019-05-11 16:15:55',0.00,141,0,'I','root@localhost','2019-05-11 17:16:01'),(446,'2019-05-11 16:15:57',1.00,142,0,'I','root@localhost','2019-05-11 17:16:01'),(447,'2019-05-11 16:15:58',0.00,143,0,'I','root@localhost','2019-05-11 17:16:01'),(448,'2019-05-11 16:16:00',0.00,144,0,'I','root@localhost','2019-05-11 17:16:06'),(449,'2019-05-11 16:16:02',0.00,145,0,'I','root@localhost','2019-05-11 17:16:06'),(450,'2019-05-11 16:16:04',0.00,146,0,'I','root@localhost','2019-05-11 17:16:11'),(451,'2019-05-11 16:16:06',0.00,147,0,'I','root@localhost','2019-05-11 17:16:11'),(452,'2019-05-11 16:16:07',3.00,148,0,'I','root@localhost','2019-05-11 17:16:11'),(453,'2019-05-11 16:16:09',0.00,149,0,'I','root@localhost','2019-05-11 17:16:16'),(454,'2019-05-11 16:16:11',3.00,150,0,'I','root@localhost','2019-05-11 17:16:16'),(455,'2019-05-11 16:16:13',3.00,151,0,'I','root@localhost','2019-05-11 17:16:16'),(456,'2019-05-11 16:16:15',3.00,152,0,'I','root@localhost','2019-05-11 17:16:21'),(457,'2019-05-11 16:16:17',0.00,153,0,'I','root@localhost','2019-05-11 17:16:21'),(458,'2019-05-11 16:16:18',0.00,154,0,'I','root@localhost','2019-05-11 17:16:21'),(459,'2019-05-11 16:16:20',0.00,155,0,'I','root@localhost','2019-05-11 17:16:26'),(460,'2019-05-11 16:16:22',3.00,156,0,'I','root@localhost','2019-05-11 17:16:26'),(461,'2019-05-11 16:16:24',0.00,157,0,'I','root@localhost','2019-05-11 17:16:26'),(462,'2019-05-11 16:16:26',0.00,158,0,'I','root@localhost','2019-05-11 17:16:31'),(463,'2019-05-11 16:16:27',0.00,159,0,'I','root@localhost','2019-05-11 17:16:31'),(464,'2019-05-11 16:16:29',0.00,160,0,'I','root@localhost','2019-05-11 17:16:36'),(465,'2019-05-11 16:16:31',0.00,161,0,'I','root@localhost','2019-05-11 17:16:36'),(466,'2019-05-11 16:16:33',0.00,162,0,'I','root@localhost','2019-05-11 17:16:36'),(467,'2019-05-11 16:16:35',3.00,163,0,'I','root@localhost','2019-05-11 17:16:41'),(468,'2019-05-11 16:16:36',2.00,164,0,'I','root@localhost','2019-05-11 17:16:41'),(469,'2019-05-11 16:16:38',3.00,165,0,'I','root@localhost','2019-05-11 17:16:42'),(470,'2019-05-11 16:16:40',1.00,166,0,'I','root@localhost','2019-05-11 17:16:47'),(471,'2019-05-11 16:16:42',0.00,167,0,'I','root@localhost','2019-05-11 17:16:47'),(472,'2019-05-11 16:16:44',0.00,168,0,'I','root@localhost','2019-05-11 17:16:47'),(473,'2019-05-11 16:16:45',0.00,169,0,'I','root@localhost','2019-05-11 17:16:52'),(474,'2019-05-11 16:16:47',2.00,170,0,'I','root@localhost','2019-05-11 17:16:52'),(475,'2019-05-11 16:16:49',0.00,171,0,'I','root@localhost','2019-05-11 17:16:52'),(476,'2019-05-11 16:16:51',0.00,172,0,'I','root@localhost','2019-05-11 17:16:57'),(477,'2019-05-11 16:16:53',3.00,173,0,'I','root@localhost','2019-05-11 17:16:57'),(478,'2019-05-11 16:16:55',3.00,174,0,'I','root@localhost','2019-05-11 17:17:02'),(479,'2019-05-11 16:16:56',0.00,175,0,'I','root@localhost','2019-05-11 17:17:02'),(480,'2019-05-11 16:16:58',0.00,176,0,'I','root@localhost','2019-05-11 17:17:02'),(481,'2019-05-11 16:17:00',0.00,177,0,'I','root@localhost','2019-05-11 17:17:07'),(482,'2019-05-11 16:17:02',3.00,178,0,'I','root@localhost','2019-05-11 17:17:07'),(483,'2019-05-11 16:17:04',0.00,179,0,'I','root@localhost','2019-05-11 17:17:07'),(484,'2019-05-11 16:17:05',0.00,180,0,'I','root@localhost','2019-05-11 17:17:12'),(485,'2019-05-11 16:17:07',0.00,181,0,'I','root@localhost','2019-05-11 17:17:12'),(486,'2019-05-11 16:17:09',3.00,182,0,'I','root@localhost','2019-05-11 17:17:12'),(487,'2019-05-11 16:17:11',0.00,183,0,'I','root@localhost','2019-05-11 17:17:17'),(488,'2019-05-11 16:17:13',0.00,184,0,'I','root@localhost','2019-05-11 17:17:17'),(489,'2019-05-11 16:17:14',3.00,185,0,'I','root@localhost','2019-05-11 17:17:17'),(490,'2019-05-11 16:17:16',3.00,186,0,'I','root@localhost','2019-05-11 17:17:22'),(491,'2019-05-11 16:17:18',0.00,187,0,'I','root@localhost','2019-05-11 17:17:22'),(492,'2019-05-11 16:17:20',0.00,188,0,'I','root@localhost','2019-05-11 17:17:27'),(493,'2019-05-11 16:17:22',0.00,189,0,'I','root@localhost','2019-05-11 17:17:27'),(494,'2019-05-11 16:17:23',0.00,190,0,'I','root@localhost','2019-05-11 17:17:27'),(495,'2019-05-11 16:17:25',0.00,191,0,'I','root@localhost','2019-05-11 17:17:32'),(496,'2019-05-11 16:17:27',0.00,192,0,'I','root@localhost','2019-05-11 17:17:32'),(497,'2019-05-11 16:17:29',0.00,193,0,'I','root@localhost','2019-05-11 17:17:32'),(498,'2019-05-11 16:17:30',0.00,194,0,'I','root@localhost','2019-05-11 17:17:37'),(499,'2019-05-11 16:17:32',0.00,195,0,'I','root@localhost','2019-05-11 17:17:37'),(500,'2019-05-11 16:17:34',0.00,196,0,'I','root@localhost','2019-05-11 17:17:37'),(501,'2019-05-11 16:17:36',0.00,197,0,'I','root@localhost','2019-05-11 17:17:42'),(502,'2019-05-11 16:17:38',3.00,198,0,'I','root@localhost','2019-05-11 17:17:42'),(503,'2019-05-11 16:17:39',0.00,199,0,'I','root@localhost','2019-05-11 17:17:42'),(504,'2019-05-11 16:17:41',0.00,200,0,'I','root@localhost','2019-05-11 17:17:47'),(505,'2019-05-11 16:17:43',0.00,201,0,'I','root@localhost','2019-05-11 17:17:47'),(506,'2019-05-11 16:17:45',3.00,202,0,'I','root@localhost','2019-05-11 17:17:48'),(507,'2019-05-11 16:17:47',0.00,203,0,'I','root@localhost','2019-05-11 17:17:53'),(508,'2019-05-11 16:17:49',3.00,204,0,'I','root@localhost','2019-05-11 17:17:53'),(509,'2019-05-11 16:17:50',0.00,205,0,'I','root@localhost','2019-05-11 17:17:58'),(510,'2019-05-11 16:17:52',0.00,206,0,'I','root@localhost','2019-05-11 17:17:58'),(511,'2019-05-11 16:17:54',3.00,207,0,'I','root@localhost','2019-05-11 17:17:58'),(512,'2019-05-11 16:17:56',0.00,208,0,'I','root@localhost','2019-05-11 17:18:03'),(513,'2019-05-11 16:17:58',0.00,209,0,'I','root@localhost','2019-05-11 17:18:03'),(514,'2019-05-11 16:17:59',0.00,210,0,'I','root@localhost','2019-05-11 17:18:03'),(515,'2019-05-11 16:18:01',3.00,211,0,'I','root@localhost','2019-05-11 17:18:08'),(516,'2019-05-11 16:18:03',3.00,212,0,'I','root@localhost','2019-05-11 17:18:08'),(517,'2019-05-11 16:18:05',0.00,213,0,'I','root@localhost','2019-05-11 17:18:08'),(518,'2019-05-11 16:18:07',0.00,214,0,'I','root@localhost','2019-05-11 17:18:13'),(519,'2019-05-11 16:18:08',0.00,215,0,'I','root@localhost','2019-05-11 17:18:13'),(520,'2019-05-11 16:18:10',0.00,216,0,'I','root@localhost','2019-05-11 17:18:13'),(521,'2019-05-11 16:18:12',0.00,217,0,'I','root@localhost','2019-05-11 17:18:18'),(522,'2019-05-11 16:18:14',0.00,218,0,'I','root@localhost','2019-05-11 17:18:18'),(523,'2019-05-11 16:18:16',0.00,219,0,'I','root@localhost','2019-05-11 17:18:23'),(524,'2019-05-11 16:18:17',0.00,220,0,'I','root@localhost','2019-05-11 17:18:23'),(525,'2019-05-11 16:18:19',0.00,221,0,'I','root@localhost','2019-05-11 17:18:23'),(526,'2019-05-11 16:18:21',2.00,222,0,'I','root@localhost','2019-05-11 17:18:28'),(527,'2019-05-11 16:18:23',0.00,223,0,'I','root@localhost','2019-05-11 17:18:28'),(528,'2019-05-11 16:18:25',2.00,224,0,'I','root@localhost','2019-05-11 17:18:28'),(529,'2019-05-11 16:18:27',0.00,225,0,'I','root@localhost','2019-05-11 17:18:33'),(530,'2019-05-11 16:18:28',0.00,226,0,'I','root@localhost','2019-05-11 17:18:33'),(531,'2019-05-11 16:18:30',0.00,227,0,'I','root@localhost','2019-05-11 17:18:33'),(532,'2019-05-11 16:18:32',3.00,1,0,'I','root@localhost','2019-05-11 17:19:05'),(533,'2019-05-11 16:18:50',0.00,2,0,'I','root@localhost','2019-05-11 17:19:05'),(534,'2019-05-11 16:18:52',2.00,3,0,'I','root@localhost','2019-05-11 17:19:05'),(535,'2019-05-11 16:18:54',0.00,4,0,'I','root@localhost','2019-05-11 17:19:05'),(536,'2019-05-11 16:18:55',3.00,5,0,'I','root@localhost','2019-05-11 17:19:05'),(537,'2019-05-11 16:18:57',3.00,6,0,'I','root@localhost','2019-05-11 17:19:05'),(538,'2019-05-11 16:18:59',0.00,7,0,'I','root@localhost','2019-05-11 17:19:05'),(539,'2019-05-11 16:19:01',0.00,8,0,'I','root@localhost','2019-05-11 17:19:05'),(540,'2019-05-11 16:19:04',3.00,9,0,'I','root@localhost','2019-05-11 17:19:10'),(541,'2019-05-11 16:19:06',0.00,10,0,'I','root@localhost','2019-05-11 17:19:10'),(542,'2019-05-11 16:19:08',0.00,11,0,'I','root@localhost','2019-05-11 17:19:15'),(543,'2019-05-11 16:19:10',0.00,12,0,'I','root@localhost','2019-05-11 17:19:15'),(544,'2019-05-11 16:19:12',0.00,13,0,'I','root@localhost','2019-05-11 17:19:15'),(545,'2019-05-11 16:19:14',0.00,14,0,'I','root@localhost','2019-05-11 17:19:20'),(546,'2019-05-11 16:19:15',0.00,15,0,'I','root@localhost','2019-05-11 17:19:20'),(547,'2019-05-11 16:19:17',0.00,16,0,'I','root@localhost','2019-05-11 17:19:20'),(548,'2019-05-11 16:19:19',0.00,17,0,'I','root@localhost','2019-05-11 17:19:25'),(549,'2019-05-11 16:19:21',3.00,18,0,'I','root@localhost','2019-05-11 17:19:25'),(550,'2019-05-11 16:19:23',0.00,19,0,'I','root@localhost','2019-05-11 17:19:25'),(551,'2019-05-11 16:19:24',1.00,20,0,'I','root@localhost','2019-05-11 17:19:31'),(552,'2019-05-11 16:19:26',0.00,21,0,'I','root@localhost','2019-05-11 17:19:31'),(553,'2019-05-11 16:19:28',0.00,22,0,'I','root@localhost','2019-05-11 17:19:36'),(554,'2019-05-11 16:19:30',0.00,23,0,'I','root@localhost','2019-05-11 17:19:36'),(555,'2019-05-11 16:19:32',0.00,24,0,'I','root@localhost','2019-05-11 17:19:36'),(556,'2019-05-11 16:19:33',3.00,25,0,'I','root@localhost','2019-05-11 17:19:41'),(557,'2019-05-11 16:19:35',0.00,26,0,'I','root@localhost','2019-05-11 17:19:41'),(558,'2019-05-11 16:19:37',0.00,27,0,'I','root@localhost','2019-05-11 17:19:41'),(559,'2019-05-11 16:19:39',0.00,28,0,'I','root@localhost','2019-05-11 17:19:46'),(560,'2019-05-11 16:19:41',0.00,29,0,'I','root@localhost','2019-05-11 17:19:46'),(561,'2019-05-11 16:19:42',0.00,30,0,'I','root@localhost','2019-05-11 17:19:46'),(562,'2019-05-11 16:19:44',1.00,31,0,'I','root@localhost','2019-05-11 17:19:51'),(563,'2019-05-11 16:19:46',0.00,32,0,'I','root@localhost','2019-05-11 17:19:51'),(564,'2019-05-11 16:19:48',0.00,33,0,'I','root@localhost','2019-05-11 17:19:51'),(565,'2019-04-09 13:59:32',1.00,34,0,'I','root@localhost','2019-05-11 17:20:11'),(566,'2019-04-09 13:59:32',1.00,35,0,'I','root@localhost','2019-05-11 17:20:12'),(567,'2019-04-09 13:59:32',1.00,36,0,'I','root@localhost','2019-05-11 17:21:04'),(568,'2019-04-09 13:59:32',1.00,37,0,'I','root@localhost','2019-05-11 17:22:58'),(569,'2019-04-09 13:59:32',1.00,38,0,'I','root@localhost','2019-05-11 17:22:59'),(570,'2019-04-09 13:59:32',1.00,39,0,'I','root@localhost','2019-05-11 17:22:59'),(571,'2019-04-09 13:59:32',1.00,1,0,'I','root@localhost','2019-05-11 17:25:56'),(572,'2019-04-09 13:59:32',1.00,2,0,'I','root@localhost','2019-05-11 17:25:57'),(573,'2019-04-09 13:59:32',1.00,3,0,'I','root@localhost','2019-05-11 17:26:10'),(574,'2019-04-09 13:59:32',1.00,4,0,'I','root@localhost','2019-05-11 17:26:10'),(575,'2019-04-09 13:59:32',1.00,5,0,'I','root@localhost','2019-05-11 17:26:11'),(576,'2019-04-09 13:59:32',1.00,6,0,'I','root@localhost','2019-05-11 17:26:11'),(577,'2019-04-09 13:59:32',1.00,7,0,'I','root@localhost','2019-05-11 17:26:11'),(578,'2019-04-09 13:59:32',1.00,8,0,'I','root@localhost','2019-05-11 17:26:11'),(579,'2019-04-09 13:59:32',1.00,9,0,'I','root@localhost','2019-05-11 17:26:21'),(580,'2019-05-11 16:26:46',3.00,10,0,'I','root@localhost','2019-05-11 17:27:05'),(581,'2019-05-11 16:26:48',0.00,11,0,'I','root@localhost','2019-05-11 17:27:05'),(582,'2019-05-11 16:26:50',0.00,12,0,'I','root@localhost','2019-05-11 17:27:05'),(583,'2019-05-11 16:26:52',0.00,13,0,'I','root@localhost','2019-05-11 17:27:05'),(584,'2019-05-11 16:26:54',0.00,14,0,'I','root@localhost','2019-05-11 17:27:05'),(585,'2019-05-11 16:26:55',0.00,15,0,'I','root@localhost','2019-05-11 17:27:05'),(586,'2019-05-11 16:26:57',0.00,16,0,'I','root@localhost','2019-05-11 17:27:05'),(587,'2019-05-11 16:26:59',3.00,17,0,'I','root@localhost','2019-05-11 17:27:05'),(588,'2019-05-11 16:27:01',3.00,18,0,'I','root@localhost','2019-05-11 17:27:05'),(589,'2019-05-11 16:27:03',0.00,19,0,'I','root@localhost','2019-05-11 17:27:05'),(590,'2019-05-11 16:27:05',0.00,20,0,'I','root@localhost','2019-05-11 17:27:15'),(591,'2019-05-11 16:27:06',0.00,21,0,'I','root@localhost','2019-05-11 17:27:15'),(592,'2019-05-11 16:27:08',0.00,22,0,'I','root@localhost','2019-05-11 17:27:15'),(593,'2019-05-11 16:27:10',0.00,23,0,'I','root@localhost','2019-05-11 17:27:15'),(594,'2019-05-11 16:27:12',0.00,24,0,'I','root@localhost','2019-05-11 17:27:15'),(595,'2019-05-11 16:27:14',1.00,25,0,'I','root@localhost','2019-05-11 17:27:25'),(596,'2019-05-11 16:27:15',0.00,26,0,'I','root@localhost','2019-05-11 17:27:25'),(597,'2019-05-11 16:27:17',0.00,27,0,'I','root@localhost','2019-05-11 17:27:26'),(598,'2019-05-11 16:27:19',0.00,28,0,'I','root@localhost','2019-05-11 17:27:26'),(599,'2019-05-11 16:27:21',0.00,29,0,'I','root@localhost','2019-05-11 17:27:26'),(600,'2019-05-11 16:27:23',0.00,30,0,'I','root@localhost','2019-05-11 17:27:26'),(601,'2019-05-11 16:27:24',0.00,31,0,'I','root@localhost','2019-05-11 17:27:36'),(602,'2019-05-11 16:27:26',3.00,32,0,'I','root@localhost','2019-05-11 17:27:36'),(603,'2019-05-11 16:27:28',3.00,33,0,'I','root@localhost','2019-05-11 17:27:36'),(604,'2019-05-11 16:27:30',3.00,34,0,'I','root@localhost','2019-05-11 17:27:36'),(605,'2019-05-11 16:27:31',3.00,35,0,'I','root@localhost','2019-05-11 17:27:36'),(606,'2019-05-11 16:27:35',3.00,36,0,'I','root@localhost','2019-05-11 17:27:46'),(607,'2019-05-11 16:27:37',0.00,37,0,'I','root@localhost','2019-05-11 17:27:46'),(608,'2019-05-11 16:27:39',2.00,38,0,'I','root@localhost','2019-05-11 17:27:46'),(609,'2019-05-11 16:27:40',3.00,39,0,'I','root@localhost','2019-05-11 17:27:46'),(610,'2019-05-11 16:27:42',0.00,40,0,'I','root@localhost','2019-05-11 17:27:46'),(611,'2019-05-11 16:27:44',0.00,41,0,'I','root@localhost','2019-05-11 17:27:56'),(612,'2019-05-11 16:27:46',0.00,42,0,'I','root@localhost','2019-05-11 17:27:56'),(613,'2019-05-11 16:27:48',0.00,43,0,'I','root@localhost','2019-05-11 17:27:56'),(614,'2019-05-11 16:27:50',3.00,44,0,'I','root@localhost','2019-05-11 17:27:56'),(615,'2019-05-11 16:27:51',0.00,45,0,'I','root@localhost','2019-05-11 17:27:56'),(616,'2019-05-11 16:27:53',0.00,46,0,'I','root@localhost','2019-05-11 17:27:56'),(617,'2019-05-11 16:27:55',3.00,47,0,'I','root@localhost','2019-05-11 17:28:06'),(618,'2019-05-11 16:27:57',0.00,48,0,'I','root@localhost','2019-05-11 17:28:06'),(619,'2019-05-11 16:27:59',0.00,49,0,'I','root@localhost','2019-05-11 17:28:06'),(620,'2019-05-11 16:28:00',0.00,50,0,'I','root@localhost','2019-05-11 17:28:06'),(621,'2019-05-11 16:28:02',0.00,51,0,'I','root@localhost','2019-05-11 17:28:06'),(622,'2019-05-11 16:28:04',0.00,52,0,'I','root@localhost','2019-05-11 17:28:16'),(623,'2019-05-11 16:28:06',0.00,53,0,'I','root@localhost','2019-05-11 17:28:16'),(624,'2019-05-11 16:28:08',3.00,54,0,'I','root@localhost','2019-05-11 17:28:16'),(625,'2019-05-11 16:28:09',0.00,55,0,'I','root@localhost','2019-05-11 17:28:16'),(626,'2019-05-11 16:28:11',0.00,56,0,'I','root@localhost','2019-05-11 17:28:16'),(627,'2019-05-11 16:28:13',0.00,57,0,'I','root@localhost','2019-05-11 17:28:16'),(628,'2019-05-11 16:28:15',0.00,58,0,'I','root@localhost','2019-05-11 17:28:26'),(629,'2019-05-11 16:28:17',0.00,59,0,'I','root@localhost','2019-05-11 17:28:26'),(630,'2019-05-11 16:28:18',0.00,60,0,'I','root@localhost','2019-05-11 17:28:26'),(631,'2019-05-11 16:28:20',0.00,61,0,'I','root@localhost','2019-05-11 17:28:26'),(632,'2019-05-11 16:28:22',0.00,62,0,'I','root@localhost','2019-05-11 17:28:26'),(633,'2019-05-11 16:28:24',0.00,63,0,'I','root@localhost','2019-05-11 17:28:36'),(634,'2019-05-11 16:28:26',2.00,64,0,'I','root@localhost','2019-05-11 17:28:36'),(635,'2019-05-11 16:28:28',0.00,65,0,'I','root@localhost','2019-05-11 17:28:36'),(636,'2019-05-11 16:28:29',3.00,66,0,'I','root@localhost','2019-05-11 17:28:36'),(637,'2019-05-11 16:28:31',0.00,67,0,'I','root@localhost','2019-05-11 17:28:36'),(638,'2019-05-11 16:28:33',0.00,68,0,'I','root@localhost','2019-05-11 17:28:36'),(639,'2019-05-11 16:28:35',0.00,69,0,'I','root@localhost','2019-05-11 17:28:46'),(640,'2019-05-11 16:28:37',0.00,70,0,'I','root@localhost','2019-05-11 17:28:46'),(641,'2019-05-11 16:28:38',0.00,71,0,'I','root@localhost','2019-05-11 17:28:46'),(642,'2019-05-11 16:28:40',3.00,72,0,'I','root@localhost','2019-05-11 17:28:46'),(643,'2019-05-11 16:28:42',0.00,73,0,'I','root@localhost','2019-05-11 17:28:46'),(644,'2019-05-11 16:28:44',0.00,74,0,'I','root@localhost','2019-05-11 17:28:46'),(645,'2019-05-11 16:28:46',0.00,75,0,'I','root@localhost','2019-05-11 17:28:56'),(646,'2019-05-11 16:28:47',0.00,76,0,'I','root@localhost','2019-05-11 17:28:56'),(647,'2019-05-11 16:28:49',0.00,77,0,'I','root@localhost','2019-05-11 17:28:56'),(648,'2019-05-11 16:28:51',2.00,78,0,'I','root@localhost','2019-05-11 17:28:56'),(649,'2019-05-11 16:28:53',2.00,79,0,'I','root@localhost','2019-05-11 17:28:56'),(650,'2019-05-11 16:28:55',0.00,80,0,'I','root@localhost','2019-05-11 17:29:06'),(651,'2019-05-11 16:28:56',0.00,81,0,'I','root@localhost','2019-05-11 17:29:06'),(652,'2019-05-11 16:28:58',0.00,82,0,'I','root@localhost','2019-05-11 17:29:06'),(653,'2019-05-11 16:29:00',0.00,83,0,'I','root@localhost','2019-05-11 17:29:06'),(654,'2019-05-11 16:29:02',3.00,84,0,'I','root@localhost','2019-05-11 17:29:07'),(655,'2019-05-11 16:29:04',0.00,85,0,'I','root@localhost','2019-05-11 17:29:07'),(656,'2019-05-11 16:29:05',3.00,86,0,'I','root@localhost','2019-05-11 17:29:17'),(657,'2019-05-11 16:29:07',0.00,87,0,'I','root@localhost','2019-05-11 17:29:17'),(658,'2019-05-11 16:29:09',0.00,88,0,'I','root@localhost','2019-05-11 17:29:17'),(659,'2019-05-11 16:29:11',2.00,89,0,'I','root@localhost','2019-05-11 17:29:17'),(660,'2019-05-11 16:29:13',0.00,90,0,'I','root@localhost','2019-05-11 17:29:17'),(661,'2019-04-09 13:59:32',1.00,91,0,'I','root@localhost','2019-05-12 08:46:25'),(662,'2019-04-09 13:59:32',1.00,92,0,'I','root@localhost','2019-05-12 08:48:12'),(663,'2019-04-09 13:59:32',1.00,93,0,'I','root@localhost','2019-05-12 08:48:46'),(664,'2019-04-09 13:59:32',35.00,94,0,'I','root@localhost','2019-05-12 08:48:47'),(665,'2019-04-09 13:59:32',500000.00,95,0,'I','root@localhost','2019-05-12 08:48:48'),(666,'2019-04-09 13:59:32',2000.00,96,0,'I','root@localhost','2019-05-12 08:48:48'),(667,'2019-04-09 13:59:32',1.00,97,0,'I','root@localhost','2019-05-12 08:50:34'),(668,'2019-04-09 13:59:32',500000.00,98,0,'I','root@localhost','2019-05-12 08:51:04'),(669,'2019-04-09 13:59:32',1.00,1,0,'I','root@localhost','2019-05-12 08:52:04'),(670,'2019-04-09 13:59:32',35.00,2,0,'I','root@localhost','2019-05-12 08:52:06'),(671,'2019-04-09 13:59:32',35.00,3,0,'I','root@localhost','2019-05-12 08:52:07'),(672,'2019-04-09 13:59:32',35.00,4,0,'I','root@localhost','2019-05-12 08:52:08'),(673,'2019-04-09 13:59:32',35.00,5,0,'I','root@localhost','2019-05-12 08:52:09'),(674,'2019-04-09 13:59:32',35.00,6,0,'I','root@localhost','2019-05-12 08:52:10'),(675,'2019-04-09 13:59:32',500000.00,7,0,'I','root@localhost','2019-05-12 08:52:12'),(676,'2019-04-09 13:59:32',500000.00,8,0,'I','root@localhost','2019-05-12 08:52:13'),(677,'2019-04-09 13:59:32',500000.00,9,0,'I','root@localhost','2019-05-12 08:52:14'),(678,'2019-04-09 13:59:32',2000.00,10,0,'I','root@localhost','2019-05-12 08:52:15'),(679,'2019-04-09 13:59:32',2000.00,11,0,'I','root@localhost','2019-05-12 08:52:16'),(680,'2019-04-09 13:59:32',2000.00,12,0,'I','root@localhost','2019-05-12 08:52:17'),(681,'2019-04-09 13:59:32',35.00,13,0,'I','root@localhost','2019-05-12 08:52:18'),(682,'2019-04-09 13:59:32',2000.00,14,0,'I','root@localhost','2019-05-12 08:53:07'),(683,'2019-04-09 13:59:32',500000.00,15,0,'I','root@localhost','2019-05-12 08:53:07'),(684,'2019-04-09 13:59:32',500000.00,16,0,'I','root@localhost','2019-05-12 08:53:20'),(685,'2019-04-09 13:59:32',35.00,17,0,'I','root@localhost','2019-05-12 08:53:43'),(686,'2019-04-09 13:59:32',500000.00,18,0,'I','root@localhost','2019-05-12 08:53:44');
/*!40000 ALTER TABLE `medicoesluminosidade_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicoestemperatura`
--

DROP TABLE IF EXISTS `medicoestemperatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicoestemperatura` (
  `IDMedicao` int(11) NOT NULL,
  `ValorMedicaoTemperatura` decimal(8,2) NOT NULL,
  `DataHoraMedicao` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`IDMedicao`),
  UNIQUE KEY `IDMedicao_UNIQUE` (`IDMedicao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicoestemperatura`
--

LOCK TABLES `medicoestemperatura` WRITE;
/*!40000 ALTER TABLE `medicoestemperatura` DISABLE KEYS */;
INSERT INTO `medicoestemperatura` VALUES (1,35.00,'2019-04-09 13:59:32'),(2,35.00,'2019-04-09 13:59:32'),(3,40.00,'2019-04-09 13:59:32'),(4,30.00,'2019-04-09 13:59:32'),(5,50.00,'2019-04-09 13:59:32'),(6,5.00,'2019-04-09 13:59:32'),(7,5.00,'2019-04-09 13:59:32'),(8,11.00,'2019-04-09 13:59:32'),(9,30.00,'2019-04-09 13:59:32'),(10,30.00,'2019-04-09 13:59:32'),(11,40.00,'2019-04-09 13:59:32');
/*!40000 ALTER TABLE `medicoestemperatura` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `medicoestemperatura_AFTER_INSERT` AFTER INSERT ON `medicoestemperatura` FOR EACH ROW BEGIN
	insert into medicoestemperatura_log (
                                        DataHoraMedicao_NEW, 
                                        ValorMedicaoTemperatura_NEW, 
                                        IDMedicao_NEW, 
                                        Operacao, 
                                        Utilizador, 
                                        DataHora
                                        )
	values (
            new.DataHoraMedicao,
            new.ValorMedicaoTemperatura,
            new.IDMedicao,
            'I',
            current_user(),
            now()
            );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `medicoestemperatura_log`
--

DROP TABLE IF EXISTS `medicoestemperatura_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicoestemperatura_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DataHoraMedicao_NEW` timestamp NULL DEFAULT NULL,
  `ValorMedicaoTemperatura_NEW` decimal(8,2) DEFAULT NULL,
  `IDMedicao_NEW` int(11) DEFAULT NULL,
  `Flag_Migracao` tinyint(4) NOT NULL DEFAULT '0',
  `Operacao` varchar(20) NOT NULL,
  `Utilizador` varchar(45) NOT NULL,
  `DataHora` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1935 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicoestemperatura_log`
--

LOCK TABLES `medicoestemperatura_log` WRITE;
/*!40000 ALTER TABLE `medicoestemperatura_log` DISABLE KEYS */;
INSERT INTO `medicoestemperatura_log` VALUES (1,'0000-00-00 00:00:00',30.00,1,1,'I','root@localhost.com','0000-00-00 00:00:00'),(2,'0000-00-00 00:00:00',30.00,2,1,'I','root@localhost.com','0000-00-00 00:00:00'),(3,'0000-00-00 00:00:00',30.00,3,1,'I','root@localhost.com','0000-00-00 00:00:00'),(4,'0000-00-00 00:00:00',30.00,4,1,'I','root@localhost.com','0000-00-00 00:00:00'),(5,'0000-00-00 00:00:00',30.00,5,1,'I','root@localhost.com','0000-00-00 00:00:00'),(6,'0000-00-00 00:00:00',30.00,6,1,'I','root@localhost.com','0000-00-00 00:00:00'),(7,'0000-00-00 00:00:00',30.00,7,1,'I','root@localhost.com','0000-00-00 00:00:00'),(8,'0000-00-00 00:00:00',30.00,8,1,'I','root@localhost.com','0000-00-00 00:00:00'),(9,'0000-00-00 00:00:00',30.00,9,1,'I','root@localhost.com','0000-00-00 00:00:00'),(10,'0000-00-00 00:00:00',30.00,10,1,'I','root@localhost.com','0000-00-00 00:00:00'),(11,'0000-00-00 00:00:00',30.00,11,1,'I','root@localhost.com','0000-00-00 00:00:00'),(12,'0000-00-00 00:00:00',30.00,12,1,'I','root@localhost.com','0000-00-00 00:00:00'),(13,'0000-00-00 00:00:00',30.00,13,1,'I','root@localhost.com','0000-00-00 00:00:00'),(14,'0000-00-00 00:00:00',30.00,14,1,'I','root@localhost.com','0000-00-00 00:00:00'),(15,'0000-00-00 00:00:00',30.00,15,1,'I','root@localhost.com','0000-00-00 00:00:00'),(16,'0000-00-00 00:00:00',30.00,16,1,'I','root@localhost.com','0000-00-00 00:00:00'),(17,'0000-00-00 00:00:00',30.00,17,1,'I','root@localhost.com','0000-00-00 00:00:00'),(18,'0000-00-00 00:00:00',30.00,18,1,'I','root@localhost.com','0000-00-00 00:00:00'),(19,'0000-00-00 00:00:00',30.00,19,1,'I','root@localhost.com','0000-00-00 00:00:00'),(20,'0000-00-00 00:00:00',30.00,20,1,'I','root@localhost.com','0000-00-00 00:00:00'),(21,'0000-00-00 00:00:00',30.00,21,1,'I','root@localhost.com','0000-00-00 00:00:00'),(22,'0000-00-00 00:00:00',30.00,22,1,'I','root@localhost.com','0000-00-00 00:00:00'),(23,'0000-00-00 00:00:00',30.00,23,1,'I','root@localhost.com','0000-00-00 00:00:00'),(24,'0000-00-00 00:00:00',30.00,24,1,'I','root@localhost.com','0000-00-00 00:00:00'),(25,'0000-00-00 00:00:00',30.00,25,1,'I','root@localhost.com','0000-00-00 00:00:00'),(26,'0000-00-00 00:00:00',30.00,26,1,'I','root@localhost.com','0000-00-00 00:00:00'),(27,'0000-00-00 00:00:00',30.00,27,1,'I','root@localhost.com','0000-00-00 00:00:00'),(28,'0000-00-00 00:00:00',30.00,28,1,'I','root@localhost.com','0000-00-00 00:00:00'),(29,'0000-00-00 00:00:00',30.00,29,1,'I','root@localhost.com','0000-00-00 00:00:00'),(30,'0000-00-00 00:00:00',30.00,30,1,'I','root@localhost.com','0000-00-00 00:00:00'),(31,'0000-00-00 00:00:00',30.00,31,1,'I','root@localhost.com','0000-00-00 00:00:00'),(32,'0000-00-00 00:00:00',30.00,32,1,'I','root@localhost.com','0000-00-00 00:00:00'),(33,'0000-00-00 00:00:00',30.00,33,1,'I','root@localhost.com','0000-00-00 00:00:00'),(34,'0000-00-00 00:00:00',30.00,34,1,'I','root@localhost.com','0000-00-00 00:00:00'),(35,'0000-00-00 00:00:00',30.00,35,1,'I','root@localhost.com','0000-00-00 00:00:00'),(36,'0000-00-00 00:00:00',30.00,36,1,'I','root@localhost.com','0000-00-00 00:00:00'),(37,'0000-00-00 00:00:00',30.00,37,1,'I','root@localhost.com','0000-00-00 00:00:00'),(38,'0000-00-00 00:00:00',30.00,38,1,'I','root@localhost.com','0000-00-00 00:00:00'),(39,'0000-00-00 00:00:00',30.00,39,1,'I','root@localhost.com','0000-00-00 00:00:00'),(40,'0000-00-00 00:00:00',30.00,40,1,'I','root@localhost.com','0000-00-00 00:00:00'),(41,'0000-00-00 00:00:00',30.00,41,1,'I','root@localhost.com','0000-00-00 00:00:00'),(42,'0000-00-00 00:00:00',30.00,42,1,'I','root@localhost.com','0000-00-00 00:00:00'),(43,'0000-00-00 00:00:00',30.00,43,1,'I','root@localhost.com','0000-00-00 00:00:00'),(44,'0000-00-00 00:00:00',30.00,44,1,'I','root@localhost.com','0000-00-00 00:00:00'),(45,'0000-00-00 00:00:00',30.00,45,1,'I','root@localhost.com','0000-00-00 00:00:00'),(46,'0000-00-00 00:00:00',30.00,46,1,'I','root@localhost.com','0000-00-00 00:00:00'),(47,'0000-00-00 00:00:00',30.00,47,1,'I','root@localhost.com','0000-00-00 00:00:00'),(48,'0000-00-00 00:00:00',30.00,48,1,'I','root@localhost.com','0000-00-00 00:00:00'),(49,'0000-00-00 00:00:00',30.00,49,1,'I','root@localhost.com','0000-00-00 00:00:00'),(50,'0000-00-00 00:00:00',30.00,50,1,'I','root@localhost.com','0000-00-00 00:00:00'),(51,'0000-00-00 00:00:00',30.00,51,1,'I','root@localhost.com','0000-00-00 00:00:00'),(52,'0000-00-00 00:00:00',30.00,52,1,'I','root@localhost.com','0000-00-00 00:00:00'),(53,'0000-00-00 00:00:00',30.00,53,1,'I','root@localhost.com','0000-00-00 00:00:00'),(54,'0000-00-00 00:00:00',30.00,54,1,'I','root@localhost.com','0000-00-00 00:00:00'),(55,'0000-00-00 00:00:00',30.00,55,1,'I','root@localhost.com','0000-00-00 00:00:00'),(56,'0000-00-00 00:00:00',30.00,56,1,'I','root@localhost.com','0000-00-00 00:00:00'),(57,'0000-00-00 00:00:00',30.00,57,1,'I','root@localhost.com','0000-00-00 00:00:00'),(58,'0000-00-00 00:00:00',30.00,58,1,'I','root@localhost.com','0000-00-00 00:00:00'),(59,'0000-00-00 00:00:00',30.00,59,1,'I','root@localhost.com','0000-00-00 00:00:00'),(60,'0000-00-00 00:00:00',30.00,60,1,'I','root@localhost.com','0000-00-00 00:00:00'),(61,'0000-00-00 00:00:00',30.00,61,1,'I','root@localhost.com','0000-00-00 00:00:00'),(62,'0000-00-00 00:00:00',30.00,62,1,'I','root@localhost.com','0000-00-00 00:00:00'),(63,'0000-00-00 00:00:00',30.00,63,1,'I','root@localhost.com','0000-00-00 00:00:00'),(64,'0000-00-00 00:00:00',30.00,64,1,'I','root@localhost.com','0000-00-00 00:00:00'),(65,'0000-00-00 00:00:00',30.00,65,1,'I','root@localhost.com','0000-00-00 00:00:00'),(66,'0000-00-00 00:00:00',30.00,66,1,'I','root@localhost.com','0000-00-00 00:00:00'),(67,'0000-00-00 00:00:00',30.00,67,1,'I','root@localhost.com','0000-00-00 00:00:00'),(68,'0000-00-00 00:00:00',30.00,68,1,'I','root@localhost.com','0000-00-00 00:00:00'),(69,'0000-00-00 00:00:00',30.00,69,1,'I','root@localhost.com','0000-00-00 00:00:00'),(70,'0000-00-00 00:00:00',30.00,70,1,'I','root@localhost.com','0000-00-00 00:00:00'),(71,'0000-00-00 00:00:00',30.00,71,1,'I','root@localhost.com','0000-00-00 00:00:00'),(72,'0000-00-00 00:00:00',30.00,72,1,'I','root@localhost.com','0000-00-00 00:00:00'),(73,'0000-00-00 00:00:00',30.00,73,1,'I','root@localhost.com','0000-00-00 00:00:00'),(74,'0000-00-00 00:00:00',30.00,74,1,'I','root@localhost.com','0000-00-00 00:00:00'),(75,'0000-00-00 00:00:00',30.00,75,1,'I','root@localhost.com','0000-00-00 00:00:00'),(76,'0000-00-00 00:00:00',30.00,76,1,'I','root@localhost.com','0000-00-00 00:00:00'),(77,'0000-00-00 00:00:00',30.00,77,1,'I','root@localhost.com','0000-00-00 00:00:00'),(78,'0000-00-00 00:00:00',30.00,78,1,'I','root@localhost.com','0000-00-00 00:00:00'),(79,'0000-00-00 00:00:00',30.00,79,1,'I','root@localhost.com','0000-00-00 00:00:00'),(80,'0000-00-00 00:00:00',30.00,80,1,'I','root@localhost.com','0000-00-00 00:00:00'),(81,'0000-00-00 00:00:00',30.00,81,1,'I','root@localhost.com','0000-00-00 00:00:00'),(82,'0000-00-00 00:00:00',30.00,82,1,'I','root@localhost.com','0000-00-00 00:00:00'),(83,'0000-00-00 00:00:00',30.00,83,1,'I','root@localhost.com','0000-00-00 00:00:00'),(84,'0000-00-00 00:00:00',30.00,84,1,'I','root@localhost.com','0000-00-00 00:00:00'),(85,'0000-00-00 00:00:00',30.00,85,1,'I','root@localhost.com','0000-00-00 00:00:00'),(86,'0000-00-00 00:00:00',30.00,86,1,'I','root@localhost.com','0000-00-00 00:00:00'),(87,'0000-00-00 00:00:00',30.00,87,1,'I','root@localhost.com','0000-00-00 00:00:00'),(88,'0000-00-00 00:00:00',30.00,88,1,'I','root@localhost.com','0000-00-00 00:00:00'),(89,'0000-00-00 00:00:00',30.00,89,1,'I','root@localhost.com','0000-00-00 00:00:00'),(90,'0000-00-00 00:00:00',30.00,90,1,'I','root@localhost.com','0000-00-00 00:00:00'),(91,'0000-00-00 00:00:00',30.00,91,1,'I','root@localhost.com','0000-00-00 00:00:00'),(92,'0000-00-00 00:00:00',30.00,92,1,'I','root@localhost.com','0000-00-00 00:00:00'),(93,'0000-00-00 00:00:00',30.00,93,1,'I','root@localhost.com','0000-00-00 00:00:00'),(94,'0000-00-00 00:00:00',30.00,94,1,'I','root@localhost.com','0000-00-00 00:00:00'),(95,'0000-00-00 00:00:00',30.00,95,1,'I','root@localhost.com','0000-00-00 00:00:00'),(96,'0000-00-00 00:00:00',30.00,96,1,'I','root@localhost.com','0000-00-00 00:00:00'),(97,'0000-00-00 00:00:00',30.00,97,1,'I','root@localhost.com','0000-00-00 00:00:00'),(98,'0000-00-00 00:00:00',30.00,98,1,'I','root@localhost.com','0000-00-00 00:00:00'),(99,'0000-00-00 00:00:00',30.00,99,1,'I','root@localhost.com','0000-00-00 00:00:00'),(100,'0000-00-00 00:00:00',30.00,100,1,'I','root@localhost.com','0000-00-00 00:00:00'),(101,'2019-04-21 09:11:31',0.00,1,0,'I','root@localhost','2019-04-21 09:11:31'),(102,'2019-04-21 09:12:06',22.40,2,0,'I','root@localhost','2019-04-21 09:12:06'),(103,'0000-00-00 00:00:00',22.40,3,0,'I','root@localhost','2019-04-21 09:12:43'),(104,'0000-00-00 00:00:00',22.40,4,0,'I','root@localhost','2019-04-21 09:13:07'),(105,'0000-00-00 00:00:00',0.00,5,0,'I','root@localhost','2019-04-21 09:15:59'),(106,'2019-04-09 13:59:32',0.00,6,0,'I','root@localhost','2019-04-21 09:17:19'),(107,'2019-04-09 13:59:32',22.45,7,0,'I','root@localhost','2019-04-21 09:17:43'),(108,'2019-04-09 13:59:32',20.35,8,0,'I','root@localhost','2019-04-21 09:49:14'),(109,'2019-04-09 13:59:32',5.00,9,0,'I','root@localhost','2019-05-01 14:28:43'),(110,'2019-04-09 13:59:32',5.00,10,0,'I','root@localhost','2019-05-01 14:28:50'),(111,'2019-04-09 13:59:32',5.00,11,0,'I','root@localhost','2019-05-01 14:29:57'),(112,'2019-04-09 13:59:32',5.00,12,0,'I','root@localhost','2019-05-01 14:43:43'),(113,'2019-04-09 13:59:32',5.00,13,0,'I','root@localhost','2019-05-01 14:47:52'),(114,'2019-04-09 13:59:32',5.00,14,0,'I','root@localhost','2019-05-01 14:48:37'),(115,'2019-04-09 13:59:32',5.00,15,0,'I','root@localhost','2019-05-01 14:49:52'),(116,'2019-04-09 13:59:32',5.00,16,0,'I','root@localhost','2019-05-01 14:50:59'),(117,'2019-04-09 13:59:32',11.90,17,0,'I','root@localhost','2019-05-01 14:51:27'),(118,'2019-04-09 13:59:32',6.00,18,0,'I','root@localhost','2019-05-01 14:51:28'),(119,'2019-04-09 13:59:32',11.90,19,0,'I','root@localhost','2019-05-01 14:57:15'),(120,'2019-04-09 13:59:32',39.00,20,0,'I','root@localhost','2019-05-01 14:57:30'),(121,'2019-04-09 13:59:32',39.10,21,0,'I','root@localhost','2019-05-01 14:57:34'),(122,'2019-04-09 13:59:32',39.20,22,0,'I','root@localhost','2019-05-01 14:57:41'),(123,'2019-04-09 13:59:32',40.00,23,0,'I','root@localhost','2019-05-01 14:57:54'),(124,'2019-04-09 13:59:32',40.00,24,0,'I','root@localhost','2019-05-01 14:58:03'),(125,'2019-04-09 13:59:32',39.50,25,0,'I','root@localhost','2019-05-01 14:58:17'),(126,'2019-04-09 13:59:32',39.50,26,0,'I','root@localhost','2019-05-01 14:58:49'),(127,'2019-04-09 13:59:32',39.50,27,0,'I','root@localhost','2019-05-01 15:03:21'),(128,'2019-04-09 13:59:32',39.50,28,0,'I','root@localhost','2019-05-01 15:03:25'),(129,'2019-04-09 13:59:32',39.50,29,0,'I','root@localhost','2019-05-01 15:04:05'),(130,'2019-04-09 13:59:32',39.50,30,0,'I','root@localhost','2019-05-01 15:05:50'),(131,'2019-04-09 13:59:32',11.90,31,0,'I','root@localhost','2019-05-01 15:07:01'),(132,'2019-04-09 13:59:32',10.90,32,0,'I','root@localhost','2019-05-01 15:07:06'),(133,'2019-04-09 13:59:32',39.50,33,0,'I','root@localhost','2019-05-01 15:12:25'),(134,'2019-04-09 13:59:32',10.90,34,0,'I','root@localhost','2019-05-01 15:12:27'),(135,'2019-04-09 13:59:32',5.00,1,0,'I','root@localhost','2019-05-01 19:12:31'),(136,'2019-04-09 13:59:32',5.00,2,0,'I','root@localhost','2019-05-01 19:13:41'),(137,'2019-04-09 13:59:32',6.00,3,0,'I','root@localhost','2019-05-01 19:13:43'),(138,'2019-04-09 13:59:32',11.90,4,0,'I','root@localhost','2019-05-01 19:13:44'),(139,'2019-04-09 13:59:32',10.90,5,0,'I','root@localhost','2019-05-01 19:13:45'),(140,'2019-04-09 13:59:32',39.00,6,0,'I','root@localhost','2019-05-01 19:13:46'),(141,'2019-04-09 13:59:32',39.10,7,0,'I','root@localhost','2019-05-01 19:13:48'),(142,'2019-04-09 13:59:32',40.00,8,0,'I','root@localhost','2019-05-01 19:13:49'),(143,'2019-04-09 13:59:32',39.50,9,0,'I','root@localhost','2019-05-01 19:13:50'),(144,'2019-04-09 13:59:32',30.00,10,0,'I','root@localhost','2019-05-01 19:13:57'),(145,'2019-04-09 13:59:32',32.00,11,0,'I','root@localhost','2019-05-01 19:14:03'),(146,'2019-04-09 13:59:32',32324.00,12,0,'I','root@localhost','2019-05-01 19:14:05'),(147,'2019-04-09 13:59:32',5.00,13,0,'I','root@localhost','2019-05-01 19:16:52'),(148,'2019-04-09 13:59:32',5.00,1,0,'I','root@localhost','2019-05-01 19:40:47'),(149,'2019-04-09 13:59:32',6.00,2,0,'I','root@localhost','2019-05-01 19:40:55'),(150,'2019-04-09 13:59:32',5.00,3,0,'I','root@localhost','2019-05-01 19:43:44'),(151,'2019-04-09 13:59:32',6.00,4,0,'I','root@localhost','2019-05-01 19:43:45'),(152,'2019-04-09 13:59:32',11.90,5,0,'I','root@localhost','2019-05-01 19:43:46'),(153,'2019-04-09 13:59:32',10.90,6,0,'I','root@localhost','2019-05-01 19:43:47'),(154,'2019-04-09 13:59:32',39.00,7,0,'I','root@localhost','2019-05-01 19:43:48'),(155,'2019-04-09 13:59:32',39.10,8,0,'I','root@localhost','2019-05-01 19:43:49'),(156,'2019-04-09 13:59:32',40.00,9,0,'I','root@localhost','2019-05-01 19:43:50'),(157,'2019-04-09 13:59:32',39.50,10,0,'I','root@localhost','2019-05-01 19:43:51'),(158,'2019-04-09 13:59:32',30.00,11,0,'I','root@localhost','2019-05-01 19:43:52'),(159,'2019-04-09 13:59:32',32324.00,12,0,'I','root@localhost','2019-05-01 19:43:53'),(160,'2019-04-09 13:59:32',5.00,1,0,'I','root@localhost','2019-05-01 19:45:38'),(161,'2019-04-09 13:59:32',6.00,2,0,'I','root@localhost','2019-05-01 19:45:40'),(162,'2019-04-09 13:59:32',11.90,3,0,'I','root@localhost','2019-05-01 19:45:41'),(163,'2019-04-09 13:59:32',10.90,4,0,'I','root@localhost','2019-05-01 19:45:42'),(164,'2019-04-09 13:59:32',39.00,5,0,'I','root@localhost','2019-05-01 19:45:42'),(165,'2019-04-09 13:59:32',39.10,6,0,'I','root@localhost','2019-05-01 19:45:43'),(166,'2019-04-09 13:59:32',40.00,7,0,'I','root@localhost','2019-05-01 19:45:44'),(167,'2019-04-09 13:59:32',39.50,8,0,'I','root@localhost','2019-05-01 19:45:45'),(168,'2019-04-09 13:59:32',30.00,9,0,'I','root@localhost','2019-05-01 19:45:46'),(169,'2019-04-09 13:59:32',32324.00,10,0,'I','root@localhost','2019-05-01 19:45:47'),(170,'2019-04-09 13:59:32',5.00,1,0,'I','root@localhost','2019-05-01 19:49:32'),(171,'2019-04-09 13:59:32',6.00,2,0,'I','root@localhost','2019-05-01 19:49:33'),(172,'2019-04-09 13:59:32',11.90,3,0,'I','root@localhost','2019-05-01 19:49:34'),(173,'2019-04-09 13:59:32',10.90,4,0,'I','root@localhost','2019-05-01 19:49:35'),(174,'2019-04-09 13:59:32',5.00,1,0,'I','root@localhost','2019-05-01 21:20:05'),(175,'2019-04-09 13:59:32',5.00,1,0,'I','root@localhost','2019-05-01 21:23:06'),(176,'2019-04-09 13:59:32',5.00,2,0,'I','root@localhost','2019-05-01 21:23:18'),(177,'2019-04-09 13:59:32',5.00,3,0,'I','root@localhost','2019-05-01 21:23:27'),(178,'2019-04-09 13:59:32',5.00,4,0,'I','root@localhost','2019-05-01 21:23:34'),(179,'2019-04-09 13:59:32',5.00,5,0,'I','root@localhost','2019-05-01 21:23:40'),(180,'2019-04-09 13:59:32',5.00,6,0,'I','root@localhost','2019-05-01 21:23:56'),(181,'2019-04-09 13:59:32',5.00,7,0,'I','root@localhost','2019-05-01 21:24:06'),(182,'2019-04-09 13:59:32',5.00,8,0,'I','root@localhost','2019-05-01 21:24:21'),(183,'2019-04-09 13:59:32',5.00,1,0,'I','root@localhost','2019-05-01 21:29:51'),(184,'2019-04-09 13:59:32',5.00,2,0,'I','root@localhost','2019-05-01 21:30:00'),(185,'2019-04-09 13:59:32',5.00,3,0,'I','root@localhost','2019-05-01 21:30:07'),(186,'2019-04-09 13:59:32',5.00,4,0,'I','root@localhost','2019-05-01 21:30:14'),(187,'2019-04-09 13:59:32',5.00,5,0,'I','root@localhost','2019-05-01 21:30:32'),(188,'2019-04-09 13:59:32',5.00,6,0,'I','root@localhost','2019-05-01 21:31:06'),(189,'2019-04-09 13:59:32',5.00,7,0,'I','root@localhost','2019-05-01 21:31:08'),(190,'2019-04-09 13:59:32',5.00,8,0,'I','root@localhost','2019-05-01 21:31:12'),(191,'2019-04-09 13:59:32',6.00,9,0,'I','root@localhost','2019-05-01 21:31:26'),(192,'2019-04-09 13:59:32',11.90,10,0,'I','root@localhost','2019-05-01 21:31:27'),(193,'2019-04-09 13:59:32',10.90,11,0,'I','root@localhost','2019-05-01 21:31:28'),(194,'2019-04-09 13:59:32',39.00,12,0,'I','root@localhost','2019-05-01 21:31:29'),(195,'2019-04-09 13:59:32',39.10,13,0,'I','root@localhost','2019-05-01 21:31:30'),(196,'2019-04-09 13:59:32',40.00,14,0,'I','root@localhost','2019-05-01 21:31:31'),(197,'2019-04-09 13:59:32',39.50,15,0,'I','root@localhost','2019-05-01 21:31:32'),(198,'2019-04-09 13:59:32',30.00,16,0,'I','root@localhost','2019-05-01 21:31:32'),(199,'2019-04-09 13:59:32',32324.00,17,0,'I','root@localhost','2019-05-01 21:31:33'),(200,'2019-04-09 13:59:32',32324.00,18,0,'I','root@localhost','2019-05-01 21:32:25'),(201,'2019-04-09 13:59:32',32324.00,19,0,'I','root@localhost','2019-05-01 21:32:26'),(202,'2019-04-09 13:59:32',32324.00,20,0,'I','root@localhost','2019-05-01 21:32:27'),(203,'2019-04-09 13:59:32',22.40,21,0,'I','root@localhost','2019-05-05 15:38:52'),(204,'2019-05-05 15:41:32',60.30,22,0,'I','root@localhost','2019-05-05 15:41:12'),(205,'2019-05-05 15:41:32',60.30,23,0,'I','root@localhost','2019-05-05 15:42:32'),(206,'2019-05-05 15:41:32',60.30,24,0,'I','root@localhost','2019-05-05 15:42:32'),(207,'2019-05-05 15:41:32',60.30,25,0,'I','root@localhost','2019-05-05 15:42:32'),(208,'2019-04-09 13:59:32',6.00,26,0,'I','root@localhost','2019-05-05 17:00:11'),(209,'2019-04-09 13:59:32',6.00,27,0,'I','root@localhost','2019-05-05 17:00:30'),(210,'2019-04-09 13:59:32',6.00,28,0,'I','root@localhost','2019-05-05 17:08:27'),(211,'2019-04-09 13:59:32',6.00,29,0,'I','root@localhost','2019-05-05 17:09:27'),(212,'2019-04-09 13:59:32',6.00,30,0,'I','root@localhost','2019-05-05 17:10:08'),(213,'2019-04-09 13:59:32',6.00,31,0,'I','root@localhost','2019-05-05 17:10:27'),(214,'2019-04-09 13:59:32',6.00,32,0,'I','root@localhost','2019-05-05 17:12:19'),(215,'2019-04-09 13:59:32',50.00,33,0,'I','root@localhost','2019-05-05 17:14:05'),(216,'2019-04-09 13:59:32',6.00,34,0,'I','root@localhost','2019-05-05 17:22:15'),(217,'2019-04-09 13:59:32',5.00,35,0,'I','root@localhost','2019-05-05 17:24:17'),(218,'2019-04-09 13:59:32',30.00,36,0,'I','root@localhost','2019-05-05 17:24:30'),(219,'2019-04-09 13:59:32',5.00,37,0,'I','root@localhost','2019-05-05 17:24:41'),(220,'2019-04-09 13:59:32',5.00,38,0,'I','root@localhost','2019-05-05 17:36:40'),(221,'2019-04-09 13:59:32',5.00,39,0,'I','root@localhost','2019-05-05 17:41:29'),(222,'2019-04-09 13:59:32',5.00,40,0,'I','root@localhost','2019-05-05 17:49:32'),(223,'2019-04-09 13:59:32',5.00,41,0,'I','root@localhost','2019-05-05 17:49:44'),(224,'2019-04-09 13:59:32',5.00,42,0,'I','root@localhost','2019-05-05 17:50:31'),(225,'2019-04-09 13:59:32',5.00,43,0,'I','root@localhost','2019-05-05 17:50:48'),(226,'2019-04-09 13:59:32',5.00,44,0,'I','root@localhost','2019-05-05 17:51:46'),(227,'2019-04-09 13:59:32',5.00,45,0,'I','root@localhost','2019-05-05 17:51:59'),(228,'2019-04-09 13:59:32',30.00,46,0,'I','root@localhost','2019-05-05 17:52:30'),(229,'2019-04-09 13:59:32',6.00,47,0,'I','root@localhost','2019-05-05 17:52:45'),(230,'2019-04-09 13:59:32',5.00,48,0,'I','root@localhost','2019-05-05 17:53:02'),(231,'2019-04-09 13:59:32',6.00,49,0,'I','root@localhost','2019-05-05 17:53:37'),(232,'2019-04-09 13:59:32',6.00,50,0,'I','root@localhost','2019-05-05 17:53:39'),(233,'2019-04-09 13:59:32',6.00,51,0,'I','root@localhost','2019-05-05 17:53:39'),(234,'2019-04-09 13:59:32',6.00,52,0,'I','root@localhost','2019-05-05 17:54:16'),(235,'2019-04-09 13:59:32',6.00,53,0,'I','root@localhost','2019-05-05 17:55:36'),(236,'2019-04-09 13:59:32',6.00,54,0,'I','root@localhost','2019-05-05 17:56:18'),(237,'2019-04-09 13:59:32',6.00,55,0,'I','root@localhost','2019-05-05 17:58:26'),(238,'2019-04-09 13:59:32',6.00,56,0,'I','root@localhost','2019-05-05 17:59:30'),(239,'2019-04-09 13:59:32',6.00,57,0,'I','root@localhost','2019-05-05 17:59:46'),(240,'2019-04-09 13:59:32',6.00,58,0,'I','root@localhost','2019-05-05 18:00:09'),(241,'2019-04-09 13:59:32',6.00,59,0,'I','root@localhost','2019-05-05 18:00:09'),(242,'2019-04-09 13:59:32',6.00,60,0,'I','root@localhost','2019-05-05 18:00:10'),(243,'2019-04-09 13:59:32',6.00,61,0,'I','root@localhost','2019-05-05 18:00:10'),(244,'2019-04-09 13:59:32',6.00,62,0,'I','root@localhost','2019-05-05 18:00:37'),(245,'2019-04-09 13:59:32',6.00,63,0,'I','root@localhost','2019-05-05 18:01:50'),(246,'2019-04-09 13:59:32',6.00,64,0,'I','root@localhost','2019-05-05 18:02:08'),(247,'2019-04-09 13:59:32',6.00,65,0,'I','root@localhost','2019-05-05 18:02:08'),(248,'2019-04-09 13:59:32',6.00,66,0,'I','root@localhost','2019-05-05 18:04:03'),(249,'2019-04-09 13:59:32',6.00,67,0,'I','root@localhost','2019-05-05 18:09:21'),(250,'2019-04-09 13:59:32',6.00,68,0,'I','root@localhost','2019-05-05 18:10:18'),(251,'2019-04-09 13:59:32',6.00,69,0,'I','root@localhost','2019-05-05 18:22:53'),(252,'2019-04-09 13:59:32',6.00,70,0,'I','root@localhost','2019-05-05 18:25:48'),(253,'2019-04-09 13:59:32',6.00,71,0,'I','root@localhost','2019-05-05 18:28:31'),(254,'2019-04-09 13:59:32',6.00,72,0,'I','root@localhost','2019-05-05 18:41:18'),(255,'2019-04-09 13:59:32',6.00,73,0,'I','root@localhost','2019-05-05 18:42:01'),(256,'2019-04-09 13:59:32',6.00,74,0,'I','root@localhost','2019-05-05 18:42:01'),(257,'2019-04-09 13:59:32',6.00,75,0,'I','root@localhost','2019-05-05 18:42:01'),(258,'2019-04-09 13:59:32',6.00,76,0,'I','root@localhost','2019-05-05 18:43:03'),(259,'2019-04-09 13:59:32',6.00,77,0,'I','root@localhost','2019-05-05 18:43:03'),(260,'2019-04-09 13:59:32',6.00,78,0,'I','root@localhost','2019-05-05 18:43:03'),(261,'2019-04-09 13:59:32',6.00,79,0,'I','root@localhost','2019-05-05 18:43:29'),(262,'2019-04-09 13:59:32',6.00,80,0,'I','root@localhost','2019-05-05 18:43:29'),(263,'2019-04-09 13:59:32',6.00,81,0,'I','root@localhost','2019-05-05 18:46:53'),(264,'2019-04-09 13:59:32',6.00,82,0,'I','root@localhost','2019-05-05 18:46:53'),(265,'2019-04-09 13:59:32',6.00,83,0,'I','root@localhost','2019-05-05 18:52:00'),(266,'2019-04-09 13:59:32',6.00,84,0,'I','root@localhost','2019-05-05 18:52:01'),(267,'2019-04-09 13:59:32',6.00,85,0,'I','root@localhost','2019-05-05 18:52:01'),(268,'2019-04-09 13:59:32',6.00,86,0,'I','root@localhost','2019-05-05 18:52:51'),(269,'2019-04-09 13:59:32',6.00,87,0,'I','root@localhost','2019-05-05 18:52:51'),(270,'2019-04-09 13:59:32',6.00,88,0,'I','root@localhost','2019-05-05 18:56:39'),(271,'2019-04-09 13:59:32',6.00,89,0,'I','root@localhost','2019-05-05 18:56:39'),(272,'2019-04-09 13:59:32',6.00,90,0,'I','root@localhost','2019-05-05 18:57:17'),(273,'2019-04-09 13:59:32',6.00,91,0,'I','root@localhost','2019-05-05 18:57:31'),(274,'2019-04-09 13:59:32',6.00,92,0,'I','root@localhost','2019-05-05 18:57:31'),(275,'2019-04-09 13:59:32',6.00,93,0,'I','root@localhost','2019-05-05 18:58:06'),(276,'2019-04-09 13:59:32',6.00,94,0,'I','root@localhost','2019-05-05 18:58:06'),(277,'2019-04-09 13:59:32',6.00,95,0,'I','root@localhost','2019-05-05 18:58:52'),(278,'2019-04-09 13:59:32',6.00,96,0,'I','root@localhost','2019-05-05 18:58:52'),(279,'2019-04-09 13:59:32',6.00,97,0,'I','root@localhost','2019-05-05 18:59:55'),(280,'2019-04-09 13:59:32',6.00,98,0,'I','root@localhost','2019-05-05 18:59:55'),(281,'2019-04-09 13:59:32',6.00,99,0,'I','root@localhost','2019-05-05 19:00:19'),(282,'2019-04-09 13:59:32',30.00,100,0,'I','root@localhost','2019-05-05 19:00:22'),(283,'2019-04-09 13:59:32',6.00,101,0,'I','root@localhost','2019-05-05 19:00:23'),(284,'2019-04-09 13:59:32',6.00,102,0,'I','root@localhost','2019-05-05 19:01:30'),(285,'2019-04-09 13:59:32',30.00,103,0,'I','root@localhost','2019-05-05 19:01:31'),(286,'2019-04-09 13:59:32',6.00,104,0,'I','root@localhost','2019-05-05 19:01:32'),(287,'2019-04-09 13:59:32',6.00,105,0,'I','root@localhost','2019-05-05 19:03:09'),(288,'2019-04-09 13:59:32',30.00,106,0,'I','root@localhost','2019-05-05 19:03:10'),(289,'2019-04-09 13:59:32',6.00,107,0,'I','root@localhost','2019-05-05 19:03:10'),(290,'2019-04-09 13:59:32',6.00,108,0,'I','root@localhost','2019-05-05 19:03:17'),(291,'2019-04-09 13:59:32',6.00,109,0,'I','root@localhost','2019-05-05 19:03:17'),(292,'2019-04-09 13:59:32',6.00,110,0,'I','root@localhost','2019-05-05 19:03:18'),(293,'2019-04-09 13:59:32',6.00,111,0,'I','root@localhost','2019-05-05 19:28:58'),(294,'2019-04-09 13:59:32',6.00,112,0,'I','root@localhost','2019-05-05 19:28:58'),(295,'2019-04-09 13:59:32',6.00,113,0,'I','root@localhost','2019-05-05 19:28:58'),(296,'2019-04-09 13:59:32',6.00,114,0,'I','root@localhost','2019-05-05 19:28:58'),(297,'2019-04-09 13:59:32',6.00,115,0,'I','root@localhost','2019-05-05 19:34:57'),(298,'2019-04-09 13:59:32',6.00,116,0,'I','root@localhost','2019-05-05 19:34:57'),(299,'2019-04-09 13:59:32',6.00,117,0,'I','root@localhost','2019-05-05 19:36:19'),(300,'2019-04-09 13:59:32',6.00,118,0,'I','root@localhost','2019-05-05 19:36:23'),(301,'2019-04-09 13:59:32',6.00,119,0,'I','root@localhost','2019-05-05 19:36:42'),(302,'2019-04-09 13:59:32',6.00,120,0,'I','root@localhost','2019-05-05 19:38:52'),(303,'2019-04-09 13:59:32',6.00,121,0,'I','root@localhost','2019-05-05 19:38:52'),(304,'2019-04-09 13:59:32',6.00,122,0,'I','root@localhost','2019-05-05 19:38:52'),(305,'2019-04-09 13:59:32',6.00,123,0,'I','root@localhost','2019-05-05 19:41:50'),(306,'2019-04-09 13:59:32',6.00,124,0,'I','root@localhost','2019-05-05 19:41:50'),(307,'2019-04-09 13:59:32',6.00,125,0,'I','root@localhost','2019-05-05 19:41:50'),(308,'2019-04-09 13:59:32',6.00,126,0,'I','root@localhost','2019-05-05 19:42:08'),(309,'2019-04-09 13:59:32',6.00,127,0,'I','root@localhost','2019-05-05 19:42:09'),(310,'2019-04-09 13:59:32',6.00,128,0,'I','root@localhost','2019-05-05 19:42:09'),(311,'2019-04-09 13:59:32',6.00,129,0,'I','root@localhost','2019-05-05 19:42:42'),(312,'2019-04-09 13:59:32',6.00,130,0,'I','root@localhost','2019-05-05 19:42:42'),(313,'2019-04-09 13:59:32',6.00,131,0,'I','root@localhost','2019-05-05 19:43:44'),(314,'2019-04-09 13:59:32',6.00,132,0,'I','root@localhost','2019-05-05 19:43:46'),(315,'2019-04-09 13:59:32',6.00,133,0,'I','root@localhost','2019-05-05 19:43:47'),(316,'2019-04-09 13:59:32',6.00,134,0,'I','root@localhost','2019-05-05 19:43:50'),(317,'2019-04-09 13:59:32',30.00,135,0,'I','root@localhost','2019-05-05 19:44:02'),(318,'2019-04-09 13:59:32',6.00,136,0,'I','root@localhost','2019-05-05 19:44:04'),(319,'2019-04-09 13:59:32',6.00,137,0,'I','root@localhost','2019-05-05 19:44:19'),(320,'2019-04-09 13:59:32',6.00,138,0,'I','root@localhost','2019-05-05 19:44:31'),(321,'2019-04-09 13:59:32',6.00,139,0,'I','root@localhost','2019-05-05 19:46:55'),(322,'2019-04-09 13:59:32',6.00,140,0,'I','root@localhost','2019-05-05 19:46:56'),(323,'2019-04-09 13:59:32',6.00,141,0,'I','root@localhost','2019-05-05 19:47:31'),(324,'2019-04-09 13:59:32',30.00,142,0,'I','root@localhost','2019-05-05 19:47:32'),(325,'2019-04-09 13:59:32',6.00,143,0,'I','root@localhost','2019-05-05 19:47:33'),(326,'2019-04-09 13:59:32',30.00,144,0,'I','root@localhost','2019-05-05 19:47:34'),(327,'2019-04-09 13:59:32',6.00,145,0,'I','root@localhost','2019-05-05 19:47:35'),(328,'2019-04-09 13:59:32',30.00,146,0,'I','root@localhost','2019-05-05 19:47:36'),(329,'2019-04-09 13:59:32',6.00,147,0,'I','root@localhost','2019-05-05 19:47:36'),(330,'2019-04-09 13:59:32',6.00,148,0,'I','root@localhost','2019-05-05 19:47:53'),(331,'2019-04-09 13:59:32',6.00,149,0,'I','root@localhost','2019-05-05 19:47:53'),(332,'2019-04-09 13:59:32',6.00,150,0,'I','root@localhost','2019-05-05 19:48:01'),(333,'2019-04-09 13:59:32',6.00,151,0,'I','root@localhost','2019-05-05 19:48:02'),(334,'2019-04-09 13:59:32',6.00,152,0,'I','root@localhost','2019-05-05 19:48:02'),(335,'2019-04-09 13:59:32',6.00,153,0,'I','root@localhost','2019-05-05 19:48:02'),(336,'2019-04-09 13:59:32',50.00,154,0,'I','root@localhost','2019-05-05 19:48:19'),(337,'2019-04-09 13:59:32',50.00,155,0,'I','root@localhost','2019-05-05 19:48:19'),(338,'2019-04-09 13:59:32',50.00,156,0,'I','root@localhost','2019-05-05 19:48:20'),(339,'2019-04-09 13:59:32',50.00,157,0,'I','root@localhost','2019-05-05 19:48:20'),(340,'2019-04-09 13:59:32',50.00,158,0,'I','root@localhost','2019-05-05 19:48:20'),(341,'2019-04-09 13:59:32',50.00,159,0,'I','root@localhost','2019-05-05 19:48:20'),(342,'2019-04-09 13:59:32',50.00,160,0,'I','root@localhost','2019-05-05 19:48:20'),(343,'2019-04-09 13:59:32',50.00,161,0,'I','root@localhost','2019-05-05 19:48:20'),(344,'2019-04-09 13:59:32',6.00,162,0,'I','root@localhost','2019-05-05 19:52:41'),(345,'2019-04-09 13:59:32',6.00,163,0,'I','root@localhost','2019-05-05 19:52:41'),(346,'2019-04-09 13:59:32',6.00,164,0,'I','root@localhost','2019-05-05 19:52:42'),(347,'2019-04-09 13:59:32',6.00,165,0,'I','root@localhost','2019-05-05 19:52:46'),(348,'2019-04-09 13:59:32',50.00,166,0,'I','root@localhost','2019-05-05 19:53:00'),(349,'2019-04-09 13:59:32',50.00,167,0,'I','root@localhost','2019-05-05 19:53:01'),(350,'2019-04-09 13:59:32',50.00,168,0,'I','root@localhost','2019-05-05 20:27:58'),(351,'2019-04-09 13:59:32',50.00,169,0,'I','root@localhost','2019-05-05 20:27:59'),(352,'2019-04-09 13:59:32',30.00,170,0,'I','root@localhost','2019-05-05 20:28:24'),(353,'2019-04-09 13:59:32',6.00,171,0,'I','root@localhost','2019-05-05 20:28:26'),(354,'2019-04-09 13:59:32',6.00,172,0,'I','root@localhost','2019-05-05 20:29:04'),(355,'2019-04-09 13:59:32',6.00,173,0,'I','root@localhost','2019-05-05 20:29:10'),(356,'2019-04-09 13:59:32',6.00,174,0,'I','root@localhost','2019-05-05 20:29:11'),(357,'2019-04-09 13:59:32',6.00,175,0,'I','root@localhost','2019-05-05 20:29:11'),(358,'2019-04-09 13:59:32',6.00,176,0,'I','root@localhost','2019-05-05 20:31:47'),(359,'2019-04-09 13:59:32',6.00,177,0,'I','root@localhost','2019-05-05 20:31:47'),(360,'2019-04-09 13:59:32',6.00,178,0,'I','root@localhost','2019-05-05 20:31:48'),(361,'2019-04-09 13:59:32',6.00,179,0,'I','root@localhost','2019-05-05 20:37:16'),(362,'2019-04-09 13:59:32',6.00,180,0,'I','root@localhost','2019-05-05 20:37:17'),(363,'2019-04-09 13:59:32',6.00,181,0,'I','root@localhost','2019-05-05 20:37:18'),(364,'2019-04-09 13:59:32',6.00,182,0,'I','root@localhost','2019-05-05 20:37:19'),(365,'2019-04-09 13:59:32',6.00,183,0,'I','root@localhost','2019-05-05 20:40:33'),(366,'2019-04-09 13:59:32',6.00,184,0,'I','root@localhost','2019-05-05 20:40:33'),(367,'2019-04-09 13:59:32',6.00,185,0,'I','root@localhost','2019-05-05 20:40:33'),(368,'2019-04-09 13:59:32',6.00,186,0,'I','root@localhost','2019-05-05 20:40:33'),(369,'2019-04-09 13:59:32',30.00,187,0,'I','root@localhost','2019-05-05 20:41:01'),(370,'2019-04-09 13:59:32',6.00,188,0,'I','root@localhost','2019-05-05 20:41:04'),(371,'2019-04-09 13:59:32',6.00,189,0,'I','root@localhost','2019-05-05 20:42:45'),(372,'2019-04-09 13:59:32',6.00,190,0,'I','root@localhost','2019-05-05 20:44:56'),(373,'2019-04-09 13:59:32',6.00,191,0,'I','root@localhost','2019-05-05 20:44:56'),(374,'2019-04-09 13:59:32',6.00,192,0,'I','root@localhost','2019-05-05 20:47:20'),(375,'2019-04-09 13:59:32',6.00,193,0,'I','root@localhost','2019-05-05 20:47:20'),(376,'2019-04-09 13:59:32',6.00,194,0,'I','root@localhost','2019-05-05 20:47:48'),(377,'2019-04-09 13:59:32',6.00,195,0,'I','root@localhost','2019-05-05 20:49:19'),(378,'2019-04-09 13:59:32',6.00,196,0,'I','root@localhost','2019-05-05 20:49:22'),(379,'2019-04-09 13:59:32',6.00,197,0,'I','root@localhost','2019-05-05 20:49:22'),(380,'2019-04-09 13:59:32',6.00,198,0,'I','root@localhost','2019-05-05 20:51:13'),(381,'2019-04-09 13:59:32',6.00,199,0,'I','root@localhost','2019-05-05 20:51:14'),(382,'2019-04-09 13:59:32',6.00,200,0,'I','root@localhost','2019-05-05 20:51:14'),(383,'2019-04-09 13:59:32',6.00,201,0,'I','root@localhost','2019-05-05 20:51:14'),(384,'2019-04-09 13:59:32',6.00,202,0,'I','root@localhost','2019-05-05 20:54:34'),(385,'2019-04-09 13:59:32',6.00,203,0,'I','root@localhost','2019-05-05 20:54:35'),(386,'2019-04-09 13:59:32',6.00,204,0,'I','root@localhost','2019-05-05 20:57:41'),(387,'2019-04-09 13:59:32',6.00,205,0,'I','root@localhost','2019-05-05 20:57:41'),(388,'2019-04-09 13:59:32',6.00,206,0,'I','root@localhost','2019-05-05 20:59:41'),(389,'2019-04-09 13:59:32',6.00,207,0,'I','root@localhost','2019-05-05 20:59:41'),(390,'2019-04-09 13:59:32',6.00,208,0,'I','root@localhost','2019-05-05 20:59:41'),(391,'2019-04-09 13:59:32',30.00,209,0,'I','root@localhost','2019-05-05 21:05:56'),(392,'2019-04-09 13:59:32',30.00,210,0,'I','root@localhost','2019-05-05 21:07:36'),(393,'2019-04-09 13:59:32',30.00,211,0,'I','root@localhost','2019-05-05 21:08:21'),(394,'2019-04-09 13:59:32',6.00,212,0,'I','root@localhost','2019-05-05 21:15:32'),(395,'2019-04-09 13:59:32',6.00,213,0,'I','root@localhost','2019-05-05 21:18:37'),(396,'2019-04-09 13:59:32',6.00,214,0,'I','root@localhost','2019-05-05 21:22:57'),(397,'2019-04-09 13:59:32',6.00,215,0,'I','root@localhost','2019-05-05 21:28:15'),(398,'2019-04-09 13:59:32',6.00,216,0,'I','root@localhost','2019-05-05 21:28:18'),(399,'2019-04-09 13:59:32',6.00,217,0,'I','root@localhost','2019-05-05 21:31:35'),(400,'2019-04-09 13:59:32',6.00,1,0,'I','root@localhost','2019-05-05 21:34:13'),(401,'2019-04-09 13:59:32',6.00,2,0,'I','root@localhost','2019-05-05 21:34:30'),(402,'2019-04-09 13:59:32',6.00,3,0,'I','root@localhost','2019-05-05 21:34:31'),(403,'2019-04-09 13:59:32',6.00,4,0,'I','root@localhost','2019-05-05 21:34:48'),(404,'2019-04-09 13:59:32',6.00,5,0,'I','root@localhost','2019-05-05 21:34:49'),(405,'2019-04-09 13:59:32',30.00,6,0,'I','root@localhost','2019-05-05 21:35:02'),(406,'2019-04-09 13:59:32',6.00,7,0,'I','root@localhost','2019-05-05 21:35:04'),(407,'2019-04-09 13:59:32',6.00,8,0,'I','root@localhost','2019-05-05 21:35:05'),(408,'2019-04-09 13:59:32',30.00,9,0,'I','root@localhost','2019-05-05 21:35:44'),(409,'2019-04-09 13:59:32',30.00,10,0,'I','root@localhost','2019-05-05 21:35:46'),(410,'2019-04-09 13:59:32',30.00,11,0,'I','root@localhost','2019-05-05 21:35:47'),(411,'2019-04-09 13:59:32',30.00,12,0,'I','root@localhost','2019-05-05 21:35:47'),(412,'2019-04-09 13:59:32',30.00,13,0,'I','root@localhost','2019-05-05 21:35:48'),(413,'2019-04-09 13:59:32',30.00,14,0,'I','root@localhost','2019-05-05 21:35:49'),(414,'2019-04-09 13:59:32',30.00,15,0,'I','root@localhost','2019-05-05 21:35:49'),(415,'2019-04-09 13:59:32',6.00,16,0,'I','root@localhost','2019-05-05 21:36:40'),(416,'2019-04-09 13:59:32',6.00,17,0,'I','root@localhost','2019-05-05 21:41:40'),(417,'2019-04-09 13:59:32',6.00,18,0,'I','root@localhost','2019-05-05 21:42:41'),(418,'2019-04-09 13:59:32',6.00,19,0,'I','root@localhost','2019-05-05 21:44:55'),(419,'2019-04-09 13:59:32',6.00,20,0,'I','root@localhost','2019-05-05 21:44:55'),(420,'2019-04-09 13:59:32',30.00,21,0,'I','root@localhost','2019-05-05 21:46:54'),(421,'2019-04-09 13:59:32',6.00,22,0,'I','root@localhost','2019-05-05 21:46:55'),(422,'2019-04-09 13:59:32',30.00,23,0,'I','root@localhost','2019-05-05 21:46:56'),(423,'2019-04-09 13:59:32',6.00,24,0,'I','root@localhost','2019-05-05 21:46:57'),(424,'2019-04-09 13:59:32',30.00,25,0,'I','root@localhost','2019-05-05 21:46:58'),(425,'2019-04-09 13:59:32',6.00,26,0,'I','root@localhost','2019-05-05 21:48:55'),(426,'2019-04-09 13:59:32',6.00,27,0,'I','root@localhost','2019-05-05 21:48:56'),(427,'2019-04-09 13:59:32',6.00,28,0,'I','root@localhost','2019-05-05 21:48:59'),(428,'2019-04-09 13:59:32',6.00,29,0,'I','root@localhost','2019-05-05 21:48:59'),(429,'2019-04-09 13:59:32',6.00,30,0,'I','root@localhost','2019-05-05 21:48:59'),(430,'2019-04-09 13:59:32',6.00,31,0,'I','root@localhost','2019-05-05 21:48:59'),(431,'2019-04-09 13:59:32',6.00,32,0,'I','root@localhost','2019-05-05 21:54:42'),(432,'2019-04-09 13:59:32',6.00,33,0,'I','root@localhost','2019-05-05 21:54:59'),(433,'2019-04-09 13:59:32',6.00,34,0,'I','root@localhost','2019-05-05 21:55:15'),(434,'2019-04-09 13:59:32',30.00,35,0,'I','root@localhost','2019-05-05 21:55:22'),(435,'2019-04-09 13:59:32',6.00,36,0,'I','root@localhost','2019-05-05 21:55:24'),(436,'2019-04-09 13:59:32',6.00,37,0,'I','root@localhost','2019-05-05 21:57:32'),(437,'2019-04-09 13:59:32',6.00,38,0,'I','root@localhost','2019-05-05 21:57:32'),(438,'2019-04-09 13:59:32',30.00,39,0,'I','root@localhost','2019-05-05 21:57:39'),(439,'2019-04-09 13:59:32',6.00,40,0,'I','root@localhost','2019-05-05 21:57:41'),(440,'2019-04-09 13:59:32',6.00,41,0,'I','root@localhost','2019-05-05 21:58:45'),(441,'2019-04-09 13:59:32',6.00,42,0,'I','root@localhost','2019-05-05 21:58:46'),(442,'2019-04-09 13:59:32',6.00,43,0,'I','root@localhost','2019-05-05 21:58:47'),(443,'2019-04-09 13:59:32',6.00,44,0,'I','root@localhost','2019-05-05 22:00:27'),(444,'2019-04-09 13:59:32',6.00,45,0,'I','root@localhost','2019-05-05 22:00:27'),(445,'2019-04-09 13:59:32',6.00,46,0,'I','root@localhost','2019-05-05 22:00:27'),(446,'2019-04-09 13:59:32',6.00,47,0,'I','root@localhost','2019-05-05 22:02:34'),(447,'2019-04-09 13:59:32',6.00,48,0,'I','root@localhost','2019-05-05 22:02:34'),(448,'2019-04-09 13:59:32',6.00,49,0,'I','root@localhost','2019-05-05 22:04:11'),(449,'2019-04-09 13:59:32',6.00,50,0,'I','root@localhost','2019-05-05 22:04:11'),(450,'2019-04-09 13:59:32',6.00,51,0,'I','root@localhost','2019-05-05 22:04:11'),(451,'2019-04-09 13:59:32',6.00,52,0,'I','root@localhost','2019-05-05 22:15:06'),(452,'2019-04-09 13:59:32',6.00,53,0,'I','root@localhost','2019-05-05 22:15:19'),(453,'2019-04-09 13:59:32',6.00,54,0,'I','root@localhost','2019-05-05 22:15:21'),(454,'2019-04-09 13:59:32',6.00,55,0,'I','root@localhost','2019-05-05 22:15:21'),(455,'2019-04-09 13:59:32',30.00,56,0,'I','root@localhost','2019-05-05 22:15:44'),(456,'2019-04-09 13:59:32',30.00,57,0,'I','root@localhost','2019-05-05 22:15:53'),(457,'2019-04-09 13:59:32',30.00,58,0,'I','root@localhost','2019-05-05 22:15:55'),(458,'2019-04-09 13:59:32',30.00,59,0,'I','root@localhost','2019-05-05 22:17:07'),(459,'2019-04-09 13:59:32',50.00,60,0,'I','root@localhost','2019-05-05 22:29:17'),(460,'2019-04-09 13:59:32',50.00,61,0,'I','root@localhost','2019-05-05 22:29:27'),(461,'2019-04-09 13:59:32',50.00,62,0,'I','root@localhost','2019-05-05 22:29:28'),(462,'2019-04-09 13:59:32',50.00,63,0,'I','root@localhost','2019-05-05 22:29:32'),(463,'2019-04-09 13:59:32',50.00,64,0,'I','root@localhost','2019-05-05 22:29:32'),(464,'2019-04-09 13:59:32',50.00,65,0,'I','root@localhost','2019-05-05 22:30:21'),(465,'2019-04-09 13:59:32',50.00,66,0,'I','root@localhost','2019-05-05 22:30:22'),(466,'2019-04-09 13:59:32',50.00,67,0,'I','root@localhost','2019-05-05 22:31:07'),(467,'2019-04-09 13:59:32',50.00,68,0,'I','root@localhost','2019-05-05 22:31:08'),(468,'2019-04-09 13:59:32',50.00,69,0,'I','root@localhost','2019-05-05 22:31:09'),(469,'2019-04-09 13:59:32',6.00,1,0,'I','root@localhost','2019-05-05 22:31:26'),(470,'2019-04-09 13:59:32',6.00,2,0,'I','root@localhost','2019-05-05 22:31:28'),(471,'2019-04-09 13:59:32',6.00,3,0,'I','root@localhost','2019-05-05 22:31:51'),(472,'2019-04-09 13:59:32',6.00,4,0,'I','root@localhost','2019-05-05 22:34:09'),(473,'2019-04-09 13:59:32',6.00,5,0,'I','root@localhost','2019-05-05 22:34:11'),(474,'2019-04-09 13:59:32',6.00,6,0,'I','root@localhost','2019-05-05 22:37:02'),(475,'2019-04-09 13:59:32',6.00,7,0,'I','root@localhost','2019-05-05 22:39:27'),(476,'2019-04-09 13:59:32',6.00,8,0,'I','root@localhost','2019-05-05 22:39:30'),(477,'2019-04-09 13:59:32',6.00,9,0,'I','root@localhost','2019-05-05 22:39:30'),(478,'2019-04-09 13:59:32',6.00,1,0,'I','root@localhost','2019-05-05 22:39:56'),(479,'2019-04-09 13:59:32',30.00,2,0,'I','root@localhost','2019-05-05 22:39:57'),(480,'2019-04-09 13:59:32',6.00,3,0,'I','root@localhost','2019-05-05 22:39:58'),(481,'2019-04-09 13:59:32',6.00,4,0,'I','root@localhost','2019-05-05 22:39:58'),(482,'2019-04-09 13:59:32',6.00,5,0,'I','root@localhost','2019-05-05 22:39:59'),(483,'2019-04-09 13:59:32',6.00,6,0,'I','root@localhost','2019-05-05 22:39:59'),(484,'2019-04-09 13:59:32',6.00,7,0,'I','root@localhost','2019-05-05 22:39:59'),(485,'2019-04-09 13:59:32',6.00,8,0,'I','root@localhost','2019-05-05 22:41:29'),(486,'2019-04-09 13:59:32',6.00,9,0,'I','root@localhost','2019-05-05 22:53:52'),(487,'2019-04-09 13:59:32',6.00,10,0,'I','root@localhost','2019-05-05 22:55:02'),(488,'2019-04-09 13:59:32',6.00,11,0,'I','root@localhost','2019-05-05 22:55:03'),(489,'2019-04-09 13:59:32',6.00,12,0,'I','root@localhost','2019-05-05 22:55:04'),(490,'2019-04-09 13:59:32',6.00,13,0,'I','root@localhost','2019-05-05 22:55:04'),(491,'2019-04-09 13:59:32',6.00,14,0,'I','root@localhost','2019-05-05 22:55:05'),(492,'2019-04-09 13:59:32',6.00,1,0,'I','root@localhost','2019-05-05 22:55:39'),(493,'2019-04-09 13:59:32',6.00,2,0,'I','root@localhost','2019-05-05 22:55:40'),(494,'2019-04-09 13:59:32',6.00,3,0,'I','root@localhost','2019-05-05 22:55:41'),(495,'2019-04-09 13:59:32',6.00,4,0,'I','root@localhost','2019-05-05 22:55:42'),(496,'2019-04-09 13:59:32',6.00,5,0,'I','root@localhost','2019-05-05 22:55:44'),(497,'2019-04-09 13:59:32',6.00,1,0,'I','root@localhost','2019-05-05 22:58:59'),(498,'2019-04-09 13:59:32',6.00,2,0,'I','root@localhost','2019-05-05 22:59:00'),(499,'2019-04-09 13:59:32',6.00,3,0,'I','root@localhost','2019-05-05 22:59:01'),(500,'2019-04-09 13:59:32',6.00,1,0,'I','root@localhost','2019-05-05 23:00:17'),(501,'2019-04-09 13:59:32',6.00,2,0,'I','root@localhost','2019-05-05 23:03:09'),(502,'2019-04-09 13:59:32',6.00,3,0,'I','root@localhost','2019-05-05 23:03:10'),(503,'2019-04-09 13:59:32',6.00,1,0,'I','root@localhost','2019-05-05 23:03:20'),(504,'2019-04-09 13:59:32',6.00,2,0,'I','root@localhost','2019-05-05 23:04:39'),(505,'2019-04-09 13:59:32',6.00,3,0,'I','root@localhost','2019-05-05 23:04:40'),(506,'2019-04-09 13:59:32',6.00,4,0,'I','root@localhost','2019-05-05 23:04:40'),(507,'2019-04-09 13:59:32',6.00,5,0,'I','root@localhost','2019-05-05 23:04:40'),(508,'2019-04-09 13:59:32',6.00,6,0,'I','root@localhost','2019-05-05 23:05:44'),(509,'2019-04-09 13:59:32',6.00,7,0,'I','root@localhost','2019-05-05 23:05:46'),(510,'2019-04-09 13:59:32',6.00,8,0,'I','root@localhost','2019-05-05 23:05:46'),(511,'2019-04-09 13:59:32',6.00,9,0,'I','root@localhost','2019-05-05 23:05:47'),(512,'2019-04-09 13:59:32',6.00,10,0,'I','root@localhost','2019-05-05 23:05:47'),(513,'2019-04-09 13:59:32',6.00,11,0,'I','root@localhost','2019-05-05 23:05:47'),(514,'2019-04-09 13:59:32',30.00,12,0,'I','root@localhost','2019-05-05 23:06:10'),(515,'2019-04-09 13:59:32',6.00,13,0,'I','root@localhost','2019-05-05 23:06:11'),(516,'2019-04-09 13:59:32',30.00,14,0,'I','root@localhost','2019-05-05 23:06:14'),(517,'2019-04-09 13:59:32',6.00,15,0,'I','root@localhost','2019-05-05 23:06:15'),(518,'2019-04-09 13:59:32',30.00,16,0,'I','root@localhost','2019-05-05 23:06:16'),(519,'2019-04-09 13:59:32',6.00,17,0,'I','root@localhost','2019-05-05 23:06:17'),(520,'2019-04-09 13:59:32',30.00,18,0,'I','root@localhost','2019-05-05 23:06:18'),(521,'2019-04-09 13:59:32',6.00,19,0,'I','root@localhost','2019-05-05 23:11:19'),(522,'2019-04-09 13:59:32',6.00,20,0,'I','root@localhost','2019-05-05 23:11:19'),(523,'2019-04-09 13:59:32',6.00,21,0,'I','root@localhost','2019-05-05 23:11:20'),(524,'2019-04-09 13:59:32',6.00,22,0,'I','root@localhost','2019-05-05 23:15:54'),(525,'2019-04-09 13:59:32',6.00,23,0,'I','root@localhost','2019-05-05 23:15:54'),(526,'2019-04-09 13:59:32',30.00,24,0,'I','root@localhost','2019-05-05 23:16:03'),(527,'2019-04-09 13:59:32',6.00,25,0,'I','root@localhost','2019-05-05 23:16:04'),(528,'2019-04-09 13:59:32',30.00,26,0,'I','root@localhost','2019-05-05 23:16:22'),(529,'2019-04-09 13:59:32',30.00,27,0,'I','root@localhost','2019-05-05 23:16:22'),(530,'2019-04-09 13:59:32',30.00,28,0,'I','root@localhost','2019-05-05 23:16:23'),(531,'2019-04-09 13:59:32',6.00,29,0,'I','root@localhost','2019-05-05 23:16:25'),(532,'2019-04-09 13:59:32',6.00,30,0,'I','root@localhost','2019-05-05 23:16:26'),(533,'2019-04-09 13:59:32',6.00,31,0,'I','root@localhost','2019-05-05 23:17:34'),(534,'2019-04-09 13:59:32',30.00,32,0,'I','root@localhost','2019-05-05 23:17:34'),(535,'2019-04-09 13:59:32',6.00,33,0,'I','root@localhost','2019-05-05 23:17:35'),(536,'2019-04-09 13:59:32',6.00,1,0,'I','root@localhost','2019-05-05 23:18:25'),(537,'2019-04-09 13:59:32',6.00,2,0,'I','root@localhost','2019-05-05 23:18:25'),(538,'2019-04-09 13:59:32',6.00,3,0,'I','root@localhost','2019-05-05 23:18:55'),(539,'2019-04-09 13:59:32',30.00,4,0,'I','root@localhost','2019-05-05 23:18:56'),(540,'2019-04-09 13:59:32',30.00,5,0,'I','root@localhost','2019-05-05 23:18:57'),(541,'2019-04-09 13:59:32',6.00,6,0,'I','root@localhost','2019-05-05 23:18:57'),(542,'2019-04-09 13:59:32',50.00,7,0,'I','root@localhost','2019-05-05 23:19:41'),(543,'2019-04-09 13:59:32',50.00,8,0,'I','root@localhost','2019-05-05 23:19:42'),(544,'2019-04-09 13:59:32',6.00,9,0,'I','root@localhost','2019-05-05 23:19:43'),(545,'2019-04-09 13:59:32',30.00,10,0,'I','root@localhost','2019-05-05 23:19:44'),(546,'2019-04-09 13:59:32',6.00,11,0,'I','root@localhost','2019-05-05 23:19:44'),(547,'2019-04-09 13:59:32',30.00,12,0,'I','root@localhost','2019-05-05 23:19:45'),(548,'2019-04-09 13:59:32',30.00,13,0,'I','root@localhost','2019-05-05 23:19:46'),(549,'2019-04-09 13:59:32',6.00,1,0,'I','root@localhost','2019-05-05 23:25:39'),(550,'2019-04-09 13:59:32',6.00,2,0,'I','root@localhost','2019-05-05 23:25:40'),(551,'2019-04-09 13:59:32',6.00,3,0,'I','root@localhost','2019-05-05 23:26:00'),(552,'2019-04-09 13:59:32',6.00,4,0,'I','root@localhost','2019-05-05 23:26:07'),(553,'2019-04-09 13:59:32',6.00,5,0,'I','root@localhost','2019-05-05 23:26:08'),(554,'2019-04-09 13:59:32',30.00,6,0,'I','root@localhost','2019-05-05 23:27:07'),(555,'2019-04-09 13:59:32',30.00,7,0,'I','root@localhost','2019-05-05 23:27:07'),(556,'2019-04-09 13:59:32',30.00,8,0,'I','root@localhost','2019-05-05 23:27:07'),(557,'2019-04-09 13:59:32',30.00,9,0,'I','root@localhost','2019-05-05 23:27:08'),(558,'2019-04-09 13:59:32',6.00,10,0,'I','root@localhost','2019-05-05 23:27:16'),(559,'2019-04-09 13:59:32',6.00,11,0,'I','root@localhost','2019-05-05 23:27:17'),(560,'2019-04-09 13:59:32',6.00,1,0,'I','root@localhost','2019-05-05 23:29:11'),(561,'2019-04-09 13:59:32',6.00,2,0,'I','root@localhost','2019-05-05 23:29:15'),(562,'2019-04-09 13:59:32',6.00,3,0,'I','root@localhost','2019-05-05 23:29:17'),(563,'2019-04-09 13:59:32',6.00,4,0,'I','root@localhost','2019-05-05 23:29:28'),(564,'2019-04-09 13:59:32',6.00,5,0,'I','root@localhost','2019-05-05 23:29:29'),(565,'2019-04-09 13:59:32',6.00,1,0,'I','root@localhost','2019-05-05 23:33:08'),(566,'2019-04-09 13:59:32',6.00,2,0,'I','root@localhost','2019-05-05 23:33:09'),(567,'2019-04-09 13:59:32',6.00,3,0,'I','root@localhost','2019-05-05 23:33:09'),(568,'2019-04-09 13:59:32',30.00,4,0,'I','root@localhost','2019-05-05 23:33:10'),(569,'2019-04-09 13:59:32',6.00,5,0,'I','root@localhost','2019-05-05 23:33:11'),(570,'2019-04-09 13:59:32',6.00,6,0,'I','root@localhost','2019-05-05 23:33:11'),(571,'2019-04-09 13:59:32',6.00,7,0,'I','root@localhost','2019-05-05 23:33:12'),(572,'2019-04-09 13:59:32',6.00,8,0,'I','root@localhost','2019-05-05 23:33:13'),(573,'2019-04-09 13:59:32',6.00,1,0,'I','root@localhost','2019-05-05 23:34:19'),(574,'2019-04-09 13:59:32',6.00,2,0,'I','root@localhost','2019-05-05 23:34:20'),(575,'2019-04-09 13:59:32',6.00,3,0,'I','root@localhost','2019-05-05 23:34:31'),(576,'2019-04-09 13:59:32',6.00,4,0,'I','root@localhost','2019-05-05 23:34:38'),(577,'2019-04-09 13:59:32',6.00,5,0,'I','root@localhost','2019-05-05 23:34:46'),(578,'2019-04-09 13:59:32',6.00,6,0,'I','root@localhost','2019-05-05 23:34:46'),(579,'2019-04-09 13:59:32',6.00,7,0,'I','root@localhost','2019-05-05 23:34:47'),(580,'2019-04-09 13:59:32',6.00,8,0,'I','root@localhost','2019-05-05 23:34:47'),(581,'2019-04-09 13:59:32',6.00,1,0,'I','root@localhost','2019-05-05 23:35:43'),(582,'2019-04-09 13:59:32',30.00,2,0,'I','root@localhost','2019-05-05 23:35:44'),(583,'2019-04-09 13:59:32',6.00,3,0,'I','root@localhost','2019-05-05 23:35:44'),(584,'2019-04-09 13:59:32',30.00,4,0,'I','root@localhost','2019-05-05 23:35:45'),(585,'2019-04-09 13:59:32',6.00,5,0,'I','root@localhost','2019-05-05 23:35:46'),(586,'2019-04-09 13:59:32',30.00,6,0,'I','root@localhost','2019-05-05 23:35:47'),(587,'2019-04-09 13:59:32',6.00,7,0,'I','root@localhost','2019-05-05 23:35:47'),(588,'2019-04-09 13:59:32',30.00,8,0,'I','root@localhost','2019-05-05 23:35:48'),(589,'2019-04-09 13:59:32',6.00,9,0,'I','root@localhost','2019-05-05 23:35:49'),(590,'2019-04-09 13:59:32',30.00,10,0,'I','root@localhost','2019-05-05 23:35:49'),(591,'2019-04-09 13:59:32',6.00,11,0,'I','root@localhost','2019-05-05 23:35:50'),(592,'2019-04-09 13:59:32',30.00,12,0,'I','root@localhost','2019-05-05 23:35:51'),(593,'2019-04-09 13:59:32',6.00,13,0,'I','root@localhost','2019-05-05 23:35:52'),(594,'2019-04-09 13:59:32',30.00,14,0,'I','root@localhost','2019-05-05 23:35:52'),(595,'2019-04-09 13:59:32',6.00,15,0,'I','root@localhost','2019-05-05 23:37:07'),(596,'2019-04-09 13:59:32',6.00,16,0,'I','root@localhost','2019-05-05 23:37:07'),(597,'2019-04-09 13:59:32',6.00,17,0,'I','root@localhost','2019-05-05 23:37:07'),(598,'2019-04-09 13:59:32',6.00,18,0,'I','root@localhost','2019-05-05 23:37:07'),(599,'2019-04-09 13:59:32',30.00,19,0,'I','root@localhost','2019-05-05 23:37:22'),(600,'2019-04-09 13:59:32',6.00,20,0,'I','root@localhost','2019-05-05 23:37:24'),(601,'2019-04-09 13:59:32',6.00,21,0,'I','root@localhost','2019-05-05 23:38:38'),(602,'2019-04-09 13:59:32',6.00,22,0,'I','root@localhost','2019-05-05 23:38:38'),(603,'2019-04-09 13:59:32',6.00,23,0,'I','root@localhost','2019-05-05 23:38:39'),(604,'2019-04-09 13:59:32',6.00,24,0,'I','root@localhost','2019-05-05 23:38:57'),(605,'2019-04-09 13:59:32',6.00,25,0,'I','root@localhost','2019-05-05 23:38:58'),(606,'2019-04-09 13:59:32',6.00,26,0,'I','root@localhost','2019-05-05 23:38:59'),(607,'2019-04-09 13:59:32',6.00,27,0,'I','root@localhost','2019-05-05 23:38:59'),(608,'2019-04-09 13:59:32',6.00,28,0,'I','root@localhost','2019-05-05 23:38:59'),(609,'2019-04-09 13:59:32',6.00,29,0,'I','root@localhost','2019-05-05 23:38:59'),(610,'2019-04-09 13:59:32',6.00,30,0,'I','root@localhost','2019-05-05 23:38:59'),(611,'2019-04-09 13:59:32',6.00,31,0,'I','root@localhost','2019-05-05 23:39:55'),(612,'2019-04-09 13:59:32',30.00,32,0,'I','root@localhost','2019-05-05 23:39:56'),(613,'2019-04-09 13:59:32',6.00,33,0,'I','root@localhost','2019-05-05 23:39:57'),(614,'2019-04-09 13:59:32',6.00,34,0,'I','root@localhost','2019-05-05 23:39:58'),(615,'2019-04-09 13:59:32',30.00,35,0,'I','root@localhost','2019-05-05 23:39:59'),(616,'2019-04-09 13:59:32',6.00,36,0,'I','root@localhost','2019-05-05 23:39:59'),(617,'2019-04-09 13:59:32',6.00,37,0,'I','root@localhost','2019-05-05 23:40:01'),(618,'2019-04-09 13:59:32',6.00,38,0,'I','root@localhost','2019-05-05 23:40:01'),(619,'2019-04-09 13:59:32',30.00,39,0,'I','root@localhost','2019-05-05 23:40:03'),(620,'2019-04-09 13:59:32',6.00,40,0,'I','root@localhost','2019-05-05 23:40:04'),(621,'2019-04-09 13:59:32',6.00,41,0,'I','root@localhost','2019-05-05 23:40:04'),(622,'2019-04-09 13:59:32',6.00,42,0,'I','root@localhost','2019-05-05 23:40:05'),(623,'2019-04-09 13:59:32',6.00,1,0,'I','root@localhost','2019-05-05 23:42:24'),(624,'2019-04-09 13:59:32',6.00,2,0,'I','root@localhost','2019-05-05 23:42:24'),(625,'2019-04-09 13:59:32',6.00,3,0,'I','root@localhost','2019-05-05 23:42:25'),(626,'2019-04-09 13:59:32',6.00,4,0,'I','root@localhost','2019-05-05 23:42:26'),(627,'2019-04-09 13:59:32',6.00,5,0,'I','root@localhost','2019-05-05 23:42:27'),(628,'2019-04-09 13:59:32',30.00,6,0,'I','root@localhost','2019-05-05 23:43:07'),(629,'2019-04-09 13:59:32',6.00,7,0,'I','root@localhost','2019-05-05 23:43:10'),(630,'2019-04-09 13:59:32',6.00,8,0,'I','root@localhost','2019-05-05 23:43:21'),(631,'2019-04-09 13:59:32',6.00,9,0,'I','root@localhost','2019-05-05 23:43:28'),(632,'2019-04-09 13:59:32',6.00,10,0,'I','root@localhost','2019-05-05 23:43:29'),(633,'2019-04-09 13:59:32',6.00,11,0,'I','root@localhost','2019-05-05 23:43:48'),(634,'2019-04-09 13:59:32',6.00,12,0,'I','root@localhost','2019-05-05 23:43:48'),(635,'2019-04-09 13:59:32',6.00,13,0,'I','root@localhost','2019-05-05 23:43:50'),(636,'2019-04-09 13:59:32',6.00,14,0,'I','root@localhost','2019-05-05 23:45:28'),(637,'2019-04-09 13:59:32',6.00,15,0,'I','root@localhost','2019-05-05 23:45:28'),(638,'2019-04-09 13:59:32',6.00,16,0,'I','root@localhost','2019-05-05 23:45:28'),(639,'2019-04-09 13:59:32',6.00,17,0,'I','root@localhost','2019-05-05 23:46:25'),(640,'2019-04-09 13:59:32',6.00,18,0,'I','root@localhost','2019-05-05 23:46:26'),(641,'2019-04-09 13:59:32',6.00,19,0,'I','root@localhost','2019-05-05 23:46:26'),(642,'2019-04-09 13:59:32',6.00,20,0,'I','root@localhost','2019-05-05 23:46:26'),(643,'2019-04-09 13:59:32',6.00,1,0,'I','root@localhost','2019-05-05 23:49:04'),(644,'2019-04-09 13:59:32',6.00,2,0,'I','root@localhost','2019-05-05 23:49:05'),(645,'2019-04-09 13:59:32',6.00,3,0,'I','root@localhost','2019-05-05 23:49:10'),(646,'2019-04-09 13:59:32',6.00,4,0,'I','root@localhost','2019-05-05 23:49:10'),(647,'2019-04-09 13:59:32',6.00,5,0,'I','root@localhost','2019-05-05 23:49:10'),(648,'2019-04-09 13:59:32',6.00,6,0,'I','root@localhost','2019-05-05 23:49:10'),(649,'2019-04-09 13:59:32',6.00,7,0,'I','root@localhost','2019-05-05 23:49:11'),(650,'2019-04-09 13:59:32',6.00,8,0,'I','root@localhost','2019-05-05 23:50:32'),(651,'2019-04-09 13:59:32',6.00,9,0,'I','root@localhost','2019-05-05 23:50:32'),(652,'2019-04-09 13:59:32',6.00,10,0,'I','root@localhost','2019-05-05 23:50:55'),(653,'2019-04-09 13:59:32',6.00,11,0,'I','root@localhost','2019-05-05 23:55:54'),(654,'2019-04-09 13:59:32',6.00,12,0,'I','root@localhost','2019-05-05 23:55:54'),(655,'2019-04-09 13:59:32',6.00,13,0,'I','root@localhost','2019-05-05 23:55:55'),(656,'2019-04-09 13:59:32',6.00,14,0,'I','root@localhost','2019-05-05 23:55:55'),(657,'2019-04-09 13:59:32',30.00,15,0,'I','root@localhost','2019-05-05 23:56:09'),(658,'2019-04-09 13:59:32',6.00,16,0,'I','root@localhost','2019-05-05 23:56:09'),(659,'2019-04-09 13:59:32',6.00,1,0,'I','root@localhost','2019-05-05 23:56:44'),(660,'2019-04-09 13:59:32',6.00,2,0,'I','root@localhost','2019-05-05 23:56:44'),(661,'2019-04-09 13:59:32',6.00,3,0,'I','root@localhost','2019-05-05 23:56:49'),(662,'2019-04-09 13:59:32',6.00,4,0,'I','root@localhost','2019-05-05 23:56:50'),(663,'2019-04-09 13:59:32',30.00,5,0,'I','root@localhost','2019-05-05 23:56:51'),(664,'2019-04-09 13:59:32',6.00,6,0,'I','root@localhost','2019-05-05 23:56:52'),(665,'2019-04-09 13:59:32',6.00,7,0,'I','root@localhost','2019-05-05 23:56:52'),(666,'2019-04-09 13:59:32',6.00,8,0,'I','root@localhost','2019-05-05 23:57:21'),(667,'2019-04-09 13:59:32',6.00,9,0,'I','root@localhost','2019-05-05 23:57:27'),(668,'2019-04-09 13:59:32',6.00,10,0,'I','root@localhost','2019-05-05 23:57:28'),(669,'2019-04-09 13:59:32',6.00,11,0,'I','root@localhost','2019-05-05 23:58:14'),(670,'2019-04-09 13:59:32',6.00,12,0,'I','root@localhost','2019-05-05 23:58:21'),(671,'2019-04-09 13:59:32',6.00,13,0,'I','root@localhost','2019-05-05 23:58:22'),(672,'2019-04-09 13:59:32',6.00,14,0,'I','root@localhost','2019-05-05 23:58:29'),(673,'2019-04-09 13:59:32',6.00,15,0,'I','root@localhost','2019-05-05 23:58:38'),(674,'2019-04-09 13:59:32',6.00,16,0,'I','root@localhost','2019-05-05 23:58:38'),(675,'2019-04-09 13:59:32',6.00,17,0,'I','root@localhost','2019-05-05 23:58:40'),(676,'2019-04-09 13:59:32',6.00,18,0,'I','root@localhost','2019-05-05 23:59:30'),(677,'2019-04-09 13:59:32',6.00,19,0,'I','root@localhost','2019-05-05 23:59:31'),(678,'2019-04-09 13:59:32',6.00,20,0,'I','root@localhost','2019-05-05 23:59:31'),(679,'2019-04-09 13:59:32',6.00,21,0,'I','root@localhost','2019-05-06 00:00:45'),(680,'2019-04-09 13:59:32',6.00,22,0,'I','root@localhost','2019-05-06 00:00:46'),(681,'2019-04-09 13:59:32',6.00,23,0,'I','root@localhost','2019-05-06 00:00:47'),(682,'2019-04-09 13:59:32',6.00,24,0,'I','root@localhost','2019-05-06 00:00:59'),(683,'2019-04-09 13:59:32',6.00,25,0,'I','root@localhost','2019-05-06 00:01:06'),(684,'2019-04-09 13:59:32',6.00,26,0,'I','root@localhost','2019-05-06 00:01:07'),(685,'2019-04-09 13:59:32',6.00,27,0,'I','root@localhost','2019-05-06 00:01:08'),(686,'2019-04-09 13:59:32',6.00,1,0,'I','root@localhost','2019-05-06 00:04:15'),(687,'2019-04-09 13:59:32',6.00,2,0,'I','root@localhost','2019-05-06 00:04:15'),(688,'2019-04-09 13:59:32',6.00,3,0,'I','root@localhost','2019-05-06 00:04:16'),(689,'2019-04-09 13:59:32',6.00,4,0,'I','root@localhost','2019-05-06 00:04:17'),(690,'2019-04-09 13:59:32',6.00,5,0,'I','root@localhost','2019-05-06 00:05:27'),(691,'2019-04-09 13:59:32',6.00,6,0,'I','root@localhost','2019-05-06 00:05:27'),(692,'2019-04-09 13:59:32',6.00,7,0,'I','root@localhost','2019-05-06 00:05:27'),(693,'2019-04-09 13:59:32',6.00,8,0,'I','root@localhost','2019-05-06 00:06:43'),(694,'2019-04-09 13:59:32',6.00,9,0,'I','root@localhost','2019-05-06 00:06:43'),(695,'2019-04-09 13:59:32',6.00,10,0,'I','root@localhost','2019-05-06 00:06:43'),(696,'2019-04-09 13:59:32',6.00,11,0,'I','root@localhost','2019-05-06 00:06:44'),(697,'2019-04-09 13:59:32',6.00,12,0,'I','root@localhost','2019-05-06 00:07:28'),(698,'2019-04-09 13:59:32',6.00,13,0,'I','root@localhost','2019-05-06 00:07:29'),(699,'2019-04-09 13:59:32',6.00,14,0,'I','root@localhost','2019-05-06 00:09:18'),(700,'2019-04-09 13:59:32',6.00,15,0,'I','root@localhost','2019-05-06 00:09:18'),(701,'2019-04-09 13:59:32',6.00,16,0,'I','root@localhost','2019-05-06 00:13:13'),(702,'2019-04-09 13:59:32',6.00,17,0,'I','root@localhost','2019-05-06 00:17:56'),(703,'2019-04-09 13:59:32',6.00,18,0,'I','root@localhost','2019-05-06 00:17:57'),(704,'2019-04-09 13:59:32',6.00,19,0,'I','root@localhost','2019-05-06 00:17:58'),(705,'2019-04-09 13:59:32',6.00,20,0,'I','root@localhost','2019-05-06 00:18:10'),(706,'2019-04-09 13:59:32',6.00,21,0,'I','root@localhost','2019-05-06 00:18:10'),(707,'2019-04-09 13:59:32',6.00,22,0,'I','root@localhost','2019-05-06 00:18:10'),(708,'2019-04-09 13:59:32',6.00,23,0,'I','root@localhost','2019-05-06 00:18:10'),(709,'2019-04-09 13:59:32',6.00,24,0,'I','root@localhost','2019-05-06 00:18:10'),(710,'2019-04-09 13:59:32',6.00,25,0,'I','root@localhost','2019-05-06 00:18:10'),(711,'2019-04-09 13:59:32',6.00,26,0,'I','root@localhost','2019-05-06 00:18:13'),(712,'2019-04-09 13:59:32',6.00,27,0,'I','root@localhost','2019-05-06 00:18:13'),(713,'2019-04-09 13:59:32',6.00,28,0,'I','root@localhost','2019-05-06 00:18:14'),(714,'2019-04-09 13:59:32',6.00,29,0,'I','root@localhost','2019-05-06 00:18:14'),(715,'2019-04-09 13:59:32',6.00,30,0,'I','root@localhost','2019-05-06 00:18:44'),(716,'2019-04-09 13:59:32',6.00,31,0,'I','root@localhost','2019-05-06 00:18:44'),(717,'2019-04-09 13:59:32',6.00,32,0,'I','root@localhost','2019-05-06 00:18:44'),(718,'2019-04-09 13:59:32',6.00,33,0,'I','root@localhost','2019-05-06 00:18:45'),(719,'2019-04-09 13:59:32',30.00,34,0,'I','root@localhost','2019-05-06 00:19:42'),(720,'2019-04-09 13:59:32',6.00,35,0,'I','root@localhost','2019-05-06 00:19:44'),(721,'2019-04-09 13:59:32',30.00,36,0,'I','root@localhost','2019-05-06 00:19:45'),(722,'2019-04-09 13:59:32',6.00,37,0,'I','root@localhost','2019-05-06 00:19:45'),(723,'2019-04-09 13:59:32',6.00,38,0,'I','root@localhost','2019-05-06 00:19:57'),(724,'2019-04-09 13:59:32',30.00,39,0,'I','root@localhost','2019-05-06 00:19:58'),(725,'2019-04-09 13:59:32',6.00,40,0,'I','root@localhost','2019-05-06 00:19:58'),(726,'2019-04-09 13:59:32',30.00,41,0,'I','root@localhost','2019-05-06 00:19:59'),(727,'2019-04-09 13:59:32',6.00,42,0,'I','root@localhost','2019-05-06 00:20:00'),(728,'2019-04-09 13:59:32',30.00,43,0,'I','root@localhost','2019-05-06 00:20:01'),(729,'2019-04-09 13:59:32',6.00,44,0,'I','root@localhost','2019-05-06 00:20:02'),(730,'2019-04-09 13:59:32',6.00,45,0,'I','root@localhost','2019-05-06 00:21:35'),(731,'2019-04-09 13:59:32',6.00,46,0,'I','root@localhost','2019-05-06 00:21:35'),(732,'2019-04-09 13:59:32',6.00,47,0,'I','root@localhost','2019-05-06 00:21:50'),(733,'2019-04-09 13:59:32',6.00,1,0,'I','root@localhost','2019-05-06 00:22:53'),(734,'2019-04-09 13:59:32',6.00,2,0,'I','root@localhost','2019-05-06 00:22:57'),(735,'2019-04-09 13:59:32',6.00,3,0,'I','root@localhost','2019-05-06 00:23:01'),(736,'2019-04-09 13:59:32',6.00,4,0,'I','root@localhost','2019-05-06 00:26:00'),(737,'2019-04-09 13:59:32',6.00,5,0,'I','root@localhost','2019-05-06 00:26:01'),(738,'2019-04-09 13:59:32',6.00,6,0,'I','root@localhost','2019-05-06 00:26:06'),(739,'2019-04-09 13:59:32',6.00,7,0,'I','root@localhost','2019-05-06 00:26:06'),(740,'2019-04-09 13:59:32',6.00,8,0,'I','root@localhost','2019-05-06 00:26:07'),(741,'2019-04-09 13:59:32',6.00,9,0,'I','root@localhost','2019-05-06 00:26:29'),(742,'2019-04-09 13:59:32',6.00,10,0,'I','root@localhost','2019-05-06 00:26:29'),(743,'2019-04-09 13:59:32',6.00,11,0,'I','root@localhost','2019-05-06 00:26:30'),(744,'2019-04-09 13:59:32',6.00,12,0,'I','root@localhost','2019-05-06 00:26:31'),(745,'2019-04-09 13:59:32',6.00,13,0,'I','root@localhost','2019-05-06 00:26:31'),(746,'2019-04-09 13:59:32',6.00,14,0,'I','root@localhost','2019-05-06 00:26:32'),(747,'2019-04-09 13:59:32',6.00,15,0,'I','root@localhost','2019-05-06 00:27:17'),(748,'2019-04-09 13:59:32',6.00,16,0,'I','root@localhost','2019-05-06 00:27:17'),(749,'2019-04-09 13:59:32',6.00,17,0,'I','root@localhost','2019-05-06 00:27:17'),(750,'2019-04-09 13:59:32',6.00,18,0,'I','root@localhost','2019-05-06 00:27:17'),(751,'2019-04-09 13:59:32',6.00,19,0,'I','root@localhost','2019-05-06 00:27:17'),(752,'2019-04-09 13:59:32',6.00,20,0,'I','root@localhost','2019-05-06 00:27:17'),(753,'2019-04-09 13:59:32',6.00,21,0,'I','root@localhost','2019-05-06 00:27:18'),(754,'2019-04-09 13:59:32',6.00,22,0,'I','root@localhost','2019-05-06 00:27:18'),(755,'2019-04-09 13:59:32',6.00,23,0,'I','root@localhost','2019-05-06 00:27:18'),(756,'2019-04-09 13:59:32',6.00,24,0,'I','root@localhost','2019-05-06 00:28:05'),(757,'2019-04-09 13:59:32',6.00,25,0,'I','root@localhost','2019-05-06 00:28:06'),(758,'2019-04-09 13:59:32',6.00,26,0,'I','root@localhost','2019-05-06 00:28:06'),(759,'2019-04-09 13:59:32',6.00,27,0,'I','root@localhost','2019-05-06 00:28:06'),(760,'2019-04-09 13:59:32',6.00,28,0,'I','root@localhost','2019-05-06 00:29:00'),(761,'2019-04-09 13:59:32',6.00,29,0,'I','root@localhost','2019-05-06 00:29:00'),(762,'2019-04-09 13:59:32',6.00,30,0,'I','root@localhost','2019-05-06 00:29:00'),(763,'2019-04-09 13:59:32',6.00,31,0,'I','root@localhost','2019-05-06 00:31:35'),(764,'2019-04-09 13:59:32',6.00,32,0,'I','root@localhost','2019-05-06 00:31:35'),(765,'2019-04-09 13:59:32',6.00,33,0,'I','root@localhost','2019-05-06 00:31:36'),(766,'2019-04-09 13:59:32',6.00,34,0,'I','root@localhost','2019-05-06 00:31:36'),(767,'2019-04-09 13:59:32',6.00,35,0,'I','root@localhost','2019-05-06 00:31:36'),(768,'2019-04-09 13:59:32',6.00,36,0,'I','root@localhost','2019-05-06 00:32:43'),(769,'2019-04-09 13:59:32',6.00,37,0,'I','root@localhost','2019-05-06 00:32:43'),(770,'2019-04-09 13:59:32',6.00,38,0,'I','root@localhost','2019-05-06 00:32:43'),(771,'2019-04-09 13:59:32',6.00,1,0,'I','root@localhost','2019-05-06 00:34:01'),(772,'2019-04-09 13:59:32',6.00,2,0,'I','root@localhost','2019-05-06 00:34:03'),(773,'2019-04-09 13:59:32',6.00,3,0,'I','root@localhost','2019-05-06 00:34:06'),(774,'2019-04-09 13:59:32',6.00,4,0,'I','root@localhost','2019-05-06 00:34:07'),(775,'2019-04-09 13:59:32',6.00,5,0,'I','root@localhost','2019-05-06 00:34:09'),(776,'2019-04-09 13:59:32',6.00,6,0,'I','root@localhost','2019-05-06 00:35:37'),(777,'2019-04-09 13:59:32',6.00,7,0,'I','root@localhost','2019-05-06 00:35:38'),(778,'2019-04-09 13:59:32',6.00,8,0,'I','root@localhost','2019-05-06 00:35:39'),(779,'2019-04-09 13:59:32',6.00,9,0,'I','root@localhost','2019-05-06 00:35:40'),(780,'2019-04-09 13:59:32',6.00,10,0,'I','root@localhost','2019-05-06 00:36:16'),(781,'2019-04-09 13:59:32',6.00,11,0,'I','root@localhost','2019-05-06 00:36:16'),(782,'2019-04-09 13:59:32',6.00,1,0,'I','root@localhost','2019-05-06 00:37:42'),(783,'2019-04-09 13:59:32',6.00,2,0,'I','root@localhost','2019-05-06 00:39:11'),(784,'2019-04-09 13:59:32',6.00,3,0,'I','root@localhost','2019-05-06 00:39:12'),(785,'2019-04-09 13:59:32',6.00,4,0,'I','root@localhost','2019-05-06 00:39:13'),(786,'2019-04-09 13:59:32',6.00,5,0,'I','root@localhost','2019-05-06 00:39:13'),(787,'2019-04-09 13:59:32',6.00,6,0,'I','root@localhost','2019-05-06 00:39:14'),(788,'2019-04-09 13:59:32',6.00,7,0,'I','root@localhost','2019-05-06 00:39:25'),(789,'2019-04-09 13:59:32',6.00,8,0,'I','root@localhost','2019-05-06 00:39:25'),(790,'2019-04-09 13:59:32',6.00,9,0,'I','root@localhost','2019-05-06 00:39:26'),(791,'2019-04-09 13:59:32',6.00,10,0,'I','root@localhost','2019-05-06 00:39:26'),(792,'2019-04-09 13:59:32',6.00,11,0,'I','root@localhost','2019-05-06 00:39:26'),(793,'2019-04-09 13:59:32',6.00,12,0,'I','root@localhost','2019-05-06 00:39:26'),(794,'2019-04-09 13:59:32',6.00,13,0,'I','root@localhost','2019-05-06 00:39:26'),(795,'2019-04-09 13:59:32',6.00,14,0,'I','root@localhost','2019-05-06 00:39:26'),(796,'2019-04-09 13:59:32',6.00,15,0,'I','root@localhost','2019-05-06 00:39:27'),(797,'2019-04-09 13:59:32',6.00,16,0,'I','root@localhost','2019-05-06 00:39:43'),(798,'2019-04-09 13:59:32',6.00,17,0,'I','root@localhost','2019-05-06 00:39:48'),(799,'2019-04-09 13:59:32',30.00,18,0,'I','root@localhost','2019-05-06 00:39:50'),(800,'2019-04-09 13:59:32',30.00,19,0,'I','root@localhost','2019-05-06 00:39:51'),(801,'2019-04-09 13:59:32',6.00,20,0,'I','root@localhost','2019-05-06 00:39:52'),(802,'2019-04-09 13:59:32',6.00,1,0,'I','root@localhost','2019-05-06 00:41:00'),(803,'2019-04-09 13:59:32',6.00,2,0,'I','root@localhost','2019-05-06 00:41:01'),(804,'2019-04-09 13:59:32',6.00,3,0,'I','root@localhost','2019-05-06 00:41:01'),(805,'2019-04-09 13:59:32',6.00,4,0,'I','root@localhost','2019-05-06 00:41:02'),(806,'2019-04-09 13:59:32',6.00,5,0,'I','root@localhost','2019-05-06 00:41:27'),(807,'2019-04-09 13:59:32',6.00,6,0,'I','root@localhost','2019-05-06 00:41:28'),(808,'2019-04-09 13:59:32',6.00,7,0,'I','root@localhost','2019-05-06 00:41:28'),(809,'2019-04-09 13:59:32',6.00,8,0,'I','root@localhost','2019-05-06 00:41:28'),(810,'2019-04-09 13:59:32',6.00,9,0,'I','root@localhost','2019-05-06 00:41:48'),(811,'2019-04-09 13:59:32',6.00,10,0,'I','root@localhost','2019-05-06 00:41:48'),(812,'2019-04-09 13:59:32',6.00,11,0,'I','root@localhost','2019-05-06 00:41:49'),(813,'2019-04-09 13:59:32',6.00,12,0,'I','root@localhost','2019-05-06 00:41:55'),(814,'2019-04-09 13:59:32',6.00,13,0,'I','root@localhost','2019-05-06 00:41:55'),(815,'2019-04-09 13:59:32',6.00,14,0,'I','root@localhost','2019-05-06 00:41:55'),(816,'2019-04-09 13:59:32',6.00,15,0,'I','root@localhost','2019-05-06 00:41:55'),(817,'2019-04-09 13:59:32',6.00,16,0,'I','root@localhost','2019-05-06 00:41:56'),(818,'2019-04-09 13:59:32',6.00,17,0,'I','root@localhost','2019-05-06 00:41:56'),(819,'2019-04-09 13:59:32',6.00,18,0,'I','root@localhost','2019-05-06 00:41:56'),(820,'2019-04-09 13:59:32',6.00,1,0,'I','root@localhost','2019-05-06 00:43:39'),(821,'2019-04-09 13:59:32',6.00,2,0,'I','root@localhost','2019-05-06 00:43:40'),(822,'2019-04-09 13:59:32',6.00,3,0,'I','root@localhost','2019-05-06 00:43:40'),(823,'2019-04-09 13:59:32',6.00,4,0,'I','root@localhost','2019-05-06 00:43:41'),(824,'2019-04-09 13:59:32',6.00,5,0,'I','root@localhost','2019-05-06 00:43:41'),(825,'2019-04-09 13:59:32',6.00,6,0,'I','root@localhost','2019-05-06 00:43:41'),(826,'2019-04-09 13:59:32',6.00,7,0,'I','root@localhost','2019-05-06 00:43:42'),(827,'2019-04-09 13:59:32',6.00,8,0,'I','root@localhost','2019-05-06 00:43:45'),(828,'2019-04-09 13:59:32',6.00,9,0,'I','root@localhost','2019-05-06 00:43:45'),(829,'2019-04-09 13:59:32',6.00,10,0,'I','root@localhost','2019-05-06 00:43:45'),(830,'2019-04-09 13:59:32',6.00,1,0,'I','root@localhost','2019-05-06 00:46:50'),(831,'2019-04-09 13:59:32',6.00,2,0,'I','root@localhost','2019-05-06 00:46:50'),(832,'2019-04-09 13:59:32',6.00,3,0,'I','root@localhost','2019-05-06 00:46:51'),(833,'2019-04-09 13:59:32',6.00,4,0,'I','root@localhost','2019-05-06 00:46:52'),(834,'2019-04-09 13:59:32',6.00,5,0,'I','root@localhost','2019-05-06 00:47:01'),(835,'2019-04-09 13:59:32',6.00,6,0,'I','root@localhost','2019-05-06 00:47:02'),(836,'2019-04-09 13:59:32',6.00,7,0,'I','root@localhost','2019-05-06 00:47:03'),(837,'2019-04-09 13:59:32',6.00,1,0,'I','root@localhost','2019-05-06 00:48:41'),(838,'2019-04-09 13:59:32',6.00,2,0,'I','root@localhost','2019-05-06 00:48:42'),(839,'2019-04-09 13:59:32',6.00,3,0,'I','root@localhost','2019-05-06 00:48:42'),(840,'2019-04-09 13:59:32',6.00,4,0,'I','root@localhost','2019-05-06 00:48:42'),(841,'2019-04-09 13:59:32',6.00,5,0,'I','root@localhost','2019-05-06 00:48:42'),(842,'2019-04-09 13:59:32',6.00,6,0,'I','root@localhost','2019-05-06 00:48:43'),(843,'2019-04-09 13:59:32',6.00,7,0,'I','root@localhost','2019-05-06 00:48:43'),(844,'2019-04-09 13:59:32',6.00,8,0,'I','root@localhost','2019-05-06 00:48:43'),(845,'2019-04-09 13:59:32',6.00,9,0,'I','root@localhost','2019-05-06 00:48:43'),(846,'2019-04-09 13:59:32',6.00,10,0,'I','root@localhost','2019-05-06 00:48:45'),(847,'2019-04-09 13:59:32',6.00,11,0,'I','root@localhost','2019-05-06 00:48:46'),(848,'2019-04-09 13:59:32',6.00,12,0,'I','root@localhost','2019-05-06 00:48:48'),(849,'2019-04-09 13:59:32',6.00,13,0,'I','root@localhost','2019-05-06 00:48:49'),(850,'2019-04-09 13:59:32',6.00,14,0,'I','root@localhost','2019-05-06 00:54:11'),(851,'2019-04-09 13:59:32',6.00,15,0,'I','root@localhost','2019-05-06 00:54:13'),(852,'2019-04-09 13:59:32',6.00,16,0,'I','root@localhost','2019-05-06 00:54:13'),(853,'2019-04-09 13:59:32',6.00,17,0,'I','root@localhost','2019-05-06 00:54:14'),(854,'2019-04-09 13:59:32',6.00,18,0,'I','root@localhost','2019-05-06 00:54:14'),(855,'2019-04-09 13:59:32',6.00,19,0,'I','root@localhost','2019-05-06 00:54:15'),(856,'2019-04-09 13:59:32',30.00,20,0,'I','root@localhost','2019-05-06 00:54:25'),(857,'2019-04-09 13:59:32',6.00,21,0,'I','root@localhost','2019-05-06 00:54:26'),(858,'2019-04-09 13:59:32',6.00,22,0,'I','root@localhost','2019-05-06 00:54:29'),(859,'2019-04-09 13:59:32',6.00,23,0,'I','root@localhost','2019-05-06 00:54:30'),(860,'2019-04-09 13:59:32',6.00,24,0,'I','root@localhost','2019-05-06 00:54:30'),(861,'2019-04-09 13:59:32',6.00,25,0,'I','root@localhost','2019-05-06 00:54:30'),(862,'2019-04-09 13:59:32',6.00,1,0,'I','root@localhost','2019-05-06 00:55:21'),(863,'2019-04-09 13:59:32',6.00,2,0,'I','root@localhost','2019-05-06 00:55:21'),(864,'2019-04-09 13:59:32',6.00,3,0,'I','root@localhost','2019-05-06 00:55:22'),(865,'2019-04-09 13:59:32',6.00,4,0,'I','root@localhost','2019-05-06 00:55:22'),(866,'2019-04-09 13:59:32',30.00,5,0,'I','root@localhost','2019-05-06 00:55:25'),(867,'2019-04-09 13:59:32',6.00,6,0,'I','root@localhost','2019-05-06 00:55:25'),(868,'2019-04-09 13:59:32',6.00,7,0,'I','root@localhost','2019-05-06 00:55:26'),(869,'2019-04-09 13:59:32',6.00,8,0,'I','root@localhost','2019-05-06 00:55:26'),(870,'2019-04-09 13:59:32',6.00,9,0,'I','root@localhost','2019-05-06 00:55:26'),(871,'2019-04-09 13:59:32',6.00,10,0,'I','root@localhost','2019-05-06 00:55:26'),(872,'2019-04-09 13:59:32',6.00,11,0,'I','root@localhost','2019-05-06 00:55:27'),(873,'2019-04-09 13:59:32',6.00,12,0,'I','root@localhost','2019-05-06 00:55:27'),(874,'2019-04-09 13:59:32',6.00,13,0,'I','root@localhost','2019-05-06 00:55:27'),(875,'2019-04-09 13:59:32',6.00,14,0,'I','root@localhost','2019-05-06 00:55:27'),(876,'2019-04-09 13:59:32',6.00,15,0,'I','root@localhost','2019-05-06 00:55:27'),(877,'2019-04-09 13:59:32',6.00,16,0,'I','root@localhost','2019-05-06 00:55:27'),(878,'2019-04-09 13:59:32',6.00,17,0,'I','root@localhost','2019-05-06 00:55:28'),(879,'2019-04-09 13:59:32',6.00,18,0,'I','root@localhost','2019-05-06 00:55:28'),(880,'2019-04-09 13:59:32',6.00,19,0,'I','root@localhost','2019-05-06 00:55:28'),(881,'2019-04-09 13:59:32',6.00,20,0,'I','root@localhost','2019-05-06 00:57:27'),(882,'2019-04-09 13:59:32',6.00,21,0,'I','root@localhost','2019-05-06 00:57:28'),(883,'2019-04-09 13:59:32',6.00,22,0,'I','root@localhost','2019-05-06 00:57:29'),(884,'2019-04-09 13:59:32',6.00,23,0,'I','root@localhost','2019-05-06 00:57:30'),(885,'2019-04-09 13:59:32',50.00,24,0,'I','root@localhost','2019-05-06 00:57:41'),(886,'2019-04-09 13:59:32',50.00,25,0,'I','root@localhost','2019-05-06 00:57:42'),(887,'2019-04-09 13:59:32',50.00,26,0,'I','root@localhost','2019-05-06 00:57:43'),(888,'2019-04-09 13:59:32',50.00,27,0,'I','root@localhost','2019-05-06 00:57:44'),(889,'2019-04-09 13:59:32',50.00,28,0,'I','root@localhost','2019-05-06 00:57:44'),(890,'2019-04-09 13:59:32',50.00,29,0,'I','root@localhost','2019-05-06 00:57:45'),(891,'2019-04-09 13:59:32',50.00,30,0,'I','root@localhost','2019-05-06 00:57:56'),(892,'2019-04-09 13:59:32',50.00,31,0,'I','root@localhost','2019-05-06 00:57:58'),(893,'2019-04-09 13:59:32',50.00,32,0,'I','root@localhost','2019-05-06 00:57:59'),(894,'2019-04-09 13:59:32',50.00,33,0,'I','root@localhost','2019-05-06 00:58:11'),(895,'2019-04-09 13:59:32',50.00,34,0,'I','root@localhost','2019-05-06 00:58:11'),(896,'2019-04-09 13:59:32',50.00,35,0,'I','root@localhost','2019-05-06 00:58:11'),(897,'2019-04-09 13:59:32',50.00,36,0,'I','root@localhost','2019-05-06 00:58:12'),(898,'2019-04-09 13:59:32',50.00,37,0,'I','root@localhost','2019-05-06 00:58:12'),(899,'2019-04-09 13:59:32',50.00,38,0,'I','root@localhost','2019-05-06 00:58:12'),(900,'2019-04-09 13:59:32',50.00,39,0,'I','root@localhost','2019-05-06 00:58:13'),(901,'2019-04-09 13:59:32',50.00,40,0,'I','root@localhost','2019-05-06 00:58:24'),(902,'2019-04-09 13:59:32',50.00,41,0,'I','root@localhost','2019-05-06 00:58:24'),(903,'2019-04-09 13:59:32',50.00,42,0,'I','root@localhost','2019-05-06 00:58:25'),(904,'2019-04-09 13:59:32',50.00,43,0,'I','root@localhost','2019-05-06 00:58:26'),(905,'2019-04-09 13:59:32',50.00,44,0,'I','root@localhost','2019-05-06 00:58:26'),(906,'2019-04-09 13:59:32',50.00,45,0,'I','root@localhost','2019-05-06 00:58:26'),(907,'2019-04-09 13:59:32',50.00,46,0,'I','root@localhost','2019-05-06 00:58:26'),(908,'2019-04-09 13:59:32',50.00,47,0,'I','root@localhost','2019-05-06 00:58:26'),(909,'2019-04-09 13:59:32',50.00,48,0,'I','root@localhost','2019-05-06 00:58:27'),(910,'2019-04-09 13:59:32',50.00,49,0,'I','root@localhost','2019-05-06 00:58:27'),(911,'2019-04-09 13:59:32',50.00,50,0,'I','root@localhost','2019-05-06 00:58:27'),(912,'2019-04-09 13:59:32',50.00,51,0,'I','root@localhost','2019-05-06 00:58:27'),(913,'2019-04-09 13:59:32',50.00,52,0,'I','root@localhost','2019-05-06 00:58:27'),(914,'2019-04-09 13:59:32',50.00,53,0,'I','root@localhost','2019-05-06 00:58:27'),(915,'2019-04-09 13:59:32',50.00,54,0,'I','root@localhost','2019-05-06 00:58:28'),(916,'2019-04-09 13:59:32',50.00,55,0,'I','root@localhost','2019-05-06 00:58:28'),(917,'2019-04-09 13:59:32',50.00,56,0,'I','root@localhost','2019-05-06 00:58:28'),(918,'2019-04-09 13:59:32',50.00,57,0,'I','root@localhost','2019-05-06 00:58:28'),(919,'2019-04-09 13:59:32',50.00,58,0,'I','root@localhost','2019-05-06 00:58:28'),(920,'2019-04-09 13:59:32',50.00,59,0,'I','root@localhost','2019-05-06 00:58:28'),(921,'2019-04-09 13:59:32',50.00,60,0,'I','root@localhost','2019-05-06 00:58:29'),(922,'2019-04-09 13:59:32',50.00,61,0,'I','root@localhost','2019-05-06 00:58:30'),(923,'2019-04-09 13:59:32',50.00,62,0,'I','root@localhost','2019-05-06 00:58:34'),(924,'2019-04-09 13:59:32',50.00,63,0,'I','root@localhost','2019-05-06 00:58:37'),(925,'2019-04-09 13:59:32',50.00,64,0,'I','root@localhost','2019-05-06 00:58:38'),(926,'2019-04-09 13:59:32',50.00,65,0,'I','root@localhost','2019-05-06 00:58:39'),(927,'2019-05-11 06:33:52',30.90,66,0,'I','root@localhost','2019-05-11 07:36:34'),(928,'2019-05-11 06:33:59',30.90,67,0,'I','root@localhost','2019-05-11 07:36:34'),(929,'2019-05-11 06:34:15',30.90,68,0,'I','root@localhost','2019-05-11 07:36:34'),(930,'2019-05-11 06:34:28',30.90,69,0,'I','root@localhost','2019-05-11 07:36:34'),(931,'2019-05-11 06:34:32',30.90,70,0,'I','root@localhost','2019-05-11 07:36:34'),(932,'2019-05-11 06:34:35',30.90,71,0,'I','root@localhost','2019-05-11 07:36:34'),(933,'2019-05-11 06:35:58',30.90,72,0,'I','root@localhost','2019-05-11 07:36:34'),(934,'2019-05-11 06:36:00',30.90,73,0,'I','root@localhost','2019-05-11 07:36:34'),(935,'2019-05-11 06:36:02',30.90,74,0,'I','root@localhost','2019-05-11 07:36:34'),(936,'2019-05-11 06:36:07',30.80,75,0,'I','root@localhost','2019-05-11 07:36:34'),(937,'2019-05-11 06:36:11',30.90,76,0,'I','root@localhost','2019-05-11 07:36:34'),(938,'2019-05-11 06:36:22',30.90,77,0,'I','root@localhost','2019-05-11 07:36:34'),(939,'2019-05-11 06:36:37',30.90,78,0,'I','root@localhost','2019-05-11 07:36:54'),(940,'2019-05-11 06:36:46',30.90,79,0,'I','root@localhost','2019-05-11 07:36:54'),(941,'2019-05-11 06:36:53',30.80,80,0,'I','root@localhost','2019-05-11 07:37:14'),(942,'2019-05-11 06:36:55',30.80,81,0,'I','root@localhost','2019-05-11 07:37:14'),(943,'2019-05-11 06:36:57',30.80,82,0,'I','root@localhost','2019-05-11 07:37:14'),(944,'2019-05-11 06:37:06',30.90,83,0,'I','root@localhost','2019-05-11 07:37:14'),(945,'2019-05-11 06:37:17',30.90,84,0,'I','root@localhost','2019-05-11 07:37:35'),(946,'2019-05-11 06:37:51',30.90,85,0,'I','root@localhost','2019-05-11 07:37:55'),(947,'2019-05-11 06:37:53',30.90,86,0,'I','root@localhost','2019-05-11 07:38:15'),(948,'2019-05-11 06:37:55',30.90,87,0,'I','root@localhost','2019-05-11 07:38:15'),(949,'2019-05-11 06:38:13',30.90,88,0,'I','root@localhost','2019-05-11 07:38:35'),(950,'2019-05-11 06:38:15',30.90,89,0,'I','root@localhost','2019-05-11 07:38:35'),(951,'2019-05-11 06:38:20',30.80,90,0,'I','root@localhost','2019-05-11 07:38:35'),(952,'2019-05-11 06:38:31',30.90,91,0,'I','root@localhost','2019-05-11 07:38:35'),(953,'2019-05-11 06:38:56',30.90,92,0,'I','root@localhost','2019-05-11 07:39:15'),(954,'2019-05-11 06:39:13',30.90,93,0,'I','root@localhost','2019-05-11 07:39:35'),(955,'2019-05-11 06:39:15',30.90,94,0,'I','root@localhost','2019-05-11 07:39:35'),(956,'2019-05-11 06:39:25',30.90,95,0,'I','root@localhost','2019-05-11 07:39:35'),(957,'2019-05-11 06:39:36',30.90,96,0,'I','root@localhost','2019-05-11 07:39:55'),(958,'2019-05-11 06:39:40',30.90,97,0,'I','root@localhost','2019-05-11 07:39:55'),(959,'2019-05-11 06:39:43',30.90,98,0,'I','root@localhost','2019-05-11 07:39:55'),(960,'2019-05-11 06:39:53',30.90,99,0,'I','root@localhost','2019-05-11 07:40:15'),(961,'2019-05-11 06:40:00',30.90,100,0,'I','root@localhost','2019-05-11 07:40:15'),(962,'2019-05-11 06:40:07',30.90,101,0,'I','root@localhost','2019-05-11 07:40:15'),(963,'2019-05-11 06:40:18',30.80,102,0,'I','root@localhost','2019-05-11 07:40:35'),(964,'2019-05-11 06:40:47',30.90,103,0,'I','root@localhost','2019-05-11 07:40:55'),(965,'2019-05-11 06:40:52',30.90,104,0,'I','root@localhost','2019-05-11 07:40:55'),(966,'2019-05-11 06:41:10',30.90,105,0,'I','root@localhost','2019-05-11 07:41:15'),(967,'2019-05-11 06:41:14',30.80,106,0,'I','root@localhost','2019-05-11 07:41:35'),(968,'2019-05-11 06:41:23',30.90,107,0,'I','root@localhost','2019-05-11 07:41:35'),(969,'2019-05-11 06:41:28',30.80,108,0,'I','root@localhost','2019-05-11 07:41:35'),(970,'2019-05-11 06:41:36',30.90,109,0,'I','root@localhost','2019-05-11 07:41:55'),(971,'2019-05-11 06:41:41',30.90,110,0,'I','root@localhost','2019-05-11 07:41:55'),(972,'2019-05-11 06:41:48',30.90,111,0,'I','root@localhost','2019-05-11 07:41:55'),(973,'2019-05-11 06:41:53',30.80,112,0,'I','root@localhost','2019-05-11 07:42:15'),(974,'2019-05-11 06:42:06',30.90,113,0,'I','root@localhost','2019-05-11 07:42:15'),(975,'2019-05-11 06:42:17',30.90,114,0,'I','root@localhost','2019-05-11 07:42:35'),(976,'2019-05-11 06:42:19',30.90,115,0,'I','root@localhost','2019-05-11 07:42:35'),(977,'2019-05-11 06:42:22',30.90,116,0,'I','root@localhost','2019-05-11 07:42:35'),(978,'2019-05-11 06:42:26',30.90,117,0,'I','root@localhost','2019-05-11 07:42:35'),(979,'2019-05-11 06:42:30',30.80,118,0,'I','root@localhost','2019-05-11 07:42:35'),(980,'2019-05-11 06:42:41',30.90,119,0,'I','root@localhost','2019-05-11 07:42:55'),(981,'2019-05-11 06:42:44',30.90,120,0,'I','root@localhost','2019-05-11 07:42:55'),(982,'2019-05-11 06:42:53',30.90,121,0,'I','root@localhost','2019-05-11 07:43:15'),(983,'2019-05-11 06:43:02',30.90,122,0,'I','root@localhost','2019-05-11 07:43:15'),(984,'2019-05-11 06:43:08',30.90,123,0,'I','root@localhost','2019-05-11 07:43:15'),(985,'2019-05-11 06:43:09',30.90,124,0,'I','root@localhost','2019-05-11 07:43:15'),(986,'2019-05-11 06:43:13',30.90,125,0,'I','root@localhost','2019-05-11 07:43:35'),(987,'2019-05-11 06:43:26',30.90,126,0,'I','root@localhost','2019-05-11 07:43:35'),(988,'2019-05-11 06:43:46',30.90,127,0,'I','root@localhost','2019-05-11 07:43:55'),(989,'2019-05-11 06:44:05',30.90,128,0,'I','root@localhost','2019-05-11 07:44:15'),(990,'2019-05-11 06:44:15',30.90,129,0,'I','root@localhost','2019-05-11 07:44:35'),(991,'2019-05-11 06:44:22',30.90,130,0,'I','root@localhost','2019-05-11 07:44:35'),(992,'2019-05-11 06:44:36',30.90,131,0,'I','root@localhost','2019-05-11 07:44:55'),(993,'2019-05-11 06:44:38',30.90,132,0,'I','root@localhost','2019-05-11 07:44:55'),(994,'2019-05-11 06:44:40',30.90,133,0,'I','root@localhost','2019-05-11 07:44:55'),(995,'2019-05-11 06:44:45',30.90,134,0,'I','root@localhost','2019-05-11 07:44:55'),(996,'2019-05-11 06:45:07',30.90,135,0,'I','root@localhost','2019-05-11 07:45:15'),(997,'2019-05-11 06:45:16',30.90,136,0,'I','root@localhost','2019-05-11 07:45:35'),(998,'2019-05-11 06:45:18',30.90,137,0,'I','root@localhost','2019-05-11 07:45:35'),(999,'2019-05-11 06:45:27',30.90,138,0,'I','root@localhost','2019-05-11 07:45:35'),(1000,'2019-05-11 06:45:29',30.90,139,0,'I','root@localhost','2019-05-11 07:45:35'),(1001,'2019-05-11 06:45:47',30.90,140,0,'I','root@localhost','2019-05-11 07:45:55'),(1002,'2019-05-11 06:45:54',30.90,141,0,'I','root@localhost','2019-05-11 07:46:15'),(1003,'2019-05-11 06:46:19',30.80,142,0,'I','root@localhost','2019-05-11 07:46:35'),(1004,'2019-05-11 06:46:25',30.90,143,0,'I','root@localhost','2019-05-11 07:46:35'),(1005,'2019-05-11 06:46:49',30.90,144,0,'I','root@localhost','2019-05-11 07:46:55'),(1006,'2019-05-11 06:46:56',30.90,145,0,'I','root@localhost','2019-05-11 07:47:15'),(1007,'2019-05-11 06:47:16',30.90,146,0,'I','root@localhost','2019-05-11 07:47:35'),(1008,'2019-05-11 06:47:22',30.90,147,0,'I','root@localhost','2019-05-11 07:47:35'),(1009,'2019-05-11 06:47:31',30.90,148,0,'I','root@localhost','2019-05-11 07:47:35'),(1010,'2019-05-11 06:47:40',30.90,149,0,'I','root@localhost','2019-05-11 07:47:55'),(1011,'2019-05-11 06:47:54',30.80,150,0,'I','root@localhost','2019-05-11 07:48:15'),(1012,'2019-05-11 06:48:12',30.90,151,0,'I','root@localhost','2019-05-11 07:48:15'),(1013,'2019-05-11 06:48:19',30.90,152,0,'I','root@localhost','2019-05-11 07:48:35'),(1014,'2019-05-11 06:48:27',30.80,153,0,'I','root@localhost','2019-05-11 07:48:55'),(1015,'2019-05-11 06:48:34',30.90,154,0,'I','root@localhost','2019-05-11 07:48:55'),(1016,'2019-05-11 06:48:56',30.80,155,0,'I','root@localhost','2019-05-11 07:49:15'),(1017,'2019-05-11 06:48:59',30.90,156,0,'I','root@localhost','2019-05-11 07:49:15'),(1018,'2019-05-11 06:49:06',30.90,157,0,'I','root@localhost','2019-05-11 07:49:15'),(1019,'2019-05-11 06:49:19',30.80,158,0,'I','root@localhost','2019-05-11 07:49:35'),(1020,'2019-05-11 06:49:28',30.80,159,0,'I','root@localhost','2019-05-11 07:49:35'),(1021,'2019-05-11 06:49:41',30.90,160,0,'I','root@localhost','2019-05-11 07:49:55'),(1022,'2019-05-11 06:49:48',30.90,161,0,'I','root@localhost','2019-05-11 07:49:56'),(1023,'2019-05-11 06:49:54',30.90,162,0,'I','root@localhost','2019-05-11 07:50:16'),(1024,'2019-05-11 06:49:57',30.90,163,0,'I','root@localhost','2019-05-11 07:50:16'),(1025,'2019-05-11 06:49:59',30.80,164,0,'I','root@localhost','2019-05-11 07:50:16'),(1026,'2019-05-11 06:50:01',30.80,165,0,'I','root@localhost','2019-05-11 07:50:16'),(1027,'2019-05-11 06:50:04',30.90,166,0,'I','root@localhost','2019-05-11 07:50:16'),(1028,'2019-05-11 06:59:34',30.90,167,0,'I','root@localhost','2019-05-11 08:00:41'),(1029,'2019-05-11 06:59:35',30.90,168,0,'I','root@localhost','2019-05-11 08:00:41'),(1030,'2019-05-11 06:59:37',30.90,169,0,'I','root@localhost','2019-05-11 08:00:41'),(1031,'2019-05-11 06:59:39',30.90,170,0,'I','root@localhost','2019-05-11 08:00:41'),(1032,'2019-05-11 06:59:41',30.80,171,0,'I','root@localhost','2019-05-11 08:00:41'),(1033,'2019-05-11 06:59:43',30.80,172,0,'I','root@localhost','2019-05-11 08:00:41'),(1034,'2019-05-11 06:59:44',30.90,173,0,'I','root@localhost','2019-05-11 08:00:41'),(1035,'2019-05-11 06:59:46',30.90,174,0,'I','root@localhost','2019-05-11 08:00:41'),(1036,'2019-05-11 06:59:48',30.90,175,0,'I','root@localhost','2019-05-11 08:00:41'),(1037,'2019-05-11 06:59:50',30.90,176,0,'I','root@localhost','2019-05-11 08:00:41'),(1038,'2019-05-11 06:59:52',30.90,177,0,'I','root@localhost','2019-05-11 08:00:41'),(1039,'2019-05-11 06:59:54',30.90,178,0,'I','root@localhost','2019-05-11 08:00:41'),(1040,'2019-05-11 06:59:55',30.90,179,0,'I','root@localhost','2019-05-11 08:00:41'),(1041,'2019-05-11 06:59:57',30.90,180,0,'I','root@localhost','2019-05-11 08:00:41'),(1042,'2019-05-11 06:59:59',30.80,181,0,'I','root@localhost','2019-05-11 08:00:41'),(1043,'2019-05-11 07:00:01',30.80,182,0,'I','root@localhost','2019-05-11 08:00:41'),(1044,'2019-05-11 07:00:03',30.90,183,0,'I','root@localhost','2019-05-11 08:00:41'),(1045,'2019-05-11 07:00:04',30.90,184,0,'I','root@localhost','2019-05-11 08:00:41'),(1046,'2019-05-11 07:00:06',30.90,185,0,'I','root@localhost','2019-05-11 08:00:41'),(1047,'2019-05-11 07:00:08',30.90,186,0,'I','root@localhost','2019-05-11 08:00:41'),(1048,'2019-05-11 07:00:10',30.90,187,0,'I','root@localhost','2019-05-11 08:00:41'),(1049,'2019-05-11 07:00:12',30.90,188,0,'I','root@localhost','2019-05-11 08:00:41'),(1050,'2019-05-11 07:00:13',30.90,189,0,'I','root@localhost','2019-05-11 08:00:41'),(1051,'2019-05-11 07:00:15',30.90,190,0,'I','root@localhost','2019-05-11 08:00:41'),(1052,'2019-05-11 07:00:17',30.90,191,0,'I','root@localhost','2019-05-11 08:00:41'),(1053,'2019-05-11 07:00:19',30.90,192,0,'I','root@localhost','2019-05-11 08:00:41'),(1054,'2019-05-11 07:00:21',30.90,193,0,'I','root@localhost','2019-05-11 08:00:41'),(1055,'2019-05-11 07:00:22',30.90,194,0,'I','root@localhost','2019-05-11 08:00:41'),(1056,'2019-05-11 07:00:24',30.90,195,0,'I','root@localhost','2019-05-11 08:00:41'),(1057,'2019-05-11 07:00:26',30.90,196,0,'I','root@localhost','2019-05-11 08:00:41'),(1058,'2019-05-11 07:00:28',30.90,197,0,'I','root@localhost','2019-05-11 08:00:41'),(1059,'2019-05-11 07:00:30',30.90,198,0,'I','root@localhost','2019-05-11 08:00:41'),(1060,'2019-05-11 07:00:31',30.90,199,0,'I','root@localhost','2019-05-11 08:00:41'),(1061,'2019-05-11 07:00:33',30.90,200,0,'I','root@localhost','2019-05-11 08:00:41'),(1062,'2019-05-11 07:00:35',30.90,201,0,'I','root@localhost','2019-05-11 08:00:41'),(1063,'2019-05-11 07:00:37',30.90,202,0,'I','root@localhost','2019-05-11 08:00:41'),(1064,'2019-05-11 07:00:39',30.80,203,0,'I','root@localhost','2019-05-11 08:01:01'),(1065,'2019-05-11 07:00:41',30.80,204,0,'I','root@localhost','2019-05-11 08:01:01'),(1066,'2019-05-11 07:00:42',30.90,205,0,'I','root@localhost','2019-05-11 08:01:01'),(1067,'2019-05-11 07:00:44',30.90,206,0,'I','root@localhost','2019-05-11 08:01:01'),(1068,'2019-05-11 07:00:46',30.90,207,0,'I','root@localhost','2019-05-11 08:01:01'),(1069,'2019-05-11 07:00:48',30.90,208,0,'I','root@localhost','2019-05-11 08:01:01'),(1070,'2019-05-11 07:00:50',30.90,209,0,'I','root@localhost','2019-05-11 08:01:01'),(1071,'2019-05-11 07:00:51',30.90,210,0,'I','root@localhost','2019-05-11 08:01:01'),(1072,'2019-05-11 07:00:53',30.90,211,0,'I','root@localhost','2019-05-11 08:01:01'),(1073,'2019-05-11 07:00:55',30.90,212,0,'I','root@localhost','2019-05-11 08:01:01'),(1074,'2019-05-11 07:00:57',30.90,213,0,'I','root@localhost','2019-05-11 08:01:01'),(1075,'2019-05-11 07:00:59',30.90,214,0,'I','root@localhost','2019-05-11 08:01:21'),(1076,'2019-05-11 07:01:00',30.90,215,0,'I','root@localhost','2019-05-11 08:01:21'),(1077,'2019-05-11 07:01:02',30.90,216,0,'I','root@localhost','2019-05-11 08:01:21'),(1078,'2019-05-11 07:01:04',30.90,217,0,'I','root@localhost','2019-05-11 08:01:21'),(1079,'2019-05-11 07:01:06',30.90,218,0,'I','root@localhost','2019-05-11 08:01:21'),(1080,'2019-05-11 07:01:08',30.90,219,0,'I','root@localhost','2019-05-11 08:01:21'),(1081,'2019-05-11 07:01:09',30.90,220,0,'I','root@localhost','2019-05-11 08:01:21'),(1082,'2019-05-11 07:01:11',30.80,221,0,'I','root@localhost','2019-05-11 08:01:21'),(1083,'2019-05-11 07:01:13',30.80,222,0,'I','root@localhost','2019-05-11 08:01:21'),(1084,'2019-05-11 07:01:15',30.80,223,0,'I','root@localhost','2019-05-11 08:01:21'),(1085,'2019-05-11 07:01:17',30.80,224,0,'I','root@localhost','2019-05-11 08:01:21'),(1086,'2019-05-11 07:01:19',30.90,225,0,'I','root@localhost','2019-05-11 08:01:41'),(1087,'2019-05-11 07:01:20',30.90,226,0,'I','root@localhost','2019-05-11 08:01:41'),(1088,'2019-05-11 07:01:22',30.90,227,0,'I','root@localhost','2019-05-11 08:01:41'),(1089,'2019-05-11 07:01:24',30.90,228,0,'I','root@localhost','2019-05-11 08:01:41'),(1090,'2019-05-11 07:01:26',30.80,229,0,'I','root@localhost','2019-05-11 08:01:41'),(1091,'2019-05-11 07:01:28',30.80,230,0,'I','root@localhost','2019-05-11 08:01:41'),(1092,'2019-05-11 07:01:29',30.90,231,0,'I','root@localhost','2019-05-11 08:01:41'),(1093,'2019-05-11 07:01:31',30.90,232,0,'I','root@localhost','2019-05-11 08:01:41'),(1094,'2019-05-11 07:01:33',30.90,233,0,'I','root@localhost','2019-05-11 08:01:41'),(1095,'2019-05-11 07:01:35',30.90,234,0,'I','root@localhost','2019-05-11 08:01:41'),(1096,'2019-05-11 07:01:37',30.90,235,0,'I','root@localhost','2019-05-11 08:01:42'),(1097,'2019-04-09 13:59:32',50.00,236,0,'I','root@localhost','2019-05-11 08:26:18'),(1098,'2019-04-09 13:59:32',50.00,237,0,'I','root@localhost','2019-05-11 08:28:37'),(1099,'2019-04-09 13:59:32',50.00,238,0,'I','root@localhost','2019-05-11 08:29:20'),(1100,'2019-04-09 13:59:32',50.00,239,0,'I','root@localhost','2019-05-11 08:29:57'),(1101,'2019-04-09 13:59:32',30.00,240,0,'I','root@localhost','2019-05-11 08:40:00'),(1102,'2019-04-09 13:59:32',50.00,241,0,'I','root@localhost','2019-05-11 08:40:06'),(1103,'2019-04-09 13:59:32',30.00,242,0,'I','root@localhost','2019-05-11 08:40:09'),(1104,'2019-04-09 13:59:32',30.00,243,0,'I','root@localhost','2019-05-11 08:40:27'),(1105,'2019-04-09 13:59:32',20.00,244,0,'I','root@localhost','2019-05-11 08:42:56'),(1106,'2019-04-09 13:59:32',30.00,245,0,'I','root@localhost','2019-05-11 08:43:00'),(1107,'2019-04-09 13:59:32',40.00,246,0,'I','root@localhost','2019-05-11 08:43:01'),(1108,'2019-04-09 13:59:32',50.00,247,0,'I','root@localhost','2019-05-11 08:43:04'),(1109,'2019-04-09 13:59:32',20.00,248,0,'I','root@localhost','2019-05-11 08:43:09'),(1110,'2019-04-09 13:59:32',10.00,249,0,'I','root@localhost','2019-05-11 08:43:13'),(1111,'2019-04-09 13:59:32',40.00,250,0,'I','root@localhost','2019-05-11 08:43:16'),(1112,'2019-04-09 13:59:32',40.00,251,0,'I','root@localhost','2019-05-11 08:43:39'),(1113,'2019-04-09 13:59:32',350.00,252,0,'I','root@localhost','2019-05-11 08:43:42'),(1114,'2019-04-09 13:59:32',30.00,253,0,'I','root@localhost','2019-05-11 08:43:57'),(1115,'2019-04-09 13:59:32',35.00,254,0,'I','root@localhost','2019-05-11 08:48:27'),(1116,'2019-04-09 13:59:32',30.00,255,0,'I','root@localhost','2019-05-11 08:48:57'),(1117,'2019-04-09 13:59:32',32.00,256,0,'I','root@localhost','2019-05-11 08:49:03'),(1118,'2019-04-09 13:59:32',33.00,257,0,'I','root@localhost','2019-05-11 08:49:06'),(1119,'2019-04-09 13:59:32',34.00,258,0,'I','root@localhost','2019-05-11 08:49:08'),(1120,'2019-04-09 13:59:32',35.00,259,0,'I','root@localhost','2019-05-11 08:49:10'),(1121,'2019-04-09 13:59:32',36.00,260,0,'I','root@localhost','2019-05-11 08:49:12'),(1122,'2019-04-09 13:59:32',37.00,261,0,'I','root@localhost','2019-05-11 08:49:15'),(1123,'2019-04-09 13:59:32',40.00,262,0,'I','root@localhost','2019-05-11 08:49:21'),(1124,'2019-04-09 13:59:32',40.00,263,0,'I','root@localhost','2019-05-11 08:49:22'),(1125,'2019-04-09 13:59:32',35.00,264,0,'I','root@localhost','2019-05-11 08:49:25'),(1126,'2019-04-09 13:59:32',35.00,265,0,'I','root@localhost','2019-05-11 09:04:54'),(1127,'2019-04-09 13:59:32',35.00,266,0,'I','root@localhost','2019-05-11 09:04:54'),(1128,'2019-04-09 13:59:32',35.00,267,0,'I','root@localhost','2019-05-11 09:04:55'),(1129,'2019-04-09 13:59:32',35.00,268,0,'I','root@localhost','2019-05-11 09:04:55'),(1130,'2019-04-09 13:59:32',35.00,269,0,'I','root@localhost','2019-05-11 09:06:08'),(1131,'2019-04-09 13:59:32',35.00,270,0,'I','root@localhost','2019-05-11 09:06:08'),(1132,'2019-04-09 13:59:32',35.00,271,0,'I','root@localhost','2019-05-11 09:06:09'),(1133,'2019-04-09 13:59:32',35.00,272,0,'I','root@localhost','2019-05-11 09:07:18'),(1134,'2019-04-09 13:59:32',40.00,273,0,'I','root@localhost','2019-05-11 09:07:20'),(1135,'2019-04-09 13:59:32',30.00,274,0,'I','root@localhost','2019-05-11 09:07:22'),(1136,'2019-04-09 13:59:32',40.00,275,0,'I','root@localhost','2019-05-11 09:08:48'),(1137,'2019-04-09 13:59:32',35.00,276,0,'I','root@localhost','2019-05-11 09:09:00'),(1138,'2019-04-09 13:59:32',40.00,277,0,'I','root@localhost','2019-05-11 09:09:01'),(1139,'2019-04-09 13:59:32',30.00,278,0,'I','root@localhost','2019-05-11 09:09:02'),(1140,'2019-04-09 13:59:32',40.00,279,0,'I','root@localhost','2019-05-11 09:09:03'),(1141,'2019-04-09 13:59:32',35.00,280,0,'I','root@localhost','2019-05-11 09:09:03'),(1142,'2019-04-09 13:59:32',30.00,281,0,'I','root@localhost','2019-05-11 09:09:05'),(1143,'2019-04-09 13:59:32',35.00,282,0,'I','root@localhost','2019-05-11 09:10:08'),(1144,'2019-04-09 13:59:32',40.00,283,0,'I','root@localhost','2019-05-11 09:10:09'),(1145,'2019-04-09 13:59:32',30.00,284,0,'I','root@localhost','2019-05-11 09:10:10'),(1146,'2019-04-09 13:59:32',30.00,285,0,'I','root@localhost','2019-05-11 09:10:10'),(1147,'2019-04-09 13:59:32',35.00,286,0,'I','root@localhost','2019-05-11 09:11:48'),(1148,'2019-04-09 13:59:32',40.00,287,0,'I','root@localhost','2019-05-11 09:11:49'),(1149,'2019-04-09 13:59:32',30.00,288,0,'I','root@localhost','2019-05-11 09:11:50'),(1150,'2019-04-09 13:59:32',30.00,289,0,'I','root@localhost','2019-05-11 09:12:05'),(1151,'2019-04-09 13:59:32',30.00,290,0,'I','root@localhost','2019-05-11 09:12:05'),(1152,'2019-04-09 13:59:32',40.00,291,0,'I','root@localhost','2019-05-11 09:12:06'),(1153,'2019-04-09 13:59:32',35.00,292,0,'I','root@localhost','2019-05-11 09:12:07'),(1154,'2019-04-09 13:59:32',35.00,293,0,'I','root@localhost','2019-05-11 09:13:20'),(1155,'2019-04-09 13:59:32',35.00,294,0,'I','root@localhost','2019-05-11 09:13:21'),(1156,'2019-04-09 13:59:32',35.00,295,0,'I','root@localhost','2019-05-11 09:13:22'),(1157,'2019-04-09 13:59:32',40.00,296,0,'I','root@localhost','2019-05-11 09:13:44'),(1158,'2019-04-09 13:59:32',40.00,297,0,'I','root@localhost','2019-05-11 09:13:45'),(1159,'2019-04-09 13:59:32',40.00,298,0,'I','root@localhost','2019-05-11 09:13:45'),(1160,'2019-04-09 13:59:32',40.00,299,0,'I','root@localhost','2019-05-11 09:13:45'),(1161,'2019-04-09 13:59:32',40.00,300,0,'I','root@localhost','2019-05-11 09:15:01'),(1162,'2019-04-09 13:59:32',35.00,301,0,'I','root@localhost','2019-05-11 09:15:02'),(1163,'2019-04-09 13:59:32',30.00,302,0,'I','root@localhost','2019-05-11 09:15:03'),(1164,'2019-04-09 13:59:32',30.00,303,0,'I','root@localhost','2019-05-11 09:15:04'),(1165,'2019-04-09 13:59:32',40.00,304,0,'I','root@localhost','2019-05-11 09:15:06'),(1166,'2019-04-09 13:59:32',40.00,305,0,'I','root@localhost','2019-05-11 09:18:12'),(1167,'2019-04-09 13:59:32',35.00,306,0,'I','root@localhost','2019-05-11 09:18:14'),(1168,'2019-04-09 13:59:32',35.00,307,0,'I','root@localhost','2019-05-11 09:18:14'),(1169,'2019-04-09 13:59:32',40.00,308,0,'I','root@localhost','2019-05-11 09:18:15'),(1170,'2019-04-09 13:59:32',40.00,309,0,'I','root@localhost','2019-05-11 09:19:20'),(1171,'2019-04-09 13:59:32',35.00,310,0,'I','root@localhost','2019-05-11 09:19:21'),(1172,'2019-04-09 13:59:32',30.00,311,0,'I','root@localhost','2019-05-11 09:19:22'),(1173,'2019-04-09 13:59:32',30.00,312,0,'I','root@localhost','2019-05-11 09:19:23'),(1174,'2019-04-09 13:59:32',30.00,313,0,'I','root@localhost','2019-05-11 09:22:26'),(1175,'2019-04-09 13:59:32',40.00,314,0,'I','root@localhost','2019-05-11 09:22:27'),(1176,'2019-04-09 13:59:32',35.00,315,0,'I','root@localhost','2019-05-11 09:22:27'),(1177,'2019-04-09 13:59:32',35.00,316,0,'I','root@localhost','2019-05-11 09:22:27'),(1178,'2019-04-09 13:59:32',40.00,317,0,'I','root@localhost','2019-05-11 09:22:28'),(1179,'2019-04-09 13:59:32',30.00,318,0,'I','root@localhost','2019-05-11 09:22:29'),(1180,'2019-04-09 13:59:32',35.00,319,0,'I','root@localhost','2019-05-11 09:23:38'),(1181,'2019-04-09 13:59:32',35.00,320,0,'I','root@localhost','2019-05-11 09:23:39'),(1182,'2019-04-09 13:59:32',35.00,321,0,'I','root@localhost','2019-05-11 09:23:39'),(1183,'2019-04-09 13:59:32',35.00,322,0,'I','root@localhost','2019-05-11 09:23:39'),(1184,'2019-04-09 13:59:32',35.00,323,0,'I','root@localhost','2019-05-11 09:24:51'),(1185,'2019-04-09 13:59:32',35.00,324,0,'I','root@localhost','2019-05-11 09:24:51'),(1186,'2019-04-09 13:59:32',35.00,325,0,'I','root@localhost','2019-05-11 09:24:52'),(1187,'2019-04-09 13:59:32',35.00,326,0,'I','root@localhost','2019-05-11 09:25:43'),(1188,'2019-04-09 13:59:32',35.00,327,0,'I','root@localhost','2019-05-11 09:25:44'),(1189,'2019-04-09 13:59:32',35.00,328,0,'I','root@localhost','2019-05-11 09:26:22'),(1190,'2019-04-09 13:59:32',35.00,329,0,'I','root@localhost','2019-05-11 09:26:23'),(1191,'2019-04-09 13:59:32',35.00,330,0,'I','root@localhost','2019-05-11 09:27:09'),(1192,'2019-04-09 13:59:32',35.00,331,0,'I','root@localhost','2019-05-11 09:27:10'),(1193,'2019-04-09 13:59:32',35.00,332,0,'I','root@localhost','2019-05-11 09:30:25'),(1194,'2019-04-09 13:59:32',35.00,333,0,'I','root@localhost','2019-05-11 09:31:42'),(1195,'2019-04-09 13:59:32',35.00,334,0,'I','root@localhost','2019-05-11 09:31:46'),(1196,'2019-04-09 13:59:32',35.00,335,0,'I','root@localhost','2019-05-11 09:32:15'),(1197,'2019-04-09 13:59:32',40.00,336,0,'I','root@localhost','2019-05-11 09:32:18'),(1198,'2019-04-09 13:59:32',40.00,337,0,'I','root@localhost','2019-05-11 09:32:19'),(1199,'2019-04-09 13:59:32',35.00,338,0,'I','root@localhost','2019-05-11 09:32:20'),(1200,'2019-04-09 13:59:32',35.00,339,0,'I','root@localhost','2019-05-11 09:32:40'),(1201,'2019-04-09 13:59:32',35.00,340,0,'I','root@localhost','2019-05-11 09:32:41'),(1202,'2019-04-09 13:59:32',35.00,341,0,'I','root@localhost','2019-05-11 09:32:41'),(1203,'2019-04-09 13:59:32',35.00,342,0,'I','root@localhost','2019-05-11 09:32:42'),(1204,'2019-04-09 13:59:32',35.00,343,0,'I','root@localhost','2019-05-11 09:32:42'),(1205,'2019-04-09 13:59:32',35.00,1,0,'I','root@localhost','2019-05-11 09:34:42'),(1206,'2019-04-09 13:59:32',35.00,2,0,'I','root@localhost','2019-05-11 09:34:43'),(1207,'2019-04-09 13:59:32',35.00,3,0,'I','root@localhost','2019-05-11 09:34:43'),(1208,'2019-04-09 13:59:32',40.00,4,0,'I','root@localhost','2019-05-11 09:34:54'),(1209,'2019-04-09 13:59:32',40.00,5,0,'I','root@localhost','2019-05-11 09:34:54'),(1210,'2019-04-09 13:59:32',40.00,6,0,'I','root@localhost','2019-05-11 09:34:55'),(1211,'2019-04-09 13:59:32',35.00,7,0,'I','root@localhost','2019-05-11 09:34:57'),(1212,'2019-04-09 13:59:32',35.00,8,0,'I','root@localhost','2019-05-11 09:38:07'),(1213,'2019-04-09 13:59:32',35.00,9,0,'I','root@localhost','2019-05-11 09:38:08'),(1214,'2019-04-09 13:59:32',35.00,10,0,'I','root@localhost','2019-05-11 09:38:09'),(1215,'2019-04-09 13:59:32',35.00,11,0,'I','root@localhost','2019-05-11 09:38:09'),(1216,'2019-04-09 13:59:32',30.00,12,0,'I','root@localhost','2019-05-11 09:38:19'),(1217,'2019-04-09 13:59:32',40.00,13,0,'I','root@localhost','2019-05-11 09:38:21'),(1218,'2019-04-09 13:59:32',30.00,14,0,'I','root@localhost','2019-05-11 09:38:22'),(1219,'2019-04-09 13:59:32',40.00,15,0,'I','root@localhost','2019-05-11 09:38:23'),(1220,'2019-04-09 13:59:32',35.00,16,0,'I','root@localhost','2019-05-11 09:38:24'),(1221,'2019-04-09 13:59:32',40.00,17,0,'I','root@localhost','2019-05-11 09:38:25'),(1222,'2019-04-09 13:59:32',30.00,18,0,'I','root@localhost','2019-05-11 09:38:26'),(1223,'2019-04-09 13:59:32',40.00,19,0,'I','root@localhost','2019-05-11 09:38:37'),(1224,'2019-04-09 13:59:32',40.00,20,0,'I','root@localhost','2019-05-11 09:38:37'),(1225,'2019-04-09 13:59:32',40.00,21,0,'I','root@localhost','2019-05-11 09:38:38'),(1226,'2019-04-09 13:59:32',40.00,22,0,'I','root@localhost','2019-05-11 09:38:38'),(1227,'2019-04-09 13:59:32',40.00,23,0,'I','root@localhost','2019-05-11 09:38:38'),(1228,'2019-04-09 13:59:32',40.00,24,0,'I','root@localhost','2019-05-11 09:38:38'),(1229,'2019-04-09 13:59:32',40.00,25,0,'I','root@localhost','2019-05-11 09:38:38'),(1230,'2019-04-09 13:59:32',40.00,26,0,'I','root@localhost','2019-05-11 09:38:38'),(1231,'2019-04-09 13:59:32',40.00,27,0,'I','root@localhost','2019-05-11 09:38:38'),(1232,'2019-04-09 13:59:32',40.00,28,0,'I','root@localhost','2019-05-11 09:38:39'),(1233,'2019-04-09 13:59:32',40.00,29,0,'I','root@localhost','2019-05-11 09:38:39'),(1234,'2019-04-09 13:59:32',40.00,30,0,'I','root@localhost','2019-05-11 09:38:39'),(1235,'2019-04-09 13:59:32',40.00,31,0,'I','root@localhost','2019-05-11 09:38:39'),(1236,'2019-04-09 13:59:32',40.00,32,0,'I','root@localhost','2019-05-11 09:38:39'),(1237,'2019-04-09 13:59:32',40.00,33,0,'I','root@localhost','2019-05-11 09:38:39'),(1238,'2019-04-09 13:59:32',40.00,34,0,'I','root@localhost','2019-05-11 09:38:40'),(1239,'2019-04-09 13:59:32',40.00,35,0,'I','root@localhost','2019-05-11 09:38:40'),(1240,'2019-04-09 13:59:32',40.00,36,0,'I','root@localhost','2019-05-11 09:38:40'),(1241,'2019-04-09 13:59:32',40.00,37,0,'I','root@localhost','2019-05-11 09:38:40'),(1242,'2019-04-09 13:59:32',40.00,38,0,'I','root@localhost','2019-05-11 09:38:40'),(1243,'2019-04-09 13:59:32',40.00,39,0,'I','root@localhost','2019-05-11 09:38:40'),(1244,'2019-04-09 13:59:32',40.00,40,0,'I','root@localhost','2019-05-11 09:38:40'),(1245,'2019-04-09 13:59:32',40.00,41,0,'I','root@localhost','2019-05-11 09:38:41'),(1246,'2019-04-09 13:59:32',40.00,42,0,'I','root@localhost','2019-05-11 09:38:41'),(1247,'2019-04-09 13:59:32',40.00,43,0,'I','root@localhost','2019-05-11 09:38:41'),(1248,'2019-04-09 13:59:32',40.00,44,0,'I','root@localhost','2019-05-11 09:38:41'),(1249,'2019-04-09 13:59:32',40.00,45,0,'I','root@localhost','2019-05-11 09:38:41'),(1250,'2019-04-09 13:59:32',40.00,46,0,'I','root@localhost','2019-05-11 09:38:41'),(1251,'2019-04-09 13:59:32',40.00,47,0,'I','root@localhost','2019-05-11 09:38:42'),(1252,'2019-04-09 13:59:32',40.00,48,0,'I','root@localhost','2019-05-11 09:38:42'),(1253,'2019-04-09 13:59:32',40.00,49,0,'I','root@localhost','2019-05-11 09:38:42'),(1254,'2019-04-09 13:59:32',40.00,50,0,'I','root@localhost','2019-05-11 09:38:42'),(1255,'2019-04-09 13:59:32',40.00,51,0,'I','root@localhost','2019-05-11 09:38:42'),(1256,'2019-04-09 13:59:32',40.00,52,0,'I','root@localhost','2019-05-11 09:38:42'),(1257,'2019-04-09 13:59:32',40.00,53,0,'I','root@localhost','2019-05-11 09:38:43'),(1258,'2019-04-09 13:59:32',40.00,54,0,'I','root@localhost','2019-05-11 09:38:43'),(1259,'2019-04-09 13:59:32',40.00,55,0,'I','root@localhost','2019-05-11 09:38:43'),(1260,'2019-04-09 13:59:32',40.00,56,0,'I','root@localhost','2019-05-11 09:38:43'),(1261,'2019-04-09 13:59:32',40.00,57,0,'I','root@localhost','2019-05-11 09:38:43'),(1262,'2019-04-09 13:59:32',35.00,58,0,'I','root@localhost','2019-05-11 09:40:18'),(1263,'2019-04-09 13:59:32',35.00,59,0,'I','root@localhost','2019-05-11 09:40:18'),(1264,'2019-04-09 13:59:32',35.00,60,0,'I','root@localhost','2019-05-11 09:40:19'),(1265,'2019-04-09 13:59:32',35.00,61,0,'I','root@localhost','2019-05-11 09:43:53'),(1266,'2019-04-09 13:59:32',35.00,62,0,'I','root@localhost','2019-05-11 09:43:54'),(1267,'2019-04-09 13:59:32',35.00,63,0,'I','root@localhost','2019-05-11 09:43:54'),(1268,'2019-04-09 13:59:32',35.00,64,0,'I','root@localhost','2019-05-11 09:44:23'),(1269,'2019-04-09 13:59:32',35.00,65,0,'I','root@localhost','2019-05-11 09:44:24'),(1270,'2019-04-09 13:59:32',40.00,66,0,'I','root@localhost','2019-05-11 09:44:37'),(1271,'2019-04-09 13:59:32',40.00,67,0,'I','root@localhost','2019-05-11 09:44:38'),(1272,'2019-04-09 13:59:32',30.00,68,0,'I','root@localhost','2019-05-11 09:44:40'),(1273,'2019-04-09 13:59:32',30.00,69,0,'I','root@localhost','2019-05-11 09:44:40'),(1274,'2019-04-09 13:59:32',30.00,70,0,'I','root@localhost','2019-05-11 09:44:40'),(1275,'2019-04-09 13:59:32',30.00,71,0,'I','root@localhost','2019-05-11 09:44:40'),(1276,'2019-04-09 13:59:32',40.00,72,0,'I','root@localhost','2019-05-11 09:44:41'),(1277,'2019-04-09 13:59:32',40.00,73,0,'I','root@localhost','2019-05-11 09:44:42'),(1278,'2019-04-09 13:59:32',40.00,74,0,'I','root@localhost','2019-05-11 09:44:42'),(1279,'2019-04-09 13:59:32',40.00,75,0,'I','root@localhost','2019-05-11 09:44:42'),(1280,'2019-04-09 13:59:32',40.00,76,0,'I','root@localhost','2019-05-11 09:44:42'),(1281,'2019-04-09 13:59:32',40.00,77,0,'I','root@localhost','2019-05-11 09:44:42'),(1282,'2019-04-09 13:59:32',40.00,78,0,'I','root@localhost','2019-05-11 09:44:43'),(1283,'2019-04-09 13:59:32',40.00,79,0,'I','root@localhost','2019-05-11 09:44:43'),(1284,'2019-04-09 13:59:32',40.00,80,0,'I','root@localhost','2019-05-11 09:44:45'),(1285,'2019-04-09 13:59:32',40.00,81,0,'I','root@localhost','2019-05-11 09:44:46'),(1286,'2019-04-09 13:59:32',40.00,82,0,'I','root@localhost','2019-05-11 09:44:47'),(1287,'2019-04-09 13:59:32',40.00,83,0,'I','root@localhost','2019-05-11 09:44:47'),(1288,'2019-04-09 13:59:32',40.00,84,0,'I','root@localhost','2019-05-11 09:44:48'),(1289,'2019-04-09 13:59:32',40.00,85,0,'I','root@localhost','2019-05-11 09:44:49'),(1290,'2019-04-09 13:59:32',40.00,86,0,'I','root@localhost','2019-05-11 09:44:49'),(1291,'2019-04-09 13:59:32',40.00,87,0,'I','root@localhost','2019-05-11 09:44:50'),(1292,'2019-04-09 13:59:32',40.00,88,0,'I','root@localhost','2019-05-11 09:44:50'),(1293,'2019-04-09 13:59:32',40.00,89,0,'I','root@localhost','2019-05-11 09:44:51'),(1294,'2019-04-09 13:59:32',40.00,90,0,'I','root@localhost','2019-05-11 09:44:52'),(1295,'2019-04-09 13:59:32',40.00,91,0,'I','root@localhost','2019-05-11 09:44:52'),(1296,'2019-04-09 13:59:32',40.00,92,0,'I','root@localhost','2019-05-11 09:44:53'),(1297,'2019-04-09 13:59:32',40.00,93,0,'I','root@localhost','2019-05-11 09:44:53'),(1298,'2019-04-09 13:59:32',40.00,94,0,'I','root@localhost','2019-05-11 09:44:54'),(1299,'2019-04-09 13:59:32',40.00,95,0,'I','root@localhost','2019-05-11 09:44:54'),(1300,'2019-04-09 13:59:32',40.00,96,0,'I','root@localhost','2019-05-11 09:44:55'),(1301,'2019-04-09 13:59:32',50.00,97,0,'I','root@localhost','2019-05-11 09:46:25'),(1302,'2019-04-09 13:59:32',50.00,98,0,'I','root@localhost','2019-05-11 09:46:26'),(1303,'2019-04-09 13:59:32',50.00,99,0,'I','root@localhost','2019-05-11 09:46:50'),(1304,'2019-04-09 13:59:32',50.00,100,0,'I','root@localhost','2019-05-11 09:46:51'),(1305,'2019-04-09 13:59:32',50.00,101,0,'I','root@localhost','2019-05-11 09:46:51'),(1306,'2019-04-09 13:59:32',50.00,102,0,'I','root@localhost','2019-05-11 09:48:32'),(1307,'2019-04-09 13:59:32',50.00,103,0,'I','root@localhost','2019-05-11 09:48:32'),(1308,'2019-04-09 13:59:32',50.00,104,0,'I','root@localhost','2019-05-11 09:48:32'),(1309,'2019-04-09 13:59:32',50.00,105,0,'I','root@localhost','2019-05-11 09:50:06'),(1310,'2019-04-09 13:59:32',50.00,106,0,'I','root@localhost','2019-05-11 09:50:06'),(1311,'2019-04-09 13:59:32',30.00,107,0,'I','root@localhost','2019-05-11 09:50:19'),(1312,'2019-04-09 13:59:32',50.00,108,0,'I','root@localhost','2019-05-11 09:50:20'),(1313,'2019-04-09 13:59:32',50.00,109,0,'I','root@localhost','2019-05-11 09:52:07'),(1314,'2019-04-09 13:59:32',30.00,110,0,'I','root@localhost','2019-05-11 09:52:08'),(1315,'2019-04-09 13:59:32',40.00,111,0,'I','root@localhost','2019-05-11 09:52:09'),(1316,'2019-04-09 13:59:32',50.00,112,0,'I','root@localhost','2019-05-11 09:52:10'),(1317,'2019-04-09 13:59:32',30.00,113,0,'I','root@localhost','2019-05-11 09:52:10'),(1318,'2019-04-09 13:59:32',10.00,114,0,'I','root@localhost','2019-05-11 09:57:03'),(1319,'2019-04-09 13:59:32',10.00,115,0,'I','root@localhost','2019-05-11 09:57:03'),(1320,'2019-04-09 13:59:32',10.00,116,0,'I','root@localhost','2019-05-11 09:57:04'),(1321,'2019-04-09 13:59:32',5.00,117,0,'I','root@localhost','2019-05-11 09:57:22'),(1322,'2019-04-09 13:59:32',5.00,118,0,'I','root@localhost','2019-05-11 09:57:23'),(1323,'2019-04-09 13:59:32',5.00,119,0,'I','root@localhost','2019-05-11 09:58:44'),(1324,'2019-04-09 13:59:32',5.00,120,0,'I','root@localhost','2019-05-11 09:58:45'),(1325,'2019-04-09 13:59:32',5.00,121,0,'I','root@localhost','2019-05-11 09:59:11'),(1326,'2019-04-09 13:59:32',5.00,122,0,'I','root@localhost','2019-05-11 09:59:12'),(1327,'2019-04-09 13:59:32',5.00,123,0,'I','root@localhost','2019-05-11 09:59:13'),(1328,'2019-04-09 13:59:32',5.00,124,0,'I','root@localhost','2019-05-11 09:59:14'),(1329,'2019-04-09 13:59:32',5.00,125,0,'I','root@localhost','2019-05-11 09:59:14'),(1330,'2019-04-09 13:59:32',5.00,126,0,'I','root@localhost','2019-05-11 10:00:03'),(1331,'2019-04-09 13:59:32',50.00,127,0,'I','root@localhost','2019-05-11 10:00:46'),(1332,'2019-04-09 13:59:32',5.00,128,0,'I','root@localhost','2019-05-11 10:00:48'),(1333,'2019-04-09 13:59:32',5.00,129,0,'I','root@localhost','2019-05-11 10:00:48'),(1334,'2019-04-09 13:59:32',5.00,130,0,'I','root@localhost','2019-05-11 10:00:50'),(1335,'2019-04-09 13:59:32',5.00,1,0,'I','root@localhost','2019-05-11 10:01:36'),(1336,'2019-04-09 13:59:32',5.00,2,0,'I','root@localhost','2019-05-11 10:01:37'),(1337,'2019-04-09 13:59:32',5.00,3,0,'I','root@localhost','2019-05-11 10:01:38'),(1338,'2019-04-09 13:59:32',5.00,4,0,'I','root@localhost','2019-05-11 10:01:39'),(1339,'2019-04-09 13:59:32',5.00,5,0,'I','root@localhost','2019-05-11 10:01:40'),(1340,'2019-04-09 13:59:32',5.00,6,0,'I','root@localhost','2019-05-11 10:01:41'),(1341,'2019-04-09 13:59:32',5.00,7,0,'I','root@localhost','2019-05-11 10:01:42'),(1342,'2019-04-09 13:59:32',5.00,8,0,'I','root@localhost','2019-05-11 10:05:26'),(1343,'2019-04-09 13:59:32',5.00,9,0,'I','root@localhost','2019-05-11 10:05:28'),(1344,'2019-04-09 13:59:32',5.00,10,0,'I','root@localhost','2019-05-11 10:05:43'),(1345,'2019-04-09 13:59:32',5.00,11,0,'I','root@localhost','2019-05-11 10:05:44'),(1346,'2019-04-09 13:59:32',5.00,12,0,'I','root@localhost','2019-05-11 10:05:44'),(1347,'2019-04-09 13:59:32',5.00,13,0,'I','root@localhost','2019-05-11 10:06:18'),(1348,'2019-04-09 13:59:32',5.00,14,0,'I','root@localhost','2019-05-11 10:07:55'),(1349,'2019-04-09 13:59:32',5.00,15,0,'I','root@localhost','2019-05-11 10:07:56'),(1350,'2019-04-09 13:59:32',5.00,16,0,'I','root@localhost','2019-05-11 10:07:56'),(1351,'2019-04-09 13:59:32',5.00,17,0,'I','root@localhost','2019-05-11 10:09:16'),(1352,'2019-04-09 13:59:32',5.00,18,0,'I','root@localhost','2019-05-11 10:09:16'),(1353,'2019-04-09 13:59:32',5.00,19,0,'I','root@localhost','2019-05-11 10:10:21'),(1354,'2019-04-09 13:59:32',5.00,20,0,'I','root@localhost','2019-05-11 10:10:24'),(1355,'2019-04-09 13:59:32',5.00,21,0,'I','root@localhost','2019-05-11 10:10:24'),(1356,'2019-04-09 13:59:32',5.00,22,0,'I','root@localhost','2019-05-11 10:12:03'),(1357,'2019-04-09 13:59:32',5.00,23,0,'I','root@localhost','2019-05-11 10:12:04'),(1358,'2019-04-09 13:59:32',5.00,24,0,'I','root@localhost','2019-05-11 10:12:05'),(1359,'2019-04-09 13:59:32',5.00,25,0,'I','root@localhost','2019-05-11 10:13:39'),(1360,'2019-04-09 13:59:32',5.00,26,0,'I','root@localhost','2019-05-11 10:13:40'),(1361,'2019-04-09 13:59:32',5.00,27,0,'I','root@localhost','2019-05-11 10:13:41'),(1362,'2019-04-09 13:59:32',5.00,28,0,'I','root@localhost','2019-05-11 10:13:42'),(1363,'2019-04-09 13:59:32',5.00,29,0,'I','root@localhost','2019-05-11 10:13:43'),(1364,'2019-04-09 13:59:32',5.00,1,0,'I','root@localhost','2019-05-11 10:14:06'),(1365,'2019-04-09 13:59:32',5.00,2,0,'I','root@localhost','2019-05-11 10:14:13'),(1366,'2019-04-09 13:59:32',5.00,3,0,'I','root@localhost','2019-05-11 10:14:13'),(1367,'2019-04-09 13:59:32',5.00,4,0,'I','root@localhost','2019-05-11 10:14:13'),(1368,'2019-04-09 13:59:32',5.00,5,0,'I','root@localhost','2019-05-11 10:14:14'),(1369,'2019-04-09 13:59:32',5.00,6,0,'I','root@localhost','2019-05-11 10:14:14'),(1370,'2019-04-09 13:59:32',5.00,7,0,'I','root@localhost','2019-05-11 10:14:15'),(1371,'2019-04-09 13:59:32',5.00,8,0,'I','root@localhost','2019-05-11 10:14:16'),(1372,'2019-04-09 13:59:32',5.00,9,0,'I','root@localhost','2019-05-11 10:14:16'),(1373,'2019-04-09 13:59:32',5.00,10,0,'I','root@localhost','2019-05-11 10:14:16'),(1374,'2019-04-09 13:59:32',5.00,11,0,'I','root@localhost','2019-05-11 10:14:16'),(1375,'2019-04-09 13:59:32',5.00,12,0,'I','root@localhost','2019-05-11 10:14:17'),(1376,'2019-04-09 13:59:32',5.00,13,0,'I','root@localhost','2019-05-11 10:14:17'),(1377,'2019-04-09 13:59:32',5.00,14,0,'I','root@localhost','2019-05-11 10:14:17'),(1378,'2019-04-09 13:59:32',5.00,15,0,'I','root@localhost','2019-05-11 10:14:17'),(1379,'2019-04-09 13:59:32',5.00,16,0,'I','root@localhost','2019-05-11 10:14:17'),(1380,'2019-04-09 13:59:32',5.00,17,0,'I','root@localhost','2019-05-11 10:14:18'),(1381,'2019-04-09 13:59:32',5.00,18,0,'I','root@localhost','2019-05-11 10:14:18'),(1382,'2019-04-09 13:59:32',5.00,19,0,'I','root@localhost','2019-05-11 10:14:18'),(1383,'2019-04-09 13:59:32',5.00,20,0,'I','root@localhost','2019-05-11 10:14:18'),(1384,'2019-04-09 13:59:32',5.00,21,0,'I','root@localhost','2019-05-11 10:14:19'),(1385,'2019-04-09 13:59:32',5.00,22,0,'I','root@localhost','2019-05-11 10:14:19'),(1386,'2019-04-09 13:59:32',5.00,23,0,'I','root@localhost','2019-05-11 10:14:19'),(1387,'2019-04-09 13:59:32',5.00,24,0,'I','root@localhost','2019-05-11 10:14:19'),(1388,'2019-04-09 13:59:32',5.00,25,0,'I','root@localhost','2019-05-11 10:14:19'),(1389,'2019-04-09 13:59:32',5.00,26,0,'I','root@localhost','2019-05-11 10:16:35'),(1390,'2019-04-09 13:59:32',5.00,27,0,'I','root@localhost','2019-05-11 10:16:35'),(1391,'2019-04-09 13:59:32',5.00,28,0,'I','root@localhost','2019-05-11 10:16:36'),(1392,'2019-04-09 13:59:32',5.00,29,0,'I','root@localhost','2019-05-11 10:16:36'),(1393,'2019-04-09 13:59:32',5.00,30,0,'I','root@localhost','2019-05-11 10:17:14'),(1394,'2019-04-09 13:59:32',5.00,31,0,'I','root@localhost','2019-05-11 10:17:14'),(1395,'2019-04-09 13:59:32',5.00,32,0,'I','root@localhost','2019-05-11 10:17:14'),(1396,'2019-04-09 13:59:32',5.00,33,0,'I','root@localhost','2019-05-11 10:17:14'),(1397,'2019-04-09 13:59:32',5.00,34,0,'I','root@localhost','2019-05-11 10:17:14'),(1398,'2019-04-09 13:59:32',5.00,35,0,'I','root@localhost','2019-05-11 10:17:14'),(1399,'2019-04-09 13:59:32',5.00,36,0,'I','root@localhost','2019-05-11 10:17:15'),(1400,'2019-04-09 13:59:32',5.00,37,0,'I','root@localhost','2019-05-11 10:17:15'),(1401,'2019-04-09 13:59:32',5.00,38,0,'I','root@localhost','2019-05-11 10:17:15'),(1402,'2019-04-09 13:59:32',5.00,39,0,'I','root@localhost','2019-05-11 10:17:15'),(1403,'2019-04-09 13:59:32',5.00,40,0,'I','root@localhost','2019-05-11 10:17:15'),(1404,'2019-04-09 13:59:32',5.00,41,0,'I','root@localhost','2019-05-11 10:17:15'),(1405,'2019-04-09 13:59:32',5.00,1,0,'I','root@localhost','2019-05-11 10:17:47'),(1406,'2019-04-09 13:59:32',5.00,2,0,'I','root@localhost','2019-05-11 10:17:47'),(1407,'2019-04-09 13:59:32',5.00,3,0,'I','root@localhost','2019-05-11 10:17:47'),(1408,'2019-04-09 13:59:32',5.00,4,0,'I','root@localhost','2019-05-11 10:17:48'),(1409,'2019-04-09 13:59:32',5.00,5,0,'I','root@localhost','2019-05-11 10:19:54'),(1410,'2019-04-09 13:59:32',5.00,6,0,'I','root@localhost','2019-05-11 10:19:54'),(1411,'2019-04-09 13:59:32',5.00,7,0,'I','root@localhost','2019-05-11 10:25:48'),(1412,'2019-04-09 13:59:32',5.00,8,0,'I','root@localhost','2019-05-11 10:25:48'),(1413,'2019-04-09 13:59:32',5.00,9,0,'I','root@localhost','2019-05-11 10:25:48'),(1414,'2019-04-09 13:59:32',5.00,10,0,'I','root@localhost','2019-05-11 10:27:23'),(1415,'2019-04-09 13:59:32',5.00,11,0,'I','root@localhost','2019-05-11 10:27:23'),(1416,'2019-04-09 13:59:32',5.00,12,0,'I','root@localhost','2019-05-11 10:27:23'),(1417,'2019-04-09 13:59:32',5.00,13,0,'I','root@localhost','2019-05-11 10:27:37'),(1418,'2019-04-09 13:59:32',5.00,14,0,'I','root@localhost','2019-05-11 10:29:47'),(1419,'2019-04-09 13:59:32',5.00,15,0,'I','root@localhost','2019-05-11 10:33:01'),(1420,'2019-04-09 13:59:32',5.00,16,0,'I','root@localhost','2019-05-11 10:33:03'),(1421,'2019-04-09 13:59:32',5.00,1,0,'I','root@localhost','2019-05-11 10:33:16'),(1422,'2019-04-09 13:59:32',5.00,2,0,'I','root@localhost','2019-05-11 10:33:17'),(1423,'2019-04-09 13:59:32',5.00,3,0,'I','root@localhost','2019-05-11 10:33:17'),(1424,'2019-04-09 13:59:32',5.00,4,0,'I','root@localhost','2019-05-11 10:33:31'),(1425,'2019-04-09 13:59:32',5.00,5,0,'I','root@localhost','2019-05-11 10:33:32'),(1426,'2019-04-09 13:59:32',5.00,6,0,'I','root@localhost','2019-05-11 10:33:34'),(1427,'2019-04-09 13:59:32',5.00,7,0,'I','root@localhost','2019-05-11 10:33:35'),(1428,'2019-04-09 13:59:32',5.00,8,0,'I','root@localhost','2019-05-11 10:34:04'),(1429,'2019-04-09 13:59:32',5.00,9,0,'I','root@localhost','2019-05-11 10:34:37'),(1430,'2019-04-09 13:59:32',5.00,10,0,'I','root@localhost','2019-05-11 10:34:38'),(1431,'2019-04-09 13:59:32',5.00,11,0,'I','root@localhost','2019-05-11 10:34:38'),(1432,'2019-04-09 13:59:32',5.00,12,0,'I','root@localhost','2019-05-11 10:37:15'),(1433,'2019-04-09 13:59:32',5.00,13,0,'I','root@localhost','2019-05-11 10:37:16'),(1434,'2019-04-09 13:59:32',5.00,14,0,'I','root@localhost','2019-05-11 10:37:16'),(1435,'2019-04-09 13:59:32',5.00,15,0,'I','root@localhost','2019-05-11 10:37:16'),(1436,'2019-04-09 13:59:32',5.00,16,0,'I','root@localhost','2019-05-11 10:37:17'),(1437,'2019-04-09 13:59:32',5.00,17,0,'I','root@localhost','2019-05-11 10:39:52'),(1438,'2019-04-09 13:59:32',5.00,18,0,'I','root@localhost','2019-05-11 10:40:05'),(1439,'2019-04-09 13:59:32',5.00,19,0,'I','root@localhost','2019-05-11 10:40:06'),(1440,'2019-04-09 13:59:32',5.00,20,0,'I','root@localhost','2019-05-11 10:41:24'),(1441,'2019-04-09 13:59:32',5.00,21,0,'I','root@localhost','2019-05-11 10:43:14'),(1442,'2019-04-09 13:59:32',5.00,22,0,'I','root@localhost','2019-05-11 10:43:15'),(1443,'2019-04-09 13:59:32',5.00,23,0,'I','root@localhost','2019-05-11 10:45:08'),(1444,'2019-04-09 13:59:32',5.00,24,0,'I','root@localhost','2019-05-11 10:45:55'),(1445,'2019-04-09 13:59:32',5.00,25,0,'I','root@localhost','2019-05-11 10:45:56'),(1446,'2019-04-09 13:59:32',5.00,26,0,'I','root@localhost','2019-05-11 10:46:51'),(1447,'2019-04-09 13:59:32',5.00,27,0,'I','root@localhost','2019-05-11 10:47:05'),(1448,'2019-04-09 13:59:32',5.00,28,0,'I','root@localhost','2019-05-11 10:47:12'),(1449,'2019-04-09 13:59:32',5.00,29,0,'I','root@localhost','2019-05-11 10:49:48'),(1450,'2019-04-09 13:59:32',5.00,30,0,'I','root@localhost','2019-05-11 10:49:53'),(1451,'2019-04-09 13:59:32',5.00,31,0,'I','root@localhost','2019-05-11 10:51:10'),(1452,'2019-04-09 13:59:32',5.00,32,0,'I','root@localhost','2019-05-11 10:51:11'),(1453,'2019-04-09 13:59:32',5.00,33,0,'I','root@localhost','2019-05-11 10:51:41'),(1454,'2019-04-09 13:59:32',5.00,34,0,'I','root@localhost','2019-05-11 10:52:19'),(1455,'2019-04-09 13:59:32',5.00,35,0,'I','root@localhost','2019-05-11 10:53:13'),(1456,'2019-04-09 13:59:32',5.00,36,0,'I','root@localhost','2019-05-11 10:53:14'),(1457,'2019-04-09 13:59:32',5.00,37,0,'I','root@localhost','2019-05-11 10:53:57'),(1458,'2019-04-09 13:59:32',5.00,38,0,'I','root@localhost','2019-05-11 10:54:00'),(1459,'2019-04-09 13:59:32',5.00,39,0,'I','root@localhost','2019-05-11 10:54:19'),(1460,'2019-04-09 13:59:32',5.00,40,0,'I','root@localhost','2019-05-11 10:54:20'),(1461,'2019-04-09 13:59:32',5.00,41,0,'I','root@localhost','2019-05-11 10:54:21'),(1462,'2019-04-09 13:59:32',5.00,42,0,'I','root@localhost','2019-05-11 10:54:22'),(1463,'2019-04-09 13:59:32',5.00,1,0,'I','root@localhost','2019-05-11 10:55:23'),(1464,'2019-04-09 13:59:32',5.00,2,0,'I','root@localhost','2019-05-11 10:55:28'),(1465,'2019-04-09 13:59:32',5.00,3,0,'I','root@localhost','2019-05-11 10:55:29'),(1466,'2019-04-09 13:59:32',5.00,4,0,'I','root@localhost','2019-05-11 10:55:39'),(1467,'2019-04-09 13:59:32',5.00,5,0,'I','root@localhost','2019-05-11 10:55:40'),(1468,'2019-04-09 13:59:32',5.00,6,0,'I','root@localhost','2019-05-11 10:55:41'),(1469,'2019-04-09 13:59:32',5.00,7,0,'I','root@localhost','2019-05-11 10:55:53'),(1470,'2019-04-09 13:59:32',5.00,8,0,'I','root@localhost','2019-05-11 10:55:53'),(1471,'2019-04-09 13:59:32',5.00,9,0,'I','root@localhost','2019-05-11 10:55:54'),(1472,'2019-04-09 13:59:32',5.00,10,0,'I','root@localhost','2019-05-11 10:55:54'),(1473,'2019-04-09 13:59:32',5.00,11,0,'I','root@localhost','2019-05-11 10:55:55'),(1474,'2019-04-09 13:59:32',5.00,12,0,'I','root@localhost','2019-05-11 10:55:55'),(1475,'2019-04-09 13:59:32',5.00,13,0,'I','root@localhost','2019-05-11 10:56:13'),(1476,'2019-04-09 13:59:32',5.00,14,0,'I','root@localhost','2019-05-11 10:56:15'),(1477,'2019-04-09 13:59:32',5.00,15,0,'I','root@localhost','2019-05-11 10:57:01'),(1478,'2019-04-09 13:59:32',40.00,16,0,'I','root@localhost','2019-05-11 10:59:11'),(1479,'2019-04-09 13:59:32',40.00,17,0,'I','root@localhost','2019-05-11 10:59:12'),(1480,'2019-04-09 13:59:32',35.00,18,0,'I','root@localhost','2019-05-11 10:59:13'),(1481,'2019-04-09 13:59:32',35.00,19,0,'I','root@localhost','2019-05-11 10:59:14'),(1482,'2019-04-09 13:59:32',35.00,20,0,'I','root@localhost','2019-05-11 10:59:14'),(1483,'2019-04-09 13:59:32',35.00,21,0,'I','root@localhost','2019-05-11 10:59:24'),(1484,'2019-04-09 13:59:32',40.00,22,0,'I','root@localhost','2019-05-11 10:59:25'),(1485,'2019-04-09 13:59:32',5.00,23,0,'I','root@localhost','2019-05-11 10:59:40'),(1486,'2019-04-09 13:59:32',35.00,24,0,'I','root@localhost','2019-05-11 11:00:51'),(1487,'2019-04-09 13:59:32',5.00,25,0,'I','root@localhost','2019-05-11 11:00:55'),(1488,'2019-04-09 13:59:32',40.00,26,0,'I','root@localhost','2019-05-11 11:01:00'),(1489,'2019-04-09 13:59:32',50.00,27,0,'I','root@localhost','2019-05-11 11:01:02'),(1490,'2019-04-09 13:59:32',50.00,28,0,'I','root@localhost','2019-05-11 11:01:03'),(1491,'2019-04-09 13:59:32',50.00,29,0,'I','root@localhost','2019-05-11 11:01:03'),(1492,'2019-04-09 13:59:32',35.00,30,0,'I','root@localhost','2019-05-11 16:11:06'),(1493,'2019-04-09 13:59:32',35.00,31,0,'I','root@localhost','2019-05-11 16:11:07'),(1494,'2019-04-09 13:59:32',35.00,32,0,'I','root@localhost','2019-05-11 16:11:08'),(1495,'2019-04-09 13:59:32',50.00,1,0,'I','root@localhost','2019-05-11 16:12:11'),(1496,'2019-04-09 13:59:32',50.00,2,0,'I','root@localhost','2019-05-11 16:12:12'),(1497,'2019-04-09 13:59:32',50.00,3,0,'I','root@localhost','2019-05-11 16:23:23'),(1498,'2019-04-09 13:59:32',50.00,4,0,'I','root@localhost','2019-05-11 16:23:30'),(1499,'2019-04-09 13:59:32',50.00,5,0,'I','root@localhost','2019-05-11 16:23:42'),(1500,'2019-04-09 13:59:32',30.00,6,0,'I','root@localhost','2019-05-11 16:25:59'),(1501,'2019-04-09 13:59:32',35.00,7,0,'I','root@localhost','2019-05-11 16:34:09'),(1502,'2019-04-09 13:59:32',35.00,8,0,'I','root@localhost','2019-05-11 16:34:31'),(1503,'2019-04-09 13:59:32',35.00,9,0,'I','root@localhost','2019-05-11 16:34:32'),(1504,'2019-04-09 13:59:32',35.00,1,0,'I','root@localhost','2019-05-11 16:34:56'),(1505,'2019-04-09 13:59:32',35.00,2,0,'I','root@localhost','2019-05-11 16:34:57'),(1506,'2019-04-09 13:59:32',35.00,3,0,'I','root@localhost','2019-05-11 16:35:35'),(1507,'2019-04-09 13:59:32',35.00,4,0,'I','root@localhost','2019-05-11 16:38:21'),(1508,'2019-04-09 13:59:32',35.00,5,0,'I','root@localhost','2019-05-11 16:38:37'),(1509,'2019-04-09 13:59:32',35.00,6,0,'I','root@localhost','2019-05-11 16:42:12'),(1510,'2019-04-09 13:59:32',35.00,7,0,'I','root@localhost','2019-05-11 16:42:22'),(1511,'2019-04-09 13:59:32',35.00,8,0,'I','root@localhost','2019-05-11 16:42:23'),(1512,'2019-04-09 13:59:32',35.00,9,0,'I','root@localhost','2019-05-11 16:42:24'),(1513,'2019-04-09 13:59:32',35.00,10,0,'I','root@localhost','2019-05-11 16:42:25'),(1514,'2019-04-09 13:59:32',35.00,11,0,'I','root@localhost','2019-05-11 16:42:49'),(1515,'2019-04-09 13:59:32',35.00,12,0,'I','root@localhost','2019-05-11 16:42:50'),(1516,'2019-04-09 13:59:32',35.00,13,0,'I','root@localhost','2019-05-11 16:48:40'),(1517,'2019-04-09 13:59:32',35.00,14,0,'I','root@localhost','2019-05-11 16:48:40'),(1518,'2019-04-09 13:59:32',40.00,15,0,'I','root@localhost','2019-05-11 16:49:07'),(1519,'2019-04-09 13:59:32',40.00,16,0,'I','root@localhost','2019-05-11 16:49:08'),(1520,'2019-04-09 13:59:32',40.00,17,0,'I','root@localhost','2019-05-11 16:49:35'),(1521,'2019-04-09 13:59:32',40.00,18,0,'I','root@localhost','2019-05-11 16:49:36'),(1522,'2019-04-09 13:59:32',30.00,19,0,'I','root@localhost','2019-05-11 16:49:47'),(1523,'2019-04-09 13:59:32',40.00,20,0,'I','root@localhost','2019-05-11 16:49:49'),(1524,'2019-04-09 13:59:32',30.00,21,0,'I','root@localhost','2019-05-11 16:50:39'),(1525,'2019-04-09 13:59:32',40.00,22,0,'I','root@localhost','2019-05-11 16:50:41'),(1526,'2019-04-09 13:59:32',35.00,23,0,'I','root@localhost','2019-05-11 16:50:43'),(1527,'2019-04-09 13:59:32',30.00,24,0,'I','root@localhost','2019-05-11 16:50:51'),(1528,'2019-04-09 13:59:32',40.00,25,0,'I','root@localhost','2019-05-11 16:50:52'),(1529,'2019-04-09 13:59:32',30.00,26,0,'I','root@localhost','2019-05-11 16:51:17'),(1530,'2019-04-09 13:59:32',30.00,27,0,'I','root@localhost','2019-05-11 16:52:10'),(1531,'2019-04-09 13:59:32',30.00,28,0,'I','root@localhost','2019-05-11 16:52:11'),(1532,'2019-04-09 13:59:32',40.00,29,0,'I','root@localhost','2019-05-11 16:52:21'),(1533,'2019-04-09 13:59:32',35.00,30,0,'I','root@localhost','2019-05-11 16:52:26'),(1534,'2019-04-09 13:59:32',30.00,31,0,'I','root@localhost','2019-05-11 16:52:37'),(1535,'2019-04-09 13:59:32',30.00,32,0,'I','root@localhost','2019-05-11 16:53:42'),(1536,'2019-04-09 13:59:32',40.00,33,0,'I','root@localhost','2019-05-11 16:55:02'),(1537,'2019-04-09 13:59:32',40.00,34,0,'I','root@localhost','2019-05-11 16:55:13'),(1538,'2019-04-09 13:59:32',40.00,35,0,'I','root@localhost','2019-05-11 16:55:15'),(1539,'2019-04-09 13:59:32',40.00,36,0,'I','root@localhost','2019-05-11 16:55:16'),(1540,'2019-04-09 13:59:32',40.00,37,0,'I','root@localhost','2019-05-11 16:55:16'),(1541,'2019-04-09 13:59:32',40.00,38,0,'I','root@localhost','2019-05-11 16:55:17'),(1542,'2019-04-09 13:59:32',35.00,39,0,'I','root@localhost','2019-05-11 16:55:18'),(1543,'2019-04-09 13:59:32',35.00,40,0,'I','root@localhost','2019-05-11 16:55:19'),(1544,'2019-04-09 13:59:32',40.00,41,0,'I','root@localhost','2019-05-11 16:55:20'),(1545,'2019-04-09 13:59:32',30.00,42,0,'I','root@localhost','2019-05-11 16:55:21'),(1546,'2019-04-09 13:59:32',40.00,43,0,'I','root@localhost','2019-05-11 16:55:23'),(1547,'2019-04-09 13:59:32',40.00,44,0,'I','root@localhost','2019-05-11 16:55:41'),(1548,'2019-04-09 13:59:32',40.00,45,0,'I','root@localhost','2019-05-11 16:55:42'),(1549,'2019-04-09 13:59:32',35.00,46,0,'I','root@localhost','2019-05-11 16:55:43'),(1550,'2019-04-09 13:59:32',35.00,47,0,'I','root@localhost','2019-05-11 16:55:44'),(1551,'2019-04-09 13:59:32',40.00,48,0,'I','root@localhost','2019-05-11 16:55:45'),(1552,'2019-04-09 13:59:32',30.00,49,0,'I','root@localhost','2019-05-11 16:55:47'),(1553,'2019-04-09 13:59:32',30.00,50,0,'I','root@localhost','2019-05-11 16:55:48'),(1554,'2019-04-09 13:59:32',30.00,51,0,'I','root@localhost','2019-05-11 16:55:49'),(1555,'2019-04-09 13:59:32',30.00,52,0,'I','root@localhost','2019-05-11 16:55:50'),(1556,'2019-04-09 13:59:32',30.00,53,0,'I','root@localhost','2019-05-11 16:55:51'),(1557,'2019-04-09 13:59:32',30.00,54,0,'I','root@localhost','2019-05-11 16:55:52'),(1558,'2019-04-09 13:59:32',40.00,55,0,'I','root@localhost','2019-05-11 16:55:53'),(1559,'2019-04-09 13:59:32',40.00,56,0,'I','root@localhost','2019-05-11 16:55:54'),(1560,'2019-04-09 13:59:32',35.00,57,0,'I','root@localhost','2019-05-11 17:06:20'),(1561,'2019-04-09 13:59:32',30.00,58,0,'I','root@localhost','2019-05-11 17:06:26'),(1562,'2019-04-09 13:59:32',30.00,59,0,'I','root@localhost','2019-05-11 17:06:27'),(1563,'2019-04-09 13:59:32',30.00,60,0,'I','root@localhost','2019-05-11 17:06:27'),(1564,'2019-04-09 13:59:32',40.00,61,0,'I','root@localhost','2019-05-11 17:06:29'),(1565,'2019-04-09 13:59:32',35.00,62,0,'I','root@localhost','2019-05-11 17:06:31'),(1566,'2019-04-09 13:59:32',50.00,63,0,'I','root@localhost','2019-05-11 17:06:48'),(1567,'2019-04-09 13:59:32',50.00,64,0,'I','root@localhost','2019-05-11 17:06:49'),(1568,'2019-04-09 13:59:32',11.00,65,0,'I','root@localhost','2019-05-11 17:06:57'),(1569,'2019-04-09 13:59:32',30.00,66,0,'I','root@localhost','2019-05-11 17:06:58'),(1570,'2019-04-09 13:59:32',11.00,67,0,'I','root@localhost','2019-05-11 17:07:00'),(1571,'2019-05-11 16:09:11',30.50,1,0,'I','root@localhost','2019-05-11 17:09:54'),(1572,'2019-05-11 16:09:13',30.40,2,0,'I','root@localhost','2019-05-11 17:09:54'),(1573,'2019-05-11 16:09:14',30.40,3,0,'I','root@localhost','2019-05-11 17:09:54'),(1574,'2019-05-11 16:09:16',30.40,4,0,'I','root@localhost','2019-05-11 17:09:54'),(1575,'2019-05-11 16:09:18',30.40,5,0,'I','root@localhost','2019-05-11 17:09:54'),(1576,'2019-05-11 16:09:20',30.50,6,0,'I','root@localhost','2019-05-11 17:09:54'),(1577,'2019-05-11 16:09:22',30.50,7,0,'I','root@localhost','2019-05-11 17:09:54'),(1578,'2019-05-11 16:09:23',30.40,8,0,'I','root@localhost','2019-05-11 17:09:54'),(1579,'2019-05-11 16:09:25',30.40,9,0,'I','root@localhost','2019-05-11 17:09:54'),(1580,'2019-05-11 16:09:27',30.40,10,0,'I','root@localhost','2019-05-11 17:09:54'),(1581,'2019-05-11 16:09:29',30.40,11,0,'I','root@localhost','2019-05-11 17:09:54'),(1582,'2019-05-11 16:09:31',30.40,12,0,'I','root@localhost','2019-05-11 17:09:54'),(1583,'2019-05-11 16:09:32',30.40,13,0,'I','root@localhost','2019-05-11 17:09:54'),(1584,'2019-05-11 16:09:34',30.40,14,0,'I','root@localhost','2019-05-11 17:09:54'),(1585,'2019-05-11 16:09:36',30.40,15,0,'I','root@localhost','2019-05-11 17:09:54'),(1586,'2019-05-11 16:09:38',30.40,16,0,'I','root@localhost','2019-05-11 17:09:54'),(1587,'2019-05-11 16:09:40',30.40,17,0,'I','root@localhost','2019-05-11 17:09:54'),(1588,'2019-05-11 16:09:41',30.50,18,0,'I','root@localhost','2019-05-11 17:09:54'),(1589,'2019-05-11 16:09:43',30.50,19,0,'I','root@localhost','2019-05-11 17:09:54'),(1590,'2019-05-11 16:09:45',30.40,20,0,'I','root@localhost','2019-05-11 17:09:54'),(1591,'2019-05-11 16:09:47',30.40,21,0,'I','root@localhost','2019-05-11 17:09:54'),(1592,'2019-05-11 16:09:49',30.40,22,0,'I','root@localhost','2019-05-11 17:09:54'),(1593,'2019-05-11 16:09:51',30.40,23,0,'I','root@localhost','2019-05-11 17:09:54'),(1594,'2019-05-11 16:09:52',30.50,24,0,'I','root@localhost','2019-05-11 17:10:14'),(1595,'2019-05-11 16:09:54',30.50,25,0,'I','root@localhost','2019-05-11 17:10:14'),(1596,'2019-05-11 16:09:56',30.50,26,0,'I','root@localhost','2019-05-11 17:10:14'),(1597,'2019-05-11 16:09:58',30.50,27,0,'I','root@localhost','2019-05-11 17:10:14'),(1598,'2019-05-11 16:10:00',30.40,28,0,'I','root@localhost','2019-05-11 17:10:14'),(1599,'2019-05-11 16:10:01',30.40,29,0,'I','root@localhost','2019-05-11 17:10:14'),(1600,'2019-05-11 16:10:03',30.50,30,0,'I','root@localhost','2019-05-11 17:10:14'),(1601,'2019-05-11 16:10:05',30.50,31,0,'I','root@localhost','2019-05-11 17:10:14'),(1602,'2019-05-11 16:10:07',30.50,32,0,'I','root@localhost','2019-05-11 17:10:14'),(1603,'2019-05-11 16:10:09',30.50,33,0,'I','root@localhost','2019-05-11 17:10:14'),(1604,'2019-05-11 16:10:10',30.40,34,0,'I','root@localhost','2019-05-11 17:10:15'),(1605,'2019-05-11 16:10:12',30.40,35,0,'I','root@localhost','2019-05-11 17:10:35'),(1606,'2019-05-11 16:10:14',30.40,36,0,'I','root@localhost','2019-05-11 17:10:35'),(1607,'2019-05-11 16:10:16',30.40,37,0,'I','root@localhost','2019-05-11 17:10:35'),(1608,'2019-05-11 16:10:18',30.40,38,0,'I','root@localhost','2019-05-11 17:10:35'),(1609,'2019-05-11 16:10:19',30.40,39,0,'I','root@localhost','2019-05-11 17:10:35'),(1610,'2019-05-11 16:10:21',30.40,40,0,'I','root@localhost','2019-05-11 17:10:35'),(1611,'2019-05-11 16:10:23',30.40,41,0,'I','root@localhost','2019-05-11 17:10:35'),(1612,'2019-05-11 16:10:25',30.40,42,0,'I','root@localhost','2019-05-11 17:10:35'),(1613,'2019-05-11 16:10:27',30.40,43,0,'I','root@localhost','2019-05-11 17:10:35'),(1614,'2019-05-11 16:10:29',30.40,44,0,'I','root@localhost','2019-05-11 17:10:35'),(1615,'2019-05-11 16:10:30',30.40,45,0,'I','root@localhost','2019-05-11 17:10:35'),(1616,'2019-05-11 16:10:32',30.40,46,0,'I','root@localhost','2019-05-11 17:10:55'),(1617,'2019-05-11 16:10:34',30.40,47,0,'I','root@localhost','2019-05-11 17:10:55'),(1618,'2019-05-11 16:10:36',30.40,48,0,'I','root@localhost','2019-05-11 17:10:55'),(1619,'2019-05-11 16:10:38',30.40,49,0,'I','root@localhost','2019-05-11 17:10:55'),(1620,'2019-05-11 16:10:39',30.50,50,0,'I','root@localhost','2019-05-11 17:10:55'),(1621,'2019-05-11 16:10:41',30.50,51,0,'I','root@localhost','2019-05-11 17:10:55'),(1622,'2019-05-11 16:10:43',30.40,52,0,'I','root@localhost','2019-05-11 17:10:55'),(1623,'2019-05-11 16:10:45',30.40,53,0,'I','root@localhost','2019-05-11 17:10:55'),(1624,'2019-05-11 16:10:47',30.40,54,0,'I','root@localhost','2019-05-11 17:10:55'),(1625,'2019-05-11 16:10:48',30.40,55,0,'I','root@localhost','2019-05-11 17:10:55'),(1626,'2019-05-11 16:10:50',30.40,56,0,'I','root@localhost','2019-05-11 17:10:55'),(1627,'2019-05-11 16:10:54',30.40,57,0,'I','root@localhost','2019-05-11 17:11:15'),(1628,'2019-05-11 16:10:56',30.40,58,0,'I','root@localhost','2019-05-11 17:11:15'),(1629,'2019-05-11 16:10:57',30.50,59,0,'I','root@localhost','2019-05-11 17:11:15'),(1630,'2019-05-11 16:10:59',30.50,60,0,'I','root@localhost','2019-05-11 17:11:15'),(1631,'2019-05-11 16:11:01',30.50,61,0,'I','root@localhost','2019-05-11 17:11:15'),(1632,'2019-05-11 16:11:03',30.50,62,0,'I','root@localhost','2019-05-11 17:11:15'),(1633,'2019-05-11 16:11:05',30.40,63,0,'I','root@localhost','2019-05-11 17:11:15'),(1634,'2019-05-11 16:11:06',30.40,64,0,'I','root@localhost','2019-05-11 17:11:15'),(1635,'2019-05-11 16:11:08',30.40,65,0,'I','root@localhost','2019-05-11 17:11:15'),(1636,'2019-05-11 16:11:10',30.40,66,0,'I','root@localhost','2019-05-11 17:11:15'),(1637,'2019-05-11 16:11:12',30.40,67,0,'I','root@localhost','2019-05-11 17:11:15'),(1638,'2019-05-11 16:11:14',30.40,68,0,'I','root@localhost','2019-05-11 17:11:35'),(1639,'2019-05-11 16:11:16',30.40,69,0,'I','root@localhost','2019-05-11 17:11:35'),(1640,'2019-05-11 16:11:17',30.40,70,0,'I','root@localhost','2019-05-11 17:11:35'),(1641,'2019-05-11 16:11:19',30.50,71,0,'I','root@localhost','2019-05-11 17:11:35'),(1642,'2019-05-11 16:11:21',30.50,72,0,'I','root@localhost','2019-05-11 17:11:35'),(1643,'2019-05-11 16:11:23',30.50,73,0,'I','root@localhost','2019-05-11 17:11:35'),(1644,'2019-05-11 16:11:25',30.50,74,0,'I','root@localhost','2019-05-11 17:11:35'),(1645,'2019-05-11 16:11:26',30.40,75,0,'I','root@localhost','2019-05-11 17:11:35'),(1646,'2019-05-11 16:11:28',30.40,76,0,'I','root@localhost','2019-05-11 17:11:35'),(1647,'2019-05-11 16:11:30',30.40,77,0,'I','root@localhost','2019-05-11 17:11:35'),(1648,'2019-05-11 16:11:32',30.40,78,0,'I','root@localhost','2019-05-11 17:11:35'),(1649,'2019-05-11 16:11:34',30.50,79,0,'I','root@localhost','2019-05-11 17:11:39'),(1650,'2019-05-11 16:11:35',30.50,80,0,'I','root@localhost','2019-05-11 17:11:39'),(1651,'2019-05-11 16:11:37',30.40,81,0,'I','root@localhost','2019-05-11 17:11:44'),(1652,'2019-05-11 16:11:39',30.40,82,0,'I','root@localhost','2019-05-11 17:11:44'),(1653,'2019-05-11 16:11:41',30.40,83,0,'I','root@localhost','2019-05-11 17:11:44'),(1654,'2019-05-11 16:11:43',30.40,84,0,'I','root@localhost','2019-05-11 17:11:49'),(1655,'2019-05-11 16:11:44',30.50,85,0,'I','root@localhost','2019-05-11 17:11:49'),(1656,'2019-05-11 16:11:46',30.50,86,0,'I','root@localhost','2019-05-11 17:11:49'),(1657,'2019-05-11 16:11:48',30.50,87,0,'I','root@localhost','2019-05-11 17:11:54'),(1658,'2019-05-11 16:11:50',30.50,88,0,'I','root@localhost','2019-05-11 17:11:54'),(1659,'2019-05-11 16:11:52',30.40,89,0,'I','root@localhost','2019-05-11 17:11:59'),(1660,'2019-05-11 16:11:54',30.40,90,0,'I','root@localhost','2019-05-11 17:11:59'),(1661,'2019-05-11 16:11:55',30.40,91,0,'I','root@localhost','2019-05-11 17:11:59'),(1662,'2019-05-11 16:11:57',30.40,92,0,'I','root@localhost','2019-05-11 17:12:04'),(1663,'2019-05-11 16:11:59',30.50,93,0,'I','root@localhost','2019-05-11 17:12:04'),(1664,'2019-05-11 16:12:01',30.50,94,0,'I','root@localhost','2019-05-11 17:12:04'),(1665,'2019-05-11 16:12:03',30.50,95,0,'I','root@localhost','2019-05-11 17:12:10'),(1666,'2019-05-11 16:12:04',30.50,96,0,'I','root@localhost','2019-05-11 17:12:10'),(1667,'2019-05-11 16:12:06',30.40,97,0,'I','root@localhost','2019-05-11 17:12:10'),(1668,'2019-05-11 16:12:08',30.40,98,0,'I','root@localhost','2019-05-11 17:12:15'),(1669,'2019-05-11 16:12:10',30.40,99,0,'I','root@localhost','2019-05-11 17:12:15'),(1670,'2019-05-11 16:12:12',30.40,100,0,'I','root@localhost','2019-05-11 17:12:15'),(1671,'2019-05-11 16:12:13',30.50,101,0,'I','root@localhost','2019-05-11 17:12:20'),(1672,'2019-05-11 16:12:15',30.50,102,0,'I','root@localhost','2019-05-11 17:12:20'),(1673,'2019-05-11 16:12:17',30.40,103,0,'I','root@localhost','2019-05-11 17:12:25'),(1674,'2019-05-11 16:12:19',30.40,104,0,'I','root@localhost','2019-05-11 17:12:25'),(1675,'2019-05-11 16:12:21',30.50,105,0,'I','root@localhost','2019-05-11 17:12:25'),(1676,'2019-05-11 16:12:23',30.50,106,0,'I','root@localhost','2019-05-11 17:12:30'),(1677,'2019-05-11 16:12:25',30.40,107,0,'I','root@localhost','2019-05-11 17:12:30'),(1678,'2019-05-11 16:12:27',30.40,108,0,'I','root@localhost','2019-05-11 17:12:30'),(1679,'2019-05-11 16:12:29',30.40,109,0,'I','root@localhost','2019-05-11 17:12:35'),(1680,'2019-05-11 16:12:30',30.40,110,0,'I','root@localhost','2019-05-11 17:12:35'),(1681,'2019-05-11 16:12:32',30.40,111,0,'I','root@localhost','2019-05-11 17:12:35'),(1682,'2019-05-11 16:12:34',30.40,112,0,'I','root@localhost','2019-05-11 17:12:40'),(1683,'2019-05-11 16:12:36',30.40,113,0,'I','root@localhost','2019-05-11 17:12:40'),(1684,'2019-05-11 16:12:38',30.40,114,0,'I','root@localhost','2019-05-11 17:12:40'),(1685,'2019-05-11 16:12:39',30.40,115,0,'I','root@localhost','2019-05-11 17:12:45'),(1686,'2019-05-11 16:12:41',30.40,116,0,'I','root@localhost','2019-05-11 17:12:45'),(1687,'2019-05-11 16:12:43',30.50,117,0,'I','root@localhost','2019-05-11 17:12:50'),(1688,'2019-05-11 16:12:45',30.50,118,0,'I','root@localhost','2019-05-11 17:12:50'),(1689,'2019-05-11 16:12:47',30.40,119,0,'I','root@localhost','2019-05-11 17:12:50'),(1690,'2019-05-11 16:12:49',30.40,120,0,'I','root@localhost','2019-05-11 17:15:30'),(1691,'2019-05-11 16:15:19',30.50,121,0,'I','root@localhost','2019-05-11 17:15:30'),(1692,'2019-05-11 16:15:20',30.50,122,0,'I','root@localhost','2019-05-11 17:15:30'),(1693,'2019-05-11 16:15:22',30.40,123,0,'I','root@localhost','2019-05-11 17:15:30'),(1694,'2019-05-11 16:15:24',30.40,124,0,'I','root@localhost','2019-05-11 17:15:30'),(1695,'2019-05-11 16:15:26',30.40,125,0,'I','root@localhost','2019-05-11 17:15:30'),(1696,'2019-05-11 16:15:28',30.40,126,0,'I','root@localhost','2019-05-11 17:15:30'),(1697,'2019-05-11 16:15:30',30.40,127,0,'I','root@localhost','2019-05-11 17:15:36'),(1698,'2019-05-11 16:15:31',30.40,128,0,'I','root@localhost','2019-05-11 17:15:36'),(1699,'2019-05-11 16:15:33',30.40,129,0,'I','root@localhost','2019-05-11 17:15:36'),(1700,'2019-05-11 16:15:35',30.40,130,0,'I','root@localhost','2019-05-11 17:15:41'),(1701,'2019-05-11 16:15:37',30.40,131,0,'I','root@localhost','2019-05-11 17:15:41'),(1702,'2019-05-11 16:15:39',30.40,132,0,'I','root@localhost','2019-05-11 17:15:46'),(1703,'2019-05-11 16:15:40',30.40,133,0,'I','root@localhost','2019-05-11 17:15:46'),(1704,'2019-05-11 16:15:42',30.40,134,0,'I','root@localhost','2019-05-11 17:15:46'),(1705,'2019-05-11 16:15:44',30.40,135,0,'I','root@localhost','2019-05-11 17:15:51'),(1706,'2019-05-11 16:15:46',30.40,136,0,'I','root@localhost','2019-05-11 17:15:51'),(1707,'2019-05-11 16:15:48',30.40,137,0,'I','root@localhost','2019-05-11 17:15:51'),(1708,'2019-05-11 16:15:49',30.40,138,0,'I','root@localhost','2019-05-11 17:15:56'),(1709,'2019-05-11 16:15:51',30.40,139,0,'I','root@localhost','2019-05-11 17:15:56'),(1710,'2019-05-11 16:15:53',30.40,140,0,'I','root@localhost','2019-05-11 17:15:56'),(1711,'2019-05-11 16:15:55',30.40,141,0,'I','root@localhost','2019-05-11 17:16:01'),(1712,'2019-05-11 16:15:57',30.40,142,0,'I','root@localhost','2019-05-11 17:16:01'),(1713,'2019-05-11 16:15:58',30.40,143,0,'I','root@localhost','2019-05-11 17:16:01'),(1714,'2019-05-11 16:16:00',30.40,144,0,'I','root@localhost','2019-05-11 17:16:06'),(1715,'2019-05-11 16:16:02',30.40,145,0,'I','root@localhost','2019-05-11 17:16:06'),(1716,'2019-05-11 16:16:04',30.40,146,0,'I','root@localhost','2019-05-11 17:16:11'),(1717,'2019-05-11 16:16:06',30.40,147,0,'I','root@localhost','2019-05-11 17:16:11'),(1718,'2019-05-11 16:16:07',30.40,148,0,'I','root@localhost','2019-05-11 17:16:11'),(1719,'2019-05-11 16:16:09',30.40,149,0,'I','root@localhost','2019-05-11 17:16:16'),(1720,'2019-05-11 16:16:11',30.40,150,0,'I','root@localhost','2019-05-11 17:16:16'),(1721,'2019-05-11 16:16:13',30.40,151,0,'I','root@localhost','2019-05-11 17:16:16'),(1722,'2019-05-11 16:16:15',30.40,152,0,'I','root@localhost','2019-05-11 17:16:21'),(1723,'2019-05-11 16:16:17',30.40,153,0,'I','root@localhost','2019-05-11 17:16:21'),(1724,'2019-05-11 16:16:18',30.40,154,0,'I','root@localhost','2019-05-11 17:16:21'),(1725,'2019-05-11 16:16:20',30.40,155,0,'I','root@localhost','2019-05-11 17:16:26'),(1726,'2019-05-11 16:16:22',30.40,156,0,'I','root@localhost','2019-05-11 17:16:26'),(1727,'2019-05-11 16:16:24',30.40,157,0,'I','root@localhost','2019-05-11 17:16:26'),(1728,'2019-05-11 16:16:26',30.40,158,0,'I','root@localhost','2019-05-11 17:16:31'),(1729,'2019-05-11 16:16:27',30.40,159,0,'I','root@localhost','2019-05-11 17:16:31'),(1730,'2019-05-11 16:16:29',30.40,160,0,'I','root@localhost','2019-05-11 17:16:36'),(1731,'2019-05-11 16:16:31',30.40,161,0,'I','root@localhost','2019-05-11 17:16:36'),(1732,'2019-05-11 16:16:33',30.40,162,0,'I','root@localhost','2019-05-11 17:16:36'),(1733,'2019-05-11 16:16:35',30.40,163,0,'I','root@localhost','2019-05-11 17:16:41'),(1734,'2019-05-11 16:16:36',30.40,164,0,'I','root@localhost','2019-05-11 17:16:41'),(1735,'2019-05-11 16:16:38',30.40,165,0,'I','root@localhost','2019-05-11 17:16:42'),(1736,'2019-05-11 16:16:40',30.40,166,0,'I','root@localhost','2019-05-11 17:16:47'),(1737,'2019-05-11 16:16:42',30.40,167,0,'I','root@localhost','2019-05-11 17:16:47'),(1738,'2019-05-11 16:16:44',30.40,168,0,'I','root@localhost','2019-05-11 17:16:47'),(1739,'2019-05-11 16:16:45',30.40,169,0,'I','root@localhost','2019-05-11 17:16:52'),(1740,'2019-05-11 16:16:47',30.40,170,0,'I','root@localhost','2019-05-11 17:16:52'),(1741,'2019-05-11 16:16:49',30.40,171,0,'I','root@localhost','2019-05-11 17:16:52'),(1742,'2019-05-11 16:16:51',30.40,172,0,'I','root@localhost','2019-05-11 17:16:57'),(1743,'2019-05-11 16:16:53',30.40,173,0,'I','root@localhost','2019-05-11 17:16:57'),(1744,'2019-05-11 16:16:55',30.40,174,0,'I','root@localhost','2019-05-11 17:17:02'),(1745,'2019-05-11 16:16:56',30.40,175,0,'I','root@localhost','2019-05-11 17:17:02'),(1746,'2019-05-11 16:16:58',30.40,176,0,'I','root@localhost','2019-05-11 17:17:02'),(1747,'2019-05-11 16:17:00',30.40,177,0,'I','root@localhost','2019-05-11 17:17:07'),(1748,'2019-05-11 16:17:02',30.40,178,0,'I','root@localhost','2019-05-11 17:17:07'),(1749,'2019-05-11 16:17:04',30.40,179,0,'I','root@localhost','2019-05-11 17:17:07'),(1750,'2019-05-11 16:17:05',30.40,180,0,'I','root@localhost','2019-05-11 17:17:12'),(1751,'2019-05-11 16:17:07',30.40,181,0,'I','root@localhost','2019-05-11 17:17:12'),(1752,'2019-05-11 16:17:09',30.40,182,0,'I','root@localhost','2019-05-11 17:17:12'),(1753,'2019-05-11 16:17:11',30.40,183,0,'I','root@localhost','2019-05-11 17:17:17'),(1754,'2019-05-11 16:17:13',30.40,184,0,'I','root@localhost','2019-05-11 17:17:17'),(1755,'2019-05-11 16:17:14',30.40,185,0,'I','root@localhost','2019-05-11 17:17:17'),(1756,'2019-05-11 16:17:16',30.40,186,0,'I','root@localhost','2019-05-11 17:17:22'),(1757,'2019-05-11 16:17:18',30.40,187,0,'I','root@localhost','2019-05-11 17:17:22'),(1758,'2019-05-11 16:17:20',30.40,188,0,'I','root@localhost','2019-05-11 17:17:27'),(1759,'2019-05-11 16:17:22',30.40,189,0,'I','root@localhost','2019-05-11 17:17:27'),(1760,'2019-05-11 16:17:23',30.40,190,0,'I','root@localhost','2019-05-11 17:17:27'),(1761,'2019-05-11 16:17:25',30.40,191,0,'I','root@localhost','2019-05-11 17:17:32'),(1762,'2019-05-11 16:17:27',30.40,192,0,'I','root@localhost','2019-05-11 17:17:32'),(1763,'2019-05-11 16:17:29',30.40,193,0,'I','root@localhost','2019-05-11 17:17:32'),(1764,'2019-05-11 16:17:30',30.40,194,0,'I','root@localhost','2019-05-11 17:17:37'),(1765,'2019-05-11 16:17:32',30.40,195,0,'I','root@localhost','2019-05-11 17:17:37'),(1766,'2019-05-11 16:17:34',30.40,196,0,'I','root@localhost','2019-05-11 17:17:37'),(1767,'2019-05-11 16:17:36',30.40,197,0,'I','root@localhost','2019-05-11 17:17:42'),(1768,'2019-05-11 16:17:38',30.40,198,0,'I','root@localhost','2019-05-11 17:17:42'),(1769,'2019-05-11 16:17:39',30.40,199,0,'I','root@localhost','2019-05-11 17:17:42'),(1770,'2019-05-11 16:17:41',30.40,200,0,'I','root@localhost','2019-05-11 17:17:47'),(1771,'2019-05-11 16:17:43',30.40,201,0,'I','root@localhost','2019-05-11 17:17:47'),(1772,'2019-05-11 16:17:45',30.40,202,0,'I','root@localhost','2019-05-11 17:17:48'),(1773,'2019-05-11 16:17:47',30.40,203,0,'I','root@localhost','2019-05-11 17:17:53'),(1774,'2019-05-11 16:17:49',30.40,204,0,'I','root@localhost','2019-05-11 17:17:53'),(1775,'2019-05-11 16:17:50',30.40,205,0,'I','root@localhost','2019-05-11 17:17:58'),(1776,'2019-05-11 16:17:52',30.40,206,0,'I','root@localhost','2019-05-11 17:17:58'),(1777,'2019-05-11 16:17:54',30.40,207,0,'I','root@localhost','2019-05-11 17:17:58'),(1778,'2019-05-11 16:17:56',30.40,208,0,'I','root@localhost','2019-05-11 17:18:03'),(1779,'2019-05-11 16:17:58',30.40,209,0,'I','root@localhost','2019-05-11 17:18:03'),(1780,'2019-05-11 16:17:59',30.40,210,0,'I','root@localhost','2019-05-11 17:18:03'),(1781,'2019-05-11 16:18:01',30.40,211,0,'I','root@localhost','2019-05-11 17:18:08'),(1782,'2019-05-11 16:18:03',30.40,212,0,'I','root@localhost','2019-05-11 17:18:08'),(1783,'2019-05-11 16:18:05',30.30,213,0,'I','root@localhost','2019-05-11 17:18:08'),(1784,'2019-05-11 16:18:07',30.30,214,0,'I','root@localhost','2019-05-11 17:18:13'),(1785,'2019-05-11 16:18:08',30.40,215,0,'I','root@localhost','2019-05-11 17:18:13'),(1786,'2019-05-11 16:18:10',30.40,216,0,'I','root@localhost','2019-05-11 17:18:13'),(1787,'2019-05-11 16:18:12',30.40,217,0,'I','root@localhost','2019-05-11 17:18:18'),(1788,'2019-05-11 16:18:14',30.40,218,0,'I','root@localhost','2019-05-11 17:18:18'),(1789,'2019-05-11 16:18:16',30.40,219,0,'I','root@localhost','2019-05-11 17:18:23'),(1790,'2019-05-11 16:18:17',30.40,220,0,'I','root@localhost','2019-05-11 17:18:23'),(1791,'2019-05-11 16:18:19',30.40,221,0,'I','root@localhost','2019-05-11 17:18:23'),(1792,'2019-05-11 16:18:21',30.40,222,0,'I','root@localhost','2019-05-11 17:18:28'),(1793,'2019-05-11 16:18:23',30.50,223,0,'I','root@localhost','2019-05-11 17:18:28'),(1794,'2019-05-11 16:18:25',30.50,224,0,'I','root@localhost','2019-05-11 17:18:28'),(1795,'2019-05-11 16:18:27',30.40,225,0,'I','root@localhost','2019-05-11 17:18:33'),(1796,'2019-05-11 16:18:28',30.40,226,0,'I','root@localhost','2019-05-11 17:18:33'),(1797,'2019-05-11 16:18:30',30.40,227,0,'I','root@localhost','2019-05-11 17:18:33'),(1798,'2019-05-11 16:18:32',30.40,1,0,'I','root@localhost','2019-05-11 17:19:05'),(1799,'2019-05-11 16:18:50',30.40,2,0,'I','root@localhost','2019-05-11 17:19:05'),(1800,'2019-05-11 16:18:52',30.40,3,0,'I','root@localhost','2019-05-11 17:19:05'),(1801,'2019-05-11 16:18:54',30.40,4,0,'I','root@localhost','2019-05-11 17:19:05'),(1802,'2019-05-11 16:18:55',30.40,5,0,'I','root@localhost','2019-05-11 17:19:05'),(1803,'2019-05-11 16:18:57',30.40,6,0,'I','root@localhost','2019-05-11 17:19:05'),(1804,'2019-05-11 16:18:59',30.40,7,0,'I','root@localhost','2019-05-11 17:19:05'),(1805,'2019-05-11 16:19:01',30.40,8,0,'I','root@localhost','2019-05-11 17:19:05'),(1806,'2019-05-11 16:19:04',30.40,9,0,'I','root@localhost','2019-05-11 17:19:10'),(1807,'2019-05-11 16:19:06',30.40,10,0,'I','root@localhost','2019-05-11 17:19:10'),(1808,'2019-05-11 16:19:08',30.40,11,0,'I','root@localhost','2019-05-11 17:19:15'),(1809,'2019-05-11 16:19:10',30.40,12,0,'I','root@localhost','2019-05-11 17:19:15'),(1810,'2019-05-11 16:19:12',30.40,13,0,'I','root@localhost','2019-05-11 17:19:15'),(1811,'2019-05-11 16:19:14',30.50,14,0,'I','root@localhost','2019-05-11 17:19:20'),(1812,'2019-05-11 16:19:15',30.50,15,0,'I','root@localhost','2019-05-11 17:19:20'),(1813,'2019-05-11 16:19:17',30.40,16,0,'I','root@localhost','2019-05-11 17:19:20'),(1814,'2019-05-11 16:19:19',30.40,17,0,'I','root@localhost','2019-05-11 17:19:25'),(1815,'2019-05-11 16:19:21',30.40,18,0,'I','root@localhost','2019-05-11 17:19:25'),(1816,'2019-05-11 16:19:23',30.40,19,0,'I','root@localhost','2019-05-11 17:19:25'),(1817,'2019-05-11 16:19:24',30.40,20,0,'I','root@localhost','2019-05-11 17:19:31'),(1818,'2019-05-11 16:19:26',30.40,21,0,'I','root@localhost','2019-05-11 17:19:31'),(1819,'2019-05-11 16:19:28',30.50,22,0,'I','root@localhost','2019-05-11 17:19:36'),(1820,'2019-05-11 16:19:30',30.50,23,0,'I','root@localhost','2019-05-11 17:19:36'),(1821,'2019-05-11 16:19:32',30.30,24,0,'I','root@localhost','2019-05-11 17:19:36'),(1822,'2019-05-11 16:19:33',30.30,25,0,'I','root@localhost','2019-05-11 17:19:41'),(1823,'2019-05-11 16:19:35',30.40,26,0,'I','root@localhost','2019-05-11 17:19:41'),(1824,'2019-05-11 16:19:37',30.40,27,0,'I','root@localhost','2019-05-11 17:19:41'),(1825,'2019-05-11 16:19:39',30.50,28,0,'I','root@localhost','2019-05-11 17:19:46'),(1826,'2019-05-11 16:19:41',30.50,29,0,'I','root@localhost','2019-05-11 17:19:46'),(1827,'2019-05-11 16:19:42',30.40,30,0,'I','root@localhost','2019-05-11 17:19:46'),(1828,'2019-05-11 16:19:44',30.40,31,0,'I','root@localhost','2019-05-11 17:19:51'),(1829,'2019-05-11 16:19:46',30.40,32,0,'I','root@localhost','2019-05-11 17:19:51'),(1830,'2019-05-11 16:19:48',30.40,33,0,'I','root@localhost','2019-05-11 17:19:51'),(1831,'2019-04-09 13:59:32',5.00,34,0,'I','root@localhost','2019-05-11 17:20:56'),(1832,'2019-04-09 13:59:32',5.00,35,0,'I','root@localhost','2019-05-11 17:20:57'),(1833,'2019-05-11 16:26:46',30.40,1,0,'I','root@localhost','2019-05-11 17:27:05'),(1834,'2019-05-11 16:26:48',30.40,2,0,'I','root@localhost','2019-05-11 17:27:05'),(1835,'2019-05-11 16:26:50',30.40,3,0,'I','root@localhost','2019-05-11 17:27:05'),(1836,'2019-05-11 16:26:52',30.40,4,0,'I','root@localhost','2019-05-11 17:27:05'),(1837,'2019-05-11 16:26:54',30.40,5,0,'I','root@localhost','2019-05-11 17:27:05'),(1838,'2019-05-11 16:26:55',30.40,6,0,'I','root@localhost','2019-05-11 17:27:05'),(1839,'2019-05-11 16:26:57',30.40,7,0,'I','root@localhost','2019-05-11 17:27:05'),(1840,'2019-05-11 16:26:59',30.40,8,0,'I','root@localhost','2019-05-11 17:27:05'),(1841,'2019-05-11 16:27:01',30.40,9,0,'I','root@localhost','2019-05-11 17:27:05'),(1842,'2019-05-11 16:27:03',30.40,10,0,'I','root@localhost','2019-05-11 17:27:05'),(1843,'2019-05-11 16:27:05',30.40,11,0,'I','root@localhost','2019-05-11 17:27:15'),(1844,'2019-05-11 16:27:06',30.40,12,0,'I','root@localhost','2019-05-11 17:27:15'),(1845,'2019-05-11 16:27:08',30.40,13,0,'I','root@localhost','2019-05-11 17:27:15'),(1846,'2019-05-11 16:27:10',30.40,14,0,'I','root@localhost','2019-05-11 17:27:15'),(1847,'2019-05-11 16:27:12',30.40,15,0,'I','root@localhost','2019-05-11 17:27:15'),(1848,'2019-05-11 16:27:14',30.40,16,0,'I','root@localhost','2019-05-11 17:27:25'),(1849,'2019-05-11 16:27:15',30.40,17,0,'I','root@localhost','2019-05-11 17:27:25'),(1850,'2019-05-11 16:27:17',30.40,18,0,'I','root@localhost','2019-05-11 17:27:25'),(1851,'2019-05-11 16:27:19',30.50,19,0,'I','root@localhost','2019-05-11 17:27:26'),(1852,'2019-05-11 16:27:21',30.50,20,0,'I','root@localhost','2019-05-11 17:27:26'),(1853,'2019-05-11 16:27:23',30.40,21,0,'I','root@localhost','2019-05-11 17:27:26'),(1854,'2019-05-11 16:27:24',30.40,22,0,'I','root@localhost','2019-05-11 17:27:36'),(1855,'2019-05-11 16:27:26',30.40,23,0,'I','root@localhost','2019-05-11 17:27:36'),(1856,'2019-05-11 16:27:28',30.40,24,0,'I','root@localhost','2019-05-11 17:27:36'),(1857,'2019-05-11 16:27:30',30.40,25,0,'I','root@localhost','2019-05-11 17:27:36'),(1858,'2019-05-11 16:27:31',30.40,26,0,'I','root@localhost','2019-05-11 17:27:36'),(1859,'2019-05-11 16:27:35',30.40,27,0,'I','root@localhost','2019-05-11 17:27:46'),(1860,'2019-05-11 16:27:37',30.40,28,0,'I','root@localhost','2019-05-11 17:27:46'),(1861,'2019-05-11 16:27:39',30.40,29,0,'I','root@localhost','2019-05-11 17:27:46'),(1862,'2019-05-11 16:27:40',30.40,30,0,'I','root@localhost','2019-05-11 17:27:46'),(1863,'2019-05-11 16:27:42',30.40,31,0,'I','root@localhost','2019-05-11 17:27:46'),(1864,'2019-05-11 16:27:44',30.50,32,0,'I','root@localhost','2019-05-11 17:27:56'),(1865,'2019-05-11 16:27:46',30.50,33,0,'I','root@localhost','2019-05-11 17:27:56'),(1866,'2019-05-11 16:27:48',30.40,34,0,'I','root@localhost','2019-05-11 17:27:56'),(1867,'2019-05-11 16:27:50',30.40,35,0,'I','root@localhost','2019-05-11 17:27:56'),(1868,'2019-05-11 16:27:51',30.40,36,0,'I','root@localhost','2019-05-11 17:27:56'),(1869,'2019-05-11 16:27:53',30.40,37,0,'I','root@localhost','2019-05-11 17:27:56'),(1870,'2019-05-11 16:27:55',30.40,38,0,'I','root@localhost','2019-05-11 17:28:06'),(1871,'2019-05-11 16:27:57',30.40,39,0,'I','root@localhost','2019-05-11 17:28:06'),(1872,'2019-05-11 16:27:59',30.40,40,0,'I','root@localhost','2019-05-11 17:28:06'),(1873,'2019-05-11 16:28:00',30.40,41,0,'I','root@localhost','2019-05-11 17:28:06'),(1874,'2019-05-11 16:28:02',30.40,42,0,'I','root@localhost','2019-05-11 17:28:06'),(1875,'2019-05-11 16:28:04',30.40,43,0,'I','root@localhost','2019-05-11 17:28:16'),(1876,'2019-05-11 16:28:06',30.40,44,0,'I','root@localhost','2019-05-11 17:28:16'),(1877,'2019-05-11 16:28:08',30.40,45,0,'I','root@localhost','2019-05-11 17:28:16'),(1878,'2019-05-11 16:28:09',30.40,46,0,'I','root@localhost','2019-05-11 17:28:16'),(1879,'2019-05-11 16:28:11',30.40,47,0,'I','root@localhost','2019-05-11 17:28:16'),(1880,'2019-05-11 16:28:13',30.40,48,0,'I','root@localhost','2019-05-11 17:28:16'),(1881,'2019-05-11 16:28:15',30.40,49,0,'I','root@localhost','2019-05-11 17:28:26'),(1882,'2019-05-11 16:28:17',30.40,50,0,'I','root@localhost','2019-05-11 17:28:26'),(1883,'2019-05-11 16:28:18',30.40,51,0,'I','root@localhost','2019-05-11 17:28:26'),(1884,'2019-05-11 16:28:20',30.30,52,0,'I','root@localhost','2019-05-11 17:28:26'),(1885,'2019-05-11 16:28:22',30.30,53,0,'I','root@localhost','2019-05-11 17:28:26'),(1886,'2019-05-11 16:28:24',30.40,54,0,'I','root@localhost','2019-05-11 17:28:36'),(1887,'2019-05-11 16:28:26',30.40,55,0,'I','root@localhost','2019-05-11 17:28:36'),(1888,'2019-05-11 16:28:28',30.40,56,0,'I','root@localhost','2019-05-11 17:28:36'),(1889,'2019-05-11 16:28:29',30.40,57,0,'I','root@localhost','2019-05-11 17:28:36'),(1890,'2019-05-11 16:28:31',30.40,58,0,'I','root@localhost','2019-05-11 17:28:36'),(1891,'2019-05-11 16:28:33',30.40,59,0,'I','root@localhost','2019-05-11 17:28:36'),(1892,'2019-05-11 16:28:35',30.40,60,0,'I','root@localhost','2019-05-11 17:28:46'),(1893,'2019-05-11 16:28:37',30.40,61,0,'I','root@localhost','2019-05-11 17:28:46'),(1894,'2019-05-11 16:28:38',30.30,62,0,'I','root@localhost','2019-05-11 17:28:46'),(1895,'2019-05-11 16:28:40',30.30,63,0,'I','root@localhost','2019-05-11 17:28:46'),(1896,'2019-05-11 16:28:42',30.30,64,0,'I','root@localhost','2019-05-11 17:28:46'),(1897,'2019-05-11 16:28:44',30.30,65,0,'I','root@localhost','2019-05-11 17:28:46'),(1898,'2019-05-11 16:28:46',30.40,66,0,'I','root@localhost','2019-05-11 17:28:56'),(1899,'2019-05-11 16:28:47',30.40,67,0,'I','root@localhost','2019-05-11 17:28:56'),(1900,'2019-05-11 16:28:49',30.30,68,0,'I','root@localhost','2019-05-11 17:28:56'),(1901,'2019-05-11 16:28:51',30.30,69,0,'I','root@localhost','2019-05-11 17:28:56'),(1902,'2019-05-11 16:28:53',30.40,70,0,'I','root@localhost','2019-05-11 17:28:56'),(1903,'2019-05-11 16:28:55',30.40,71,0,'I','root@localhost','2019-05-11 17:29:06'),(1904,'2019-05-11 16:28:56',30.30,72,0,'I','root@localhost','2019-05-11 17:29:06'),(1905,'2019-05-11 16:28:58',30.30,73,0,'I','root@localhost','2019-05-11 17:29:06'),(1906,'2019-05-11 16:29:00',30.40,74,0,'I','root@localhost','2019-05-11 17:29:06'),(1907,'2019-05-11 16:29:02',30.40,75,0,'I','root@localhost','2019-05-11 17:29:07'),(1908,'2019-05-11 16:29:04',30.40,76,0,'I','root@localhost','2019-05-11 17:29:07'),(1909,'2019-05-11 16:29:05',30.40,77,0,'I','root@localhost','2019-05-11 17:29:17'),(1910,'2019-05-11 16:29:07',30.40,78,0,'I','root@localhost','2019-05-11 17:29:17'),(1911,'2019-05-11 16:29:09',30.40,79,0,'I','root@localhost','2019-05-11 17:29:17'),(1912,'2019-05-11 16:29:11',30.30,80,0,'I','root@localhost','2019-05-11 17:29:17'),(1913,'2019-05-11 16:29:13',30.30,81,0,'I','root@localhost','2019-05-11 17:29:17'),(1914,'2019-04-09 13:59:32',30.00,82,0,'I','root@localhost','2019-05-12 08:45:30'),(1915,'2019-04-09 13:59:32',5.00,83,0,'I','root@localhost','2019-05-12 08:45:32'),(1916,'2019-04-09 13:59:32',50.00,84,0,'I','root@localhost','2019-05-12 08:45:42'),(1917,'2019-04-09 13:59:32',30.00,85,0,'I','root@localhost','2019-05-12 08:45:44'),(1918,'2019-04-09 13:59:32',40.00,86,0,'I','root@localhost','2019-05-12 08:45:45'),(1919,'2019-04-09 13:59:32',40.00,87,0,'I','root@localhost','2019-05-12 08:45:46'),(1920,'2019-04-09 13:59:32',11.00,88,0,'I','root@localhost','2019-05-12 08:45:47'),(1921,'2019-04-09 13:59:32',5.00,89,0,'I','root@localhost','2019-05-12 08:45:48'),(1922,'2019-04-09 13:59:32',5.00,90,0,'I','root@localhost','2019-05-12 08:46:23'),(1923,'2019-04-09 13:59:32',11.00,91,0,'I','root@localhost','2019-05-12 08:46:24'),(1924,'2019-04-09 13:59:32',35.00,1,0,'I','root@localhost','2019-05-12 08:51:32'),(1925,'2019-04-09 13:59:32',35.00,2,0,'I','root@localhost','2019-05-12 08:51:32'),(1926,'2019-04-09 13:59:32',40.00,3,0,'I','root@localhost','2019-05-12 08:51:33'),(1927,'2019-04-09 13:59:32',30.00,4,0,'I','root@localhost','2019-05-12 08:51:34'),(1928,'2019-04-09 13:59:32',50.00,5,0,'I','root@localhost','2019-05-12 08:51:35'),(1929,'2019-04-09 13:59:32',5.00,6,0,'I','root@localhost','2019-05-12 08:51:36'),(1930,'2019-04-09 13:59:32',5.00,7,0,'I','root@localhost','2019-05-12 08:51:36'),(1931,'2019-04-09 13:59:32',11.00,8,0,'I','root@localhost','2019-05-12 08:51:37'),(1932,'2019-04-09 13:59:32',30.00,9,0,'I','root@localhost','2019-05-12 08:51:38'),(1933,'2019-04-09 13:59:32',30.00,10,0,'I','root@localhost','2019-05-12 08:51:39'),(1934,'2019-04-09 13:59:32',40.00,11,0,'I','root@localhost','2019-05-12 08:51:39');
/*!40000 ALTER TABLE `medicoestemperatura_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sistema`
--

DROP TABLE IF EXISTS `sistema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sistema` (
  `LimiteInferiorTemperatura` decimal(8,2) NOT NULL,
  `LimiteSuperiorTemperatura` decimal(8,2) NOT NULL,
  `LimiteInferiorLuz` decimal(8,2) NOT NULL,
  `LimiteSuperiorLuz` decimal(8,2) NOT NULL,
  `multiplicadorTemperatura` int(11) NOT NULL,
  `multiplicadorLuz` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sistema`
--

LOCK TABLES `sistema` WRITE;
/*!40000 ALTER TABLE `sistema` DISABLE KEYS */;
INSERT INTO `sistema` VALUES (10.00,40.00,1000.00,4000.00,10,1000);
/*!40000 ALTER TABLE `sistema` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `sistema_AFTER_INSERT` AFTER INSERT ON `sistema` FOR EACH ROW BEGIN
	insert into sistema_log(
							LimiteInferiorTemperatura_OLD, 
                            LimiteInferiorTemperatura_NEW, 
                            LimiteSuperiorTemperatura_OLD, 
                            LimiteSuperiorTemperatura_NEW, 
                            LimiteInferiorLuz_OLD, 
                            LimiteInferiorLuz_NEW, 
                            LimiteSuperiorLuz_OLD, 
                            LimiteSuperiorLuz_NEW, 
                            Operacao, 
                            Utilizador, 
                            DataHora
                            )
	values (
				null,
                new.LimiteInferiorTemperatura,
                null,
                new.LimiteSuperiorTemperatura,
                null,
                new.LimiteInferiorLuz,
                null,
                new.LimiteSuperiorLuz,
                'I',
                current_user(),
                now()
                );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `sistema_AFTER_UPDATE` AFTER UPDATE ON `sistema` FOR EACH ROW BEGIN
	insert into sistema_log(
							LimiteInferiorTemperatura_OLD, 
                            LimiteInferiorTemperatura_NEW, 
                            LimiteSuperiorTemperatura_OLD, 
                            LimiteSuperiorTemperatura_NEW, 
                            LimiteInferiorLuz_OLD, 
                            LimiteInferiorLuz_NEW, 
                            LimiteSuperiorLuz_OLD, 
                            LimiteSuperiorLuz_NEW, 
                            Operacao, 
                            Utilizador, 
                            DataHora
                            )
	values (
			old.LimiteInferiorTemperatura,
            case 
				when old.LimiteInferiorTemperatura <> new.LimiteInferiorTemperatura then new.LimiteInferiorTemperatura
                else null
			end,
            old.LimiteSuperiorTemperatura,
            case 
				when old.LimiteSuperiorTemperatura <> new.LimiteSuperiorTemperatura then new.LimiteSuperiorTemperatura
                else null
			end,
            old.LimiteInferiorLuz,
            case
				when old.LimiteInferiorLuz <> new.LimiteInferiorLuz then new.LimiteInferiorLuz
                else null
			end,
            old.LimiteSuperiorLuz,
            case
				when old.LimiteSuperiorLuz <> new.LimiteSuperiorLuz then new.LimiteSuperiorLuz
                else null
			end,
            'U',
            current_user(),
            now()
            );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `sistema_AFTER_DELETE` AFTER DELETE ON `sistema` FOR EACH ROW BEGIN
	insert into sistema_log(
							LimiteInferiorTemperatura_OLD, 
                            LimiteInferiorTemperatura_NEW, 
                            LimiteSuperiorTemperatura_OLD, 
                            LimiteSuperiorTemperatura_NEW, 
                            LimiteInferiorLuz_OLD, 
                            LimiteInferiorLuz_NEW, 
                            LimiteSuperiorLuz_OLD, 
                            LimiteSuperiorLuz_NEW, 
                            Operacao, 
                            Utilizador, 
                            DataHora
                            )
	values (
				old.LimiteInferiorTemperatura,
                null,
                old.LimiteSuperiorTemperatura,
                null,
                old.LimiteInferiorLuz,
                null,
                old.LimiteSuperiorLuz,
                null,
                'D',
                current_user(),
                now()
                );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sistema_log`
--

DROP TABLE IF EXISTS `sistema_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sistema_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LimiteInferiorTemperatura_OLD` decimal(8,2) DEFAULT NULL,
  `LimiteInferiorTemperatura_NEW` decimal(8,2) DEFAULT NULL,
  `LimiteSuperiorTemperatura_OLD` decimal(8,2) DEFAULT NULL,
  `LimiteSuperiorTemperatura_NEW` decimal(8,2) DEFAULT NULL,
  `LimiteInferiorLuz_OLD` decimal(8,2) DEFAULT NULL,
  `LimiteInferiorLuz_NEW` decimal(8,2) DEFAULT NULL,
  `LimiteSuperiorLuz_OLD` decimal(8,2) DEFAULT NULL,
  `LimiteSuperiorLuz_NEW` decimal(8,2) DEFAULT NULL,
  `Flag_Migracao` tinyint(4) NOT NULL DEFAULT '0',
  `Operacao` varchar(20) NOT NULL,
  `Utilizador` varchar(45) NOT NULL,
  `DataHora` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sistema_log`
--

LOCK TABLES `sistema_log` WRITE;
/*!40000 ALTER TABLE `sistema_log` DISABLE KEYS */;
INSERT INTO `sistema_log` VALUES (1,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(2,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(3,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(4,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(5,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(6,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(7,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(8,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(9,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(10,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(11,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(12,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(13,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(14,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(15,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(16,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(17,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(18,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(19,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(20,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(21,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(22,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(23,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(24,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(25,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(26,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(27,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(28,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(29,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(30,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(31,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(32,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(33,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(34,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(35,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(36,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(37,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(38,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(39,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(40,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(41,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(42,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(43,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(44,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(45,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(46,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(47,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(48,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(49,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(50,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(51,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(52,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(53,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(54,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(55,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(56,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(57,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(58,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(59,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(60,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(61,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(62,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(63,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(64,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(65,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(66,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(67,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(68,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(69,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(70,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(71,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(72,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(73,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(74,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(75,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(76,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(77,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(78,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(79,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(80,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(81,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(82,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(83,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(84,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(85,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(86,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(87,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(88,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(89,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(90,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(91,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(92,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(93,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(94,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(95,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(96,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(97,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(98,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(99,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(100,10.00,15.00,40.00,35.00,10.00,15.00,40.00,35.00,1,'U','root@localhost','0000-00-00 00:00:00'),(101,NULL,10.00,NULL,40.00,NULL,1000.00,NULL,4000.00,0,'I','root@localhost','2019-05-01 13:52:47'),(102,10.00,NULL,40.00,NULL,1000.00,NULL,4000.00,NULL,0,'U','root@localhost','2019-05-06 00:12:25'),(103,10.00,NULL,40.00,NULL,1000.00,NULL,4000.00,NULL,0,'U','root@localhost','2019-05-06 00:43:24'),(104,10.00,NULL,40.00,NULL,1000.00,NULL,4000.00,NULL,0,'U','root@localhost','2019-05-11 17:01:01'),(105,10.00,NULL,40.00,NULL,1000.00,NULL,4000.00,NULL,0,'U','root@localhost','2019-05-11 17:01:13'),(106,10.00,NULL,40.00,NULL,1000.00,NULL,4000.00,NULL,0,'U','root@localhost','2019-05-11 17:01:15');
/*!40000 ALTER TABLE `sistema_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variaveis`
--

DROP TABLE IF EXISTS `variaveis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `variaveis` (
  `IDVariavel` int(11) NOT NULL,
  `NomeVariavel` varchar(45) NOT NULL,
  PRIMARY KEY (`IDVariavel`),
  UNIQUE KEY `IDVariavel_UNIQUE` (`IDVariavel`),
  UNIQUE KEY `NomeVariavel_UNIQUE` (`NomeVariavel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variaveis`
--

LOCK TABLES `variaveis` WRITE;
/*!40000 ALTER TABLE `variaveis` DISABLE KEYS */;
INSERT INTO `variaveis` VALUES (1,'Variavel de Teste'),(2,'Variavel de Teste 2'),(3,'Variavel de Teste 3');
/*!40000 ALTER TABLE `variaveis` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `variaveis_AFTER_INSERT` AFTER INSERT ON `variaveis` FOR EACH ROW BEGIN
	insert into variaveis_log (
								IDVariavel_OLD, 
                                IDVariavel_NEW, 
                                NomeVariavel_OLD, 
                                NomeVariavel_NEW, 
                                Operacao, 
                                Utilizador, 
                                DataHora
                                )
	values(
			null,
            new.idvariavel,
            null,
            new.nomevariavel,
            'I',
            current_user(),
            now()
            );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `db_mysql_origem`.`variaveis_AFTER_UPDATE` AFTER UPDATE ON `variaveis` FOR EACH ROW
BEGIN
	insert into variaveis_log (
								IDVariavel_OLD, 
                                IDVariavel_NEW, 
                                NomeVariavel_OLD, 
                                NomeVariavel_NEW, 
                                Operacao, 
                                Utilizador, 
                                DataHora
							)
	values (
				old.idvariavel,
				case
					when old.idvariavel <> new.idvariavel then new.idvariavel
                    else null
				end,
                old.nomevariavel,
                case
					when old.nomevariavel <> new.nomevariavel then new.nomevariavel
					else null
				end,
                'U',
                current_user(),
                now()
                );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `db_mysql_origem`.`variaveis_AFTER_DELETE` AFTER DELETE ON `variaveis` FOR EACH ROW
BEGIN
	insert into variaveis_log (
								IDVariavel_OLD, 
                                IDVariavel_NEW, 
                                NomeVariavel_OLD, 
                                NomeVariavel_NEW, 
                                Operacao, 
                                Utilizador, 
                                DataHora
                                )
	values(
			old.idvariavel,
            null,
            old.nomevariavel,
            null,
            'D',
            current_user(),
            now()
            );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `variaveis_log`
--

DROP TABLE IF EXISTS `variaveis_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `variaveis_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDVariavel_OLD` int(11) DEFAULT NULL,
  `IDVariavel_NEW` int(11) DEFAULT NULL,
  `NomeVariavel_OLD` varchar(100) DEFAULT NULL,
  `NomeVariavel_NEW` varchar(100) DEFAULT NULL,
  `Flag_Migracao` tinyint(4) NOT NULL DEFAULT '0',
  `Operacao` varchar(20) NOT NULL,
  `Utilizador` varchar(45) NOT NULL,
  `DataHora` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variaveis_log`
--

LOCK TABLES `variaveis_log` WRITE;
/*!40000 ALTER TABLE `variaveis_log` DISABLE KEYS */;
INSERT INTO `variaveis_log` VALUES (1,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(2,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(3,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(4,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(5,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(6,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(7,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(8,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(9,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(10,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(11,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(12,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(13,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(14,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(15,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(16,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(17,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(18,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(19,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(20,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(21,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(22,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(23,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(24,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(25,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(26,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(27,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(28,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(29,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(30,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(31,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(32,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(33,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(34,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(35,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(36,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(37,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(38,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(39,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(40,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(41,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(42,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(43,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(44,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(45,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(46,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(47,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(48,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(49,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(50,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(51,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(52,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(53,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(54,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(55,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(56,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(57,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(58,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(59,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(60,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(61,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(62,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(63,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(64,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(65,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(66,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(67,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(68,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(69,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(70,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(71,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(72,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(73,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(74,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(75,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(76,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(77,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(78,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(79,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(80,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(81,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(82,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(83,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(84,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(85,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(86,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(87,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(88,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(89,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(90,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(91,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(92,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(93,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(94,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(95,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(96,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(97,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(98,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(99,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00'),(100,1,2,'VarA','VarB',1,'U','root@localhost','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `variaveis_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variaveismedidas`
--

DROP TABLE IF EXISTS `variaveismedidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `variaveismedidas` (
  `IDVariavel_Variaveis` int(11) NOT NULL,
  `IDCultura_Cultura` int(11) NOT NULL,
  `LimiteInferior` decimal(8,2) NOT NULL,
  `LimiteSuperior` decimal(8,2) NOT NULL,
  PRIMARY KEY (`IDVariavel_Variaveis`,`IDCultura_Cultura`),
  KEY `IDVariável_Variáveis_idx` (`IDVariavel_Variaveis`),
  KEY `IDCultura_Cultura_idx` (`IDCultura_Cultura`),
  CONSTRAINT `IDCultura_Cultura` FOREIGN KEY (`IDCultura_Cultura`) REFERENCES `cultura` (`IDCultura`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `IDVariável_Variáveis` FOREIGN KEY (`IDVariavel_Variaveis`) REFERENCES `variaveis` (`IDVariavel`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 KEY_BLOCK_SIZE=16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variaveismedidas`
--

LOCK TABLES `variaveismedidas` WRITE;
/*!40000 ALTER TABLE `variaveismedidas` DISABLE KEYS */;
INSERT INTO `variaveismedidas` VALUES (1,1,30.00,40.00),(1,2,30.00,40.00),(2,1,30.00,40.00),(2,2,30.00,40.00),(2,4,30.00,40.00),(3,6,10.00,50.00);
/*!40000 ALTER TABLE `variaveismedidas` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `variaveismedidas_AFTER_INSERT` AFTER INSERT ON `variaveismedidas` FOR EACH ROW BEGIN
	insert into variaveismedidas_log(
										LimiteInferior_OLD, 
                                        LimiteInferior_NEW, 
                                        LimiteSuperior_OLD, 
                                        LimiteSuperior_NEW, 
                                        IDVariavel_Variaveis_OLD, 
                                        IDVariavel_Variaveis_NEW, 
                                        IDCultura_Cultura_OLD, 
                                        IDCultura_Cultura_NEW, 
                                        Operacao, 
                                        Utilizador, 
                                        DataHora
										)
	values (
				null,
                new.LimiteInferior,
                null,
                new.LimiteSuperior,
                null,
                new.IDVariavel_Variaveis,
                null,
                new.IDCultura_Cultura,
                'I',
                current_user(),
                now()
                );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `db_mysql_origem`.`variaveismedidas_AFTER_UPDATE` AFTER UPDATE ON `variaveismedidas` FOR EACH ROW
BEGIN
	insert into variaveismedidas_log(
										LimiteInferior_OLD, 
                                        LimiteInferior_NEW, 
                                        LimiteSuperior_OLD, 
                                        LimiteSuperior_NEW, 
                                        IDVariavel_Variaveis_OLD, 
                                        IDVariavel_Variaveis_NEW, 
                                        IDCultura_Cultura_OLD, 
                                        IDCultura_Cultura_NEW, 
                                        Operacao, 
                                        Utilizador, 
                                        DataHora
										)
	values (
				old.LimiteInferior,
                case
					when old.LimiteInferior <> new.LimiteInferior then new.LimiteInferior
                    else null
				end,
                old.LimiteSuperior,
                case 
					when old.LimiteSuperior <> new.LimiteSuperior then new.LimiteSuperior
                    else null
				end,
                old.IDVariavel_Variaveis,
                case
					when old.IDVariavel_Variaveis <> new.IDVariavel_Variaveis then new.IDVariavel_Variaveis
                    else null
				end,
                old.IDCultura_Cultura,
                case 
					when old.IDCultura_Cultura <> new.IDCultura_Cultura then new.IDCultura_Cultura
                    else null
				end,
                'U',
                current_user(),
                now()
                );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `db_mysql_origem`.`variaveismedidas_AFTER_DELETE` AFTER DELETE ON `variaveismedidas` FOR EACH ROW
BEGIN
	insert into variaveismedidas_log (
										LimiteInferior_OLD, 
                                        LimiteInferior_NEW, 
                                        LimiteSuperior_OLD, 
                                        LimiteSuperior_NEW, 
                                        IDVariavel_Variaveis_OLD, 
                                        IDVariavel_Variaveis_NEW, 
                                        IDCultura_Cultura_OLD, 
                                        IDCultura_Cultura_NEW, 
                                        Operacao, 
                                        Utilizador, 
                                        DataHora
										)
	values (
				old.LimiteInferior,
                null,
                old.LimiteSuperior,
                null,
                old.IDVariavel_Variaveis,
                null,
                old.IDCultura_Cultura,
                null,
                'D',
                current_user(),
                now()
                );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `variaveismedidas_log`
--

DROP TABLE IF EXISTS `variaveismedidas_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `variaveismedidas_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LimiteInferior_OLD` decimal(8,2) DEFAULT NULL,
  `LimiteInferior_NEW` decimal(8,2) DEFAULT NULL,
  `LimiteSuperior_OLD` decimal(8,2) DEFAULT NULL,
  `LimiteSuperior_NEW` decimal(8,2) DEFAULT NULL,
  `IDVariavel_Variaveis_OLD` int(11) DEFAULT NULL,
  `IDVariavel_Variaveis_NEW` int(11) DEFAULT NULL,
  `IDCultura_Cultura_OLD` int(11) DEFAULT NULL,
  `IDCultura_Cultura_NEW` int(11) DEFAULT NULL,
  `Flag_Migracao` tinyint(4) NOT NULL DEFAULT '0',
  `Operacao` varchar(20) NOT NULL,
  `Utilizador` varchar(45) NOT NULL,
  `DataHora` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variaveismedidas_log`
--

LOCK TABLES `variaveismedidas_log` WRITE;
/*!40000 ALTER TABLE `variaveismedidas_log` DISABLE KEYS */;
INSERT INTO `variaveismedidas_log` VALUES (1,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(2,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(3,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(4,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(5,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(6,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(7,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(8,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(9,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(10,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(11,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(12,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(13,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(14,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(15,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(16,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(17,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(18,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(19,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(20,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(21,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(22,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(23,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(24,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(25,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(26,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(27,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(28,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(29,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(30,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(31,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(32,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(33,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(34,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(35,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(36,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(37,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(38,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(39,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(40,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(41,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(42,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(43,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(44,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(45,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(46,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(47,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(48,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(49,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(50,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(51,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(52,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(53,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(54,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(55,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(56,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(57,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(58,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(59,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(60,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(61,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(62,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(63,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(64,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(65,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(66,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(67,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(68,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(69,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(70,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(71,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(72,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(73,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(74,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(75,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(76,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(77,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(78,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(79,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(80,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(81,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(82,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(83,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(84,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(85,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(86,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(87,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(88,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(89,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(90,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(91,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(92,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(93,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(94,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(95,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(96,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(97,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(98,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(99,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(100,10.00,12.00,20.00,18.00,1,2,1,2,1,'U','root@localhost','0000-00-00 00:00:00'),(101,NULL,0.00,NULL,50.00,NULL,3,NULL,6,0,'I','root@localhost','2019-05-19 07:26:12'),(102,0.00,10.00,50.00,NULL,3,NULL,6,NULL,0,'U','root@localhost','2019-05-19 07:28:58');
/*!40000 ALTER TABLE `variaveismedidas_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_mysql_origem'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `Data_Store_Event` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8 */ ;;
/*!50003 SET character_set_results = utf8 */ ;;
/*!50003 SET collation_connection  = utf8_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `Data_Store_Event` ON SCHEDULE EVERY 120 MINUTE STARTS '2019-04-07 12:10:21' ON COMPLETION NOT PRESERVE ENABLE DO call exporta_consultados() */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'db_mysql_origem'
--
/*!50003 DROP PROCEDURE IF EXISTS `ChangePassword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ChangePassword`(IN `OLD_Password` TEXT, IN `NEW_Password` TEXT)
    SQL SECURITY INVOKER
BEGIN
	declare counter int(10);
    
    set counter = (select count(user) from mysql.user 
						where user = SUBSTRING(current_user(), 1, LOCATE('@', current_user()) - 1) and
							host = 'localhost' and
							password = password(OLD_Password) );
    
	
	if counter <> 0 then
									update mysql.user set password = password(NEW_Password)
										where user = SUBSTRING(current_user(), 1, LOCATE('@', current_user()) - 1) and
										host = 'localhost';
	else 
			SIGNAL SQLSTATE '45000' SET
			MESSAGE_TEXT = 'Please check your password, old password is wrong!';
	end if;
        
	flush privileges;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteInvestigador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deleteInvestigador`(IN email_SP varchar(50))
BEGIN
	declare nomeInvestigadorAux varchar(100);
	declare user_mysql varchar(100);

	Select nomeInvestigador into nomeInvestigadorAux from Investigador where email = email_SP;

	Delete from Investigador where email = email_SP;
    
	set user_mysql = (SUBSTRING(email_SP, 1, LOCATE('@', email_SP) - 1));
    
    set @exec_query = concat('Drop user ', user_mysql, '@localhost');
    prepare query from @exec_query;
    
	execute query;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_allfromtables_log` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_allfromtables_log`()
BEGIN
	delete FROM db_mysql_origem.cultura_log;
	delete FROM db_mysql_origem.investigador_log;
	delete FROM db_mysql_origem.medicoes_consultados_log;
	delete FROM db_mysql_origem.medicoes_log;
	delete FROM db_mysql_origem.medicoesluminosidade_log;
	delete FROM db_mysql_origem.medicoestemperatura_log;
	delete FROM db_mysql_origem.sistema_log;
	delete FROM db_mysql_origem.variaveis_log;
	delete FROM db_mysql_origem.variaveismedidas_log;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `exporta_consultados` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `exporta_consultados`()
BEGIN
	if ( (SELECT MIN(id) FROM medicoes_consultados_log WHERE Flag_Migracao = false) is not null)
		then set @command = 'select ID, IDMedicoes_LOG, NumeroMedicao, IDVariaveis_VariaveisMedidas, IDCultura_VariaveisMedidas, ValorMedicao, DataHoraMedicao, Operacao_LOG, Utilizador_LOG, DataHora_LOG from medicoes_consultados_log where ID>=(SELECT MIN(id) FROM medicoes_consultados_log WHERE Flag_Migracao =0)';
		set @command_dois =(select MIN(id) FROM medicoes_consultados_log where Flag_Migracao =0);
		set @nome_ficheiro = '.csv" FIELDS TERMINATED BY "," LINES TERMINATED BY "\n" ;';
		set @conc = concat (@command, ' into outfile "', "C:/xampp/mysql/data/db_mysql_destino/medicoes_consultados_log_", @command_dois, @nome_ficheiro);

		prepare q from @conc;
		execute q;

		update db_mysql_origem.medicoes_consultados_log set Flag_Migracao = 1 where Flag_Migracao = 0;
        
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `exporta_cultura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `exporta_cultura`()
BEGIN
	if ( (SELECT MIN(id) FROM cultura_log WHERE Flag_Migracao =0) is not null)
	then set @command = 'select ID, IDCultura_OLD, IDCultura_NEW, NomeCultura_OLD, NomeCultura_NEW, DescricaoCultura_OLD, DescricaoCultura_NEW, Email_Investigador_OLD, Email_Investigador_NEW, Operacao, Utilizador, DataHora from cultura_log where ID>=(SELECT MIN(id) FROM cultura_log WHERE Flag_Migracao =0)';
	set @command_dois =(select MIN(id) FROM cultura_log where Flag_Migracao =0);
	set @nome_ficheiro = '.csv" FIELDS TERMINATED BY "," LINES TERMINATED BY "\n" ;';
	set @conc = concat (@command, ' into outfile "', "C:/xampp/mysql/data/db_mysql_destino/cultura_log_", @command_dois, @nome_ficheiro);

	prepare q from @conc;
	execute q;

	update db_mysql_origem.cultura_log set Flag_Migracao = 1 where Flag_Migracao = 0;
	
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `exporta_imediato` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `exporta_imediato`()
BEGIN
	call exporta_consultados();
	call exporta_cultura();
	call exporta_investigador();
	call exporta_medicoes();
	call exporta_medicoesluminosidade();
	call exporta_medicoestemperatura();
	call exporta_variaveis();
	call exporta_variaviesmedidas();
    call exporta_sistema();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `exporta_investigador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `exporta_investigador`()
BEGIN
	if ( (SELECT MIN(id) FROM investigador_log WHERE Flag_Migracao =0) is not null)
		THEN set @command = 'select ID, Email_OLD, Email_NEW, NomeInvestigador_OLD, NomeInvestigador_NEW, CategoriaProfissional_OLD, CategoriaProfissional_NEW, Operacao, Utilizador, DataHora from investigador_log where ID>=(SELECT MIN(id) FROM investigador_log WHERE Flag_Migracao =0)';
		set @command_dois =(select MIN(id) FROM investigador_log where Flag_Migracao =0);
		set @nome_ficheiro = '.csv" FIELDS TERMINATED BY "," LINES TERMINATED BY "\n" ;';
		set @conc = concat (@command, ' into outfile "', "C:/xampp/mysql/data/db_mysql_destino/investigador_log_", @command_dois, @nome_ficheiro);

		prepare q from @conc;
		execute q;
    
		update db_mysql_origem.investigador_log set Flag_Migracao = 1 where Flag_Migracao = 0;
        
	end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `exporta_medicoes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `exporta_medicoes`()
BEGIN
	if ( (SELECT MIN(id) FROM medicoes_log WHERE Flag_Migracao =0) is not null)
		then set @command = 'select ID, NumeroMedicao_OLD, NumeroMedicao_NEW, DataHoraMedicao_OLD, DataHoraMedicao_NEW, ValorMedicao_OLD, ValorMedicao_NEW, IDVariaveis_VariaveisMedidas_OLD, IDVariaveis_VariaveisMedidas_NEW, IDCultura_VariaveisMedidas_OLD, IDCultura_VariaveisMedidas_NEW, Operacao, Utilizador, DataHora from medicoes_log where ID>=(SELECT MIN(id) FROM medicoes_log WHERE Flag_Migracao =0)';
		set @command_dois =(select MIN(id) FROM medicoes_log where Flag_Migracao =0);
		set @nome_ficheiro = '.csv" FIELDS TERMINATED BY "," LINES TERMINATED BY "\n" ;';
		set @conc = concat (@command, ' into outfile "', "C:/xampp/mysql/data/db_mysql_destino/medicoes_log_", @command_dois, @nome_ficheiro);

		prepare q from @conc;
		execute q;
        
        update db_mysql_origem.medicoes_log set Flag_Migracao = 1 where Flag_Migracao = 0;

	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `exporta_medicoesluminosidade` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `exporta_medicoesluminosidade`()
BEGIN
	if ( (SELECT MIN(id) FROM medicoesluminosidade_log WHERE Flag_Migracao =0) is not null)
		then set @command = 'select ID, DataHoraMedicao_NEW, ValorMedicaoLuminosidade_NEW, IDMedicao_NEW, Operacao, Utilizador, DataHora from medicoesluminosidade_log where ID>=(SELECT MIN(id) FROM medicoesluminosidade_log WHERE Flag_Migracao =0)';
		set @command_dois =(select MIN(id) FROM medicoesluminosidade_log where Flag_Migracao =0);
		set @nome_ficheiro = '.csv" FIELDS TERMINATED BY "," LINES TERMINATED BY "\n" ;';
		set @conc = concat (@command, ' into outfile "', "C:/xampp/mysql/data/db_mysql_destino/medicoesluminosidade_log_", @command_dois, @nome_ficheiro);

		prepare q from @conc;
		execute q;
    
		update db_mysql_origem.medicoesluminosidade_log set Flag_Migracao = 1 where Flag_Migracao = 0;

	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `exporta_medicoestemperatura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `exporta_medicoestemperatura`()
BEGIN
	if ( (SELECT MIN(id) FROM medicoestemperatura_log WHERE Flag_Migracao =0) is not null)
		then set @command = 'select ID, DataHoraMedicao_NEW, ValorMedicaoTemperatura_NEW, IDMedicao_NEW, Operacao, Utilizador, DataHora from medicoestemperatura_log where ID>=(SELECT MIN(id) FROM medicoestemperatura_log WHERE Flag_Migracao =0)';
		set @command_dois =(select MIN(id) FROM medicoestemperatura_log where Flag_Migracao = 0);
		set @nome_ficheiro = '.csv" FIELDS TERMINATED BY "," LINES TERMINATED BY "\n" ;';
		set @conc = concat (@command, ' into outfile "', "C:/xampp/mysql/data/db_mysql_destino/medicoestemperatura_log_", @command_dois, @nome_ficheiro);

		prepare q from @conc;
		execute q;

		update db_mysql_origem.medicoestemperatura_log set Flag_Migracao = 1 where Flag_Migracao = 0;
		
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `exporta_sistema` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `exporta_sistema`()
BEGIN
	if ( (SELECT MIN(id) FROM sistema_log WHERE Flag_Migracao = false) is not null)
		then set @command = 'select ID, LimiteInferiorTemperatura_OLD, LimiteInferiorTemperatura_NEW, LimiteSuperiorTemperatura_OLD, LimiteSuperiorTemperatura_NEW, LimiteInferiorLuz_OLD, LimiteInferiorLuz_NEW, LimiteSuperiorLuz_OLD, LimiteSuperiorLuz_NEW, Operacao, Utilizador, DataHora from sistema_log where ID>=(SELECT MIN(id) FROM sistema_log WHERE Flag_Migracao =0)';
		set @command_dois =(select MIN(id) FROM sistema_log where Flag_Migracao =0);
		set @nome_ficheiro = '.csv" FIELDS TERMINATED BY "," LINES TERMINATED BY "\n" ;';
		set @conc = concat (@command, ' into outfile "', "C:/xampp/mysql/data/db_mysql_destino/sistema_log_", @command_dois, @nome_ficheiro);

		prepare q from @conc;
		execute q;

		update db_mysql_origem.sistema_log set Flag_Migracao = 1 where Flag_Migracao = 0;
        
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `exporta_variaveis` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `exporta_variaveis`()
BEGIN
	if ( (SELECT MIN(id) FROM variaveis_log WHERE Flag_Migracao =0) is not null)
		then set @command = 'SELECT ID, IDVariavel_OLD, IDVariavel_NEW, NomeVariavel_OLD, NomeVariavel_NEW, Operacao, Utilizador, DataHora from variaveis_log where ID>=(SELECT MIN(id) FROM variaveis_log WHERE Flag_Migracao =0)';
		set @command_dois =(select MIN(id) FROM variaveis_log where Flag_Migracao =0);
		set @nome_ficheiro = '.csv" FIELDS TERMINATED BY "," LINES TERMINATED BY "\n" ;';
		set @conc = concat (@command, ' into outfile "', "C:/xampp/mysql/data/db_mysql_destino/variaveis_log_", @command_dois, @nome_ficheiro);

		prepare q from @conc;
		execute q;
		
        update db_mysql_origem.variaveis_log set Flag_Migracao = 1 where Flag_Migracao = 0;
		
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `exporta_variaviesmedidas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `exporta_variaviesmedidas`()
BEGIN
	if ( (SELECT MIN(id) FROM variaveismedidas_log WHERE Flag_Migracao =0) is not null)
		then set @command = 'SELECT ID, LimiteInferior_OLD, LimiteInferior_NEW, LimiteSuperior_OLD, LimiteSuperior_NEW, IDVariavel_Variaveis_OLD, IDVariavel_Variaveis_NEW, IDCultura_Cultura_OLD, IDCultura_Cultura_NEW, Operacao, Utilizador, DataHora FROM variaveismedidas_log WHERE ID >= (SELECT MIN(id) FROM variaveismedidas_log WHERE Flag_Migracao = 0)';
		set @command_dois =(select MIN(id) FROM variaveismedidas_log where Flag_Migracao =0);
		set @nome_ficheiro = '.csv" FIELDS TERMINATED BY "," LINES TERMINATED BY "\n" ;';
		set @conc = concat (@command, ' into outfile "', "C:/xampp/mysql/data/db_mysql_destino/variaveismedidas_log_", @command_dois, @nome_ficheiro);

		prepare q from @conc;
		execute q;
		
		update db_mysql_origem.variaveismedidas_log set Flag_Migracao = 1 where Flag_Migracao = 0;

	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ImportFiles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ImportFiles`()
BEGIN
declare investigador integer;
	declare cultura integer;
	declare medicoes integer;
	declare medicoesLuminosidade integer;
	declare medicoesTemperatura integer;
	declare medicoesConsulta integer;	
	declare variaveis integer;
	declare variaveisMedicao integer;
	declare sistema integer;

	set investigador = ((select count(*) from db_mysql_destino.investigador_log)+1);
	set cultura = ((select count(*) from db_mysql_destino.cultura_log)+1);
	set medicoes = ((select count(*) from db_mysql_destino.medicoes_log)+1);
	set medicoesLuminosidade = ((select count(*) from db_mysql_destino.medicoesluminosidade_log)+1);
	set medicoesTemperatura = ((select count(*) from db_mysql_destino.medicoestemperatura_log)+1);
	set medicoesConsulta = ((select count(*) from db_mysql_destino.medicoes_consultados_log)+1);
	set variaveis = ((select count(*) from db_mysql_destino.variaveis_log)+1);
	set variaveisMedicao = ((select count(*) from db_mysql_destino.variaveismedidas_log)+1);
	set sistema = ((select count(*) from db_mysql_destino.sistema_log)+1);	

	#exec master..xp_cmdshell 'D:\xampp\importFiles.bat' 
	#exec(' xp_cmdshell ''D:\xampp\importFiles.bat '+@investigador+' '+@cultura+' '+@medicoes+' '+@medicoesLuminosidade+' '+@medicoesTemperatura+' '+@medicoesConsulta+' '+@variaveis+' '+@variaveisMedicao+' '+@sistema+'''');
            
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InserirInvestigador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InserirInvestigador`(IN email_SP varchar(50), IN pass_SP varchar(50), IN nomeinvestigador_SP varchar(100), IN categoriaprofissional_SP varchar(300))
BEGIN
	declare username varchar(50);
    
	if email_SP not like '%@%' 
		then signal sqlstate '45000' set message_text = 'Por favor, introduza um email válido!'; 
    else
		set username = (SUBSTRING(email_SP, 1, LOCATE('@', email_SP) - 1));
		set @exec_querry = concat('CREATE USER \'', username, '\'@\'localhost\' ', 'IDENTIFIED BY  \'', pass_SP, '\'');
        prepare query from @exec_querry;
        execute query;
        
		set @exec_querry = concat('grant select, update, insert on db_mysql_origem.cultura to \'', username, '\'@\'localhost\'');
        prepare query from @exec_querry;
        execute query;
        set @exec_querry = concat('grant select on db_mysql_origem.variaveis to \'', username, '\'@\'localhost\'');
        prepare query from @exec_querry;
        execute query;
        set @exec_querry = concat('grant select, update, insert on db_mysql_origem.variaveismedidas to \'', username, '\'@\'localhost\'');
        prepare query from @exec_querry;
        execute query;
        set @exec_querry = concat('grant select, update, insert on db_mysql_origem.medicoes to \'', username, '\'@\'localhost\'');
        prepare query from @exec_querry;
        execute query;
        set @exec_querry = concat('grant select on db_mysql_origem.medicoesluminosidade to \'', username, '\'@\'localhost\'');
        prepare query from @exec_querry;
        execute query;
        set @exec_querry = concat('grant select on db_mysql_origem.medicoestemperatura to \'', username, '\'@\'localhost\'');
        prepare query from @exec_querry;
        execute query;
        set @exec_querry = concat('grant select on db_mysql_origem.sistema to \'', username, '\'@\'localhost\'');
        prepare query from @exec_querry;
        execute query;
        
        insert into investigador(Email, NomeInvestigador, CategoriaProfissional) values(email_SP, nomeinvestigador_SP, categoriaprofissional_SP);
    end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_Luminosidade` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Luminosidade`(
IN ValorLum_IN TEXT, IN Data_IN TEXT, IN Hora_IN TEXT
)
BEGIN

/** Declaração de variáveis **/

declare limiteinf_sistema int;
declare limitesup_sistema int;
declare limiteinf_compercent int;
declare limitesup_compercent int;
declare ID_medicoesluminosidade INT;
declare ID_alertas INT;
declare ID_sinalizadas INT;
declare isfirstrecord INT;
declare valorlum decimal(8,2);

declare multiplicador int;

declare count_tres_consecutivos int;

/** Inicialização de variáveis **/

select convert(ValorLum_IN, decimal(8,2)) into valorlum;

select (case when max(IDMedicao) is null then 1 else max(IDMedicao) + 1 end) into ID_medicoesluminosidade from medicoesluminosidade;
select (case when max(IDAlerta) is null then 1 else max(IDAlerta) + 1 end) into ID_alertas from alertas;
select (case when max(ID) is null then 1 else max(ID) + 1 end) into ID_sinalizadas from medicoes_sinalizadas;

select LimiteInferiorLuz into limiteinf_sistema from sistema;
select LimiteSuperiorLuz into limitesup_sistema from sistema;

set limiteinf_compercent = 0;
set limitesup_compercent = 0;
set multiplicador = 1000;

/** Validação das condições para criação de alertas **/

select count(*) into count_tres_consecutivos from medicoes_sinalizadas a
where exists (select b.IDMedicao_lum from medicoes_sinalizadas b 
		where a.IDMedicao_lum = b.IDMedicao_lum and b.Flag_Sinalizado = 1 
        having b.IDMedicao_lum = (ID_medicoesluminosidade - 1) or b.IDMedicao_lum = (ID_medicoesluminosidade - 2) or b.IDMedicao_lum = (ID_medicoesluminosidade - 3));
        
select distinct (case 
			when valorlum <  limiteinf_sistema + (valor_min_tmp * multiplicador) then 1
			else 0
		end) result into limiteinf_compercent
from limites_percent_config
where (case when valorlum < limiteinf_sistema + (valor_min_tmp * multiplicador) then 1 else 0 end) = 1;

select distinct (case 
			when valorlum > limitesup_sistema - (valor_max_tmp * multiplicador) then 1
			else 0
		end) result into limitesup_compercent
from limites_percent_config
where (case when valorlum > limitesup_sistema - (valor_max_tmp * multiplicador) then 1 else 0 end) = 1;

/** Insert na tabela de medições  **/

insert into medicoesluminosidade values (
	ID_medicoesluminosidade,
    valorlum,
    timestamp(concat(Data_IN, " ", Hora_IN))
    );
    
        
/** Criação de alertas **/

/* alerta inferior */

if (limiteinf_compercent = 1 and count_tres_consecutivos >= 3)
		then 
            insert into alertas values (
				ID_alertas,
                null,
                ID_medicoesluminosidade,
                null,
				'Luminosidade',
				 valorlum,
				 limiteinf_sistema,
				 limitesup_sistema,
				 'Limite Inferior foi ultrapassado ou está próximo de ser ultrapassado',
				 timestamp(concat(Data_IN, " ", Hora_IN)));
			insert into medicoes_sinalizadas values (
				  ID_sinalizadas,
                  null,
                  ID_medicoesluminosidade,
                  null,
                  ID_alertas,
                  0,
                  1,
                  now()
			);
elseif (limiteinf_compercent = 1 and count_tres_consecutivos < 3)
	then 
			insert into medicoes_sinalizadas values (
				  ID_sinalizadas,
                  null,
                  ID_medicoesluminosidade,
                  null,
                  null,
                  1,
                  0,
                  now()
			);
end if; 


/* alerta superior */

if (limitesup_compercent = 1 and count_tres_consecutivos >= 3)
		then 
            insert into alertas values (
				ID_alertas,
                null,
                ID_medicoesluminosidade,
                null,
				'Luminosidade',
				 valorlum,
				 limiteinf_sistema,
				 limitesup_sistema,
				 'Limite Superior foi ultrapassado ou está próximo de ser ultrapassado',
				 timestamp(concat(Data_IN, " ", Hora_IN)));
			insert into medicoes_sinalizadas values (
				  ID_sinalizadas,
                  null,
                  ID_medicoesluminosidade,
                  null,
                  ID_alertas,
                  0,
                  1,
                  now()
			);
elseif (limitesup_compercent = 1 and count_tres_consecutivos < 3)
	then 
			insert into medicoes_sinalizadas values (
				  ID_sinalizadas,
                  null,
                  ID_medicoesluminosidade,
                  null,
                  null,
                  1,
                  0,
                  now()
			);
end if;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_Luminosidade_v3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Luminosidade_v3`(
IN valor_IN TEXT, IN Data_IN TEXT, IN Hora_IN TEXT
)
BEGIN

/* declarações de variáveis */

declare multiplicador int;

declare valor decimal(8,2);
declare data_hora_sensor timestamp;

declare ID_medicoesluminosidade INT;
declare ID_sinalizadas INT;
declare ID_alertas INT;

declare limiteinf_sistema int;
declare limitesup_sistema int;

declare limiteinf_sistema_ultrapassado int;
declare limitesup_sistema_ultrapassado int;

declare limiteinf_compercent_ultrapassado int;
declare limitesup_compercent_ultrapassado int;

declare alerta_ja_criado int;

declare anterior_nao_alertado int;
declare nunca_alertado int;



/* set de variáveis */

set limiteinf_compercent_ultrapassado = 0;
set limitesup_compercent_ultrapassado = 0;

select convert(valor_IN, decimal(8,2)) into valor;
select timestamp(concat(Data_IN, " ", Hora_IN)) into data_hora_sensor;

select (case when max(IDMedicao) is null then 1 else max(IDMedicao) + 1 end) into ID_medicoesluminosidade from medicoesluminosidade;
select (case when max(ID) is null then 1 else max(ID) + 1 end) into ID_sinalizadas from medicoes_sinalizadas;
select (case when max(IDAlerta) is null then 1 else max(IDAlerta) + 1 end) into ID_alertas from alertas;

select LimiteInferiorLuz into limiteinf_sistema from sistema;
select LimiteSuperiorLuz into limitesup_sistema from sistema;

select multiplicadorLuz into multiplicador from sistema;

/* Validação se é limite superior ou inferior */

select result into limiteinf_compercent_ultrapassado from (
	select distinct (case when valor <  limiteinf_sistema + (valor_min_lum * multiplicador) then 1 else 0 end) result
	from limites_percent_config
) HDR
where HDR.result = 1;

select result into limitesup_compercent_ultrapassado from (
	select distinct (case when valor > limitesup_sistema - (valor_max_lum * multiplicador) then 1 else 0 end) result 
	from limites_percent_config
) HDR
where HDR.result = 1;

select (case when valor < limiteinf_sistema then 1
			else 0 end) result into limiteinf_sistema_ultrapassado;

select (case when valor > limitesup_sistema then 1
			else 0 end) result into limitesup_sistema_ultrapassado;


select count(*) into alerta_ja_criado from medicoes_sinalizadas
inner join limites_percent_config on limites_percent_config.Email_Investigador = medicoes_sinalizadas.Email_Investigador
inner join medicoesluminosidade on IDMedicao_Lum = IDMedicao
where medicoes_sinalizadas.DataHora between date_sub(now(), interval limites_percent_config.tempo_alerta second) and now()
and Flag_Alertado = 1;

select count(*) into anterior_nao_alertado from medicoes_sinalizadas
inner join limites_percent_config on limites_percent_config.Email_Investigador = medicoes_sinalizadas.Email_Investigador
inner join medicoesluminosidade on IDMedicao_Lum = IDMedicao
where medicoes_sinalizadas.IDMedicao_Lum in (select max(IDMedicao_Lum) from medicoes_sinalizadas)
and medicoes_sinalizadas.Flag_Sinalizado = 0 and medicoes_sinalizadas.Flag_Alertado = 0;
        
select count(*) into nunca_alertado from medicoes_sinalizadas where medicoes_sinalizadas.Flag_Alertado = 1;

/** Insert na tabela de medições  **/

insert into medicoesluminosidade values (
	ID_medicoesluminosidade,
    valor,
    data_hora_sensor
    );


/** Insert na tabela de sinalizados **/


if(limitesup_compercent_ultrapassado = 1 or limiteinf_compercent_ultrapassado = 1)
then
	insert into medicoes_sinalizadas (IDMedicao_Temp, IDMedicao_Lum, IDMedicao_Cultura, IDAlerta, Email_Investigador, Flag_Sinalizado, Flag_Alertado, DataHora) (
			select 
			null, 
			ID_medicoesluminosidade, 
			null, 
			null,
            limites_percent_config.Email_Investigador,
			1, 
			0, 
			now() 
			from limites_percent_config
            where valor < (limiteinf_sistema + (valor_min_lum * multiplicador))
            or valor > (limitesup_sistema - (valor_max_lum * multiplicador))
    );
else
	insert into medicoes_sinalizadas (IDMedicao_Temp, IDMedicao_Lum, IDMedicao, IDAlerta, Email_Investigador, Flag_Sinalizado, Flag_Alertado, DataHora) (
			select
			null , 
			ID_medicoesluminosidade , 
			null , 
			null ,
            limites_percent_config.Email_Investigador Email_Investigador ,
			0, 
			0, 
			now()
            from limites_percent_config
    );

end if;
	

/** Insert na tabela de alertas **/

/* limite inferior */


if(limiteinf_sistema_ultrapassado = 1 and limiteinf_compercent_ultrapassado = 1 /*and alerta_ja_criado = 0*/)
then 

	insert into alertas (IDMedicao_Temp, IDMedicao_Lum, IDMedicao_Cultura, ID_Cultura, Email_Investigador, NomeVariavel, ValorMedicao, LimiteInferior, LimiteSuperior, Descricao, DataHora) (
		select 
			null , 
			ID_medicoesluminosidade, 
			null, 
			null,
			medicoes_sinalizadas.Email_Investigador, 
			'Luminosidade',
			valor,
			limiteinf_sistema,
			limitesup_sistema,
			'Limite Inferior foi ultrapassado',
			data_hora_sensor
			from medicoes_sinalizadas
			left join limites_percent_config on limites_percent_config.Email_Investigador = medicoes_sinalizadas.Email_Investigador
			left join medicoesluminosidade on IDMedicao_Lum = IDMedicao
			where medicoes_sinalizadas.Email_Investigador not in (
							select distinct medicoes_sinalizadas.Email_Investigador from medicoes_sinalizadas
							left join limites_percent_config on limites_percent_config.Email_Investigador = medicoes_sinalizadas.Email_Investigador
							left join medicoesluminosidade on IDMedicao_Lum = IDMedicao
							where medicoes_sinalizadas.DataHora between date_sub(now(), interval limites_percent_config.tempo_alerta second) and now()
							and medicoes_sinalizadas.Flag_Alertado = 1
							group by medicoes_sinalizadas.IDMedicao_Lum , medicoes_sinalizadas.Email_Investigador
							having count(medicoes_sinalizadas.Flag_Sinalizado = 1) > (count(*) / 2)
							)
			-- and medicoes_sinalizadas.DataHora between date_sub(now(), interval limites_percent_config.tempo_alerta second) and now()
			group by medicoes_sinalizadas.Email_Investigador
	);
    insert into medicoes_sinalizadas (IDMedicao_Temp, IDMedicao_Lum, IDMedicao_Cultura, IDAlerta, Email_Investigador, Flag_Sinalizado, Flag_Alertado, DataHora) (
			select
			null , 
			alertas.IDMedicao_Lum , 
			null , 
			alertas.IDAlerta ,
            alertas.Email_Investigador Email_Investigador ,
			0, 
			1, 
			now()
            from alertas
            where alertas.IDMedicao_Lum = ID_medicoesluminosidade
    );
    
end if;

if(limitesup_sistema_ultrapassado = 1 and limitesup_compercent_ultrapassado = 1)
then 
	insert into alertas (IDMedicao_Temp, IDMedicao_Lum, IDMedicao_Cultura, ID_Cultura, Email_Investigador, NomeVariavel, ValorMedicao, LimiteInferior, LimiteSuperior, Descricao, DataHora) (
		select 
			null,  
			ID_medicoesluminosidade, 
			null, 
			null,
			medicoes_sinalizadas.Email_Investigador, 
			'Luminosidade',
			valor,
			limiteinf_sistema,
			limitesup_sistema,
			'Limite Superior foi ultrapassado',
			data_hora_sensor
			from medicoes_sinalizadas
			left join limites_percent_config on limites_percent_config.Email_Investigador = medicoes_sinalizadas.Email_Investigador
			left join medicoesluminosidade on IDMedicao_Lum = IDMedicao
			where medicoes_sinalizadas.Email_Investigador not in (
							select distinct medicoes_sinalizadas.Email_Investigador from medicoes_sinalizadas
							left join limites_percent_config on limites_percent_config.Email_Investigador = medicoes_sinalizadas.Email_Investigador
							left join medicoesluminosidade on IDMedicao_Lum = IDMedicao
							where medicoes_sinalizadas.DataHora between date_sub(now(), interval limites_percent_config.tempo_alerta second) and now()
							and medicoes_sinalizadas.Flag_Alertado = 1
							group by medicoes_sinalizadas.IDMedicao_Lum , medicoes_sinalizadas.Email_Investigador
							having count(medicoes_sinalizadas.Flag_Sinalizado = 1) > (count(*) / 2)
							)
			-- and medicoes_sinalizadas.DataHora between date_sub(now(), interval limites_percent_config.tempo_alerta second) and now()
			group by medicoes_sinalizadas.Email_Investigador
	);
    insert into medicoes_sinalizadas (IDMedicao_Temp, IDMedicao_Lum, IDMedicao_Cultura, IDAlerta, Email_Investigador, Flag_Sinalizado, Flag_Alertado, DataHora) (
			select
			null , 
			alertas.IDMedicao_Lum ,  
			null , 
			alertas.IDAlerta ,
            alertas.Email_Investigador Email_Investigador ,
			0, 
			1, 
			now()
            from alertas
            where alertas.IDMedicao_Lum = ID_medicoesluminosidade
    );
end if;

/** falta pra o caso de limitesup_sistema_ultrapassado = 0 and limitesup_compercent_ultrapassado = 1 tanto para sup e inferior **/


if(limiteinf_sistema_ultrapassado = 0 and limiteinf_compercent_ultrapassado = 1)
then
		if(anterior_nao_alertado > 0 or nunca_alertado = 0)
		then
			insert into alertas (IDMedicao_Temp, IDMedicao_Lum, IDMedicao_Cultura, ID_Cultura, Email_Investigador, NomeVariavel, ValorMedicao, LimiteInferior, LimiteSuperior, Descricao, DataHora) (
			select 
				null, 
				ID_medicoesluminosidade, 
				null, 
				null,
				medicoes_sinalizadas.Email_Investigador, 
				'Luminosidade',
				valor,
				limiteinf_sistema,
				limitesup_sistema,
				'Limite Inferior está próximo de ser ultrapassado',
				data_hora_sensor
				from medicoes_sinalizadas
				left join limites_percent_config on limites_percent_config.Email_Investigador = medicoes_sinalizadas.Email_Investigador
				left join medicoesluminosidade on IDMedicao_Lum = IDMedicao
				where medicoes_sinalizadas.Email_Investigador not in (
								select distinct medicoes_sinalizadas.Email_Investigador from medicoes_sinalizadas
								left join limites_percent_config on limites_percent_config.Email_Investigador = medicoes_sinalizadas.Email_Investigador
								left join medicoesluminosidade on IDMedicao_Lum = IDMedicao
								where medicoes_sinalizadas.DataHora between date_sub(now(), interval limites_percent_config.tempo_alerta second) and now()
								and medicoes_sinalizadas.Flag_Alertado = 1
								group by medicoes_sinalizadas.IDMedicao_Lum , medicoes_sinalizadas.Email_Investigador
								having count(medicoes_sinalizadas.Flag_Sinalizado = 1) > (count(*) / 2)
								)
				-- and medicoes_sinalizadas.DataHora between date_sub(now(), interval limites_percent_config.tempo_alerta second) and now()
				group by medicoes_sinalizadas.Email_Investigador
			);
            insert into medicoes_sinalizadas (IDMedicao_Temp, IDMedicao_Lum, IDMedicao_Cultura, IDAlerta, Email_Investigador, Flag_Sinalizado, Flag_Alertado, DataHora) (
				select
				null , 
				alertas.IDMedicao_Lum , 
				null , 
				alertas.IDAlerta ,
				alertas.Email_Investigador Email_Investigador ,
				0, 
				1, 
				now()
				from alertas
				where alertas.IDMedicao_Lum = ID_medicoesluminosidade
			);    
		end if;
end if;


if(limitesup_sistema_ultrapassado = 0 and limitesup_compercent_ultrapassado = 1)
then        
		if(anterior_nao_alertado > 0  or nunca_alertado = 0)
		then
			insert into alertas (IDMedicao_Temp, IDMedicao_Lum, IDMedicao_Cultura, ID_Cultura, Email_Investigador, NomeVariavel, ValorMedicao, LimiteInferior, LimiteSuperior, Descricao, DataHora) (
			select 
				null, 
				ID_medicoesluminosidade, 
				null, 
				null,
				medicoes_sinalizadas.Email_Investigador, 
				'Luminosidade',
				valor,
				limiteinf_sistema,
				limitesup_sistema,
				'Limite Superior está próximo de ser ultrapassado',
				data_hora_sensor
				from medicoes_sinalizadas
				left join limites_percent_config on limites_percent_config.Email_Investigador = medicoes_sinalizadas.Email_Investigador
				left join medicoesluminosidade on IDMedicao_Lum = IDMedicao
				where medicoes_sinalizadas.Email_Investigador not in (
								select distinct medicoes_sinalizadas.Email_Investigador from medicoes_sinalizadas
								left join limites_percent_config on limites_percent_config.Email_Investigador = medicoes_sinalizadas.Email_Investigador
								left join medicoesluminosidade on IDMedicao_Lum = IDMedicao
								where medicoes_sinalizadas.DataHora between date_sub(now(), interval limites_percent_config.tempo_alerta second) and now()
								and medicoes_sinalizadas.Flag_Alertado = 1
								group by medicoes_sinalizadas.IDMedicao_Lum , medicoes_sinalizadas.Email_Investigador
								having count(medicoes_sinalizadas.Flag_Sinalizado = 1) > (count(*) / 2)
								)
				-- and medicoes_sinalizadas.DataHora between date_sub(now(), interval limites_percent_config.tempo_alerta second) and now()
				group by medicoes_sinalizadas.Email_Investigador
			);
            insert into medicoes_sinalizadas (IDMedicao_Temp, IDMedicao_Lum, IDMedicao_Cultura, IDAlerta, Email_Investigador, Flag_Sinalizado, Flag_Alertado, DataHora) (
				select
				null , 
				alertas.IDMedicao_Lum ,
				null , 
				alertas.IDAlerta ,
				alertas.Email_Investigador Email_Investigador ,
				0, 
				1, 
				now()
				from alertas
				where alertas.IDMedicao_Lum = ID_medicoesluminosidade
			);    
		end if;
end if;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_Medicao_v3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Medicao_v3`(
	IN Valor_IN decimal(8,2), IN IDVariaveis INT(11), IN IDCultura INT(11), IN DataHora_IN Timestamp
)
BEGIN

/***********************************************************/

declare valor decimal(8,2);

declare multiplicador int;

declare id_cultura int;
declare id_medicoes int;
declare nome_variavel varchar(45);

declare cultura_pertence_investigador int;

declare utrapassa_percent_inf int;
declare utrapassa_percent_sup int;

declare limite_if int;
declare limite_sup int;

declare email_sp varchar(50);


/***********************************************************/

set valor = Valor_IN;
set id_cultura = IDCultura;
set multiplicador = 10;

select count(*) into cultura_pertence_investigador from cultura
left join investigador on Email_Investigador = Email
where SUBSTRING(Email, 1, LOCATE('@', Email) - 1) like SUBSTRING(current_user(), 1, LOCATE('@', current_user()) - 1)
and IDCultura = id_cultura;

select Count(*) into utrapassa_percent_inf from variaveismedidas
left join cultura on variaveismedidas.IDCultura_Cultura = cultura.IDCultura
left join variaveis on variaveismedidas.IDVariavel_Variaveis = variaveis.IDVariavel
left join limites_percent_config on limites_percent_config.Email_Investigador = cultura.Email_Investigador
where SUBSTRING(limites_percent_config.Email_Investigador, 1, LOCATE('@', limites_percent_config.Email_Investigador) - 1) like SUBSTRING(current_user(), 1, LOCATE('@', current_user()) - 1)
and IDVariavel_Variaveis = IDVariaveis and IDCultura_Cultura = IDCultura
and valor <  LimiteInferior + (valor_min * multiplicador);

select Count(*) into utrapassa_percent_sup from variaveismedidas
left join cultura on variaveismedidas.IDCultura_Cultura = cultura.IDCultura
left join variaveis on variaveismedidas.IDVariavel_Variaveis = variaveis.IDVariavel
left join limites_percent_config on limites_percent_config.Email_Investigador = cultura.Email_Investigador
where SUBSTRING(limites_percent_config.Email_Investigador, 1, LOCATE('@', limites_percent_config.Email_Investigador) - 1) like SUBSTRING(current_user(), 1, LOCATE('@', current_user()) - 1)
and IDVariavel_Variaveis = IDVariaveis and IDCultura_Cultura = IDCultura
and valor > LimiteSuperior - (valor_max * multiplicador);

select max(NumeroMedicao) + 1 into id_medicoes from medicoes;

select Email into email_sp  from investigador where SUBSTRING(Email, 1, LOCATE('@', Email) - 1) like SUBSTRING(current_user(), 1, LOCATE('@', current_user()) - 1);

select NomeVariavel into nome_variavel from variaveis where IDVariavel = IDVariaveis;

select LimiteInferior into limite_if from variaveismedidas where IDVariavel_Variaveis = IDVariaveis and IDCultura_Cultura = IDCultura;
select LimiteSuperior into limite_sup from variaveismedidas where IDVariavel_Variaveis = IDVariaveis and IDCultura_Cultura = IDCultura;

-- select valor, id_cultura, cultura_pertence_investigador, utrapassa_percent_inf, utrapassa_percent_sup, email_sp, nome_variavel, limite_if, limite_sup;

/***********************************************************/

insert into medicoes values(
		id_medicoes,
        IDVariaveis,
        IDCultura,
        valor,
        DataHora_IN
        );

/***********************************************************/
-- select cultura_pertence_investigador, utrapassa_percent_inf, utrapassa_percent_sup;

if(cultura_pertence_investigador and utrapassa_percent_inf and utrapassa_percent_sup = 0)
then
    insert into alertas (IDMedicao_Temp, IDMedicao_Lum, IDMedicao_Cultura, ID_Cultura, Email_Investigador, NomeVariavel, ValorMedicao, LimiteInferior, LimiteSuperior, Descricao, DataHora)
    values(
		null,
        null,
        id_medicoes,
        id_cultura,
        email_sp,
        nome_variavel,
        valor,
        limite_if,
        limite_sup,
        'Limite Inferior foi ultrapassado',
        DataHora_IN
        );
	
    insert into medicoes_sinalizadas (IDMedicao_Temp, IDMedicao_Lum, IDMedicao_Cultura, IDAlerta, Email_Investigador, Flag_Sinalizado, Flag_Alertado, DataHora)
    select
		null,
        null,
        id_medicoes,
        max(alertas.IDAlerta),
        email_sp,
        0,
        1,
        DataHora_IN
	from alertas;
    
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Limite Inferior foi ultrapassado';
end if;

/***********************************************************/

if(cultura_pertence_investigador and utrapassa_percent_sup and utrapassa_percent_inf = 0)
then
    insert into alertas (IDMedicao_Temp, IDMedicao_Lum, IDMedicao_Cultura, ID_Cultura, Email_Investigador, NomeVariavel, ValorMedicao, LimiteInferior, LimiteSuperior, Descricao, DataHora)
    values(
		null,
        null,
        id_medicoes,
        id_cultura,
        email_sp,
        nome_variavel,
        valor,
        limite_if,
        limite_sup,
        'Limite Superior foi ultrapassado',
        DataHora_IN
        );
	
    insert into medicoes_sinalizadas (IDMedicao_Temp, IDMedicao_Lum, IDMedicao_Cultura, IDAlerta, Email_Investigador, Flag_Sinalizado, Flag_Alertado, DataHora)
    select
		null,
        null,
        id_medicoes,
        max(alertas.IDAlerta),
        email_sp,
        0,
        1,
        DataHora_IN
	from alertas;
    
	SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Limite Superior foi ultrapassado';
end if;

/***********************************************************/

if(cultura_pertence_investigador and (utrapassa_percent_sup or utrapassa_percent_inf))
then
   
    insert into medicoes_sinalizadas (IDMedicao_Temp, IDMedicao_Lum, IDMedicao_Cultura, IDAlerta, Email_Investigador, Flag_Sinalizado, Flag_Alertado, DataHora)
    values (
		null,
        null,
        id_medicoes,
        null,
        email_sp,
        0,
        0,
        DataHora_IN);
    
end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_Temperatura` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Temperatura`(
IN ValorTemp_IN TEXT, IN Data_IN TEXT, IN Hora_IN TEXT
)
BEGIN

/** Declaração de variáveis **/

declare limiteinf_sistema int;
declare limitesup_sistema int;
declare limiteinf_compercent int;
declare limitesup_compercent int;
declare ID_medicoestemperatura INT;
declare ID_alertas INT;
declare ID_sinalizadas INT;
declare isfirstrecord INT;
declare valortemp decimal(8,2);

declare multiplicador int;

declare count_tres_consecutivos int;

/** Inicialização de variáveis **/

select convert(ValorTemp_IN, decimal(8,2)) into valortemp;

select (case when max(IDMedicao) is null then 1 else max(IDMedicao) + 1 end) into ID_medicoestemperatura from medicoestemperatura;
select (case when max(IDAlerta) is null then 1 else max(IDAlerta) + 1 end) into ID_alertas from alertas;
select (case when max(ID) is null then 1 else max(ID) + 1 end) into ID_sinalizadas from medicoes_sinalizadas;

select LimiteInferiorTemperatura into limiteinf_sistema from sistema;
select LimiteSuperiorTemperatura into limitesup_sistema from sistema;

set limiteinf_compercent = 0;
set limitesup_compercent = 0;
set multiplicador = 10;

/** Validação das condições para criação de alertas **/

select count(*) into count_tres_consecutivos from medicoes_sinalizadas a
where exists (select b.IDMedicao_Temp from medicoes_sinalizadas b 
		where a.IDMedicao_Temp = b.IDMedicao_Temp and b.Flag_Sinalizado = 1 
        having b.IDMedicao_Temp = (ID_medicoestemperatura - 1) or b.IDMedicao_Temp = (ID_medicoestemperatura - 2) or b.IDMedicao_Temp = (ID_medicoestemperatura - 3));
        
select distinct (case 
			when valortemp <  limiteinf_sistema + (valor_min_tmp * multiplicador) then 1
			else 0
		end) result into limiteinf_compercent
from limites_percent_config
where (case when valortemp < limiteinf_sistema + (valor_min_tmp * multiplicador)then 1 else 0 end) = 1;

select distinct (case 
			when valortemp > limitesup_sistema - (valor_max_tmp * multiplicador) then 1
			else 0
		end) result into limitesup_compercent
from limites_percent_config
where (case when valortemp > limitesup_sistema - (valor_max_tmp * multiplicador) then 1 else 0 end) = 1;

/** Insert na tabela de medições  **/

insert into medicoestemperatura values (
	ID_medicoestemperatura,
    valortemp,
    timestamp(concat(Data_IN, " ", Hora_IN))
    );
    
        
/** Criação de alertas **/

/* alerta inferior */

if (limiteinf_compercent = 1 and count_tres_consecutivos >= 3)
		then 
            insert into alertas values (
				ID_alertas,
                ID_medicoestemperatura,
                null,
                null,
				'Temperatura',
				 valortemp,
				 limiteinf_sistema,
				 limitesup_sistema,
				 'Limite Inferior foi ultrapassado ou está próximo de ser ultrapassado',
				 timestamp(concat(Data_IN, " ", Hora_IN)));
			insert into medicoes_sinalizadas values (
				ID_sinalizadas,
				ID_medicoestemperatura,
                null,
                null,
                ID_alertas,
                0,
                1,
                now()
			);
elseif (limiteinf_compercent = 1 and count_tres_consecutivos < 3)
	then 
			insert into medicoes_sinalizadas values(
				ID_sinalizadas,
				ID_medicoestemperatura,
                null,
                null,
                null,
                1,
                0,
                now()
			);
end if; 


/* alerta superior */

if (limitesup_compercent = 1 and count_tres_consecutivos >= 3)
		then 
            insert into alertas values (
				ID_alertas,
                ID_medicoestemperatura,
                null,
                null,
				'Temperatura',
				 valortemp,
				 limiteinf_sistema,
				 limitesup_sistema,
				 'Limite Superior foi ultrapassado ou está próximo de ser ultrapassado',
				 timestamp(concat(Data_IN, " ", Hora_IN)));
			insert into medicoes_sinalizadas values (
				ID_sinalizadas,
				ID_medicoestemperatura,
                null,
                null,
                ID_alertas,
                0,
                1,
                now()
			);
elseif (limitesup_compercent = 1 and count_tres_consecutivos < 3)
	then 
			insert into medicoes_sinalizadas values (
				ID_sinalizadas,
				ID_medicoestemperatura,
                null,
                null,
                null,
                1,
                0,
                now()
			);
end if;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_Temperatura_v2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Temperatura_v2`(
IN ValorTemp_IN TEXT, IN Data_IN TEXT, IN Hora_IN TEXT
)
BEGIN

/* declarações de variáveis */

declare multiplicador int;

declare valortemp decimal(8,2);
declare data_hora_sensor timestamp;

declare ID_medicoestemperatura INT;
declare ID_sinalizadas INT;
declare ID_alertas INT;

declare limiteinf_sistema int;
declare limitesup_sistema int;

declare limiteinf_compercent_ultrapassado int;
declare limitesup_compercent_ultradassado int;

declare consecutivos_tempo int;
declare consecutivos_numero int;



/* set de variáveis */

set limiteinf_compercent_ultrapassado = 0;
set limitesup_compercent_ultradassado = 0;

select convert(ValorTemp_IN, decimal(8,2)) into valortemp;
select timestamp(concat(Data_IN, " ", Hora_IN)) into data_hora_sensor;

select (case when max(IDMedicao) is null then 1 else max(IDMedicao) + 1 end) into ID_medicoestemperatura from medicoestemperatura;
select (case when max(ID) is null then 1 else max(ID) + 1 end) into ID_sinalizadas from medicoes_sinalizadas;
select (case when max(IDAlerta) is null then 1 else max(IDAlerta) + 1 end) into ID_alertas from alertas;

select LimiteInferiorTemperatura into limiteinf_sistema from sistema;
select LimiteSuperiorTemperatura into limitesup_sistema from sistema;

set multiplicador = 10;
select numero_sinalizados into consecutivos_numero from sistema;

/* Validação se é limite superior ou inferior */


select distinct (case 
			when valortemp <  limiteinf_sistema + (valor_min_tmp * multiplicador) then 1
			else 0
		end) result into limiteinf_compercent_ultrapassado
from limites_percent_config
where (case when valortemp < limiteinf_sistema + (valor_min_tmp * multiplicador)then 1 else 0 end) = 1;

select distinct (case 
			when valortemp > limitesup_sistema - (valor_max_tmp * multiplicador) then 1
			else 0
		end) result into limitesup_compercent_ultradassado
from limites_percent_config
where (case when valortemp > limitesup_sistema - (valor_max_tmp * multiplicador) then 1 else 0 end) = 1;

select count(*) into consecutivos_tempo from medicoes_sinalizadas
inner join limites_percent_config on limites_percent_config.Email_Investigador = medicoes_sinalizadas.Email_Investigador
inner join medicoestemperatura on IDMedicao_Temp = IDMedicao
where medicoes_sinalizadas.DataHora between date_sub(now(), interval limites_percent_config.tempo_alerta second) and now()
and Flag_Sinalizado = 1;

/** Insert na tabela de medições  **/

insert into medicoestemperatura values (
	ID_medicoestemperatura,
    valortemp,
    data_hora_sensor
    );


/** Insert na tabela de Alertas **/

if(limiteinf_compercent_ultrapassado = 1 and limitesup_compercent_ultradassado = 0 and consecutivos_tempo > consecutivos_numero)
then
	insert into alertas (IDMedicao_Temp, IDMedicao_Lum, IDMedicao_Cultura, ID_Cultura, Email_Investigador, NomeVariavel, ValorMedicao, LimiteInferior, LimiteSuperior, Descricao, DataHora)
		(
			select  ID_medicoestemperatura, 
					null, 
					null, 
					null,
					medicoes_sinalizadas.Email_Investigador, 
					'Temperatura',
					valortemp,
					limiteinf_sistema,
					limitesup_sistema,
					'Limite Inferior foi ultrapassado ou está próximo de ser ultrapassado',
					data_hora_sensor
				from medicoes_sinalizadas
				inner join limites_percent_config on limites_percent_config.Email_Investigador = medicoes_sinalizadas.Email_Investigador
				inner join medicoestemperatura on IDMedicao_Temp = IDMedicao
				where medicoes_sinalizadas.DataHora between date_sub(now(), interval limites_percent_config.tempo_alerta second) and now()
				and Flag_Sinalizado = 1
                /*and IDMedicao_Temp in (select max(IDMedicao_Temp) from  medicoes_sinalizadas)*/
                group by medicoes_sinalizadas.Email_Investigador
				having count(*) >= consecutivos_numero
			);
            
	insert into medicoes_sinalizadas (IDMedicao_Temp, IDMedicao_Lum, IDMedicao_Var, IDAlerta, Email_Investigador, Flag_Sinalizado, Flag_Alertado, DataHora)
		(
			select 
				ID_medicoestemperatura IDMedicao_Temp, 
				null IDMedicao_Lum, 
				null IDMedicao_Var, 
				IDAlerta IDAlerta,
				alertas.Email_Investigador Email_Investigador,
				0 Flag_Sinalizado, 
				1 Flag_Alertado, 
				now() DataHora 
			from limites_percent_config, alertas
			where alertas.IDMedicao_Temp = ID_medicoestemperatura
            and (valortemp < (limiteinf_sistema + (valor_min_tmp * multiplicador))
            or valortemp > (limitesup_sistema - (valor_max_tmp * multiplicador)))
            group by alertas.Email_Investigador
		);
	

elseif(limitesup_compercent_ultradassado = 1 and limiteinf_compercent_ultrapassado = 0 and consecutivos_tempo > consecutivos_numero)
then
		insert into alertas (IDMedicao_Temp, IDMedicao_Lum, IDMedicao_Cultura, ID_Cultura, Email_Investigador, NomeVariavel, ValorMedicao, LimiteInferior, LimiteSuperior, Descricao, DataHora)
		(
			select ID_medicoestemperatura, 
					null, 
					null, 
					null,
					medicoes_sinalizadas.Email_Investigador, 
					'Temperatura',
					valortemp,
					limiteinf_sistema,
					limitesup_sistema,
					'Limite Superior foi ultrapassado ou está próximo de ser ultrapassado',
					data_hora_sensor
				from medicoes_sinalizadas
				inner join limites_percent_config on limites_percent_config.Email_Investigador = medicoes_sinalizadas.Email_Investigador
				inner join medicoestemperatura on IDMedicao_Temp = IDMedicao
				where medicoes_sinalizadas.DataHora between date_sub(now(), interval limites_percent_config.tempo_alerta second) and now()
				and Flag_Sinalizado = 1
                /*and IDMedicao_Temp in (select max(IDMedicao_Temp) from  medicoes_sinalizadas)*/
                group by medicoes_sinalizadas.Email_Investigador
				having count(*) >= consecutivos_numero
            );
            
	insert into medicoes_sinalizadas (IDMedicao_Temp, IDMedicao_Lum, IDMedicao_Var, IDAlerta, Email_Investigador, Flag_Sinalizado, Flag_Alertado, DataHora)
	(
		select 
			ID_medicoestemperatura IDMedicao_Temp, 
			null IDMedicao_Lum, 
			null IDMedicao_Var, 
			IDAlerta IDAlerta,
            alertas.Email_Investigador Email_Investigador,
			0 Flag_Sinalizado, 
			1 Flag_Alertado, 
			now() DataHora 
			from limites_percent_config, alertas
			where alertas.IDMedicao_Temp = ID_medicoestemperatura
            and (valortemp < (limiteinf_sistema + (valor_min_tmp * multiplicador))
            or valortemp > (limitesup_sistema - (valor_max_tmp * multiplicador)))
            group by alertas.Email_Investigador
	);
    

else
	insert into medicoes_sinalizadas (IDMedicao_Temp, IDMedicao_Lum, IDMedicao_Var, IDAlerta, Email_Investigador, Flag_Sinalizado, Flag_Alertado, DataHora)
	(
		select 
			ID_medicoestemperatura IDMedicao_Temp, 
			null IDMedicao_Lum, 
			null IDMedicao_Var, 
			null IDAlerta,
            limites_percent_config.Email_Investigador Email_Investigador,
			1 Flag_Sinalizado, 
			0 Flag_Alertado, 
			now() DataHora 
			from limites_percent_config
			where valortemp < (limiteinf_sistema + (valor_min_tmp * multiplicador))
            or valortemp > (limitesup_sistema - (valor_max_tmp * multiplicador))
	);
end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Insert_Temperatura_v3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insert_Temperatura_v3`(
IN valor_IN TEXT, IN Data_IN TEXT, IN Hora_IN TEXT
)
BEGIN

/* declarações de variáveis */

declare multiplicador int;

declare valor decimal(8,2);
declare data_hora_sensor timestamp;

declare ID_medicoestemperatura INT;
declare ID_sinalizadas INT;
declare ID_alertas INT;

declare limiteinf_sistema int;
declare limitesup_sistema int;

declare limiteinf_sistema_ultrapassado int;
declare limitesup_sistema_ultrapassado int;

declare limiteinf_compercent_ultrapassado int;
declare limitesup_compercent_ultrapassado int;

declare alerta_ja_criado int;

declare anterior_nao_alertado int;
declare nunca_alertado int;



/* set de variáveis */

set limiteinf_compercent_ultrapassado = 0;
set limitesup_compercent_ultrapassado = 0;

select convert(valor_IN, decimal(8,2)) into valor;
select timestamp(concat(Data_IN, " ", Hora_IN)) into data_hora_sensor;

select (case when max(IDMedicao) is null then 1 else max(IDMedicao) + 1 end) into ID_medicoestemperatura from medicoestemperatura;
select (case when max(ID) is null then 1 else max(ID) + 1 end) into ID_sinalizadas from medicoes_sinalizadas;
select (case when max(IDAlerta) is null then 1 else max(IDAlerta) + 1 end) into ID_alertas from alertas;

select LimiteInferiorTemperatura into limiteinf_sistema from sistema;
select LimiteSuperiorTemperatura into limitesup_sistema from sistema;

select multiplicadorTemperatura into multiplicador from sistema;

/* Validação se é limite superior ou inferior */

select result into limiteinf_compercent_ultrapassado from (
	select distinct (case when valor <  limiteinf_sistema + (valor_min_tmp * multiplicador) then 1 else 0 end) result
	from limites_percent_config
) HDR
where HDR.result = 1;

select result into limitesup_compercent_ultrapassado from (
	select distinct (case when valor > limitesup_sistema - (valor_max_tmp * multiplicador) then 1 else 0 end) result 
	from limites_percent_config
) HDR
where HDR.result = 1;

select (case when valor < limiteinf_sistema then 1
			else 0 end) result into limiteinf_sistema_ultrapassado;

select (case when valor > limitesup_sistema then 1
			else 0 end) result into limitesup_sistema_ultrapassado;


select count(*) into alerta_ja_criado from medicoes_sinalizadas
inner join limites_percent_config on limites_percent_config.Email_Investigador = medicoes_sinalizadas.Email_Investigador
inner join medicoestemperatura on IDMedicao_Temp = IDMedicao
where medicoes_sinalizadas.DataHora between date_sub(now(), interval limites_percent_config.tempo_alerta second) and now()
and Flag_Alertado = 1;

select count(*) into anterior_nao_alertado from medicoes_sinalizadas
inner join limites_percent_config on limites_percent_config.Email_Investigador = medicoes_sinalizadas.Email_Investigador
inner join medicoestemperatura on IDMedicao_Temp = IDMedicao
where medicoes_sinalizadas.IDMedicao_Temp in (select max(IDMedicao_Temp) from medicoes_sinalizadas)
and medicoes_sinalizadas.Flag_Sinalizado = 0 and medicoes_sinalizadas.Flag_Alertado = 0;
        
select count(*) into nunca_alertado from medicoes_sinalizadas where medicoes_sinalizadas.Flag_Alertado = 1;

/** Insert na tabela de medições  **/

insert into medicoestemperatura values (
	ID_medicoestemperatura,
    valor,
    data_hora_sensor
    );


/** Insert na tabela de sinalizados **/


if(limitesup_compercent_ultrapassado = 1 or limiteinf_compercent_ultrapassado = 1)
then
	insert into medicoes_sinalizadas (IDMedicao_Temp, IDMedicao_Lum, IDMedicao_Cultura, IDAlerta, Email_Investigador, Flag_Sinalizado, Flag_Alertado, DataHora) (
			select 
			ID_medicoestemperatura , 
			null , 
			null , 
			null ,
            limites_percent_config.Email_Investigador ,
			1 , 
			0 , 
			now()  
			from limites_percent_config
            where valor < (limiteinf_sistema + (valor_min_tmp * multiplicador))
            or valor > (limitesup_sistema - (valor_max_tmp * multiplicador))
    );
else
	insert into medicoes_sinalizadas (IDMedicao_Temp, IDMedicao_Lum, IDMedicao_Cultura, IDAlerta, Email_Investigador, Flag_Sinalizado, Flag_Alertado, DataHora) (
			select
			ID_medicoestemperatura , 
			null , 
			null , 
			null ,
            limites_percent_config.Email_Investigador Email_Investigador ,
			0, 
			0, 
			now()
            from limites_percent_config
    );

end if;
	

/** Insert na tabela de alertas **/

/* limite inferior */


if(limiteinf_sistema_ultrapassado = 1 and limiteinf_compercent_ultrapassado = 1 /*and alerta_ja_criado = 0*/)
then 

	insert into alertas (IDMedicao_Temp, IDMedicao_Lum, IDMedicao_Cultura, ID_Cultura, Email_Investigador, NomeVariavel, ValorMedicao, LimiteInferior, LimiteSuperior, Descricao, DataHora) (
		select 
			ID_medicoestemperatura, 
			null, 
			null, 
			null,
			medicoes_sinalizadas.Email_Investigador, 
			'Temperatura',
			valor,
			limiteinf_sistema,
			limitesup_sistema,
			'Limite Inferior foi ultrapassado',
			data_hora_sensor
			from medicoes_sinalizadas
			left join limites_percent_config on limites_percent_config.Email_Investigador = medicoes_sinalizadas.Email_Investigador
			left join medicoestemperatura on IDMedicao_Temp = IDMedicao
			where medicoes_sinalizadas.Email_Investigador not in (
							select distinct medicoes_sinalizadas.Email_Investigador from medicoes_sinalizadas
							left join limites_percent_config on limites_percent_config.Email_Investigador = medicoes_sinalizadas.Email_Investigador
							left join medicoestemperatura on IDMedicao_Temp = IDMedicao
							where medicoes_sinalizadas.DataHora between date_sub(now(), interval limites_percent_config.tempo_alerta second) and now()
							and medicoes_sinalizadas.Flag_Alertado = 1
							group by medicoes_sinalizadas.IDMedicao_Temp , medicoes_sinalizadas.Email_Investigador
							having count(medicoes_sinalizadas.Flag_Sinalizado = 1) > (count(*) / 2)
							)
			-- and medicoes_sinalizadas.DataHora between date_sub(now(), interval limites_percent_config.tempo_alerta second) and now()
			group by medicoes_sinalizadas.Email_Investigador
	);
    insert into medicoes_sinalizadas (IDMedicao_Temp, IDMedicao_Lum, IDMedicao_Cultura, IDAlerta, Email_Investigador, Flag_Sinalizado, Flag_Alertado, DataHora) (
			select
			alertas.IDMedicao_Temp , 
			null , 
			null , 
			alertas.IDAlerta ,
            alertas.Email_Investigador Email_Investigador ,
			0, 
			1, 
			now()
            from alertas
            where alertas.IDMedicao_Temp = ID_medicoestemperatura
    );
    
end if;

if(limitesup_sistema_ultrapassado = 1 and limitesup_compercent_ultrapassado = 1)
then 
	insert into alertas (IDMedicao_Temp, IDMedicao_Lum, IDMedicao_Cultura, ID_Cultura, Email_Investigador, NomeVariavel, ValorMedicao, LimiteInferior, LimiteSuperior, Descricao, DataHora) (
		select 
			ID_medicoestemperatura,  
			null, 
			null, 
			null,
			medicoes_sinalizadas.Email_Investigador, 
			'Temperatura',
			valor,
			limiteinf_sistema,
			limitesup_sistema,
			'Limite Superior foi ultrapassado',
			data_hora_sensor
			from medicoes_sinalizadas
			left join limites_percent_config on limites_percent_config.Email_Investigador = medicoes_sinalizadas.Email_Investigador
			left join medicoestemperatura on IDMedicao_Temp = IDMedicao
			where medicoes_sinalizadas.Email_Investigador not in (
							select distinct medicoes_sinalizadas.Email_Investigador from medicoes_sinalizadas
							left join limites_percent_config on limites_percent_config.Email_Investigador = medicoes_sinalizadas.Email_Investigador
							left join medicoestemperatura on IDMedicao_Temp = IDMedicao
							where medicoes_sinalizadas.DataHora between date_sub(now(), interval limites_percent_config.tempo_alerta second) and now()
							and medicoes_sinalizadas.Flag_Alertado = 1
							group by medicoes_sinalizadas.IDMedicao_Temp , medicoes_sinalizadas.Email_Investigador
							having count(medicoes_sinalizadas.Flag_Sinalizado = 1) > (count(*) / 2)
							)
			-- and medicoes_sinalizadas.DataHora between date_sub(now(), interval limites_percent_config.tempo_alerta second) and now()
			group by medicoes_sinalizadas.Email_Investigador
	);
    insert into medicoes_sinalizadas (IDMedicao_Temp, IDMedicao_Lum, IDMedicao_Cultura, IDAlerta, Email_Investigador, Flag_Sinalizado, Flag_Alertado, DataHora) (
			select
			alertas.IDMedicao_Temp , 
			null , 
			null , 
			alertas.IDAlerta ,
            alertas.Email_Investigador Email_Investigador ,
			0, 
			1, 
			now()
            from alertas
            where alertas.IDMedicao_Temp = ID_medicoestemperatura
    );
end if;

/** falta pra o caso de limitesup_sistema_ultrapassado = 0 and limitesup_compercent_ultrapassado = 1 tanto para sup e inferior **/


if(limiteinf_sistema_ultrapassado = 0 and limiteinf_compercent_ultrapassado = 1)
then
		if(anterior_nao_alertado > 0 or nunca_alertado = 0)
		then
			insert into alertas (IDMedicao_Temp, IDMedicao_Lum, IDMedicao_Cultura, ID_Cultura, Email_Investigador, NomeVariavel, ValorMedicao, LimiteInferior, LimiteSuperior, Descricao, DataHora) (
			select 
				ID_medicoestemperatura, 
				null, 
				null, 
				null,
				medicoes_sinalizadas.Email_Investigador, 
				'Temperatura',
				valor,
				limiteinf_sistema,
				limitesup_sistema,
				'Limite Inferior está próximo de ser ultrapassado',
				data_hora_sensor
				from medicoes_sinalizadas
				left join limites_percent_config on limites_percent_config.Email_Investigador = medicoes_sinalizadas.Email_Investigador
				left join medicoestemperatura on IDMedicao_Temp = IDMedicao
				where medicoes_sinalizadas.Email_Investigador not in (
								select distinct medicoes_sinalizadas.Email_Investigador from medicoes_sinalizadas
								left join limites_percent_config on limites_percent_config.Email_Investigador = medicoes_sinalizadas.Email_Investigador
								left join medicoestemperatura on IDMedicao_Temp = IDMedicao
								where medicoes_sinalizadas.DataHora between date_sub(now(), interval limites_percent_config.tempo_alerta second) and now()
								and medicoes_sinalizadas.Flag_Alertado = 1
								group by medicoes_sinalizadas.IDMedicao_Temp , medicoes_sinalizadas.Email_Investigador
								having count(medicoes_sinalizadas.Flag_Sinalizado = 1) > (count(*) / 2)
								)
				-- and medicoes_sinalizadas.DataHora between date_sub(now(), interval limites_percent_config.tempo_alerta second) and now()
				group by medicoes_sinalizadas.Email_Investigador
			);
            insert into medicoes_sinalizadas (IDMedicao_Temp, IDMedicao_Lum, IDMedicao_Cultura, IDAlerta, Email_Investigador, Flag_Sinalizado, Flag_Alertado, DataHora) (
				select
				alertas.IDMedicao_Temp , 
				null , 
				null , 
				alertas.IDAlerta ,
				alertas.Email_Investigador Email_Investigador ,
				0, 
				1, 
				now()
				from alertas
				where alertas.IDMedicao_Temp = ID_medicoestemperatura
			);    
		end if;
end if;


if(limitesup_sistema_ultrapassado = 0 and limitesup_compercent_ultrapassado = 1)
then        
		if(anterior_nao_alertado > 0  or nunca_alertado = 0)
		then
			insert into alertas (IDMedicao_Temp, IDMedicao_Lum, IDMedicao_Cultura, ID_Cultura, Email_Investigador, NomeVariavel, ValorMedicao, LimiteInferior, LimiteSuperior, Descricao, DataHora) (
			select 
				ID_medicoestemperatura, 
				null, 
				null, 
				null,
				medicoes_sinalizadas.Email_Investigador, 
				'Temperatura',
				valor,
				limiteinf_sistema,
				limitesup_sistema,
				'Limite Superior está próximo de ser ultrapassado',
				data_hora_sensor
				from medicoes_sinalizadas
				left join limites_percent_config on limites_percent_config.Email_Investigador = medicoes_sinalizadas.Email_Investigador
				left join medicoestemperatura on IDMedicao_Temp = IDMedicao
				where medicoes_sinalizadas.Email_Investigador not in (
								select distinct medicoes_sinalizadas.Email_Investigador from medicoes_sinalizadas
								left join limites_percent_config on limites_percent_config.Email_Investigador = medicoes_sinalizadas.Email_Investigador
								left join medicoestemperatura on IDMedicao_Temp = IDMedicao
								where medicoes_sinalizadas.DataHora between date_sub(now(), interval limites_percent_config.tempo_alerta second) and now()
								and medicoes_sinalizadas.Flag_Alertado = 1
								group by medicoes_sinalizadas.IDMedicao_Temp , medicoes_sinalizadas.Email_Investigador
								having count(medicoes_sinalizadas.Flag_Sinalizado = 1) > (count(*) / 2)
								)
				-- and medicoes_sinalizadas.DataHora between date_sub(now(), interval limites_percent_config.tempo_alerta second) and now()
				group by medicoes_sinalizadas.Email_Investigador
			);
            insert into medicoes_sinalizadas (IDMedicao_Temp, IDMedicao_Lum, IDMedicao_Cultura, IDAlerta, Email_Investigador, Flag_Sinalizado, Flag_Alertado, DataHora) (
				select
				alertas.IDMedicao_Temp , 
				null , 
				null , 
				alertas.IDAlerta ,
				alertas.Email_Investigador Email_Investigador ,
				0, 
				1, 
				now()
				from alertas
				where alertas.IDMedicao_Temp = ID_medicoestemperatura
			);    
		end if;
end if;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `LOOP_selectmedicoes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `LOOP_selectmedicoes`(num INT)
BEGIN
declare i INT default 0;
  label1: LOOP
    SET @i = 0;
    IF i < num THEN
		call SelectMedicoes(null, null, null, null, null, null);
		SET i = i + 1;
		ITERATE label1;
    END IF;
    LEAVE label1;
  END LOOP label1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Migracao_ficheiros_csv` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Migracao_ficheiros_csv`()
BEGIN 
	declare investigador integer; 
	declare cultura integer; 
    declare medicoes integer; 
    declare medicoesLuminosidade integer; 
    declare medicoesTemperatura integer; 
    declare medicoesConsulta integer; 
    declare variaveis integer; 
    declare variaveisMedicao integer; 
    declare sistema integer; 
    
set investigador = ((select count(*) from db_mysql_destino.investigador_log)+1); 
set cultura = ((select count(*) from db_mysql_destino.cultura_log)+1); 
set medicoes = ((select count(*) from db_mysql_destino.medicoes_log)+1); 
set medicoesLuminosidade = ((select count(*) from db_mysql_destino.medicoesluminosidade_log)+1); 
set medicoesTemperatura = ((select count(*) from db_mysql_destino.medicoestemperatura_log)+1); 
set medicoesConsulta = ((select count(*) from db_mysql_destino.medicoes_consultados_log)+1); 
set variaveis = ((select count(*) from db_mysql_destino.variaveis_log)+1); 
set variaveisMedicao = ((select count(*) from db_mysql_destino.variaveismedidas_log)+1); 
set sistema = ((select count(*) from db_mysql_destino.sistema_log)+1); 

#exec master..xp_cmdshell 'D:\xampp\importFiles.bat' #exec(' xp_cmdshell ''D:\xampp\importFiles.bat '+@investigador+' '+@cultura+' '+@medicoes+' '+@medicoesLuminosidade+' '+@medicoesTemperatura+' '+@medicoesConsulta+' '+@variaveis+' '+@variaveisMedicao+' '+@sistema+''''); 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SelectMedicoes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SelectMedicoes`(
IN NumeroMedicao_SP int(11), IN IDVariaveis_VariaveisMedidas_SP int(11), IN IDCultura_VariaveisMedidas_SP int(11), IN ValorMedicao_SP decimal(8,2),
 IN DataHoraMedicao_SP_INF timestamp, IN DataHoraMedicao_SP_SUP timestamp)
BEGIN

	-- declare medicoes_log_id int(11);
    
	select HDR.NumeroMedicao, HDR.IDVariaveis_VariaveisMedidas, HDR.IDCultura_VariaveisMedidas, HDR.ValorMedicao, HDR.DataHoraMedicao 
	from (
			select NumeroMedicao, IDVariaveis_VariaveisMedidas, IDCultura_VariaveisMedidas, ValorMedicao, DataHoraMedicao, Email from medicoes
			left join cultura on IDCultura_VariaveisMedidas = IDCultura
			left join investigador on Email_Investigador = Email
	) as HDR
	where SUBSTRING(HDR.Email, 1, LOCATE('@', HDR.Email) - 1) like SUBSTRING(current_user(), 1, LOCATE('@', current_user()) - 1)
    and 
		(
			case 
				when NumeroMedicao_SP is null then 1
				else HDR.NumeroMedicao = NumeroMedicao_SP
            end
		)
	and 
		(
			case 
				when IDVariaveis_VariaveisMedidas_SP is null then 1
				else HDR.IDVariaveis_VariaveisMedidas = IDVariaveis_VariaveisMedidas_SP
            end
		)
	and 
		(
			case 
				when IDCultura_VariaveisMedidas_SP is null then 1
				else HDR.IDCultura_VariaveisMedidas = IDCultura_VariaveisMedidas_SP
            end
		)
	and 
		(
			case 
				when ValorMedicao_SP is null then 1
				else HDR.ValorMedicao = ValorMedicao_SP
            end
		)
	and 
		(
			case 
				when DataHoraMedicao_SP_INF is null and DataHoraMedicao_SP_SUP is null then 1
                when DataHoraMedicao_SP_INF is not null and DataHoraMedicao_SP_SUP is null then  HDR.DataHoraMedicao > DataHoraMedicao_SP_INF 
                when DataHoraMedicao_SP_INF is null and DataHoraMedicao_SP_SUP is not null then  HDR.DataHoraMedicao < DataHoraMedicao_SP_SUP 
				else HDR.DataHoraMedicao between DataHoraMedicao_SP_INF and DataHoraMedicao_SP_SUP
            end
		)
    order by HDR.NumeroMedicao;
    
    -- insert medicoes_log -- 

	insert into medicoes_log (
							NumeroMedicao_OLD, 
                            NumeroMedicao_NEW, 
                            DataHoraMedicao_OLD, 
                            DataHoraMedicao_NEW, 
                            ValorMedicao_OLD, 
                            ValorMedicao_NEW, 
                            IDVariaveis_VariaveisMedidas_OLD, 
                            IDVariaveis_VariaveisMedidas_NEW, 
                            IDCultura_VariaveisMedidas_OLD, 
                            IDCultura_VariaveisMedidas_NEW, 
                            Operacao, 
                            Utilizador, 
                            DataHora
                            )
	values (
				null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                null,
                'S',
                current_user(),
                now()
			);
	
	-- insert medicoes_consultadas_log -- 
    
    
    insert into medicoes_consultados_log (IDMedicoes_LOG, NumeroMedicao, IDVariaveis_VariaveisMedidas, IDCultura_VariaveisMedidas, ValorMedicao, DataHoraMedicao, Operacao_LOG, Utilizador_LOG, DataHora_LOG)
			select 
				(select max(ID) from medicoes_log),
				HDR.NumeroMedicao, 
                HDR.IDVariaveis_VariaveisMedidas, 
                HDR.IDCultura_VariaveisMedidas, 
                HDR.ValorMedicao, 
                HDR.DataHoraMedicao,
                'S',
                current_user(),
                now()
			from (
					select NumeroMedicao, IDVariaveis_VariaveisMedidas, IDCultura_VariaveisMedidas, ValorMedicao, DataHoraMedicao, Email from medicoes
					left join cultura on IDCultura_VariaveisMedidas = IDCultura
					left join investigador on Email_Investigador = Email
			) as HDR
			where SUBSTRING(HDR.Email, 1, LOCATE('@', HDR.Email) - 1) like SUBSTRING(current_user(), 1, LOCATE('@', current_user()) - 1)
			and 
				(
					case 
						when NumeroMedicao_SP is null then 1
						else HDR.NumeroMedicao = NumeroMedicao_SP
					end
				)
			and 
				(
					case 
						when IDVariaveis_VariaveisMedidas_SP is null then 1
						else HDR.IDVariaveis_VariaveisMedidas = IDVariaveis_VariaveisMedidas_SP
					end
				)
			and 
				(
					case 
						when IDCultura_VariaveisMedidas_SP is null then 1
						else HDR.IDCultura_VariaveisMedidas = IDCultura_VariaveisMedidas_SP
					end
				)
			and 
				(
					case 
						when ValorMedicao_SP is null then 1
						else HDR.ValorMedicao = ValorMedicao_SP
					end
				)
			and 
				(
					case 
						when DataHoraMedicao_SP_INF is null and DataHoraMedicao_SP_SUP is null then 1
						when DataHoraMedicao_SP_INF is not null and DataHoraMedicao_SP_SUP is null then  HDR.DataHoraMedicao > DataHoraMedicao_SP_INF 
						when DataHoraMedicao_SP_INF is null and DataHoraMedicao_SP_SUP is not null then  HDR.DataHoraMedicao < DataHoraMedicao_SP_SUP 
						else HDR.DataHoraMedicao between DataHoraMedicao_SP_INF and DataHoraMedicao_SP_SUP
					end
				)
			order by HDR.NumeroMedicao;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `set_false_flag_alltables_log` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `set_false_flag_alltables_log`()
BEGIN
	update db_mysql_origem.medicoes_consultados_log set Flag_Migracao = false;
	update db_mysql_origem.investigador_log set Flag_Migracao = false;
	update db_mysql_origem.cultura_log set Flag_Migracao = false;
	update db_mysql_origem.medicoesluminosidade_log set Flag_Migracao = false;
	update db_mysql_origem.medicoestemperatura_log set Flag_Migracao = false;
	update db_mysql_origem.sistema_log set Flag_Migracao = false;
	update db_mysql_origem.medicoes_log set Flag_Migracao = false;
	update db_mysql_origem.variaveis_log set Flag_Migracao = false;
	update db_mysql_origem.variaveismedidas_log set Flag_Migracao = false;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateInvestigador` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateInvestigador`(
IN emailPK varchar(50), newEmail varchar(50), newPass varchar(100), newNomeInvestigador varchar(100), newCategoriaProfissional varchar(300)
)
BEGIN
	if(emailPK is null or trim(emailpk) like '') then
		SIGNAL SQLSTATE '45000' SET
			MESSAGE_TEXT = 'emailPK is Mandatory!!';
	else
		if(newEmail is not null)
				then 
					update Investigador set email = newEmail where email = emailPK;
                    UPDATE mysql.user SET user = (SUBSTRING(newEmail, 1, LOCATE('@', newEmail) - 1)) 
						WHERE user = (SUBSTRING(emailPK, 1, LOCATE('@', emailPK) - 1)) and host = 'localhost';
		end if;
		if(newPass is not null)
				then 
					update mysql.user SET Password = password(newPass) 
						Where User = (SUBSTRING(emailPK, 1, LOCATE('@', emailPK) - 1)) and host = 'localhost';
		end if;
        if(newNomeInvestigador is not null)
				then 
					update Investigador set NomeInvestigador = newNomeInvestigador where email = emailPK;
		end if;
        if(newCategoriaProfissional is not null)
				then 
					 update Investigador set CategoriaProfissional = newCategoriaProfissional where email = emailPK;
		end if;						
	end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `alertas_android`
--

/*!50001 DROP TABLE IF EXISTS `alertas_android`*/;
/*!50001 DROP VIEW IF EXISTS `alertas_android`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `alertas_android` AS select `alertas`.`IDAlerta` AS `IDAlerta`,`alertas`.`NomeVariavel` AS `NomeVariavel`,(case when isnull(`cultura`.`NomeCultura`) then 'Todas' else `cultura`.`NomeCultura` end) AS `NomeCultura`,`alertas`.`Email_Investigador` AS `EmailInvestigador`,`alertas`.`ValorMedicao` AS `ValorMedicao`,`alertas`.`LimiteInferior` AS `LimiteInferior`,`alertas`.`LimiteSuperior` AS `LimiteSuperior`,`alertas`.`Descricao` AS `Descricao`,`alertas`.`DataHora` AS `DataHora` from ((((`alertas` left join `medicoes` on((`medicoes`.`NumeroMedicao` = `alertas`.`IDMedicao_Cultura`))) left join `variaveismedidas` on(((`variaveismedidas`.`IDVariavel_Variaveis` = `medicoes`.`IDVariaveis_VariaveisMedidas`) and (`variaveismedidas`.`IDCultura_Cultura` = `medicoes`.`IDCultura_VariaveisMedidas`)))) left join `cultura` on((`cultura`.`IDCultura` = `variaveismedidas`.`IDCultura_Cultura`))) left join `variaveis` on((`variaveis`.`IDVariavel` = `variaveismedidas`.`IDVariavel_Variaveis`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-19  8:46:15
