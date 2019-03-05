-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_mysql_destino
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `db_mysql_destino`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `db_mysql_destino` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;

USE `db_mysql_destino`;

--
-- Table structure for table `culturalog`
--

DROP TABLE IF EXISTS `culturalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `culturalog` (
  `ID` int(11) NOT NULL,
  `IDCultura_OLD` int(11) DEFAULT NULL,
  `IDCultura_NEW` int(11) DEFAULT NULL,
  `NomeCultura_OLD` varchar(100) DEFAULT NULL,
  `NomeCultura_NEW` varchar(100) DEFAULT NULL,
  `DescriçãoCultura_OLD` varchar(500) DEFAULT NULL,
  `DescriçãoCultura_NEW` varchar(500) DEFAULT NULL,
  `Email_Investigador_OLD` varchar(50) DEFAULT NULL,
  `Email_Investigador_NEW` varchar(50) DEFAULT NULL,
  `Operacao` varchar(20) NOT NULL,
  `Utilizador` varchar(45) NOT NULL,
  `DataHora` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `culturalog`
--

LOCK TABLES `culturalog` WRITE;
/*!40000 ALTER TABLE `culturalog` DISABLE KEYS */;
/*!40000 ALTER TABLE `culturalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investigadorlog`
--

DROP TABLE IF EXISTS `investigadorlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `investigadorlog` (
  `ID` int(11) NOT NULL,
  `Email_OLD` varchar(50) DEFAULT NULL,
  `Email_NEW` varchar(50) DEFAULT NULL,
  `NomeInvestigador_OLD` varchar(100) DEFAULT NULL,
  `NomeInvestigador_NEW` varchar(100) DEFAULT NULL,
  `CategoriaProfissional_OLD` varchar(300) DEFAULT NULL,
  `CategoriaProfissional_NEW` varchar(300) DEFAULT NULL,
  `Operacao` varchar(20) NOT NULL,
  `Utilizador` varchar(45) NOT NULL,
  `DataHora` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investigadorlog`
--

LOCK TABLES `investigadorlog` WRITE;
/*!40000 ALTER TABLE `investigadorlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `investigadorlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicoeslog`
--

DROP TABLE IF EXISTS `medicoeslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `medicoeslog` (
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
  `Operacao` varchar(20) NOT NULL,
  `Utilizador` varchar(45) NOT NULL,
  `DataHora` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicoeslog`
--

LOCK TABLES `medicoeslog` WRITE;
/*!40000 ALTER TABLE `medicoeslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicoeslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicoesluminosidadelog`
--

DROP TABLE IF EXISTS `medicoesluminosidadelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `medicoesluminosidadelog` (
  `ID` int(11) NOT NULL,
  `DataHoraMedicao_OLD` timestamp NULL DEFAULT NULL,
  `DataHoraMedicao_NEW` timestamp NULL DEFAULT NULL,
  `ValorMedicaoLuminosidade_OLD` decimal(8,2) DEFAULT NULL,
  `ValorMedicaoLuminosidade_NEW` decimal(8,2) DEFAULT NULL,
  `IDMedicao_OLD` int(11) DEFAULT NULL,
  `IDMedicao_NEW` int(11) DEFAULT NULL,
  `Operacao` varchar(20) NOT NULL,
  `Utilizador` varchar(45) NOT NULL,
  `DataHora` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicoesluminosidadelog`
--

LOCK TABLES `medicoesluminosidadelog` WRITE;
/*!40000 ALTER TABLE `medicoesluminosidadelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicoesluminosidadelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicoestemperaturalog`
--

DROP TABLE IF EXISTS `medicoestemperaturalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `medicoestemperaturalog` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DataHoraMedicao_OLD` timestamp NULL DEFAULT NULL,
  `DataHoraMedicao_NEW` timestamp NULL DEFAULT NULL,
  `ValorMedicaoTemperatura_OLD` decimal(8,2) DEFAULT NULL,
  `ValorMedicaoTemperatura_NEW` decimal(8,2) DEFAULT NULL,
  `IDMedicao_OLD` int(11) DEFAULT NULL,
  `IDMedicao_NEW` int(11) DEFAULT NULL,
  `Operacao` varchar(20) NOT NULL,
  `Utilizador` varchar(45) NOT NULL,
  `DataHora` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicoestemperaturalog`
--

LOCK TABLES `medicoestemperaturalog` WRITE;
/*!40000 ALTER TABLE `medicoestemperaturalog` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicoestemperaturalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sistemalog`
--

DROP TABLE IF EXISTS `sistemalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sistemalog` (
  `ID` int(11) NOT NULL,
  `LimiteInferiorTemperatura_OLD` decimal(8,2) DEFAULT NULL,
  `LimiteInferiorTemperatura_NEW` decimal(8,2) DEFAULT NULL,
  `LimiteSuperiorTemperatura_OLD` decimal(8,2) DEFAULT NULL,
  `LimiteSuperiorTemperatura_NEW` decimal(8,2) DEFAULT NULL,
  `LimiteInferiorLuz_OLD` decimal(8,2) DEFAULT NULL,
  `LimiteInferiorLuz_NEW` decimal(8,2) DEFAULT NULL,
  `LimiteSuperiorLuz_OLD` decimal(8,2) DEFAULT NULL,
  `LimiteSuperiorLuz_NEW` decimal(8,2) DEFAULT NULL,
  `Operacao` varchar(20) NOT NULL,
  `Utilizador` varchar(45) NOT NULL,
  `DataHora` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sistemalog`
--

LOCK TABLES `sistemalog` WRITE;
/*!40000 ALTER TABLE `sistemalog` DISABLE KEYS */;
/*!40000 ALTER TABLE `sistemalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variaveislog`
--

DROP TABLE IF EXISTS `variaveislog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `variaveislog` (
  `ID` int(11) NOT NULL,
  `IDVariavel_OLD` int(11) DEFAULT NULL,
  `IDVariavel_NEW` int(11) DEFAULT NULL,
  `NomeVariavel_OLD` varchar(100) DEFAULT NULL,
  `NomeVariavel_NEW` varchar(100) DEFAULT NULL,
  `Operacao` varchar(20) NOT NULL,
  `Utilizador` varchar(45) NOT NULL,
  `DataHora` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variaveislog`
--

LOCK TABLES `variaveislog` WRITE;
/*!40000 ALTER TABLE `variaveislog` DISABLE KEYS */;
/*!40000 ALTER TABLE `variaveislog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variaveismedidaslog`
--

DROP TABLE IF EXISTS `variaveismedidaslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `variaveismedidaslog` (
  `ID` int(11) NOT NULL,
  `LimiteInferior_OLD` decimal(8,2) DEFAULT NULL,
  `LimiteInferior_NEW` decimal(8,2) DEFAULT NULL,
  `LimiteSuperior_OLD` decimal(8,2) DEFAULT NULL,
  `LimiteSuperior_NEW` decimal(8,2) DEFAULT NULL,
  `IDVariavel_Variaveis_OLD` int(11) DEFAULT NULL,
  `IDVariavel_Variaveis_NEW` int(11) DEFAULT NULL,
  `IDCultura_Cultura_OLD` int(11) DEFAULT NULL,
  `IDCultura_Cultura_NEW` int(11) DEFAULT NULL,
  `Operacao` varchar(20) NOT NULL,
  `Utilizador` varchar(45) NOT NULL,
  `DataHora` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variaveismedidaslog`
--

LOCK TABLES `variaveismedidaslog` WRITE;
/*!40000 ALTER TABLE `variaveismedidaslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `variaveismedidaslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_mysql_destino'
--

--
-- Dumping routines for database 'db_mysql_destino'
--

--
-- Current Database: `db_mysql_origem`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `db_mysql_origem` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_mysql_origem`;

--
-- Table structure for table `cultura`
--

DROP TABLE IF EXISTS `cultura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cultura` (
  `IDCultura` int(11) NOT NULL,
  `Email_Investigador` varchar(50) NOT NULL,
  `NomeCultura` varchar(100) NOT NULL,
  `DescriçãoCultura` text,
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
INSERT INTO `cultura` (`IDCultura`, `Email_Investigador`, `NomeCultura`, `DescriçãoCultura`) VALUES (1,'root@localhost','Cultura de teste do RooT','TESTE ROOT'),(2,'root@localhost','Cultura de teste do RooT 2','TESTE ROOT 2'),(3,'email1@teste.tt','Cultura de teste do tt','TESTE tt');
/*!40000 ALTER TABLE `cultura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `culturalog`
--

DROP TABLE IF EXISTS `culturalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `culturalog` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDCultura_OLD` int(11) DEFAULT NULL,
  `IDCultura_NEW` int(11) DEFAULT NULL,
  `NomeCultura_OLD` varchar(100) DEFAULT NULL,
  `NomeCultura_NEW` varchar(100) DEFAULT NULL,
  `DescriçãoCultura_OLD` varchar(500) DEFAULT NULL,
  `DescriçãoCultura_NEW` varchar(500) DEFAULT NULL,
  `Email_Investigador_OLD` varchar(50) DEFAULT NULL,
  `Email_Investigador_NEW` varchar(50) DEFAULT NULL,
  `Operacao` varchar(20) NOT NULL,
  `Utilizador` varchar(45) NOT NULL,
  `DataHora` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `culturalog`
--

LOCK TABLES `culturalog` WRITE;
/*!40000 ALTER TABLE `culturalog` DISABLE KEYS */;
/*!40000 ALTER TABLE `culturalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investigador`
--

DROP TABLE IF EXISTS `investigador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
INSERT INTO `investigador` (`Email`, `NomeInvestigador`, `CategoriaProfissional`) VALUES ('email1@teste.tt','test','test'),('root@localhost','ROOT','ROOT');
/*!40000 ALTER TABLE `investigador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `investigadorlog`
--

DROP TABLE IF EXISTS `investigadorlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `investigadorlog` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Email_OLD` varchar(50) DEFAULT NULL,
  `Email_NEW` varchar(50) DEFAULT NULL,
  `NomeInvestigador_OLD` varchar(100) DEFAULT NULL,
  `NomeInvestigador_NEW` varchar(100) DEFAULT NULL,
  `CategoriaProfissional_OLD` varchar(300) DEFAULT NULL,
  `CategoriaProfissional_NEW` varchar(300) DEFAULT NULL,
  `Operacao` varchar(20) NOT NULL,
  `Utilizador` varchar(45) NOT NULL,
  `DataHora` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investigadorlog`
--

LOCK TABLES `investigadorlog` WRITE;
/*!40000 ALTER TABLE `investigadorlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `investigadorlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicoes`
--

DROP TABLE IF EXISTS `medicoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `medicoes` (
  `NumeroMedicao` int(11) NOT NULL,
  `IDVariaveis_VariaveisMedidas` int(11) NOT NULL,
  `IDCultura_VariaveisMedidas` int(11) NOT NULL,
  `ValorMedicao` decimal(8,2) NOT NULL,
  `DataHoraMedicao` timestamp NOT NULL,
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
INSERT INTO `medicoes` (`NumeroMedicao`, `IDVariaveis_VariaveisMedidas`, `IDCultura_VariaveisMedidas`, `ValorMedicao`, `DataHoraMedicao`) VALUES (1,1,1,345.00,'2019-03-04 20:23:32'),(2,1,1,0.00,'2019-03-04 20:23:32'),(3,1,1,0.00,'2019-03-04 20:23:32'),(4,1,1,33.00,'2019-03-04 20:23:32'),(5,1,1,10000.00,'2019-03-04 20:23:32'),(6,2,3,50.00,'2019-03-04 20:28:59');
/*!40000 ALTER TABLE `medicoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicoeslog`
--

DROP TABLE IF EXISTS `medicoeslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `medicoeslog` (
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
  `Operacao` varchar(20) NOT NULL,
  `Utilizador` varchar(45) NOT NULL,
  `DataHora` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicoeslog`
--

LOCK TABLES `medicoeslog` WRITE;
/*!40000 ALTER TABLE `medicoeslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicoeslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicoesluminosidade`
--

DROP TABLE IF EXISTS `medicoesluminosidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `medicoesluminosidade` (
  `IDMedicao` int(11) NOT NULL,
  `ValorMedicaoLuminosidade` decimal(8,2) NOT NULL,
  `DataHoraMedicao` timestamp NOT NULL,
  PRIMARY KEY (`IDMedicao`),
  UNIQUE KEY `IDMedicao_UNIQUE` (`IDMedicao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicoesluminosidade`
--

LOCK TABLES `medicoesluminosidade` WRITE;
/*!40000 ALTER TABLE `medicoesluminosidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicoesluminosidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicoesluminosidadelog`
--

DROP TABLE IF EXISTS `medicoesluminosidadelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `medicoesluminosidadelog` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DataHoraMedicao_OLD` timestamp NULL DEFAULT NULL,
  `DataHoraMedicao_NEW` timestamp NULL DEFAULT NULL,
  `ValorMedicaoLuminosidade_OLD` decimal(8,2) DEFAULT NULL,
  `ValorMedicaoLuminosidade_NEW` decimal(8,2) DEFAULT NULL,
  `IDMedicao_OLD` int(11) DEFAULT NULL,
  `IDMedicao_NEW` int(11) DEFAULT NULL,
  `Operacao` varchar(20) NOT NULL,
  `Utilizador` varchar(45) NOT NULL,
  `DataHora` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicoesluminosidadelog`
--

LOCK TABLES `medicoesluminosidadelog` WRITE;
/*!40000 ALTER TABLE `medicoesluminosidadelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicoesluminosidadelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicoestemperatura`
--

DROP TABLE IF EXISTS `medicoestemperatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `medicoestemperatura` (
  `IDMedicao` int(11) NOT NULL,
  `ValorMedicaoTemperatura` decimal(8,2) NOT NULL,
  `DataHoraMedicao` timestamp NOT NULL,
  PRIMARY KEY (`IDMedicao`),
  UNIQUE KEY `IDMedicao_UNIQUE` (`IDMedicao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicoestemperatura`
--

LOCK TABLES `medicoestemperatura` WRITE;
/*!40000 ALTER TABLE `medicoestemperatura` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicoestemperatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicoestemperaturalog`
--

DROP TABLE IF EXISTS `medicoestemperaturalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `medicoestemperaturalog` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DataHoraMedicao_OLD` timestamp NULL DEFAULT NULL,
  `DataHoraMedicao_NEW` timestamp NULL DEFAULT NULL,
  `ValorMedicaoTemperatura_OLD` decimal(8,2) DEFAULT NULL,
  `ValorMedicaoTemperatura_NEW` decimal(8,2) DEFAULT NULL,
  `IDMedicao_OLD` int(11) DEFAULT NULL,
  `IDMedicao_NEW` int(11) DEFAULT NULL,
  `Operacao` varchar(20) NOT NULL,
  `Utilizador` varchar(45) NOT NULL,
  `DataHora` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicoestemperaturalog`
--

LOCK TABLES `medicoestemperaturalog` WRITE;
/*!40000 ALTER TABLE `medicoestemperaturalog` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicoestemperaturalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sistema`
--

DROP TABLE IF EXISTS `sistema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sistema` (
  `LimiteInferiorTemperatura` decimal(8,2) NOT NULL,
  `LimiteSuperiorTemperatura` decimal(8,2) NOT NULL,
  `LimiteInferiorLuz` decimal(8,2) NOT NULL,
  `LimiteSuperiorLuz` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sistema`
--

LOCK TABLES `sistema` WRITE;
/*!40000 ALTER TABLE `sistema` DISABLE KEYS */;
/*!40000 ALTER TABLE `sistema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sistemalog`
--

DROP TABLE IF EXISTS `sistemalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sistemalog` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LimiteInferiorTemperatura_OLD` decimal(8,2) DEFAULT NULL,
  `LimiteInferiorTemperatura_NEW` decimal(8,2) DEFAULT NULL,
  `LimiteSuperiorTemperatura_OLD` decimal(8,2) DEFAULT NULL,
  `LimiteSuperiorTemperatura_NEW` decimal(8,2) DEFAULT NULL,
  `LimiteInferiorLuz_OLD` decimal(8,2) DEFAULT NULL,
  `LimiteInferiorLuz_NEW` decimal(8,2) DEFAULT NULL,
  `LimiteSuperiorLuz_OLD` decimal(8,2) DEFAULT NULL,
  `LimiteSuperiorLuz_NEW` decimal(8,2) DEFAULT NULL,
  `Operacao` varchar(20) NOT NULL,
  `Utilizador` varchar(45) NOT NULL,
  `DataHora` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sistemalog`
--

LOCK TABLES `sistemalog` WRITE;
/*!40000 ALTER TABLE `sistemalog` DISABLE KEYS */;
/*!40000 ALTER TABLE `sistemalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variaveis`
--

DROP TABLE IF EXISTS `variaveis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `variaveis` (
  `IDVariavel` int(11) NOT NULL,
  `NomeVariavel` varchar(100) NOT NULL,
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
INSERT INTO `variaveis` (`IDVariavel`, `NomeVariavel`) VALUES (1,'Variavel de Teste'),(2,'Variavel de Teste 2');
/*!40000 ALTER TABLE `variaveis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variaveislog`
--

DROP TABLE IF EXISTS `variaveislog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `variaveislog` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDVariavel_OLD` int(11) DEFAULT NULL,
  `IDVariavel_NEW` int(11) DEFAULT NULL,
  `NomeVariavel_OLD` varchar(100) DEFAULT NULL,
  `NomeVariavel_NEW` varchar(100) DEFAULT NULL,
  `Operacao` varchar(20) NOT NULL,
  `Utilizador` varchar(45) NOT NULL,
  `DataHora` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variaveislog`
--

LOCK TABLES `variaveislog` WRITE;
/*!40000 ALTER TABLE `variaveislog` DISABLE KEYS */;
/*!40000 ALTER TABLE `variaveislog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variaveismedidas`
--

DROP TABLE IF EXISTS `variaveismedidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
INSERT INTO `variaveismedidas` (`IDVariavel_Variaveis`, `IDCultura_Cultura`, `LimiteInferior`, `LimiteSuperior`) VALUES (1,1,30.00,40.00),(2,1,30.00,40.00),(2,2,30.00,40.00),(2,3,30.00,40.00);
/*!40000 ALTER TABLE `variaveismedidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variaveismedidaslog`
--

DROP TABLE IF EXISTS `variaveismedidaslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `variaveismedidaslog` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LimiteInferior_OLD` decimal(8,2) DEFAULT NULL,
  `LimiteInferior_NEW` decimal(8,2) DEFAULT NULL,
  `LimiteSuperior_OLD` decimal(8,2) DEFAULT NULL,
  `LimiteSuperior_NEW` decimal(8,2) DEFAULT NULL,
  `IDVariavel_Variaveis_OLD` int(11) DEFAULT NULL,
  `IDVariavel_Variaveis_NEW` int(11) DEFAULT NULL,
  `IDCultura_Cultura_OLD` int(11) DEFAULT NULL,
  `IDCultura_Cultura_NEW` int(11) DEFAULT NULL,
  `Operacao` varchar(20) NOT NULL,
  `Utilizador` varchar(45) NOT NULL,
  `DataHora` timestamp NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variaveismedidaslog`
--

LOCK TABLES `variaveismedidaslog` WRITE;
/*!40000 ALTER TABLE `variaveismedidaslog` DISABLE KEYS */;
/*!40000 ALTER TABLE `variaveismedidaslog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_mysql_origem'
--

--
-- Dumping routines for database 'db_mysql_origem'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-05  9:52:26
