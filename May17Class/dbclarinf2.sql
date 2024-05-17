-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2024 at 03:09 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbclarinf2`
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
  `taskdate` varchar(30) NOT NULL,
  `isimportant` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbltask`
--

INSERT INTO `tbltask` (`taskID`, `taskdescription`, `taskname`, `taskdate`, `isimportant`) VALUES
(139, 'This is task 1!', 'Task Trial 1', '05-01-2024', 0),
(144, 'This is task 6!', 'Task Trial 6', '05-06-2024', 1),
(145, 'This is task 7!', 'Task Trial 7', '05-07-2024', 0),
(146, 'This is task 8!', 'Task Trial 8', '05-08-2024', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbltaskdeleted`
--

CREATE TABLE `tbltaskdeleted` (
  `deletedid` int(11) NOT NULL,
  `taskname` varchar(255) NOT NULL,
  `taskdescription` text DEFAULT NULL,
  `taskdate` varchar(30) NOT NULL,
  `deleted_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbltaskdeleted`
--

INSERT INTO `tbltaskdeleted` (`deletedid`, `taskname`, `taskdescription`, `taskdate`, `deleted_date`, `is_active`) VALUES
(81, 'Test', 'DELETED', '06-06-2024', '2024-05-16 01:33:20', 0),
(84, 'Test', 'test', '05-23-2024', '2024-05-16 01:38:28', 0),
(91, 'Test1234', 'test', '06-06-2024', '2024-05-17 00:26:53', 0),
(92, 'Test2', 'test22', '06-07-2024', '2024-05-17 00:50:53', 0),
(93, 'Test', 'test', '05-31-2024', '2024-05-17 00:50:55', 0),
(94, 'Test123', 'test123', '06-07-2024', '2024-05-17 00:50:56', 0),
(95, 'test1', 'test', '05-09-2024', '2024-05-17 00:51:00', 0),
(96, 'Task Trial 5', 'This is task 5!', '05-05-2024', '2024-05-17 00:54:57', 1),
(97, 'Task Trial 4', 'This is task 4!', '05-04-2024', '2024-05-17 00:55:00', 1),
(98, 'Task Trial 3', 'This is task 3!', '05-03-2024', '2024-05-17 00:55:02', 1),
(99, 'Task Trial 2', 'This is task 2!', '05-02-2024', '2024-05-17 00:55:08', 1);

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
(31, 'jake.clarin@gmail.com', 'jikjik', '$2y$10$uZozLLmqTeEj6RRVmVRVFO/2DXiQX5YKIws9drv1AYAu9CeNU/X2G'),
(32, 'existing@gmail.com', 'existing', '$2y$10$udr9WAgIKkQPI520bARM5O.5pQn1wcw8J.jKdpFTTYrqsksIKs/HC');

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
(60, 'Jake', 'Clarin', 31),
(61, 'tester_fn', 'tester_ln', 32);

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
  MODIFY `taskID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `tbltaskdeleted`
--
ALTER TABLE `tbltaskdeleted`
  MODIFY `deletedid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

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
