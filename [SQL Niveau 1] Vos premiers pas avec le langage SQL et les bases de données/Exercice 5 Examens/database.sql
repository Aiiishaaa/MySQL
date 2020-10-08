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

-- Listage de la structure de la table examens. examens
CREATE TABLE IF NOT EXISTS `examens` (
  `NumE` varchar(3) NOT NULL,
  `Salle` varchar(3) NOT NULL,
  `Date` datetime NOT NULL,
  `TypeE` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`NumE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Listage des données de la table examens.examens : ~7 rows (environ)
/*!40000 ALTER TABLE `examens` DISABLE KEYS */;
INSERT INTO `examens` (`NumE`, `Salle`, `Date`, `TypeE`) VALUES
	('E01', 'A1', '2021-09-15 09:00:00', 'Q'),
	('E02', 'B1', '2021-09-15 11:00:00', 'P'),
	('E03', 'A2', '2021-09-15 13:00:00', 'P'),
	('E04', 'A1', '2021-09-15 15:00:00', 'M'),
	('E05', 'A2', '2021-09-16 09:00:00', 'M'),
	('E06', 'A3', '2021-09-16 11:00:00', 'Q'),
	('E07', 'A1', '2021-09-16 13:00:00', 'P'),
	('E08', 'B1', '2021-09-16 15:00:00', 'M');
/*!40000 ALTER TABLE `examens` ENABLE KEYS */;

-- Listage de la structure de la table examens. passerexamen
CREATE TABLE IF NOT EXISTS `passerexamen` (
  `NumS` varchar(3) NOT NULL,
  `NumE` varchar(3) NOT NULL,
  `Note` float NOT NULL,
  PRIMARY KEY (`NumS`,`NumE`),
  KEY `FK_PasserExamen_examens` (`NumE`),
  KEY `FK_PasserExamen_stagiaires` (`NumS`),
  CONSTRAINT `FK_PasserExamen_examens` FOREIGN KEY (`NumE`) REFERENCES `examens` (`NumE`),
  CONSTRAINT `FK_PasserExamen_stagiaires` FOREIGN KEY (`NumS`) REFERENCES `stagiaires` (`NumS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Listage des données de la table examens.passerexamen : ~38 rows (environ)
/*!40000 ALTER TABLE `passerexamen` DISABLE KEYS */;
INSERT INTO `passerexamen` (`NumS`, `NumE`, `Note`) VALUES
	('S01', 'E01', 9),
	('S01', 'E03', 11),
	('S01', 'E04', 13),
	('S01', 'E07', 13),
	('S02', 'E01', 18.5),
	('S02', 'E03', 16.5),
	('S02', 'E04', 16),
	('S02', 'E08', 20),
	('S03', 'E01', 13),
	('S03', 'E02', 13),
	('S03', 'E04', 12),
	('S03', 'E06', 17),
	('S04', 'E01', 16),
	('S04', 'E02', 8),
	('S04', 'E04', 11),
	('S04', 'E06', 15),
	('S05', 'E01', 16),
	('S05', 'E02', 7),
	('S05', 'E04', 11.5),
	('S05', 'E07', 13),
	('S06', 'E01', 14),
	('S06', 'E02', 19),
	('S06', 'E04', 14),
	('S06', 'E05', 11),
	('S07', 'E01', 15.5),
	('S07', 'E03', 12),
	('S07', 'E04', 9.5),
	('S07', 'E08', 17),
	('S08', 'E01', 14),
	('S08', 'E02', 17),
	('S08', 'E04', 15),
	('S08', 'E05', 14),
	('S09', 'E01', 16),
	('S09', 'E03', 13),
	('S09', 'E04', 8),
	('S09', 'E07', 16),
	('S10', 'E01', 17),
	('S10', 'E03', 11),
	('S10', 'E04', 19),
	('S10', 'E05', 14);
/*!40000 ALTER TABLE `passerexamen` ENABLE KEYS */;

-- Listage de la structure de la table examens. stagiaires
CREATE TABLE IF NOT EXISTS `stagiaires` (
  `NumS` varchar(3) NOT NULL,
  `NomS` varchar(30) NOT NULL,
  `PrenomS` varchar(30) NOT NULL,
  `Tel` varchar(10) NOT NULL,
  PRIMARY KEY (`NumS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Listage des données de la table examens.stagiaires : ~9 rows (environ)
/*!40000 ALTER TABLE `stagiaires` DISABLE KEYS */;
INSERT INTO `stagiaires` (`NumS`, `NomS`, `PrenomS`, `Tel`) VALUES
	('S01', 'Harper', 'Bruce', '0495173641'),
	('S02', 'Landers', 'Marc', '0422167438'),
	('S03', 'Calahan', 'Philippe', '0417156423'),
	('S04', 'Derrick', 'James', '0411323268'),
	('S05', 'Derrick', 'Jason', '0413567841'),
	('S06', 'Atton', 'Olivier', '0473684269'),
	('S07', 'Price', 'Thomas', '0497563669'),
	('S08', 'Becker', 'Benjamin', '0479895647'),
	('S09', 'Warner', 'Edouard', '0454215865'),
	('S10', 'Ross', 'Julian', '0454371956');
/*!40000 ALTER TABLE `stagiaires` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
