-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2018 at 09:35 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl1`
--

CREATE TABLE `tbl1` (
  `id` int(3) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl1`
--

INSERT INTO `tbl1` (`id`, `name`) VALUES
(1, 'natwar'),
(2, 'ameen'),
(3, 'irshad'),
(4, 'shahbaz');

-- --------------------------------------------------------

--
-- Table structure for table `tbl2`
--

CREATE TABLE `tbl2` (
  `id` int(2) NOT NULL,
  `tbl1_id` int(2) NOT NULL,
  `age` varchar(20) DEFAULT NULL,
  `age2` varchar(50) NOT NULL,
  `age3` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl2`
--

INSERT INTO `tbl2` (`id`, `tbl1_id`, `age`, `age2`, `age3`) VALUES
(1, 1, '25', '5', '4'),
(2, 2, NULL, '6', ''),
(3, 3, NULL, '', '6'),
(4, 4, '20', '10', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_one`
--

CREATE TABLE `tbl_one` (
  `id` int(3) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_one`
--

INSERT INTO `tbl_one` (`id`, `name`, `address`, `status`) VALUES
(1, 'ram', 'mathura Utterpradesh', 'Active'),
(2, 'mohan', 'Mathura', 'Active'),
(3, '', '''"''DELETE FROM `tbl_one` WHERE id=2''"''', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl1`
--
ALTER TABLE `tbl1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl2`
--
ALTER TABLE `tbl2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_one`
--
ALTER TABLE `tbl_one`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl1`
--
ALTER TABLE `tbl1`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl2`
--
ALTER TABLE `tbl2`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_one`
--
ALTER TABLE `tbl_one`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
