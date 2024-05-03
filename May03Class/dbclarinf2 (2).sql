-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2024 at 03:57 AM
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
-- Table structure for table `tbltask`
--

CREATE TABLE `tbltask` (
  `taskID` int(6) NOT NULL,
  `taskdescription` text NOT NULL,
  `taskname` varchar(100) NOT NULL,
  `taskdate` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbltask`
--

INSERT INTO `tbltask` (`taskID`, `taskdescription`, `taskname`, `taskdate`) VALUES
(40, 'Creating a task...', 'Task Trial 2', '05-17-2024'),
(41, 'This is task 1!', 'Task Trial 1', '05-23-2024'),
(42, 'This is task 2!', 'Task Trial 3', '05-22-2024');

-- --------------------------------------------------------

--
-- Table structure for table `tbltaskdeleted`
--

CREATE TABLE `tbltaskdeleted` (
  `id` int(11) NOT NULL,
  `taskname` varchar(100) NOT NULL,
  `taskdescription` text DEFAULT NULL,
  `taskdate` varchar(100) NOT NULL,
  `deleted_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbltaskdeleted`
--

INSERT INTO `tbltaskdeleted` (`id`, `taskname`, `taskdescription`, `taskdate`, `deleted_date`) VALUES
(15, 'Task Trial 6', 'This is the task trial number 1!', '05-01-2024', '2024-05-02 21:21:22'),
(16, 'Trial 2', 'This is the task trial number 2!', '05-02-2024', '2024-05-02 21:23:41'),
(21, 'Trial 2', 'This is the task trial number 2!', '05-02-2024', '2024-05-03 00:30:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbluseraccount`
--

CREATE TABLE `tbluseraccount` (
  `acctid` int(5) NOT NULL,
  `emailadd` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `confirmedpassword` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluseraccount`
--

INSERT INTO `tbluseraccount` (`acctid`, `emailadd`, `username`, `password`, `confirmedpassword`) VALUES
(1, 'existing@gmail.com', 'existing_username', '$2y$10$qdXD6PcU6bqv3', '12345'),
(2, 'jake.clarin@cit.edu', 'jake_clarin', '$2y$10$5L1b7qjorKMOn', 'jik123'),
(3, 'jik26@gmail.com', 'jikjik', '$2y$10$EU6cOqbXz95CD', 'jikjik'),
(4, 'jake26@gmail.com', 'jik26', '$2y$10$k/LgYgOyvSgO/', 'jik123');

-- --------------------------------------------------------

--
-- Table structure for table `tbluserprofile`
--

CREATE TABLE `tbluserprofile` (
  `userid` int(5) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluserprofile`
--

INSERT INTO `tbluserprofile` (`userid`, `firstname`, `lastname`) VALUES
(1, 'existing', 'existing'),
(2, 'Jake', 'Clarin'),
(3, 'Jake', 'Clarin'),
(4, 'Jake', 'Clarin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbltask`
--
ALTER TABLE `tbltask`
  ADD PRIMARY KEY (`taskID`);

--
-- Indexes for table `tbltaskdeleted`
--
ALTER TABLE `tbltaskdeleted`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  ADD PRIMARY KEY (`acctid`);

--
-- Indexes for table `tbluserprofile`
--
ALTER TABLE `tbluserprofile`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbltask`
--
ALTER TABLE `tbltask`
  MODIFY `taskID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tbltaskdeleted`
--
ALTER TABLE `tbltaskdeleted`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  MODIFY `acctid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbluserprofile`
--
ALTER TABLE `tbluserprofile`
  MODIFY `userid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
