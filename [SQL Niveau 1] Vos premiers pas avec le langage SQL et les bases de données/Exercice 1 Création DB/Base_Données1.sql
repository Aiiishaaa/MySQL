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

-- Listage de la structure de la table basededonnées1. fournisseurs
CREATE TABLE IF NOT EXISTS `fournisseurs` (
  `num_F` int(8) NOT NULL,
  `nom` varchar(40) NOT NULL,
  `ville` varchar(40) NOT NULL,
  PRIMARY KEY (`num_F`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table basededonnées1. fournitures
CREATE TABLE IF NOT EXISTS `fournitures` (
  `num_F` int(8) NOT NULL,
  `code_p` int(8) NOT NULL,
  `quantite` int(8) unsigned NOT NULL,
  PRIMARY KEY (`num_F`,`code_p`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table basededonnées1. produits
CREATE TABLE IF NOT EXISTS `produits` (
  `code_p` int(8) NOT NULL,
  `libelle` varchar(40) NOT NULL,
  `origine` varchar(40) NOT NULL,
  `couleur` varchar(40) NOT NULL,
  PRIMARY KEY (`code_p`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Les données exportées n'étaient pas sélectionnées.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
