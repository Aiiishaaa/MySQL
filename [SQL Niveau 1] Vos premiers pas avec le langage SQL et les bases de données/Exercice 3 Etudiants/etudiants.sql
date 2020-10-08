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

-- Listage de la structure de la table etudiants. cours
CREATE TABLE IF NOT EXISTS `cours` (
  `code` varchar(50) NOT NULL,
  `nom_cours` varchar(50) DEFAULT NULL,
  `enseignant` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Listage des données de la table etudiants.cours : ~0 rows (environ)
/*!40000 ALTER TABLE `cours` DISABLE KEYS */;
INSERT INTO `cours` (`code`, `nom_cours`, `enseignant`) VALUES
	('001', 'Français', 'M. Robert'),
	('002', 'Mathématiques', 'Mme Langlois'),
	('003', 'Poésie', 'M. Sanguedolce'),
	('004', 'Cuisine', 'Mme Julien');
/*!40000 ALTER TABLE `cours` ENABLE KEYS */;

-- Listage de la structure de la table etudiants. etudiant
CREATE TABLE IF NOT EXISTS `etudiant` (
  `matricule` varchar(50) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `niveau` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`matricule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Listage des données de la table etudiants.etudiant : ~0 rows (environ)
/*!40000 ALTER TABLE `etudiant` DISABLE KEYS */;
INSERT INTO `etudiant` (`matricule`, `nom`, `prenom`, `date_naissance`, `niveau`) VALUES
	('e001', 'Pogba', 'Paul', '1992-09-16', 'M1'),
	('e002', 'Ribery', 'Franck', '1985-03-11', 'L1'),
	('e003', 'Neuer', 'Manuel', '1994-11-05', 'M2'),
	('e004', 'Coman', 'Kingsley', '1996-08-24', 'M1'),
	('e005', 'Boateng', 'Jérôme', '2000-06-11', 'L2'),
	('e006', 'Tolisso', 'Corentin', '2001-09-28', 'M1'),
	('e007', 'Lewamdowsky', 'Robert', '1993-07-12', 'M2'),
	('e008', 'Robben', 'Arjen', '1995-01-02', 'M1'),
	('e009', 'Müller', 'Thomas', '1998-07-12', 'L2');
/*!40000 ALTER TABLE `etudiant` ENABLE KEYS */;

-- Listage de la structure de la table etudiants. examen
CREATE TABLE IF NOT EXISTS `examen` (
  `matricule` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `note` float DEFAULT NULL,
  PRIMARY KEY (`matricule`,`code`),
  KEY `FK_examen_cours` (`code`),
  CONSTRAINT `FK_examen_cours` FOREIGN KEY (`code`) REFERENCES `cours` (`code`),
  CONSTRAINT `FK_examen_etudiant` FOREIGN KEY (`matricule`) REFERENCES `etudiant` (`matricule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Listage des données de la table etudiants.examen : ~0 rows (environ)
/*!40000 ALTER TABLE `examen` DISABLE KEYS */;
INSERT INTO `examen` (`matricule`, `code`, `note`) VALUES
	('e001', '001', 9),
	('e001', '003', 11),
	('e001', '004', 7.5),
	('e002', '001', 3.5),
	('e002', '002', 4),
	('e002', '004', 11),
	('e003', '001', 14),
	('e003', '002', 19),
	('e003', '004', 11),
	('e004', '001', 12),
	('e004', '003', 16),
	('e005', '001', 9.5),
	('e005', '002', 18),
	('e006', '001', 17.5),
	('e006', '002', 14),
	('e006', '004', 14),
	('e007', '001', 11),
	('e007', '003', 16),
	('e007', '004', 14),
	('e008', '001', 12.5),
	('e008', '002', 6),
	('e008', '004', 12),
	('e009', '001', 13),
	('e009', '003', 17),
	('e009', '004', 18);
/*!40000 ALTER TABLE `examen` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
