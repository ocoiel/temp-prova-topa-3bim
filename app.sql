-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 19-Nov-2019 às 20:52
-- Versão do servidor: 5.7.26
-- versão do PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app_prova`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `app`
--

DROP TABLE IF EXISTS `app`;
CREATE TABLE IF NOT EXISTS `app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  `plan` enum('Free','Premium','Ultimate') NOT NULL,
  `price` varchar(45) NOT NULL,
  `feature` varchar(45) NOT NULL,
  `price_free` float DEFAULT NULL,
  `price_ultimate` float DEFAULT NULL,
  `price_premium` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `app`
--

INSERT INTO `app` (`id`, `name`, `description`, `plan`, `price`, `feature`, `price_free`, `price_ultimate`, `price_premium`) VALUES
(1, 'App 1 ', 'desc app 1', 'Premium', '60', 'ft app 1', NULL, NULL, NULL),
(2, 'App 2', 'desc app 2', 'Ultimate', '100', 'ft app 2', NULL, NULL, NULL),
(3, 'App 3', 'desc app 3', 'Premium', '60', 'ft app 3', NULL, NULL, NULL),
(4, 'App 4', 'desc app 4', 'Premium', '60', 'ft app 4', NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
