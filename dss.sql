-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 14, 2020 at 02:32 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dss`
--

-- --------------------------------------------------------

--
-- Table structure for table `career`
--

DROP TABLE IF EXISTS `career`;
CREATE TABLE IF NOT EXISTS `career` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `school` text NOT NULL,
  `programme` text NOT NULL,
  `description` text NOT NULL,
  `careers` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `career`
--

INSERT INTO `career` (`id`, `school`, `programme`, `description`, `careers`) VALUES
(4, 'Central University', 'Engineering', '                            Study engineering                                                    ', 'auto, pilot, caption'),
(3, 'Ashasi University', 'Business Administration', '                            Study engineering                                                    ', 'auto, pilot'),
(5, 'Valley View University', 'Agric', '                            Do u want to become a doctor                          ', 'medical doctor');

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
) ENGINE=MyISAM AUTO_INCREMENT=256 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`id`, `name`, `region`, `district`, `location`, `gender`, `gart`, `gsci`, `agric`, `hecons`, `vart`, `bus`, `tech`, `status`, `cat`) VALUES
(1, 'Accra Academy ', 'Greater Accra Region', 'Accra Metropolitan ', 'Bubuashie', 'Boys,Girls and Boarding', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(2, 'Accra Girls Senior High School', 'Greater Accra Region', 'Accra Metropolitan', 'Maamobi', 'Girls, Day and Boarding', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(3, 'Accra Senior High.', 'Greater Accra Region', 'Accra Metropolitan ', 'Accra North Ridge ', 'Mixed Day', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Day', 'Category B'),
(4, 'Accra Wesley Girls High', 'Greater Accra Region', 'Ga Central Municipal ', 'Kaneshie', 'Girls, Day and Boarding', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category C'),
(67, 'St. Ann\'s Girls Senior High,Sampa', 'Brong Ahafo Region', 'Jaman-North', 'Sampa ', 'Girls', 'Yes', 'No', 'No', 'Yes', 'No', 'No', 'No', 'Day', 'Category A'),
(66, 'Berekum Presby Senior High ', 'Brong Ahafo Region', 'Berekum-Municipal ', 'Berekum', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(6, 'Achinakrom Senior High ', 'Ashanti Region', 'Ejisu-Juabeng Municipal', 'Achinakrom, Ejisu', 'Mixed Day and Boarding', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category C'),
(7, 'Adanwomase Senior High', 'Ashanti Region', 'Kwabere East', 'Adanwomase', 'Mixed,Boarding', 'Yes', 'Yes', 'No', 'No', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category C'),
(8, 'Adobewora Community Senior High School', 'Ashanti Region', 'Atwima Mponua', 'Adobewora', 'Mixed,Day.', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day', 'Category C'),
(9, 'Adu Gymafi Senior High School', 'Ashanti Region', 'Sekyere South', 'Jamasi', 'Mixed Day and Boarding', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category C'),
(10, 'Adugyama Community Senior High School', 'Ashanti Region', 'Ahafo-Ano South', 'Adugyama ', 'Mixed,Day and Hostel.', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day', 'Category C'),
(11, 'Acherensua Senior High', 'Brong Ahafo Region', 'Asutifi South', 'Acherensua ', 'Mixed Day and Boarding', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(12, 'Ahafoman Senior High School Technical.', 'Brong Ahafo Region', 'Asunafo North Municipal', 'Asunafo', 'Mixed,Day and Boarding', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Day/Boarding', 'Category B'),
(71, 'Holly Child School,Cape Coast ', 'Central Region', 'Cape Coast Metropolitan ', 'Cape Coast ', 'Girls', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'No', 'No', 'Day/Boarding', 'Category A'),
(13, 'Amanten Senior High', 'Brong Ahafo Region', 'Atebubu-Amanten', 'Atebubu-Amanten', 'Mixed,Day and Boarding.', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', 'Day/Boarding', 'Category D'),
(14, 'Akumfi Ameyway Senior High Technical School.', 'Bono East Region', 'Techiman North ', 'Aworowa-Akrofrom', 'Mixed,Day and Boarding', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Day/Boarding', 'Category D'),
(15, 'Atebubu Senior High', 'Bono East Region', 'Atebubu Amantin', 'Atebubu', 'Mixed,Day and Boarding', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category D'),
(60, 'St. Louis Senior High,Kumasi', 'Ashanti Region', 'Kumasi Metro', 'Oduom-Kumasi', 'Girls', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(16, 'Badu Senior High School Tech.', 'Brong Ahafo Region', 'Tain', 'Badu', 'Mixed,Day and Boarding', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Day/Boarding', 'Category B'),
(17, 'Aburuman Senior High', 'Central Region', 'Aburu/Asebu/Kwamankese', 'Aburu', 'Boys, Day and Boarding', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category C'),
(65, 'Yaa Asantewaa Girls Senior High.', 'Ashanti Region', 'Kumasi Metro', 'Tanoso-Kumasi', 'Girls', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(18, 'Academy Of Christ The King', 'Central Region', 'Cape Coast Metropolitan ', 'Cape Coast ', 'Mixed,Day,Boarding and Hostel', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(19, 'Adankwaman Senior High/Com', 'Central Region', 'Assin South', 'Assin Darmang', 'Girls, Day and Boarding', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(20, 'AdIsadel College ', 'Central Region', 'Cape Coast Metropolitan.', 'Cape Coast ', 'Boys Boarding.', 'Yes', 'Yes', 'No', 'No', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(21, 'Apam Senior High ', 'Central Region', 'Gomoa West', 'Apam', 'Mixed,Day and Boarding', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(22, 'Abuakwa State College ', 'Eastern Region', 'Kyebi', 'East Akim Municipal ', 'Mixed,Day and Boarding', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(23, 'Aburi Girls Senior High', 'Eastern Region', 'Akwapim South Municipal ', 'Aburi', 'Girls,Boarding.', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(72, 'Mfantsipim School', 'Central Region', 'Cape Coast Metropolitan ', 'Cape Coast ', 'Boys', 'Yes', 'Yes', 'No', 'No', 'Yes', 'No', 'Yes', 'Day/Boarding', 'Category A'),
(24, 'Achiase Senior High', 'Eastern Region', 'Birim South Municipal ', 'Akim Achiase ', 'Mixed,Day and Boarding', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(25, 'Adeiso Presby Senior High ', 'Eastern Region', 'Upper West Akim', 'Adeiso', 'Mixed,Day and Boarding', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category C'),
(26, 'Adjena Senior High Technical ', 'Eastern Region', 'Asuogyaman ', 'Adjena', 'Mixed,Day and Boarding', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Day/Boarding', 'Category C'),
(64, 'T.I Ahmadiyya Senior High,Kumasi', 'Ashanti Region', 'Kumasi Metro', 'Kumasi-Stadium ', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(27, 'Adonten Senior High', 'Eastern Region', 'Akwapim South Municipal ', 'Aburi ', 'Mixed,Day and Boarding', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(34, 'Awe Senior High School', 'Upper East Region', 'Kassena-Nankana East', 'Saboro', 'Mixed,Day and Boarding', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Day/Boarding', 'Category C'),
(29, 'Bamboi Community Day School', 'Savannah Region', 'Bole ', 'Bole ', 'Mixed,Day and Boarding', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Day/Boarding', 'Category D'),
(30, 'Bimbilla Senior High', 'Northern Region', 'Nanumba North', 'Bimnilla ', 'Mixed,Day and Boarding', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Day/Boarding', 'Category D'),
(31, 'Bole Senior High ', 'Northern Region', 'Bole', 'Bole', 'Mixed,Day and Boarding', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Day', 'Category D'),
(32, 'Buipe Senior High ', 'Northern Region', 'Central Gonja ', 'Buipe ', 'Mixed,Boarding and Hostel', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Day', 'Category D'),
(33, 'Anbariya Senior High Secondary.', 'Northern Region', 'Anbariya', 'Tamele Metropolitan', 'Mixed,Day and Hostel.', 'No', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'Day', 'Category D'),
(35, 'Bawku Senior High ', 'Upper East Region', 'Bawku West ', 'Bawku', 'Mixed,Boarding', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', 'Day/Boarding', 'Category D'),
(36, 'Bawku Senior High Technical ', 'Upper East Region', 'Bolgatanga Municipal ', 'Bawku', 'Mixed', 'General Arts<br>', 'General Science<br>', 'General Agriculture<br>', 'Home Economics<br>', 'Visual Art<br>', 'Business<br>', 'Technical<br>', 'Day/Boarding', 'Category C'),
(37, 'Binduri Community Senior High', 'Upper East Region', 'Binduri ', 'Binduri', 'Mixed, Day', 'Yes', 'Yes', 'Yes', 'No', 'No', 'Yes', 'No', 'Day', 'Category C'),
(38, 'Bolga Girls Senior High', 'Upper East Region', 'Bolgatanga Municipal ', 'Bolga ', 'Girls,Boarding.', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(39, 'Bolga Sherigu Community Senior High School', 'Upper East Region', 'Bolgatanga Municipal ', 'Bolga Sherigu', 'Mixed. Day.', 'No', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Day', 'Category C'),
(40, 'Birifoh Senior High School ', 'Upper West Region', 'Lawra', 'Birifoh', 'Mixed,Day and Hostel.', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', 'Day', 'Category C'),
(41, 'Daffiamah Senior High', 'Upper West Region', 'Daffiama-Bissie-Issa', 'Daffiama ', 'Mixed,Day and Boarding', 'Yes', 'No', 'Yes', 'Yes', 'No', 'No', 'No', 'Day/Boarding', 'Category C'),
(42, 'Dr. Hilla Liman Senior High School ', 'Upper West Region', 'Sissala West', 'Sissala', 'Mixed,Boarding', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Day/Boarding', 'Category C'),
(43, 'Eremon Senior High Technical', 'Upper West Region', 'Lawra ', 'Eremon', 'Mixed,Boarding', 'No', 'No', 'Yes', 'Yes', 'No', 'No', 'Yes', 'Day/Boarding', 'Category C'),
(44, 'Funsi Senior High School', 'Upper West Region', 'Wa East ', 'Funsi', 'Mixed,Boarding', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', 'Day/Boarding', 'Category C'),
(45, 'Abor Senior High', 'Volta Region', 'Keta ', 'Abor', 'Mixed,Day and Boarding', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Day/Boarding', 'Category C'),
(46, 'Abutia Senior High Technical ', 'Volta Region', 'Ho West ', 'Abutia ', 'Mixed,Day and Boarding', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Day/Boarding', 'Category B'),
(47, 'Adaklu Senior High ', 'Volta Region', 'Adaklu ', 'Adaklu Waya', 'Mixed,Day and Boarding', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '<br>', 'Day/Boarding', 'Category C'),
(74, 'Wesley Girls Senior High,Cape Coast ', 'Central Region', 'Cape Coast Metropolitan ', 'Cape Coast ', 'Girls', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(48, 'Adidome Senior High', 'Volta Region', 'Central Tongu', 'Adidome', 'Mixed,Day and Boarding', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category C'),
(49, 'Afdjato Senior High ', 'Volta Region', 'Hohoe Municipal ', 'Hohoe', 'Mixed,Day and Boarding', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Day/Boarding', 'Category C'),
(50, 'Adiembra Senior High School ', 'Western Region', 'Secondi/Takoradi Metropolitan ', 'Adiembra', 'Mixed,Day and Boarding', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(51, 'Adjoafua Community Senor High ', 'Western North Region', 'Bia West ', 'Adjoafua ', 'Mixed,Day.', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', 'Day', 'Category C'),
(52, 'Akontombra Senior High ', 'Western North Region', 'Sefui Akontobra', 'Sefui Akontobra', 'Mixed,Day and Boarding', 'No', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(53, 'Annor Adjaye Senior High ', 'Western Region', 'Jomoro', 'Ezinlibo', 'Mixed,Day and Boarding', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category C'),
(54, 'Archbishop Porter Girls Senior High', 'Western Region', 'Sekondi/Takordi Metropolis ', 'Fijai,Takordai ', 'Girls, Day,Boarding and Boarding.', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(73, 'St. Augustine\'s College,Cape Coast', 'Central Region', 'Cape Coast Metropolitan ', 'Cape Coast ', 'Boys', 'Yes', 'Yes', 'Yes', 'No', 'No', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(55, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(57, 'Edem ', 'Greater Accra Region', 'Gawest', 'ars junc', 'Mixed', 'No', 'No', 'Yes', 'No', 'No', 'No', 'Yes', 'Day', 'Category C'),
(68, 'Our Lady Of Providence Senior High ', 'Brong Ahafo Region', 'Jaman-South', 'Kwasi Buokrom', 'Girls', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(70, 'Notre Dame Girls Senior High,Sunyani ', 'Brong Ahafo Region', 'Sunyani West', 'Sunyani ', 'Girls', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(69, 'St. James Sem & Senior High.Abesim', 'Brong Ahafo Region', 'Sunyani Municipal ', 'Abesim', 'Boys', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(63, 'Prempeh College ', 'Ashanti Region', 'Kumasi Metro', 'Sofoline-Kumasi', 'Boys', 'Yes', 'Yes', 'No', 'No', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(59, 'Serwaa Kesse Girls Senior High', 'Ahofo Region', 'Tano North ', 'Duayaw Nkwanta', 'Girls', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(58, 'Ola Girls Senior High,Kenyasi', 'Ahofo Region', 'Asutifi North ', 'Kenyasi', 'Girls', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(62, 'Opoku Ware Senior High ', 'Ashanti Region', 'Kumasi Metro', 'Santasi-Kumasi', 'Boys', 'Yes', 'Yes', 'No', 'No', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(61, 'Kumasi Senior High', 'Ashanti Region', 'Kumasi Metro', 'Gyinyase-Kumasi', 'Boys', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(75, 'Mfantsiman Girls Senior High', 'Central Region', 'Mfantsiman Municipal', 'Saltpond', 'Girls', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(76, 'Okuwapeman Senior High ', 'Eastern Region', 'Akwapim North', 'Akropong ', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(77, 'St. Rose\'s Senior High,Akwatia ', 'Eastern Region', 'Denkyembour ', 'Akwatia', 'Girls', 'Yes', 'Yes', 'No', 'Yes', 'No', 'No', 'No', 'Day/Boarding', 'Category A'),
(78, 'Ofori Panin Senior High ', 'Eastern Region', 'East Akim Municipal ', 'Kukurantumi', 'Mixed', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(79, 'St. Peter\'s Senior High School,Nkwatia', 'Eastern Region', 'Kwahu East', 'Nkwatia ', 'Boys', 'Yes', 'Yes', 'Yes', 'No', 'No', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(80, 'Krobo Girls Senior High ', 'Eastern Region', 'Lower Manya Krobo', 'Odumasi', 'Girls', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(81, 'Ghana Senior High School ', 'Eastern Region', 'New Juaben Municipal ', 'Koforidua ', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(82, 'Pope John Senior High School & Min. Sem, Koforidua ', 'Eastern Region', 'New Juaben Municipal ', 'Koforidua ', 'Boys', 'Yes', 'Yes', 'No', 'No', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(83, 'St. Mary\'s Senior High, Korle Ginno ', 'Greater Accra Region', 'Accra Metropolitan ', 'Korle Gonno', 'Girls', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(84, 'St. Thomas Aquinas Senior High,Cantoments ', 'Greater Accra Region', 'La Dede-Kotopon Municipal ', 'Cantoments ', 'Boys', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Day', 'Category A'),
(85, 'Presby Boys Senior High, Legon', 'Greater Accra Region', 'La Nkwantanang Minicipal ', 'Legon', 'Boys', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(86, 'Tema Senior High ', 'Greater Accra Region', 'Tema Metro', 'Tema Com. 5 ', 'Mixed', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(87, 'Tamale Senior High ', 'Northern Region', 'Sagnerigo ', 'Tamale ', 'Boys', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Day/Boarding', 'Category A'),
(88, 'St. Charles Senior High,Tamale  ', 'Northern Region', 'Tamale Metro', 'Tamale ', 'Boys', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(89, 'Tamale Girls Senior High ', 'Northern Region', 'Tamale Metro', 'Tamale ', 'Girls', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(90, 'Ghana Senior High,Tamale ', 'Northern Region', 'Tamale Metro', 'Tamale ', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(91, 'Navrongo Senior High', 'Upper East Region', 'Kassena-Nankana Municipal ', 'Janania-Navrongo ', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(92, 'Notre Dame Sem/Senior High,Navrongo', 'Upper East Region', 'Kassena-Nankana Municipal ', 'Navrongo', 'Boys', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'No', 'Day/Boarding', 'Category A'),
(93, 'Bolgatanga Senior High ', 'Upper East Region', 'Talensi', 'Bolgatanga ', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(94, 'St.Francis Girls Senior High,Jirapa ', 'Upper West Region', 'Jerapa', 'Jeripa', 'Girls', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(95, 'Lawra Senior High ', 'Upper West Region', 'Lawra ', 'Lawra ', 'Mixed', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(96, 'Nandom Senior High ', 'Upper West Region', 'Nandom', 'Nandom', 'Boys', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(97, 'Mawuli School,Ho', 'Volta Region', 'Ho Municipal ', 'Ho', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Day/Boarding', 'Category A'),
(98, 'Ola Girls Senior High,Ho', 'Volta Region', 'Ho Municipal ', 'Ho', 'Girls', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(99, 'Bishop Herman College ', 'Volta Region', 'Kpando ', 'Kpando', 'Boys', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(100, 'Ghana Senior High Tech', 'Western Region', 'Sekondi/Takordi Metro', 'Sekondi', 'Boys', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'Day/Boarding', 'Category A'),
(101, 'St. John\'s Senior High ', 'Western Region', 'Sekondi/Takordi Metro', 'Sekondi', 'Boys', 'Yes', 'Yes', 'No', 'No', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(102, 'Sekondi College ', 'Western Region', 'Sekondi/Takordi Metro', 'Sekondi', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(103, 'Fijai Senior High ', 'Western Region', 'Sekondi/Takordi Metro', 'Sekondi', 'Mixed', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category A'),
(104, 'Mim Senior High ', 'Ahofo Region', 'Asutifi North ', 'Mim', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(105, 'Gyamfi Kumanini Senior High Tech', 'Ahofo Region', 'Asutifi North ', 'Wamahinso', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Day/Boarding', 'Category B'),
(106, 'Hwidiem Senior High', 'Ahofo Region', 'Asutifi South', 'Hwidiem ', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(107, 'Boakye Tromo Senior High', 'Ahofo Region', 'Tano South', 'Duayaw Nkwanta', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Day/Boarding', 'Category B'),
(108, 'Yamfo Anglican Senior High ', 'Ahofo Region', 'Tano North ', 'Yamfo', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(109, 'Bomaa Community Senior High ', 'Ahofo Region', 'Tano North ', 'Bomaa', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(110, 'Derma Community Day School', 'Ahofo Region', 'Tano South', 'Derma', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day', 'Category B'),
(111, 'Samuel Otu Presy Senior High', 'Ahofo Region', 'Tano South', 'Techimantia', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(112, 'Dompoase Senior High ', 'Ashanti Region', 'Adansi North', 'Dompoase', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(113, 'Fomena T.I Ahmed Senior High ', 'Ashanti Region', 'Adansi North', 'Fomena ', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(114, 'Asare Bediako Senior High ', 'Ashanti Region', 'Adansi North', 'Akrokerri', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(115, 'New Adubiase Senior High', 'Ashanti Region', 'Adansi South', 'New Adubiase', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(116, 'Akrofuom Senior High Tech', 'Ashanti Region', 'Adansi South', 'Akrofuom', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Day/Boarding', 'Category B'),
(117, 'Otumfuo Osei Tutu II College', 'Ashanti Region', 'Afigya-Kwabere ', 'Tetrem ', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(118, 'Aduman Senior High ', 'Ashanti Region', 'Afigya-Kwabere ', 'Aduman ', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(119, 'St. Michael\'s Senior High,Ahenkro ', 'Ashanti Region', 'Afigya-Kwabere ', 'Ahenkro', 'Mixed', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(120, 'Maabang Senior High ', 'Ashanti Region', 'Ahafo-Ano South', 'Maabang', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Day/Boarding', 'Category B'),
(121, 'Tepa Senior High ', 'Ashanti Region', 'Ahafo-Ano North', 'Tepa ', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(122, 'St. Mary\'s Girls Senior High, Konongo ', 'Ashanti Region', 'Asante Akim Municioal ', 'Konongo ', 'Girls', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(123, 'Wesley Senior High,Konongo ', 'Ashanti Region', 'Asante Akim Central  Municioal ', 'Konongo ', 'Mixed', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(124, 'Konongo Odumae Senior High ', 'Ashanti Region', 'Asante Akim Central  Municioal ', 'Odumase', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(125, 'Collins Senior High/Commercial.Agogo', 'Ashanti Region', 'Asante Akim North', 'Agogo', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(126, 'Bompata Presby Senior High', 'Ashanti Region', 'Asante Akim South', 'Bompata', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(127, 'Kumasi Academy ', 'Ashanti Region', 'Asokore Mampong Mnicipal ', 'Asokore Mampong ', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(128, 'Afua Kobi Ampeh Girls Senior High', 'Ashanti Region', 'Atwima Kwanwoma', 'Trabuom', 'Girls', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(129, 'Mpasatia Senior High Tech', 'Ashanti Region', 'Atwima Mponua', 'Mpasatia', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Day/Boarding', 'Category B'),
(130, 'Osei Tutu Senior High,Akropong', 'Ashanti Region', 'Atwima Nwabiagya', 'Akropong', 'Boys', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(131, 'Osei Tutu Senior High,Akropong', 'Ashanti Region', 'Atwima Nwabiagya', 'Akropong', 'Boys', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(132, 'Toase Senior High', 'Ashanti Region', 'Atwima Nwabiagya', 'Toase', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(133, 'S.D.A Senior High,Bekwai', 'Ashanti Region', 'Bekwai Municipal ', 'Bekwai', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(134, 'St. Joseph Senior High Tech,Ahwiren', 'Ashanti Region', 'Bekwai Municipal ', 'Ahwiren', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Day/Boarding', 'Category B'),
(135, 'Denyaseman Catholic Senior High', 'Ashanti Region', 'Bekwai Municipal ', 'Poano', 'Mixed', 'Yes', 'No', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(136, 'Ofoase Kokoben Senior High', 'Ashanti Region', 'Bekwai Municipal ', 'Ofoase Kokoben ', 'Mixed', 'Yes', 'No', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(137, 'Oppong Memorial Senior High', 'Ashanti Region', 'Bekwai Municipal ', 'Kokofu', 'Mixed', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(138, 'Bosome Senior High Tech', 'Ashanti Region', 'Bosome Freho', 'Asiwa', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(139, 'Beposo Senior High ', 'Ashanti Region', 'Bosomtwe', 'Beposo', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(140, 'Jachie Premso Senior High ', 'Ashanti Region', 'Bosomtwe', 'Jachie Premso', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(141, 'Juaben Senior High', 'Ashanti Region', 'Ejisu-Juabeng Municipal', 'Juaben', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(142, 'Sekyedumase Senior High Tech ', 'Ashanti Region', 'Ejura/ Sekyedumase ', 'Sekyedumase ', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Day/Boarding', 'Category B'),
(143, 'Anglican Senior High,Kumasi', 'Ashanti Region', 'Kumasi Metro', 'Asem-Kumasi', 'Mixed', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Day/Boarding', 'Category B'),
(144, 'Knust Senior High ', 'Ashanti Region', 'Kumasi Metro', 'Knust', 'Mixed', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Day/Boarding', 'Category B'),
(145, 'Nuru Ameen Islamic Senior High,Asewase', 'Ashanti Region', 'Kumasi Metro', 'Asewase', 'Mixed', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(146, 'Adventist Senior High,Kumasi', 'Ashanti Region', 'Kumasi Metro', 'Bantama-Kumasi', 'Mixed', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(147, 'Kumasi Girls Senior ', 'Ashanti Region', 'Kumasi Metro', 'Abrepo', 'Girls', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(148, 'Serwa Nyarko Girls Senior High', 'Ashanti Region', 'Kumasi Metro', 'Dichemso', 'Girls', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(149, 'Armed Forces Senior High  Tech,Kumasi', 'Ashanti Region', 'Kumasi Metro', 'Bantama-Kumasi', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Day/Boarding', 'Category B'),
(150, 'Osei Kyeretwie Senior High', 'Ashanti Region', 'Kumasi Metro', 'Old Tafu,', 'Mixed', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(151, 'Asanteman Senior High ', 'Ashanti Region', 'Kumasi Metro', 'Bantama-Kumasi', 'Mixed', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(152, 'St. Hubert Sem/Senior High,Kumasi', 'Ashanti Region', 'Kumasi Metro', 'Santasi,Kumasi', 'Boys', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(153, 'Tawheed Senior High ', 'Ashanti Region', 'Kumasi Metro', 'Kumasi,Akwatia Lane ', 'Mixed', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(154, 'Islamic Senior High ', 'Ashanti Region', 'Kumasi Metro', 'Ampabame', 'Mixed', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(155, 'Kofiase Adventist Senior High ', 'Ashanti Region', 'Mampong Municipal ', 'Kofiase', 'Mixed', 'Yes', 'No', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(156, 'St. Monica\'s Senior High ', 'Ashanti Region', 'Mampong Municipal ', 'Mampong ', 'Girls', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(157, 'Christ The King Cathilic Senior High,Obuasi', 'Ashanti Region', 'Obuasi Municipal ', 'Obuasi', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(158, 'St. Jerome Senior High ', 'Ashanti Region', 'Offinso Municipal ', 'Abofour ', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(159, 'Dwamena Akenten Senior High ', 'Ashanti Region', 'Offinso Municipal ', 'Offinso', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(160, 'Ghana Muslim Mission Senior High', 'Ashanti Region', 'Sekyere Central', 'Beposo', 'Mixed', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(161, 'Nsutaman Catholic Senior High', 'Ashanti Region', 'Sekyere Central', 'Nsuta', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(162, 'T.I Ahmadiyya Senior High,Asokore', 'Ashanti Region', 'Sekyere East', 'Asokore', 'Girls', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(163, 'Tweneboa Kodua Senior High ', 'Ashanti Region', 'Sekyere  Kumawu', 'Kumawu ', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(164, 'Bankoma Senior High ', 'Ashanti Region', 'Sekyere  Kumawu', 'Banko ', 'Mixed', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(165, 'Konadu Yiadom Catholic  Senior High', 'Ashanti Region', 'Sekyere South', 'Asamang', 'Mixed', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(166, 'S. D. A Senior High,Agona ', 'Ashanti Region', 'Sekyere South ', 'Agona', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(167, 'S. D. A Senior High/ Technical ', 'Ashanti Region', 'Sekyere South', 'Agona', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Day/Boarding', 'Category B'),
(168, 'Bandaman Senior High ', 'Brong Ahafo Region', 'Banda ', 'Banda Ahenkro ', 'Mixed', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'Yes', 'Day/Boarding', 'Category B'),
(169, 'Brekum Senior High ', 'Brong Ahafo Region', 'Brekum Municipal ', 'Brekum ', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(170, 'Jinijini Senior High ', 'Brong Ahafo Region', 'Brekum Municipal', 'Jinijini', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', 'Day/Boarding', 'Category B'),
(171, 'Brekum Senior High ', 'Brong Ahafo Region', 'Brekum Municipal ', 'Brekum ', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(172, 'Dormaa Senior High ', 'Brong Ahafo Region', 'Dormaa Central  Municipal', 'Dormaa Ahenkro ', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(173, 'Mansen Senior High School ', 'Brong Ahafo Region', 'Dormaa East ', 'Wamfie ', 'Mixed', 'Yes', 'No', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(174, 'Wamanafo Senior High/ Technical ', 'Brong Ahafo Region', 'Dormaa East', 'Wamanafo', 'Mixed', 'Yes', 'No', 'Yes', 'No', 'No', 'Yes', 'Yes', 'Day/Boarding', 'Category B'),
(175, 'Nkrannkwanta Community Senior High ', 'Brong Ahafo Region', 'Dormaa West ', 'Nkrakwanta', 'Mixed', 'Yes', 'Yes', 'Yes', 'No', 'No', 'Yes', 'Yes', 'Day/Boarding', 'Category B'),
(176, 'Diamono Senior High School ', 'Brong Ahafo Region', 'Jaman North ', 'Duadaso No.2 ', 'Mixed', 'Yes', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Day', 'Category B'),
(177, 'Nafana Senior High ', 'Brong Ahafo Region', 'Jaman North', 'Sampa ', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(178, 'Sumaman Senior High ', 'Brong Ahafo Region', 'Jaman North', 'Suma - Ahenkro', 'Mixed', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(179, 'Goka Senior High/ Tech', 'Brong Ahafo Region', 'Jaman North', 'Goka', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Day/Boarding', 'Category B'),
(180, 'Drobo Senior High ', 'Brong Ahafo Region', 'Jaman South ', 'Drobo ', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(181, 'S. D. A Senior High,Sunyani ', 'Brong Ahafo Region', 'Sunyani Municipal ', 'Sunyani', 'Mixed', 'Yes', 'No', 'No', 'No', 'No', 'Yes', 'No', 'Day', 'Category B'),
(182, 'Twene Amanfo Senior High/ Tech ', 'Brong Ahafo Region', 'Sunyani Municipal', 'Sunyani', 'Mixed', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Day', 'Category B'),
(183, 'Sacred Heart Senior High,Nsoatre', 'Brong Ahafo Region', 'Sunyani West', 'Nsoatre', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(184, 'Odomaseman Senior High', 'Brong Ahafo Region', 'Sunyani West', 'Odomase', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(185, 'Menji Senior High', 'Brong Ahafo Region', 'Tain', 'Menji', 'Mixed', 'Yes', 'No', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Day', 'Category B'),
(186, 'Nsawkaw State Senior High', 'Brong Ahafo Region', 'Tain', 'Nsawkaw', 'Mixed', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(187, 'Badu Senior High/Tech', 'Brong Ahafo Region', 'Tain', 'Badu/Wenchi', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Day/Boarding', 'Category B'),
(188, 'Nkoranman Senior High ', 'Brong Ahafo Region', 'Tain', 'Seikwa', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(189, 'Istiquaama Senior High', 'Brong Ahafo Region', 'Wenchi Municipal', 'Wenchi', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(190, 'Wenchi Methodist Senior High', 'Brong Ahafo Region', 'Wenchi Municipal', 'Wenchi', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(191, 'Amanten Senior High', 'Bono East Region', 'Atebubu-Amantin', 'Amanten', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(192, 'New Longoro Community School [Dega]', 'Bono East Region', 'Kintampo North', 'New Longoro', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day', 'Category B'),
(193, 'Jema Senior High', 'Bono East Region', 'Kintampo South', 'Jema', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(194, 'Osei Bonsu Senior High', 'Bono East Region', 'Nkoranza North', 'Yefri', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(195, 'Kwabre Senior High', 'Bono East Region', 'Nkoranza South', 'Akuma', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(196, 'Nkoranza Senior High/Tech', 'Bono East Region', 'Nkoranza South', 'Nkoranza', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Day/Boarding', 'Category B'),
(197, 'Prang Senior High', 'Bono East Region', 'Pru', 'Prang', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(198, 'Our Lady Of Mount Carmel Girls Senior High,Techiman', 'Bono East Region', 'Techiman Municipal', 'Techiman', 'Girls', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(199, 'Yeboah Asuamah Senior High', 'Bono East Region', 'Techiman Municipal', 'Nsuta', 'Mixed', 'Yes', 'No', 'No', 'Yes', 'No', 'Yes', 'No', 'Day', 'Category B'),
(200, 'Techiman Senior High', 'Bono East Region', 'Techiman Municipal', 'Techiman', 'Mixed', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(201, 'Guakro Effah Senior High', 'Bono East Region', 'Techiman North', 'Offuman', 'Mixed', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Day', 'Category B'),
(202, 'Tuobodom Senior High/Tech', 'Bono East Region', 'Techiman North', 'Tuobodom', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Day/Boarding', 'Category B'),
(203, 'Ameyaw Akumfi Senior High/Tech', 'Bono East Region', 'Techiman North', 'Aworowa', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Day/Boarding', 'Category B'),
(204, 'St. Francis Seminary/Senior High,Buoyem', 'Bono East Region', 'Techiman North', 'Buoyem', 'Boys', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(205, 'Aggrey Memorial A.M.E. Zion Senior High', 'Central Region', 'Abura/Asebu/Kwamankese', 'Cape Coast', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(206, 'Swedru Senior High', 'Central Region', 'Agona East', 'Swedru', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(207, 'Nsaba Presby Senior High', 'Central Region', 'Agona East', 'Nsaba', 'Mixed', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(208, 'Nyakrom Senior High/Tech', 'Central Region', 'Agona West Municipal', 'Agona Nyakrom', 'Mixed', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Day/Boarding', 'Category B'),
(209, 'Siddiq Senior High', 'Central Region', 'Agona West Municipal', 'Agona Nyakrom', 'Mixed', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day', 'Category B'),
(210, 'Breman Asikuma Senior High', 'Central Region', 'Asikuma/Odoben/Brakwa', 'Breman Asikuma', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(211, 'Adankwaman Senior High', 'Central Region', 'Assin South', 'Assin Darmang', 'Mixed', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(212, 'Awutu Winton Senior High', 'Central Region', 'Awutu/Senya', 'Awutu', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Day', 'Category B'),
(213, 'Ghana National College', 'Central Region', 'Cape Coast Metro', 'Cape Coast', 'Mixed', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(214, 'Academy Of Christ The King,Cape Coast', 'Central Region', 'Cape Coast Metro', 'Cape Coast', 'Mixed', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day', 'Category B'),
(215, 'University Practice senior High', 'Central Region', 'Cape Coast Metro', 'Cape Coast', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(216, 'Winneba Senior High', 'Central Region', 'Effutu Municipal', 'Winneba', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(217, 'Ekumfi T.I Ahmadiiyya Senior High', 'Central Region', 'Ekumfi ', 'Esakyir', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Day/Boarding', 'Category B'),
(218, 'Apam Senior High', 'Central Region', 'Gomoa West', 'Apam', 'Mixed', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(219, 'Mozano Senior High', 'Central Region', 'Gomoa West', 'Mozano', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(220, 'Edinaman Senior High', 'Central Region', 'Komenda/Edina/Eguafo/Abirem', 'Elmina', 'Mixed', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(221, 'Methodist High School,Saltpond', 'Central Region', 'Mfantsiman Municipal', 'Saltpond', 'Mixed', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(222, 'Twifo Praso Senior High', 'Central Region', 'Twifo Ati-Morkwa', 'Twifo Praso', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(223, 'Twifo Hemang Senior High/Tech', 'Central Region', 'Twifo Hemang Lower Denkyira', 'Heman', 'Mixed', 'Yes', 'No', 'No', 'Yes', 'No', 'Yes', 'Yes', 'Day/Boarding', 'Category B'),
(224, 'Boa-Amponsem Senior High', 'Central Region', 'Upper Denkyira East Municipal', 'Dunkwa-On-Offin', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(225, 'Diaso Senior High', 'Central Region', 'Upper Denkyira West', 'Diaso', 'Mixed', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(226, 'Methodist Girls Senior High,Mamfe', 'Eastern Region', 'Akwapim North', 'Mamfe', 'Girls', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(227, 'Benkum Senior High', 'Eastern Region', 'Akwapim North', 'Larteh-Akwapim', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(228, 'Nifa Senior High', 'Eastern Region', 'Akwapim North', 'Adukrom', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(229, 'Adonten Senior High', 'Eastern Region', 'Akwapim South', 'Aburi', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(230, 'Akwamuman Senior High', 'Eastern Region', 'Asuogyaman', 'Atimpoku-Akosombo', 'Mixed', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(231, 'Kwabeng Anglican Senior High/Tech', 'Eastern Region', 'Atiwa', 'Kwabeng', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Day/Boarding', 'Category B'),
(232, 'St. Francis Senior High/Tech,Akim Oda', 'Eastern Region', 'Birim Central Municipal', 'Akim Oda', 'Mixed', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Day/Boarding', 'Category B'),
(233, 'Oda Senior High', 'Eastern Region', 'Birim Central Municipal', 'Akim Oda', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(234, 'Attafuah Senior High/Tech', 'Eastern Region', 'Birim Central Municipal', 'Akim Oda', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Day/Boarding', 'Category B'),
(235, 'St. Micheal\'s Senior High,Akoase[Nkawkaw]', 'Eastern Region', 'Birim North', 'Akoase,Nkawkaw', 'Mixed', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day', 'Category B'),
(236, 'Aperade Senior High/Tech', 'Eastern Region', 'Birim South', 'Akim Aperade', 'Mixed', 'Yes', 'No', 'No', 'Yes', 'No', 'Yes', 'No', 'Day', 'Category B'),
(237, 'Achiase Senior High', 'Eastern Region', 'Birim South', 'Achiase', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(238, 'Abuakwa State Collage', 'Eastern Region', 'East Akim Municipal', 'Kibi', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(239, 'Abuakwa State Collage', 'Eastern Region', 'East Akim Municipal', 'Kibi', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(240, 'Kibi Senior High/Tech', 'Eastern Region', 'East Akim Municipal', 'Kibi', 'Mixed', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Day/Boarding', 'Category B'),
(241, 'Savior Senior High,Osiem', 'Eastern Region', 'East Akim Municipal', 'Osiem', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(242, 'W.B.M.Zion Senior High,Old Tafo', 'Eastern Region', 'East Akim Municipal', 'Old Tafo', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(243, 'Presby Senior High,Begoro', 'Eastern Region', 'Fanteakwa', 'Begoro', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(244, 'Kade Senior High/Tech', 'Eastern Region', 'Kwaebibirem', 'Kade', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Day/Boarding', 'Category B'),
(245, 'Abetifi Presby Senior High', 'Eastern Region', 'Kwahu East', 'Abetifi', 'Mixed', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(246, 'Nkwatia Presby Senior High/Community', 'Eastern Region', 'Kwahu East', 'Nkwatia', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(247, 'Kwahu Tafo Senior High', 'Eastern Region', 'Kwahu East', 'Kwahu Tafo', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(248, 'St. Dominic\'s Senior High/Tech,Pepease', 'Eastern Region', 'Kwahu East', 'Pepease', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Day/Boarding', 'Category B'),
(249, 'Mpraeso Senior High', 'Eastern Region', 'kwahu South', 'Mpraeso', 'Mixed', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(250, 'kwahu Ridge Senior HIgh', 'Eastern Region', 'kwahu South', 'Obo-Kwahu', 'Mixed', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(251, 'Nkawkaw Senior High', 'Eastern Region', 'Kwahu West Municipal', 'Nkawkaw', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(252, 'Manya Krobo Senior High', 'Eastern Region', 'Lower Manya', 'New Nuaso', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(253, 'Pentecost Senior High,Kofordua', 'Eastern Region', 'New Juaben ', 'Koforidua', 'Mixed', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(254, 'S.D.A Senior High,koforidua', 'Eastern Region', 'New Juaben Municipal', 'Asokore-Koforidua', 'Mixed', 'Yes', 'No', 'No', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B'),
(255, 'Oyoko Methodist Senior High', 'Eastern Region', 'New Juaben Municipal', 'Oyoko', 'Mixed', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'Day/Boarding', 'Category B');

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
