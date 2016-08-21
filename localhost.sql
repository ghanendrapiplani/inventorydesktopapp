-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 12, 2013 at 08:57 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `factorydb`
--
CREATE DATABASE `factorydb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `factorydb`;

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE IF NOT EXISTS `bill` (
  `billid` int(100) NOT NULL,
  `dealer` varchar(100) NOT NULL,
  `products` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`billid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`billid`, `dealer`, `products`, `qty`, `total`, `phone`, `date`) VALUES
(1, 'sdfs', 'eee,eee,www,', '3,4,4,', '10519.0', '12313', '2013-07-08'),
(2, 'rohit', 'eee,', '10,', '2330.0', '9999999999', '2013-07-09'),
(3, 'ss', 'eee,', '10,', '2330.0', '5555555555', '2013-07-10'),
(4, 'ladoo', 'Pipe Ranch,', '10,', '5000.0', '1234556165', '2013-07-10'),
(5, 'hh', 'Pipe Ranch,www,', '10,10,', '27220.0', '9999999999', '2013-07-10'),
(6, 'radhika', 'Pipe Ranch,', '20,', '10000.0', '8888888888', '2013-07-10'),
(7, 'sukah', 'Pipe Ranch,', '10,', '5000.0', '6666666666', '2013-07-11'),
(9, 'nisha sallan', 'eee,', '1,', '233.0', '2000000000', '2013-07-11'),
(11, 'wsse3', 'Pipe Ranch,', '190,', '95000.0', '3333333333', '2013-07-12'),
(12, 'Sukhil', 'eee,', '8,', '1864.0', '9999999999', '2013-07-12');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category1` varchar(100) NOT NULL,
  `subcategory` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category1`, `subcategory`) VALUES
('Tata', '0.1 mm'),
('Layland', '5 kg'),
('Layland', '10 kg'),
('Sawraj Mazada', '0.5 mm'),
('Maruti', '10 mm'),
('Renault', '10 mm'),
('Mahindra', '10 mm');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `company` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company`) VALUES
('Maruti'),
('Renault'),
('Mahindra');

-- --------------------------------------------------------

--
-- Table structure for table `createuser`
--

CREATE TABLE IF NOT EXISTS `createuser` (
  `username` varchar(100) NOT NULL,
  `usertype` varchar(100) NOT NULL,
  `name1` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `createuser`
--

INSERT INTO `createuser` (`username`, `usertype`, `name1`, `password`) VALUES
('rohit', 'Admin', 'Rohit Sharma', '123'),
('raj', 'Admin', 'raj rani', '123'),
('radhu', 'Manager', 'Radhika Sharma', '123'),
('sophiyaa', 'Admin', 'Sophiyaa Sharma', '8146855440');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `ID` int(4) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `usertype` varchar(100) NOT NULL,
  `PHONE` varchar(100) NOT NULL,
  `GENDER` varchar(20) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`ID`, `NAME`, `usertype`, `PHONE`, `GENDER`, `ADDRESS`, `dob`) VALUES
(1, 'shaliza', 'SuperVisor', '6666666666', 'Female', 'Jammu', '1981-07-03'),
(2, 'tuy', 'Security Guard', '5555555555', 'Male', 'aj', '1981-06-05'),
(3, 'Satyam', 'Foreman', '9876655686', 'Male', 'Gurdaspur', '1978-10-03'),
(4, 'Suman', 'Workers', '9222111110', 'Male', 'Hushiarpur', '2006-05-04'),
(5, 'Shivani', 'SuperVisor', '8145698793', 'Female', 'Chennai', '1992-06-04');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `items` varchar(100) NOT NULL,
  `rates` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `subcategory` varchar(100) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  PRIMARY KEY (`items`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`items`, `rates`, `category`, `subcategory`, `quantity`) VALUES
('eee', '233', 'www', 'eee', '30.0'),
('Pipe Ranch', '500', 'Tata', '0.1 mm', '1500.0'),
('www', '2222', 'www', 'www', '140.0');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
