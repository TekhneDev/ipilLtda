/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET SQL_NOTES=0 */;
CREATE DATABASE IF NOT EXISTS ipilltda;
DROP TABLE IF EXISTS clientes;
CREATE TABLE `clientes` (
  `cliID` int NOT NULL AUTO_INCREMENT,
  `cliNome` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cliDtInclusao` date DEFAULT NULL,
  `cliEndereco` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cliBairro` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cliEmail` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cliTel` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cliCidade` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cliUF` varchar(2) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`cliID`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS produtos;
CREATE TABLE `produtos` (
  `proID` int NOT NULL AUTO_INCREMENT,
  `proNome` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `proQtd` int DEFAULT NULL,
  `proValorUnitario` decimal(10,2) DEFAULT NULL,
  `proValorTotal` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`proID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS vendas;
CREATE TABLE `vendas` (
  `venID` int NOT NULL AUTO_INCREMENT,
  `cliID` int NOT NULL,
  `proID` int NOT NULL,
  `venData` date DEFAULT NULL,
  `venQtd` int DEFAULT NULL,
  `venValorUnitario` decimal(10,2) DEFAULT NULL,
  `venValorTotal` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`venID`,`cliID`,`proID`),
  KEY `cliID` (`cliID`),
  KEY `proID` (`proID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;