-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 24, 2017 at 06:54 PM
-- Server version: 5.5.54-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dawood_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE IF NOT EXISTS `trip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `geo_cordinates` text NOT NULL,
  `status` varchar(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `trip_images`
--

CREATE TABLE IF NOT EXISTS `trip_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `trip_id` int(11) NOT NULL,
  `images` text NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `device_id` varchar(156) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `district` varchar(156) NOT NULL,
  `city` varchar(156) NOT NULL,
  `track_status` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `role` int(10) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `device_id` (`device_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf16 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `device_id`, `phone_number`, `district`, `city`, `track_status`, `status`, `role`, `created_on`, `updated_on`) VALUES
(1, '1234', '7207109057', 'Hyderabad', 'Bowenpally', 1, 1, 1, '2017-03-23 00:00:00', '2017-03-23 00:00:00'),
(2, '800', '8099123612', 'Adilabad', 'Jangam', 1, 1, 2, '2017-03-23 00:00:00', '2017-03-23 00:00:00'),
(3, '801', '9866542725', 'adilabad', 'mancherial', 1, 1, 2, '2017-03-23 00:00:00', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
