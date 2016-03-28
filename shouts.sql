-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2016 at 06:34 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shoutit`
--

-- --------------------------------------------------------

--
-- Table structure for table `shouts`
--

CREATE TABLE IF NOT EXISTS `shouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(40) NOT NULL,
  `message` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `shouts`
--

INSERT INTO `shouts` (`id`, `user`, `message`, `date`) VALUES
(1, 'Ketan', 'Hi', '2015-10-19 18:28:18'),
(3, 'Ketan', 'How are you?', '0000-00-00 00:00:00'),
(7, 'Ketan', 'Mi pan fine', '0000-00-00 00:00:00'),
(9, 'Ketan ', 'Programming ani time pass', '0000-00-00 00:00:00'),
(11, 'Ketan', 'Nahi manje movie baghane..tv baghane..ani books reading vdr', '0000-00-00 00:00:00'),
(13, 'Ketan', 'Tuze classes kase shuru ahet?', '0000-00-00 00:00:00'),
(15, 'Ketan', 'Zop Yetey..Good Night', '0000-00-00 00:00:00'),
(17, 'ji', 'k', '0000-00-00 00:00:00'),
(18, 'Rahul', 'Hi Guys ...', '0000-00-00 00:00:00'),
(19, 'Apps', 'Kay re bho', '0000-00-00 00:00:00'),
(20, 'K2', 'RAPS', '0000-00-00 00:00:00'),
(21, 'Apps', 'Moshi Mposhi', '0000-00-00 00:00:00'),
(22, 'Rahul', 'I Love Var.....', '0000-00-00 00:00:00'),
(23, 'K2', 'kay bolato???', '0000-00-00 00:00:00'),
(24, 'Mahesh', 'Aaj 50 $ kamavile', '0000-00-00 00:00:00'),
(25, 'k2', 'Are bappooo', '0000-00-00 00:00:00'),
(26, 'Mahesh', 'I am reach', '0000-00-00 00:00:00'),
(27, 'Kuch Bhi', 'Save Ho gaya', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
