-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2024 at 10:56 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtaskease`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblaccount`
--

CREATE TABLE `tblaccount` (
  `accountid` int(6) NOT NULL,
  `userid` int(6) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `emailaddress` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `confirmedpassword` varchar(30) DEFAULT NULL,
  `creationdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblalltask`
--

CREATE TABLE `tblalltask` (
  `allid` int(6) NOT NULL,
  `sectionid` int(6) DEFAULT NULL,
  `taskid` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbldeletedtask`
--

CREATE TABLE `tbldeletedtask` (
  `deletedid` int(6) NOT NULL,
  `sectionid` int(6) DEFAULT NULL,
  `taskid` int(6) DEFAULT NULL,
  `deleteddate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblguest`
--

CREATE TABLE `tblguest` (
  `guestid` int(6) NOT NULL,
  `accessdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblimportanttask`
--

CREATE TABLE `tblimportanttask` (
  `importantid` int(6) NOT NULL,
  `sectionid` int(6) DEFAULT NULL,
  `taskid` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblstatus`
--

CREATE TABLE `tblstatus` (
  `statusid` int(6) NOT NULL,
  `statusname` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbltask`
--

CREATE TABLE `tbltask` (
  `taskid` int(6) NOT NULL,
  `statusid` int(6) DEFAULT NULL,
  `taskname` varchar(100) DEFAULT NULL,
  `taskdate` date DEFAULT NULL,
  `taskdescription` text DEFAULT NULL,
  `taskcreationdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbltaskease`
--

CREATE TABLE `tbltaskease` (
  `taskeaseid` int(6) NOT NULL,
  `accountid` int(6) DEFAULT NULL,
  `userid` int(6) DEFAULT NULL,
  `taskid` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbltaskstatus`
--

CREATE TABLE `tbltaskstatus` (
  `taskstatus` int(6) NOT NULL,
  `taskid` int(6) DEFAULT NULL,
  `statusid` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `userid` int(6) NOT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `usertype` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbluseraccount`
--

CREATE TABLE `tbluseraccount` (
  `useraccountid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `accountid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblaccount`
--
ALTER TABLE `tblaccount`
  ADD PRIMARY KEY (`accountid`);

--
-- Indexes for table `tblalltask`
--
ALTER TABLE `tblalltask`
  ADD PRIMARY KEY (`allid`);

--
-- Indexes for table `tbldeletedtask`
--
ALTER TABLE `tbldeletedtask`
  ADD PRIMARY KEY (`deletedid`);

--
-- Indexes for table `tblguest`
--
ALTER TABLE `tblguest`
  ADD PRIMARY KEY (`guestid`);

--
-- Indexes for table `tblimportanttask`
--
ALTER TABLE `tblimportanttask`
  ADD PRIMARY KEY (`importantid`);

--
-- Indexes for table `tblstatus`
--
ALTER TABLE `tblstatus`
  ADD PRIMARY KEY (`statusid`);

--
-- Indexes for table `tbltask`
--
ALTER TABLE `tbltask`
  ADD PRIMARY KEY (`taskid`);

--
-- Indexes for table `tbltaskease`
--
ALTER TABLE `tbltaskease`
  ADD PRIMARY KEY (`taskeaseid`);

--
-- Indexes for table `tbltaskstatus`
--
ALTER TABLE `tbltaskstatus`
  ADD PRIMARY KEY (`taskstatus`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  ADD PRIMARY KEY (`useraccountid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblaccount`
--
ALTER TABLE `tblaccount`
  MODIFY `accountid` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblalltask`
--
ALTER TABLE `tblalltask`
  MODIFY `allid` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbldeletedtask`
--
ALTER TABLE `tbldeletedtask`
  MODIFY `deletedid` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblguest`
--
ALTER TABLE `tblguest`
  MODIFY `guestid` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblimportanttask`
--
ALTER TABLE `tblimportanttask`
  MODIFY `importantid` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblstatus`
--
ALTER TABLE `tblstatus`
  MODIFY `statusid` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltask`
--
ALTER TABLE `tbltask`
  MODIFY `taskid` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltaskease`
--
ALTER TABLE `tbltaskease`
  MODIFY `taskeaseid` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltaskstatus`
--
ALTER TABLE `tbltaskstatus`
  MODIFY `taskstatus` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `userid` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  MODIFY `useraccountid` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
