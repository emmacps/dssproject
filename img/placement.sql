-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 23, 2019 at 10:18 PM
-- Server version: 5.7.23
-- PHP Version: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `placement`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat`) VALUES
(1, 'Category A'),
(2, 'Category B'),
(3, 'Category C'),
(4, 'Category D'),
(5, 'Category E');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

DROP TABLE IF EXISTS `schools`;
CREATE TABLE IF NOT EXISTS `schools` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `gart` varchar(255) NOT NULL,
  `gsci` varchar(255) NOT NULL,
  `agric` varchar(255) NOT NULL,
  `hecons` varchar(255) NOT NULL,
  `vart` varchar(255) NOT NULL,
  `bus` varchar(255) NOT NULL,
  `tech` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `cat` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `name`, `region`, `district`, `location`, `gender`, `gart`, `gsci`, `agric`, `hecons`, `vart`, `bus`, `tech`, `status`, `cat`) VALUES
(1, 'Accra Academy ', 'Greater Accra Region', 'Accra Metropolitan ', 'Bubuashie', 'Boys,Girls and Boarding', 'General Arts<br>', 'General Science<br>', 'General Agriculture<br>', '<br>', 'Visual Art<br>', 'Business<br>', '<br>', '', ''),
(2, 'Accra Girls Senior High School', 'Greater Accra Region', 'Accra Metropolitan', 'Maamobi', 'Girls, Day and Boarding', 'General Arts<br>', 'General Science<br>', '<br>', 'Home Economics<br>', 'Visual Art<br>', 'Business<br>', '<br>', '', ''),
(3, 'Accra High Senior High.', 'Greater Accra Region', 'Accra Metropolitan ', 'Accra North Ridge ', 'Mixed Day', 'General Arts<br>', 'General Science<br>', '<br>', 'Home Economics<br>', 'Visual Art<br>', 'Business<br>', 'Technical<br>', '', ''),
(4, 'Accra Wesley Girls', 'Greater Accra Region', 'Ga Central Municipal ', 'Kaneshie', 'Girls, Day and Boarding', 'General Arts<br>', 'General Science<br>', 'General Agriculture<br>', '<br>', 'General Arts<br>', 'Business<br>', '<br>', '', ''),
(5, 'Achimota Senior High ', 'Greater Accra Region', 'Accra Metropolitan ', 'Achimota ', 'Mixed Day and Boarding', 'General Arts<br>', 'General Science<br>', 'General Agriculture<br>', 'Home Economics<br>', 'Visual Art<br>', '<br>', '<br>', '', ''),
(6, 'Achinakrom Senior High ', 'Ashanti Region', 'Ejisu-Juabeng Municipal', 'Achinakrom, Ejisu', 'Mixed Day and Boarding', 'General Arts<br>', 'General Science<br>', 'General Agriculture<br>', 'Home Economics<br>', 'Visual Art<br>', 'Business<br>', '<br>', '', ''),
(7, 'Adanwomase Senior High', 'Ashanti Region', 'Kwabere East', 'Adanwomase', 'Mixed,Boarding', 'General Arts<br>', 'General Science<br>', '<br>', '<br>', 'Visual Art<br>', 'Business<br>', '<br>', '', ''),
(8, 'Adobewora Community Senior High School', 'Ashanti Region', 'Atwima Mponua', 'Adobewora', 'Mixed,Day.', 'General Arts<br>', 'General Science<br>', 'General Agriculture<br>', 'Home Economics<br>', 'Visual Art<br>', 'Business<br>', '<br>', '', ''),
(9, 'Adu Gymafi Senior High School', 'Ashanti Region', 'Sekyere South', 'Jamasi', 'Mixed Day and Boarding', 'General Arts<br>', 'General Science<br>', '<br>', 'Home Economics<br>', 'Visual Art<br>', 'Business<br>', '<br>', '', ''),
(10, 'Adugyama Community Senior High School', 'Ashanti Region', 'Ahafo-Ano South', 'Adugyama ', 'Mixed,Day and Hostel.', 'General Arts<br>', 'General Science<br>', 'General Agriculture<br>', 'Home Economics<br>', 'Visual Art<br>', 'Business<br>', '<br>', '', ''),
(11, 'Acherensua Senior High', 'Brong Ahafo Region', 'Asutifi South', 'Acherensua ', 'Mixed Day and Boarding', 'General Arts<br>', 'General Science<br>', 'General Agriculture<br>', 'Home Economics<br>', 'Visual Art<br>', 'Business<br>', '<br>', '', ''),
(12, 'Ahafoman Senior High School Technical.', 'Brong Ahafo Region', 'Asunafo North Municipal', 'Asunafo', 'Mixed,Day and Boarding', 'General Arts<br>', 'General Science<br>', 'General Agriculture<br>', 'Home Economics<br>', '<br>', 'Business<br>', 'Technical<br>', '', ''),
(13, 'Amanten Senior High', 'Brong Ahafo Region', 'Atebubu-Amanten', 'Atebubu-Amanten', 'Mixed,Day and Boarding.', 'General Arts<br>', 'General Agriculture<br>', '<br>', 'Home Economics<br>', '<br>', 'Business<br>', '<br>', '', ''),
(14, 'Akumfi Ameyway Senior High Technical School.', 'Brong Ahafo Region', 'Techiman North ', 'Aworowa-Akrofrom', 'Mixed,Day and Boarding', 'General Arts<br>', 'General Science<br>', 'General Agriculture<br>', 'Home Economics<br>', 'Visual Art<br>', 'Business<br>', 'Technical<br>', '', ''),
(15, 'Atebubu Senior High', 'Brong Ahafo Region', 'Atebubu Amantin', 'Atebubu', 'Mixed,Day and Boarding', 'General Arts<br>', 'General Science<br>', 'General Agriculture<br>', 'Home Economics<br>', 'Visual Art<br>', 'Business<br>', '<br>', '', ''),
(16, 'Badu Senior High School Tech.', 'Brong Ahafo Region', 'Tain', 'Badu', 'Mixed,Day and Boarding', 'General Arts<br>', 'General Science<br>', 'General Agriculture<br>', 'Home Economics<br>', '<br>', 'Business<br>', 'Technical<br>', '', ''),
(17, 'Aburuman Senior High', 'Central Region', 'Aburu/Asebu/Kwamankese', 'Aburu', 'Boys, Day and Boarding', 'General Arts<br>', 'General Science<br>', 'General Agriculture<br>', 'Home Economics<br>', 'Visual Art<br>', 'Business<br>', '<br>', '', ''),
(18, 'Academy Of Christ The King', 'Central Region', 'Cape Coast Metropolitan ', 'Cape Coast ', 'Mixed,Day,Boarding and Hostel', 'General Arts<br>', 'General Science<br>', '<br>', 'Home Economics<br>', 'Visual Art<br>', 'Business<br>', '<br>', '', ''),
(19, 'Adankwaman Senior High/Com', 'Central Region', 'Assin South', 'Assin Darmang', 'Girls, Day and Boarding', 'General Arts<br>', 'General Science<br>', 'General Agriculture<br>', 'Home Economics<br>', '<br>', 'Business<br>', '<br>', '', ''),
(20, 'AdIsadel College ', 'Central Region', 'Cape Coast Metropolitan.', '', 'Boys Boarding.', 'General Arts<br>', 'General Science<br>', '<br>', '<br>', 'Visual Art<br>', 'Business<br>', '<br>', '', ''),
(21, 'Apam Senior High ', 'Central Region', 'Gomoa West', 'Apam', 'Mixed,Day and Boarding', 'General Arts<br>', 'General Science<br>', '<br>', 'Home Economics<br>', 'Visual Art<br>', 'Business<br>', '<br>', '', ''),
(22, 'Abuakwa State College ', 'Eastern Region', 'Kyebi', 'East Akim Municipal ', 'Mixed,Day and Boarding', 'General Arts<br>', 'General Science<br>', 'General Agriculture<br>', 'Home Economics<br>', 'Visual Art<br>', 'Business<br>', '<br>', '', ''),
(23, 'Aburi Girls Senior High', 'Eastern Region', 'Akwapim South Municipal ', 'Aburi', 'Girls,Boarding.', 'General Arts<br>', 'General Science<br>', '<br>', 'Home Economics<br>', 'Visual Art<br>', 'Business<br>', '<br>', '', ''),
(24, 'Achiase Senior High', 'Eastern Region', 'Birim South Municipal ', 'Akim Achiase ', 'Mixed,Day and Boarding', 'General Arts<br>', 'General Science<br>', 'General Agriculture<br>', 'Home Economics<br>', 'Visual Art<br>', 'Business<br>', '<br>', '', ''),
(25, 'Adeiso Senior High ', 'Eastern Region', 'Upper West Akim', 'Adeiso', 'Mixed,Day and Boarding', 'General Arts<br>', 'General Science<br>', 'General Agriculture<br>', 'Home Economics<br>', 'Visual Art<br>', 'Business<br>', '<br>', '', ''),
(26, 'Adjena Senior High Technical ', 'Eastern Region', 'Asuogyaman ', 'Adjena', 'Mixed,Day and Boarding', 'General Arts<br>', 'General Science<br>', 'General Agriculture<br>', 'Home Economics<br>', 'Visual Art<br>', 'Business<br>', 'Technical<br>', '', ''),
(27, 'Adonten Senior High', 'Eastern Region', 'Akwapim South Municipal ', 'Aburi ', 'Mixed,Day and Boarding', 'General Arts<br>', '<br>', 'General Agriculture<br>', 'Home Economics<br>', 'Visual Art<br>', 'Business<br>', '<br>', '', ''),
(34, 'Awe Senior High School', 'Upper East Region', 'Kassena-Nankana East', 'Saboro', 'Mixed,Day and Boarding', 'General Arts<br>', '<br>', 'General Agriculture<br>', 'Home Economics<br>', 'Visual Art<br>', 'Business<br>', 'Technical<br>', '', ''),
(29, 'Bamboi Community Day School', 'Northern Region', 'Bole ', 'Bole ', 'Mixed,Day and Boarding', 'General Arts<br>', '<br>', 'General Agriculture<br>', 'Home Economics<br>', '<br>', 'Business<br>', '<br>', '', ''),
(30, 'Bimbilla Senior High', 'Northern Region', 'Nanumba North', 'Bimnilla ', 'Mixed,Day and Boarding', 'General Arts<br>', 'General Science<br>', 'General Agriculture<br>', 'Home Economics<br>', '<br>', 'Business<br>', '<br>', '', ''),
(31, 'Bole Senior High ', 'Northern Region', 'Bole', 'Bole', 'Mixed,Day and Boarding', 'General Arts<br>', 'General Science<br>', 'General Agriculture<br>', 'Home Economics<br>', '<br>', 'Business<br>', '<br>', '', ''),
(32, 'Buipe Senior High ', 'Northern Region', 'Central Gonja ', 'Buipe ', 'Mixed,Boarding and Hostel', 'General Arts<br>', '<br>', 'General Agriculture<br>', 'Home Economics<br>', '<br>', 'Business<br>', '<br>', '', ''),
(33, 'Anbariya Senior High Secondary.', 'Northern Region', 'Anbariya', 'Tamele Metropolitan', 'Mixed,Day and Hostel.', '<br>', 'General Science<br>', 'General Agriculture<br>', '<br>', '<br>', '<br>', '<br>', '', ''),
(35, 'Bawku Senior High ', 'Upper East Region', 'Bawku West ', 'Bawku', 'Mixed,Boarding', 'General Arts<br>', 'General Science<br>', 'General Agriculture<br>', 'Home Economics<br>', 'Visual Art<br>', '<br>', '<br>', '', ''),
(36, 'Bawku Senior High Technical ', 'Upper East Region', 'Bolgatanga Municipal ', 'Bawku', 'Mixed', 'General Arts<br>', 'General Science<br>', 'General Agriculture<br>', 'Home Economics<br>', 'Visual Art<br>', 'Business<br>', 'Technical<br>', '', ''),
(37, 'Binduri Community Senior High', 'Upper East Region', 'Binduri ', 'Binduri', 'Mixed, Day', 'General Arts<br>', 'General Science<br>', 'General Agriculture<br>', '<br>', '<br>', 'Business<br>', '<br>', '', ''),
(38, 'Bolga Girls Senior High', 'Upper East Region', 'Bolgatanga Municipal ', 'Bolga ', 'Girls,Boarding.', 'General Arts<br>', 'General Science<br>', '<br>', 'Home Economics<br>', 'Visual Art<br>', 'Business<br>', '<br>', '', ''),
(39, 'Bolga Sheigu Community Senior High School', 'Upper East Region', 'Bolgatanga Municipal ', 'Bolga Sherigu', 'Mixed. Day.', '<br>', 'General Science<br>', '<br>', '<br>', '<br>', 'Business<br>', '<br>', '', ''),
(40, 'Birifoh Senior High School ', 'Upper West Region', 'Lawra', 'Birifoh', 'Mixed,Day and Hostel.', 'General Arts<br>', '<br>', '<br>', '<br>', '<br>', 'Business<br>', '<br>', '', ''),
(41, 'Daffiamah Senior High', 'Upper West Region', 'Daffiama-Bissie-Issa', 'Daffiama ', 'Mixed,Day and Boarding', 'General Arts<br>', '<br>', 'General Agriculture<br>', 'Home Economics<br>', '<br>', '<br>', '<br>', '', ''),
(42, 'Dr. Hilla Liman Senior High School ', 'Upper West Region', 'Sissala West', 'Sissala', 'Mixed,Boarding', 'General Arts<br>', 'General Science<br>', '<br>', '<br>', '<br>', 'Business<br>', '<br>', '', ''),
(43, 'Eremon Senior High Technical', 'Upper West Region', 'Lawra ', 'Eremon', 'Mixed,Boarding', '<br>', '<br>', 'General Agriculture<br>', 'Home Economics<br>', '<br>', '<br>', 'Technical<br>', '', ''),
(44, 'Funsi Senior High School', 'Upper West Region', 'Wa East ', 'Funsi', 'Mixed,Boarding', 'General Arts<br>', '<br>', '<br>', '<br>', '<br>', 'Business<br>', '<br>', '', ''),
(45, 'Aboa Senior High', 'Volta Region', 'Keta ', 'Abor', 'Mixed,Day and Boarding', 'General Arts<br>', 'General Science<br>', 'General Agriculture<br>', 'Home Economics<br>', 'Visual Art<br>', 'Business<br>', '<br>', '', ''),
(46, 'Abutia Senior High Technical ', 'Volta Region', 'Ho West ', 'Abutia ', 'Mixed,Day and Boarding', 'General Arts<br>', 'General Science<br>', 'General Agriculture<br>', 'Home Economics<br>', 'Visual Art<br>', 'Business<br>', 'Technical<br>', '', ''),
(47, 'Adaklu Senior High ', 'Volta Region', 'Adaklu ', 'Adaklu Waya', 'Mixed,Day and Boarding', 'General Arts<br>', 'General Science<br>', 'General Agriculture<br>', 'Home Economics<br>', 'Visual Art<br>', 'Business<br>', '<br>', '', ''),
(48, 'Adidome Senior High', 'Volta Region', 'Central Tongu', 'Adidome', 'Mixed,Day and Boarding', 'General Arts<br>', 'General Science<br>', 'General Agriculture<br>', 'Home Economics<br>', 'Visual Art<br>', 'Business<br>', '<br>', '', ''),
(49, 'Afdjato Senior High ', 'Volta Region', 'Hohoe Municipal ', 'Hohoe', 'Mixed,Day and Boarding', 'General Arts<br>', '<br>', 'General Agriculture<br>', 'Home Economics<br>', '<br>', 'Business<br>', 'Technical<br>', '', ''),
(50, 'Adiembra Senior High School ', 'Western Region', 'Secondi/Takoradi Metropolitan ', 'Adiembra', 'Mixed,Day and Boarding', 'General Arts<br>', 'General Science<br>', '<br>', 'Home Economics<br>', 'Visual Art<br>', 'Business<br>', '<br>', '', ''),
(51, 'Adjoafua Community Senor High ', 'Western Region', 'Bia West ', 'Adjoafua ', 'Mixed,Day.', 'General Arts<br>', '<br><br>', '<br><br>', '<br><br>', '<br><br>', 'Business<br>', '<br><br>', '', ''),
(52, 'Akontombra Senior High ', 'Western Region', 'Sefui Akontobra', 'Sefui Akontobra', 'Mixed,Day and Boarding', 'General Arts<br>', '<br>', 'General Agriculture<br>', 'Home Economics<br>', '<br>', 'Business<br>', '<br>', '', ''),
(53, 'Annor Adjaye Senior High ', 'Western Region', 'Jomoro', 'Ezinlibo', 'Mixed,Day and Boarding', 'General Arts<br>', 'General Science<br>', 'General Agriculture<br>', 'Home Economics<br>', 'Visual Art<br>', 'Business<br>', '<br>', '', ''),
(54, 'Archbishop Porter Girls Senior High', 'Western Region', 'Sekondi/Takordi Metropolis ', 'Fijai,Takordai ', 'Girls, Day,Boarding and Boarding.', 'General Arts<br>', 'General Science<br>', '<br>', 'Home Economics<br>', 'Visual Art<br>', 'Business<br>', '<br>', '', ''),
(55, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(56, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(57, 'Edem ', 'Greater Accra Region', 'Gawest', 'ars junc', 'Mixed', 'No', 'No', 'Yes', 'No', 'No', 'No', 'Yes', 'Day', 'Category C');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `register` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `last_name`, `email`, `register`) VALUES
(2, 'admin', 'password', 'Faithway', 'Baptist', 'admin@me.com', '2019-03-19 00:00:00'),
(31, 'coder', 'code', 'emma', 'ntiamoah', 'code@example.com', '2005-04-19 00:00:00'),
(36, 'test', 'pass', 'userme', 'useryou', 'user@gmail.com', '2019-06-04 06:12:38');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
