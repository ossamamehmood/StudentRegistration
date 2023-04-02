-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2023 at 08:41 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentregistration`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'ossamamehmood', '473dd6bde4c703b493e48b2b9fed6190', '2020-01-24 16:21:18', '26-03-2023 11:15:10 PM');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `courseCode` varchar(255) NOT NULL,
  `courseName` varchar(255) NOT NULL,
  `courseUnit` varchar(255) NOT NULL,
  `noofSeats` int(11) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `courseCode`, `courseName`, `courseUnit`, `noofSeats`, `creationDate`, `updationDate`) VALUES
(1, 'CSC496', 'Data Warehousing and Data Mining', '3', 35, '2023-03-26 12:02:05', ''),
(2, 'CSC461', 'Introduction to Data Science', '3', 35, '2023-03-26 12:02:51', ''),
(3, 'CSC475', 'Numerical Computing', '3', 35, '2023-03-26 12:03:14', ''),
(4, 'CSE498', 'Senior Design Project I', '2', 35, '2023-03-26 12:03:49', ''),
(5, 'CSE455', 'Software Testing', '3', 35, '2023-03-26 12:04:18', '');

-- --------------------------------------------------------

--
-- Table structure for table `courseenrolls`
--

CREATE TABLE `courseenrolls` (
  `id` int(11) NOT NULL,
  `studentRegno` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `session` int(11) NOT NULL,
  `department` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `semester` int(11) NOT NULL,
  `course` int(11) NOT NULL,
  `enrollDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courseenrolls`
--

INSERT INTO `courseenrolls` (`id`, `studentRegno`, `pincode`, `session`, `department`, `year`, `semester`, `course`, `enrollDate`) VALUES
(4, 'sp20-bse-069', '000000', 1, 1, 4, 7, 1, '2023-03-26 12:51:09'),
(5, 'sp20-bse-069', '000000', 1, 1, 4, 7, 2, '2023-03-26 12:51:20'),
(6, 'sp20-bse-069', '000000', 1, 1, 4, 7, 3, '2023-03-26 12:51:33'),
(7, 'sp20-bse-069', '000000', 1, 1, 4, 7, 4, '2023-03-26 12:51:48'),
(8, 'sp20-bse-069', '000000', 1, 1, 4, 7, 5, '2023-03-26 12:52:30');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department`, `creationDate`) VALUES
(1, 'Computer Science', '2023-03-26 12:00:24'),
(2, 'Electrical Engineering', '2023-03-26 16:29:41'),
(3, 'Civil Engineering', '2023-03-26 16:29:55'),
(4, 'Mathematics', '2023-03-26 16:30:05'),
(5, 'Management Sciences', '2023-03-26 16:30:15'),
(6, 'Mechanical Engineering', '2023-03-26 16:30:39');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id` int(11) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id`, `semester`, `creationDate`, `updationDate`) VALUES
(1, '1st', '2023-03-26 12:48:28', ''),
(2, '2nd', '2023-03-26 12:48:39', ''),
(3, '3rd', '2023-03-26 12:48:50', ''),
(4, '4th', '2023-03-26 12:49:00', ''),
(5, '5th', '2023-03-26 12:49:08', ''),
(6, '6th', '2023-03-26 12:49:16', ''),
(7, '7th', '2023-03-26 12:00:12', ''),
(8, '8th', '2023-03-26 12:49:26', '');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `session` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `session`, `creationDate`) VALUES
(1, 'Spring 2020', '2023-03-26 11:59:40'),
(2, 'Fall 2020', '2023-03-26 16:27:35'),
(3, 'Spring 2021', '2023-03-26 16:27:46'),
(4, 'Fall 2021', '2023-03-26 16:28:01'),
(5, 'Spring 2022', '2023-03-26 16:28:19'),
(6, 'Fall 2022', '2023-03-26 16:28:31'),
(8, 'Spring 2023', '2023-03-26 16:29:06');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `StudentRegno` varchar(255) NOT NULL,
  `studentPhoto` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `studentName` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `session` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `cgpa` decimal(10,2) NOT NULL,
  `creationdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentRegno`, `studentPhoto`, `password`, `studentName`, `pincode`, `session`, `department`, `semester`, `cgpa`, `creationdate`, `updationDate`) VALUES
('sp20-bse-047', 'hamzaaltaf.jpg', '8e52415757a1e260a002eafe55d2bedd', 'Hamza Altaf', '000000', '', '', '', '3.00', '2023-03-26 12:07:07', ''),
('sp20-bse-069', 'ossamamehmood.jpg', '473dd6bde4c703b493e48b2b9fed6190', 'Ossama Mehmood', '000000', '', '', '', '3.11', '2023-03-26 12:06:11', '');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `studentRegno` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `studentRegno`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'sp20-bse-069', 0x3a3a3100000000000000000000000000, '2023-03-26 12:08:07', '26-03-2023 06:04:37 PM', 1),
(2, 'sp20-bse-069', 0x3a3a3100000000000000000000000000, '2023-03-26 12:34:46', '26-03-2023 06:10:43 PM', 1),
(3, 'sp20-bse-069', 0x3a3a3100000000000000000000000000, '2023-03-26 12:40:50', '26-03-2023 06:23:20 PM', 1),
(4, 'sp20-bse-047', 0x3a3a3100000000000000000000000000, '2023-03-26 12:53:42', '26-03-2023 06:37:43 PM', 1),
(5, 'sp20-bse-069', 0x3a3a3100000000000000000000000000, '2023-03-26 13:58:12', '26-03-2023 07:28:48 PM', 1),
(6, 'sp20-bse-069', 0x3a3a3100000000000000000000000000, '2023-03-26 14:58:29', '26-03-2023 08:29:25 PM', 1),
(7, 'sp20-bse-069', 0x3a3a3100000000000000000000000000, '2023-03-26 14:59:36', '26-03-2023 08:31:25 PM', 1),
(8, 'sp20-bse-069', 0x3a3a3100000000000000000000000000, '2023-03-26 15:05:23', '26-03-2023 08:36:10 PM', 1),
(9, 'sp20-bse-069', 0x3a3a3100000000000000000000000000, '2023-03-26 15:20:55', '', 1),
(10, 'sp20-bse-069', 0x3a3a3100000000000000000000000000, '2023-03-26 15:55:45', '26-03-2023 09:28:05 PM', 1),
(11, 'sp20-bse-069', 0x3a3a3100000000000000000000000000, '2023-03-26 16:10:45', '26-03-2023 09:44:40 PM', 1),
(12, 'sp20-bse-069', 0x3a3a3100000000000000000000000000, '2023-03-26 16:14:49', '26-03-2023 09:46:00 PM', 1),
(13, 'sp20-bse-069', 0x3a3a3100000000000000000000000000, '2023-03-26 16:18:06', '26-03-2023 09:50:32 PM', 1),
(14, 'sp20-bse-069', 0x3a3a3100000000000000000000000000, '2023-03-26 16:32:27', '26-03-2023 10:06:55 PM', 1),
(15, 'sp20-bse-069', 0x3a3a3100000000000000000000000000, '2023-03-26 16:37:03', '26-03-2023 10:12:51 PM', 1),
(16, 'sp20-bse-069', 0x3a3a3100000000000000000000000000, '2023-03-26 16:57:42', '26-03-2023 10:28:47 PM', 1),
(17, 'sp20-bse-069', 0x3a3a3100000000000000000000000000, '2023-03-26 17:12:10', '26-03-2023 10:42:36 PM', 1),
(18, 'sp20-bse-069', 0x3a3a3100000000000000000000000000, '2023-03-26 17:12:47', '26-03-2023 10:42:48 PM', 1),
(19, 'sp20-bse-069', 0x3a3a3100000000000000000000000000, '2023-03-26 17:20:28', '26-03-2023 10:50:39 PM', 1),
(20, 'sp20-bse-069', 0x3a3a3100000000000000000000000000, '2023-03-26 17:21:27', '26-03-2023 10:51:30 PM', 1),
(21, 'sp20-bse-069', 0x3a3a3100000000000000000000000000, '2023-03-26 17:21:40', '26-03-2023 10:51:56 PM', 1),
(22, 'sp20-bse-069', 0x3a3a3100000000000000000000000000, '2023-03-26 17:28:09', '26-03-2023 10:59:20 PM', 1),
(23, 'sp20-bse-069', 0x3a3a3100000000000000000000000000, '2023-03-26 17:29:28', '26-03-2023 11:05:33 PM', 1),
(24, 'sp20-bse-069', 0x3a3a3100000000000000000000000000, '2023-03-26 17:35:39', '26-03-2023 11:05:54 PM', 1),
(25, 'sp20-bse-069', 0x3a3a3100000000000000000000000000, '2023-03-26 17:42:46', '26-03-2023 11:12:55 PM', 1),
(26, 'sp20-bse-069', 0x3a3a3100000000000000000000000000, '2023-03-26 17:54:26', '26-03-2023 11:25:56 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `year`
--

CREATE TABLE `year` (
  `id` int(11) NOT NULL,
  `year` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `year`
--

INSERT INTO `year` (`id`, `year`, `creationDate`) VALUES
(1, '1st Year', '2020-06-03 14:03:20'),
(2, '2nd Year', '2020-06-03 14:03:20'),
(3, '3rd Year', '2020-06-03 14:03:32'),
(4, 'Final Year', '2020-06-03 14:03:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentRegno`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `year`
--
ALTER TABLE `year`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `year`
--
ALTER TABLE `year`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
