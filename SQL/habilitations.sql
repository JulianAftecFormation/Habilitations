-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour habilitations
CREATE DATABASE IF NOT EXISTS `habilitations` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `habilitations`;

-- Listage de la structure de la table habilitations. developpeur
CREATE TABLE IF NOT EXISTS `developpeur` (
  `iddeveloppeur` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) DEFAULT NULL,
  `prenom` varchar(20) DEFAULT NULL,
  `tel` varchar(15) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `pwd` varchar(64) DEFAULT NULL,
  `idprofil` int NOT NULL,
  PRIMARY KEY (`iddeveloppeur`),
  KEY `idprofil` (`idprofil`),
  CONSTRAINT `developpeur_ibfk_1` FOREIGN KEY (`idprofil`) REFERENCES `profil` (`idprofil`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table habilitations.developpeur : ~24 rows (environ)
DELETE FROM `developpeur`;
INSERT INTO `developpeur` (`iddeveloppeur`, `nom`, `prenom`, `tel`, `mail`, `pwd`, `idprofil`) VALUES
	(1, 'Nolan', 'Rooney', '09 65 36 85 44', 'Vivamus.non@egestasSedpharetra.org', '71f90b7c03aad530eafa769b2ad97cb333ca6dd455fce1080bc0b302e4231220', 5),
	(2, 'Good', 'Lucy', '03 03 67 71 47', 'a.scelerisque@NullafacilisiSed.org', 'c939327ca16dcf97ca32521d8b834bf1de16573d21deda3bb2a337cf403787a6', 2),
	(3, 'Blevins', 'Abel', '06 21 51 89 92', 'ipsum.Phasellus@sociosqu.edu', '3b17e2b513a94fc551bcaa6f8abba00f4cb52db9f5828689b8f8fefd9aaaba48', 3),
	(4, 'Levine', 'Ira', '02 04 78 08 64', 'ridiculus.mus@ligulaelitpretium.net', '3a0eb3ea56e7f5e8f6f87aa9710717f8f0330060f8517b4249dab182d9b9d9c8', 2),
	(5, 'Bailey', 'Burton', '09 70 53 44 50', 'Nunc.commodo.auctor@sollicitudinorci.org', 'ceb32b93931ce2ef0af1fcefb67c2e5ea38d67d3fb9424c53d53a0688381636f', 1),
	(6, 'Delacruz', 'Owen', '04 60 51 48 15', 'in.aliquet@risusodio.edu', '6bf96b25f549f6dc3ef7f491c7ed763357a9baae5f392dfa0bb5b5c92747b954', 3),
	(7, 'Garza', 'Jillian', '08 86 47 61 67', 'sem.eget.massa@hendreritconsectetuer.org', '2d49cda934944bfb136364f82d151585edfe3a78c9c988da451ea12a56fb956c', 4),
	(8, 'West', 'Quintessa', '02 70 51 65 26', 'morbi.tristique@neque.net', '41a6741e9a0faee34fec1fce082d6c634d48b44aee0d15bee819d12917073df8', 1),
	(9, 'Booth', 'Ryder', '08 53 71 05 71', 'porttitor.tellus@risusvariusorci.net', '59a286a9bbb686814b08ffc09917162dd03cafd0f90982a7d37abbbd809a9e7e', 3),
	(10, 'Blackwell', 'Martena', '08 94 29 37 55', 'pellentesque@NulladignissimMaecenas.net', '1d39692d4ee10540bc02074e58a7fedcf00ec356a3f19ccd6d909bd9370394a8', 2),
	(11, 'Paul', 'Harding', '02 79 83 05 14', 'placerat.augue.Sed@Donecfelis.edu', '818b5cc5f21d3e6e4e6071c06294528d44595022218446d8b79304d2b766327a', 1),
	(12, 'Justice', 'Hamilton', '05 12 98 01 13', 'eros@sedpede.net', '5f9740dd7874801f460dfe0f92e5be0cf2cfd04088d7d5ab996c92a428d3ee8b', 5),
	(13, 'Lawson', 'Yolanda', '05 69 69 73 20', 'elit@laciniaorci.edu', '9950fd2c5b1854dcf27d5f1c8cfcec3563c57694ba3ce6e4c3871c22836f8a50', 1),
	(14, 'Moon', 'Kaseem', '09 46 08 25 44', 'auctor@eu.edu', '5fc165254f4f817ba6f8b6f80c08b3174c0fea225398b5b84c17c0af975feacf', 1),
	(15, 'Solis', 'Justine', '03 82 07 14 43', 'penatibus@Utnec.co.uk', '7fc5e56ec97a6943a8e656a0b2480b92ed6bd25c8da6ec1775220ef925d79b7c', 4),
	(16, 'Stuart', 'Ingrid', '09 29 08 45 60', 'consectetuer.adipiscing@eget.edu', '74452134eb5884242a688cd5214e50595e950b8ac83de37d4c75ff7582b5a798', 3),
	(17, 'Barr', 'Wanda', '05 49 47 03 82', 'odio@Crasdolor.org', 'c0e17070d53e6b3362fa17221c1d501f7d7a76cacf69174d0a312a8159be6471', 4),
	(18, 'Parker', 'Brooke', '05 33 06 99 16', 'dui@ipsumcursus.co.uk', '92039f1a7ad82575787e314975b24ac559b72031e5b7f84702e75821225f2929', 5),
	(19, 'Valentine', 'Clinton', '05 08 28 27 67', 'id@atfringillapurus.edu', 'cef5c43e526793983cbd17f5c53ab76e48dc92584a83cbfa63820e82190fd8a5', 5),
	(20, 'Hendrix', 'Christian', '08 09 24 53 25', 'Nunc.quis@tinciduntDonec.ca', '0ceec16c3d3170168bd3acfd48748d95eb98992c15399cd9a495ec2212f71bc2', 1),
	(21, 'LaPaketa', 'Javier', '0772314122', 'javier.lapaketa@payet.org', '53d73fab5517b0f8adc20204445022e5b26803002a361a0dd5770d31ff109079', 2),
	(22, 'testviaappli', 'testviaappli', '0939495039', 'testviaappli@appli.net', '9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08', 1),
	(23, 'Vieira Gebczynski', 'Julian', '0772314122', 'julian.vieira45@gmail.com', 'a261eac17786f13f3fc89ffeb4c1af12e482a6a03d0a76c11ed9c000bca1f2fa', 5),
	(24, 'retest', 'retest', '12341234123', 'restes@restest', 'ced05b8ed2148e2bce95b95844e66be9a3e687c0fb7648a085a7cad786608acd', 4),
	(25, 'admin', 'admin', '12345678910', 'admin@admin.admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 5);

-- Listage de la structure de la table habilitations. fonctionnalite
CREATE TABLE IF NOT EXISTS `fonctionnalite` (
  `idfonctionnalite` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idfonctionnalite`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table habilitations.fonctionnalite : ~4 rows (environ)
DELETE FROM `fonctionnalite`;
INSERT INTO `fonctionnalite` (`idfonctionnalite`, `nom`) VALUES
	(1, 'CSS'),
	(2, 'HTML'),
	(3, 'JavaScript'),
	(4, 'PHP');

-- Listage de la structure de la table habilitations. habilitation
CREATE TABLE IF NOT EXISTS `habilitation` (
  `idfonctionnalite` int NOT NULL,
  `idoperation` int NOT NULL,
  `idprofil` int NOT NULL,
  PRIMARY KEY (`idfonctionnalite`,`idoperation`,`idprofil`),
  KEY `idoperation` (`idoperation`),
  KEY `idprofil` (`idprofil`),
  CONSTRAINT `habilitation_ibfk_1` FOREIGN KEY (`idfonctionnalite`) REFERENCES `fonctionnalite` (`idfonctionnalite`),
  CONSTRAINT `habilitation_ibfk_2` FOREIGN KEY (`idoperation`) REFERENCES `operation` (`idoperation`),
  CONSTRAINT `habilitation_ibfk_3` FOREIGN KEY (`idprofil`) REFERENCES `profil` (`idprofil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table habilitations.habilitation : ~27 rows (environ)
DELETE FROM `habilitation`;
INSERT INTO `habilitation` (`idfonctionnalite`, `idoperation`, `idprofil`) VALUES
	(1, 1, 1),
	(1, 1, 2),
	(1, 1, 3),
	(1, 1, 4),
	(2, 1, 1),
	(2, 1, 2),
	(2, 1, 3),
	(2, 1, 4),
	(3, 1, 1),
	(3, 1, 2),
	(3, 1, 3),
	(3, 1, 4),
	(4, 1, 1),
	(4, 1, 2),
	(4, 1, 3),
	(4, 1, 4),
	(1, 2, 2),
	(1, 2, 3),
	(2, 2, 3),
	(2, 2, 4),
	(3, 2, 3),
	(3, 2, 4),
	(4, 2, 4),
	(1, 3, 5),
	(2, 3, 5),
	(3, 3, 5),
	(4, 3, 5);

-- Listage de la structure de la table habilitations. operation
CREATE TABLE IF NOT EXISTS `operation` (
  `idoperation` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idoperation`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table habilitations.operation : ~3 rows (environ)
DELETE FROM `operation`;
INSERT INTO `operation` (`idoperation`, `nom`) VALUES
	(1, 'consulter'),
	(2, 'modifier'),
	(3, 'administrer');

-- Listage de la structure de la table habilitations. profil
CREATE TABLE IF NOT EXISTS `profil` (
  `idprofil` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idprofil`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table habilitations.profil : ~5 rows (environ)
DELETE FROM `profil`;
INSERT INTO `profil` (`idprofil`, `nom`) VALUES
	(1, 'stagiaire'),
	(2, 'designer'),
	(3, 'dev-front'),
	(4, 'dev-back'),
	(5, 'admin');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
