-- --------------------------------------------------------
-- Hôte :                        localhost
-- Version du serveur:           5.7.24 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Listage de la structure de la table analyses. client
CREATE TABLE IF NOT EXISTS `client` (
  `codeClient` varchar(50) NOT NULL DEFAULT '',
  `nom` varchar(50) NOT NULL DEFAULT '',
  `cpclient` varchar(5) NOT NULL DEFAULT '',
  `villeclient` varchar(50) NOT NULL DEFAULT '',
  `tel` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`codeClient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Listage des données de la table analyses.client : ~0 rows (environ)
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
/*!40000 ALTER TABLE `client` ENABLE KEYS */;

-- Listage de la structure de la table analyses. echantillon
CREATE TABLE IF NOT EXISTS `echantillon` (
  `codeEchantillon` int(8) NOT NULL,
  `dateEntree` date NOT NULL,
  `codeClient` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`codeEchantillon`),
  KEY `FK_echantillon_client` (`codeClient`),
  CONSTRAINT `FK_echantillon_client` FOREIGN KEY (`codeClient`) REFERENCES `client` (`codeClient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Listage des données de la table analyses.echantillon : ~0 rows (environ)
/*!40000 ALTER TABLE `echantillon` DISABLE KEYS */;
/*!40000 ALTER TABLE `echantillon` ENABLE KEYS */;

-- Listage de la structure de la table analyses. realiser
CREATE TABLE IF NOT EXISTS `realiser` (
  `codeEchantillon` int(8) NOT NULL,
  `refTypeAnalyse` int(8) NOT NULL,
  `dateRealisation` date DEFAULT NULL,
  PRIMARY KEY (`codeEchantillon`,`refTypeAnalyse`),
  KEY `FK_realiser_typeanalyse` (`refTypeAnalyse`),
  CONSTRAINT `FK_realiser_echantillon` FOREIGN KEY (`codeEchantillon`) REFERENCES `echantillon` (`codeEchantillon`),
  CONSTRAINT `FK_realiser_typeanalyse` FOREIGN KEY (`refTypeAnalyse`) REFERENCES `typeanalyse` (`refTypeAnalyse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Listage des données de la table analyses.realiser : ~0 rows (environ)
/*!40000 ALTER TABLE `realiser` DISABLE KEYS */;
/*!40000 ALTER TABLE `realiser` ENABLE KEYS */;

-- Listage de la structure de la table analyses. typeanalyse
CREATE TABLE IF NOT EXISTS `typeanalyse` (
  `refTypeAnalyse` int(8) NOT NULL AUTO_INCREMENT,
  `designation` varchar(50) DEFAULT NULL,
  `prixTypeAnalyse` float DEFAULT NULL,
  PRIMARY KEY (`refTypeAnalyse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Listage des données de la table analyses.typeanalyse : ~0 rows (environ)
/*!40000 ALTER TABLE `typeanalyse` DISABLE KEYS */;
/*!40000 ALTER TABLE `typeanalyse` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
