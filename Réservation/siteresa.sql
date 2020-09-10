-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 10 sep. 2020 à 09:22
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `siteresa`
--

-- --------------------------------------------------------

--
-- Structure de la table `copixuser`
--

DROP TABLE IF EXISTS `copixuser`;
CREATE TABLE IF NOT EXISTS `copixuser` (
  `id_cusr` int(11) NOT NULL AUTO_INCREMENT,
  `login_cusr` varchar(50) NOT NULL DEFAULT '',
  `password_cusr` varchar(50) NOT NULL DEFAULT '',
  `enabled_cusr` tinyint(1) NOT NULL DEFAULT 1,
  `lostpassword_cusr` varchar(10) NOT NULL DEFAULT '',
  `email_cusr` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_cusr`)
) ENGINE=InnoDB AUTO_INCREMENT=282 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `copixuser`
--

INSERT INTO `copixuser` (`id_cusr`, `login_cusr`, `password_cusr`, `enabled_cusr`, `lostpassword_cusr`, `email_cusr`) VALUES
(41, 'ampruniaux', '15b510543b475dd8a93e793753eaa36f', 1, '', ''),
(42, 'jcmartin', '802c1e2e60838932f56560947843fdea', 1, '', ''),
(44, 'xlescop', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(46, 'hcabut', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(48, 'adm', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(49, 'tba', '802c1e2e60838932f56560947843fdea', 1, '', ''),
(50, 'spicco', '802c1e2e60838932f56560947843fdea', 1, '', ''),
(51, 'dafco', '802c1e2e60838932f56560947843fdea', 1, '', ''),
(52, 'n', '7b8b965ad4bca0e41ab51de7b31363a1', 1, '', ''),
(53, 'gh', 'e5bb23797bfea314a3db43d07dbd6a74', 1, '', ''),
(54, 'gh', 'e5bb23797bfea314a3db43d07dbd6a74', 1, '', ''),
(55, 'olivier', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(57, 'gretalor', '9f0dc9f5724f13c967401f674ac4c595', 1, '', ''),
(58, 'abailule', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(60, 'abrisson', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(67, 'dafcap', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(68, 'dafcarte', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(69, 'dafrh', 'ba0f094b819d0f68892fc575cebda7e2', 1, '', ''),
(70, 'DTJAR', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(71, 'dafactu', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(72, 'gretanan', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(73, 'gunter', '2cad7c7fa63b996a16e84cbd5de79736', 1, '', ''),
(74, 'cmiron', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(75, 'oper', '802c1e2e60838932f56560947843fdea', 1, '', ''),
(77, 'athouvenin', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(78, 'last', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(200, 'toto6', 'cf79b41c0c309969de7a048f01f776d4', 1, '', ''),
(201, 'essai', '4d8fc38123455b12879a07703234bda2', 1, '', ''),
(204, 'PLOUF', 'c6ce09a91d589049c7cb74c000cb5373', 1, '', ''),
(205, 'util8', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(210, 'olescop', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(212, 'jpruniaux', '802c1e2e60838932f56560947843fdea', 1, '', ''),
(213, 'su', '0b180078d994cb2b5ed89d7ce8e7eea2', 1, '', ''),
(214, 'sirhus', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(215, 'util_gip', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(216, 'util_gln', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(217, 'util_gle', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(218, 'util_gls', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(219, 'util_glo', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(220, 'util_glc', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(221, 'util_cfa', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(222, 'jplouf', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(223, 'dmartin', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(225, 'adupont', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(226, 'iviry', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(227, 'apruniaux', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(228, 'aprocureur', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(229, 'ejacquot', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(230, 'soctave', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(231, 'appessai', 'e10adc3949ba59abbe56e057f20f883e', 0, '', ''),
(233, 'blang', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(236, 'invite', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(237, 'invite2', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(238, 'mcfc', '802c1e2e60838932f56560947843fdea', 1, '', ''),
(239, 'jc', '802c1e2e60838932f56560947843fdea', 1, '', ''),
(240, 'amarchal', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(242, 'mwernert', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(253, 'abpruniaux', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(254, 'groche', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(255, 'jlebon', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(257, 'aengelhelard', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(258, 'jjoplin', 'ab032a3c787ea53a363a6cc8d0b08e89', 1, '', ''),
(259, 'bsimon', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(262, 'clemoine', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(263, 'test', 'e10adc3949ba59abbe56e057f20f883e', 0, '', ''),
(264, 'test1', 'e10adc3949ba59abbe56e057f20f883e', 0, '', ''),
(266, 'gle_adm', 'b8488851cdb11c1ff0ba352fb3308451', 1, '', ''),
(267, 'gle_cfc', 'b8488851cdb11c1ff0ba352fb3308451', 1, '', ''),
(268, 'gle_ac', 'b8488851cdb11c1ff0ba352fb3308451', 1, '', ''),
(269, 'gle_dt', 'b8488851cdb11c1ff0ba352fb3308451', 1, '', ''),
(270, 'gle_hab', 'b8488851cdb11c1ff0ba352fb3308451', 1, '', ''),
(272, 'jmunbute', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(273, 'ldubois', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(274, 'eatoi', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(275, 'ppan', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(277, 'ogreta', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(278, 'bessai', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(279, 'dtestfaq', 'e10adc3949ba59abbe56e057f20f883e', 1, '', ''),
(280, 'jnemar', 'e10adc3949ba59abbe56e057f20f883e', 1, '', '');

-- --------------------------------------------------------

--
-- Structure de la table `etat`
--

DROP TABLE IF EXISTS `etat`;
CREATE TABLE IF NOT EXISTS `etat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `etat` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `etat`
--

INSERT INTO `etat` (`id`, `etat`) VALUES
(1, 'Demandée'),
(2, 'Réservée'),
(3, 'Libre');

-- --------------------------------------------------------

--
-- Structure de la table `fonction`
--

DROP TABLE IF EXISTS `fonction`;
CREATE TABLE IF NOT EXISTS `fonction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fonction`
--

INSERT INTO `fonction` (`id`, `nom`) VALUES
(1, 'Agents Comptables'),
(2, 'Assistants(es)'),
(3, 'CFC'),
(4, 'Chargés(es) de communication'),
(5, 'Coordonnateurs(trices)/Formateurs(trices'),
(6, 'CVA'),
(7, 'DAFCO'),
(8, 'Documentalistes'),
(9, 'DT'),
(10, 'IEN'),
(11, 'Informaticiens(es)'),
(12, 'Invités(es)'),
(13, 'Présidents(es) de GRETA / CESG'),
(14, 'Stagiaires'),
(15, 'Directeur(trice) opérationnel(le)'),
(17, 'Techniciens(nes) en communication'),
(18, 'Chargé(e)s de mission'),
(19, 'Chefs de travaux'),
(20, 'Gestionnaire CFA'),
(21, 'DAFCO - Directeur du GIP par interim');

-- --------------------------------------------------------

--
-- Structure de la table `kernel_bu_personnel`
--

DROP TABLE IF EXISTS `kernel_bu_personnel`;
CREATE TABLE IF NOT EXISTS `kernel_bu_personnel` (
  `numero` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL DEFAULT '',
  `nom_jf` varchar(50) DEFAULT NULL,
  `prenom1` varchar(50) NOT NULL DEFAULT '',
  `civilite` varchar(15) NOT NULL DEFAULT '',
  `id_sexe` int(11) NOT NULL DEFAULT 0,
  `idGreta` int(2) NOT NULL,
  `cle_privee` varchar(128) NOT NULL DEFAULT '',
  `profession` int(4) DEFAULT NULL,
  `tel_dom` varchar(15) DEFAULT NULL,
  `tel_gsm` varchar(15) DEFAULT NULL,
  `tel_pro` varchar(50) DEFAULT NULL,
  `mel` varchar(80) DEFAULT NULL,
  `num_rue` varchar(5) NOT NULL DEFAULT '',
  `num_seq` varchar(10) DEFAULT NULL,
  `adresse1` varchar(100) NOT NULL DEFAULT '',
  `adresse2` varchar(100) DEFAULT NULL,
  `code_postal` varchar(8) NOT NULL DEFAULT '',
  `commune` varchar(100) NOT NULL DEFAULT '',
  `id_ville` int(11) NOT NULL DEFAULT 1,
  `cat_user` varchar(20) DEFAULT NULL,
  `site_travail` varchar(100) DEFAULT NULL,
  `domaine` varchar(20) DEFAULT NULL,
  `secteur_activite` text DEFAULT NULL,
  `id_chef_service` int(11) DEFAULT NULL,
  `mission_aca` tinyint(1) NOT NULL,
  `test` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`numero`),
  KEY `nom` (`nom`),
  KEY `id_sexe` (`id_sexe`),
  KEY `adresse1` (`adresse1`),
  KEY `commune` (`commune`),
  KEY `profession` (`profession`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `kernel_bu_personnel`
--

INSERT INTO `kernel_bu_personnel` (`numero`, `nom`, `nom_jf`, `prenom1`, `civilite`, `id_sexe`, `idGreta`, `cle_privee`, `profession`, `tel_dom`, `tel_gsm`, `tel_pro`, `mel`, `num_rue`, `num_seq`, `adresse1`, `adresse2`, `code_postal`, `commune`, `id_ville`, `cat_user`, `site_travail`, `domaine`, `secteur_activite`, `id_chef_service`, `mission_aca`, `test`) VALUES
(20, 'PRUNIAUX', '', 'Anne Marie', 'Madame', 2, 17, '', 11, '', '', '', 'anne-marie.pruniaux@ac-nancy-metz.fr', '', NULL, '', '', '', '', 1, 'dafco', '', NULL, NULL, 91, 0, 0),
(21, 'MARTIN', '', 'Jean-Christophe', 'Monsieur', 1, 17, '', 3, '03 63 90 91', '06 73 80 81', '03 83 55 65 23', 'jcmartin@dafco.fr', '28', NULL, 'babou', '', '54000', 'NANCY', 1, 'dafco', 'DAFCO Nancy-Bamako', NULL, NULL, NULL, 0, 0),
(23, 'LESCOP', '', 'Xavier', 'Monsieur', 1, 14, '', 3, '', '', '', 'xlescop@dafco.fr', '', NULL, '', NULL, '', '', 1, 'dafco', '', '', '', NULL, 0, 0),
(25, 'CABUT', '', 'Hélène', 'Madame', 2, 17, '', 3, '', '', '', 'apruniaux@dafco.fr', '', NULL, '', '', '', '', 1, 'dafco', '', '', NULL, 91, 0, 0),
(27, 'ADMGRETA', '', 'Jean', 'Monsieur', 1, 17, '', 8, NULL, NULL, NULL, '', '', NULL, '', NULL, '', '', 1, 'greta', NULL, NULL, NULL, 104, 0, 0),
(28, 'SPILA', NULL, 'Test', 'Monsieur', 1, 17, '', 2, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 1, 'dafco', NULL, NULL, NULL, NULL, 0, 0),
(29, 'IEN', NULL, 'Stéphane', 'Monsieur', 1, 17, '', 10, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(30, 'DIRECTION', NULL, 'Mario', 'Monsieur', 1, 17, '', 9, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(31, 'LEGARS', '', 'Olivier', 'Monsieur', 1, 17, '', 5, '', '', '', 'sebadou@yahoo.fr', '', NULL, '', NULL, '', '', 1, NULL, '', '', '', 103, 0, 0),
(32, 'SUPER', NULL, 'Josiane', 'Madame', 2, 17, '', 3, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(33, 'Utilisateur', 'util', 'réseau', 'Monsieur', 1, 17, '', 6, '', '', '', '', '', NULL, '', NULL, '', '', 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(34, 'BAILULE', NULL, 'Amélie', 'Madame', 2, 4, '', 6, NULL, NULL, NULL, 'ab@x.fr ', '', NULL, '', NULL, '', '', 1, 'dafco', NULL, NULL, NULL, 91, 0, 0),
(36, 'BRISSON', '', 'Alice', 'Madame', 2, 31, '', 15, '03 83 22 50 19', '06 31 31 31 31', '03 83 55 65 66', 'sebadou@yahoo.fr', '', NULL, '', NULL, '', '', 1, 'dafco', 'DAVEN', '', '', 82, 0, 0),
(43, 'DAFCO Capen', NULL, '', 'Madame', 2, 17, '', 6, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 1, 'dafco', NULL, NULL, NULL, 91, 0, 0),
(44, 'DAFCO Cartographie', NULL, '', 'Madame', 2, 17, '', 6, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 1, 'dafco', NULL, NULL, NULL, 104, 0, 0),
(45, 'DAFCO RH', NULL, '', 'Madame', 2, 17, '', 6, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 1, 'dafco', NULL, NULL, NULL, 91, 0, 0),
(46, 'M\'Bappé', '', 'Véronique', 'Madame', 2, 15, '', 6, '', '', '', 'sebadou@free.fr', '', NULL, '', NULL, '', '', 1, 'greta', '', '', '', 91, 0, 0),
(47, 'DAFCO actu', NULL, '', 'Madame', 2, 17, '', 6, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 1, 'dafco', NULL, NULL, NULL, 91, 0, 0),
(48, 'Actu Nancy', NULL, '', 'Monsieur', 1, 17, '', 6, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 1, 'greta', NULL, NULL, NULL, 91, 0, 0),
(49, 'DAFCO tertiaire', NULL, '', 'Monsieur', 1, 17, '', 6, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 1, 'dafco', NULL, NULL, NULL, 91, 0, 0),
(50, 'MIRON', NULL, 'Catherine', 'Madame', 2, 17, '', 6, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 1, 'dafco', NULL, NULL, NULL, NULL, 0, 0),
(51, 'OPER', NULL, 'Cath', 'Madame', 2, 17, '', 6, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 1, 'greta', NULL, NULL, NULL, NULL, 0, 0),
(53, 'Thouvenin', NULL, 'Aline', 'Mademoiselle', 2, 2, '', 6, NULL, NULL, NULL, 'sebadou@free.fr', '', NULL, '', NULL, '', '', 1, 'daven', NULL, NULL, NULL, NULL, 0, 0),
(54, 'Ast', '', 'Laetitia', 'Madame', 2, 4, '', 3, '', '', '', 'ampruniaux@dafco.fr  ', '', NULL, '', NULL, '', '', 1, 'daven', '', '', '', NULL, 0, 0),
(56, 'plouf', NULL, 'François', 'Monsieur', 1, 17, '', 6, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(57, 'UTIL8', NULL, 'Form', 'Madame', 2, 17, '', 6, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(58, 'LESCOP', 'nine', 'Olivier', 'Monsieur', 1, 17, '', 3, '22222222', '0', '11111111', 'olescop@dafco.fr', '12', NULL, 'cwxcwxc', 'qsqsqs', '54600', 'villers', 1, 'dafco', '', '', '', NULL, 0, 0),
(59, 'PRUNIAUX', '', 'Julien', 'Monsieur', 1, 17, '', 11, '', '', '', 'julien.pruniaux@ac-nancy-metz.fr', '', NULL, '', NULL, '', '', 1, 'dafco', '', '', '', 82, 0, 0),
(60, 'SUPER', NULL, 'Adm', 'Monsieur', 1, 17, '', 3, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 1, 'dafco', NULL, NULL, NULL, NULL, 0, 0),
(61, 'SIRHUS', NULL, 'Paul', 'Monsieur', 1, 17, '', 6, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 1, 'daven', NULL, NULL, NULL, NULL, 0, 0),
(62, 'UTIL_GIP', NULL, 'Form', 'Monsieur', 1, 17, '', 6, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 1, 'greta', NULL, NULL, NULL, NULL, 0, 0),
(63, 'UTIL_GN', '', '', 'Monsieur', 2, 4, '', 6, '', '', '', 'julien.pruniaux@ac-nancy-metz.fr', '', NULL, '', NULL, '', '', 1, 'greta', '', '', '', NULL, 0, 0),
(64, 'UTIL_GLE', NULL, 'Form', 'Monsieur', 1, 6, '', 6, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(65, 'UTIL_GLS', '', 'Form', 'Madame', 2, 2, '', 6, '', '', '', '', '', NULL, '', NULL, '', '', 1, 'greta', '', '', '', NULL, 0, 0),
(66, 'UTIL_GLO', NULL, 'Form', 'Madame', 2, 11, '', 6, NULL, NULL, NULL, '', '', NULL, '', NULL, '', '', 1, 'greta', NULL, NULL, NULL, NULL, 0, 0),
(67, 'UTIL_GLC', NULL, 'Form', 'Monsieur', 1, 13, '', 6, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(68, 'UTIL_CFA', NULL, 'Form', 'Monsieur', 1, 17, '', 6, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(69, 'PLOUF', '', 'Julien', 'Monsieur', 1, 17, '', 5, '', '', '', 'sebadou@free.fr', '', NULL, '', NULL, '', '', 1, 'greta', '', '', NULL, NULL, 0, 0),
(70, 'MARTIN', '', 'Denise', 'Madame', 2, 17, '', 1, NULL, NULL, NULL, '', '', NULL, '', NULL, '', '', 1, 'greta', NULL, NULL, NULL, NULL, 0, 0),
(72, 'DUPONT', '', 'Anne', 'Madame', 2, 17, '', 3, NULL, NULL, NULL, 'julien.pruniaux@ac-nancy-metz.fr', '', NULL, '', NULL, '', '', 1, 'greta', NULL, NULL, NULL, 91, 0, 0),
(73, 'VIRY', NULL, 'Isabelle', 'Madame', 2, 17, '', 1, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 1, 'dafco', NULL, NULL, NULL, NULL, 0, 0),
(74, 'PRUNIAUX', '', 'Anne', 'Madame', 2, 13, '', 3, '', '', '', 'sebadou@yahoo.fr   ', '', NULL, '', NULL, '', '', 1, 'daven', '', '17#2#15', 'blablabla', NULL, 0, 0),
(75, 'PROCUREUR', NULL, 'Astrid', 'Madame', 2, 17, '', 1, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 1, 'greta', NULL, NULL, NULL, NULL, 0, 0),
(76, 'FINOT-JACQUOT', '', 'Elisabeth', 'Madame', 2, 17, '', 6, '', '', '', '', '', NULL, '', NULL, '', '', 1, 'dafco', '', '', '', NULL, 0, 0),
(77, 'OCTAVE', NULL, 'Sylvie', 'Madame', 2, 17, '', 6, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 1, 'greta', NULL, NULL, NULL, NULL, 0, 0),
(78, 'APP', '', 'Essai', 'Monsieur', 1, 17, '', 6, '', '', '', '', '', NULL, '', NULL, '', '', 1, 'greta', '', '', '', 104, 0, 0),
(79, 'LANG', NULL, 'Brigitte', 'Madame', 2, 17, '', 6, NULL, NULL, NULL, '', '', NULL, '', NULL, '', '', 1, 'dafco', NULL, NULL, NULL, 82, 0, 0),
(80, 'INVITE', NULL, 'JOE', 'Monsieur', 1, 17, '', 10, NULL, NULL, NULL, '', '', NULL, '', NULL, '', '', 1, NULL, NULL, NULL, NULL, 82, 0, 0),
(81, 'INVITE', NULL, 'Jack', 'Monsieur', 1, 17, '', 10, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 1, NULL, NULL, NULL, NULL, NULL, 0, 0),
(82, 'CFC', NULL, 'Marc', 'Monsieur', 1, 17, '', 3, NULL, NULL, NULL, 'ampruniaux@dafco.fr', '', NULL, '', NULL, '', '', 1, 'greta', NULL, NULL, NULL, 91, 0, 0),
(84, 'MARCHAL', NULL, 'Anita', 'Madame', 2, 17, '', 3, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 1, NULL, '', NULL, NULL, NULL, 0, 0),
(85, 'WERNERT', NULL, 'Michel', 'Monsieur', 1, 17, '', 15, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 1, 'greta', '', NULL, NULL, NULL, 0, 0),
(86, 'PRUNIAUX', '', 'Anne Brigitte', 'Madame', 2, 17, '', 3, '', '', '', '', '', NULL, '', NULL, '', '', 1, 'greta', '', '19#2#3', '', NULL, 0, 0),
(88, 'LEBON', NULL, 'Jacques', 'Monsieur', 1, 17, '', 15, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 1, NULL, '', '', NULL, NULL, 0, 0),
(89, 'ENGEL-HELARD', NULL, 'Anne', 'Madame', 2, 17, '', 3, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 1, NULL, '', '7#19#18', 'Expression écrite et orale\r\nMaths, sciences, Français\r\nPréparation à ds diplômes\r\nPréparation à des concours administratifs\r\n\r\nAnglais, allemand, espagnol, italien\r\nCours collectifs\r\nParcours sur mesure ', 91, 0, 0),
(90, 'JOPLIN', NULL, 'Janine', 'Monsieur', 1, 17, '', 1, NULL, NULL, NULL, '', '', NULL, '', NULL, '', '', 1, 'dafco', '', '', '', 82, 0, 0),
(91, 'ROCHE', NULL, 'Géraldine', 'Madame', 2, 17, '', 9, NULL, NULL, NULL, 'sebadou@free.fr', '', NULL, '', NULL, '', '', 1, 'dafco', '', '', NULL, NULL, 0, 0),
(92, 'LEMOINE', NULL, 'Claudine', 'Madame', 2, 17, '', 5, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 1, 'greta', '', NULL, NULL, NULL, 0, 0),
(93, 'TEST', '', 'Test', 'Monsieur', 1, 17, '', 3, '', '', '', '', '', NULL, '', NULL, '', '', 1, NULL, '', '', '', NULL, 0, 0),
(95, '_GLE', NULL, 'Adm', 'Monsieur', 1, 6, '', 2, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 1, 'greta', '', NULL, NULL, NULL, 0, 0),
(96, '_GLE', NULL, 'Cfc', 'Monsieur', 1, 6, '', 3, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 1, 'greta', '', NULL, NULL, NULL, 0, 0),
(97, '_GLE', NULL, 'Ac', 'Monsieur', 1, 6, '', 1, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 1, 'greta', '', NULL, NULL, NULL, 0, 0),
(98, '_GLE', NULL, 'Dt', 'Monsieur', 1, 6, '', 9, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 1, 'greta', '', NULL, NULL, NULL, 0, 0),
(99, '_GLE', NULL, 'Hab', 'Monsieur', 1, 6, '', 9, NULL, NULL, NULL, NULL, '', NULL, '', NULL, '', '', 1, 'greta', '', NULL, NULL, NULL, 0, 0),
(101, 'UNBUTE', '', 'Jean-Marc', 'Monsieur', 1, 17, '', 3, '', '', '', 'julien.pruniaux@ac-nancy-metz.fr', '', NULL, '', NULL, '', '', 1, 'dafco', '', NULL, NULL, 91, 0, 0),
(102, 'DUBOIS', NULL, 'Lucie', 'Madame', 2, 17, '', 3, NULL, NULL, NULL, 'sebadou@yahoo.fr', '', NULL, '', NULL, '', '', 1, 'dafco', '', NULL, NULL, 91, 0, 0),
(103, 'ATOI', '', 'Edgar', 'Monsieur', 1, 17, '', 3, '', '', '', 'sebadou@free.fr', '', NULL, '', NULL, '', '', 1, 'dafco', '', NULL, NULL, 82, 0, 0),
(104, 'PAN', '', 'Peter', 'Monsieur', 2, 17, '', 3, '', '', '', 'sebadou@yahoo.fr', '', NULL, '', NULL, '', '', 1, 'dafco', '', NULL, NULL, 91, 0, 0),
(105, 'GRETA', '', 'Olivier', 'Monsieur', 1, 2, '', 5, '', '', '', '', '', NULL, '', NULL, '', '', 1, 'greta', '', '', '', NULL, 0, 0),
(106, 'ESSAI', NULL, 'Béatrice', 'Madame', 2, 17, '', 2, NULL, NULL, NULL, 'julien.pruniaux@ac-nancy-metz.fr', '', NULL, '', NULL, '', '', 1, NULL, '', NULL, NULL, 104, 0, 0),
(107, 'TESTFAQ', '', 'Dop', 'Madame', 2, 8, '', 15, '03 83 22 50 19', '06 31 31 31 31', '03 83 55 65 66', 'jpruniaux@ac-nancy-metz.fr', '', NULL, '', NULL, '', '', 1, 'dafco', 'DAVEN', '', '', NULL, 0, 0),
(108, 'NEMAR', NULL, 'Jean', 'Monsieur', 0, 4, '', NULL, NULL, NULL, NULL, 'jean.essailn@dafco.fr', '', NULL, '', NULL, '', '', 1, NULL, NULL, NULL, NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `kernel_link_bu2user`
--

DROP TABLE IF EXISTS `kernel_link_bu2user`;
CREATE TABLE IF NOT EXISTS `kernel_link_bu2user` (
  `user_id` int(11) NOT NULL,
  `bu_type` varchar(10) NOT NULL DEFAULT '',
  `bu_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`,`bu_type`,`bu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `kernel_link_bu2user`
--

INSERT INTO `kernel_link_bu2user` (`user_id`, `bu_type`, `bu_id`) VALUES
(1, 'USER_ENS', 1),
(41, 'USER_ENS', 20),
(42, 'USER_ENS', 21),
(44, 'USER_ENS', 23),
(46, 'USER_ENS', 25),
(48, 'USER_ENS', 60),
(49, 'USER_ENS', 28),
(50, 'USER_ENS', 29),
(51, 'USER_ENS', 30),
(55, 'USER_ENS', 31),
(56, 'USER_ENS', 32),
(57, 'USER_ENS', 33),
(58, 'USER_ENS', 34),
(59, 'USER_ENS', 35),
(60, 'USER_ENS', 36),
(67, 'USER_ENS', 43),
(68, 'USER_ENS', 44),
(69, 'USER_ENS', 45),
(70, 'USER_ENS', 46),
(71, 'USER_ENS', 47),
(72, 'USER_ENS', 48),
(73, 'USER_ENS', 49),
(74, 'USER_ENS', 50),
(75, 'USER_ENS', 51),
(77, 'USER_ENS', 53),
(78, 'USER_ENS', 54),
(204, 'USER_ENS', 56),
(205, 'USER_ENS', 57),
(210, 'USER_ENS', 58),
(212, 'USER_ENS', 59),
(214, 'USER_ENS', 61),
(215, 'USER_ENS', 62),
(216, 'USER_ENS', 63),
(217, 'USER_ENS', 64),
(218, 'USER_ENS', 65),
(219, 'USER_ENS', 66),
(220, 'USER_ENS', 67),
(221, 'USER_ENS', 68),
(222, 'USER_ENS', 69),
(223, 'USER_ENS', 70),
(225, 'USER_ENS', 72),
(226, 'USER_ENS', 73),
(227, 'USER_ENS', 74),
(228, 'USER_ENS', 75),
(229, 'USER_ENS', 76),
(230, 'USER_ENS', 77),
(231, 'USER_ENS', 78),
(233, 'USER_ENS', 79),
(236, 'USER_ENS', 80),
(237, 'USER_ENS', 81),
(238, 'USER_ENS', 82),
(240, 'USER_ENS', 84),
(242, 'USER_ENS', 85),
(253, 'USER_ENS', 86),
(254, 'USER_ENS', 91),
(255, 'USER_ENS', 88),
(257, 'USER_ENS', 89),
(258, 'USER_ENS', 90),
(262, 'USER_ENS', 92),
(264, 'USER_ENS', 93),
(266, 'USER_ENS', 95),
(267, 'USER_ENS', 96),
(268, 'USER_ENS', 97),
(269, 'USER_ENS', 98),
(270, 'USER_ENS', 99),
(272, 'USER_ENS', 101),
(273, 'USER_ENS', 102),
(274, 'USER_ENS', 103),
(275, 'USER_ENS', 104),
(277, 'USER_ENS', 105),
(278, 'USER_ENS', 106),
(279, 'USER_ENS', 107),
(280, 'ISER_ENS', 108);

-- --------------------------------------------------------

--
-- Structure de la table `resa`
--

DROP TABLE IF EXISTS `resa`;
CREATE TABLE IF NOT EXISTS `resa` (
  `id_resa` int(11) NOT NULL AUTO_INCREMENT,
  `salle` int(11) NOT NULL,
  `service` int(11) NOT NULL,
  `nb_participant` int(11) NOT NULL,
  `intervenant` int(11) NOT NULL,
  `date_resa` date NOT NULL,
  `date_utilisation` date NOT NULL,
  `heure_debut` time NOT NULL,
  `heure_fin` time NOT NULL,
  `etat` int(11) NOT NULL DEFAULT 3,
  `intervenantext` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `dos_ref` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `public` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `demandeur` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_resa`),
  KEY `salle` (`salle`),
  KEY `service` (`service`),
  KEY `intervenant` (`intervenant`),
  KEY `etat` (`etat`),
  KEY `demandeur` (`demandeur`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `resa`
--

INSERT INTO `resa` (`id_resa`, `salle`, `service`, `nb_participant`, `intervenant`, `date_resa`, `date_utilisation`, `heure_debut`, `heure_fin`, `etat`, `intervenantext`, `theme`, `dos_ref`, `public`, `demandeur`) VALUES
(1, 1, 7, 8, 34, '2020-07-16', '2020-07-24', '12:00:00', '14:00:00', 2, NULL, 'test affichage pdf avec les caractères spéciaux', '', '', NULL),
(2, 3, 2, 10, 72, '2020-07-01', '2020-07-15', '10:00:00', '12:00:00', 2, NULL, '', '', '', NULL),
(3, 5, 8, 6, 32, '2020-07-23', '2020-07-21', '07:00:00', '10:30:00', 1, '', 'test ajout', 'fhfgchtrfdthgfvhjfrtd', '', NULL),
(5, 3, 8, 15, 30, '2020-08-31', '2020-08-05', '10:00:00', '10:30:00', 1, '', 'jbdlfknvbwjrbhlkrdehkjgheuhs', 'bredsbnfgnrfdtrnbesrnstgsr', '', NULL),
(6, 1, 1, 6, 30, '2020-09-01', '2020-08-03', '13:00:00', '16:30:00', 1, '', 'hsrdetjdrtjrtdj', 'etheqjtsjrrsyjtdejy', '', NULL),
(7, 2, 1, 7, 36, '2020-09-01', '2020-09-04', '15:00:00', '15:30:00', 1, '', 'r,dfy,df,rdft,rdfnf', ',d,ft,rsfherhesrgedgere', '', NULL),
(8, 1, 1, 3, 32, '2020-09-01', '2020-09-03', '11:00:00', '13:30:00', 1, '', 'dnxftnjrst,rdthnjtj', 'hdtsredthserdthsrdthrdthrd', '', NULL),
(9, 3, 6, 3, 29, '2020-09-01', '2020-08-31', '10:30:00', '11:00:00', 1, '', 'htnsetdsf,nfn,rdft', 'fwgnestdhbesdnesrdgtesgr', '', NULL),
(10, 1, 1, 9, 20, '2020-09-01', '2020-08-31', '10:00:00', '14:30:00', 1, '', 'vfkytfytfjyrdtrdjtdy', 'ytfjhfcjhgcfyht,dhfhgch', '', NULL),
(11, 1, 1, 5, 20, '2020-09-01', '2020-09-02', '08:30:00', '15:05:00', 1, '', 'gzqrgzerge\'', 'egqhh\'q\"a\'e\"', '', NULL),
(12, 1, 1, 4, 25, '2020-09-03', '2020-09-03', '09:00:00', '10:30:00', 1, '', 'hg,cvhgfh', 'hg,jfgfvh,g', '', 25),
(13, 3, 1, 5, 20, '2020-09-08', '2020-08-31', '09:00:00', '12:30:00', 1, '', 'gergherbe', 'beqsrgrbeg', '', 20);

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

DROP TABLE IF EXISTS `salle`;
CREATE TABLE IF NOT EXISTS `salle` (
  `id_salle` int(11) NOT NULL AUTO_INCREMENT,
  `salle` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `campus` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_salle`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `salle`
--

INSERT INTO `salle` (`id_salle`, `salle`, `campus`) VALUES
(1, '113', 'nancy'),
(2, 'CNS', 'nancy'),
(3, 'RD', 'nancy'),
(4, 'Test Salle1', 'metz'),
(5, '2', 'metz'),
(6, '3', 'metz');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `kernel_bu_personnel`
--
ALTER TABLE `kernel_bu_personnel`
  ADD CONSTRAINT `kernel_bu_personnel_ibfk_1` FOREIGN KEY (`profession`) REFERENCES `fonction` (`id`);

--
-- Contraintes pour la table `resa`
--
ALTER TABLE `resa`
  ADD CONSTRAINT `resa_ibfk_1` FOREIGN KEY (`salle`) REFERENCES `salle` (`id_salle`),
  ADD CONSTRAINT `resa_ibfk_2` FOREIGN KEY (`service`) REFERENCES `fonction` (`id`),
  ADD CONSTRAINT `resa_ibfk_3` FOREIGN KEY (`intervenant`) REFERENCES `kernel_bu_personnel` (`numero`),
  ADD CONSTRAINT `resa_ibfk_4` FOREIGN KEY (`etat`) REFERENCES `etat` (`id`),
  ADD CONSTRAINT `resa_ibfk_5` FOREIGN KEY (`demandeur`) REFERENCES `kernel_bu_personnel` (`numero`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
