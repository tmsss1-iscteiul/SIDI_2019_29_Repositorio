-- MySQL dump 10.16  Distrib 10.1.38-MariaDB, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: db_mysql_destino
-- ------------------------------------------------------
-- Server version	10.1.38-MariaDB

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
-- Current Database: `db_mysql_destino`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `db_mysql_destino` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `db_mysql_destino`;

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
  `Email_OLD` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email_NEW` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NomeInvestigador_OLD` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NomeInvestigador_NEW` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CategoriaProfissional_OLD` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CategoriaProfissional_NEW` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Operacao` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Utilizador` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DataHora` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investigador_log`
--

LOCK TABLES `investigador_log` WRITE;
/*!40000 ALTER TABLE `investigador_log` DISABLE KEYS */;
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
  `DataHoraMedicao_OLD` timestamp NULL DEFAULT NULL,
  `DataHoraMedicao_NEW` timestamp NULL DEFAULT NULL,
  `ValorMedicaoLuminosidade_OLD` decimal(8,2) DEFAULT NULL,
  `ValorMedicaoLuminosidade_NEW` decimal(8,2) DEFAULT NULL,
  `IDMedicao_OLD` int(11) DEFAULT NULL,
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
/*!40000 ALTER TABLE `medicoesluminosidade_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicoestemperatura_log`
--

DROP TABLE IF EXISTS `medicoestemperatura_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicoestemperatura_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DataHoraMedicao_OLD` timestamp NULL DEFAULT NULL,
  `DataHoraMedicao_NEW` timestamp NULL DEFAULT NULL,
  `ValorMedicaoTemperatura_OLD` decimal(8,2) DEFAULT NULL,
  `ValorMedicaoTemperatura_NEW` decimal(8,2) DEFAULT NULL,
  `IDMedicao_OLD` int(11) DEFAULT NULL,
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
/*!40000 ALTER TABLE `variaveismedidas_log` ENABLE KEYS */;
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
INSERT INTO `cultura` (`IDCultura`, `Email_Investigador`, `NomeCultura`, `DescricaoCultura`) VALUES (1,'root@localhost','Cultura de teste do RooT','TESTE ROOT'),(2,'root@localhost','Cultura de teste do RooT 2','TESTE ROOT 2'),(4,'root@localhost','Cultura de teste do RooT 2','TESTE ROOT 2'),(5,'investigador@hotmail.com','Cultura de teste do investigador1','TESTE tt'),(6,'email2@teste.tt','Cultura de teste do tt','TESTE tt');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cultura_log`
--

LOCK TABLES `cultura_log` WRITE;
/*!40000 ALTER TABLE `cultura_log` DISABLE KEYS */;
INSERT INTO `cultura_log` (`ID`, `IDCultura_OLD`, `IDCultura_NEW`, `NomeCultura_OLD`, `NomeCultura_NEW`, `DescricaoCultura_OLD`, `DescricaoCultura_NEW`, `Email_Investigador_OLD`, `Email_Investigador_NEW`, `Flag_Migracao`, `Operacao`, `Utilizador`, `DataHora`) VALUES (1,NULL,4,NULL,'Cultura de teste do RooT 2',NULL,'TESTE ROOT 2',NULL,'root@localhost',0,'I','root@localhost','2019-03-05 11:53:34'),(2,NULL,5,NULL,'Cultura de teste do investigador1',NULL,'TESTE tt',NULL,'investigador1@hotmail.com',0,'I','root@localhost','2019-03-05 12:41:26'),(3,NULL,6,NULL,'Cultura de teste do tt',NULL,'TESTE tt',NULL,'email2@teste.tt',0,'I','root@localhost','2019-03-16 20:46:03'),(4,NULL,7,NULL,'Cultura de teste do tt',NULL,'TESTE tt',NULL,'email2@teste.tt',0,'I','root@localhost','2019-03-16 20:46:12'),(5,7,NULL,'Cultura de teste do tt','nome da cultura','TESTE tt',NULL,'email2@teste.tt',NULL,0,'U','root@localhost','2019-03-16 20:47:12'),(6,7,NULL,'nome da cultura',NULL,'TESTE tt',NULL,'email2@teste.tt',NULL,0,'D','root@localhost','2019-03-16 20:52:17');
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
INSERT INTO `investigador` (`Email`, `NomeInvestigador`, `CategoriaProfissional`) VALUES ('email2@teste.tt','test','test'),('email3@teste.tt','test','test'),('email@hotmail.com','outronome','outracategoria'),('investigador1@hotmail.com','Investigador 1','Professor'),('investigador@hotmail.com','Investigador 1','Professor'),('root@localhost','ROOT','ROOT');
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `investigador_log`
--

LOCK TABLES `investigador_log` WRITE;
/*!40000 ALTER TABLE `investigador_log` DISABLE KEYS */;
INSERT INTO `investigador_log` (`ID`, `Email_OLD`, `Email_NEW`, `NomeInvestigador_OLD`, `NomeInvestigador_NEW`, `CategoriaProfissional_OLD`, `CategoriaProfissional_NEW`, `Flag_Migracao`, `Operacao`, `Utilizador`, `DataHora`) VALUES (1,NULL,'email2@teste.tt',NULL,'test',NULL,'test',0,'I','root@localhost','2019-03-05 11:52:53'),(2,NULL,'email3@teste.tt',NULL,'test',NULL,'test',0,'I','root@localhost','2019-03-05 11:52:54'),(3,NULL,'investigador1@hotmail.com',NULL,'Investigador 1',NULL,'Professor',0,'I','root@localhost','2019-03-05 12:39:14'),(4,'investigador1@hotmail.com','investigador@hotmail.com','Investigador 1',NULL,'Professor',NULL,0,'U','root@localhost','2019-03-05 12:42:59'),(5,NULL,'investigador2@hotmail.com',NULL,'Investigador 1',NULL,'Professor',0,'I','root@localhost','2019-03-05 12:54:28'),(6,'email1@teste.tt',NULL,'test',NULL,'test',NULL,0,'D','root@localhost','2019-03-09 09:50:44'),(19,NULL,'tesrtemail@teste.tt',NULL,'test',NULL,'test',0,'I','root@localhost','2019-03-16 20:40:22'),(20,'investigador9999@hotmail.com',NULL,'test',NULL,'test',NULL,0,'D','root@localhost','2019-03-16 20:43:15'),(21,NULL,'tesrtemail@teste.tt',NULL,'test',NULL,'test',0,'I','root@localhost','2019-03-16 20:43:21'),(22,'tesrtemail@teste.tt','investigador9999@hotmail.com','test',NULL,'test',NULL,0,'U','root@localhost','2019-03-16 20:43:23'),(23,'investigador9999@hotmail.com',NULL,'test',NULL,'test',NULL,0,'D','root@localhost','2019-03-16 20:43:26'),(24,NULL,'email@hotmail.com',NULL,'nome',NULL,'categoria',0,'I','root@localhost','2019-03-17 16:04:08'),(25,'email@hotmail.com',NULL,'nome','outronome','categoria',NULL,0,'U','root@localhost','2019-03-17 16:09:14'),(26,'email@hotmail.com',NULL,'outronome',NULL,'categoria','outracategoria',0,'U','root@localhost','2019-03-17 16:09:31'),(27,'email@hotmail.com','email@gmail.com','outronome',NULL,'outracategoria',NULL,0,'U','root@localhost','2019-03-17 16:09:54'),(28,'email@gmail.com','email@hotmail.com','outronome',NULL,'outracategoria',NULL,0,'U','root@localhost','2019-03-17 16:11:35'),(29,'email@hotmail.com',NULL,'outronome','dawda','outracategoria',NULL,0,'U','root@localhost','2019-03-17 16:11:56'),(30,'email@hotmail.com',NULL,'dawda',NULL,'outracategoria','dawda',0,'U','root@localhost','2019-03-17 16:11:56'),(31,'email@hotmail.com',NULL,'dawda','outronome','dawda',NULL,0,'U','root@localhost','2019-03-17 16:12:04'),(32,'email@hotmail.com',NULL,'outronome',NULL,'dawda','outracategoria',0,'U','root@localhost','2019-03-17 16:12:04'),(33,'email@hotmail.com','email@gmail.com','outronome',NULL,'outracategoria',NULL,0,'U','root@localhost','2019-03-17 16:13:56'),(34,'email@gmail.com','email@hotmail.com','outronome',NULL,'outracategoria',NULL,0,'U','root@localhost','2019-03-17 16:13:58'),(35,NULL,'email2@hotmail.com',NULL,'nome',NULL,'categoria',0,'I','root@localhost','2019-03-17 16:19:40'),(36,'email2@hotmail.com',NULL,'nome','outronome','categoria',NULL,0,'U','root@localhost','2019-03-17 16:19:53'),(37,'email2@hotmail.com',NULL,'outronome','dawda','categoria',NULL,0,'U','root@localhost','2019-03-17 16:19:59'),(38,'email2@hotmail.com',NULL,'dawda',NULL,'categoria','dawda',0,'U','root@localhost','2019-03-17 16:19:59'),(39,'email2@hotmail.com',NULL,'dawda',NULL,'dawda','outracategoria',0,'U','root@localhost','2019-03-17 16:20:06'),(40,'email2@hotmail.com','email2@gmail.com','dawda',NULL,'outracategoria',NULL,0,'U','root@localhost','2019-03-17 16:20:17'),(41,'email2@gmail.com',NULL,'dawda',NULL,'outracategoria',NULL,0,'D','root@localhost','2019-03-17 16:31:55'),(42,NULL,'email2@hotmail.com',NULL,'nome',NULL,'categoria',0,'I','root@localhost','2019-03-17 16:38:16'),(43,'email2@hotmail.com',NULL,'nome',NULL,'categoria',NULL,0,'D','root@localhost','2019-03-17 16:39:39'),(44,NULL,'email2@hotmail.com',NULL,'nome',NULL,'categoria',0,'I','root@localhost','2019-03-17 16:40:15'),(45,'email2@hotmail.com',NULL,'nome',NULL,'categoria',NULL,0,'D','root@localhost','2019-03-17 16:40:18'),(46,NULL,'email2@hotmail.com',NULL,'nome',NULL,'categoria',0,'I','root@localhost','2019-03-17 16:40:38'),(47,'email2@hotmail.com',NULL,'nome',NULL,'categoria',NULL,0,'D','root@localhost','2019-03-17 16:40:48');
/*!40000 ALTER TABLE `investigador_log` ENABLE KEYS */;
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
INSERT INTO `medicoes` (`NumeroMedicao`, `IDVariaveis_VariaveisMedidas`, `IDCultura_VariaveisMedidas`, `ValorMedicao`, `DataHoraMedicao`) VALUES (1,1,1,345.00,'2019-03-04 20:23:32'),(2,1,1,0.00,'2019-03-04 20:23:32'),(3,1,1,0.00,'2019-03-04 20:23:32'),(4,1,1,33.00,'2019-03-04 20:23:32'),(5,1,1,10000.00,'2019-03-04 20:23:32'),(7,1,2,60.00,'2019-03-05 11:10:31'),(8,1,2,650.00,'2019-03-05 11:54:41'),(9,1,2,320.00,'2019-03-05 11:54:52');
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicoes_consultados_log`
--

LOCK TABLES `medicoes_consultados_log` WRITE;
/*!40000 ALTER TABLE `medicoes_consultados_log` DISABLE KEYS */;
INSERT INTO `medicoes_consultados_log` (`ID`, `IDMedicoes_LOG`, `NumeroMedicao`, `IDVariaveis_VariaveisMedidas`, `IDCultura_VariaveisMedidas`, `ValorMedicao`, `DataHoraMedicao`, `Flag_Migracao`, `Operacao_LOG`, `Utilizador_LOG`, `DataHora_LOG`) VALUES (1,NULL,1,1,1,345.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-05 11:00:52'),(2,NULL,2,1,1,0.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-05 11:00:52'),(4,NULL,4,1,1,33.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-05 11:00:52'),(5,NULL,5,1,1,10000.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-05 11:00:52'),(6,'15',1,1,1,345.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-05 11:02:33'),(7,'15',2,1,1,0.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-05 11:02:33'),(8,'15',3,1,1,0.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-05 11:02:33'),(9,'15',4,1,1,33.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-05 11:02:33'),(10,'15',5,1,1,10000.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-05 11:02:33'),(11,'16',2,1,1,0.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-05 11:02:54'),(12,'16',3,1,1,0.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-05 11:02:54'),(13,'19',1,1,1,345.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-05 11:05:46'),(14,'19',2,1,1,0.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-05 11:05:46'),(15,'19',3,1,1,0.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-05 11:05:46'),(16,'19',4,1,1,33.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-05 11:05:46'),(17,'19',5,1,1,10000.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-05 11:05:46'),(18,'20',1,1,1,345.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-05 11:07:54'),(19,'20',2,1,1,0.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-05 11:07:54'),(20,'20',3,1,1,0.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-05 11:07:54'),(21,'20',4,1,1,33.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-05 11:07:54'),(22,'20',5,1,1,10000.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-05 11:07:54'),(25,'23',1,1,1,345.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-05 11:10:55'),(26,'23',2,1,1,0.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-05 11:10:55'),(27,'23',3,1,1,0.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-05 11:10:55'),(28,'23',4,1,1,33.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-05 11:10:55'),(29,'23',5,1,1,10000.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-05 11:10:55'),(30,'23',7,1,2,60.00,'2019-03-05 11:10:31',0,'S','root@localhost','2019-03-05 11:10:55'),(32,'24',1,1,1,345.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-05 11:26:33'),(33,'24',2,1,1,0.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-05 11:26:33'),(34,'24',3,1,1,0.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-05 11:26:33'),(35,'24',4,1,1,33.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-05 11:26:33'),(36,'24',5,1,1,10000.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-05 11:26:33'),(37,'24',7,1,2,60.00,'2019-03-05 11:10:31',0,'S','root@localhost','2019-03-05 11:26:33'),(39,'30',1,1,1,345.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-05 12:55:15'),(40,'30',2,1,1,0.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-05 12:55:15'),(41,'30',3,1,1,0.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-05 12:55:15'),(42,'30',4,1,1,33.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-05 12:55:15'),(43,'30',5,1,1,10000.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-05 12:55:15'),(44,'30',7,1,2,60.00,'2019-03-05 11:10:31',0,'S','root@localhost','2019-03-05 12:55:15'),(45,'30',8,1,2,650.00,'2019-03-05 11:54:41',0,'S','root@localhost','2019-03-05 12:55:15'),(46,'30',9,1,2,320.00,'2019-03-05 11:54:52',0,'S','root@localhost','2019-03-05 12:55:15'),(47,'31',1,1,1,345.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-09 09:43:49'),(48,'31',2,1,1,0.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-09 09:43:49'),(49,'31',3,1,1,0.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-09 09:43:49'),(50,'31',4,1,1,33.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-09 09:43:49'),(51,'31',5,1,1,10000.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-09 09:43:49'),(52,'31',7,1,2,60.00,'2019-03-05 11:10:31',0,'S','root@localhost','2019-03-09 09:43:49'),(53,'31',8,1,2,650.00,'2019-03-05 11:54:41',0,'S','root@localhost','2019-03-09 09:43:49'),(54,'31',9,1,2,320.00,'2019-03-05 11:54:52',0,'S','root@localhost','2019-03-09 09:43:49'),(62,'32',1,1,1,345.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-09 11:35:39'),(63,'32',2,1,1,0.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-09 11:35:39'),(64,'32',3,1,1,0.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-09 11:35:39'),(65,'32',4,1,1,33.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-09 11:35:39'),(66,'32',5,1,1,10000.00,'2019-03-04 20:23:32',0,'S','root@localhost','2019-03-09 11:35:39'),(67,'32',7,1,2,60.00,'2019-03-05 11:10:31',0,'S','root@localhost','2019-03-09 11:35:39'),(68,'32',8,1,2,650.00,'2019-03-05 11:54:41',0,'S','root@localhost','2019-03-09 11:35:39'),(69,'32',9,1,2,320.00,'2019-03-05 11:54:52',0,'S','root@localhost','2019-03-09 11:35:39');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicoes_log`
--

LOCK TABLES `medicoes_log` WRITE;
/*!40000 ALTER TABLE `medicoes_log` DISABLE KEYS */;
INSERT INTO `medicoes_log` (`ID`, `NumeroMedicao_OLD`, `NumeroMedicao_NEW`, `DataHoraMedicao_OLD`, `DataHoraMedicao_NEW`, `ValorMedicao_OLD`, `ValorMedicao_NEW`, `IDVariaveis_VariaveisMedidas_OLD`, `IDVariaveis_VariaveisMedidas_NEW`, `IDCultura_VariaveisMedidas_OLD`, `IDCultura_VariaveisMedidas_NEW`, `Flag_Migracao`, `Operacao`, `Utilizador`, `DataHora`) VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'S','root@localhost','2019-03-05 09:57:40'),(2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'S','root@localhost','2019-03-05 09:57:44'),(3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'S','root@localhost','2019-03-05 09:57:47'),(4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'S','root@localhost','2019-03-05 10:16:07'),(5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'S','root@localhost','2019-03-05 10:16:12'),(6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'S','root@localhost','2019-03-05 10:16:27'),(7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'S','root@localhost','2019-03-05 10:16:40'),(8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'S','root@localhost','2019-03-05 10:23:51'),(9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'S','root@localhost','2019-03-05 10:24:00'),(10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'S','root@localhost','2019-03-05 10:24:15'),(11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'S','root@localhost','2019-03-05 10:55:28'),(12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'S','root@localhost','2019-03-05 10:58:36'),(13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'S','root@localhost','2019-03-05 10:59:56'),(14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'S','root@localhost','2019-03-05 11:00:52'),(15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'S','root@localhost','2019-03-05 11:02:33'),(16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'S','root@localhost','2019-03-05 11:02:54'),(17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'S','root@localhost','2019-03-05 11:04:06'),(18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'S','root@localhost','2019-03-05 11:05:28'),(19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'S','root@localhost','2019-03-05 11:05:46'),(20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'S','root@localhost','2019-03-05 11:07:54'),(21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'S','root@localhost','2019-03-05 11:08:18'),(22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'S','root@localhost','2019-03-05 11:08:49'),(23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'S','root@localhost','2019-03-05 11:10:55'),(24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'S','root@localhost','2019-03-05 11:26:33'),(25,NULL,8,NULL,'2019-03-05 11:54:41',NULL,650.00,NULL,1,NULL,2,0,'I','root@localhost','2019-03-05 11:54:41'),(26,NULL,9,NULL,'2019-03-05 11:54:52',NULL,320.00,NULL,1,NULL,2,0,'I','root@localhost','2019-03-05 11:54:52'),(27,5,NULL,'2019-03-04 20:23:32',NULL,10000.00,NULL,1,NULL,1,NULL,0,'U','root@localhost','2019-03-05 11:55:24'),(28,5,NULL,'2019-03-04 20:23:32',NULL,10000.00,10.00,1,NULL,1,NULL,0,'U','root@localhost','2019-03-05 11:55:57'),(29,5,NULL,'2019-03-04 20:23:32',NULL,10.00,10000.00,1,NULL,1,NULL,0,'U','root@localhost','2019-03-05 11:56:29'),(30,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'S','root@localhost','2019-03-05 12:55:15'),(31,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'S','root@localhost','2019-03-09 09:43:49'),(32,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'S','root@localhost','2019-03-09 11:35:39');
/*!40000 ALTER TABLE `medicoes_log` ENABLE KEYS */;
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
/*!40000 ALTER TABLE `medicoesluminosidade` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `medicoesluminosidade_AFTER_INSERT` AFTER INSERT ON `medicoesluminosidade` FOR EACH ROW BEGIN
	insert into medicoesluminosidade_log (
											DataHoraMedicao_OLD, 
                                            DataHoraMedicao_NEW, 
                                            ValorMedicaoLuminosidade_OLD, 
                                            ValorMedicaoLuminosidade_NEW, 
                                            IDMedicao_OLD, 
                                            IDMedicao_NEW, 
                                            Operacao, 
                                            Utilizador, 
                                            DataHora
                                            )
	values (
			null, 
            new.DataHoraMedicao,
            null,
            new.ValorMedicaoLuminosidade,
            null,
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
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `medicoesluminosidade_AFTER_UPDATE` AFTER UPDATE ON `medicoesluminosidade` FOR EACH ROW BEGIN
	insert into medicoesluminosidade_log (
											DataHoraMedicao_OLD, 
                                            DataHoraMedicao_NEW, 
                                            ValorMedicaoLuminosidade_OLD, 
                                            ValorMedicaoLuminosidade_NEW, 
                                            IDMedicao_OLD, 
                                            IDMedicao_NEW, 
                                            Operacao, 
                                            Utilizador, 
                                            DataHora
                                            )
	values (
			old.DataHoraMedicao,
            case
				when old.DataHoraMedicao <> new.DataHoraMedicao then new.DataHoraMedicao
                else null
			end,
            old.ValorMedicaoLuminosidade,
            case
				when old.ValorMedicaoLuminosidade <> new.ValorMedicaoLuminosidade then new.ValorMedicaoLuminosidade
                else null
			end,
            old.IDMedicao,
            case
				when old.IDMedicao <> new.IDMedicao then new.IDMedicao
                else null
            end,
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
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `medicoesluminosidade_AFTER_DELETE` AFTER DELETE ON `medicoesluminosidade` FOR EACH ROW BEGIN
		insert into medicoesluminosidade_log (
											DataHoraMedicao_OLD, 
                                            DataHoraMedicao_NEW, 
                                            ValorMedicaoLuminosidade_OLD, 
                                            ValorMedicaoLuminosidade_NEW, 
                                            IDMedicao_OLD, 
                                            IDMedicao_NEW, 
                                            Operacao, 
                                            Utilizador, 
                                            DataHora
                                            )
	values (
			old.DataHoraMedicao,
            null,
            old.ValorMedicaoLuminosidade,
            null,
            old.IDMedicao,
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
-- Table structure for table `medicoesluminosidade_log`
--

DROP TABLE IF EXISTS `medicoesluminosidade_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicoesluminosidade_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DataHoraMedicao_OLD` timestamp NULL DEFAULT NULL,
  `DataHoraMedicao_NEW` timestamp NULL DEFAULT NULL,
  `ValorMedicaoLuminosidade_OLD` decimal(8,2) DEFAULT NULL,
  `ValorMedicaoLuminosidade_NEW` decimal(8,2) DEFAULT NULL,
  `IDMedicao_OLD` int(11) DEFAULT NULL,
  `IDMedicao_NEW` int(11) DEFAULT NULL,
  `Flag_Migracao` tinyint(4) NOT NULL DEFAULT '0',
  `Operacao` varchar(20) NOT NULL,
  `Utilizador` varchar(45) NOT NULL,
  `DataHora` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicoesluminosidade_log`
--

LOCK TABLES `medicoesluminosidade_log` WRITE;
/*!40000 ALTER TABLE `medicoesluminosidade_log` DISABLE KEYS */;
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
/*!40000 ALTER TABLE `medicoestemperatura` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `medicoestemperatura_AFTER_INSERT` AFTER INSERT ON `medicoestemperatura` FOR EACH ROW BEGIN
	insert into medicoestemperatura_log (
										DataHoraMedicao_OLD, 
                                        DataHoraMedicao_NEW, 
                                        ValorMedicaoTemperatura_OLD, 
                                        ValorMedicaoTemperatura_NEW, 
                                        IDMedicao_OLD, 
                                        IDMedicao_NEW, 
                                        Operacao, 
                                        Utilizador, 
                                        DataHora
                                        )
	values (
			null,
            new.DataHoraMedicao,
            null,
            new.ValorMedicaoTemperatura,
            null,
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
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `medicoestemperatura_AFTER_UPDATE` AFTER UPDATE ON `medicoestemperatura` FOR EACH ROW BEGIN
	insert into medicoestemperatura_log (
										DataHoraMedicao_OLD, 
                                        DataHoraMedicao_NEW, 
                                        ValorMedicaoTemperatura_OLD, 
                                        ValorMedicaoTemperatura_NEW, 
                                        IDMedicao_OLD, 
                                        IDMedicao_NEW, 
                                        Operacao, 
                                        Utilizador, 
                                        DataHora
                                        )
	values (
			old.DataHoraMedicao,
            case
				when old.DataHoraMedicao <> new.DataHoraMedicao then new.DataHoraMedicao
                else null
			end,
            old.ValorMedicaoTemperatura,
            case
				when old.ValorMedicaoTemperatura <> new.ValorMedicaoTemperatura then new.ValorMedicaoTemperatura
                else null
			end,
            old.IDMedicao,
            case
				when old.IDMedicao <> new.IDMedicao then new.IDMedicao
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `medicoestemperatura_AFTER_DELETE` AFTER DELETE ON `medicoestemperatura` FOR EACH ROW BEGIN
		insert into medicoestemperatura_log (
										DataHoraMedicao_OLD, 
                                        DataHoraMedicao_NEW, 
                                        ValorMedicaoTemperatura_OLD, 
                                        ValorMedicaoTemperatura_NEW, 
                                        IDMedicao_OLD, 
                                        IDMedicao_NEW, 
                                        Operacao, 
                                        Utilizador, 
                                        DataHora
                                        )
	values (
			old.DataHoraMedicao,
            null,
            old.ValorMedicaoTemperatura,
            null,
            old.IDMedicao,
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
-- Table structure for table `medicoestemperatura_log`
--

DROP TABLE IF EXISTS `medicoestemperatura_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicoestemperatura_log` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DataHoraMedicao_OLD` timestamp NULL DEFAULT NULL,
  `DataHoraMedicao_NEW` timestamp NULL DEFAULT NULL,
  `ValorMedicaoTemperatura_OLD` decimal(8,2) DEFAULT NULL,
  `ValorMedicaoTemperatura_NEW` decimal(8,2) DEFAULT NULL,
  `IDMedicao_OLD` int(11) DEFAULT NULL,
  `IDMedicao_NEW` int(11) DEFAULT NULL,
  `Flag_Migracao` tinyint(4) NOT NULL DEFAULT '0',
  `Operacao` varchar(20) NOT NULL,
  `Utilizador` varchar(45) NOT NULL,
  `DataHora` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicoestemperatura_log`
--

LOCK TABLES `medicoestemperatura_log` WRITE;
/*!40000 ALTER TABLE `medicoestemperatura_log` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sistema_log`
--

LOCK TABLES `sistema_log` WRITE;
/*!40000 ALTER TABLE `sistema_log` DISABLE KEYS */;
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
INSERT INTO `variaveis` (`IDVariavel`, `NomeVariavel`) VALUES (1,'Variavel de Teste'),(2,'Variavel de Teste 2'),(3,'Variavel de Teste 3');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variaveis_log`
--

LOCK TABLES `variaveis_log` WRITE;
/*!40000 ALTER TABLE `variaveis_log` DISABLE KEYS */;
INSERT INTO `variaveis_log` (`ID`, `IDVariavel_OLD`, `IDVariavel_NEW`, `NomeVariavel_OLD`, `NomeVariavel_NEW`, `Flag_Migracao`, `Operacao`, `Utilizador`, `DataHora`) VALUES (1,NULL,3,NULL,'Variavel de Teste 3',0,'I','root@localhost','2019-03-05 11:53:56'),(2,3,NULL,'Variavel de Teste 3',NULL,0,'D','root@localhost','2019-03-09 09:46:23'),(3,NULL,3,NULL,'Variavel de Teste 3',0,'I','root@localhost','2019-03-16 20:52:36'),(4,NULL,4,NULL,'Variavel de Teste 4',0,'I','root@localhost','2019-03-16 20:52:57'),(5,4,NULL,'Variavel de Teste 4',' teste',0,'U','root@localhost','2019-03-16 20:55:43'),(6,4,NULL,' teste',NULL,0,'D','root@localhost','2019-03-16 20:56:35');
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
INSERT INTO `variaveismedidas` (`IDVariavel_Variaveis`, `IDCultura_Cultura`, `LimiteInferior`, `LimiteSuperior`) VALUES (1,1,30.00,40.00),(1,2,30.00,40.00),(2,1,30.00,40.00),(2,2,30.00,40.00),(2,4,30.00,40.00);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variaveismedidas_log`
--

LOCK TABLES `variaveismedidas_log` WRITE;
/*!40000 ALTER TABLE `variaveismedidas_log` DISABLE KEYS */;
INSERT INTO `variaveismedidas_log` (`ID`, `LimiteInferior_OLD`, `LimiteInferior_NEW`, `LimiteSuperior_OLD`, `LimiteSuperior_NEW`, `IDVariavel_Variaveis_OLD`, `IDVariavel_Variaveis_NEW`, `IDCultura_Cultura_OLD`, `IDCultura_Cultura_NEW`, `Flag_Migracao`, `Operacao`, `Utilizador`, `DataHora`) VALUES (1,NULL,30.00,NULL,40.00,NULL,2,NULL,4,0,'I','root@localhost','2019-03-05 11:54:21'),(2,NULL,30.00,NULL,40.00,NULL,3,NULL,4,0,'I','root@localhost','2019-03-16 20:59:43'),(3,NULL,30.00,NULL,40.00,NULL,3,NULL,5,0,'I','root@localhost','2019-03-16 20:59:57'),(4,30.00,0.00,40.00,NULL,3,NULL,4,NULL,0,'U','root@localhost','2019-03-16 21:00:36'),(5,30.00,0.00,40.00,NULL,3,NULL,5,NULL,0,'U','root@localhost','2019-03-16 21:00:36'),(6,0.00,NULL,40.00,NULL,3,NULL,4,NULL,0,'D','root@localhost','2019-03-16 21:01:31'),(7,0.00,NULL,40.00,NULL,3,NULL,5,NULL,0,'D','root@localhost','2019-03-16 21:01:31');
/*!40000 ALTER TABLE `variaveismedidas_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'db_mysql_origem'
--

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
		set @exec_querry = concat('GRANT ALL PRIVILEGES ON *.* TO \'', username, '\'@\'localhost\'');
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
/*!50003 DROP PROCEDURE IF EXISTS `SelectMedicoes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SelectMedicoes`(
IN NumeroMedicao_SP int(11), IN IDVariaveis_VariaveisMedidas_SP int(11), IN IDCultura_VariaveisMedidas_SP int(11), IN ValorMedicao_SP decimal(8,2), IN DataHoraMedicao_SP timestamp)
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
				when DataHoraMedicao_SP is null then 1
				else HDR.DataHoraMedicao = DataHoraMedicao_SP
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
						when DataHoraMedicao_SP is null then 1
						else HDR.DataHoraMedicao = DataHoraMedicao_SP
					end
				)
			order by HDR.NumeroMedicao;
    
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-17 17:10:18
