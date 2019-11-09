-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 09, 2019 at 03:33 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `danhba`
--

-- --------------------------------------------------------

--
-- Table structure for table `danhba`
--

DROP TABLE IF EXISTS `danhba`;
CREATE TABLE IF NOT EXISTS `danhba` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `sodienthoai` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `danhba`
--

INSERT INTO `danhba` (`id`, `ten`, `email`, `sodienthoai`) VALUES
(1, 'Quy', 'quyproi51vn@gmail.com', '0974922032'),
(2, 'Quy', 'quyproi51@gmail.com', '0974922032'),
(4, 'hue', 'hue@gmail.com', '0974922032');

-- --------------------------------------------------------

--
-- Table structure for table `danhba_nhan`
--

DROP TABLE IF EXISTS `danhba_nhan`;
CREATE TABLE IF NOT EXISTS `danhba_nhan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `danh_ba_id` int(11) NOT NULL,
  `nhan_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `danhba_nhan_ibfk_1` (`danh_ba_id`),
  KEY `danhba_nhan_ibfk_2` (`nhan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `danhba_nhan`
--

INSERT INTO `danhba_nhan` (`id`, `danh_ba_id`, `nhan_id`) VALUES
(41, 1, 1),
(42, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhan`
--

DROP TABLE IF EXISTS `nhan`;
CREATE TABLE IF NOT EXISTS `nhan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nhan`
--

INSERT INTO `nhan` (`id`, `ten`) VALUES
(1, 'ban be'),
(21, 'quy'),
(22, 'Quy');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `danhba_nhan`
--
ALTER TABLE `danhba_nhan`
  ADD CONSTRAINT `danhba_nhan_ibfk_1` FOREIGN KEY (`danh_ba_id`) REFERENCES `danhba` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `danhba_nhan_ibfk_2` FOREIGN KEY (`nhan_id`) REFERENCES `nhan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
