-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2024 at 04:32 PM
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
-- Database: `dbbitayof2`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblimportanttask`
--

CREATE TABLE `tblimportanttask` (
  `importantID` int(11) NOT NULL,
  `taskID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbltask`
--

CREATE TABLE `tbltask` (
  `taskID` int(11) NOT NULL,
  `taskdescription` text NOT NULL,
  `taskname` varchar(100) NOT NULL,
  `taskdate` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbltask`
--

INSERT INTO `tbltask` (`taskID`, `taskdescription`, `taskname`, `taskdate`) VALUES
(69, 'Task', 'Task Name 2', '05-25-2024');

-- --------------------------------------------------------

--
-- Table structure for table `tbltaskdeleted`
--

CREATE TABLE `tbltaskdeleted` (
  `deletedid` int(11) NOT NULL,
  `taskname` varchar(255) NOT NULL,
  `taskdescription` text DEFAULT NULL,
  `taskdate` varchar(30) NOT NULL,
  `deleted_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbltaskdeleted`
--

INSERT INTO `tbltaskdeleted` (`deletedid`, `taskname`, `taskdescription`, `taskdate`, `deleted_date`) VALUES
(41, 'Test Task Name', 'Task', '05-25-2024', '2024-05-06 14:11:17'),
(42, 'Trial 1', 'this is just a trial run', '06-08-2024', '2024-05-06 14:25:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbluseraccount`
--

CREATE TABLE `tbluseraccount` (
  `acctid` int(5) NOT NULL,
  `emailadd` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluseraccount`
--

INSERT INTO `tbluseraccount` (`acctid`, `emailadd`, `username`, `password`) VALUES
(31, 'brix@gmail.com', 'brix1234', '$2y$10$uZozLLmqTeEj6RRVmVRVFO/2DXiQX5YKIws9drv1AYAu9CeNU/X2G'),
(32, 'email@gmail.com', 'sato1', '$2y$10$udr9WAgIKkQPI520bARM5O.5pQn1wcw8J.jKdpFTTYrqsksIKs/HC');

-- --------------------------------------------------------

--
-- Table structure for table `tbluserprofile`
--

CREATE TABLE `tbluserprofile` (
  `userid` int(5) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `acctid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluserprofile`
--

INSERT INTO `tbluserprofile` (`userid`, `firstname`, `lastname`, `acctid`) VALUES
(60, 'brix', 'test', 31),
(61, 'sato', 'sat', 32);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblimportanttask`
--
ALTER TABLE `tblimportanttask`
  ADD PRIMARY KEY (`importantID`),
  ADD KEY `taskID` (`taskID`);

--
-- Indexes for table `tbltask`
--
ALTER TABLE `tbltask`
  ADD PRIMARY KEY (`taskID`);

--
-- Indexes for table `tbltaskdeleted`
--
ALTER TABLE `tbltaskdeleted`
  ADD PRIMARY KEY (`deletedid`);

--
-- Indexes for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  ADD PRIMARY KEY (`acctid`);

--
-- Indexes for table `tbluserprofile`
--
ALTER TABLE `tbluserprofile`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `fk_acctid` (`acctid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblimportanttask`
--
ALTER TABLE `tblimportanttask`
  MODIFY `importantID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbltask`
--
ALTER TABLE `tbltask`
  MODIFY `taskID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `tbltaskdeleted`
--
ALTER TABLE `tbltaskdeleted`
  MODIFY `deletedid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  MODIFY `acctid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbluserprofile`
--
ALTER TABLE `tbluserprofile`
  MODIFY `userid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblimportanttask`
--
ALTER TABLE `tblimportanttask`
  ADD CONSTRAINT `tblimportanttask_ibfk_1` FOREIGN KEY (`taskID`) REFERENCES `tbltask` (`taskID`);

--
-- Constraints for table `tbluserprofile`
--
ALTER TABLE `tbluserprofile`
  ADD CONSTRAINT `fk_acctid` FOREIGN KEY (`acctid`) REFERENCES `tbluseraccount` (`acctid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
