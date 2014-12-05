-- phpMyAdmin SQL Dump
-- version 4.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 05, 2014 at 11:40 AM
-- Server version: 5.6.19
-- PHP Version: 5.5.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `contact_manager`
--
CREATE DATABASE IF NOT EXISTS `contact_manager` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `contact_manager`;

-- --------------------------------------------------------

--
-- Table structure for table `IDENTITY`
--

DROP TABLE IF EXISTS `IDENTITY`;
CREATE TABLE IF NOT EXISTS `IDENTITY` (
`id` int(11) NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `IDENTITY`
--

INSERT INTO `IDENTITY` (`id`, `first_name`, `last_name`, `phone`) VALUES
(10, 'Kate', 'Beckett', '419-555-9876'),
(11, 'Peggy', 'Carter', '419-555-8126'),
(15, 'Harley', 'Quinn', '419-555-2313'),
(17, 'Nanna', 'Bryndis', '419-555-9876'),
(19, 'Diana', 'Prince', '419-555-2773'),
(20, 'Marina', 'Diamandis', '419-555-2662');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `IDENTITY`
--
ALTER TABLE `IDENTITY`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `IDENTITY`
--
ALTER TABLE `IDENTITY`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
