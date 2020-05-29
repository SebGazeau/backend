-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 29 mai 2020 à 10:59
-- Version du serveur :  5.7.26
-- Version de PHP :  7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `site_cv`
--

-- --------------------------------------------------------

--
-- Structure de la table `generique_en`
--

DROP TABLE IF EXISTS `generique_en`;
CREATE TABLE IF NOT EXISTS `generique_en` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gen_bloc` varchar(25) NOT NULL,
  `gen_contenu` json NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `generique_en`
--

INSERT INTO `generique_en` (`id`, `gen_bloc`, `gen_contenu`) VALUES
(1, 'nav', '{\"1\": \"Home\", \"2\": \"Contact\"}');

-- --------------------------------------------------------

--
-- Structure de la table `generique_fr`
--

DROP TABLE IF EXISTS `generique_fr`;
CREATE TABLE IF NOT EXISTS `generique_fr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gfr_bloc` varchar(25) NOT NULL,
  `gfr_contenu` json NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `generique_fr`
--

INSERT INTO `generique_fr` (`id`, `gfr_bloc`, `gfr_contenu`) VALUES
(1, 'nav', '{\"1\": \"Accueil\", \"2\": \"Contact\"}');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
