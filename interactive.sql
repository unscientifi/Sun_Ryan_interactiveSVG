-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 01, 2019 at 07:15 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `interactive`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data`
--

CREATE TABLE `tbl_data` (
  `ID` int(11) NOT NULL,
  `Program` varchar(50) NOT NULL,
  `Requirements` varchar(20) NOT NULL,
  `Graduation Rates` varchar(10) NOT NULL,
  `Employment Rates` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_data`
--

INSERT INTO `tbl_data` (`ID`, `Program`, `Requirements`, `Graduation Rates`, `Employment Rates`) VALUES
(1, 'Management and Organizational Studies', 'Low - Mid 80s', '85.6%', '87.2%'),
(2, 'Arts, Soc Sci, Kinesiology, FIMS', 'Low - Mid 80s', '83.4%', '87.9%'),
(3, 'Engineering', 'High 80s', '82.9%', '82.5%'),
(4, 'Music', 'Low - Mid 80s', '81.3%', '94.1%'),
(5, 'Nursing', 'High 80s - Low 90s', '89.6%', '97.3%'),
(6, 'Science, B Med Sci, BHSc', 'High 80s - Low 90s', '83.3%', '84.7%'),
(7, 'Business', '', '100%', '96.2%'),
(8, 'Dentistry', '', '96.2%', '100%'),
(9, 'Education', '', '99.6%', '88.3%'),
(10, 'Law', '', '96%', '100%'),
(11, 'Medicine', '', '100%', '100%');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_data`
--
ALTER TABLE `tbl_data`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_data`
--
ALTER TABLE `tbl_data`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
