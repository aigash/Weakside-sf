-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 06 oct. 2021 à 14:31
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `matchups`
--

-- --------------------------------------------------------

--
-- Structure de la table `builds`
--

DROP TABLE IF EXISTS `builds`;
CREATE TABLE IF NOT EXISTS `builds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item1` int(11) NOT NULL,
  `item2` int(11) NOT NULL,
  `item3` int(11) NOT NULL,
  `item4` int(11) DEFAULT NULL,
  `item5` int(11) DEFAULT NULL,
  `item6` int(11) DEFAULT NULL,
  `situationnel1` int(11) DEFAULT NULL,
  `situationnel2` int(11) DEFAULT NULL,
  `situationnel3` int(11) DEFAULT NULL,
  `situationnel4` int(11) DEFAULT NULL,
  `situationnel5` int(11) DEFAULT NULL,
  `commentaire` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `item1` (`item1`),
  KEY `item2` (`item2`),
  KEY `item3` (`item3`),
  KEY `item4` (`item4`),
  KEY `item5` (`item5`),
  KEY `item6` (`item6`),
  KEY `situationnel1` (`situationnel1`),
  KEY `situationnel2` (`situationnel2`),
  KEY `situationnel3` (`situationnel3`),
  KEY `situationnel4` (`situationnel4`),
  KEY `situationnel5` (`situationnel5`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `builds`
--

INSERT INTO `builds` (`id`, `nom`, `item1`, `item2`, `item3`, `item4`, `item5`, `item6`, `situationnel1`, `situationnel2`, `situationnel3`, `situationnel4`, `situationnel5`, `commentaire`) VALUES
(1, 'Akali Bruiser AP Top (anti heal)', 71, 16, 61, 98, 38, 53, 70, 43, 73, 21, NULL, 'Après les bottes, l\'ordre des items peut changer. Si tu es bien dans la game tu peux faire un Rabadon plus tôt voir un Mejai, si la team ennemi fait de la MR alors fais un bâton du vide plus tôt, etc...'),
(2, 'Akali Bruiser AP Top', 71, 16, 61, 73, 38, 53, 70, 43, 98, 21, NULL, 'Après les bottes, l\'ordre des items peut changer. Si tu es bien dans la game tu peux faire un Rabadon plus tôt voir un Mejai, si la team ennemi fait de la MR alors fais un bâton du vide plus tôt, etc...'),
(3, 'Akali Assassin Top', 58, 16, 61, 38, 53, 70, 98, 43, 42, 21, NULL, 'Suivant si tu es vraiment bien dans la game tu peux faire un Fléau de liche voir un Mejai. Si tu dois changer un item pour un autre situationnel alors enlève la Volonté cosmique.'),
(4, 'Camille Grasp MR Top', 81, 47, 31, 25, 39, 76, 23, 64, 75, 17, NULL, 'Faire des Coques en acier si le reste de la team est full AD. Hydre titanesque si tu es derrière dans la game. Death dance, Ange Gardien ou Au bout du rouleau suivant tes besoins. Cimeterre mercuriel si tu as besoin d\'une QSS.'),
(5, 'Camille Grasp Armor Top', 81, 23, 31, 25, 75, 76, 47, 64, 39, 17, 54, 'Faire des Mercure si le reste de la team est full AP/CC. Hydre titanesque si tu es derrière dans la game. Death dance, Ange Gardien ou Au bout du rouleau suivant tes besoins. Cimeterre Mercuriel si tu as besoin d\'une QSS.'),
(6, 'Camille Conqueror MR Top', 35, 47, 31, 25, 39, 76, 23, 64, 75, 17, 54, 'Faire des Coques en acier si le reste de la team est full AD. Hydre titanesque si tu es derrière dans la game. Death dance, Ange Gardien ou Au bout du rouleau suivant tes besoins. Cimeterre mercuriel si tu as besoin d\'une QSS.'),
(7, 'Camille Conqueror Armor Top', 35, 23, 31, 25, 75, 76, 47, 64, 39, 17, 54, 'Faire des Mercure si le reste de la team est full AP/CC. Hydre titanesque si tu es derrière dans la game. Death dance, Ange Gardien ou Au bout du rouleau suivant tes besoins. Cimeterre Mercuriel si tu as besoin d\'une QSS.'),
(8, 'Fiora Goredrinker Armor Top', 79, 23, 31, 25, 75, 76, 47, 64, 39, 32, 17, 'Mercure plutôt que Coques en acier si le reste de la team est full AP/CC. Hydre titanesque plutôt que Vorace si la team requiert une bonne front lane. Faire une Aube si besoin d\'une QSS. Cotte épineuse plutôt que Danse de la mort s\'il faut de l\'armure. Les items défensifs sont à faire en fonction de l\'état de la game, possibilité de build bien plus défensif si nécessaire (voir Guide Fiora).'),
(9, 'Fiora Goredrinker MR Top', 79, 47, 31, 25, 39, 76, 23, 64, 75, 32, 17, 'Coques plutôt que Mercure si le reste de la team est full AD. Hydre titanesque plutôt que Vorace si la team requiert une bonne front lane. Faire une Aube si besoin d\'une QSS. Les items défensifs sont à faire en fonction de l\'état de la game, possibilité de build bien plus défensif si nécessaire (voir Guide Fiora).'),
(10, 'Fiora Pourfendeur Armor Top', 81, 23, 31, 25, 75, 76, 47, 64, 39, 32, 17, 'Mercure plutôt que Coques en acier si le reste de la team est full AP/CC. Hydre titanesque plutôt que Vorace si la team requiert une bonne front lane. Faire une Aube si besoin d\'une QSS. Cotte épineuse plutôt que Danse de la mort s\'il faut de l\'armure. Les items défensifs sont à faire en fonction de l\'état de la game, possibilité de build bien plus défensif si nécessaire (voir Guide Fiora).'),
(11, 'Quinn build spé vs Aatrox', 88, 13, 41, 18, 19, 20, 23, 91, 30, 59, 75, 'Tabi si full AD en face. Soif de sang si besoin de vol de vie en late. Percepteur si bien dans la game (c\'est une question de préférence surtout).'),
(12, 'Quinn vs squishy/semi squishy AP', 39, 13, 87, 41, 18, 30, 91, 65, 19, 20, 75, 'Manteau de la nuit si besoin d\'être protégé contre un spell en particulier. Rappel mortel si besoin d\'anti heal. Dominik si besoin d\'anti tank. Percepteur si bien dans la game (c\'est une question de préférence surtout).'),
(13, 'Quinn Galeforce vs bruisers', 87, 13, 41, 18, 30, 20, 23, 75, 91, 17, 19, 'Tabi si full AD en face. Percepteur si bien dans la game (c\'est une question de préférence surtout). Rappel mortel si besoin d\'anti heal.'),
(14, 'Quinn vs gros bruisers/tanks', 88, 13, 20, 18, 41, 59, 75, 17, 91, 30, 19, 'Soif de sang si besoin de vol de vie en late. Percepteur si bien dans la game (c\'est une question de préférence surtout). Rappel mortel si besoin d\'anti heal.'),
(15, 'Quinn build slow', 13, 59, 80, 20, 91, 18, 19, 30, 23, 17, 75, 'Soif de sang si besoin de vol de vie en late. Rappel mortel si besoin d\'anti heal. Coques en acier si full AD.'),
(16, 'Quinn build spé vs Mundo', 59, 13, 88, 20, 18, 19, 22, 30, 41, 75, 17, 'Soif de sang si besoin de vol de vie en late. Lame tempête si besoin de plus kite. Danseur fantôme si besoin de plus de move speed.'),
(17, 'Quinn build spé vs Gragas', 87, 13, 20, 18, 41, 30, 91, 59, 39, 75, 19, 'Percepteur si bien dans la game (c\'est une question de préférence surtout). Rappel mortel si besoin d\'anti heal. Lame du roi déchu est un juste milieu entre le vol de vie, le kite et les dégâts.'),
(18, 'Quinn Shieldbow hard matchup AD', 89, 23, 41, 18, 19, 30, 91, 59, 75, NULL, NULL, 'Rappel mortel si besoin d\'anti heal. Lame du roi déchu si besoin de plus de vol de vie. Percepteur si vraiment bien dans la game (question de préférence surtout).'),
(19, 'Quinn build spé vs Jax/Tryndamere', 13, 87, 41, 18, 90, 63, 91, 30, 19, 75, 20, 'Soif de sang si besoin de vol de vie en late. Percepteur si bien dans la game (c\'est une question de préférence surtout). Rappel mortel si besoin d\'anti heal. Dominik si trop d\'armor/tankiness.'),
(20, 'Quinn build vs squishy/semi squishy AD', 87, 13, 41, 18, 91, 30, 23, 20, 59, 75, 19, 'Lame du roi déchu si besoin de plus de vol de vie pour duel en late. Rappel mortel si besoin d\'anti heal. Coques en acier si full AD. Dominik si trop d\'armor/tankiness.'),
(21, 'Quinn build spé vs Teemo/Kennen', 39, 13, 87, 41, 18, 65, 47, 30, 19, 75, NULL, 'Soif de sang si besoin de vol de vie en late. Rappel mortel si besoin d\'anti heal. Mercure si full AP/CC.'),
(22, 'Quinn build spé vs Malphite', 39, 88, 13, 22, 20, 18, 91, 30, 41, 19, 75, 'Soif de sang si besoin de vol de vie en late. Percepteur si bien dans la game (c\'est une question de préférence surtout). Rappel mortel si besoin d\'anti heal. Lame tempête plutôt que Danseur fantôme si préférence ici.'),
(23, 'Quinn build spé vs Mordekaiser', 39, 13, 87, 20, 18, 59, 41, 91, 30, 19, 75, 'Soif de sang si besoin de vol de vie en late. Percepteur si bien dans la game (c\'est une question de préférence surtout). Rappel mortel si besoin d\'anti heal. Lame tempête plutôt que Lame du roi déchu si préférence ici.'),
(24, 'Quinn build spé vs Rumble', 89, 13, 39, 91, 18, 41, 47, 17, 75, 19, 30, 'Soif de sang si besoin de vol de vie en late. Rappel mortel si besoin d\'anti heal. Mercure si full AP/CC.'),
(25, 'Quinn build spé vs Viego', 89, 13, 91, 18, 41, 19, 59, 17, 30, 20, 75, 'Soif de sang si besoin de vol de vie en late. Lame du roi déchu est un juste milieu entre le sustain les dégâts et le kite. Dominik si beaucoup d\'armor/tankiness.'),
(26, 'Quinn build spé vs Warwick', 88, 13, 20, 18, 19, 59, 91, 30, 41, 75, NULL, 'Soif de sang si besoin de vol de vie en late. Percepteur si bien dans la game (c\'est une question de préférence surtout). Lame tempête si besoin de plus de kite.');

-- --------------------------------------------------------

--
-- Structure de la table `categorie_rune`
--

DROP TABLE IF EXISTS `categorie_rune`;
CREATE TABLE IF NOT EXISTS `categorie_rune` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `categorie_rune`
--

INSERT INTO `categorie_rune` (`id`, `nom`, `image`, `description`) VALUES
(1, 'Précision', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/7201_Precision.png', 'Devenez une légende. Attaques améliorées et dégâts soutenus.'),
(2, 'Domination', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/7200_Domination.png', 'Chasse et élimination de proies. Dégâts immédiats et accès aux cibles.'),
(3, 'Sorcellerie', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/7202_Sorcery.png', 'Déchaînez la destruction. Compétences renforcées et manipulation des ressources.'),
(4, 'Volonté', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/7204_Resolve.png', 'Vie éternelle. Durabilité et contrôles de foule.'),
(5, 'Inspiration', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/7203_Whimsy.png', 'Supplantez les simples mortels. Outils créatifs et contournement des règles.');

-- --------------------------------------------------------

--
-- Structure de la table `difficulty_index`
--

DROP TABLE IF EXISTS `difficulty_index`;
CREATE TABLE IF NOT EXISTS `difficulty_index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `couleur` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `difficulty_index`
--

INSERT INTO `difficulty_index` (`id`, `level`, `couleur`) VALUES
(1, 'Très facile', '#6aa84f'),
(2, 'Facile', '#4a86e8'),
(3, 'Skilled', '#ffff00'),
(4, 'Difficile', '#ff9900'),
(5, 'Chaotique', '#cc4125');

-- --------------------------------------------------------

--
-- Structure de la table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `commentaire` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `items`
--

INSERT INTO `items` (`id`, `nom`, `image`, `commentaire`) VALUES
(1, 'Seau noir', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/1082.png', NULL),
(2, 'Bouclier de Doran', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/1054.png', NULL),
(3, 'Lame de Doran', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/1055.png', NULL),
(4, 'Anneau de Doran', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/1056.png', NULL),
(5, 'Potion de soin', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/2003.png', NULL),
(6, 'Abatteur', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/1083.png', NULL),
(7, 'Potion rechargeable', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/2031.png', NULL),
(8, 'Potion de corruption', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/2033.png', NULL),
(9, 'Chant de guerre de Shurelya', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/2065.png', NULL),
(10, 'Masque abyssal', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3001.png', NULL),
(11, 'Bâton de l\'archange', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3003.png', NULL),
(12, 'Manamune', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3004.png', NULL),
(13, 'Jambières du berserker', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3006.png', NULL),
(14, 'Bottes de célérité', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3009.png', NULL),
(15, 'Putrificateur techno-chimique', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3011.png', NULL),
(16, 'Chaussures de sorcier', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3020.png', NULL),
(17, 'Ange gardien', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3026.png', NULL),
(18, 'Lame d\'infini', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3031.png', NULL),
(19, 'Rappel mortel', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3033.png', NULL),
(20, 'Salutations de Dominik', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3036.png', NULL),
(21, 'Voleur d\'âmes de Mejai', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3041.png', NULL),
(22, 'Danseur fantôme', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3046.png', NULL),
(23, 'Coques en acier', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3047.png', NULL),
(24, 'Convergence de Zeke', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3050.png', NULL),
(25, 'Gage de Sterak', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3053.png', NULL),
(26, 'Visage spirituel', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3065.png', NULL),
(27, 'Égide solaire', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3068.png', NULL),
(28, 'Larme de la déesse', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3070.png', NULL),
(29, 'Couperet noir', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3071.png', NULL),
(30, 'Soif-de-sang', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3072.png', NULL),
(31, 'Hydre vorace', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3074.png', NULL),
(32, 'Cotte épineuse', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3075.png', NULL),
(33, 'Armure roncière', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3076.png', NULL),
(34, 'Tiamat', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3077.png', NULL),
(35, 'Force de la trinité', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3078.png', NULL),
(36, 'Armure de Warmog', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3083.png', NULL),
(37, 'Ouragan de Runaan', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3085.png', NULL),
(38, 'Coiffe de Rabadon', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3089.png', NULL),
(39, 'Au bout du rouleau', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3091.png', NULL),
(40, 'Canon ultrarapide', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3094.png', NULL),
(41, 'Lame tempête', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3095.png', NULL),
(42, 'Fléau de liche', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3100.png', NULL),
(43, 'Voile de la Banshee', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3102.png', NULL),
(44, 'Rédemption', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3107.png', NULL),
(45, 'Vœu de chevalier', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3109.png', NULL),
(46, 'Cœur gelé', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3110.png', NULL),
(47, 'Sandales de Mercure', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3111.png', NULL),
(48, 'Dent de Nashor', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3115.png', NULL),
(49, 'Sceptre de Rylai', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3116.png', NULL),
(50, 'Bottes de mobilité', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3117.png', NULL),
(51, 'Marque du bourreau', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3123.png', NULL),
(52, 'Lame enragée de Guinsoo', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3124.png', NULL),
(53, 'Bâton du vide', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3135.png', NULL),
(54, 'Cimeterre mercuriel', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3139.png', NULL),
(55, 'Ceinture de Mercure', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3140.png', NULL),
(56, 'Lame spectre de Youmuu', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3142.png', NULL),
(57, 'Présage de Randuin', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3143.png', NULL),
(58, 'Ceinture-roquette Hextech', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3152.png', NULL),
(59, 'Lame du roi déchu', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3153.png', NULL),
(60, 'Gueule de Malmortius', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3156.png', NULL),
(61, 'Sablier de Zhonya', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3157.png', NULL),
(62, 'Bottes de lucidité', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3158.png', NULL),
(63, 'Faux spectrale', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3508.png', NULL),
(64, 'Hydre titanesque', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3748.png', NULL),
(65, 'Manteau de la nuit', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3814.png', NULL),
(66, 'Orbe de l\'oubli', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3916.png', NULL),
(67, 'Mandat impérial', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/4005.png', NULL),
(68, 'Force de la nature', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/4401.png', NULL),
(69, 'Concentration lointaine', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/4628.png', NULL),
(70, 'Volonté cosmique', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/4629.png', NULL),
(71, 'Créateur de failles', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/4633.png', NULL),
(72, 'Moissonneur nocturne', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/4636.png', NULL),
(73, 'Étreinte démoniaque', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/4637.png', NULL),
(74, 'Aube de Haut-Lac-D\'argent', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/6035.png', NULL),
(75, 'Danse de la mort', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/6333.png', NULL),
(76, 'Épée dentelée chimico-punk', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/6609.png', NULL),
(77, 'Bâton des flots', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/6616.png', NULL),
(78, 'Régénérateur de pierre de lune', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/6617.png', NULL),
(79, 'Éviscérateur', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/6630.png', NULL),
(80, 'Estropieur', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/6631.png', NULL),
(81, 'Pourfendeur divin', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/6632.png', NULL),
(82, 'Affliction de Liandry', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/6653.png', NULL),
(83, 'Tempête de Luden', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/6655.png', NULL),
(84, 'Gel éternel', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/6656.png', NULL),
(85, 'Gantelet cryopyrique', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/6662.png', NULL),
(86, 'Chimico-scaphandre turbo', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/6664.png', NULL),
(87, 'Force du vent', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/6671.png', NULL),
(88, 'Tueur de krakens', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/6672.png', NULL),
(89, 'Arc-bouclier immortel', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/6673.png', NULL),
(90, 'Prestelames navori', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/6675.png', NULL),
(91, 'Percepteur', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/6676.png', NULL),
(92, 'Épée vespérale de Draktharr', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/6691.png', NULL),
(93, 'Éclipse', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/6692.png', NULL),
(94, 'Griffes du rôdeur', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/6693.png', NULL),
(95, 'Rancune de Serylda', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/6694.png', NULL),
(96, 'Crochet de serpent', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/6695.png', NULL),
(97, 'Chaînes de l\'anathème', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/8001.png', NULL),
(98, 'Morellonomicon', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3165.png', NULL),
(99, 'Glaive d\'ombre', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3179.png', NULL),
(100, 'Brise-coques', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3181.png', NULL),
(101, 'Médaillon de l\'Iron Solari', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3190.png', NULL),
(102, 'Lithoplastron de gargouille', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3193.png', NULL),
(103, 'Encensoir ardent', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3504.png', NULL),
(104, 'Bénédiction de Mikael', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3222.png', NULL),
(105, 'Balise camouflée', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3340.png', NULL),
(106, 'Altération divinatoire', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3363.png', NULL),
(107, 'Brouilleur oraculaire', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3364.png', NULL),
(108, 'Plaque du mort', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/3742.png', NULL),
(109, 'Épée longue', 'https://ddragon.leagueoflegends.com/cdn/11.18.1/img/item/1036.png', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url_specifique` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_crea` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `display` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `news`
--

INSERT INTO `news` (`id`, `state`, `titre`, `description`, `image`, `url_specifique`, `date_crea`, `display`) VALUES
(1, 0, '\"Grâce et précision\"', 'Le champion Fiora, Sublime bretteuse est désormais disponible sur le site. Retrouvez donc l\'ensemble de ses matchups dans la partie <a href=\"http://localhost/matchups/adversaires.php?idmycharacter=Fiora\">Matchups</a> ainsi qu\'une aide pour savoir quel champion choisir contre elle, classée par ordre de difficultés et ce dans la partie <a href=\"http://localhost/matchups/reverse.php?idcharacter=Fiora\">Reverse</a>.', 'Fiora_Matchups', NULL, '2021-04-16 09:59:28', 'displaygauche'),
(2, 1, 'Weakside débarque sur la toile !', 'L\'alpha du site Weakside arrive enfin en ligne ! Pour plus d\'informations au sujet du projet initial et ce qu\'il en est actuellement c\'est <a href=\"#aboutweakside\">Par ici</a>.', 'Weakside', '', '2021-04-18 01:01:52', 'displaymid'),
(3, 0, '\"Tempête de lames!\"', 'Le champion Yone, Inoublié est désormais disponibles en tant que champion affronté sur le site. Retrouvez donc les matchups Yone des personnages jouables ainsi qu\'une aide pour savoir quel champion choisir contre lui, classés par ordre de difficultés et ce dans la partie <a href=\"http://localhost/matchups/reverse.php?idcharacter=Yone\">Reverse</a>.', 'Yone_Ennemi', NULL, '2021-05-10 10:53:34', 'displaygauche');

-- --------------------------------------------------------

--
-- Structure de la table `other_stuff`
--

DROP TABLE IF EXISTS `other_stuff`;
CREATE TABLE IF NOT EXISTS `other_stuff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_my_character` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_character` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_build` int(11) DEFAULT NULL,
  `id_setrunes` int(11) DEFAULT NULL,
  `difficulty` int(11) NOT NULL,
  `runes` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tips` text COLLATE utf8_unicode_ci NOT NULL,
  `parry` text COLLATE utf8_unicode_ci,
  `wave` text COLLATE utf8_unicode_ci,
  `teamfight_split` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_my_character` (`id_my_character`),
  KEY `id_character` (`id_character`),
  KEY `difficulty` (`difficulty`),
  KEY `id_build` (`id_build`),
  KEY `id_setrunes` (`id_setrunes`)
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `other_stuff`
--

INSERT INTO `other_stuff` (`id`, `id_my_character`, `id_character`, `id_build`, `id_setrunes`, `difficulty`, `runes`, `item_path`, `tips`, `parry`, `wave`, `teamfight_split`) VALUES
(1, 'Akali', 'Aatrox', 1, 2, 3, 'AkaliConqCoupDomiArmor', 'dringdbladeorb', '- Q passif AA trade early + dodge ses Q en profitant de la MS <br>\r\n- Abuser de ses longs cd surtout après le 3ème Q <br>\r\n- Utiliser toute ses habilités/passif pour dodge celles de Aatrox <br>\r\n- Ne pas se faire hit par ses Q boost <br>\r\n- All in après son 3ème Q si assez d\'énergie restante, éviter s\'il est full HP <br>\r\n- Son self heal n\'est pas si fort si on dodge ses spells <br>\r\n- Son W donne la vision', NULL, NULL, NULL),
(2, 'Akali', 'Camille', 2, 3, 2, 'AkaliConqCoupDomiArmor', 'dringdblade', '- Q passif AA trade early <br>\r\n- Si son passif lui donne un shield armor c\'est free Q/E, si shield mr R/ AA <br>\r\n- Utiliser E pour dodge son E ou W si trop tard pour pas qu\'elle abuse de son attack speed <br>\r\n- Dodge l\'extérieur de son W puisque ça slow et ça la heal <br>\r\n- All in 6 si pas de passif + waste E <br>\r\n- Le losange sur sa poitrine et dans son dos indique si son passif est prêt ou non <br>\r\n- Ne pas rester trop proche des murs <br>\r\n- Ne pas trade sans smoke si elle touche son E', NULL, NULL, NULL),
(3, 'Akali', 'Cassiopeia', 2, 4, 2, 'AkaliConqCoupDomiRM', 'dringdshield', '- La laisser push et l\'arrêter devant la tour afin d\'all in <br>\r\n- Bouger constamment en lane pour dodge ses Q (use passif MS, E, R) <br>\r\n- Faire des shorts trades <br>\r\n- A tout prix sidestep l\'ult <br>\r\n- W si pas le temps de se tourner pour esquiver le R afin d\'éviter les dégats des E <br>\r\n- Éviter les long trades sans smoke <br>\r\n- Éviter de se faire toucher par le W', NULL, NULL, NULL),
(4, 'Camille', 'Aatrox', 7, 53, 2, 'CamilleConqBoneArmor', 'dbladeexetrihydra', '- Attendre qu\'il utilise Q1/E pour poke puis attendre un peu qu\'il perde son Q boost <br>\r\n- Ses CD sont très élevés early donc attendre qu\'il les utilise pour la wave afin de la all in <br>\r\n- Toujours utiliser l\'ult pour dodge son Q3 quand il ult car il ne pourra jamais le lancer 2 fois <br>\r\n- Ne jamais all in tant qu\'il n\'a pas utilisé un spell car il outdamage beaucoup la rotation de dégâts de Camille', NULL, 'Il va auto shove la wave avec ses Q donc essayer de garder une wave similaire et au mid.', 'Possibilité de faire les deux, ça dépend si t\'es devant ou pas. Si devant fais le mieux pour la team, tu le tues en side facilement donc juste shove et rotate.'),
(5, 'Camille', 'Akali', 6, 54, 3, 'CamilleConqSecondRM', 'dbladetrihydra', '- Commence W et max le E, la poke avec W quand le spell est up pour du sustain <br>\r\n- Rester proche des murs, la plupart des Akali n\'auront pas le réflexe de réagir aux hookshot rapides qui vont permettre des free kills <br>\r\n- Pas besoin de rush de la mr à côté des Mercures, juste éviter de manger trop de Q et ça devrait être OK <br>\r\n- Quand son R2 est prêt, spam ult sur ta tête afin de dodge l\'ult 9/10 fois', NULL, 'Garder la wave proche de sa tour ou la tienne, si elle est au mid il est difficile de trade. Le freeze est broken ici.', 'Juste split après 2 items ou split de façon safe pour farm. En 5v5 faire la même chose qu\'akali: fight si elle fight, split si elle split.'),
(6, 'Akali', 'Chogath', 2, 5, 1, 'AkaliConqCoupDomiArmor', 'dringdblade', '- Q passif AA trade <br>\r\n- Use passif MS, E, R pour dodge le Q <br>\r\n- All in 6 si il waste Q/W et/ou s\'il a ~70%HP <br>\r\n- Possibilité d\'activer le passif pendant le silence si Q/E lancé à temps <br>\r\n- Ne pas le trade en étant low <br>\r\n- Ne pas le laisser farm/scale gratuitement', NULL, NULL, NULL),
(7, 'Akali', 'Darius', 2, 6, 4, 'AkaliFleetDomi', 'dring', '- La partie interne de son Q ne fait que 33% de dégats donc aller à l\'intérieur ou dodge avec E/R si possible <br>\r\n- Faire des shorts trades <br>\r\n- Utiliser la smoke pour tempo si son passif est chargé <br>\r\n- Le laisser shove et essayer de freeze <br>\r\n- All in si il waste son E / rate son Q <br>\r\n- Se tenir hors range du E les bons darius \r\nvont profiter du CC du E pour toucher l\'extérieur du Q', NULL, NULL, NULL),
(8, 'Akali', 'Fiora', 2, 7, 3, 'AkaliConqCoupDomiArmor', 'dringdblade', '- Q passif AA trade <br>\r\n- Faire attention aux points vitaux early <br>\r\n- Attendre qu\'elle Q un creep pour engage <br>\r\n- Shorts trades <br>\r\n- Bait son W avant de all in <br>\r\n- Coller un mur quand elle ult pour bloquer  l\'accès aux points vitaux si possible sinon utiliser la smoke pour tempo <br>\r\n- Disengage si elle ult low hp et que moi aussi <br>\r\n- Son Q peut toucher dans la smoke <br>\r\n- Ne pas trade après s\'être prit un W', NULL, NULL, NULL),
(9, 'Akali', 'Gangplank', 2, 8, 5, 'AkaliFleetSecond', 'dshield', '- Essayer de trade lv 1 avant qu\'il puisse stack grasp mais pas trop longtemps <br>\r\n- Dodge les tonneaux avec E et R <br>\r\n- One shot possible lv 6 s\'il commence à build Brillance <br>\r\n- Attention au heal de son W lors du all in <br>\r\n- Possibilité de taper le tonneau plus vite que lui avec passif AA <br>\r\n- Ses tonneaux durent 20sec, all in / trade quand ils sont sur le point de disparaitre <br>\r\n- Trop approcher sans énergie/raison <br>\r\n- Ne pas rester trop proche des bush, il peut y avoir un tonneau dedans <br>\r\n- Éviter de fight dans son ult', NULL, NULL, NULL),
(10, 'Akali', 'Garen', 2, 9, 2, 'AkaliConqCoupDomiArmor', 'dringdblade', '- Q AA trade early <br>\r\n- Toujours E quand son Q est sur le point de toucher, il va direct E après et le waste <br>\r\n- S\'il ne E pas après son Q, AA un creep pour consumer le passif et E back puis fuir son E avec un nouveau passif MS <br>\r\n- Trade dans les minions afin que son E fasse moins de dégâts <br>\r\n- Attendre la fin de son shield pour passif AA si possible, éviter de trade s\'il l\'a <br>\r\n- Son passif le heal si on ne le poke pas <br>\r\n- Ne pas trade sous silence <br>\r\n- Éviter les trades even, il outsustain\r\n', NULL, NULL, NULL),
(11, 'Akali', 'Gnar', 2, 10, 3, 'AkaliConqCoupDomiArmor', 'dringdshield', '- Q AA quand il va CS <br>\r\n- Très squishy early, possibilité de le kill s\'il overextend <br>\r\n- E direct après l\'ult <br>\r\n- Attendre lv 2/3 pour all in <br>\r\n- Il a une petite AA range, possibilité de lui rentrer dedans <br>\r\n- Ne pas le fight en mega gnar sauf si on dodge ses spells <br>\r\n- Ne pas all in à côté d\'une wave, il va juste escape', NULL, NULL, NULL),
(12, 'Akali', 'Gragas', 2, 11, 1, 'AkaliConqCoupDomiRM', 'dringdblade', '- Q AA trade early <br>\r\n- Use E quand il E/R pour le follow quand son cc est fini <br>\r\n- Respecter son W <br>\r\n- Rester derrière les creep si on ne veut pas qu\'il engage <br>\r\n- Perma kill pressure lv 6 mais il peut escape ez si on rate le E <br>\r\n- Ne pas short trade sans le E', NULL, NULL, NULL),
(13, 'Akali', 'Hecarim', 2, 12, 4, 'AkaliFleetDomi', 'dring', '- Q AA trade early avant qu\'il puisse stack son Q <br>\r\n- Respecter son heal <br>\r\n- Ne pas waste ses sorts pour chase quand il E, il peut ez turn <br>\r\n- Ne pas faire de trop longs trades quand son W est up et son Q full stacked', NULL, NULL, NULL),
(14, 'Akali', 'Illaoi', 2, 13, 3, 'AkaliConqCoupDomiArmor', 'dringdblade', '- Q AA trade early <br>\r\n- Perma dodge ses spells avant/pendant les trades <br>\r\n- All in 6, si elle a 60-70% de sa vie <br>\r\n- Fuir lorsqu\'elle lance son E ou son R, sauf s\'il est possible de la tuer <br>\r\n- Ce matchup est un minigame de sidestep, tu t\'fais toucher tu meurs <br>\r\n- Ne pas trade après avoir prit son E', NULL, NULL, NULL),
(15, 'Akali', 'Irelia', 2, 14, 2, 'AkaliConqCoupDomiArmor', 'dringdblade', '- Q AA trade si elle Q les 3 premiers creeps mais reculer si elle peut choper un 4eme stack early <br>\r\n- Pas hésiter à utiliser ses spell pour dodge le stun <br>\r\n- Elle gagne les long trades donc freeze au max proche de ma tour ou éviter les trades si je push <br>\r\n- Elle peut start E pour assurer son farm, la zoner si c\'est le cas <br>\r\n- Match up favorable pour Akali sauf si son passif est stack et qu\'elle touche son stun <br>\r\n- Ne pas trade après s\'être fait stun', NULL, NULL, NULL),
(16, 'Akali', 'Jax', 2, 15, 1, 'AkaliConqCoupDomiArmor', 'dringdblade', '- Lv 1 gagnable si il waste son E (constamment avancer proche de lui pour Q et fake AA pour bait son E) <br>\r\n- Le laisser push et freeze proche de la tour <br>\r\n- Toujours garder mon E prêt pour son E <br>\r\n- Quand il essai de jump sur moi, Q derrière et W instant\' pour qu\'il ne puisse pas combo puis passif AA Q <br>\r\n- Respecter son ult, il devient un tank <br>\r\n- Ne pas avancer sans E ni W', NULL, NULL, NULL),
(17, 'Akali', 'Jayce', 3, 16, 3, 'AkaliFleetDomi', 'dringdshield', '- Le laisser push et freeze proche de la tour <br>\r\n- Dodge ses Q <br>\r\n- E quand il engage avec Q puis trade avec passif AA Q, le laisser nous repousser avec son E puis le E back pour revenir <br>\r\n- E/W après avoir ult pour engage puis go pour passif AA > E <br>\r\n- Abuser de la petite fenêtre de son swap marteau > range <br>\r\n- Build Armguards s\'il commence à build de la mr ou si le jg ennemi est AD <br>\r\n- Il est très squishy avant l\'hexdrinker, possibilité de le tuer pré 6 si le E touche <br>\r\n- Pas hésiter à E pour dodge son Q <br>\r\n- Ne pas se faire poke gratuitement', NULL, NULL, NULL),
(18, 'Akali', 'Kayle', 2, 17, 1, 'AkaliConqCoupDomiArmor', 'dringdblade', '- La punir chaque fois qu\'elle s\'approche pour farm <br>\r\n- E pour dodge son R <br>\r\n- Ne pas la laisser scale <br>\r\n- Ne pas trade trop longtemps quand elle a son passif', NULL, NULL, NULL),
(19, 'Akali', 'Kennen', 3, 18, 5, 'AkaliFleetDomi', 'dringdblade', '- Possibilité de le trade lv 1 s\'il vient assez proche <br>\r\n- Aux lv 2/3/4 possibilité de tenter des trade all in, ils ne sont worth que si au moins 50% de sa vie tombe <br>\r\n- Possibilité de le one shot lv 6 selon ses items <br>\r\n- Son premier stun dure 1.5sec ceux d\'après 0.5sec <br>\r\n- Possibilité de le E avant le stun ce qui permet de follow up <br>\r\n- Ne pas go in avec plus d\'un stack de son passif sur la tête <br>\r\n- Essayer de dive seulement s\'il est super low', NULL, NULL, NULL),
(20, 'Akali', 'Kled', 2, 19, 3, 'AkaliConqCutBone', 'dring', '- Q AA lv 1 <br>\r\n- Le laisser shove et jouer proche de la tour, sauf si assez confiant pour sidestep du coup push <br>\r\n- Tous les trades sont gagnants si il rate son Q <br>\r\n- Save les cd/l\'énergie avant de fight sa forme mini <br>\r\n- Sa win condition est de toucher son Q <br>\r\n- La rune Cutdown est insane contre lui <br>\r\n- Ne pas rendre son second Q / se faire toucher par son E <br>\r\n- (mini forme) Ne pas trade sans W quand son W est prêt', NULL, NULL, NULL),
(21, 'Akali', 'Lucian', 3, 20, 3, 'AkaliFleetDomi', 'dringdshield', '- Jouer safe early et éviter le poke afin de tenter un all in lv 2/3/4 <br>\r\n- S\'il E pour agro, Q/E et essayer de le tuer avec plusieurs proc de passif et des AA <br>\r\n- R derrière lui quand il ult pour éviter les dégâts ou E si pas de R prêt <br>\r\n- Si son passif est prêt et qu\'il tue un creep avec sa première AA, la seconde peut me toucher et il peut jump sur moi avec \r\nun autre proc passif qui instant proc PTA, ça fait mal <br>\r\n- Ne pas s\'approcher sans la smoke de up <br>\r\n- Ne pas prendre les dégâts de son ult gratuitement', NULL, NULL, NULL),
(22, 'Akali', 'Malphite', 2, 21, 3, 'AkaliConqSecond', 'dshield', '- Q AA trade early <br>\r\n- Trades gagnables facilement tant qu\'il dodge pas les Q et E avec son W <br>\r\n- Les Malphite players tendent à instant E quand on s\'approche pour Q  AA donc il faut prévoir de dodge avec E puis re E <br>\r\n- La range de son Q est légèrement plus grande que mon Q mais possibilité de le Q pendant qu\'il cast le sien <br>\r\n- Malphite est un champion avec des soucis de mana, il faut essayer de le rendre oom pour outsustain son poke avec D shield/Second wind (si pas confiant pour le trade et le tuer early) <br>\r\n- S\'il est intuable en lane, shove et roam dans la jungle ennemie ou au mid pour avoir des kills <br>\r\n- Ne pas trade s\'il touche son E, ses AA font très mal', NULL, NULL, NULL),
(23, 'Akali', 'Maokai', 2, 22, 5, 'AkaliConqCutDomiArmor', 'dring', '- Q AA Trade early <br>\r\n- Rester loin des bush, il peut avoir un E dedans qui fait mal et slow <br>\r\n- E après qu\'il W afin de pouvoir follow up et trade <br>\r\n- Bien viser le Q après qu\'il W sur moi <br>\r\n- Son Q slow beaucoup ce qui peut foutre en l\'air mon passif <br>\r\n- Roam quand il devient intuable <br>\r\n- Ne pas le laisser scale gratuitement, il gagne dès qu\'il build tabis + spectre\'s/Negatrons\r\n', NULL, NULL, NULL),
(24, 'Akali', 'Mordekaiser', 2, 23, 2, 'AkaliConqCoupDomiRM', 'dringdblade', '- Q AA trade early <br>\r\n- Dodge ses spells avec des sidesteps ou E/R <br>\r\n- All in 6 quand il a environ 70% HP <br>\r\n- Ce matchup est similaire à Illaoi, minigame sidesteps. Tous les trades sont gagnants si je dodge bien. Ne pas le laisser proc son passif, Akali a un bon kit pour dodge même en close combat passif MS E R <br>\r\n- Ne pas le trade quand son passif est activé <br>\r\n- Ne pas le all in quand son W est full charge', NULL, NULL, NULL),
(25, 'Akali', 'DrMundo', 1, 24, 2, 'AkaliConqCoupDomiArmor', 'dringdbladeorb', '- Lv 1 Q AA trade <br>\r\n- Perma short trade jusqu\'à ce qu\'il soit low pour le all in <br>\r\n- Prendre la prio, free farm <br>\r\n- Match-up plutôt facile si on ne se fait pas toucher par ses haches et ses AA, il faut farm autant que possible et roam s\'il reste sous tour. <br>\r\n- Similaire à Nasus il outscale à un moment et on ne peut plus le fight, il faut alors perma roam et aider la team pour plus tard le tomber à plusieurs <br>\r\n- Quand il utilise son ult, ça consomme ses propres hp, on peut utiliser cette consommation comme une part du burst\r\npour le one shot dans les premiers niveaux.', NULL, NULL, NULL),
(26, 'Akali', 'Nasus', 2, 25, 2, 'AkaliConqCoupDomiArmor', 'dringdblade', '- Freeze et farm à fond si possible, chaque ressource compte <br>\r\n- Le punir chaque fois qu\'il avance avec Q AA <br>\r\n- Early dives avec le jungler <br>\r\n- Ce matchup consiste à abuser de Nasus avant qu\'il outscale. Le moment où le fight n\'est plus possible, il faut roam et essayer de forcer des fights. <br>\r\n- Ne pas essayer de le AA quand on est sous flétrissement, juste utiliser des spells pour trade jusqu\'à ce que ça finisse <br>\r\n- Ne pas tank l\'explosion de son E inutilement <br>\r\n- Ne pas le fight sous ult sauf si très low', NULL, NULL, NULL),
(28, 'Akali', 'Olaf', 2, 26, 3, 'AkaliConqCoupDomiArmor', 'dring', '- Q AA trade early et dodge ses haches, les dodge est la clef du matchup <br>\r\n- Dodge son Q avec un bait et un sidestep <br>\r\n- W ou E quand il utilise son W dans un trade <br>\r\n- Le kite et jouer le fight doucement <br>\r\n- Il obtient plus de lifesteal et d\'attaque speed avec son W plus il est low <br>\r\n- Le passif de son R lui donne plus d\'armure et de mr ce qui le rend tanky lv 6 <br>\r\n- Son Q est une AOE et peut toucher dans la smoke <br>\r\n- Ne pas le fight sans W/E quand son W est dispo', NULL, NULL, NULL),
(29, 'Akali', 'Ornn', 2, 27, 2, 'AkaliConqCoupDomiArmor', 'dringdblade', '- Q AA Trade early <br>\r\n- Cancel son W avec la smoke mais il faut le faire tôt sinon son W tape sous invi <br>\r\n- Possibilité de R son second R pour le dodge <br>\r\n- Dodge ses Q early <br>\r\n- E quand il E <br>\r\n- Il faut abuser de son faible early avant qu\'il ne devienne trop tanky pour le tuer <br>\r\n- Ne pas avancer proche de lui sans W/E <br>\r\n- Ne pas rester proche d\'un mur ou son cailloux sans W/E', NULL, NULL, NULL),
(30, 'Akali', 'Pantheon', 2, 28, 4, 'AkaliFleetBone', 'dring', '- Q AA trades early mais dodge ses Q <br>\r\n- W/E son W afin qu\'il ne puisse pas avoir  les 3 AA de son passif <br>\r\n- Faire des Armguards tôt si c\'est la galère <br>\r\n- Possibilité de R à travers son E (shield) pour commencer à faire des dégâts ou E pour attendre la fin <br>\r\n- Son E va bloquer les dégâts du R s\'il est utilisé de derrière pour finir devant lui <br>\r\n- Ne pas trop s\'approcher sans W/E <br>\r\n- Ne pas rester low en lane', NULL, NULL, NULL),
(31, 'Akali', 'Poppy', 2, 29, 4, 'AkaliConqCoupDomiArmor', 'dring', '- Q AA trade sauf si elle a son shield ou bientôt <br>\r\n- E peut toujours être utilisé pour donner le passif mais impossible de recast pendant 2 sec ou R <br>\r\n- Il faut la tuer early ou elle va devenir intuable <br>\r\n- Bait son Q avant les trades ou ça va faire mal <br>\r\n- E avant son R afin de dash back <br>\r\n- Son passif auto peut proc grasp et ça fait mal <br>\r\n- Son W a un long cd et elle doit être puni si elle le waste <br>\r\n- Possibilité de dodge son E knock back si prédit à temps <br>\r\n- Ne pas rester proche des tours/murs <br>\r\n- Ne pas bouffer trop de passifs gratos', NULL, NULL, NULL),
(32, 'Akali', 'Quinn', 3, 30, 4, 'AkaliFleetSecond', 'dshield', '- Play safe jusqu\'au level 2/3 et all in si elle avance trop <br>\r\n- Ne pas prendre trop de dégâts early ou pas de all in <br>\r\n- Possibilité de E avant son E pour la follow afin qu\'elle puisse pas escape <br>\r\n- Très forte early, play safe et abandonner des cs pour garder des hp <br>\r\n- Ne pas trop se faire poke early', NULL, NULL, NULL),
(33, 'Akali', 'Renekton', 2, 31, 4, 'AkaliConqBone', 'dring', '- Q AA trade early <br>\r\n- Éviter de le fight à côté de ma wave pour qu\'il ne puisse pas trop heal avec son Q <br>\r\n- Son W peut toucher sous invi si la smoke n\'est pas lancée assez vite <br>\r\n- Essayer de bait son Q en se déplaçant vers lui puis en reculant <br>\r\n- Les tabis sont très bien mais pas les Armguards, il a de la pénétration d\'armure sur son E et peut stack rapidement le black cleaver <br>\r\n- W ou E instant\' quand il saute sur moi pour éviter son combo <br>\r\n- Il gagne plus de fury quand il est low <br>\r\n- Il est bien plus fort quand sa barre de fury est rouge <br>\r\n- Ne pas se laisser bait par sa barre de HP, son R + Q avec de la fury peut le heal de 700 <br>\r\n- Possibilité de rush tabis assez tôt et quelques épées longues, ce qui permet de ne pas se faire OS par son combo et permet de le gérer avec les stacks conq + last stand <br>\r\n- Ne pas rester low sous sa tour il dive ez <br>\r\n- Ne pas le laisser stack sa furie gratuitement', NULL, NULL, NULL),
(34, 'Akali', 'Rengar', 2, 32, 4, 'AkaliConqBone', 'dring', '- Jouer safe early, laisser quelques CS si besoin <br>\r\n- Attention quand on le burst puisqu\'il peut se soigner avec W <br>\r\n- Bien utiliser son passif pour le dps <br>\r\n- Il va bondir sur les creep pour CS, possibilité de le Q quand il le fait pour proc un passif gratuit <br>\r\n- Quand il utilise son 4eme stack de fury, possibilité de le bait pour qu\'il jump afin de E AA E pour des extra damages <br>\r\n- Possibilité de follow avec le E s\'il devient invi, il faut l\'utiliser à temps <br>\r\n- Son R révele dans la smoke si akali est le champion le plus proche de lui, possibilité de se cacher derrière les potes <br>\r\n- Go armguards/tabis si c\'est la galère <br>\r\n- Ne pas s\'approcher s\'il a sa fury au max <br>\r\n- Ne pas utiliser tout son burst d\'un coup <br>\r\n- Éviter les longs trades sans le W', NULL, NULL, NULL),
(35, 'Akali', 'Riven', 2, 33, 2, 'AkaliConqCoupDomiArmor', 'dringdblade', '- Q AA trade early mais ne pas la laisser venir trop close pour de multiple Q AA <br>\r\n- E quand elle E sur moi, AA et E back <br>\r\n- All in si elle waste son E, elle est très squishy et facile à tuer quand elle ne l\'a plus <br>\r\n- Attention quand elle R, elle obtient un énorme powerspike <br>\r\n- Elle peut cancel les AA avec son 3eme Q et son W <br>\r\n- Ne pas avancer trop proche lv 1 et la laisser Q AA x3 <br>\r\n- Ne pas la laisser scale pour le midgame', NULL, NULL, NULL),
(36, 'Akali', 'Rumble', 2, 34, 4, 'AkaliFleetSecondRM', 'dshield', '- Q AA trade lv 1 <br>\r\n- Le punir quand il surchauffe <br>\r\n- Lv 6 OS possible à 70% hp <br>\r\n- Jouer safe <br>\r\n- Chercher les trade plutôt que le farm puisque son W (shield) a un cd low <br>\r\n- Ne pas le trade quand sa barre est orange (ses spells ont des effets bonus) <br>\r\n- Ne pas rester dans sa range de Q / R', NULL, NULL, NULL),
(37, 'Akali', 'Ryze', 2, 35, 2, 'AkaliConqCoupDomiRM', 'dring', '- Jouer l\'early safe, le laisser push et éviter de se faire poke <br>\r\n- Chercher à Q AA trade lv 2/3 s\'il avance trop <br>\r\n- S\'il n\'a pas phase rush ou qu\'il le waste, possibilité de le tuer avec AA Q / E <br>\r\n- E quand il est sur le point de W, de sorte à pouvoir le chase et le tuer <br>\r\n- Un bon Ryze va slow push early pour éviter un all in lv 2/3, si ça arrive go farm et cherche à kill lv 6 <br>\r\n- Ne pas se faire victim lv 1-5 <br>\r\n- Ne pas le laisser scale', NULL, NULL, NULL),
(38, 'Akali', 'Sett', 2, 36, 4, 'AkaliFleetDomi', 'dring', '- Short trades seulement <br>\r\n- W si son E est sur le point de toucher afin qu\'il ne puisse pas AA x4 pendant le stun <br>\r\n- Bait son E en restant max range de sa hitbox <br>\r\n- Possibilité de all in s\'il waste E/W sur la wave ou qu\'il les rate <br>\r\n- Ne pas essayer de trade après le stun de son E ou essayer de trade quand son E est dispo', NULL, NULL, NULL),
(39, 'Akali', 'Shen', 2, 37, 3, 'AkaliConqCoupDomiArmor', 'dring', '- Q AA trade si son passif est en cd <br>\r\n- Dodge son E avec mon E <br>\r\n- Les longs trades sont gagnants une fois qu\'il a utilisé ses cd <br>\r\n- Quand il utilise son W attendre si il reste du temps de smoke ou s\'il reste du MS du passif <br>\r\n- Toujours se positionner de manière à ce qu\'il ne puisse proc son Q, il gagne les trades courts si il engage <br>\r\n- Son Q est puissant quand la lame touche un champion, essayer de l\'éviter <br>\r\n- Ne pas se faire toucher par son Q <br>\r\n- Ne pas trade proche de sa tour, il peut taunt et c\'est pas ouf', NULL, NULL, NULL),
(40, 'Akali', 'Singed', 2, 38, 2, 'AkaliConqCoupDomiRM', 'dringdblade', '- Q AA Trades Early <br>\r\n- Essayer de freeze la wave en face de ma tour <br>\r\n- Quand la wave est proche de ma tour, il n\'y a rien qu\'il puisse faire puisqu\'il doit avancer dans la range de la tour pour empoisonner les creeps <br>\r\n- Prédire son flip et E préalablement, AA et E back <br>\r\n- Respecter le heal de son ult et ne pas le chase <br>\r\n- Chaque fois qu\'il approche pour last hit, le punir avec Q AA <br>\r\n- Ne pas trade proche de sa tour si il a son flip <br>\r\n- Ne pas chase sans/avec peu d\'énergie', NULL, NULL, NULL),
(41, 'Akali', 'Sion', 2, 39, 2, 'AkaliConqCutDomiArmor', 'dringdblade', '- Q AA trade early <br>\r\n- Si son shield est détruit il ne peut pas faire de dégât avec <br>\r\n- Après avoir été touché par son E, ne pas hésiter à dash back sinon c\'est un free Q <br>\r\n- Utiliser le MS du passif pour sidestep ses Q <br>\r\n- Il scale de manière infinie sur ses hp, Demonic embrace est très fort contre lui <br>\r\n- Ne pas approcher trop près des bushs, si il est dedans et qu\'il Q la zone n\'apparaît pas au sol <br>\r\n- Ne pas se faire toucher par son E après avoir trade', NULL, NULL, NULL),
(42, 'Akali', 'Sylas', 1, 40, 2, 'AkaliConqCoupDomiRM', 'dringdbladeorb', '- Q AA trade early mais attention à ses E engage lv 1/2 <br>\r\n- Attention à son heal early et son haut dps <br>\r\n- Rester derrière les creeps pour éviter son 2ème E mais ne pas oublier qu\'il peut dash à travers les creeps pour me hit <br>\r\n- Essayer de dodge son E avec mon E, puis AA si possible et E back <br>\r\n- Son R a le double de mon R cd donc une fois qu\'il l\'a utilisé il est moins fort pour un moment <br>\r\n- Attention une fois qu\'il a 2/3 items cdr, il peut utiliser son heal 2 à 4 fois dans un fight <br>\r\n- Il heal plus quand il est low hp <br>\r\n- Son E peut interrompre le R d\'Akali ce qui cancel le dash et les dégâts <br>\r\n- Ne pas être trop proche et lui donner un free W heal <br>\r\n- Ne pas essayer de le fight quand il a mon R et que le mien est en cd', NULL, NULL, NULL),
(43, 'Akali', 'TahmKench', 2, 41, 3, 'AkaliConqCutBone', 'dring', '- Q AA short trades early <br>\r\n- Éviter les longs trades, il les gagne, rester derrière les creep pour éviter son Q qui slow <br>\r\n- Si il obtient 2+ stacks sur son passif, W/E et partir très vite <br>\r\n- Il doit caler 3 AA pour me manger <br>\r\n- Hors combat, son E le soigne en % de dégats qu\'il a prit <br>\r\n- Ne pas le laisser toucher son Q quand mon W/E est en cd, il peut ez AA x3 et me bouffer ce qui fait beaucoup de dégâts', NULL, NULL, NULL),
(44, 'Akali', 'Teemo', 3, 42, 2, 'AkaliConqCoupDomiRM', 'dringdshield', '- Jouer le lv 1 safe et pas prendre trop de dégâts <br>\r\n- All in lv 2 si je touche mon E ou jouer safe et attendre le lv 3 <br>\r\n- Attendre la fin du blind de son Q dans la smoke si possible <br>\r\n- E quand il cast son Q, ez a toucher à ce moment là <br>\r\n- Attention à la range aoe de son R, elle est grande <br>\r\n- Red trincket is the key <br>\r\n- Ne pas se faire free poke', NULL, NULL, NULL),
(45, 'Akali', 'Tryndamere', 2, 43, 2, 'AkaliConqCoupDomiArmor', 'dringdblade', '- Q AA trade early mais attention à son E AA <br>\r\n- Le laisser shove et garder le freeze proche de la tour <br>\r\n- E quand il E sur moi, puis E back <br>\r\n- Garder la smoke pour son R <br>\r\n- Un peu coinflip puisqu\'il gagne s\'il crit beaucoup <br>\r\n- Faire des tabis si c\'est la galère <br>\r\n- Ne pas faire de trop long trades sans W/E <br>\r\n- Ne pas s\'approcher sans énergie', NULL, NULL, NULL),
(46, 'Akali', 'Urgot', 2, 44, 2, 'AkaliConqCoupDomiArmor', 'dringdblade', '- Q AA trade early mais attention s\'il commence E (dash), si c\'est le cas il hard win lv 1 <br>\r\n- Utiliser le E pour dodge le sien et c\'est free lane, si il touche avec le sien il gagne <br>\r\n- Il va push à cause de son passif, freeze et le punir s\'il avance trop <br>\r\n- Possibilité de QSS son R <br>\r\n- Ne pas trade après s\'être prit son E', NULL, NULL, NULL),
(47, 'Akali', 'Vayne', 3, 45, 3, 'AkaliFleetDomi', 'dringdshield', '- Jouer safe l\'early et éviter le poke pour all in lv 2/3/4 <br>\r\n- Quand elle Q et qu\'elle s\'apprête à AA, possibilité de W ce qui la fera AA un creep et reset les potentiels stacks (nécessite de bien timer et connaître très bien sa range d\'attaque) <br>\r\n- Après avoir engage avec R, elle va essayer de E instant\' il faut essayer de toucher le E avant qu\'elle puisse afin de pouvoir la chase et réduire ses chances d\'escape <br>\r\n- W si elle est sur le point de E contre un mur afin d\'etre invi pendant le stun et pas subir un dps free <br>\r\n- Les vayne players greed souvent pour proc le 3eme stack <br>\r\n- Si elle build hexdrinker, garder E/R1 jusqu\'à ce qu\'elle soit low si possible <br>\r\n- Ne pas rester proche des murs sans raison <br>\r\n- Ne pas la laisser proc son 3eme stacks gratos <br>\r\n- Ne pas balancer ses sorts à l\'aveugle quand elle ult, attendre qu\'elle se révèle et Q/E/R <br>\r\n- Ne pas la laisser scale', NULL, NULL, NULL),
(48, 'Akali', 'Vladimir', 1, 46, 2, 'AkaliConqCoupDomiRM', 'dring', '- Q AA early mais être sur qu\'il continu de push <br>\r\n- Le laisser push et freeze devant la tour <br>\r\n- Ne pas le laisser toucher ses Q quand sa jauge est pleine <br>\r\n- Free kill quand il n\'a plus son W <br>\r\n- Les passif AA et R1 le touchent sous R si ils sont cast avant <br>\r\n- Il hard outscale mais ne gagne pas l\'early <br>\r\n- Son Q le heal beaucoup au plus il est low <br>\r\n- Garder en tête que la marque de son R augmente les dégâts infligés <br>\r\n- Ne pas faire de trades even <br>\r\n- Ne pas le laisser scale', NULL, NULL, NULL),
(49, 'Akali', 'Volibear', 2, 47, 2, 'AkaliConqCoupDomiArmor', 'dshield', '- Q AA trades early <br>\r\n- Seulement des shorts trades <br>\r\n- E avant qu\'il soit trop proche quand il Q sinon il cancel le dash <br>\r\n- W son Q si trop tard mais attention le stun touchera quand même mais il ne pourra pas AA ni W <br>\r\n- Son passif tape constamment mais fait très peu de dégâts le Doran shield est très bien contre lui <br>\r\n- Son W a peu cd et s\'il touche 2x avec il se heal et fait plus de dégâts sur le second proc <br>\r\n- Son E fait beaucoup de dégâts early et slow en plus de  lui conférer un shield, il a une petite animation ce qui laisse\r\ndeviner quand ça va toucher, en profiter pour le dodge <br>\r\n- Ne pas faire de longs trades sans W', NULL, NULL, NULL),
(50, 'Akali', 'Warwick', 1, 48, 3, 'AkaliConqBone', 'dringdbladeorb', '- Q AA trade early mais ne pas le laisser Q avant d\'avoir le passif AA prêt <br>\r\n- E à temps quand il est sur le point de Q <br>\r\n- Attendre la fin de son E dans la smoke <br>\r\n- Éviter son R à tout prix puisqu\'il fait 250-300 dégâts et le heal tout autant <br>\r\n- Son ult révèle dans la smoke si il touche <br>\r\n- Son heal est tripplé quand il est low <br>\r\n- Son attack speed est 2x-3x quand je suis en dessous de 50% et 33% hp <br>\r\n- Ne pas le fight en étant low <br>\r\n- Ne pas waste mes dégâts quand son E est actif <br>\r\n- Ne pas le laisser Q gratos', NULL, NULL, NULL),
(51, 'Akali', 'MonkeyKing', 2, 49, 3, 'AkaliConqBone', 'dring', '- Jouer safe jusqu\'au lv 2 <br>\r\n- E quand il E, AA et E back <br>\r\n- Possibilité de Red trincket après le premier back <br>\r\n- Passif AA va se stop s\'il W, appuyer sur S et attendre qu\'il réapparaisse pour le consumer <br>\r\n- Son R peut cancel AA/E/R <br>\r\n- Possibilité d\'avoir un passif via son clone <br>\r\n- Ne pas trop s\'avancer lv 1', NULL, NULL, NULL),
(52, 'Akali', 'Yasuo', 2, 50, 3, 'AkaliConqBone', 'dring', '- Éviter ses Q <br>\r\n- Le Q quand il va cs avec ses Q puis le AA <br>\r\n- E quand il E sur moi, AA puis E back quand il E pour partir <br>\r\n- Short trades early <br>\r\n- Lv 6 one shot s\'il n\'a pas son wall <br>\r\n- Un bon Yasuo est dur à battre puisqu\'il va W les bons sorts et prendre des shorts trades sans que je puisse réagir <br>\r\n- Ne pas faire de longs trades early <br>\r\n- Ne pas waste mon énergie quand je push <br>\r\n- Ne pas avancer sans W/E', NULL, NULL, NULL),
(53, 'Akali', 'Yorick', 2, 52, 4, 'AkaliConqCoupDomiArmor', 'dring', '- Q AA trade early <br>\r\n- Éviter la poussière qu\'il envoie avec son E, ça force ses bestioles à attaquer même sous invi <br>\r\n- Utiliser W s\'il me cage sinon il free dps <br>\r\n- Mon Q ne peut pas one shot ses bestioles, attention à ne pas le fight sauf si certains de pouvoir faire un trade gagnant et m\'escape <br>\r\n- Possibilité de sortir de la cage avec E <br>\r\n- Ne pas le fight sans E, sa cage sera punitive puisqu\'impossible d\'utiliser le passif dedans <br>\r\n- Ne pas le fight quand son ult est actif sauf s\'il est tuable facilement <br>\r\n- Ne pas fight sans W puisqu\'il a bien plus de DPS avec ses bestioles et son R', NULL, NULL, NULL),
(54, 'Camille', 'Cassiopeia', 6, 55, 4, 'CamilleConqSecondRM', 'dbladetrihydra', '- Si elle flaque le mur il est impossible de recast le E <br>\r\n- C\'est un control mage au top, elle est super facile à gank et très vulnérable aux all in <br>\r\n- Attention à son Q qui a un faible CD lors des all in, elle peut 100-0 vraiment facilement', NULL, 'Freeze devant ma tour, si elle freeze devant la sienne elle peut te zoner donc attention à pas trop abimer les creeps avec W.', 'Les control mages ne peuvent pas split push, fais ce qui est le mieux pour la team et la game.'),
(55, 'Camille', 'Chogath', 6, 56, 2, 'CamilleConqInspiRM', 'dbladedivinehydra', '- L\'early game est free, toujours trade avec une wave de creeps <br>\r\n- Ne pas le laisser trade pour sustain, il faut jouer agressif et ne pas le laisser utiliser son passif', NULL, 'Freeze proche de ta tour. C\'est assez simple à set up, il a besoin de push pour regen mana/hp il faut donc en tirer avantage. Quand le freeze est en place il est très simple de le all in.', 'Camille est naturellement meilleure en side, il faut juste être sur que le all in est safe.'),
(56, 'Camille', 'Darius', 7, 57, 5, 'CamilleConqSecondArmor', 'dbladetritabihydrat', '- S\'il commence avec Q, aller vers lui et trade avec Q, all in lv 2 <br>\r\n- S\'il commence W, ne pas s\'approcher, abandonner des cs si nécessaire, si jamais il touche son W au milieu de la lane il va ghost et kill sans counterplay <br>\r\n- Faire des fast hookshot sinon il peut cancel <br>\r\n- Demander pour un gank et ult son Q <br>\r\n- Camille outscale en late', NULL, 'Freeze proche de ta tour afin de pouvoir le hookshot, give up des cs early si nécessaire pour ça. Normalement il n\'a pas de TP donc s\'il meurt c\'est fini pour lui.', 'Split push, il counter camille en teamfight 5v5 sauf s\'il est possible de le burst dans un R avec la team.'),
(57, 'Camille', 'Fiora', 7, 58, 3, 'CamilleConqBoneArmor', 'dbladeexetrihydrat', '- Ne jamais lui donner des vitaux gratuits, c\'est pourquoi beaucoup de joueurs Camille perdent ce matchup <br>\r\n- La Q chaque fois qu\'elle essaie de Q <br>\r\n- Ne jamais fight sans le shield <br>\r\n- Brain son parry sois en restant sur le mur sois en ratant la cible volontairement <br>\r\n- W seulement après qu\'elle ait Q pour qu\'elle ne puisse pas sidestep', NULL, 'Le wave management n\'est pas important ici. Ce qui importe est où tu te positionnes par rapport à la position des vitaux : si c\'est derrière toi tu peux toujours avancer et free trade. Rester close des murs n\'est pas si bien.', 'Teamfight si t\'es derrière, split si tu peux la tuer en sidelane.'),
(58, 'Camille', 'Gangplank', 7, 59, 4, 'CamilleConqSecondArmor', 'dshieldtiamattrihydra', '- Essayer de CS avec W pour les plus durs et attendre qu\'il ait Q pour les autres <br>\r\n- Jouer autour des procs Dshield <br>\r\n- Utiliser l\'auto cancel sur les barrels et E Q2 sur lui, s\'il est sur un barrel : E sur lui et auto cancel sur barrel puis Q2 sur lui <br>\r\n- La lane est très difficile avant les premiers items', NULL, 'Essaye de garder la wave proche de ta tour afin de prendre des trades back, il devrait naturellement la push avec ses barrels.', 'Après la triforce si tu n\'es pas trop derrière tu le détruit en side, Camille est moins forte en 5v5 car GP a de gros dégâts en AOE.'),
(59, 'Camille', 'Garen', 7, 60, 1, 'CamilleConqInspiArmor', 'dbladetrihydra', '- Le Q chaque fois qu\'il vient Q sur toi, c\'est assez évident à anticiper et ton shield devrait le tank <br>\r\n- W chaque fois que le CD est dispo <br>\r\n- Il est facile de le kite, il ne devrait jamais pouvoir être capable de te all in', NULL, 'Le wave management n\'est pas important ici car tu ne joues pas autour des hookshots dans ce matchup.', 'Split peu importe si tu es devant ou derrière.'),
(60, 'Camille', 'Gnar', 5, 61, 2, 'CamilleGraspBoneArmor', 'dbladetrihydrat', '- Max le E dans ce matchup <br>\r\n- Cheese lv 1, s\'il facecheck commencer au Q et prendre 80% de ses HP <br>\r\n- Son E a 22 sec de CD donc si tu max le E tu auras une grosse fenêtre pour l\'engage dès qu\'il l\'utilise', NULL, 'La wave est assez facile à setup proche de ta tour ou de la sienne car pour trade il a besoin d\'AOE les creeps.', 'Split seulement, ses teamfight sont très bons à part s\'il est vraiment derrière.'),
(61, 'Camille', 'Gragas', 6, 62, 2, 'CamilleConqBoneRM', 'dbladetrihydra', '- Le forcer à E afin de trade, il le max donc ça ne devrait pas être compliqué, après qu\'il l\'ait fait son CD est long early donc tu peux le chase avec le hookshot pour des free trades <br>\r\n- Après ses items CDR tu as besoin des mercures', NULL, 'Il va constamment autopush, tous ses sorts sont en AOE.', 'Seulement split si tu snowball, si tu n\'es pas devant essaie de farm et d\'éviter les 1v1.'),
(62, 'Camille', 'Hecarim', 7, 63, 2, 'CamilleConqInspiArmor', 'dbladeexetrihydra', '- Trade avec le shield <br>\r\n- Si tu le catch sans ses Q stacks il est mort à cause de ses gros CD <br>\r\n- Le matchup peut être un peu tricky si tu es derrière mais en général tu counter son kit assez bien avec ton R <br>\r\n- L\'anti heal rend le matchup vraiment plus simple', NULL, 'Tous ses sorts sont en AOE, il va donc push naturellement.', 'Split marche très bien car Camille 2 items gagne contre Hecarim 3 items.'),
(63, 'Camille', 'Illaoi', 7, 64, 2, 'CamilleConqInspiArmor', 'dbladeexetrihydra', '- Q ses tentacules pour rendre son W inutile <br>\r\n- Bait son E avec des big brain sidesteps, si tu la catch sans ce sort elle est morte <br>\r\n- R son R afin d\'esquiver les dégâts et le spawn de tentacule', NULL, 'La wave au milieu est pire pour elle que pour toi car les tentacules ne l\'atteignent généralement pas et tu peux avoir des free trades Q. Sois juste sûr de tuer les quelques tentacules trop proches de la wave.', 'Ne pas side si tu es derrière seulement si t\'es bien, les teamfight de Illaoi ne sont pas si bons.'),
(64, 'Camille', 'Irelia', 7, 65, 3, 'CamilleConqBoneArmor', 'dbladetrihydrat', '- Avancer et trade Q lv 1, si elle essai d\'avoir 5 stacks elle devrait perdre beaucoup de vie <br>\r\n- Elle peut aisément te zoner hors de portée des creeps <br>\r\n- À partir du moment où elle obtient son Sceptre Vampirique, trade devient inutile à cause de son sustain il faudra donc attendre ton item spike et carry comme ça', NULL, 'Essai de ne jamais la fight dans la wave pour ça il ne faut jamais slowpush, si tu la catch sans creep et sans stack elle est morte.', 'Tu peux faire les deux, tu l\'outscale dans les deux. Si tu es devant hésite pas à la dive en side.'),
(65, 'Camille', 'Jax', 5, 66, 5, 'CamilleGraspBoneArmor', 'dbladetrihydra', '- W chaque fois que le CD est dispo <br>\r\n- Rester proche des murs et ne jamais s\'en éloigner, s\'il te saute dessus tu peux juste E et reculer <br>\r\n- Après le lvl 6 tu ne gagnes jamais sauf si tu arrives à le hard poke avant de all in <br>\r\n- Tu ne peux trade ni ne peux avancer vers les creeps si son E est dispo car tu ne peux proc le shield', NULL, 'Essaie de garder la wave proche de ta ou sa tour car tu as besoin de rester proche des murs, si la wave est mid prends juste l\'exp.', 'Tu ne peux pas side contre lui à part si un miracle arrive et qu\'il est vraiment vraiment derrière.'),
(66, 'Camille', 'Jayce', 7, 67, 3, 'CamilleConqSecondArmor', 'dshieldtrihydra', '- Spam W <br>\r\n- Ne le laisse pas poke gratuitement <br>\r\n- Essayer de bait avec E Q ça lui fait perdre 1 CS à chaque fois c\'est worth <br>\r\n- Le all in s\'il switch sur la range proche de toi, il ne pourra pas disengage <br>\r\n- Respecte le fog of war, il a une grosse range', NULL, 'Abandonne quelque CS s\'il le faut pour garder la wave proche de ta tour, tu veux toujours être proche des murs.', 'Sidelane est très simple après la Triforce et les teamfight sont meilleurs pour Camille.'),
(67, 'Camille', 'Kayle', 6, 68, 2, 'CamilleConqInspiRM', 'dbladetrihydrat', '- Pas de menace early game, la perma all in pre 6 et elle sera naturellement derrière en CS <br>\r\n- Post 6 garde la wave proche de ta tour pour la all in <br>\r\n- Utilise ton R pour dodge les dégâts de son R et tu devrais être bon même en late', NULL, 'Pre 6 la wave importe peu, post 6 il faut la garder proche de ta tour car c\'est un champion range avec un bon potentiel de chase si tu waste ton E.', 'Les deux marchent mais elle a une meilleure utilité en 5v5.'),
(68, 'Camille', 'Kennen', 6, 69, 2, 'CamilleConqSecondRM', 'dshieldtrihydra', '- Max E and spam W <br>\r\n- Il a peu de dégât et ne scale qu\'en teamfight ce qui n\'arrivera jamais si tu side <br>\r\n- Peu de menaces early bien qu\'il soit un lane bully <br>\r\n- Post 6 tes all in sont dévastateurs sur lui', NULL, 'Garde la wave proche de ta tour ou la sienne, tu peux roam s\'il freeze et que tu peux pas casser ça.', 'Force le à répondre en sidelane et rotate.'),
(69, 'Camille', 'Kled', 7, 70, 1, 'CamilleConqBoneArmor', 'dbladetrihydra', '- Abuser des trades W puis Q avec le passif <br>\r\n- S\'il touche un Q, avance vers lui et Q pour proc le shield <br>\r\n- La plupart des joueurs Kled vont garder leur W jusqu\'à en avoir vraiment besoin donc les trades early sont free <br>\r\n- Essaye de le mettre mal juste avec du poke sans E sauf si tu es sûr à 100% de pouvoir dodge son Q ou s\'il l\'a en CD <br>\r\n- Sois attentif à son arme, si elle est jaune son W est up et il a beaucoup de CD lvl 1', NULL, 'Garde la wave proche de ta tour ou la sienne. Tu voudras toujours disengage avec un E stun ou Q into shield, de cette manière il ne pourra jamais te all in facilement.', 'Split si t\'es devant, c\'est super simple de dive un kled qui est derrière avec un classique Q E Q2.'),
(70, 'Camille', 'Malphite', 6, 71, 3, 'CamilleConqInspiRM', 'dbladetrihydra', '- Ne le laisse pas avoir de free trades avec son passif et t\'es bon <br>\r\n- Faible menace en all in à cause de ses longs CD et ses faibles dégâts early', NULL, 'Tant qu\'il ne freeze pas quand tu es low t\'es bon, push puis roam car il est très difficile de le tuer à part s\'il fait une grosse erreur.', 'Sidelane puis rotate est ce qui marche le mieux ici.'),
(71, 'Camille', 'Lucian', 7, 72, 3, 'CamilleConqSecondArmor', 'dshieldtrihydra', '- Commencer W, poke jusqu\'au lvl 3 et tenter de all in <br>\r\n- Punie le s\'il waste son E <br>\r\n- Ton grappin stop son ulti', NULL, 'Essaye de garder la wave proche de ta tour afin de faciliter les all in.', 'Tu gagnes facilement en side donc fais ce qui est le mieux pour la team.'),
(72, 'Camille', 'Maokai', 6, 73, 3, 'CamilleConqInspiRM', 'dbladeexetrihydra', '- Respecte les bushs à cause des petits arbres qu\'il met dedans positionne toi près des murs à coté de la rivière <br>\r\n- Il peut pas vraiment te tuer d\'un coup c\'est une petite menace <br>\r\n- Très dur à solo kill early mais facile après les premiers items', NULL, 'Le wave management n\'est pas important ici, il faut juste se positionner proche de la rivière et éviter les bushs.', 'Sidelane puis rotate en 5v5, joue autour des TP.'),
(73, 'Camille', 'Mordekaiser', 4, 74, 5, 'CamilleGraspBoneRM', 'dbladetrihydra', '- La fenêtre pour le tuer est surtout pre 6 <br>\r\n- Commence W et poke le autant que possible en en prenant le moins que tu puisses <br>\r\n- Petit all in lvl 3 puis full all in quand tu as tes CD et la meilleure façon de le tuer <br>\r\n- Post 6 tu ne peux jamais E vers lui sinon tu es mort <br>\r\n- Après la Triforce il devient facile à kite avec les bottes et la MS du phage', NULL, 'Essaie de toujours freeze proche de ta tour pour qu\'il ne puisse juste R et AA jusqu\'à te tuer. Joue super agressif avec la wave pre 6 et ça devrait marcher la plupart du temps.', 'Les deux marchent à moins que tu sois vraiment derrière auquel cas tu ne peux pas split.'),
(74, 'Camille', 'DrMundo', 7, 75, 1, 'CamilleConqInspiArmor', 'dbladeexedivinehydra', '- Il n\'est pas du tout une menace early, commence Q et zone le loin de ses CS <br>\r\n- Lvl 9 il commence à devenir une menace mais il devrait être derrière de toute façon', NULL, 'Le wave management n\'est pas important ici juste perma all in sauf si tu as peur du jungler.', 'Sidelane puis rotate puisque c\'est un matchup tank.'),
(75, 'Camille', 'Nasus', 7, 76, 2, 'CamilleConqInspiArmor', 'dbladetrihydra', '- Zone le hors de ses CS lvl 1 <br>\r\n- Perma all in pre 6 et essaie d\'avoir un cheater recall lvl 4 sauf si tu peux le tuer <br>\r\n- Post 6 Trade le à l\'usure avec Q2 et brillance <br>\r\n- Le all in seulement s\'il est mid HP <br>\r\n- Post 6 il ne peut te tuer sauf si tu E sur lui et qu\'il ult autrement c\'est un free matchup', NULL, 'Si t\'arrives à freeze c\'est comme s\'il était AFK c\'est pourquoi tu vises un cheater recall lvl 4.', 'Il va essayer de perma side donc contest le si t\'es devant tu peux aussi aller en teamfight puisque personne ne prend TP sur Nasus.'),
(76, 'Camille', 'Olaf', 7, 77, 3, 'CamilleConqInspiArmor', 'dbladetrihydra', '- Commencer W et respecter ses all in lvl 1 même si ça signifie perdre quelques CS <br>\r\n- Il ne peut te tuer sauf si tu waste ton E <br>\r\n- Évite de prendre trop de hache <br>\r\n- Sois sûr de scale, même si t\'es derrière tu seras toujours plus utile', NULL, 'Ce n\'est pas important ici tant que tu ne E pas bêtement sur lui, s\'il freeze alors roam.', 'Les deux marchent, Olaf top n\'est qu\'un perso early donc fais au mieux pour la team.'),
(77, 'Camille', 'Ornn', 7, 78, 3, 'CamilleConqBoneArmor', 'dbladetrihydra', '- Commence W et spam le <br>\r\n- E hors de son Q si besoin <br>\r\n- Faire des fast Q trades et s\'il W recule et sidestep son E <br>\r\n- Ult quand son R est sur le point d\'entrer en collision avec lui et tu devrais dodge à chaque fois', NULL, 'Ce n\'est pas important ici, il te donne des free E avec son Q.', 'Essaie de l\'obliger à répondre en side, les 5v5 ne sont pas une bonne idée contre Ornn.'),
(78, 'Camille', 'Pantheon', 7, 79, 4, 'CamilleConqBoneArmor', 'dshieldtrihydra', '- Il n\'y a rien à faire early, il t\'outdamage et bloque toute tes engage avec son E <br>\r\n- Prend l\'exp et scale <br>\r\n- Matchup difficile mais plus grand monde ne le joue top', NULL, 'Ce n\'est pas important, tu ne peux rien faire sans tes premiers items.', 'Tu le surclasse dans les deux mais reprend un lead de gold en side.'),
(79, 'Camille', 'Poppy', 7, 80, 5, 'CamilleConqBoneArmor', 'dbladedivinehydra', '- Tu ne peux pas vraiment E ici Poppy le cancel avec son W <br>\r\n- Essaie de la Q à chaque fois que tu vas récup un CS afin de pop le shield pour bloquer les dégâts de son Q <br>\r\n- Si elle est proche d\'un mur proche de ta tour tu peux la E instant\' elle ne devrait pas pouvoir réagir sauf si elle prédit <br>\r\n- Ton ulti cancel le sien donc utilise le judicieusement', NULL, 'Garde la wave proche de ta tour early donc laisse la push lvl 1.', 'Essaie de side mais il te faut de la vision dans la jungle ennemie. Ton impact en teamfight est grandement réduit à cause de Poppy.'),
(80, 'Camille', 'Quinn', 7, 81, 2, 'CamilleConqSecondArmor', 'dbladetrihydra', '- Commence au W et spam le jusqu\'au lvl 3 puis la all in si elle avance dans la range de ton E <br>\r\n- Ton E a la priorité sur le sien donc si elle l\'utilise tu peux la stun pendant son saut', NULL, 'Tant que tu n\'a pas besoin de dive dans la range de sa tour c\'est bon sois juste sur de savoir où est le jungler ennemi quand tu l\'engage.', 'C\'est un champ orienté roam, tu la détruit dans les deux.'),
(81, 'Camille', 'Renekton', 5, 82, 5, 'CamilleGraspBoneArmor', 'dbladetrihydrat', '- Honnêtement ban le c\'est le plus simple <br>\r\n- Commencer au W, jouer safe et poke <br>\r\n- Le plus important est de proc le shield quand il te saute dessus avant de stun afin de tanker le plus de dégâts possible <br>\r\n- Demander l\'aide du jungler', NULL, 'Garde la wave proche de ta tour de préférence.', 'Tu l\'outscale après 2-3 items si tu n\'es pas trop derrière, tu peux side ou teamfight selon l\'état de la game.'),
(82, 'Camille', 'Riven', 5, 84, 3, 'CamilleGraspBoneArmor', 'dbladetrihydra', '- Commence Q lvl 1 et domine l\'early avec passif et bone plating <br>\r\n- Tu gagnes pre 6 tant que tu touches tes E, si tu rates tu meurs <br>\r\n- Lvl 6 il faut respecter ses all in <br>\r\n- Elle peut cancel les E avec son W et son Q3', NULL, 'Garder la wave proche de ta tour ou la sienne car les murs sont plus proches et il est plus dur pour elle de réagir a des fast E.', 'Split seulement si tu es devant.'),
(83, 'Camille', 'Rumble', 6, 85, 2, 'CamilleConqInspiRM', 'dbladetrihydra', '- Hard early à cause de son low CD shield <br>\r\n- tu ne gagne pas les all in sauf s\'il fait de grosses erreurs <br>\r\n- En revanche Camille outscale Rumble de manière très violente après les premiers items donc joue autour de ça', NULL, 'Il autopush avec son lance-flamme afin de trade.', 'Split constamment, il faut le forcer a répondre en side.'),
(84, 'Camille', 'Ryze', 6, 86, 1, 'CamilleConqSecondRM', 'dbladetrihydra', '- Commencer au E et perma all in, il a peu de HP et une mauvaise disengage <br>\r\n- Super free matchup', NULL, 'Ce n\'est pas important ici tant que ce n\'est pas dans la range de sa tour.', 'Les deux fonctionnent, fais au mieux pour la team.'),
(85, 'Camille', 'Sett', 7, 87, 3, 'CamilleConqBoneArmor', 'dbladetrihydra', '- Perma spam W <br>\r\n- Q pour proc le passif s\'il te E <br>\r\n- Ult pour dodge sont W chargé <br>\r\n- Il faut prendre doucement sa vie petit à petit avec des proc passif <br>\r\n- Post 6 fais attention qu\'il ne flash R pas sous sa tour', NULL, 'Il faut essayer de garder la wave proche de ta tour afin de faciliter les all in s\'il rate son W.', 'Tu gagnes facilement en side et tu es plus utile que lui en teamfight, fais au mieux pour la team.'),
(86, 'Camille', 'Shen', 7, 88, 3, 'CamilleConqBoneArmor', 'dbladetrihydra', '- Le premier qui E meurt <br>\r\n- Ne le laisse pas proc bone plating gratuitement <br>\r\n- Trade uniquement s\'il n\'a pas son shield <br>\r\n- Fais des calins aux murs <br>\r\n- Ne jamais W avant son passif afin qu\'il ne puisse pas le tanker <br>\r\n- Ne jamais cancel sa tp si son shield suffit à faire la différence', NULL, 'Proche de ta tour ou au milieu mais jamais près de la sienne pour éviter les taunts gratuits.', 'Tu gagnes les 1v1 en side mais il peut rotate plus vite avec son ult donc fais au mieux pour la team.'),
(87, 'Camille', 'Singed', 6, 89, 2, 'CamilleConqInspiRM', 'dbladetrihydra', '- Commencer au W et poke hard <br>\r\n- Auto avant de se faire jeter <br>\r\n- E seulement si t\'es proche de ta tour afin qu\'il ne puisse all in', NULL, 'Garde la wave proche de ta tour, singed ne peut pas trade sans tuer les creeps donc c\'est facile à setup.', 'Il est naze dans les deux donc tu peux juste le suivre et le tuer.');
INSERT INTO `other_stuff` (`id`, `id_my_character`, `id_character`, `id_build`, `id_setrunes`, `difficulty`, `runes`, `item_path`, `tips`, `parry`, `wave`, `teamfight_split`) VALUES
(88, 'Camille', 'Sion', 7, 90, 2, 'CamilleConqBoneArmor', 'dbladedivinehydra', '- Spam W dès que le sort est dispo, il ne peut pas vraiment l\'esquiver <br>\r\n- Q les creeps puis avancer avec W et Q2 <br>\r\n- Early il est squishy et a de longs CD il faut donc en abuser avec des all in <br>\r\n- Après Bami ça devient un combat de qui est OOM le premier <br>\r\n- Même s\'il part AD il ne peut pas vraiment te tuer sauf si tu int <br>\r\n- Essaie de ne pas cancel son Q avec E, juste attend afin qu\'il ne récupère pas le CD <br>\r\n- Attention aux Q dans les bushs', NULL, 'Garde la wave proche de ta tour ou la sienne afin d\'insta E.', 'Il ne peut pas te tuer en side mais ça prend beaucoup de temps de le tuer lui. Essaie de le forcer à rotate en side et rotate à ton tour vers ta team.'),
(89, 'Camille', 'Sylas', 6, 91, 3, 'CamilleConqBoneRM', 'dbladeexetrihydra', '- Commence au Q et trade lvl 1 <br>\r\n- Tu peux perdre tes all in s\'il joue smart et bait ton E, ne l\'utilise jamais à moins qu\'il n\'utilise lui même le sien <br>\r\n- Le matchup devient bien plus simple après avoir acheté de l\'anti heal', NULL, 'Garder la wave proche des murs, si elle est au centre évite d\'avancer.', 'Les deux marchent, aller en side est mieux cependant.'),
(90, 'Camille', 'TahmKench', 5, 92, 5, 'CamilleGraspBoneArmor', 'dbladedivinehydra', '- Commencer W et jouer safe avec du poke <br>\r\n- Éviter les long trades <br>\r\n- Le champ est dur à all in, ne le faire que s\'il est midlife éventuellement <br>\r\n- Demander l\'aide du jungler', NULL, 'Garde la wave proche de ta tour de préférence.', 'Tu es bien meilleur que lui dans les deux, fais ce qui est nécessaire pour la team.'),
(91, 'Camille', 'Teemo', 6, 93, 5, 'CamilleConqSecondRM', 'dshieldtrihydra', '- Commencer W et jouer safe <br>\r\n- Évite de lui donner du free poke <br>\r\n- Lors d\'un all in proc le shield dès que possible et attendre la fin du blind <br>\r\n- Essaye de bait son Q afin de all in plus facilement <br>\r\n- Le red trincket est très utile ici lorsque Teemo est 6', NULL, 'Essaye de garder la wave proche de ta tour pour faciliter les all in.', 'Tu es meilleur en side après les premiers items fais simplement attention aux champignons. Camille est plus utile que Teemo en teamfight donc fais ce qui te semble le mieux.'),
(92, 'Camille', 'Tryndamere', 7, 94, 5, 'CamilleConqBoneArmor', 'dbladetabitrihydra', '- Respecte ses lvl 1 Ghost fury all in <br>\r\n- Grade ton E pour disengage après qu\'il Q avec tempo <br>\r\n- Lvl 6 il peut juste te run down avec Ghost donc respecte <br>\r\n- Rush les coques en acier si possible <br>\r\n- Trade quand sa rage est vide', NULL, 'Essaie de setup un slowpush vers ton side early.', 'Il hard win en side mais tu es meilleur en teamfight.'),
(93, 'Camille', 'Urgot', 7, 95, 3, 'CamilleConqInspiArmor', 'dbladetrihydra', '- Spam W early <br>\r\n- Évite de te faire E gratuitement <br>\r\n- Tu peux cancel son E avec le tien si tu es assez rapide <br>\r\n- Post 9 ça devient hard si tu n\'es pas assez devant <br>\r\n- Il est facilement gankable <br>\r\n- Tu peux facilement dodge son R avec le tien', NULL, 'Garde la wave proche de ta tour ou la sienne pour des fast E.', 'Tu gagnes en side si tu kite et tu es meilleur en teamfight sauf s\'il réussi son exexute.'),
(94, 'Camille', 'Vayne', 7, 96, 3, 'CamilleConqSecondArmor', 'dbladetrihydra', '- Commencer W et poke puis tenter de all in lvl 3 <br>\r\n- Post 6, elle va essayer de E lors d\'un all in grappin tu peux l\'esquiver si tu anticipes avec ton R', NULL, 'Garde la wave proche de ta tour pour all in plus facilement un range matchup.', 'Tu gagnes facilement en side, fais au mieux pour ta team.'),
(95, 'Camille', 'Vladimir', 6, 97, 3, 'CamilleConqSecondRM', 'dbladetrihydra', '- Commencer au E et perma all in lvl 1 à 3 <br>\r\n- N\'engage pas au milieu de trop de creeps <br>\r\n- Tu l\'outduel une grande partie de la game il n\'y a vraiment qu\'en très late game qu\'il gagne <br>\r\n- Ne go pas anti heal c\'est un item bait ici', NULL, 'Vise un cheater recall lvl 4 et essaie par la suite de garder la wave proche de ta tour afin de le all in sans risque.', 'Perma side, il est 10x meilleur que toi en teamfight.'),
(96, 'Camille', 'Volibear', 7, 98, 4, 'CamilleConqBoneArmor', 'dbladetrihydra', '- Perma respecte son E il est impossible à esquiver s\'il te Q dedans <br>\r\n- Tu ne peux pas gagner de all in early, spam juste W et joue autour de la pression du jungle <br>\r\n- Il est presque impossible à tuer avant la Triforce <br>\r\n- Ult les dégâts de son ult ou au moins son E', NULL, 'Essaie de garder la wave proche de ta tour.', 'En side il gagne seulement s\'il est devant ce qui n\'est pas dur avec Volibear. En 5v5 il est également meilleur donc side puis rotate avec ton E.'),
(97, 'Camille', 'Warwick', 7, 99, 3, 'CamilleConqInspiArmor', 'dbladeexetrihydra', '- Ne le laisse pas Q gratuitement <br>\r\n- Commence au W puis Q et trade avec ton passif <br>\r\n- Rush anti heal et demande au jungler de gank <br>\r\n- Warwick est un champion qui a des soucis de mana', NULL, 'Ce n\'est pas important ici c\'est un champion très linéaire.', 'Split seulement si t\'es devant.'),
(98, 'Camille', 'MonkeyKing', 7, 100, 3, 'CamilleConqBoneArmor', 'dbladetrihydra', '- Commence au Q lvl 1 et pressure avec ton passif <br>\r\n- Prend le E lvl 2 et trade <br>\r\n- Spam W jusqu\'à ce qu\'il E in après quoi tu Q et tu attends qu\'il réapparaisse pour E <br>\r\n- Essaie de prendre l\'avantage pre 6 si tu joues trop passif il va t\'outdamage avec son ult', NULL, 'Cheater recall lvl 4 puis slow push, essaie de freeze si possible.', 'Focus sur le side lane, Wukong est vraiment meilleur en teamfights.'),
(99, 'Camille', 'Yasuo', 7, 101, 1, 'CamilleConqBoneArmor', 'dbladetrihydra', '- Les bons Yasuo n\'existent pas à bas elo, tu devrais donc pouvoir perma all in <br>\r\n- W son shield avant de all in <br>\r\n- Ult sa tornade c\'est easy à timer', NULL, 'Garde la wave proche de ta tour ou la sienne et tu es bon, il ne pourra pas survivre aux all in.', 'Tu lui casses la gueule en side.'),
(100, 'Camille', 'Yorick', 7, 103, 2, 'CamilleConqBoneArmor', 'dbladeexetrihydra', '- Pre 6 assez free, perma all in <br>\r\n- Tu peux E hors de sa cage <br>\r\n- Post 6 demande l\'aide du jungler si il invoque son R car c\'est comme un 1v2', NULL, 'Ce n\'est pas important ici tu peux le E gratuit.', 'Ne le fight pas en side s\'il a son ult, tu es 10x meilleur en teamfight que lui si tu flank.'),
(101, 'Camille', 'Rengar', 7, 83, 3, 'CamilleConqBoneArmor', 'dbladetrihydra', 'Travail en cours...', NULL, 'Travail en cours...', 'Travail en cours...'),
(102, 'Fiora', 'Aatrox', 8, 104, 2, 'FioraConqBoneArmor', 'FioraItem4', '- Parry son 3ème Q, c\'est ce qui fait le plus de dégâts ou la 2ème partie de son W <br>\r\n- Même si tu es devant, ne sous-estime pas ses dégâts <br>\r\n- Ses puissantes P AA ont un long CD mais elles font mal, essai de ne pas le laisser te toucher avec dans la première vague de creeps.', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/AatroxQ.png\">\r\n<p class=\"paraspell\">Q3</p>\r\n</div>\r\n<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/AatroxW.png\">\r\n<p class=\"paraspell\">W</p>\r\n</div>\r\n', NULL, NULL),
(103, 'Fiora', 'Akali', 9, 105, 5, 'FioraConqSecondRM', 'FioraItem4', '- Ban la <br>\r\n- Joue autour du long CD de son W <br>\r\n- Lorsqu\'elle utilise son W, recule afin de la forcer à trade en dehors de la smoke <br>\r\n- Parry une de ses P AA', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/passive/Akali_P.png\">\r\n<p class=\"paraspell\">P AA</p>\r\n</div>', NULL, NULL),
(104, 'Fiora', 'Camille', 8, 106, 4, 'FioraGraspBoneArmor', 'FioraItem4', '- Lorsqu\'elle W, essai de Q vers la partie interne du spell afin de prendre moins de dégâts et que ça ne la soigne pas <br>\r\n- Parry son Q ou son E, les deux marchent mais seul le E peut la stun <br>\r\n- Si son E est dispo ne l\'ult pas sinon elle peut juste s\'enfuir facilement', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/CamilleQ.png\">\r\n<p class=\"paraspell\">Q</p>\r\n</div>\r\n<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/CamilleE.png\">\r\n<p class=\"paraspell\">E</p>\r\n</div>', NULL, NULL),
(105, 'Fiora', 'Cassiopeia', 9, 107, 5, 'FioraFleetSecondRM', 'FioraItem6', '- Ce matchup est difficile mais facile à gank pour le jungler <br>\r\n- Si tu dodge son Q elle ne pourra pas spam E pour full damage <br>\r\n- Essai de bait son W <br>\r\n- Essai de parry son ult idéalement sinon tu peux également parry son Q et 180 son ult', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/CassiopeiaQ.png\">\r\n<p class=\"paraspell\">Q</p>\r\n</div>\r\n<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/CassiopeiaR.png\">\r\n<p class=\"paraspell\">R</p>\r\n</div>', NULL, NULL),
(106, 'Fiora', 'Chogath', 9, 108, 1, 'FioraConqSecondRM', 'FioraItem4', '- Parry les puissantes AA de son E, c\'est la source principale de damage des Cho\'gath tank <br>\r\n- Les bons Cho\'gath vont W et ensuite Q donc dodge le W avec ton Q <br>\r\n- Tu peux le Run down avec facilité généralement mais s\'il touche tout ses spells il peut te 100-0', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/Rupture.png\">\r\n<p class=\"paraspell\">Q</p>\r\n</div>\r\n<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/Feast.png\">\r\n<p class=\"paraspell\">R</p>\r\n</div>', NULL, NULL),
(107, 'Fiora', 'Darius', 8, 109, 4, 'FioraConqGatheringArmor', 'FioraItem4', '- Ne pas fight level 1, généralement pas une bonne idée <br>\r\n- Parry son W pour slow sa MS et son AS afin qu\'il n\'obtienne pas ses 5 stacks <br>\r\n- Prend Ignite et Nimbus cloak afin d\'avoir plus de dégâts et de MS <br>\r\n- Dodge la partie externe de son Q afin qu\'il ne se heal pas, ne stack pas et ne fasse pas de dégâts', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/DariusCleave.png\">\r\n<p class=\"paraspell\">Q</p>\r\n</div>\r\n<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/DariusNoxianTacticsONH.png\">\r\n<p class=\"paraspell\">W</p>\r\n</div>', NULL, NULL),
(108, 'Fiora', 'Gangplank', 10, 110, 5, 'FioraGraspSecondArmor', 'FioraItem6', '- Prend DShield + Second wind pour réduire le poke de son Q <br>\r\n- Parry ses Grasp Q pour le slow et faire ton combo avant de te faire 100-0 <br>\r\n- Joue autour de son burn passif et prédis ses combo de barils <br>\r\n- Tu peux toujours AA + E ses barils pour les détruire', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/GangplankQWrapper.png\">\r\n<p class=\"paraspell\">Q</p>\r\n</div>\r\n<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/GangplankE.png\">\r\n<p class=\"paraspell\">E</p>\r\n</div>', NULL, NULL),
(109, 'Fiora', 'Garen', 8, 111, 3, 'FioraConqCelerityArmor', 'FioraItem4', '- Utilise la MS des proc vitaux pour kite son E spinning <br>\r\n- Level 2 tu peux parry son Q et trade avec lui <br>\r\n- L\'AOE du Tiamat reset son passif healing <br>\r\n- Tu dois parry son Q ou il va gagner le trade voir te tuer après son E', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/GarenQ.png\">\r\n<p class=\"paraspell\">Q</p>\r\n</div>', NULL, NULL),
(110, 'Fiora', 'Gnar', 8, 112, 4, 'FioraFleetSecondArmor', 'FioraItem6', '- Dodge son Q surtout si ça ne touche que toi, ça fait beaucoup de dégâts <br>\r\n- Parry son W mega pour le stun <br>\r\n- S\'il est loin de sa transformation, parry son 3ème Q <br>\r\n- Son escape a beaucoup de CD, puni le s\'il le waste', '<div>\r\n<img src=\"img/spell/AA.png\">\r\n<p class=\"paraspell\">AA</p>\r\n</div>\r\n<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/GnarW.png\">\r\n<p class=\"paraspell\">Mega W</p>\r\n</div>\r\n', NULL, NULL),
(111, 'Fiora', 'Hecarim', 8, 114, 3, 'FioraConqBoneArmor', 'FioraItem4', '- Ne pas le fight full vie, il va te run down <br>\r\n- Parry derrière toi lorsqu\'il E, ça va le stun <br>\r\n- Les bons Hecarim essaient de bait le parry avec leur E', '<div>\r\n<img src =\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/HecarimRamp.png\">\r\n<p class=\"paraspell\">E</p>\r\n</div>\r\n<div>\r\n<img src =\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/HecarimUlt.png\">\r\n<p class=\"paraspell\">R</p>\r\n</div>', NULL, NULL),
(112, 'Fiora', 'Illaoi', 8, 115, 3, 'FioraConqBoneReviArmor', 'FioraItem4', '- Dodge ses Q early avec ton Q afin de la poke également <br>\r\n- Bait son R et dash en arrière <br>\r\n- Parry son E ou tu vas perdre tes trades même si elle et derrière <br>\r\n- Tu gagnes la lane si tu sidestep bien', '<div>\r\n<img src =\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/IllaoiE.png\">\r\n<p class=\"paraspell\">E</p>\r\n</div>', NULL, NULL),
(113, 'Fiora', 'Irelia', 8, 116, 2, 'FioraConqBoneArmor', 'FioraItem4', '- Joue agressif early mais attention à ne pas prendre trop de dégâts des creeps <br>\r\n- Attention aux stacks de son passif, elle peut te tuer à 5 <br>\r\n- Son powerspike botrk est très fort mais elle reste squeeshy, un CC et elle est morte <br>\r\n- Parry son ult ne lui donne pas de marque et le CD de son Q ne se reset pas', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/IreliaE.png\">\r\n<p class=\"paraspell\">E</p>\r\n</div>\r\n<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/IreliaR.png\">\r\n<p class=\"paraspell\">R</p>\r\n</div>', NULL, NULL),
(114, 'Fiora', 'Jax', 10, 117, 3, 'FioraGraspBoneArmor', 'FioraItem4', '- Ne pas essayer de le poke avec Q level 1, il va E et gagner le duel <br>\r\n- Après le level 2, tu peux commencer a poke avec Q, parry son E\r\n- Toujours parry à la fin de son E, si tu le fais trop tôt tu meurs ', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/JaxCounterStrike.png\">\r\n<p class=\"paraspell\">E</p>\r\n</div>', NULL, NULL),
(115, 'Fiora', 'Jayce', 8, 118, 4, 'FioraFleetSecondArmor', 'FioraItem6', '- Jayce est un poke lane bully qui peut te burst facilement si tu joues mal le matchup <br>\r\n- Parry lorsqu\'il jump sur toi avec la forme marteau <br>\r\n- Dodge le E+Q de sa forme range, c\'est sa principale source de dégâts <br>\r\n- Commence DShield et farm ce que tu peux', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/JayceToTheSkies.png\">\r\n<p class=\"paraspell\">Qs</p>\r\n</div>\r\n', NULL, NULL),
(116, 'Fiora', 'Kayle', 9, 119, 3, 'FioraConqSecondRM', 'FioraItem4', '- Parry les dégats de son R, ça supprime le slow et la slow à son tour ce qui la rend facile à tuer <br>\r\n- Level 1 si elle avance pour AA des creeps, jump lui dessus et trade <br>\r\n- Après son 6, elle devient un lane bully, joue safe surtout si elle a PTA <br>\r\n- Tu peux toujours Q+W sur elle afin de dodge le slow de son Q et gagner le all in', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/KayleQ.png\">\r\n<p class=\"paraspell\">Q</p>\r\n</div>\r\n<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/KayleR.png\">\r\n<p class=\"paraspell\">R</p>\r\n</div>', NULL, NULL),
(117, 'Fiora', 'Kennen', 9, 120, 4, 'FioraConqSecondRM', 'FioraItem6', '- Reste loin de son puissant W qui applique la marque <br>\r\n- Parry son 3ème proc de passif le stun <br>\r\n- C\'est un puissant lane bully, donc la plupart du temps joue pour un item powerspike <br>\r\n- Commence DShield, farm ce que tu peux et espère que le jungler vienne t\'aider', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/passive/Kennen_Passive.png\">\r\n<p class=\"paraspell\">P</p>\r\n</div>', NULL, NULL),
(118, 'Fiora', 'Kled', 8, 121, 2, 'FioraConqBoneReviArmor', 'FioraItem4', '- Si Kled te Q, parry la seconde partie qui pull <br>\r\n- Lorsqu\'il descend de sa monture il devient intouchable un court instant <br>\r\n- Ne meurt pas early game, un snowball de Kled est très punitif <br>\r\n- Garde à l\'esprit que si tu parry son Q, tu dois le faire descendre de sa monture avant qu\'il re Q', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/KledQ.png\">\r\n<p class=\"paraspell\">Q</p>\r\n</div>', NULL, NULL),
(119, 'Fiora', 'Lucian', 8, 122, 5, 'FioraFleetSecondReviArmor', 'FioraItem5', '- Déjà, bonne chance <br>\r\n- Les Lucian pas très bons vont toujours dash sur toi, après le level 1 tu peux parry et le tuer <br>\r\n- Hésite pas à jouer safe, tu scale bien mieux en late\r\n', '<div>\r\n<img src=\"img/spell/Pta.png\">\r\n<p class=\"paraspell\">PTA</p>\r\n</div>', NULL, NULL),
(120, 'Fiora', 'Malphite', 9, 123, 4, 'FioraConqSecondRM', 'FioraItem6', '- Matchup tout sauf fun <br>\r\n- Ne le fight pas si il build Bramble Vest et Coques en acier en premier <br>\r\n- N\'oublie pas qu\'il a de l\'armure en plus quand son passif est actif <br>\r\n- Parry ses Q et essai de sustain ses spam de comet autant que tu peux', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/SeismicShard.png\">\r\n<p class=\"paraspell\">Q</p>\r\n</div>\r\n<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/Landslide.png\">\r\n<p class=\"paraspell\">E</p>\r\n</div>', NULL, NULL),
(121, 'Fiora', 'Maokai', 9, 124, 2, 'FioraConqSecondRM', 'FioraItem4', '- Parry son Q en lane car c\'est souvent simple à anticiper car la plupart des Maokai ne sont pas bons <br>\r\n- Après 6 tu peux parry son R si tu veux, c\'est assez simple <br>\r\n- Ne le laisse pas continuellement te grasp proc/ Q, trade en retour ou n\'avance pas', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/MaokaiQ.png\">\r\n<p class=\"paraspell\">Q</p>\r\n</div>\r\n<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/MaokaiW.png\">\r\n<p class=\"paraspell\">W</p>\r\n</div>\r\n<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/MaokaiR.png\">\r\n<p class=\"paraspell\">R</p>\r\n</div>', NULL, NULL),
(122, 'Fiora', 'Mordekaiser', 9, 125, 2, 'FioraConqBoneReviRM', 'FioraItem4', '- Garde ton Q pour dodge ses Q car c\'est simple de réagir si tu as peu de ping <br>\r\n- À bas niveau tu peux parry son E gratuitement, si t\'es un peu plus chaud tu peux parry son R <br>\r\n- Garde en tête que son ult peut cancel les abilités et AA pendant le cast <br>\r\n- Tu l\'outscale très fort avec la Manamune donc split push devrait être facile', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/MordekaiserQ.png\">\r\n<p class=\"paraspell\">Q</p>\r\n</div>\r\n<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/MordekaiserE.png\">\r\n<p class=\"paraspell\">E</p>\r\n</div>\r\n<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/MordekaiserR.png\">\r\n<p class=\"paraspell\">R</p>\r\n</div>', NULL, NULL),
(123, 'Fiora', 'DrMundo', 8, 126, 2, 'FioraConqSecondArmor', 'FioraItem4', '- Ses haches font mal et son AD augmente beaucoup quand il est low HP avec son E <br>\r\n- Achète un Executionner après avoir acheté la Tear et la Brillance si tu n\'es pas devant <br>\r\n- Évite de int l\'early car tu le burst hard après ton core build <br>\r\n- Parry ses AA boostée avec son E ou son Q si tu le chase down', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/InfectedCleaverMissileCast.png\">\r\n<p class=\"paraspell\">Q</p>\r\n</div>\r\n<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/Masochism.png\">\r\n<p class=\"paraspell\">E</p>\r\n</div>', NULL, NULL),
(124, 'Fiora', 'Nasus', 8, 127, 2, 'FioraConqSecondArmor', 'FioraItem2', '- Poke le avec des Q / trade le hard early game <br>\r\n- Pas besoin de le tuer, deny lui le plus de CS possibles avec un freeze de lane et de la pression <br>\r\n- Si tu ne peux pas parry son W, parry un de ses Q et fight le <br>\r\n- Garde la pression de mid à late game constamment et ne le laisse pas farm gratuitement', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/NasusQ.png\">\r\n<p class=\"paraspell\">Q</p>\r\n</div>\r\n<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/NasusW.png\">\r\n<p class=\"paraspell\">W</p>\r\n</div>', NULL, NULL),
(125, 'Fiora', 'Olaf', 8, 128, 2, 'FioraConqSecondArmor', 'FioraItem4', '- Olaf est très fort level 1, ne te fais pas toucher par sa hache avant le level 2 <br>\r\n- Au level 3, tu peux le tuer si tu parry son E <br>\r\n- Level 6, ton parry ne slow pas son AS et MS si il R <br>\r\n- Tu l\'outscale hard', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/OlafAxeThrowCast.png\">\r\n<p class=\"paraspell\">Q</p>\r\n</div>\r\n<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/OlafRecklessStrike.png\">\r\n<p class=\"paraspell\">E</p>\r\n</div>', NULL, NULL),
(126, 'Fiora', 'Ornn', 8, 129, 2, 'FioraConqSecondArmor', 'FioraItem4', '- Parry ses puissantes AA après son W et/ou R, ça va le stun <br>\r\n- Dodge son spam Q ça fait beaucoup de dégâts <br>\r\n- Après le level 5, Q pour fuir son W et parry son R <br>\r\n- Essai de rester loin des murs et de son rocher pour qu\'il n\'ait pas de free knockup', '<div>\r\n<img src=\"img/spell/OrnnW.png\">\r\n<p class=\"paraspell\">W</p>\r\n</div>\r\n<div>\r\n<img src=\"img/spell/OrnnR.png\">\r\n<p class=\"paraspell\">R</p>\r\n</div>', NULL, NULL),
(127, 'Fiora', 'Pantheon', 8, 130, 3, 'FioraConqSecondArmor', 'FioraItem6', '- Commence DBlade si t\'es bon, sinon DShield <br>\r\n- Ne te fais pas toucher par ses puissants Q, dodge à tout prix <br>\r\n- Pantheon a de très bons roams, tu ne veux pas qu\'il soit devant à cause de ça <br>\r\n- Si tu parry son W, tu le tue 90% du temps', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/PantheonQ.png\">\r\n<p class=\"paraspell\">Q</p>\r\n</div>\r\n<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/PantheonW.png\">\r\n<p class=\"paraspell\">W</p>\r\n</div>', NULL, NULL),
(128, 'Fiora', 'Poppy', 8, 131, 3, 'FioraConqBoneArmor', 'FioraItem3', '- Ne te fais pas toucher par les deux parties de son Q <br>\r\n- Ne la laisse pas stopper ton Q avec son W sauf si tu Q + W dans son W <br>\r\n- Prend les potions de corruption et ne la fight pas si elle a Bramble vest + coques en acier', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/PoppyE.png\">\r\n<p class=\"paraspell\">E</p>\r\n</div>\r\n<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/PoppyR.png\">\r\n<p class=\"paraspell\">R</p>\r\n</div>', NULL, NULL),
(129, 'Fiora', 'Quinn', 8, 132, 3, 'FioraPTASorceryArmor', 'FioraItem6', '- Tu perds level 1, ne CS pas sauf si tu peux Q un creep sans te faire toucher <br>\r\n- Si elle overextend post level 3, tu peux prendre le trade et tenter de parry son E <br>\r\n- N\'hésite pas à Q + W car si tu Q seulement et qu\'elle le cancel avec son E, tu meurs <br>\r\n- Ignite + Nimbus cloak peut être une bonne façon de réduire le problème de range', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/passive/Quinn_Passive.png\">\r\n<p class=\"paraspell\">P AA</p>\r\n</div>\r\n<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/QuinnE.png\">\r\n<p class=\"paraspell\">E</p>\r\n</div>', NULL, NULL),
(130, 'Fiora', 'Renekton', 10, 133, 4, 'FioraGraspSecondArmor', 'FioraItem4', '- Q poke et utilise la MS des vitaux pour sortir de sa range de Q <br>\r\n- La plupart des Renekton vont W après une AA, essai de prédire le stun avec ton parry <br>\r\n- Garde en tête qu\'il a 2 dash s\'il touche une cible avec le premier <br>\r\n- Joue un skin avec des vitaux qui se voient facilement car son ult les rend difficiles à discerner ', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/RenektonPreExecute.png\">\r\n<p class=\"paraspell\">W</p>\r\n</div>', NULL, NULL),
(131, 'Fiora', 'Rengar', 8, 134, 2, 'FioraConqBoneArmor', 'FioraItem4', '- Tu perds le level 1, respecte ses dégâts et n\'essaie pas de le trade <br>\r\n- Parry son puissant Q afin de réduire son AS et donc ses dégâts <br>\r\n- Quand il a son ult, parry dès qu\'il jump sur toi <br>\r\n- Quand ton parry est en CD, reste à distance de sa range de saut', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/RengarQ.png\">\r\n<p class=\"paraspell\">Q</p>\r\n</div>', NULL, NULL),
(132, 'Fiora', 'Riven', 8, 135, 3, 'FioraConqBoneArmor', 'FioraItem4', '- Attention aux dégâts du passif de ses AA, ils sont assez hauts <br>\r\n- Parry son 3ème Q ou essai de prédire son W. À bas elo il est facile de W leur Q <br>\r\n- Elle devient assez difficile à duel si elle commence à avoir des kills mais c\'est pareil pour toi <br>\r\n- Après le level 5, si vous n\'avez tous les deux pas vos R, tu gagnes les all ins facilement si tu joues bien', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/RivenTriCleave.png\">\r\n<p class=\"paraspell\">Q3</p>\r\n</div>\r\n<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/RivenMartyr.png\">\r\n<p class=\"paraspell\">W</p>\r\n</div>', NULL, NULL),
(133, 'Fiora', 'Rumble', 9, 136, 4, 'FioraConqSecondRM', 'FioraItem6', '- Tu gagnes level 1 et 2 mais tu peux quand même te faire bully si tu as peu d\'expérience <br>\r\n- Parry un de ses E et utilise la MS de ton ult pour sortir du sien <br>\r\n- Si la barre en dessous de sa vie est haute, tu peux go pour un fight car il va surchauffer', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/RumbleGrenade.png\">\r\n<p class=\"paraspell\">E</p>\r\n</div>', NULL, NULL),
(134, 'Fiora', 'Ryze', 9, 137, 4, 'FioraConqSecondRM', 'FioraItem6', '- Ce matchup n\'est pas fun car il peut juste go Phase rush et fuir <br>\r\n- Tu peux essayer de parry son W mais généralement c\'est mieux de parry un de ses E <br>\r\n- Lorsqu\'il a stack sa Tear et qu\'il a un gros shield il devient très fort <br>\r\n- Il est très vite counter par des CC', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/RyzeW.png\">\r\n<p class=\"paraspell\">W</p>\r\n</div>\r\n<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/RyzeE.png\">\r\n<p class=\"paraspell\">E</p>\r\n</div>', NULL, NULL),
(135, 'Fiora', 'Sett', 8, 138, 3, 'FioraConqBoneArmor', 'FioraItem4', '- Ne parry pas son W mais ses puissantes Q AA, elles font plus de dégâts <br>\r\n- Parry derrière pour le stun lorsqu\'il R, tu dois parry avant l\'animation <br>\r\n- Tu perds hard level 1, essai de rester hors de portée de son E ou shove la lane pour vite passer level 2 <br>\r\n- Tu peux le solo kill level 2 ou 3, généralement les joueurs Sett forcent et waste toutes leurs abilités early', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/SettQ.png\">\r\n<p class=\"paraspell\">Q</p>\r\n</div>\r\n<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/SettE.png\">\r\n<p class=\"paraspell\">E</p>\r\n</div>', NULL, NULL),
(136, 'Fiora', 'Shen', 8, 139, 4, 'FioraConqSecondArmor', 'FioraItem4', '- Shen t\'outrade level 1, ne le laisse pas Q + Grasp proc dans la première wave de creeps <br>\r\n- Parry un de ses puissants Q sauf si tu sais 100% que tu peux parry son taunt <br>\r\n- Tu ne peux pas hit les vitaux avec Q ou AA pendant son W, kite le à ce moment là <br>\r\n- S\'il utilise son E sur toi, tu peux forcer le trade, il n\'a pas d\'escape et Conqueror joue en ta faveur', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/ShenQ.png\">\r\n<p class=\"paraspell\">Q AA</p>\r\n</div>\r\n<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/ShenE.png\">\r\n<p class=\"paraspell\">E</p>\r\n</div>', NULL, NULL),
(137, 'Fiora', 'Singed', 9, 140, 2, 'FioraConqSecondReviRM', 'FioraItem4', '- Parry son E si tu peux, généralement c\'est assez obvious a prédire <br>\r\n- Essai de rester hors de son W car c\'est sa seule escape <br>\r\n- Ne le laisse pas up level 2 en premier, s\'il up avant, reste derrière le temps que toi aussi tu up <br>\r\n- Son passif a un CD donc il n\'est pas si rapide si tu le pousse à l\'utiliser avant de all in', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/Fling.png\">\r\n<p class=\"paraspell\">E</p>\r\n</div>', NULL, NULL),
(138, 'Fiora', 'Sion', 8, 141, 2, 'FioraConqBoneArmor', 'FioraItem4', '- Sion est un matchup un peu relou pour les nouveaux joueurs Fiora <br>\r\n- Ne waste pas ton parry sur son Q, dash simplement derrière lui ou hors de la zone <br>\r\n- Si tu gagnes le fight et qu\'il s\'enfuie, va devant lui afin qu\'il ne puisse pas ult <br>\r\n- Généralement il est facile d\'abuser de lui, il n\'y a pas grand chose qu\'il puisse faire dès que tu as quelques kills', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/SionQ.png\">\r\n<p class=\"paraspell\">Q</p>\r\n</div>\r\n<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/SionR.png\">\r\n<p class=\"paraspell\">R</p>\r\n</div>', NULL, NULL),
(139, 'Fiora', 'Sylas', 9, 142, 2, 'FioraConqBoneRM', 'FioraItem4', '- Dodge son Q et son DPS est moins bon que le tien <br>\r\n- Parry son E si tu peux, sinon parry son W <br>\r\n- Hit les vitaux plus vites que lui et tu gagnes, la plupart des joueurs Sylas ne sont pas très bons pour ça <br>\r\n- Build Executionner après le Tiamat pour l\'empêcher de trop se heal', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/SylasW.png\">\r\n<p class=\"paraspell\">W</p>\r\n</div>\r\n<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/SylasE.png\">\r\n<p class=\"paraspell\">E</p>\r\n</div>', NULL, NULL),
(140, 'Fiora', 'TahmKench', 8, 143, 4, 'FioraConqSecondArmor', 'FioraItem4', '- Essai de zigzaguer entre les creeps pour qu\'il ne puisse pas avoir de free Q <br>\r\n- Tu peux parry son W et le stun (mais les très bon TK ne te laisseront pas faire) <br>\r\n- Parry son Q va le stun si tu as 3 stacks sur toi <br>\r\n- Tu gagnes après le level 6 si t\'es even car ton R est bien meilleur que le sien en fight', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/TahmKenchQ.png\">\r\n<p class=\"paraspell\">Q</p>\r\n</div>', NULL, NULL),
(141, 'Fiora', 'Teemo', 9, 144, 3, 'FioraPTAGatheringRM', 'FioraItem7', '- Teemo commence avec son E, tu peux donc le fight level 1 si tu as plus de creeps <br>\r\n- Parry son Q et tu win 100% <br>\r\n- Même si tu ne parry pas son Q, tant que tu hit ton W tu le slow <br>\r\n- C\'est un autre matchup où il est utile de prendre Nimbus cloak + Ignite pour des all in plus simples', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/BlindingDart.png\">\r\n<p class=\"paraspell\">Q</p>\r\n</div>', NULL, NULL),
(142, 'Fiora', 'Tryndamere', 8, 145, 4, 'FioraConqBoneReviArmor', 'FioraItem4', '- C\'est beaucoup un matchup de RNG, si Tryndamere fait beaucoup de crit early, tu vas auto lose et avoir besoin de ton jungler <br>\r\n- Le parry est un debuff d\'AS et de MS donc parry une de ses AA et trade voir bully le <br>\r\n- Utilise la MS de tes vitaux et parry/E pour le kite pendant la durée de son ult', '<div>\r\n<img src=\"img/spell/AA.png\">\r\n<p class=\"paraspell\">AA</p>\r\n</div>', NULL, NULL),
(143, 'Fiora', 'Urgot', 8, 146, 3, 'FioraConqSecondArmor', 'FioraItem4', '- Essai d\'abuser de lui avant son niveau 9 power spike <br>\r\n- Essai de parry son E, si tu vois un shield se former utilise ton W <br>\r\n- Il gagne généralement hard les premiers niveaux donc joue juste safe et build quelques items avant', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/UrgotE.png\">\r\n<p class=\"paraspell\">E</p>\r\n</div>\r\n<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/UrgotR.png\">\r\n<p class=\"paraspell\">R</p>\r\n</div>', NULL, NULL),
(144, 'Fiora', 'Vayne', 8, 147, 3, 'FioraPTASecondArmor', 'FioraItem6', '- Vayne est une version plus faible de Lucian Top <br>\r\n- Si tu parry son 3ème W proc + son PTA, tu annules beaucoup de dégâts <br>\r\n- Ne te met pas entre elle et les murs, si tu te fais E tu es mort à 90% du temps <br>\r\n- Sois sûr de la hit avec ton parry, de préférence après qu\'elle ait utilisé son Q', '<div>\r\n<img src=\"img/spell/PTA.png\">\r\n<p class=\"paraspell\">PTA</p>\r\n</div>', NULL, NULL),
(145, 'Fiora', 'Vladimir', 9, 148, 3, 'FioraConqCelerityRM', 'FioraItem6', '- N\'avance jamais proche de lui quand son Q est boosté <br>\r\n- Parry son Q boosté ou son E chargé <br>\r\n- La plupart des Vladimir prennent Phase rush ce qui est pénible donc essai de le all in après qu\'il l\'ait utilisé <br>\r\n- Tu peux prendre Ignite à plus bas elo', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/VladimirQ.png\">\r\n<p class=\"paraspell\">Q</p>\r\n</div>\r\n<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/VladimirHemoplague.png\">\r\n<p class=\"paraspell\">R</p>\r\n</div>', NULL, NULL),
(146, 'Fiora', 'Volibear', 8, 149, 2, 'FioraConqSecondRM', 'FioraItem4', '- Parry son Q s\'il est prévisible sinon parry son W <br>\r\n- Dodge son E c\'est assez facile à prévoir <br>\r\n- Prend de short trades afin qu\'il ne te W pas 2x et se heal trop <br>\r\n- Garde en tête que son R lui permet de te dive facilement avec son jungler', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/VolibearQ.png\">\r\n<p class=\"paraspell\">Q</p>\r\n</div>\r\n<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/VolibearW.png\">\r\n<p class=\"paraspell\">W</p>\r\n</div>', NULL, NULL),
(147, 'Fiora', 'MonkeyKing', 8, 151, 4, 'FioraConqBoneArmor', 'FioraItem4', '- Parry son E, n\'essai pas de parry son R car si tu te rate, tu meurs <br>\r\n- N\'ult pas son clone ! <br>\r\n- Son W a un CD de 20 avant la CDR, 4 secondes de moins que le tien <br>\r\n- Level 1 joue safe car il gagne les trades et les all in', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/MonkeyKingNimbus.png\">\r\n<p class=\"paraspell\">E</p>\r\n</div>\r\n<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/MonkeyKingSpinToWin.png\">\r\n<p class=\"paraspell\">R</p>\r\n</div>', NULL, NULL),
(148, 'Fiora', 'Yasuo', 8, 152, 2, 'FioraConqBoneArmor', 'FioraItem4', '- Prend un Tiamat et Q/AA les creeps pour virer le shield du passif <br>\r\n- S\'il te E+Q avec sa tornade prête, parry derrière toi pour toucher le stun <br>\r\n- N\'oublie pas que Yasuo peut wind wall ton parry, ce qui l\'empêche de prendre le stun <br>\r\n- Après la Manamune tu ne devrais pas avoir de problème avec lui, tu le one shot', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/YasuoQ1Wrapper.png\">\r\n<p class=\"paraspell\">Q CC</p>\r\n</div>', NULL, NULL),
(149, 'Fiora', 'Yorick', 8, 154, 3, 'FioraConqSecondArmor', 'FioraItem1', '- Tu gagnes les trades level 1 s\'il n\'a pas Grasp <br>\r\n- Il va te balayer toute la game si t\'es derrière, no stress <br>\r\n- Si sa Maiden est en vie, tu ne gagnes généralement pas les 1v1, si c\'est pas le cas tu gagnes <br>\r\n- Dodge, parry ou même Flash son E, qui gagne le 1v1 dépend de si ce spell touche ou non', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/YorickE.png\">\r\n<p class=\"paraspell\">E</p>\r\n</div>', NULL, NULL),
(150, 'Fiora', 'Warwick', 8, 150, 3, 'FioraConqBoneArmor', 'FioraItem4', '- Travail en cours...', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/WarwickQ.png\">\r\n<p class=\"paraspell\">Q</p>\r\n</div>', NULL, NULL),
(151, 'Fiora', 'Gragas', 9, 113, 4, 'FioraConqBoneRM', 'FioraItem4', 'Travail en cours...', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/GragasE.png\">\r\n<p class=\"paraspell\">E</p>\r\n</div>\r\n<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/GragasR.png\">\r\n<p class=\"paraspell\">R</p>\r\n</div>', NULL, NULL),
(152, 'Akali', 'Yone', 2, 51, 3, 'AkaliConqBone', 'dringdblade', '- Q AA trade early <br>\r\n- Bait son Q en allant en range puis sidestep et tenter de trade avec  Q AA <br>\r\n- Le Q pour proc le shield puis utiliser la smoke ou le E pour tempo et re-engage quand il ne l\'a plus <br>\r\n- Son combo a beaucoup de range, de burst et du CC (il peut one shot à 60/70% HP) <br>\r\n- E/W son Q3 (tornado) / R', NULL, NULL, NULL),
(153, 'Camille', 'Yone', 7, 102, 2, 'CamilleConqBoneArmor', 'dbladetrihydra', '- Commencer avec W <br>\r\n- Ne pas trade level 1 et 2 <br>\r\n- Level 3 hook sur lui et trade <br>\r\n- Quand son E est en CD tu peux juste hook sur lui encore <br>\r\n- Tu peux R son R afin d\'éviter les dégâts ou l\'empêcher de s\'enfuir <br>\r\n- Tu peux R son E également afin qu\'il recall', NULL, 'Garde la wave proche de ta tour ou de la sienne afin de simplifier les all in avec ton E.', 'Tu le détruit en side donc fais au mieux pour ta team.'),
(154, 'Fiora', 'Yone', 8, 153, 2, 'FioraConqBoneArmor', 'FioraItem4', '- Ce n\'est pas un matchup très compliqué mais si le Yone est bon ça peut être even <br>\r\n- Vois pour trade level 2, le level 2 de Fiora est meilleur <br>\r\n- Parry son Q3 (tornado) ou son ult, n\'oublie pas de le faire derrière toi si tu es proche de lui <br>\r\n- Si tu rates ton parry disengage car tu perd le trade <br>\r\n- Tu l\'outscale donc ne presse pas les choses', '<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/YoneQ.png\">\r\n<p class=\"paraspell\">Q CC</p>\r\n</div>\r\n<div>\r\n<img src=\"http://ddragon.leagueoflegends.com/cdn/11.10.1/img/spell/YoneR.png\">\r\n<p class=\"paraspell\">R</p>\r\n</div>', NULL, NULL),
(155, 'Quinn', 'Aatrox', 11, 155, 3, '', '', '- Phase rush si pas trop à l\'aise<br>\r\n- Level 1 AA E AA et back avant qu\'il trade Q<br>\r\n- Attendre qu\'il Q2 pour trade avec le E, ses 2 premiers Q ont de la range et vont interrompre ton E la plupart du temps<br>\r\n- S\'il rate son E Q poke, instant engage et trade<br>\r\n- Évite son W à tout prix en restant derrière les creeps, si jamais il t\'attrape avec AA E AA pour proc phase rush ou célérité et échappe toi par un côté<br>\r\n- Son W a 26 sec de CD ce qui te laisse une grosse fenêtre de trade<br>\r\n- S\'il R et qu\'il a trop de vie, si possible proc phase rush ou célérité avec AA Q AA afin de garder ton E le plus possible<br>\r\n- Ignite early pendant son R pour réduire son heal si tu peux le tuer', NULL, NULL, NULL),
(156, 'Quinn', 'Akali', 12, 1, 3, '', '', '- Matchup compliqué si tu ne gagnes pas pré 6, essai d\'avoir au moins un bon lead en CS si tu n\'arrive pas à la tuer<br>\r\n- Quinn cheese AA E AA dans le bush du haut et back instant pour éviter son Q<br>\r\n- Tu peux zoner Akali hors des creeps si la wave est bien placée<br>\r\n- Level 2 essai de bait son W, son CD est long tu peux quasiment utiliser 2 E de manière agressive avant qu\'il ne revienne<br>\r\n- Si Akali te touche avec son E, attend son E2 afin de E pour te repositionner de manière plus safe et cancel ses dégâts par la même occasion<br>\r\n- Akali sans W et sans E est comme un creep pour Quinn donc puni la si elle waste ses spells<br>\r\n- Post 6 tu dois à tout prix éviter son E ou la blind pour l\'empêcher de faire son full combo one shot facilement<br>', NULL, NULL, NULL),
(157, 'Quinn', 'Camille', 13, 156, 3, '', '', '- Quinn cheese AA E AA level 1 puis soit prend son W et fais une 3ème AA pour proc PTA soit back pour éviter de prendre des dégâts<br>\r\n- À partir du level 2 elle a son E donc évite d\'utiliser le tiens agressivement tant qu\'elle ne l\'a pas utilisé et reste loin des murs<br>\r\n- Si elle rate son E tu peux la bully<br>\r\n- N\'utilise pas ton E pour cancel le sien ça ne marche pas, si elle te touche tu dois E après pour prendre de la distance<br>\r\n- Post 6 il devient encore plus important d\'éviter le E de Camille au risque de mourir si tu ne le fais pas<br>\r\n- Dans le R de Camille, garde ton E pour cancel son Q2 qui est sa principale source de dégâts<br>\r\n- Lorsque tu as fini ta Galeforce tu peux l\'utiliser pour dodge son E', NULL, NULL, NULL),
(158, 'Quinn', 'Cassiopeia', 12, 157, 2, '', '', '- Quinn cheese AA E AA level 1, si elle commence Q elle aura 3 sec de CD donc bully la jusqu\'à ce que son Q revienne, si elle commence E alors proc simplement PTA puis back dans le bush<br>\r\n- Lorsque qu\'elle a ses deux spell Q et E, essai de toucher ton Q pour short trade (jamais de longs trades elle les gagne)<br>\r\n- Lorsqu\'elle a son W essai de le bait, si ça fonctionne tu as 24 sec pour dominer la lane, ne la laisse pas respirer tu peux même la zoner hors des creeps. Si elle ne se fait pas bait tu peux également la blind puis trade avec E AA<br>\r\n- Tu peux utiliser ton E pour dodge son Q ce qui réduit les dégâts de son E<br>\r\n- Le E de Quinn peut faire R Cassio en arrière si timé au bon moment mais c\'est jouer avec le feu que d\'essayer à tout prix de le faire sans l\'avoir beaucoup train, généralement essai de respecter son R car si elle te touche tu es mort sauf si elle n\'a pas son W<br>\r\n- Globalement le meilleur tip pour gagner la lane est d\'éviter de se faire toucher par les Q', NULL, NULL, NULL),
(159, 'Quinn', 'Chogath', 14, 158, 1, '', '', '- Regarde bien son build s\'il part AP ou Tank, généralement les Cho\'Gath AP prennent Glacial/Comet comme rune, si jamais tu as affaire à un Cho AP il sera squishy, build une BOTRK en 2ème et ça devrait aller<br>\r\n- Quinn cheese AA E AA level 1 tu peux le bully jusqu\'à la mort, utilise ton E pour dodge son Q (il faut practice le timing c\'est crucial pour le matchup) et le run down<br>\r\n- Les AA de son E ont un peu moins de portée que tes AA donc reste à distance des tiennes pour dodge ses E<br>\r\n- Si il waste son Q hard bully le<br>\r\n- Essayer au maximum de proc PTA lors d\'un trade<br>\r\n- Post 6 tu n\'a plus le droit de te faire toucher par son Q car ses combo peuvent devenir vraiment dangereux', NULL, NULL, NULL),
(160, 'Quinn', 'Darius', 15, 159, 4, '', '', '- Attention au Quinn cheese dans le bush, la plupart des Darius commencent avec Q mais certains prennent le E (hook) pour tuer dès le level 1\r\n- Utilise ton E après que Darius ait utilisé le sien, s\'il te touche E aussi vite que possible pour pas te faire toucher par le W\r\n- Si tu veux E de manière agressive, fais le prudemment, AA instant\' et recule, il devrait rater son E chaque fois si tu le fais assez rapidement<br>\r\n- S\'il waste son E tu peux le bully car il n\'a pas d\'autre gap closer et il a 26 sec CD <br>\r\n- Si Darius utilise son Ghost tu peux Ignite pour proc nimbus cloak et t\'enfuir <br>\r\n- Les bons Darius vont instant se placer derrière toi après avoir touché leur E, si c\'est le cas ton E va te propulser dans son camp, fais attention à ça', NULL, NULL, NULL),
(161, 'Quinn', 'DrMundo', 16, 160, 4, '', '', '- Commence avec une épée longue et des potions rechargeable pour plus de dégâts grâce à la rune abattage<br>\r\n- Pour retirer son passif à Mundo, attend qu\'il lance sa hache puis Q le puis E AA pour proc Phase rush, il ne devrait pas pouvoir trade back. Le CD de Phase rush est plus court que celui de son passif<br>\r\n- Quinn cheese mais sidestep directement après ton E pour esquiver sa hache<br>\r\n- De manière générale reste derrière les creeps pour éviter qu\'il te poke avec ses haches<br>\r\n- Post 6, si Mundo t\'engage, tu dois le blind et proc phase rush pour t\'enfuir<br>\r\n- Son R a 110 sec de CD au début, ton but est de le mettre low pour bait son ult, je te suggère de ne pas le combattre s\'il est sous ult sauf s\'il est vraiment vraiment low, que tu as ton Ignite et que tu peux le tuer<br>\r\n- Lorsque son R est en CD tu devrais facilement avoir l\'avantage', NULL, NULL, NULL),
(162, 'Quinn', 'Fiora', 13, 161, 2, '', '', '- Rush les bootes Berserker, la move speed counter Fiora, tu ne devrais plus avoir besoin de E pour fuir ses engages<br>\r\n- Tu peux faire le Quinn cheese level 1, cependant juste AA la et dès qu\'elle Q vers toi cancel le avec ton E, tu peux ensuite essayer de la run down si elle ne t\'a pas touché<br>\r\n- De manière générale si tu E un Q de Fiora tu as 6.5sec où tu peux full AA avant de reculer mais ne soit pas trop greedy<br>\r\n- Si un vital trop facile à atteindre pop, recule ou va dans un bush pour le reset<br>\r\n- Si elle a son W dispo, tu peux random E puis sidestep instant afin de bait son parry, si tu y parviens ça te laisse une grosse fenêtre de trade<br>\r\n- Si tu te fais toucher par un parry offensif utilise ton E instant puis proc ton passif avec une AA pour prendre de la distance<br>\r\n- Si elle te R tu peux ignite pour proc nimbus cloak et t\'enfuir', NULL, NULL, NULL),
(163, 'Quinn', 'Gangplank', 20, 162, 2, '', '', '- Évite de leash pour le jungler lors de ce matchup<br>\r\n- Quinn cheese level 1, tu gagnes le trade car il n\'aura pas de proc grasp et tu vas proc 2 passif AA. Son Q a 5sec de CD donc fais un short trade de 3sec avant de back<br>\r\n- Si GP possède un Ignite attention au level 1<br>\r\n- Ne trade pas si GP a une corrup pot d\'active<br>\r\n- N\'avance jamais dans la range de GP sauf si ton E est dispo<br>\r\n- Tu peux E GP pour esquiver les dégâts de ses barrel si tu time bien quand il tire dessus (ça peut demander un peu de practice)<br>\r\n- Ignite le en premier si tu comptes trade pour le tuer, souvent les GP utilisent leur W au dernier moment pour bait<br>\r\n- S\'il waste ses barrels tu peux tenter de le run down<br>\r\n- Même si tu es derrière en lane, si tu as 1 ou 2 items tu es capable de gagner le 1v1<br>\r\n- Si GP rush bramble vest dans ce cas go Kraken plutôt que Galeforce', NULL, NULL, NULL),
(164, 'Quinn', 'Garen', 14, 163, 1, '', '', '- Quinn cheese level 1 mais attend que ton passif le marque depuis le bush puis AA le et regarde comment il joue, s\'il fuis alors chase E AA, s\'il Q vers toi alors instant E pour le cancel ce qui rend le matchup injouable pour Garen<br>\r\n- Quand tu E son Q, son AA et le silence sont cancel mais son spell est toujours actif ce qui veut dire que s\'il flash sur toi il te silence quand même<br>\r\n- De manière générale garde ton E pour son Q il devrait pleurer à terme car c\'est un de ses plus gros counter<br>\r\n- Garde en tête que son Q a 8sec de CD et ton E a 12-8 donc il aura récup son spell avant le tien<br>\r\n- Il faut jouer la lane de manière très agressive et essayer de proc PTA dès qu\'il est disponible<br>\r\n- Post 6 si tu anticipes son combo flash all in utilise Q + E instant ce qui va le blind et te tenir à une distance où il ne peut te voir. Son R est cancel s\'il perd la vision mais il le récupère après quelques secondes.<br>\r\n- Tu outscale Garen très très fort', NULL, NULL, NULL),
(165, 'Quinn', 'Gnar', 14, 164, 3, '', '', '- Quinn cheese level 1 et instant\' sidestep son Q après quoi continues de le AA pour bien win le trade<br>\r\n- Fais des shorts trades avec Q si possible et ne te prend pas sa 3ème AA qui proc des dégâts en plus et de la MS<br>\r\n- Surveille sa barre, si elle est proche du rouge ça veut dire qu\'il va bientôt se transformer et il ne faudra pas être à son corps ç corps à ce moment là<br>\r\n- Au moment de se transformer il va essayer de te sauter dessus, essai de le E mid air pour cancel son saut mais si tu le fais trop tard il aura quand même la range pour utiliser son W<br>\r\n- Post 6 évite de rester proches des murs, si tu sens qu\'il va engage reste vers le milieu de la lane et ça devrait aller<br>\r\n- La partie essentielle du matchup est de dodge ses boomerangs, lorsqu\'il ne l\'a pas go trade', NULL, NULL, NULL),
(166, 'Quinn', 'Gragas', 17, 165, 3, '', '', '- Quinn cheese level 1, il va te Q mais tu gagnes quand même le trade, l\'autre alternative est d\'AA depuis le bush et dodge le Q avec le E<br>\r\n- Son E cancel ton E et a la même portée que le tiens à peu près mais ne passe pas à travers les creeps donc si tu souhaites E de manière agressive fais le en étant derrière la wave. Un bon moyen de trade est de rester derrière les creeps en attendant qu\'il Q pour poke puis utiliser son E pour dodge et repartir en arrière<br>\r\n- Le CD de son E est 4sec plus long que le tiens donc c\'est bien de le bait, cependant s\'il touche le CD revient plus vite<br>\r\n- Post 6 utilise Galeforce + E pour dodge ses spells notamment son R<br>\r\n- S\'il utilise son R tu peux E ce qui va te pousser à un endroit différent de ce qu\'il avait anticipé. S\'il l\'utilise pour te repousser quand tu le chase c\'est un bon moyen de l\'utiliser en ta faveur afin d\'être repoussé vers lui', NULL, NULL, NULL);
INSERT INTO `other_stuff` (`id`, `id_my_character`, `id_character`, `id_build`, `id_setrunes`, `difficulty`, `runes`, `item_path`, `tips`, `parry`, `wave`, `teamfight_split`) VALUES
(167, 'Quinn', 'Illaoi', 14, 168, 2, '', '', '- Quinn cheese level 1 mais E puis sidestep directement pour éviter le sien et enchaîne sur des AA<br>\r\n- Tue les tentacules quand ils spawn et reste derrière les creeps pour ne pas te faire E. Tu peux éventuellement te décaler un peu par rapport aux creeps et instant back pour essayer de bait son spell<br>\r\n- Si elle waste son E hard engage pour la punir<br>\r\n- Fais attention à tes creeps, les joueurs Illaoi aiment bien Q les minions low life, tu peux donc anticiper et esquiver plus facilement<br>\r\n- Le E de Quinn peut cancel le W de Illaoi<br>\r\n- Si jamais son E te touche, consume ton passif et cours pour sortir de la zone<br>\r\n- Post 6, si illaoi R utilise ton Q pour la blind et gagner du temps, ne la combat pas si son R est actif. E sur elle lorsqu\'elle saute sur toi après le saut de son R puis cours aussi vite que tu peux', NULL, NULL, NULL),
(168, 'Quinn', 'Irelia', 18, 169, 5, '', '', '- Attention si Irelia commence au Q elle peut faire ses stacks sur les 3 premiers creeps<br>\r\n- Tu peux faire le Quinn cheese level 1 et la zoner de la wave pour qu\'elle ne puisse Q. L\'idéal est de slow push les premières waves et de rester entre elle et les creeps<br>\r\n- Attention lorsqu\'elle up level 2, elle peut à présent stacks son passif facilement et faire de gros trades<br>\r\n- Ne la laisse pas freeze en face de sa tour, essai plutôt toi de freeze en face de la tienne pour l\'empêcher de stack facilement<br>\r\n- Si elle te touche avec son E, fais un quick combo Q E AA, elle ne pourra pas faire de 2ème Q si elle est blind<br>\r\n- Tu peux prédire ses engage en surveillant les HP de tes creeps, elle va vouloir Q sur ceux qui ont peu de vie afin de t\'atteindre<br>\r\n- Post 6, si la wave est froze et qu\'elle a son ult, fais attention elle peut te one shot<br>\r\n- Garde ton Q, si Irelia ult, elle va instant Q 99% du temps ce qui l\'emmènera derrière toi donc tu peux anticiper et Q à cet endroit là puis E AA instant\'.', NULL, NULL, NULL),
(169, 'Quinn', 'Jax', 19, 170, 1, '', '', '- Quinn cheese level 1 AA E AA, la plupart des Jax commencent au E, s\'il E, recule hors de sa range puis reviens AA à la fin de son spell<br>\r\n- Si Jax Q, utilise ton E instant\' afin de cancel son jump, il faut donc garder ton E pour ce moment précisément et c\'est ce qui rend le matchup injouable pour lui<br>\r\n- Le blind l\'empêche de ward Q pour s\'enfuir<br>\r\n- Son Q a un très faible CD donc garde en tête qu\'il l\'aura récup avant que tu ne récup ton E<br>\r\n- La seule façon pour Jax de te tuer est de charger son E puis de te flash, il faut donc être prêt à flash à ton tour pour l\'esquiver<br>\r\n- Si tu le vois charger son E essai de le Q si tu peux<br>\r\n- Post 6 rien ne change vraiment, fais juste attention lorsque tu roam car Jax peut très vite faire fondre ta tour', NULL, NULL, NULL),
(170, 'Quinn', 'Jayce', 20, 171, 2, '', '', '- Tu peux Quinn cheese level 1 E AA et sidestep instant\' afin d\'éviter son Q<br>\r\n- De manière générale reste derrière les creeps pour éviter son poke E Q<br>\r\n- S\'il rate son E Q joue agressif avec ton Q et essai d\'avoir des free trades<br>\r\n- Idéalement garde ton E pour cancel le Q de sa forme mélée, Jayce ne peut reswap sur son autre forme avant 6 sec<br>\r\n- Si tu veux utiliser ton E de manière agressive attend que ta rune Fleet sois dispo et fais E AA et fuis instant\'<br>\r\n- Essai de bait son Q en te déplaçant aléatoirement loin de ta wave et en revenant pour sidestep<br>\r\n- Les coques en acier sont très fortes contre lui si tu galères car il joue létalité et s\'il ne peut te one shot alors il est inutile contre toi<br>\r\n- Tu l\'outscale très fort après 1-2 items', NULL, NULL, NULL),
(171, 'Quinn', 'Kayle', 12, 172, 2, '', '', '- Quinn cheese level 1 AA E AA et zone Kayle hors de la wave en restant entre elle et les creeps afin de la garder hors de la range d\'xp, si elle s\'approche tu peux l\'AA jusqu\'à la mort, elle ne peut rien faire<br>\r\n- Pre 6, freeze puis slow push la wave toujours en la zonant afin de tenter des dives avec ton jungler si possible, si le dive n\'est pas possible alors punis la pour chaque creep qu\'elle prend<br>\r\n- Essai de proc PTA chaque fois que la rune est dispo, tu gagnes chaque trade<br>\r\n- Post 6, essai de la blind au maximum surtout pour lui faire claquer son ult lorsqu\'elle est low afin d\'avoir la voie libre pour la tuer<br>\r\n- Lorsqu\'elle utilise son R pour fuir, profite de ce moment pour remonter sur Valor<br>\r\n- Le late est bien plus compliqué mais tu devrais gagner si tu le joue correctement, l\'issue du fight dépend du fait de la toucher avec ton blind<br>\r\n- Stormrazor est important ici car les bonnes Kayle utilisent la MS de leur W pour dodge le blind mais grâce à cet item il est alors plus facile de toucher', NULL, NULL, NULL),
(172, 'Quinn', 'Kennen', 21, 173, 3, '', '', '- Quinn cheese level 1 AA E AA car tu gagnes de toute façon le trade, joue aussi agressif que tu peux<br>\r\n- Sidestep ses Q ou reste derrière la wave de creeps<br>\r\n- Si Kennen te touche avec son Q, attend que le stack expire avant d\'aller trade, si jamais il utilise son Q sur un creep ou s\'il le rate, instant\' E AA AA pour proc PTA puis recule sauf si tu peux le blind dans ce cas continue<br>\r\n- Si Kennen waste sa 4ème auto (celle qui applique une marque) sur un creep go pour un quick trade puis recule<br>\r\n- Post 6, Kennen ne peut pas te one shot si tu es full HP mais ne reste pas trop proche de lui quand son R est dispo<br>\r\n- Si Kennen te R, E AA le instant\' et fuis le plus vite possible, la range de son R est légèrement plus grande que ton E mais si tu consommes ton passif avec l\'AA tu devrais tout juste pouvoir fuir assez loin', NULL, NULL, NULL),
(173, 'Quinn', 'Kled', 14, 174, 2, '', '', '- Quinn cheese level 1 AA E AA, tu devrais pouvoir éviter son Q avec Fleet<br>\r\n- Si Kled touche son Q, laisse son Q te pull puis E immédiatement après, n\'utilise jamais ton E avant. Tu peux également proc Fleet + ton passif grâce à ton Q pour avoir la MS pour t\'enfuir<br>\r\n- Ton but est de faire tomber sa monture le plus vite possible car il ne peut pas la récupérer facilement contre un champion range<br>\r\n- Évite de trop t\'approcher de lui car s\'il touche son E il regagne un dash après 3 sec<br>\r\n- Si Kled rate son Q, n\'hésite pas à trade avec lui car ses dégâts dépendent de sa réussite sur ce spell<br>\r\n- Post 6, essai de track le jungler le plus possible car son R lui permet de set up des ganks facilement<br>\r\n- Si il te R, laisse le te Q en premier puis E ensuite c\'est ta meilleure chance de t\'en sortir', NULL, NULL, NULL),
(174, 'Quinn', 'Lucian', 20, 175, 4, '', '', '- Commence avec Q dans ce matchup et push pour avoir le level 2 en premier et instant\' E combo pour le mettre low (s\'il up en premier anticipe et recule)<br>\r\n- Ne reste pas derrière tes creeps car c\'est plus facile pour lui de te Q comme ça<br>\r\n- Essai de lancer tes Q max range pour qu\'il ne puisse te punir facilement si tu rates<br>\r\n- Essai d\'avoir la prio en lane si tu peux, si ce n\'est pas le cas alors évite juste de trop te faire poke\r\n- Fais des short trades uniquement si tu touches ton Q<br>\r\n- Si tu souhaites quand même engage, utilise ton E en premier pour le slow ça pourra aussi avoir pour effet de le faire E en panique pour fuir ce qui te donnera un free Q<br>\r\n- Post 6, ton E cancel son R donc ne sois pas trop loin de lui lorsqu\'il s\'apprête à l\'utiliser et garde ton E pour ce moment<br>\r\n- Tu devrais gagner après 1-2 items', NULL, NULL, NULL),
(175, 'Quinn', 'Malphite', 22, 176, 5, '', '', '- Prend TP pour ce matchup<br>\r\n- Quinn cheese level 1 AA E AA, il devrait te Q mais continu jusqu\'à avoir le proc Grasp AA<br>\r\n- Essai de le taper au moins une fois toute les 10 sec afin de delay son shield au maximum<br>\r\n- Essai de toujours avoir ton E dispo lorsque tu t\'approches de lui<br>\r\n- Lorsqu\'il te Q, instant\' E afin d\'esquiver la Comet et essaie de le run down avec des AA<br>\r\n- Si tu souhaites trade essaie de le Q car s\'il est blind il ne pourra pas te Q à son tour<br>\r\n- Ton but est d\'essayer de le tuer avant son premier back sinon il risque d\'avoir une bramble vest, tu hard win l\'early donc profite et prend au moins un lead en CS<br>\r\n- Post 6, le matchup devient injouable donc slow push et crash la wave pour roam le plus possible, Malphite a un wave clear extrêmement nul ce qui te laisse pas mal de temps<br>\r\n- ROAM ROAM ROAM ROAM ROAM ROAM', NULL, NULL, NULL),
(176, 'Quinn', 'Maokai', 14, 177, 2, '', '', '- Quinn cheese level 1 AA E AA mais attention à son Q sois prêt à sidestep après ton E puis spam AA et zone le de la wave<br>\r\n- Fais des Q max range sinon il peut les esquiver en utilisant son W sur toi, si tu touches go pour un quick trade<br>\r\n- Attention aux bush, il va probablement placer ses E dedans, la technique est d\'utiliser ton W et t\'approcher des bush afin qu\'ils te chase sans que tu aies à facecheck<br>\r\n- Essai de ne pas trop utiliser ton E de manière agressive en lane car si tu le fais Maokai risque de te W et d\'avoir un bon trade. Essaie plutot de garder ton E pour disengage de ses W<br>\r\n- Post 6, son ult n\'est pas aussi effrayant qu\'il en à l\'air avec Grasp car tu as de la tenacity et plus tu es low plus tu en a<br>\r\n- Si il ult et que tu sais que tu ne peux pas escape, fais toi toucher early afin d\'éviter au max de te faire root trop longtemps puis Q le pour le forcer à W. Lorsque c\'est fait utilise ton E pour disengage<br>\r\n- Tu le détruit complètement avec 3 items même s\'il est très tanky', NULL, NULL, NULL),
(177, 'Quinn', 'Mordekaiser', 23, 178, 2, '', '', '- Quinn cheese level 1 AA E AA, il devrait Q mais tu gagnes le trade de loin<br>\r\n- Garde ton E pour disengage s\'il te pull avec le sien afin de l\'empêcher d\'avoir un bon trade sur toi puis reengage puisque ses spells sont en cd<br>\r\n- Ne reste pas derrière les creeps, met toi plutôt à côté comme ça si Morde veut te poke il fera son Q à coté de la wave<br>\r\n- Si Mordekaiser waste son E alors engage le car il n\'a plus de gap closer avant son level 6<br>\r\n- Essaie de proc PTA dès que la rune est disponible mais ne all in pas bêtement avec ignite en te faisant bait par ses faibles HP, le W de Morde fait pop un shield et lui rend de la vie<br>\r\n- Post 6, si Morde t\'ult, tu dois gagner du temps au maximum. Pour cela, Q le afin d\'aller de l\'autre côté de la zone, il va alors venir jusqu\'à toi pour te pull, utilise ton E en réponse<br>\r\n- Tu hardwin contre lui en late et ce même dans son R', NULL, NULL, NULL),
(178, 'Quinn', 'Nasus', 14, 179, 2, '', '', '- Quinn cheese level 1 AA E AA et run down le, il va utiliser son E mais tu hard win quand même<br>\r\n- Freeze et zone le au maximum early pour l\'empêcher d\'avoir ses stacks<br>\r\n- Si tu peux avoir l\'aide de ton jungler pre 6 alors fais un slow push puis crash la wave sous sa tour pour le dive<br>\r\n- Quand Nasus te W, proc Phase rush instant\'ça te donnera 75% de résistance aux slow<br>\r\n- Ton E cancel son Q AA donc s\'il te Q cancel le ça ne devrait pas te faire de dégât, sa prochaine AA sera quand même chargée mais tu auras esquivé un gros coup<br>\r\n- Post 6, si tu essaies de le all in alors ignite avant afin que son R ne le heal pas trop<br>\r\n- Toujours post 6, fais gaffe à ne pas proc Phase rush bêtement si tu peux te faire punir derrière<br>\r\n- Fais gaffe quand tu roam ça lui laisse une ouverture pour free farm et monter ses stacks', NULL, NULL, NULL),
(179, 'Quinn', 'Olaf', 14, 180, 3, '', '', '- Quinn cheese level 1 AA E AA, il va Q essai de sidestep et recule lorsqu\'i lvient la ramasser mais reviens le bully après ça<br>\r\n- Pre 6, joue extrêmement agressif, trade dès que tu peux, Phase rush devrait l\'empêcher de te choper et te punir même s\'il te touche avec un Q<br>\r\n- Fais quand même pas trop le fou si ton E et Phase rush sont pas dispo<br>\r\n- Si tu prévois un all in pre 6 alors ignite early afin de minimiser le heal de son W<br>\r\n- Post 6, s\'il R alors Q AA AA pour proc Phase rush, n\'utilise pas ton E car ça ne le stoppera pas. À la seconde ou son R se termine à ce moment là utilise ton E et punie le<br>\r\n- Si jamais tu dois quand même utiliser ton E lorsqu\'il est sous ult car tu es 100% mort sinon alors attend qu\'il soit vraiment close de toi afin d\'être propulsé le plus loin possible', NULL, NULL, NULL),
(180, 'Quinn', 'Ornn', 14, 181, 2, '', '', '- Quinn cheese level 1 AA E AA et sidestep son Q puis run down le<br>\r\n- Le W de Ornn le rend instoppable donc ne le E pas àa ce moment<br>\r\n- Ton E cancel son dash donc s\'il te Q reste entre son rock et lui afin de E dès qu\'il fera le sien. Il faudra donc garder ton spell pour ce moment là<br>\r\n- Ne reste pas proche des murs inutilement<br>\r\n- S\'il waste son E alors engage et bully le<br>\r\n- Post 6, Ornn peut set up de très bon ganks alors essai de track le jungler adverse<br>\r\n- Tu peux cancel le R de ornn en faisant ton E au pixel près lorsqu\'il s\'apprête à le renvoyer. C\'est une mécanique très difficile alors fais le en dernier recours si tu penses que tu vas mourir.<br>\r\n- Tu le détruit dès que tu as le Dominik', NULL, NULL, NULL),
(181, 'Quinn', 'Pantheon', 13, 182, 2, '', '', '- Quinn cheese level 1 AA E AA, sidestep son Q, tu hard win donc joue aussi agressif que possible<br>\r\n- Ton E cancel son W pendant le saut, dans un open space si tu anticipes qu\'il va faire son spell alors met ton curseur entre lui et toi et spam ton E<br>\r\n- Si tu ne E pas assez rapidement pour cancel son W alors utilise le quand même juste après afin de remettre dans la distance entre vous<br>\r\n- S\'il E ne consume pas la marque de ton passif, attend la fin de son spell<br>\r\n- Post 6, attention à ne pas greed push la wave ou si tu roam car il peut te R. Si c\'est le cas tiens toi prêt à E son W car c\'est ce que la plupart des Pantheon font direct après leur ult<br>\r\n- Quinn outscale hard Pantheon, sa seule chance est la laning phase, après 2-3 items tu le détruit<br>\r\n- Prend les coques en acier si tu galères', NULL, NULL, NULL),
(182, 'Quinn', 'Poppy', 14, 183, 2, '', '', '- Quinn cheese level 1 AA E AA mais attention lorsqu\'elle récupère son shield par terre arrête de la trade<br>\r\n- Fun fact : si tu E Poppy au moment où elle utilise son Q elle le fera derrière elle mais c\'est un timing difficile à avoir<br>\r\n- Ton E cancel le sien lorsqu\'elle dash donc garde le en counterplay sauf si elle E avec son W autour d\'elle car ça aura pour effet de te root<br>\r\n- Si elle W proc juste une marque de ton passif afin de reculer<br>\r\n- Si elle waste son W alors tu as une fenêtre pour l\'engage mais sois prêt à counter son dash<br>\r\n- De manière générale évite de rester trop proche des murs<br>\r\n- Lorsqu\'elle envoie son bouclier, si tu es plus proche qu\'elle alors ramasse le à sa place<br>\r\n- Post 6, ton E peut cancel le R de Poppy donc n\'hésite pas si tu la voit le charger<br>\r\n- Tu la détruit dès que tu as ton Dominik', NULL, NULL, NULL),
(183, 'Quinn', 'Renekton', 14, 184, 1, '', '', '- Quinn cheese level 1 AA E AA et run down le puis zone le hors de la wave en restant entre lui et les creeps<br>\r\n- Slow push correctement jusqu\'au level 3 afin de le dive si ton jungler est pas loin sinon fais un cheater recall<br>\r\n- Rush les berserker dans ce matchup avant tout le reste afin d\'être impossible à chase<br>\r\n- Garde ton E pour cancel SON SECOND DASH(E) afin de counter son W<br>\r\n- Post 6, si tu anticipes bien son R tu peux l\'ignite avant afin de l\'empêcher de trop se heal<br>\r\n- Garde un oeil sur sa barre, si elle est rouge et que son flash est up il peut l\'utiliser pour te combo et essayer de te one shot, s\'il le fait, instant\' E AA et fuis', NULL, NULL, NULL),
(184, 'Quinn', 'Rengar', 18, 185, 4, '', '', '- Pas de Quinn cheese pour ce matchup, reste loin des bush<br>\r\n- Essai de push la wave sous sa tour pour éviter qu\'il entre dans les bush ou laisse le push si tu as peur du jungler<br>\r\n- Si tu vois Rengar se diriger vers un bush Q le si c\'est possible sinon prépare toi à E pour cancel son jump<br>\r\n- Comme dit au dessus, le E de Quinn cancel le jump de Rengar donc ne t\'approche jamais des bush sans ton E dispo<br>\r\n- Post 6, si Rengar te R, spam ton E, si tu le fais assez vite tu pourras cancel son dash et te replacer de manière safe<br>\r\n- Si Rengar ne peut pas te one shot après son level 6, alors tu hard win les fights\r\n', NULL, NULL, NULL),
(185, 'Quinn', 'Riven', 13, 186, 2, '', '', '- Level 1 reste dans le bush et AA la juste car si elle commence au Q elle hard win le trade, en revanche si elle commence au E alors run down la<br>\r\n- Utilise ton E pour cancel son 3ème Q. N\'utilise ton E que pour cette interaction<br>\r\n- Essai de slow push la wave et zone Riven avant son level 3<br>\r\n- Après son level 3, joue plus prudemment lorsque tu es low car elle peut te flash combo. Si c\'est le cas n\'hésite pas à flash à ton tour<br>\r\n- Si le E de Riven est down et que tu as pu cancel son 3ème Q, inflige lui un gros trade car elle n\'a plus de gap closer<br>\r\n- Post 6, si Riven R, essai de la blind pour t\'enfuir dans une direction à laquelle elle ne s\'attend pas si possible. Si tu ne peux pas la blind alors garde ton E pour son 3ème Q', NULL, NULL, NULL),
(186, 'Quinn', 'Rumble', 24, 187, 4, '', '', '- Quinn cheese level 1 AA E AA tout en essayant de sidestep son E (il en a 2 fais gaffe), s\'il rate les deux run down le. S\'il les touches tu seras slow donc arrête le trade<br>\r\n- Lorsque la barre de surchauffe de Rumble dépasse les 50%, ses capacités sont augmentées de 50%, garde ça en tête<br>\r\n- Reste derrière la wave pour éviter son spam E<br>\r\n- Ne le fight pas si son Q est actif car il a une plus longue range que tes AA<br>\r\n- Push la wave pour avoir la prio ce qui va le forcer à Q les creeps. La seconde où son Q se termine, instant\' E sur lui pour un trade, encore une fois essai de sidestep ses E du mieux possible<br>\r\n- Si Rumble surchauffe alors engage un gros trade avec lui car il ne peut rien faire d\'autre que des AA pendant 6 sec<br>\r\n- Post 6, essai de slow push la wave et roam si tu vois une opportunité, si ce n\'est pas le cas fais bien gaffe aux trades que tu prends car si tu es low il va simplement t\'ult<br>\r\n- Si Rumble t\'ult et qu\'il te rush, attend qu\'il soit proche pour faire ton E sur lui et essayer de t\'échapper', NULL, NULL, NULL),
(187, 'Quinn', 'Ryze', 12, 188, 2, '', '', '- Quinn cheese level 1 AA E AA et run down le puis zone le hors de la wave et de la range d\'xp<br>\r\n- Slow push les premières waves pour les mettre sous tour, si ton jungler est proche, demande pour un dive sinon fais un cheater recall<br>\r\n- Ne t\'approche pas de tes creeps qui sont low à cause du E de Ryze mais reste derrière eux quand m$eme pour éviter son spam Q<br>\r\n- Si Ryze waste son Q et son E alors run down le instant\'<br>\r\n- Si pendant la laning phase tu touches un Q tu peux également go pour un trade, l\'idée est de vraiment être agressif<br>\r\n- Post 6, ton E peut cancel son R donc s\'il l\'utilise lance ton E instant\'<br>\r\n- Late game, Ryze devient très fort alors essai de sidestep son Q et touche ton blind et tu devrais win<br>\r\n- Si tu galères tu peux faire des mercure early et Maw en late', NULL, NULL, NULL),
(188, 'Quinn', 'Sett', 14, 189, 2, '', '', '- Commence comme si tu faisais le Quinn cheese level 1, fais une AA et si tu vois la barre blanche en dessous de sa vie alors tu peux continuer et E AA. Si tu ne vois pas cette barre c\'est qu\'il a commencé au E donc reste juste en range d\'AA, ne E pas<br>\r\n- Rush les bottes dans ce matchups, avoir de la MS est très fort contre lui<br>\r\n- Garde ton E pour le E de Sett, s\'il te pull alors E AA instant\' et fuis pour sortir de la range de son W<br>\r\n- Si tu souhaites utiliser ton E de manière agressive, il faut le lancer au moment le plus random possible afin d\'être imprévisible pour qu\'il ne puisse pas E en réponse<br>\r\n- Si tu vois Sett Q vers toi, blind le, proc ton passif avec une AA et recule<br>\r\n- Si Sett waste son W tu peux go pour un gros trade<br>\r\n- Post 6, Sett ne devrait jamais pouvoir te R sans toucher son E, cependant, s\'il te chope quand meme attend qu\'il E pour ensuite lancer le tiens afin de fuir<br>\r\n- La clef est de toujours respecter une distance de sécurité entre lui et toi, essai de rester en range de tes AA et ça devrait être OK<br>\r\n- Tu l\'outscale hard en late avec Kraken et Dominik', NULL, NULL, NULL),
(189, 'Quinn', 'Shen', 14, 190, 1, '', '', '- Quinn cheese level 1 AA E AA et run down le, fais juste attention à pas le laisser avoir un proc Grasp, s\'il se rapproche alors recule pour rester en range de tes AA uniquement <br>\r\n- Ton E cancel son E donc garde le pour ça de préférence <br>\r\n- Ne le laisse pas CS librement garde la pression sur lui <br>\r\n- Si Shen utilise son W, ne l\'AA pas car ça consume la marque de ton passif pour rien, attend simplement la fin de son spell <br>\r\n- Si Shen waste son W, tu peux le punir hard derrière car son spell a un cd de 18 sec <br>\r\n- Post 6, ton E cancel son R donc utilise le dès que tu le vois ult, attention cependant si tu le fais sous sa tour car s\'il te E direct après tu es mal <br>\r\n- Pro tip : tu peux proc ton passif sur un creep pour gagner de la MS puis foncer vers Shen et reculer lorsque tu penses qu\'il va utiliser son E. Si tu arrives a bait son spell tu peux le trade derrière ', NULL, NULL, NULL),
(190, 'Quinn', 'Singed', 14, 191, 2, '', '', '- Attention aux Singed qui proxy level 1, attend dans les bush qui mènent à ton buff pour voir si c\'est ce qu\'il compte faire. Si ce n\'est pas le cas alors bully le et zone le car son seul spell est son poison <br>\r\n- Le E de Singed cancel ton E donc ne l\'utilise pas de manière obvious <br>\r\n- Si tu souhaites E de manière agressive, essai de le blind avant pour qu\'il ne puisse pas te counter avec son flip <br>\r\n- Si Singed utilise son W sur toi alors AA Q AA le afin de proc Phase rush pour t\'enfuir <br>\r\n- Ne proc pas ton Phase rush si tu peux te faire punir facilement derrière un bon Singed va garder son W pour te punir juste après. Si tu proc ta rune joue un peu plus safe après ton trade <br>\r\n- Si singed te flip, utilise ton E instant\' après <br>\r\n- Le R de Singed augmente sa MS mais tu restes plus rapide donc ça ne change pas grand chose pour toi <br>\r\n- En late tu l\'out run de toute manière grâce au passif de ton W, Phase rush et ta botrk, vraiment il n\'est pas une grande menace', NULL, NULL, NULL),
(191, 'Quinn', 'Sion', 14, 192, 2, '', '', '- Quinn cheese level 1 AA E AA <br>\r\n- Ton E cancel le chargement de son Q donc n\'hésite pas à en abuser sauf si tu penses qu\'il va le cancel de lui même, si tu cancel son Q fais simplement un short trade derrière (juste un proc PTA) car il va récupérer son spell après 2 sec <br>\r\n- Le Q de Sion ne stun que s\'il est chargé au moins 1 sec donc si tu souhaites le cancel fais très vite pour éviter un CC s\'il souhaite le lancer plus tôt <br>\r\n- Attention quand tu restes derrière ta wave, bouge en permanence de manière imprévisible pour qu\'il ne puisse te toucher avec son E <br>\r\n- Si Sion utilise son W, essai de l\'AA autant que tu peux pour le casser, si tu y parviens en moins de 3 sec ça ne fera pas de dégât <br>\r\n- Post 6, si Sion utilise son R essai de ne pas te faire toucher pour ne pas être stun, s\'il te touche quand même E dès que tu peux pour cancel le chargement de son Q <br>\r\n- Tu le massacre dès que tu as ton Dominik', NULL, NULL, NULL),
(192, 'Quinn', 'Sylas', 12, 193, 2, '', '', '- Quinn cheese level 1 mais attend qu\'il Q après ta première AA, dès qu\'il le fait E instant\' afin d\'éviter l\'explosion, run down le ensuite et continu de jouer le level 1 de manière agressive <br>\r\n- Le E de Quinn peut cancel le dash du E de Sylas donc garde ton E pour counter ses engage, proc ensuite une marque de ton passif pour éviter l\'explosion de son Q. Lorsque son combo est down reengage le <br>\r\n- Le matchup n\'est pas très compliqué tant que tu dodge ses Q\r\n- Post 6, Sylas va essayer de voler ton R avant de back, si tu peux l\'éviter fais le sinon tant pis de toute façon beaucoup de Sylas de savent pas l\'utiliser proprement, de plus, ça veut aussi dire qu\'il n\'a pas d\'ult qui sert au combat ce qui n\'est pas si mal <br>\r\n- Si Sylas vole ton ult préviens simplement ta team qu\'il peut roam à grande vitesse\r\n', NULL, NULL, NULL),
(193, 'Quinn', 'TahmKench', 14, 194, 2, '', '', '- Quinn cheese level 1 AA E AA, essai de sidestep son Q de préférence. Si tu n\'y parviens pas, pas de panique, fini ton combo ça aura pour effet de proc Phase rush et donc d\'annuler le slow <br>\r\n- Utilise la technique décrite si dessus pour ne jamais te faire toucher par son W après avoir été slow <br>\r\n- Joue l\'early de manière très agressive et essai de fight seulement quand ton Phase rush est dispo <br>\r\n- Reste derrière la wave pour éviter de te faire poke par son Q <br>\r\n- Post 6, attention quand il back, il peut utiliser son ult sur lui même et son jungler pour gank la lane <br>\r\n- Même si tu es even dans ce matchup c\'est suffisant, Tahm Kench a vraiment besoin d\'être devant pour pouvoir faire quelque chose', NULL, NULL, NULL),
(194, 'Quinn', 'Teemo', 21, 195, 3, '', '', '- Pas de Quinn cheese level 1 ici, attention à ne pas te faire surprendre il peut se mettre invisible dans un bush et t\'attendre <br>\r\n- Le mieux est de commencer au Q et de jouer le level 2 en premier, n\'avance dans sa range de Q que si tu touches le tien et ne fais qu\'un short trade. Si tu up en premier, E instant\' et go pour un gros trade <br>\r\n- Teemo gagne passivement de la MS grâce à son W s\'il n\'a pas été touché pendant 5 sec donc essai de le toucher dès que tu peux, ce sera plus simple pour toucher ton Q par la suite. <br>\r\n- Même sans la MS passive du W, les bons Teemo utilisent l\'actif pour esquiver les Q, le mieux est d\'essayer de toucher ton blind quand il s\'apprête à CS. Si tu touches ton Q, instant\' AA E AA puis recule, la clé de ce matchups est de faire le plus possible de short trades comme ça <br>\r\n- Garde en tête que le premier qui touchera son Q gagnera le trade. Le Q de Quinn a bien plus de range que celui de Teemo donc si tu veux trade reste en range du tiens comme ça si tu rates Teemo ne pourras pas répondre avec le sien <br>\r\n- Post 6, attention aux buissons il peut y avoir des champignons dedans. Si tu marches sur l\'un d\'entre eux il peut être invi à côté en train d\'attendre, le mieux est de rester derrière la wave et de la laisser déminer pour toi. N\'hésite pas à prendre le Red trincket ', NULL, NULL, NULL),
(195, 'Quinn', 'Tryndamere', 19, 196, 2, '', '', '- Quinn cheese possible dans le bush, commence par une AA puis attend qu\'il E vers toi pour utiliser le tien afin de le cancel, tu pourras ensuite le run down <br>\r\n- Comme dit au dessus le E de Quinn cancel celui de Trynda donc garde ton E exclusivement pour ça <br>\r\n- Rush les bottes Berserker dans ce matchup, la MS le counter <br>\r\n- Essai de jouer la lane de manière agressive, slow push et zone le en essayant de le poke constamment car il possède un self heal <br>\r\n- Le fait de le zoner hors de la wave l\'empêche de charger son passif sur la wave <br>\r\n- N\'aie pas peur de son W, grâce à Phase rush tu peux minimiser le slow qu\'il inflige <br>\r\n- Le but ici est de tuer Trynda pré 6 car le matchup est injouable pour lui, AA le dès qu\'il est en range <br>\r\n- Post 6, s\'il engage E AA AA instant\' s\'il utilise son E afin de proc Phase rush, essai de le Q pour gagner encore plus de temps dès que tu perds ta MS. Si jamais n\'oublie pas que tu peux Ignite pour proc Nimbus cloak et gagner encore plus de MS', NULL, NULL, NULL),
(196, 'Quinn', 'Urgot', 14, 197, 3, '', '', '- Tu peux Quinn cheese level 1 dans le bush avec des AA mais n\'utilise pas ton E car le sien te counter, le mieux est d\'attendre qu\'il utilise le sien pour ensuite faire le tien et le run down <br>\r\n- Essai de rester en range max de tes AA, sidestep ses Q du mieux que tu peux et si jamais tu touches ton blind fais un short trade <br>\r\n- Post 3, tu dois utilisr ton blind lors des trades car son W fais baucoup de dégâts <br>\r\n- Un trick un peu avancé en lane dès que tu as ton W est d\'utiliser ton E de manière imprévisible puis de AA direct après, ça aura pour effet de bait son E ce qui laisse une fenêtre pour le trade <br>\r\n- Post 6, fais attention aux potentiels flahs engage car il te détruit. Si jamais il touche son E, instant\' E et sidestep pour éviter son R', NULL, NULL, NULL),
(197, 'Quinn', 'Vayne', 20, 198, 2, '', '', '- Quinn cheese level 1 AA E AA et run down la, joue vraiment agressif <br>\r\n- Si tu souhaites faire un trade agressif, commence ton combo avec ton E, Vayne prendra peur et utilisera son Q pour dash en arrière ce qui te laissera une ouverture pour la blind vu qu\'elle sera slow et n\'aura plus d\'escape <br>\r\n- Lorsque tu trades avec Vayne il faut toujours la blind, elle gagnera tous les trades si tu rates ton Q. Lorsque tu rates recule directement après <br>\r\n- Tu peux cancel son E avec le tien si tu le time parfaitement <br>\r\n- Post 6, si tu blind Vayne pendant son R, elle ne peut invi avec sa roulade ce qui rend son action inutile <br>\r\n- Quinn outscale Vayne en 1v1 du moment que tu touches ton Q', NULL, NULL, NULL),
(198, 'Quinn', 'Vladimir', 12, 200, 2, '', '', '- Quinn cheese level 1 AA E AA depuis le bush et run down le, son level 1 n\'est pas très bon, utilise ton E dès qu\'il est dispo <br>\r\n- Bully le et zone le avant son level 3, son early est vraiment faible donc tu dois en tirer parti <br>\r\n- Si tu touches un Q, go direct pour un quick trade afin qu\'il ne puisse pas répondre <br>\r\n- Lorsque la barre en dessous de sa vie est rouge, n\'avance pas dans sa range pendant 2.5 sec, si tu souhaites trade avec lui, blind le avant que sa barre ne soit. Son objectif est d\'attendre d\'être dans le rouge pour te lancer un gros Q <br>\r\n- Ton but est de le faire utiliser sa flaque (W), lorsque c\'est fait ne le laisse pas respirer durant les 28 prochaines sec car il sera sans défense <br>\r\n- Si tu souhaites le all in essai de le Q en premier pour bait son W, si ça fonctionne E instant\' et go pour un gros trade <br>\r\n- De manière générale essai de toujours avoir ton E dispo dès que son W expire <br>\r\n- Post 6, si Vlad te R fais attention à son W, il va l\'utiliser pour esquiver ton Q. Essai de le E lorsqu\'il t\'ult et blind le dès qu\'il sort de sa flaque pour l\'empêcher de Q', NULL, NULL, NULL),
(199, 'Quinn', 'Volibear', 14, 201, 2, '', '', '- Quinn cheese level 1 AA E AA depuis le bush puis recule pour éviter son E. Son E à un CD plus long que le tien de 3 sec donc réutilise le tien dès qu\'il est dispo <br>\r\n- Le E de Quinn peut cancel le Q de Volibear à n\'importe quel moment de son animation même lors de l\'animation de son AA. Il le récupère direct après mais le slow de ton E + la MS de ton W te rend plus rapide donc garde ton E pour le counter <br>\r\n- Rush les bottes Berserker dans ce matchup sauf si tu es vraiment confiant avec Quinn <br>\r\n- Pre 6 profite de ton avantage pour le bully et proc PTA dès que tu peux <br>\r\n- Post 6, n\'utilise jamais ton E pendant son R car il est immunisé aux CC pendant le saut donc attend qu\'il atterrisse pus E ensuite', NULL, NULL, NULL),
(200, 'Quinn', 'Warwick', 26, 202, 3, '', '', '- Tu peux Quinn cheese level 1 ici mais n\'utilise ton E qu\'après qu\'il ait Q (pas pendant, tu ne peux pas le cancel) <br>\r\n- Reste dans ta range max d\'AA pour éviter qu\'il ne puisse te Q gratuitement et enchaîner sur un E pour te fear <br>\r\n- La plupart des WW jouent barrière donc ne te fais pas bait pas ses low HP, son objectif est de barrière si tu le all in et récupérer beaucoup de HP avec son Q car il sera en dessous de 50% de sa vie <br>\r\n- Si WW utilise son E essai de le blind afin qu\'il ne puisse pas enchaîner sur son Q. Lorsqu\'il n\'a plus son E tu peux faire un gros trade <br>\r\n- Essai de jouer la lane de manière agressive et si tu veux all in il faudra Ignite en premier pour éviter qu\'il ne se heal trop <br>\r\n- Son R le soigne beaucoup donc s\'il est low post 6 et que tu veux le all in, le mieux est de flash son R si tu peux ou de le blind avant qu\'il ne l\'utilise <br>\r\n- S\'il te touche avec son R alors Q E combo pour t\'escape afin qu\'il ne puisse Q sur toi\r\n', NULL, NULL, NULL),
(201, 'Quinn', 'MonkeyKing', 14, 203, 3, '', '', '- Tu peux Quinn cheese level 1 mais n\'utilise pas ton E en premier, fais le uniquement pour cancel son jump (E) tu pourras ensuite le run down avec des AA. Lorsqu\'il reste ~3 sec de CD sur ton E alors recule car son CD est plus court que le tien <br>\r\n- Le E de Quinn peut cancel le Q de Wukong si bien timé mais idéalement garde ton E pour counter le sien <br>\r\n- Pour savoir s\'il utilise son W, si une marque de ton passif disparais c\'est qu\'il s\'est cloné. Si tu vois Wukong s\'arrêter de bouger et que la marque ne bouge pas c\'est qu\'il essai de bluff <br>\r\n- Lorsque Wukong a utilisé son W, tu as une fenêtre de 20 sec pour le punir autant que tu peux car il sera sans défense <br>\r\n- Post 6, ton positionnement est très important, Wukong va généralement jump sur toi, se cloner et R lorsque le clone dsparaîtra. Le mieux est de E après s\'être fait knock up une première fois pas avant car son R peut cancel ton spell <br>\r\n- Le mieux lorsqu\'il a son ult est de jouer un peu en retrait, si tu es trop proche il peut te punir', NULL, NULL, NULL),
(202, 'Quinn', 'Yasuo', 20, 204, 2, '', '', '- Quinn cheese level 1 AA E AA, fais juste attention à son Q, reste dans ta range max d\'AA et il ne pourra rien faire <br>\r\n- Garde ton E pour counter ses engages lorsqu\'il essai de te dash dessus <br>\r\n- Ton but dans ce matchup est de bait son W dès que tu peux. Une bonne manière de le faire est de E de manière agressive, dès qu\'il a utilisé son W recule et attend qu\'il expire. Tu as maintenant une fenêtre de 30 sec pour le punir et dominer la lane <br>\r\n- Lorsqu\'il waste son W ne le laisse pas respirer et engage le dès qu\'il utilise sa tornade <br>\r\n- Fais bien attention à ta wave, il va vouloir essayer de freeze devant sa tour afin ensuite d\'utiliser tes creeps pour faire de multiples dash et te punir <br>\r\n- Post 6, donne tout pour sidestep ses tornade, si Yasuo utilise son R, E AA direct après et fuis', NULL, NULL, NULL),
(203, 'Quinn', 'Yone', 20, 205, 2, '', '', '- Quinn cheese level 1 AA E AA, fais juste attention à son Q, reste dans ta range max d\'AA et il ne pourra rien faire <br>\r\n- Si tu E Yone pendant l\'animation de son W il fera son spell en arrière et il n\'aura pas le shield carilne te touchera pas. C\'est quelque chose de difficile à faire donc n\'essai pas par tous les moyens mais c\'est possible sache le <br>\r\n- Lorsqu\'il utilise son E sur toi instant\' E à ton tour et fuis. De manière générale garde ton E pour counter le sien <br>\r\n- Si tu time correctement ton E lorsque tu anticipes que le sien va expirer ou qu\'il va le recast, tu peux alors le suivre. Fais gaffe avec cette mécanique car tu risque parfois de le suivre et ce n\'est pas forcément ce que tu veux surtout si tu es low donc fais le early si c\'est juste pour le counter <br>\r\n- Post 6, le cast de son R est de 0.75 sec, essai d\'utiliser ce court laps de temps pour sidestep si c\'est possible. S\'il te touche avec, utilise ton E instant\' après son knock up pour t\'échapper, tu as donc besoin d\'avoir ton E dispo lorsque tu penses qu\'il va R sinon il pourra te tuer facilement', NULL, NULL, NULL),
(204, 'Quinn', 'Yorick', 14, 206, 2, '', '', '- Quinn cheese level 1 AA E AA depuis le bush et run down le <br>\r\n- Fun fact : le E de Quinn peut cancel le Q de Yorick <br>\r\n- Si Yorick te cage, attend qu\'il t\'envoie ses ghouls puis E les afin de t\'échapper <br>\r\n- De manière générale s\'il te touche avec son E, utilise ton E sur les Ghouls pour prendre de la distance et les tuer facilement <br>\r\n- Si tu t\'échappes de sa cage et que son E est down alors hard engage le <br>\r\n- Si il te cage pour t\'empêcher de le chase essai d\'utiliser instant\' ton E sur lui afin d\'en sortir sinon il te faut 2 AA pour la détruire early et 4 plus tard <br>\r\n- Post 6, son R est très puissant, ton but est de tuer son ult en utilisant ta range pour lepoke petit à petit. Tu peux également blind son invocation et l\'AA si Yorick n\'est pas là pour te punir. Si tu ne peux pas taper son ult de manière safe alors joue en retrait et tue les Ghouls quand tu peux', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `personnages`
--

DROP TABLE IF EXISTS `personnages`;
CREATE TABLE IF NOT EXISTS `personnages` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cooldown` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `personnages`
--

INSERT INTO `personnages` (`id`, `state`, `name`, `cooldown`) VALUES
('Aatrox', 0, 'Aatrox', 'Q 14-6 | \r\nW 26-14 | \r\nE 9-5 | \r\nR 120-80 '),
('Akali', 1, 'Akali', 'Q 1,5 | \r\nW 20 | \r\nE 16-10 | \r\nR 100-60'),
('Camille', 1, 'Camille', 'P 16-10 | \r\nQ 9-6 | \r\nW 17-11 | \r\nE 16-10 | \r\nR 140-90'),
('Cassiopeia', 0, 'Cassiopeia', 'Q 3,5 | \r\nW 24-16 | \r\nE 0,75 | \r\nR 120-80'),
('Chogath', 0, 'Cho\'gath', 'Q 7 | \r\nW 13-9 | \r\nE 8-4 | \r\nR 80'),
('Darius', 0, 'Darius', 'Q 9-5 | \r\nW 7-5 | \r\nE 26-18 | \r\nR 120-80'),
('DrMundo', 0, 'Mundo', 'Q 4 | \r\nW 4 | \r\nE 6-4 | \r\nR 110-90'),
('Fiora', 1, 'Fiora', 'Q 13-6 | \r\nW 24-16 | \r\nE 11-5 | \r\nR 110-70'),
('Gangplank', 0, 'Gangplank', 'P 15 | \r\nQ 5 | \r\nW 22-14 | \r\nE 18-10 | \r\nR 180-140'),
('Garen', 0, 'Garen', 'Q 8 | \r\nW 23-15 | \r\nE 9 | \r\nR 120-80'),
('Gnar', 0, 'Gnar', 'Q 20-10 | \r\nW 7 | \r\nE 22-12 | \r\nR 90-30'),
('Gragas', 0, 'Gragas', 'P 8 | \r\nQ 11-7 | \r\nW 6 | \r\nE 16-12 | \r\nR 120-80'),
('Hecarim', 0, 'Hecarim', 'Q 4 | \r\nW 22-18 | \r\nE 20-16 | \r\nR 140-100'),
('Illaoi', 0, 'Illaoi', 'P 20-8 | \r\nQ 10-6 | \r\nW 4 | \r\nE 16-12 | \r\nR 120-70'),
('Irelia', 0, 'Irelia', 'Q 11-7 | \r\nW 20-12 | \r\nE 18-12 | \r\nR 140-100'),
('Jax', 0, 'Jax', 'Q 8-6 | \r\nW 7-3 | \r\nE 14-8 | \r\nR 80'),
('Jayce', 0, 'Jayce', 'Q 16-6 | \r\nW 10 | \r\nE 20-10 | \r\nR 6'),
('Kayle', 0, 'Kayle', 'Q 12-8 | \r\nW 15 | \r\nE 8-6 | \r\nR 160-80 '),
('Kennen', 0, 'Kennen', 'Q 8-4 | \r\nW 14-6 | \r\nE 10-6 | \r\nR 120'),
('Kled', 0, 'Kled', 'Q 11-7 | \r\nW 14-8 | \r\nE 14-10 | \r\nR 160-120'),
('Lucian', 0, 'Lucian', 'Q 9-5 | \r\nW 14-10 | \r\nE 18-14 | \r\nR 110-90'),
('Malphite', 0, 'Malphite', 'P 10-6 | \r\nQ 8 | \r\nW 12 | \r\nE 7 | \r\nR 130-80'),
('Maokai', 0, 'Maokai', 'P 30-20(-4) | \r\nQ 8-5 | \r\nW 13-9 | \r\nE 10 | \r\nR 120-80'),
('MonkeyKing', 0, 'Wukong', 'Q 9-7 | \r\nW 20-16 | \r\nE 10-8 | \r\nR 120-90'),
('Mordekaiser', 0, 'Mordekaiser', 'Q 9-4 | \r\nW 14-10 | \r\nE 22-10 | \r\nR 140-100'),
('Nasus', 0, 'Nasus', 'Q 7,5-3,5 | \r\nW 15-11 | \r\nE 12 | \r\nR 120'),
('Olaf', 0, 'Olaf', 'Q 7 | \r\nW 16 | \r\nE 11-7 | \r\nR 100-80'),
('Ornn', 0, 'Ornn', 'Q 9-7 | \r\nW 12-10 | \r\nE 16-12 | \r\nR 140-100'),
('Pantheon', 0, 'Pantheon', 'Q 13-8 | \r\nW 13-9 | \r\nE 22-16 | \r\nR 180-150'),
('Poppy', 0, 'Poppy', 'Q 8-4 | \r\nW 24-16 | \r\nE 14-10 | \r\nR 140-100'),
('Quinn', 0, 'Quinn', 'Q 11-9 | \r\nW 50-30 | \r\nE 12-8 | \r\nR 120'),
('Renekton', 0, 'Renekton', 'Q 8 | \r\nW 13-9 | \r\nE 18-14 | \r\nR 120'),
('Rengar', 0, 'Rengar', 'Q 4 | \r\nW 16-10 | \r\nE 10 | \r\nR 110-70'),
('Riven', 0, 'Riven', 'Q 13 | \r\nW 11-7 | \r\nE 10-6 | \r\nR 120-60'),
('Rumble', 0, 'Rumble', 'Q 10-6 | \r\nW 6 | \r\nE 0,5(x2)10 | \r\nR 100-60'),
('Ryze', 0, 'Ryze', 'Q 6 | \r\nW 13-9 | \r\nE 3,25-2,25 | \r\nR 210-150'),
('Sett', 0, 'Sett', 'Q 9-5 | \r\nW 18-12 | \r\nE 16-10 | \r\nR 120-80'),
('Shen', 0, 'Shen', 'Q 8-5 | \r\nW 18-11 | \r\nE 18-10 | \r\nR 200-160'),
('Singed', 0, 'Singed', 'Q 13mana/s | \r\nW 17-13 | \r\nE 10 | \r\nR 120-100'),
('Sion', 0, 'Sion', 'Q 10-6 | \r\nW 15-11 | \r\nE 12-8 | \r\nR 140-60'),
('Sylas', 0, 'Sylas', 'Q 10-6 | \r\nW 13-7 | \r\nE 14-10 | \r\nR 100-40'),
('TahmKench', 0, 'Tahm Kench', 'P 5 | \r\nQ 5 | \r\nW 20 | \r\nE 3 | \r\nR 140-120'),
('Teemo', 0, 'Teemo', 'Q 8 | \r\nW 17 | \r\nR 30-20'),
('Tryndamere', 0, 'Tryndamere', 'Q 12 | \r\nW 14 | \r\nE 12-8 | \r\nR 110-90'),
('Urgot', 0, 'Urgot', 'Q 12-8 | \r\nW 13-9 | \r\nE 16-14 | \r\nR 100-70'),
('Vayne', 0, 'Vayne', 'Q 4-2 | \r\nE 20-12 | \r\nR 100-70'),
('Vladimir', 0, 'Vladimir', 'Q 9-4.6 | \r\nW 28-16 | \r\nE 13-5 | \r\nR 120'),
('Volibear', 0, 'Volibear', 'Q 12-8 | \r\nW 18 | \r\nE 11 | \r\nR 100-80'),
('Warwick', 0, 'Warwick', 'Q 6 | \r\nW 120-60(-50%) | \r\nE 15-11 | \r\nR 110-70'),
('Yasuo', 0, 'Yasuo', 'Q 4-1 | \r\nW 30-18 | \r\nE 10-6 | \r\nR 120-90'),
('Yone', 0, 'Yone', 'Q 4-1.33 |\r\nW 16-6 |\r\nE 22-10 |\r\nR 120-80'),
('Yorick', 0, 'Yorick', 'Q 7-4 | \r\nW 20-12 | \r\nE 12-8 | \r\nR 160-100');

-- --------------------------------------------------------

--
-- Structure de la table `runes`
--

DROP TABLE IF EXISTS `runes`;
CREATE TABLE IF NOT EXISTS `runes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_categorie` int(11) DEFAULT NULL,
  `id_type` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `id_categorie` (`id_categorie`),
  KEY `id_type` (`id_type`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `runes`
--

INSERT INTO `runes` (`id`, `id_categorie`, `id_type`, `nom`, `image`, `description`) VALUES
(1, 1, 2, 'Attaque soutenue', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Precision/PressTheAttack/PressTheAttack.png', 'Toucher un champion ennemi 3 fois de suite le rend vulnérable, ce qui lui inflige des dégâts supplémentaires et augmente tous les dégâts qu\'il subit pendant 6 sec.'),
(2, 1, 2, 'Tempo mortel', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Precision/LethalTempo/LethalTempoTemp.png', '1.5 sec après avoir blessé un champion, votre vitesse d\'attaque est grandement augmentée. Tempo mortel vous permet de dépasser temporairement la limite de vitesse d\'attaque.'),
(3, 1, 2, 'Jeu de jambes', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Precision/FleetFootwork/FleetFootwork.png', 'Attaquer et se déplacer génère des effets Énergie. À 100 effets cumulés, votre prochaine attaque vous soigne et augmente votre vitesse de déplacement.'),
(4, 1, 2, 'Conquérant', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Precision/Conqueror/Conqueror.png', 'Attaquer des champions ennemis vous fait gagner de la force adaptative cumulable. À 12 effets cumulés, vous récupérez des PV équivalents à une partie des dégâts que vous infligez aux champions.'),
(5, 1, 3, 'Surcharge de PV', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Precision/Overheal.png', 'Le surplus de PV que vous rendent les soins forme un bouclier.'),
(6, 1, 3, 'Triomphe', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Precision/Triumph.png', 'Participez à l\'élimination d\'un champion vous rend 12% de vos PV manquants et vous rapporte 20 PO supplémentaires.'),
(7, 1, 3, 'Présence d\'esprit', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Precision/PresenceOfMind/PresenceOfMind.png', 'Blesser un champion ennemi augmente la régénération de votre mana ou de votre énergie. Participer à l\'élimination d\'un champion vous rend du mana ou de l\'énergie.'),
(8, 1, 3, 'Légende : Alacrité', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Precision/LegendAlacrity/LegendAlacrity.png', 'Participez à l\'éliminations d\'ennemis augmente définitivement votre vitesse d\'attaque.'),
(9, 1, 3, 'Légende : Ténacité', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Precision/LegendTenacity/LegendTenacity.png', 'Participez à l\'élimination d\'ennemis augmente définitivement votre ténacité.'),
(10, 1, 3, 'Légende : Sangsue', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Precision/LegendBloodline/LegendBloodline.png', 'Participer à l\'élimination d\'ennemis augmente définitivement votre vol de vie. Cette rune est plus faible en début de partie et plus puissante en fin de partie que les autres runes Légende.'),
(11, 1, 3, 'Coup de grâce', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Precision/CoupDeGrace/CoupDeGrace.png', 'Vous infligez plus de dégâts aux champions à qui il reste peu de PV.'),
(12, 1, 3, 'Abattage', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Precision/CutDown/CutDown.png', 'Vous infligez plus de dégâts aux champions dont les PV max sont supérieurs aux vôtres.'),
(13, 1, 3, 'Baroud d\'honneur', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Sorcery/LastStand/LastStand.png', 'Vous infligez plus de dégâts aux champions quand il vous reste peu de PV.'),
(14, 2, 2, 'Électrocution', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Domination/Electrocute/Electrocute.png', 'Toucher un champion avec 3 attaques ou compétences différentes en moins de 3 sec inflige des dégâts adaptatifs supplémentaires.'),
(15, 2, 2, 'Prédateur', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Domination/Predator/Predator.png', 'Ajoute une propriété active à vos bottes qui octroie un important bonus en vitesse de déplacement et qui permet à votre prochaine attaque ou compétence d\'infliger des dégâts adaptatifs supplémentaires.'),
(16, 2, 2, 'Moisson noire', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Domination/DarkHarvest/DarkHarvest.png', 'Blesser un champion à qui il reste peu de PV lui inflige des dégâts adaptatifs et siphonne son âme.'),
(17, 2, 2, 'Déluge de lames', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Domination/HailOfBlades/HailOfBlades.png', 'Votre vitesse d\'attaque augmente grandement pour vos 3 premières attaques contre des champions ennemis.'),
(18, 2, 3, 'Coup bas', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Domination/CheapShot/CheapShot.png', 'Vous infligez des dégâts bruts supplémentaires aux champions ennemis dont les actions ou les déplacements sont restreints.'),
(19, 2, 3, 'Goût du sang', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Domination/TasteOfBlood/GreenTerror_TasteOfBlood.png', 'Vous récupérez des PV quand vous blessez un champion ennemi.'),
(20, 2, 3, 'Ruée offensive', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Domination/SuddenImpact/SuddenImpact.png', 'Vous gagnez de la létalité et de la pénétration magique après avoir utilisé une ruée, un bond, un saut instantané ou une téléportation ou en cessant d\'être furtif.'),
(21, 2, 3, 'Balise zombie', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Domination/ZombieWard/ZombieWard.png', 'Quand vous détruisez une balise ennemie, une balise zombie alliée apparaît à sa place. Vous gagnez définitivement des dégâts d\'attaque ou de la puissance (bonus adaptatif) pour chaque balise zombie apparues, plus un bonus après un certains nombre d\'apparitions.'),
(22, 2, 3, 'Poro fantôme', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Domination/GhostPoro/GhostPoro.png', 'Quand vos balises expirent, elles laissent derrière elles un Poro fantôme. Le Poro fantôme révèle les environs jusqu\'à ce qu\'il soit découvert. Vous gagnez définitivement des dégâts d\'attaque ou de la puissance (bonus adaptatif) pour chaque Poro fantôme apparus et chaque fois que votre Poro fantôme repère un champion ennemi, plus un bonus après un certains nombre d\'effets cumulés.'),
(23, 2, 3, 'Arracheur d\'œil', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Domination/EyeballCollection/EyeballCollection.png', 'Vous collectez des yeux en participant à l\'élimination des champions. Vous gagnez définitivement des dégâts d\'attaque ou de la puissance (bonus adaptatif) pour chaque œil, plus un bonus une fois votre collection terminée.'),
(24, 2, 3, 'Chasseur vorace', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Domination/RavenousHunter/RavenousHunter.png', 'Participez à l\'élimination d\'un champion unique octroie un bonus permanent en omnivampirisme.'),
(25, 2, 3, 'Chasseur ingénieux', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Domination/IngeniousHunter/IngeniousHunter.png', 'Participer à l\'élimination d\'un champion unique octroie un bonus permanent en accélération d\'objet (reliques incluses).'),
(26, 2, 3, 'Chasseur acharné', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Domination/RelentlessHunter/RelentlessHunter.png', 'Participer à l\'élimination d\'un champion unique augmente définitivement votre vitesse de déplacement en dehors des combats.'),
(27, 2, 3, 'Chasseur ultime', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Domination/UltimateHunter/UltimateHunter.png', 'Participer à l\'élimination d\'un champion unique réduit définitivement le délai de récupération de votre ultime.'),
(28, 3, 2, 'Invocation d\'Aery', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Sorcery/SummonAery/SummonAery.png', 'Vos attaques et vos compétences envoient Aery vers une cible, blessant les ennemis ou protégeant les alliés.'),
(29, 3, 2, 'Comète arcanique', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Sorcery/ArcaneComet/ArcaneComet.png', 'Blesser un champion avec une compétence fait tomber une comète destructrice sur sa position.'),
(30, 3, 2, 'Rush phasique', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Sorcery/PhaseRush/PhaseRush.png', 'Toucher un champion ennemi avec 3 attaques ou compétences différentes vous octroie un bonus en vitesse de déplacement.'),
(31, 3, 3, 'Orbe anti-magie', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Sorcery/NullifyingOrb/Pokeshield.png', 'Vous obtenez un bouclier anti-dégâts magiques quand des dégâts magiques vous laissent peu de PV.'),
(32, 3, 3, 'Ruban de mana', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Sorcery/ManaflowBand/ManaflowBand.png', 'Frapper un champion avec une compétence augmente définitivement votre mana max de 25 (bonus max : 250).\r\nÀ 250 pts de mana bonus, vous récupérez 1% de votre mana manquant toutes les 5 sec.'),
(33, 3, 3, 'Manteau nuageux', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Sorcery/NimbusCloak/6361.png', 'Après avoir lancé un sort d\'invocateur, vous gagnez un bref bonus en vitesse de déplacement qui vous permet de traverser les unités.'),
(34, 3, 3, 'Transcendance', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Sorcery/Transcendence/Transcendence.png', 'Vous gagnez des bonus en atteignant les niveaux suivants : <br>\r\nNiveau 5 : +5 accélération de compétence <br>\r\nNiveau 8 : +5 accélération de compétence <br>\r\nNiveau 11 : participer à l\'élimination d\'un champion réduit de 20% le délai de récupération restant des compétences de base.'),
(35, 3, 3, 'Célérité', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Sorcery/Celerity/CelerityTemp.png', 'Tous les bonus en vitesse de déplacement sont 7% plus efficaces sur vous et votre vitesse de déplacement est augmentée de 1%.'),
(36, 3, 3, 'Concentration absolue', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Sorcery/AbsoluteFocus/AbsoluteFocus.png', 'Quand vous avez plus de 70% de vos PV, vous gagnez des dégâts adaptatifs.'),
(37, 3, 3, 'Brûlure', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Sorcery/Scorch/Scorch.png', 'Toutes les 10 sec, votre prochaine compétence qui inflige des dégâts met le feu aux champions.'),
(38, 3, 3, 'Marche sur l\'eau', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Sorcery/Waterwalking/Waterwalking.png', 'Dans la rivière, vous gagnez de la vitesse de déplacement et de la puissance ou des dégâts d\'attaque (bonus adaptatif).'),
(39, 3, 3, 'Tempête menaçante', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Sorcery/GatheringStorm/GatheringStorm.png', 'Vous gagnez de plus en plus de dégâts d\'attaque ou de puissance (bonus adaptatif) au fil de la partie.'),
(40, 4, 2, 'Poigne de l\'immortel', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Resolve/GraspOfTheUndying/GraspOfTheUndying.png', 'Toutes les 4 sec, votre prochaine attaque contre un champion inflige des dégâts magiques supplémentaires, vous soigne et augmente définitivement vos PV.'),
(41, 4, 2, 'Après-coup', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Resolve/VeteranAftershock/VeteranAftershock.png', 'Après avoir immobilisé un champion ennemi, vous augmentez vos défenses, puis vous infligez des dégâts magiques autour de vous.'),
(42, 4, 2, 'Gardien', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Resolve/Guardian/Guardian.png', 'Vous protégez les alliés sur lesquels vous jetez des sorts et ceux qui sont très proches. Si un allié protégé ou vous-même devriez subir des dégâts (selon le niveau), vous recevez tous les deux un bouclier.'),
(43, 4, 3, 'Démolition', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Resolve/Demolish/Demolish.png', 'Vous chargez une puissante attaque contre une tourelle proche.'),
(44, 4, 3, 'Fontaine de vie', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Resolve/FontOfLife/FontOfLife.png', 'Restreindre les déplacements d\'un champion ennemi le marque. Vos alliés sont soignés quand ils attaquent les champions que vous avez marqués.'),
(45, 4, 3, 'Coup de bouclier', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Resolve/MirrorShell/MirrorShell.png', 'Quand vous recevez un bouclier, votre prochaine attaque de base contre un champion inflige des dégâts adaptatifs supplémentaires.'),
(46, 4, 3, 'Conditionnement', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Resolve/Conditioning/Conditioning.png', 'Après 12 min de jeu, vous gagnez +9 armure et +9 résistance magique et vous augmentez votre armure et votre résistance magique de 5%.'),
(47, 4, 3, 'Second soufle', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Resolve/SecondWind/SecondWind.png', 'Après avoir subi des dégâts d\'un champion ennemi, vous récupérerez une partie de vos PV manquants sur la durée.'),
(48, 4, 3, 'Plaque d\'os', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Resolve/BonePlating/BonePlating.png', 'Après avoir subi des dégâts d\'un champion ennemi, les 3 prochains sorts ou attaques de ce champion vous infligent 30-60 pts de dégâts en moins. <br>\r\nDurée : 1.5 sec. <br>\r\nDélai de récupération : 45 sec.'),
(49, 4, 3, 'Surcroissance', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Resolve/Overgrowth/Overgrowth.png', 'Vos PV max augmentent définitivement quand des sbires et des monstres meurent près de vous.'),
(50, 4, 3, 'Revitalisation', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Resolve/Revitalize/Revitalize.png', 'Vous gagnez +5% d\'efficacité des soins et boucliers.<br>\r\nLes soins et les boucliers que vous lancez ou recevez sont 10% plus puissants sur les cibles qui ont moins de 40% de leurs PV.'),
(51, 4, 3, 'Inébranlable', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Sorcery/Unflinching/Unflinching.png', 'Vous gagnez un bonus de ténacité qui augmente avec vos PV manquants.'),
(52, 5, 2, 'Optimisation glaciale', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Inspiration/GlacialAugment/GlacialAugment.png', 'Votre première attaque contre un champion ennemi le ralentit (délai de récupération par unité). Ralentir des champions avec des objets activables tire un rayon glacial qui crée une zone de ralentissement.'),
(53, 5, 2, 'Grimoire déchaîné', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Inspiration/UnsealedSpellbook/UnsealedSpellbook.png', 'Changez vos sorts d\'invocateur en dehors des combats. Les échanger contre des sorts d\'invocateur uniques augmente la fréquence à laquelle vous pouvez faire des échanges.'),
(54, 5, 2, 'Prototype : Omnipierre', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Inspiration/MasterKey/MasterKey.png', 'Octroie périodiquement une autre rune fondamentale aléatoire à usage unique.'),
(55, 5, 3, 'Canaliportation hextech', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Inspiration/HextechFlashtraption/HextechFlashtraption.png', 'Quand Saut éclair est en récupération, il est remplacé par Saut Hextech.<br>\r\nSaut Hextech : après une canalisation, vous vous téléportez à un autre endroit.'),
(56, 5, 3, 'Chaussures magiques', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Inspiration/MagicalFootwear/MagicalFootwear.png', 'Vous obtenez des bottes gratuites après 12 min de jeu, mais vous ne pouvez pas acheter de bottes avant cela. Chaque fois que vous participez à l\'élimination d\'un champion, vous recevez vos bottes 45 sec plus tôt.'),
(57, 5, 3, 'Timing parfait', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Inspiration/PerfectTiming/PerfectTiming.png', 'Vous recevez 1 Chronomètre de départ. Après 14 minutes de jeu, vous pouvez l\'utiliser pour vous mettre en stase (usage unique).<br>\r\nChaque fois que vous participez à une élimination, ce délai est réduit de 120 sec.'),
(58, 5, 3, 'Marché du futur', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Inspiration/FuturesMarket/FuturesMarket.png', 'Vous pouvez vous endetter pour acheter des objets.'),
(59, 5, 3, 'Désintégrateur de sbires', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Inspiration/MinionDematerializer/MinionDematerializer.png', 'Vous commencez la partie avec 3 Désintégrateurs de sbires. Tuer des sbires avec cet objet augmente définitivement vos dégâts contre ce type de sbire.'),
(60, 5, 3, 'Livraison de biscuits', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Inspiration/BiscuitDelivery/BiscuitDelivery.png', 'Vous gagnez un biscuit gratuit toutes les 2 min, jusqu\'à 6 min de jeu. Consommer ou vendre un biscuit augmente définitivement votre mana max et vous rend des PV et du mana.'),
(61, 5, 3, 'Savoir cosmique', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Inspiration/CosmicInsight/CosmicInsight.png', '+18 accélération de sorts d\'invocateur<br>\r\n+10 accélération d\'objet'),
(62, 5, 3, 'Vitesse d\'approche', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Resolve/ApproachVelocity/ApproachVelocity.png', 'Votre vitesse de déplacement augmente vers les champions ennemis proches dont les déplacements sont restreints, et elle augmente davantage vers les ennemis dont vous avez restreint les déplacements.'),
(63, 5, 3, 'Philtre de chronodistorsion', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/Styles/Inspiration/TimeWarpTonic/TimeWarpTonic.png', 'Les potions et les biscuits vous rendent immédiatement une partie des PV et du mana prévus. Votre vitesse de déplacement est augmentée tant que vous êtes sous leurs effets.'),
(64, NULL, 4, 'Force adaptative', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/StatMods/StatModsAdaptiveForceIcon.png', '+ 9 force adaptative'),
(65, NULL, 4, 'Vitesse d\'attaque', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/StatMods/StatModsAttackSpeedIcon.png', '+10 vitesse d\'attaque'),
(66, NULL, 4, 'Accélération de compétence', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/StatMods/StatModsCDRScalingIcon.png', '+8 accélération de compétence'),
(67, NULL, 4, 'Armure', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/StatMods/StatModsArmorIcon.png', '+6 armure'),
(68, NULL, 4, 'Résistance magique', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/StatMods/StatModsMagicResIcon.png', '+8 résistance magique'),
(69, NULL, 4, 'PV', 'https://ddragon.leagueoflegends.com/cdn/img/perk-images/StatMods/StatModsHealthScalingIcon.png', '+15-90 PV (selon le niveau)');

-- --------------------------------------------------------

--
-- Structure de la table `set_runes`
--

DROP TABLE IF EXISTS `set_runes`;
CREATE TABLE IF NOT EXISTS `set_runes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `arbre_principal` int(11) NOT NULL,
  `keystone` int(11) NOT NULL,
  `rune1` int(11) NOT NULL,
  `rune2` int(11) NOT NULL,
  `rune3` int(11) NOT NULL,
  `arbre_secondaire` int(11) NOT NULL,
  `rune4` int(11) NOT NULL,
  `rune5` int(11) NOT NULL,
  `annexe1` int(11) NOT NULL,
  `annexe2` int(11) NOT NULL,
  `annexe3` int(11) NOT NULL,
  `commentaire` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `arbre_principal` (`arbre_principal`),
  KEY `arbre_secondaire` (`arbre_secondaire`),
  KEY `keystone` (`keystone`),
  KEY `rune1` (`rune1`),
  KEY `rune2` (`rune2`),
  KEY `rune3` (`rune3`),
  KEY `rune4` (`rune4`),
  KEY `rune5` (`rune5`),
  KEY `annexe1` (`annexe1`),
  KEY `annexe2` (`annexe2`),
  KEY `annexe3` (`annexe3`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `set_runes`
--

INSERT INTO `set_runes` (`id`, `nom`, `arbre_principal`, `keystone`, `rune1`, `rune2`, `rune3`, `arbre_secondaire`, `rune4`, `rune5`, `annexe1`, `annexe2`, `annexe3`, `commentaire`) VALUES
(1, 'Quinn/Akali', 1, 3, 6, 10, 11, 3, 31, 39, 65, 64, 68, 'Remplacer Sangsue par Alacrité si tu es confiant.'),
(2, 'Akali/Aatrox', 1, 4, 7, 9, 13, 2, 19, 26, 64, 64, 67, NULL),
(3, 'Akali/Camille', 1, 4, 7, 8, 13, 2, 19, 26, 64, 64, 67, NULL),
(4, 'Akali/Cassiopeia', 1, 4, 7, 9, 13, 2, 19, 26, 64, 64, 68, NULL),
(5, 'Akali/Cho\'gath', 1, 4, 7, 9, 13, 2, 19, 26, 64, 64, 67, 'La rune armure ou résistance magique dépend du jungler.'),
(6, 'Akali/Darius', 1, 4, 7, 9, 13, 4, 48, 49, 64, 64, 67, NULL),
(7, 'Akali/Fiora', 1, 4, 7, 8, 13, 2, 19, 26, 64, 64, 67, NULL),
(8, 'Akali/Gangplank', 1, 3, 7, 9, 13, 4, 47, 49, 65, 64, 67, NULL),
(9, 'Akali/Garen', 1, 4, 7, 9, 13, 2, 19, 26, 64, 64, 67, NULL),
(10, 'Akali/Gnar', 1, 4, 7, 9, 13, 2, 19, 26, 64, 64, 67, NULL),
(11, 'Akali/Gragas', 1, 4, 7, 9, 13, 2, 19, 26, 64, 64, 68, NULL),
(12, 'Akali/Hecarim', 1, 3, 7, 9, 13, 2, 19, 26, 64, 64, 67, NULL),
(13, 'Akali/Illaoi', 1, 4, 7, 9, 13, 2, 19, 26, 64, 64, 67, NULL),
(14, 'Akali/Irelia', 1, 4, 7, 9, 13, 2, 19, 26, 64, 64, 67, NULL),
(15, 'Akali/Jax', 1, 4, 7, 9, 13, 2, 19, 26, 64, 64, 67, NULL),
(16, 'Akali/Jayce', 1, 3, 7, 9, 13, 2, 19, 26, 64, 64, 67, NULL),
(17, 'Akali/Kayle', 1, 4, 7, 9, 13, 2, 19, 26, 64, 64, 68, NULL),
(18, 'Akali/Kennen', 1, 3, 7, 9, 13, 4, 47, 51, 64, 64, 68, NULL),
(19, 'Akali/Kled', 1, 4, 7, 9, 12, 4, 48, 49, 64, 64, 67, NULL),
(20, 'Akali/Lucian', 1, 3, 7, 9, 13, 2, 19, 26, 64, 64, 67, NULL),
(21, 'Akali/Malphite', 1, 4, 7, 9, 13, 4, 47, 49, 64, 64, 68, NULL),
(22, 'Akali/Maokai', 1, 4, 7, 9, 12, 2, 19, 26, 64, 64, 68, 'Rune Armure ou Résistance magique en fonction du jungler.'),
(23, 'Akali/Mordekaiser', 1, 4, 7, 9, 13, 2, 19, 26, 64, 64, 68, NULL),
(24, 'Akali/Mundo', 1, 4, 7, 9, 13, 2, 19, 26, 64, 64, 67, NULL),
(25, 'Akali/Nasus', 1, 4, 7, 9, 13, 2, 19, 26, 64, 64, 67, NULL),
(26, 'Akali/Olaf', 1, 4, 7, 9, 13, 2, 19, 26, 64, 64, 67, NULL),
(27, 'Akali/Ornn', 1, 4, 7, 9, 13, 2, 19, 26, 64, 64, 67, NULL),
(28, 'Akali/Pantheon', 1, 3, 7, 9, 13, 4, 48, 49, 64, 64, 67, NULL),
(29, 'Akali/Poppy', 1, 4, 7, 9, 13, 2, 19, 26, 64, 64, 67, NULL),
(30, 'Akali/Quinn', 1, 3, 7, 9, 13, 4, 47, 49, 64, 64, 67, NULL),
(31, 'Akali/Renekton', 1, 4, 7, 9, 13, 4, 48, 51, 64, 64, 67, NULL),
(32, 'Akali/Rengar', 1, 4, 7, 9, 13, 4, 48, 49, 64, 64, 67, NULL),
(33, 'Akali/Riven', 1, 4, 7, 9, 13, 2, 19, 26, 64, 64, 67, NULL),
(34, 'Akali/Rumble', 1, 3, 7, 9, 13, 4, 47, 49, 64, 64, 68, NULL),
(35, 'Akali/Ryze', 1, 3, 7, 9, 13, 2, 19, 26, 64, 64, 68, NULL),
(36, 'Akali/Sett', 1, 3, 7, 9, 13, 4, 48, 49, 64, 64, 67, NULL),
(37, 'Akali/Shen', 1, 4, 7, 9, 13, 2, 19, 26, 64, 64, 67, NULL),
(38, 'Akali/Singed', 1, 4, 7, 9, 13, 2, 19, 26, 64, 64, 68, NULL),
(39, 'Akali/Sion', 1, 4, 7, 9, 12, 2, 19, 26, 64, 64, 67, NULL),
(40, 'Akali/Sylas', 1, 4, 7, 9, 13, 2, 19, 26, 64, 64, 68, NULL),
(41, 'Akali/TahmKench', 1, 4, 7, 9, 13, 4, 48, 49, 64, 64, 67, NULL),
(42, 'Akali/Teemo', 2, 14, 19, 23, 26, 4, 47, 49, 65, 64, 68, NULL),
(43, 'Akali/Tryndamere', 1, 3, 7, 9, 13, 2, 19, 26, 64, 64, 67, NULL),
(44, 'Akali/Urgot', 1, 4, 7, 9, 13, 2, 19, 26, 64, 64, 67, NULL),
(45, 'Akali/Vayne', 1, 3, 7, 9, 13, 2, 19, 26, 64, 64, 67, NULL),
(46, 'Akali/Vladimir', 2, 14, 19, 23, 26, 1, 7, 13, 65, 64, 68, NULL),
(47, 'Akali/Volibear', 1, 4, 7, 9, 13, 2, 19, 26, 64, 64, 67, 'Rune Armure ou Résistance magique suivant le jungler.'),
(48, 'Akali/Warwick', 1, 4, 7, 9, 13, 4, 48, 51, 64, 64, 67, NULL),
(49, 'Akali/Wukong', 1, 4, 7, 9, 13, 4, 48, 49, 64, 64, 67, NULL),
(50, 'Akali/Yasuo', 1, 4, 7, 9, 13, 4, 47, 49, 65, 64, 67, NULL),
(51, 'Akali/Yone', 1, 4, 7, 9, 13, 4, 48, 49, 65, 64, 67, NULL),
(52, 'Akali/Yorick', 1, 4, 7, 9, 13, 2, 19, 26, 64, 64, 67, NULL),
(53, 'Camille/Aatrox', 1, 4, 6, 10, 13, 4, 45, 48, 65, 64, 67, NULL),
(54, 'Camille/Akali', 1, 4, 6, 10, 13, 4, 45, 47, 65, 64, 68, NULL),
(55, 'Camille/Cassiopeia', 1, 4, 6, 10, 13, 4, 45, 47, 65, 64, 68, NULL),
(56, 'Camille/Cho\'gath', 1, 4, 6, 10, 13, 5, 56, 62, 65, 64, 68, NULL),
(57, 'Camille/Darius', 1, 4, 6, 10, 13, 4, 45, 47, 65, 64, 67, NULL),
(58, 'Camille/Fiora', 1, 4, 6, 10, 13, 4, 45, 48, 65, 64, 67, NULL),
(59, 'Camille/Gangplank', 1, 4, 6, 10, 13, 4, 45, 47, 65, 64, 67, NULL),
(60, 'Camille/Garen', 1, 4, 6, 10, 13, 5, 56, 62, 65, 64, 67, NULL),
(61, 'Camille/Gnar', 1, 40, 45, 48, 49, 5, 56, 62, 65, 64, 67, NULL),
(62, 'Camille/Gragas', 1, 4, 6, 10, 13, 4, 45, 48, 65, 64, 68, NULL),
(63, 'Camille/Hecarim', 1, 4, 6, 10, 13, 5, 56, 62, 65, 64, 67, NULL),
(64, 'Camille/Illaoi', 1, 4, 6, 10, 13, 5, 56, 62, 65, 64, 67, NULL),
(65, 'Camille/Irelia', 1, 4, 6, 10, 13, 4, 45, 48, 65, 64, 67, NULL),
(66, 'Camille/Jax', 4, 40, 45, 48, 49, 5, 56, 62, 65, 64, 67, NULL),
(67, 'Camille/Jayce', 1, 4, 6, 10, 13, 4, 45, 47, 65, 64, 67, NULL),
(68, 'Camille/Kayle', 1, 4, 6, 10, 13, 5, 56, 62, 65, 64, 68, NULL),
(69, 'Camille/Kennen', 1, 4, 6, 10, 13, 4, 45, 47, 65, 64, 68, NULL),
(70, 'Camille/Kled', 1, 4, 6, 10, 13, 4, 45, 48, 65, 64, 67, NULL),
(71, 'Camille/Lucian', 1, 4, 6, 10, 13, 4, 45, 47, 65, 64, 67, NULL),
(72, 'Camille/Malphite', 1, 4, 6, 10, 13, 5, 56, 62, 65, 64, 68, NULL),
(73, 'Camille/Maokai', 1, 4, 6, 10, 13, 5, 56, 62, 65, 64, 68, NULL),
(74, 'Camille/Mordekaiser', 5, 40, 45, 48, 49, 5, 56, 62, 65, 64, 68, NULL),
(75, 'Camille/Mundo', 1, 4, 6, 10, 13, 5, 56, 62, 65, 64, 67, NULL),
(76, 'Camille/Nasus', 1, 4, 6, 10, 13, 5, 56, 62, 65, 64, 67, NULL),
(77, 'Camille/Olaf', 1, 4, 6, 10, 13, 5, 56, 62, 65, 64, 67, NULL),
(78, 'Camille/Ornn', 1, 4, 6, 10, 13, 4, 45, 48, 65, 64, 67, NULL),
(79, 'Camille/Pantheon', 1, 4, 6, 10, 13, 4, 45, 48, 65, 64, 67, NULL),
(80, 'Camille/Poppy', 1, 4, 6, 10, 13, 4, 45, 48, 65, 64, 67, NULL),
(81, 'Camille/Quinn', 1, 4, 6, 10, 13, 4, 45, 47, 65, 64, 67, NULL),
(82, 'Camille/Renekton', 4, 40, 45, 48, 49, 5, 56, 62, 65, 64, 67, NULL),
(83, 'Camille/Rengar', 1, 4, 6, 10, 13, 4, 45, 48, 65, 64, 67, NULL),
(84, 'Camille/Riven', 4, 40, 45, 48, 49, 5, 56, 62, 65, 64, 67, NULL),
(85, 'Camille/Rumble', 1, 4, 6, 10, 13, 5, 56, 62, 65, 64, 68, NULL),
(86, 'Camille/Ryze', 1, 4, 6, 10, 13, 4, 45, 47, 65, 64, 68, NULL),
(87, 'Camille/Sett', 1, 4, 6, 10, 13, 4, 45, 48, 65, 64, 67, NULL),
(88, 'Camille/Shen', 1, 4, 6, 10, 13, 4, 45, 48, 65, 64, 67, NULL),
(89, 'Camille/Singed', 1, 4, 6, 10, 13, 5, 56, 62, 65, 64, 68, NULL),
(90, 'Camille/Sion', 1, 4, 6, 10, 13, 4, 45, 48, 65, 64, 67, NULL),
(91, 'Camille/Sylas', 1, 4, 6, 10, 13, 4, 45, 48, 65, 64, 68, NULL),
(92, 'Camille/TahmKench', 4, 40, 45, 48, 49, 5, 56, 62, 65, 64, 67, NULL),
(93, 'Camille/Teemo', 1, 4, 6, 10, 13, 4, 45, 47, 65, 64, 68, NULL),
(94, 'Camille/Tryndamere', 1, 4, 6, 10, 13, 4, 45, 48, 65, 64, 67, NULL),
(95, 'Camille/Urgot', 1, 4, 6, 10, 13, 5, 56, 62, 65, 64, 67, NULL),
(96, 'Camille/Vayne', 1, 4, 6, 10, 13, 4, 45, 47, 65, 64, 67, NULL),
(97, 'Camille/Vladimir', 1, 4, 6, 10, 13, 4, 45, 47, 65, 64, 68, NULL),
(98, 'Camille/Volibear', 1, 4, 6, 10, 13, 4, 45, 48, 65, 64, 67, NULL),
(99, 'Camille/Warwick', 1, 4, 6, 10, 13, 5, 56, 62, 65, 64, 67, NULL),
(100, 'Camille/Wukong', 1, 4, 6, 10, 13, 4, 45, 48, 65, 64, 67, NULL),
(101, 'Camille/Yasuo', 1, 4, 6, 10, 13, 4, 45, 48, 65, 64, 67, NULL),
(102, 'Camille/Yone', 1, 4, 6, 10, 13, 4, 45, 48, 65, 64, 67, NULL),
(103, 'Camille/Yorick', 1, 4, 6, 10, 13, 4, 45, 48, 65, 64, 67, NULL),
(104, 'Fiora/Aatrox', 1, 4, 6, 10, 13, 4, 48, 51, 65, 64, 67, NULL),
(105, 'Fiora/Akali', 1, 4, 6, 10, 13, 4, 47, 51, 65, 64, 68, NULL),
(106, 'Fiora/Camille', 1, 4, 6, 10, 13, 4, 48, 51, 65, 64, 67, NULL),
(107, 'Fiora/Cassiopeia', 1, 3, 6, 10, 13, 4, 47, 51, 65, 64, 68, NULL),
(108, 'Fiora/Cho\'gath', 1, 4, 6, 10, 13, 4, 47, 51, 65, 64, 68, NULL),
(109, 'Fiora/Darius', 1, 4, 6, 10, 13, 4, 48, 51, 65, 64, 67, 'Échanger Volonté par Sorcellerie avec Manteau nuageux et Tempête menaçante si Flash/Ignite.'),
(110, 'Fiora/Gangplank', 4, 40, 43, 47, 51, 1, 6, 10, 65, 64, 67, NULL),
(111, 'Fiora/Garen', 1, 4, 6, 10, 13, 4, 48, 51, 65, 64, 67, 'Remplacer Volonté par Sorcellerie avec Manteau nuageux et Célérité si Flash/Ignite.'),
(112, 'Fiora/Gnar', 1, 3, 6, 10, 13, 4, 47, 51, 65, 64, 67, NULL),
(113, 'Fiora/Gragas', 1, 4, 6, 10, 13, 4, 48, 51, 65, 64, 68, NULL),
(114, 'Fiora/Hecarim', 1, 4, 6, 10, 13, 4, 48, 51, 65, 64, 67, NULL),
(115, 'Fiora/Illaoi', 1, 4, 6, 10, 13, 4, 48, 49, 65, 64, 67, NULL),
(116, 'Fiora/Irelia', 1, 4, 6, 10, 13, 4, 48, 51, 65, 64, 67, NULL),
(117, 'Fiora/Jax', 4, 40, 43, 48, 51, 1, 6, 10, 65, 64, 67, NULL),
(118, 'Fiora/Jayce', 1, 3, 6, 10, 13, 4, 47, 51, 65, 64, 67, NULL),
(119, 'Fiora/Kayle', 1, 4, 6, 10, 13, 4, 47, 51, 65, 64, 68, NULL),
(120, 'Fiora/Kennen', 1, 4, 6, 10, 13, 4, 47, 51, 65, 64, 68, NULL),
(121, 'Fiora/Kled', 1, 4, 6, 10, 13, 4, 48, 49, 65, 64, 67, NULL),
(122, 'Fiora/Lucian', 1, 3, 6, 10, 13, 4, 47, 49, 65, 64, 67, NULL),
(123, 'Fiora/Malphite', 1, 4, 6, 10, 13, 4, 47, 51, 65, 64, 68, NULL),
(124, 'Fiora/Maokai', 1, 4, 6, 10, 13, 4, 47, 51, 65, 64, 68, NULL),
(125, 'Fiora/Mordekaiser', 1, 4, 6, 10, 13, 4, 48, 49, 65, 64, 68, NULL),
(126, 'Fiora/Mundo', 1, 4, 6, 10, 13, 4, 47, 51, 65, 64, 67, NULL),
(127, 'Fiora/Nasus', 1, 4, 6, 10, 13, 4, 47, 51, 65, 64, 67, NULL),
(128, 'Fiora/Olaf', 1, 4, 6, 10, 13, 4, 47, 51, 65, 64, 67, NULL),
(129, 'Fiora/Ornn', 1, 4, 6, 10, 13, 4, 47, 51, 65, 64, 67, NULL),
(130, 'Fiora/Pantheon', 1, 4, 6, 10, 13, 4, 47, 51, 65, 64, 67, NULL),
(131, 'Fiora/Poppy', 1, 4, 6, 10, 13, 4, 48, 51, 65, 64, 67, NULL),
(132, 'Fiora/Quinn', 1, 1, 6, 10, 13, 4, 47, 51, 65, 64, 67, 'Remplacer Volonté par Sorcellerie avec Manteau nuageux et Célérité si Flash/Ignite.'),
(133, 'Fiora/Renekton', 4, 40, 43, 47, 51, 1, 6, 10, 65, 64, 67, NULL),
(134, 'Fiora/Rengar', 1, 4, 6, 10, 13, 4, 48, 51, 65, 64, 67, NULL),
(135, 'Fiora/Riven', 1, 4, 6, 10, 13, 4, 48, 51, 65, 64, 67, NULL),
(136, 'Fiora/Rumble', 1, 4, 6, 10, 13, 4, 47, 51, 65, 64, 68, NULL),
(137, 'Fiora/Ryze', 1, 4, 6, 10, 13, 4, 47, 51, 65, 64, 68, NULL),
(138, 'Fiora/Sett', 1, 4, 6, 10, 13, 4, 48, 51, 65, 64, 67, NULL),
(139, 'Fiora/Shen', 1, 4, 6, 10, 13, 4, 47, 51, 65, 64, 67, NULL),
(140, 'Fiora/Singed', 1, 4, 6, 10, 13, 4, 47, 49, 65, 64, 68, NULL),
(141, 'Fiora/Sion', 1, 4, 6, 10, 13, 4, 48, 51, 65, 64, 67, NULL),
(142, 'Fiora/Sylas', 1, 4, 6, 10, 13, 4, 48, 51, 65, 64, 68, NULL),
(143, 'Fiora/TahmKench', 1, 4, 6, 10, 13, 4, 47, 51, 65, 64, 67, NULL),
(144, 'Fiora/Teemo', 1, 1, 6, 10, 13, 4, 47, 51, 65, 64, 68, 'Remplacer Volonté par Sorcellerie avec Manteau nuageux et Tempête menaçante si Flash/Ignite.'),
(145, 'Fiora/Tryndamere', 1, 4, 6, 10, 13, 4, 48, 49, 65, 64, 67, NULL),
(146, 'Fiora/Urgot', 1, 4, 6, 10, 13, 4, 47, 51, 65, 64, 67, NULL),
(147, 'Fiora/Vayne', 1, 1, 6, 10, 13, 4, 47, 51, 65, 64, 67, NULL),
(148, 'Fiora/Vladimir', 1, 4, 6, 10, 13, 4, 47, 49, 65, 64, 68, 'Remplacer Volonté par Sorcellerie avec Manteau nuageux et Célérité si Flash/Ignite.'),
(149, 'Fiora/Volibear', 1, 4, 6, 10, 13, 4, 47, 51, 65, 64, 67, NULL),
(150, 'Fiora/Warwick', 1, 4, 6, 10, 13, 4, 48, 51, 65, 64, 67, NULL),
(151, 'Fiora/Wukong', 1, 4, 6, 10, 13, 4, 48, 51, 65, 64, 67, NULL),
(152, 'Fiora/Yasuo', 1, 4, 6, 10, 13, 4, 48, 51, 65, 64, 67, NULL),
(153, 'Fiora/Yone', 1, 4, 6, 10, 13, 4, 48, 51, 65, 64, 67, NULL),
(154, 'Fiora/Yorick', 1, 4, 6, 10, 13, 4, 47, 51, 65, 64, 67, NULL),
(155, 'Quinn/Aatrox', 1, 1, 6, 10, 12, 5, 60, 61, 65, 64, 67, NULL),
(156, 'Quinn/Camille', 1, 1, 6, 10, 12, 5, 60, 61, 65, 64, 67, NULL),
(157, 'Quinn/Cassiopeia', 1, 1, 6, 10, 12, 5, 60, 61, 65, 64, 68, NULL),
(158, 'Quinn/Cho\'gath', 1, 1, 6, 10, 12, 3, 36, 39, 65, 64, 68, NULL),
(159, 'Quinn/Darius', 5, 52, 56, 60, 61, 3, 35, 33, 65, 64, 67, NULL),
(160, 'Quinn/Mundo', 3, 30, 33, 35, 39, 1, 8, 12, 65, 64, 67, NULL),
(161, 'Quinn/Fiora', 1, 1, 6, 10, 12, 3, 35, 33, 65, 64, 67, NULL),
(162, 'Quinn/Gangplank', 1, 1, 6, 10, 12, 5, 60, 61, 65, 64, 67, NULL),
(163, 'Quinn/Garen', 1, 1, 6, 10, 12, 3, 36, 39, 65, 64, 67, NULL),
(164, 'Quinn/Gnar', 1, 3, 6, 10, 12, 3, 35, 39, 65, 64, 67, NULL),
(165, 'Quinn/Gragas', 1, 1, 6, 10, 11, 3, 31, 39, 65, 64, 68, NULL),
(166, 'Quinn/Gwen', 1, 1, 6, 10, 12, 5, 60, 61, 65, 64, 68, NULL),
(167, 'Quinn/Heimerdinger', 1, 3, 6, 10, 11, 3, 31, 39, 65, 64, 68, NULL),
(168, 'Quinn/Illaoi', 1, 3, 6, 10, 11, 3, 35, 39, 65, 64, 67, NULL),
(169, 'Quinn/Irelia', 1, 1, 6, 10, 11, 5, 60, 61, 65, 64, 67, NULL),
(170, 'Quinn/Jax', 1, 1, 6, 10, 11, 3, 35, 39, 65, 64, 67, NULL),
(171, 'Quinn/Jayce', 1, 3, 6, 10, 11, 3, 36, 39, 65, 64, 67, NULL),
(172, 'Quinn/Kayle', 1, 1, 6, 10, 11, 3, 31, 39, 65, 64, 68, NULL),
(173, 'Quinn/Kennen', 1, 1, 6, 10, 11, 3, 31, 39, 65, 64, 68, NULL),
(174, 'Quinn/Kled', 1, 3, 6, 10, 12, 3, 36, 39, 65, 64, 67, NULL),
(175, 'Quinn/Lucian', 1, 1, 6, 10, 11, 5, 60, 61, 65, 64, 67, NULL),
(176, 'Quinn/Malphite', 1, 1, 6, 10, 12, 5, 60, 61, 65, 64, 68, NULL),
(177, 'Quinn/Maokai', 1, 1, 6, 10, 12, 5, 60, 61, 62, 64, 68, NULL),
(178, 'Quinn/Mordekaiser', 1, 1, 6, 10, 12, 5, 60, 61, 65, 64, 68, NULL),
(179, 'Quinn/Nasus', 3, 30, 33, 36, 39, 1, 10, 12, 65, 64, 68, NULL),
(180, 'Quinn/Olaf', 3, 30, 33, 36, 39, 1, 10, 12, 65, 64, 67, NULL),
(181, 'Quinn/Ornn', 1, 1, 6, 10, 12, 3, 36, 39, 65, 64, 67, NULL),
(182, 'Quinn/Pantheon', 1, 1, 6, 10, 11, 3, 36, 39, 65, 64, 67, NULL),
(183, 'Quinn/Poppy', 1, 1, 6, 10, 12, 3, 36, 39, 65, 64, 67, NULL),
(184, 'Quinn/Renekton', 1, 1, 6, 10, 12, 4, 48, 49, 65, 64, 67, NULL),
(185, 'Quinn/Rengar', 1, 1, 6, 10, 11, 4, 48, 49, 65, 64, 67, NULL),
(186, 'Quinn/Riven', 1, 1, 6, 10, 11, 3, 35, 33, 65, 64, 67, NULL),
(187, 'Quinn/Rumble', 1, 1, 6, 10, 11, 3, 30, 39, 65, 64, 68, NULL),
(188, 'Quinn/Ryze', 1, 1, 6, 10, 11, 3, 31, 39, 65, 64, 68, NULL),
(189, 'Quinn/Sett', 1, 1, 6, 10, 12, 3, 35, 39, 65, 64, 67, NULL),
(190, 'Quinn/Shen', 1, 1, 6, 10, 12, 3, 36, 39, 65, 64, 67, NULL),
(191, 'Quinn/Singed', 3, 30, 33, 36, 39, 1, 10, 12, 65, 64, 68, NULL),
(192, 'Quinn/Sion', 1, 1, 6, 10, 12, 3, 36, 39, 65, 64, 67, NULL),
(193, 'Quinn/Sylas', 1, 1, 6, 10, 11, 3, 31, 39, 65, 64, 68, NULL),
(194, 'Quinn/TahmKench', 1, 1, 6, 10, 12, 5, 60, 61, 65, 64, 67, NULL),
(195, 'Quinn/Teemo', 1, 1, 6, 10, 12, 5, 60, 61, 65, 64, 68, NULL),
(196, 'Quinn/Tryndamere', 3, 30, 33, 36, 39, 1, 8, 11, 65, 64, 67, NULL),
(197, 'Quinn/Urgot', 1, 1, 6, 10, 12, 3, 36, 39, 65, 64, 67, NULL),
(198, 'Quinn/Vayne', 1, 1, 6, 10, 11, 5, 60, 61, 65, 64, 67, NULL),
(199, 'Quinn/Viego', 1, 1, 6, 10, 11, 3, 35, 39, 65, 64, 67, NULL),
(200, 'Quinn/Vladimir', 1, 1, 6, 10, 11, 3, 31, 39, 65, 64, 68, NULL),
(201, 'Quinn/Volibear', 1, 1, 6, 10, 12, 3, 36, 39, 65, 64, 68, NULL),
(202, 'Quinn/Warwick', 1, 1, 6, 10, 12, 3, 36, 39, 65, 64, 67, NULL),
(203, 'Quinn/Wukong', 1, 1, 6, 10, 12, 3, 36, 39, 65, 64, 67, NULL),
(204, 'Quinn/Yasuo', 1, 1, 6, 10, 11, 3, 35, 39, 65, 64, 67, NULL),
(205, 'Quinn/Yone', 1, 1, 6, 10, 11, 3, 35, 39, 65, 64, 67, NULL),
(206, 'Quinn/Yorick', 1, 1, 6, 10, 11, 3, 35, 39, 65, 64, 67, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `type_rune`
--

DROP TABLE IF EXISTS `type_rune`;
CREATE TABLE IF NOT EXISTS `type_rune` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `type_rune`
--

INSERT INTO `type_rune` (`id`, `nom`) VALUES
(2, 'Keystone'),
(3, 'Secondaire'),
(4, 'Annexe');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `builds`
--
ALTER TABLE `builds`
  ADD CONSTRAINT `builds_ibfk_1` FOREIGN KEY (`item1`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `builds_ibfk_10` FOREIGN KEY (`situationnel4`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `builds_ibfk_11` FOREIGN KEY (`situationnel5`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `builds_ibfk_2` FOREIGN KEY (`item2`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `builds_ibfk_3` FOREIGN KEY (`item3`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `builds_ibfk_4` FOREIGN KEY (`item4`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `builds_ibfk_5` FOREIGN KEY (`item5`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `builds_ibfk_6` FOREIGN KEY (`item6`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `builds_ibfk_7` FOREIGN KEY (`situationnel1`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `builds_ibfk_8` FOREIGN KEY (`situationnel2`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `builds_ibfk_9` FOREIGN KEY (`situationnel3`) REFERENCES `items` (`id`);

--
-- Contraintes pour la table `other_stuff`
--
ALTER TABLE `other_stuff`
  ADD CONSTRAINT `other_stuff_ibfk_3` FOREIGN KEY (`difficulty`) REFERENCES `difficulty_index` (`id`),
  ADD CONSTRAINT `other_stuff_ibfk_4` FOREIGN KEY (`id_my_character`) REFERENCES `personnages` (`id`),
  ADD CONSTRAINT `other_stuff_ibfk_5` FOREIGN KEY (`id_character`) REFERENCES `personnages` (`id`),
  ADD CONSTRAINT `other_stuff_ibfk_6` FOREIGN KEY (`id_build`) REFERENCES `builds` (`id`),
  ADD CONSTRAINT `other_stuff_ibfk_7` FOREIGN KEY (`id_setrunes`) REFERENCES `set_runes` (`id`);

--
-- Contraintes pour la table `runes`
--
ALTER TABLE `runes`
  ADD CONSTRAINT `runes_ibfk_1` FOREIGN KEY (`id_categorie`) REFERENCES `categorie_rune` (`id`),
  ADD CONSTRAINT `runes_ibfk_2` FOREIGN KEY (`id_type`) REFERENCES `type_rune` (`id`);

--
-- Contraintes pour la table `set_runes`
--
ALTER TABLE `set_runes`
  ADD CONSTRAINT `set_runes_ibfk_1` FOREIGN KEY (`arbre_principal`) REFERENCES `categorie_rune` (`id`),
  ADD CONSTRAINT `set_runes_ibfk_10` FOREIGN KEY (`annexe2`) REFERENCES `runes` (`id`),
  ADD CONSTRAINT `set_runes_ibfk_11` FOREIGN KEY (`annexe3`) REFERENCES `runes` (`id`),
  ADD CONSTRAINT `set_runes_ibfk_2` FOREIGN KEY (`arbre_secondaire`) REFERENCES `categorie_rune` (`id`),
  ADD CONSTRAINT `set_runes_ibfk_3` FOREIGN KEY (`keystone`) REFERENCES `runes` (`id`),
  ADD CONSTRAINT `set_runes_ibfk_4` FOREIGN KEY (`rune1`) REFERENCES `runes` (`id`),
  ADD CONSTRAINT `set_runes_ibfk_5` FOREIGN KEY (`rune2`) REFERENCES `runes` (`id`),
  ADD CONSTRAINT `set_runes_ibfk_6` FOREIGN KEY (`rune3`) REFERENCES `runes` (`id`),
  ADD CONSTRAINT `set_runes_ibfk_7` FOREIGN KEY (`rune4`) REFERENCES `runes` (`id`),
  ADD CONSTRAINT `set_runes_ibfk_8` FOREIGN KEY (`rune5`) REFERENCES `runes` (`id`),
  ADD CONSTRAINT `set_runes_ibfk_9` FOREIGN KEY (`annexe1`) REFERENCES `runes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
