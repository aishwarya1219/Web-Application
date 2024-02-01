-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2023 at 11:29 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinecourse2`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'Test@123', '2022-01-31 16:21:18', '2023-10-26 05:02:20'),
(2, 'admin123', '1234', '2023-08-30 05:14:45', '2023-10-19 04:44:37');

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` int(11) NOT NULL,
  `courseID` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `deadline` datetime NOT NULL,
  `pdf_path` varchar(255) DEFAULT NULL,
  `assign_path` varchar(255) NOT NULL,
  `is_verified` tinyint(1) DEFAULT 0,
  `marks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`id`, `courseID`, `title`, `description`, `deadline`, `pdf_path`, `assign_path`, `is_verified`, `marks`) VALUES
(34, NULL, '', '', '0000-00-00 00:00:00', NULL, 'assignment_uploads/resume.ishu.pdf', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `courseCode` varchar(255) DEFAULT NULL,
  `courseName` varchar(255) DEFAULT NULL,
  `courseUnit` varchar(255) DEFAULT NULL,
  `noofSeats` int(11) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `courseCode`, `courseName`, `courseUnit`, `noofSeats`, `creationDate`, `updationDate`) VALUES
(81, 'CSA123', 'C  programming', 'unit1-5', 5, '2023-12-09 11:46:14', NULL),
(82, 'CSA450', 'JAVA', '50 PROBLEMS', 5, '2023-12-09 11:47:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courseenrolls`
--

CREATE TABLE `courseenrolls` (
  `id` int(11) NOT NULL,
  `studentRegno` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `session` int(11) DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `course` int(11) DEFAULT NULL,
  `enrollDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courseenrolls`
--

INSERT INTO `courseenrolls` (`id`, `studentRegno`, `pincode`, `session`, `department`, `level`, `semester`, `course`, `enrollDate`) VALUES
(28, '192011450', '347312', 14, 4, 3, 3, 62, '2023-12-07 03:30:08'),
(29, '192011450', '347312', 14, 4, 2, 3, 61, '2023-12-07 03:31:18'),
(31, '192011450', '347312', 13, 4, 3, 2, 64, '2023-12-08 08:07:32'),
(32, '192011450', '347312', 13, 4, 1, 3, 65, '2023-12-08 08:21:18'),
(33, '192011450', '347312', 13, 2, 2, 2, 81, '2023-12-09 11:48:58'),
(34, '192011450', '347312', 14, 2, 1, 2, 82, '2023-12-11 05:30:25');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department`, `creationDate`) VALUES
(1, 'IT', '2022-02-10 17:23:04'),
(2, 'HR', '2022-02-10 17:23:09'),
(4, 'CSE', '2023-09-01 05:54:29'),
(9, 'ECE', '2023-10-26 05:03:05');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `level` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `level`, `creationDate`) VALUES
(1, '1', '2022-02-11 00:59:02'),
(2, '2', '2022-02-11 00:59:02'),
(3, '3', '2022-02-11 00:59:09');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `newstitle` varchar(255) DEFAULT NULL,
  `newsDescription` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `newstitle`, `newsDescription`, `postingDate`) VALUES
(2, 'Test News', 'This is for testing. This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.This is for testing.', '2022-02-10 17:36:50'),
(3, 'New Course Started C#', 'This is sample text for testing.', '2022-02-11 00:54:38');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `option_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `option_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`option_id`, `question_id`, `option_text`) VALUES
(1, 100, '1)Bytecode is executed by JVM\r\n'),
(2, 100, '2)The applet makes the Java code secure and portable\r\n'),
(4, 100, '3)Dynamic binding between objects'),
(6, 100, '4)Use of exception handling\r\n'),
(7, 101, '1)Architecture Neutral\r\n'),
(8, 101, '2)Use of pointers\r\n'),
(9, 101, '3)Dynamic\r\n'),
(10, 101, '4)Object-oriented');

-- --------------------------------------------------------

--
-- Table structure for table `pdfs`
--

CREATE TABLE `pdfs` (
  `id` int(11) NOT NULL,
  `courseID` int(11) NOT NULL,
  `pdf_name` varchar(255) NOT NULL,
  `pdf_path` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pdfs`
--

INSERT INTO `pdfs` (`id`, `courseID`, `pdf_name`, `pdf_path`, `creationDate`) VALUES
(23, 81, 'C codes', 'pdfs/Screenshot 2023-12-09 163700.png', '2023-12-09 11:46:14'),
(24, 82, 'JAVA CODES', 'pdfs/java answers.doc', '2023-12-09 11:47:40');

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `question_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question_text` text NOT NULL,
  `question_type` enum('multiple_choice','true_false','open_ended') NOT NULL,
  `correct_option` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`question_id`, `quiz_id`, `question_text`, `question_type`, `correct_option`) VALUES
(100, 1, 'Which of the following option leads to the portability and security of Java?', 'multiple_choice', 1),
(101, 2, ' Which of the following is not a Java features?', 'multiple_choice', 8);

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id` int(11) NOT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id`, `semester`, `creationDate`, `updationDate`) VALUES
(2, '2', '2022-02-10 17:22:55', NULL),
(3, '3', '2022-02-11 00:51:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `session` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `session`, `creationDate`) VALUES
(9, '2022', '2023-10-19 05:02:44'),
(13, '2019', '2023-11-23 05:07:45'),
(14, '2023', '2023-11-24 07:17:08');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `StudentRegno` varchar(255) NOT NULL,
  `studentPhoto` varchar(255) DEFAULT NULL,
  `Mobile_Number` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `Email_id` varchar(20) NOT NULL,
  `studentName` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `session` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `cgpa` decimal(10,2) DEFAULT NULL,
  `creationdate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL,
  `points` int(11) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentRegno`, `studentPhoto`, `Mobile_Number`, `password`, `Email_id`, `studentName`, `pincode`, `session`, `department`, `semester`, `cgpa`, `creationdate`, `updationDate`, `points`, `score`) VALUES
('10806121', 'studylogin.png', 0, 'Test@123', '', 'Aishwarya', '822894', NULL, NULL, NULL, 9.20, '2022-02-11 00:53:31', NULL, 2, 8),
('192011205', NULL, 2147483647, '1234', 'suresh@gmail.com', 'suresh', '1234', NULL, 'cse', NULL, NULL, '2023-10-11 04:40:50', NULL, 0, 9),
('192011450', '', 0, '3473', '', 'dathu', '347312', '1', 'cse', '4', 10.00, '2023-10-19 06:38:46', NULL, 2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_records`
--

CREATE TABLE `tbl_records` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `course_id` varchar(50) NOT NULL,
  `payment_id` varchar(150) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_records`
--

INSERT INTO `tbl_records` (`id`, `user_id`, `course_id`, `payment_id`, `score`) VALUES
(1, '192011450', '1', 'pay_N3rylJ2R1qbGIk', 0),
(2, '192011450', '1', 'pay_N3s0aoTmOwuaDp', 0),
(3, '192011450', '1', 'pay_N3s7RDghmKwHjM', 0),
(4, '192011450', '1', 'pay_N3sC4Vy6dMrOEs', 0),
(5, '192011450', '1', 'pay_N3sFuT2WE0x3Ah', 0),
(6, '192011450', '1', 'pay_N3sGjJLdpFsZnY', 0),
(7, '192011450', '1', 'pay_N3sJNMbqeej1Ae', 0),
(8, '192011450', '1', 'pay_N3sLIYph7iJjHi', 0),
(9, '192011450', '1', 'pay_N3sMTuQ9zPZlm9', 0),
(10, '192011450', '1', 'pay_N3sNbDUmaDyn7S', 0),
(11, '192011450', '1', 'pay_N3sOFHsN5QNeH2', 0),
(12, '192011450', '1', 'pay_N3sQnWOq1oZhmk', 0),
(13, '192011450', '1', 'pay_N3sso6OCg9hOVP', 0),
(16, '192011450', '1', 'pay_N49iKJ6CIgPEdT', 0),
(17, '', '1', 'pay_N4AOUIon5RRc7S', 0),
(18, '', '1', 'pay_N4AVK9ASxqVZSu', 0),
(19, '10806121', '2', 'pay_N4BBZ5flIX36A5', 0),
(20, '10806121', '1', 'pay_N4BHce0T2Ob4sz', 0),
(21, '10806121', '2', 'pay_N4BJGy8xVakfHx', 0),
(22, '192011205', '3', 'pay_N4BpKtH1qkHTHf', 0),
(23, '192011205', '3', 'pay_N4BqNHYwPwdz7l', 0),
(24, '192011450', '1', 'pay_N4D4y6HwCK0Vl5', 0),
(25, '192011450', '2', 'pay_N4DLrM5BTLnokT', 0),
(26, '192011450', '1', 'pay_N4EEHAtAhkeDT1', 0),
(27, '1', '1', 'pay_N9mOh6NrppAP4V', 0),
(28, '192011450', '1', 'pay_NAvCHwNlVzg7y1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(11) NOT NULL,
  `unit_name` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unit_name`, `creationDate`) VALUES
(1, '1', '2023-12-02 03:22:28'),
(2, '1', '2023-12-02 15:26:30');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `studentRegno` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `studentRegno`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, '10806121', 0x3a3a3100000000000000000000000000, '2022-02-11 00:55:07', NULL, 1),
(2, '10806121', 0x3a3a3100000000000000000000000000, '2022-02-11 00:57:00', NULL, 1),
(3, '10806121', 0x3a3a3100000000000000000000000000, '2022-02-11 00:57:22', '11-02-2022 06:31:26 AM', 1),
(4, '10806121', 0x3a3a3100000000000000000000000000, '2023-08-30 05:19:51', NULL, 1),
(5, '10806121', 0x3a3a3100000000000000000000000000, '2023-08-30 06:19:18', NULL, 1),
(6, '10806121', 0x3a3a3100000000000000000000000000, '2023-08-30 08:15:31', NULL, 1),
(7, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-01 02:52:24', '01-09-2023 08:34:48 AM', 1),
(8, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-01 03:05:03', '01-09-2023 08:51:09 AM', 1),
(9, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-01 03:21:20', '01-09-2023 09:37:53 AM', 1),
(10, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-01 04:09:22', NULL, 1),
(11, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-01 05:14:29', '01-09-2023 10:47:23 AM', 1),
(12, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-01 05:39:36', '01-09-2023 11:47:02 AM', 1),
(13, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-01 06:17:24', '01-09-2023 11:49:02 AM', 1),
(14, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-01 06:22:50', '01-09-2023 12:09:09 PM', 1),
(15, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-01 06:39:18', NULL, 1),
(16, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-01 08:18:13', NULL, 1),
(17, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-01 09:44:52', NULL, 1),
(18, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-01 10:41:48', NULL, 1),
(19, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-01 16:57:20', '01-09-2023 10:29:13 PM', 1),
(20, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-02 03:45:43', '02-09-2023 09:52:52 AM', 1),
(21, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-02 04:24:43', NULL, 1),
(22, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-07 09:41:58', '07-09-2023 03:12:54 PM', 1),
(23, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-07 09:59:07', '07-09-2023 03:34:28 PM', 1),
(24, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-07 10:19:28', '07-09-2023 03:53:05 PM', 1),
(25, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-07 10:58:52', NULL, 1),
(26, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-08 09:53:49', '08-09-2023 03:24:17 PM', 1),
(27, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-08 10:03:46', NULL, 1),
(28, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-12 02:54:15', NULL, 1),
(29, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-12 02:54:43', '12-09-2023 08:25:46 AM', 1),
(30, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-12 03:05:03', '12-09-2023 08:49:04 AM', 1),
(31, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-12 03:40:50', '12-09-2023 09:13:14 AM', 1),
(32, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-12 03:49:36', '12-09-2023 09:19:43 AM', 1),
(33, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-12 03:51:43', '12-09-2023 09:25:21 AM', 1),
(34, '192011268', 0x3a3a3100000000000000000000000000, '2023-09-12 04:00:07', '12-09-2023 09:30:27 AM', 1),
(35, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-12 04:12:26', NULL, 1),
(36, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-12 09:40:09', '12-09-2023 03:18:37 PM', 1),
(37, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-13 11:01:28', '13-09-2023 04:32:00 PM', 1),
(38, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-15 05:53:55', NULL, 1),
(39, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-15 05:56:24', NULL, 1),
(40, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-15 06:03:43', '15-09-2023 11:35:25 AM', 1),
(41, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-15 06:14:53', '15-09-2023 11:44:57 AM', 1),
(42, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-15 06:18:25', '15-09-2023 11:49:16 AM', 1),
(43, '123', 0x3a3a3100000000000000000000000000, '2023-09-15 06:20:50', '15-09-2023 11:51:15 AM', 1),
(44, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-15 06:24:31', NULL, 1),
(45, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-15 06:57:26', NULL, 1),
(46, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-15 07:46:49', '15-09-2023 01:18:05 PM', 1),
(47, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-15 08:02:51', NULL, 1),
(48, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-15 08:32:07', NULL, 1),
(49, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-15 09:56:32', NULL, 1),
(50, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-15 12:05:28', '15-09-2023 05:36:19 PM', 1),
(51, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-19 03:04:15', NULL, 1),
(52, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-19 15:37:53', NULL, 1),
(53, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-19 16:27:13', NULL, 1),
(54, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-19 16:32:41', NULL, 1),
(55, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-20 02:28:41', NULL, 1),
(56, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-20 02:49:50', '20-09-2023 08:24:36 AM', 1),
(57, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-20 02:54:46', NULL, 1),
(58, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-20 03:35:06', NULL, 1),
(59, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-20 03:35:38', NULL, 1),
(60, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-24 08:22:24', NULL, 1),
(61, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-24 08:55:23', NULL, 1),
(62, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-26 06:01:20', NULL, 1),
(63, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-26 08:53:11', NULL, 1),
(64, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-27 04:15:26', NULL, 1),
(65, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-27 04:24:03', NULL, 1),
(66, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-27 10:03:19', NULL, 1),
(67, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-28 02:53:23', '28-09-2023 09:15:45 AM', 1),
(68, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-28 03:46:26', NULL, 1),
(69, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-28 03:49:29', NULL, 1),
(70, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-28 03:53:48', NULL, 1),
(71, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-28 04:00:08', NULL, 1),
(72, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-28 04:03:16', '28-09-2023 09:56:50 AM', 1),
(73, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-28 04:30:28', '28-09-2023 11:36:46 AM', 1),
(74, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-28 06:08:06', NULL, 1),
(75, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-28 06:21:53', NULL, 1),
(76, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-28 06:30:09', NULL, 1),
(77, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-28 07:55:10', NULL, 1),
(78, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-28 08:25:00', '28-09-2023 02:31:00 PM', 1),
(79, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-28 09:06:30', NULL, 1),
(80, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-30 03:57:36', NULL, 1),
(81, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-30 06:03:50', NULL, 1),
(82, '10806121', 0x3a3a3100000000000000000000000000, '2023-09-30 07:44:26', NULL, 1),
(83, '10806121', 0x3a3a3100000000000000000000000000, '2023-10-01 13:17:52', NULL, 1),
(84, '10806121', 0x3a3a3100000000000000000000000000, '2023-10-04 04:27:20', NULL, 1),
(85, '10806121', 0x3a3a3100000000000000000000000000, '2023-10-04 05:53:51', NULL, 1),
(86, '10806121', 0x3a3a3100000000000000000000000000, '2023-10-05 06:01:15', NULL, 1),
(87, '12345', 0x3139322e3136382e37342e3133330000, '2023-10-11 04:17:25', NULL, 1),
(88, '10806121', 0x3139322e3136382e3133392e31333300, '2023-10-19 04:05:46', NULL, 1),
(89, '10806121', 0x3139322e3136382e3133392e31333300, '2023-10-19 04:46:41', NULL, 1),
(90, '12345', 0x3139322e3136382e3133392e31333300, '2023-10-19 06:45:42', NULL, 1),
(91, '12345', 0x3139322e3136382e3133392e31360000, '2023-10-19 06:47:12', NULL, 1),
(92, '12345', 0x3139322e3136382e3133392e31360000, '2023-10-19 07:31:45', NULL, 1),
(93, '12345', 0x3139322e3136382e38302e3833000000, '2023-10-19 07:45:05', NULL, 1),
(94, '12345', 0x3139322e3136382e38302e3833000000, '2023-10-19 07:45:46', NULL, 1),
(95, '12345', 0x3139322e3136382e38302e3833000000, '2023-10-19 07:47:30', NULL, 1),
(96, '12345', 0x3139322e3136382e3133392e31360000, '2023-10-19 08:36:59', NULL, 1),
(97, '192011450', 0x3139322e3136382e3230302e31373700, '2023-10-25 03:23:00', NULL, 1),
(98, '192011450', 0x3139322e3136382e3230302e31373700, '2023-10-25 04:12:02', NULL, 1),
(99, '10806121', 0x3139322e3136382e3137342e31333300, '2023-10-31 07:45:18', NULL, 1),
(100, '192011295', 0x3a3a3100000000000000000000000000, '2023-10-31 08:58:22', NULL, 1),
(101, '10806121', 0x3a3a3100000000000000000000000000, '2023-10-31 09:10:58', NULL, 1),
(102, '10806121', 0x3a3a3100000000000000000000000000, '2023-10-31 09:19:04', NULL, 1),
(103, '10806121', 0x3a3a3100000000000000000000000000, '2023-10-31 09:34:18', NULL, 1),
(104, '10806121', 0x3137322e31372e35302e313232000000, '2023-11-01 02:53:46', NULL, 1),
(105, '10806121', 0x3137322e31372e35302e313232000000, '2023-11-01 02:54:14', NULL, 1),
(106, '10806121', 0x3137322e31372e35302e313232000000, '2023-11-01 02:54:52', '01-11-2023 08:46:02 AM', 1),
(107, '10806121', 0x3137322e31372e35302e313232000000, '2023-11-01 03:20:17', NULL, 1),
(108, '10806121', 0x3137322e31372e35302e313232000000, '2023-11-01 03:41:15', NULL, 1),
(109, '10806121', 0x3137322e31372e35302e313232000000, '2023-11-01 03:57:26', NULL, 1),
(110, '10806121', 0x3137322e31372e35302e313232000000, '2023-11-01 03:59:31', NULL, 1),
(111, '10806121', 0x3137322e31372e35302e313232000000, '2023-11-01 04:22:17', '01-11-2023 11:28:23 AM', 1),
(112, '10806121', 0x3137322e31372e35302e313232000000, '2023-11-01 09:01:00', NULL, 1),
(113, '10806121', 0x3137322e31372e35342e363900000000, '2023-11-02 04:13:12', NULL, 1),
(114, '10806121', 0x3137322e31372e35342e363900000000, '2023-11-02 04:18:58', NULL, 1),
(115, '10806121', 0x3137322e31372e35342e363900000000, '2023-11-02 08:51:57', NULL, 1),
(116, '192011450', 0x3139322e3136382e3133352e31333300, '2023-11-22 13:57:58', '22-11-2023 07:28:01 PM', 1),
(117, '192011450', 0x3139322e3136382e3133352e31333300, '2023-11-22 13:58:22', '22-11-2023 07:39:25 PM', 1),
(118, '192011205', 0x3139322e3136382e3133352e31333300, '2023-11-22 14:09:36', '22-11-2023 07:57:01 PM', 1),
(119, '192011205', 0x3139322e3136382e3133352e31333300, '2023-11-22 14:27:14', NULL, 1),
(120, '192011450', 0x3139322e3136382e3137342e31333300, '2023-11-23 02:50:50', NULL, 1),
(121, '192011450', 0x3139322e3136382e3137342e31333300, '2023-11-23 03:50:52', '23-11-2023 10:07:39 AM', 1),
(122, '192011450', 0x3139322e3136382e3137342e31333300, '2023-11-23 04:55:09', '23-11-2023 10:25:10 AM', 1),
(123, '192011450', 0x3139322e3136382e3137342e31333300, '2023-11-23 05:02:32', '23-11-2023 10:37:30 AM', 1),
(124, '192011450', 0x3139322e3136382e3137342e31333300, '2023-11-23 05:32:47', '23-11-2023 11:02:48 AM', 1),
(125, '192011450', 0x3139322e3136382e3137342e31333300, '2023-11-23 05:36:03', '23-11-2023 11:08:21 AM', 1),
(126, '192011450', 0x3139322e3136382e3137342e31333300, '2023-11-23 05:38:32', '23-11-2023 11:49:50 AM', 1),
(127, '192011450', 0x3139322e3136382e3137342e31333300, '2023-11-23 06:20:03', '23-11-2023 11:54:34 AM', 1),
(128, '192011450', 0x3139322e3136382e3137342e31333300, '2023-11-23 06:24:41', '23-11-2023 12:01:01 PM', 1),
(129, '192011450', 0x3139322e3136382e3137342e31333300, '2023-11-23 06:31:07', '23-11-2023 12:02:51 PM', 1),
(130, '192011450', 0x3139322e3136382e3137342e31333300, '2023-11-23 06:33:07', '23-11-2023 12:05:27 PM', 1),
(131, '192011450', 0x3139322e3136382e3137342e31333300, '2023-11-23 06:35:49', NULL, 1),
(132, '192011450', 0x3139322e3136382e3137342e31333300, '2023-11-23 07:32:17', '23-11-2023 01:05:27 PM', 1),
(133, '192011450', 0x3139322e3136382e3137342e31333300, '2023-11-23 07:35:40', NULL, 1),
(134, '192011450', 0x3139322e3136382e3137342e31333300, '2023-11-23 07:43:24', '23-11-2023 01:13:37 PM', 1),
(135, '192011450', 0x3139322e3136382e3137342e31333300, '2023-11-23 08:03:20', '23-11-2023 02:13:52 PM', 1),
(136, '192011450', 0x3139322e3136382e3137342e31333300, '2023-11-23 08:43:57', NULL, 1),
(137, '192011450', 0x3139322e3136382e312e370000000000, '2023-11-23 13:29:55', '23-11-2023 07:01:16 PM', 1),
(138, '192011413', 0x3139322e3136382e312e370000000000, '2023-11-23 13:36:20', NULL, 1),
(139, '192011450', 0x3139322e3136382e312e370000000000, '2023-11-23 13:49:51', '23-11-2023 07:30:20 PM', 1),
(140, '192011450', 0x3139322e3136382e3137342e31333300, '2023-11-24 02:56:55', '24-11-2023 08:31:45 AM', 1),
(141, '192011450', 0x3139322e3136382e3137342e31333300, '2023-11-24 03:01:57', NULL, 1),
(142, '192011450', 0x3139322e3136382e3137342e31333300, '2023-11-24 03:06:56', '24-11-2023 08:39:51 AM', 1),
(143, '192011450', 0x3139322e3136382e3137342e31333300, '2023-11-24 03:42:24', NULL, 1),
(144, '10806121', 0x3139322e3136382e3137342e31333300, '2023-11-24 04:27:42', '24-11-2023 09:57:45 AM', 1),
(145, '10806121', 0x3139322e3136382e3137342e31333300, '2023-11-24 04:27:52', NULL, 1),
(146, '192011450', 0x3139322e3136382e3137342e31333300, '2023-11-24 05:02:31', NULL, 1),
(147, '192011450', 0x3139322e3136382e3137342e31333300, '2023-11-24 05:04:48', '24-11-2023 10:34:50 AM', 1),
(148, '192011450', 0x3139322e3136382e3137342e31333300, '2023-11-24 05:05:20', '24-11-2023 10:35:22 AM', 1),
(149, '10806121', 0x3139322e3136382e3137342e31333300, '2023-11-24 05:05:33', '24-11-2023 10:35:36 AM', 1),
(150, '192011205', 0x3139322e3136382e3137342e31333300, '2023-11-24 05:05:52', '24-11-2023 10:40:57 AM', 1),
(151, '192011450', 0x3139322e3136382e3137342e31333300, '2023-11-24 05:20:42', '24-11-2023 10:51:28 AM', 1),
(152, '192011450', 0x3139322e3136382e3137342e31333300, '2023-11-24 05:28:45', '24-11-2023 11:17:45 AM', 1),
(153, '192011450', 0x3139322e3136382e3137342e31333300, '2023-11-24 05:48:08', NULL, 1),
(154, '192011450', 0x3139322e3136382e3137342e31333300, '2023-11-24 06:19:34', '24-11-2023 11:51:24 AM', 1),
(155, '192011450', 0x3139322e3136382e3137342e31333300, '2023-11-24 06:31:30', NULL, 1),
(156, '192011450', 0x3139322e3136382e3137342e31333300, '2023-11-24 07:20:20', NULL, 1),
(157, '192011450', 0x3139322e3136382e312e370000000000, '2023-12-03 05:41:10', NULL, 1),
(158, '192011450', 0x3139322e3136382e312e370000000000, '2023-12-03 05:41:47', NULL, 1),
(159, '192011450', 0x3139322e3136382e312e370000000000, '2023-12-03 05:42:35', NULL, 1),
(160, '192011450', 0x3139322e3136382e312e370000000000, '2023-12-03 05:44:43', NULL, 1),
(161, '192011450', 0x3139322e3136382e312e370000000000, '2023-12-03 06:22:58', NULL, 1),
(162, '192011450', 0x3139322e3136382e312e370000000000, '2023-12-05 15:28:42', NULL, 1),
(163, '192011450', 0x3139322e3136382e312e370000000000, '2023-12-05 15:30:40', '05-12-2023 09:01:54 PM', 1),
(164, '192011450', 0x3139322e3136382e312e370000000000, '2023-12-06 04:12:34', NULL, 1),
(165, '192011450', 0x3139322e3136382e3137302e31333300, '2023-12-06 04:19:24', NULL, 1),
(166, '192011450', 0x3139322e3136382e312e370000000000, '2023-12-07 03:17:49', '07-12-2023 09:05:11 AM', 1),
(167, '192011450', 0x3139322e3136382e312e370000000000, '2023-12-07 06:00:32', '07-12-2023 11:33:27 AM', 1),
(168, '192011450', 0x3139322e3136382e312e370000000000, '2023-12-07 06:14:52', '07-12-2023 11:46:14 AM', 1),
(169, '192011450', 0x3139322e3136382e312e370000000000, '2023-12-07 08:34:11', '07-12-2023 02:16:24 PM', 1),
(170, '192011450', 0x3139322e3136382e312e370000000000, '2023-12-07 08:46:41', NULL, 1),
(171, '192011450', 0x3139322e3136382e312e370000000000, '2023-12-07 09:09:14', NULL, 1),
(172, '192011450', 0x3139322e3136382e312e370000000000, '2023-12-07 09:14:25', '07-12-2023 02:48:35 PM', 1),
(173, '192011450', 0x3137322e31382e36382e323533000000, '2023-12-08 03:15:59', NULL, 1),
(174, '192011450', 0x3137322e31382e36382e323533000000, '2023-12-08 03:33:34', '08-12-2023 09:12:35 AM', 1),
(175, '192011450', 0x3137322e31382e36382e323533000000, '2023-12-08 03:50:29', NULL, 1),
(176, '192011450', 0x3137322e31382e36382e323533000000, '2023-12-08 03:57:24', NULL, 1),
(177, '192011450', 0x3137322e31382e36382e323533000000, '2023-12-08 08:04:16', '08-12-2023 01:53:52 PM', 1),
(178, '192011450', 0x3137322e31382e36382e323533000000, '2023-12-09 05:11:28', NULL, 1),
(179, '192011450', 0x3137322e31382e36382e323533000000, '2023-12-09 08:20:57', NULL, 1),
(180, '192011450', 0x3139322e3136382e312e370000000000, '2023-12-09 11:48:25', NULL, 1),
(181, '192011450', 0x3139322e3136382e312e370000000000, '2023-12-10 06:33:08', NULL, 1),
(182, '192011450', 0x3139322e3136382e3131352e31333300, '2023-12-11 03:21:19', NULL, 1),
(183, '192011450', 0x3139322e3136382e3131352e31333300, '2023-12-11 03:22:40', NULL, 1),
(184, '192011450', 0x3139322e3136382e3131352e31333300, '2023-12-11 03:25:31', NULL, 1),
(185, '192011450', 0x3139322e3136382e3131352e31333300, '2023-12-11 03:26:45', NULL, 1),
(186, '192011450', 0x3139322e3136382e3131352e31333300, '2023-12-11 03:27:08', NULL, 1),
(187, '192011450', 0x3139322e3136382e3131352e31333300, '2023-12-11 03:30:01', NULL, 1),
(188, '192011450', 0x3139322e3136382e3131352e31333300, '2023-12-11 03:34:05', NULL, 1),
(189, '192011450', 0x3139322e3136382e3131352e31333300, '2023-12-11 03:42:26', NULL, 1),
(190, '192011450', 0x3139322e3136382e3131352e31333300, '2023-12-11 03:42:41', NULL, 1),
(191, '192011450', 0x3139322e3136382e3131352e31333300, '2023-12-11 03:43:00', NULL, 1),
(192, '192011450', 0x3139322e3136382e3131352e31333300, '2023-12-11 05:05:59', '11-12-2023 10:36:06 AM', 1),
(193, '192011450', 0x3139322e3136382e3131352e31333300, '2023-12-11 05:21:33', '11-12-2023 11:00:41 AM', 1),
(194, '192011450', 0x3139322e3136382e3131352e31333300, '2023-12-11 05:47:52', '11-12-2023 11:19:45 AM', 1),
(195, '192011450', 0x3139322e3136382e3131352e31333300, '2023-12-11 05:57:02', '11-12-2023 11:28:38 AM', 1),
(196, '192011450', 0x3139322e3136382e3131352e31333300, '2023-12-11 06:27:25', '11-12-2023 12:02:14 PM', 1),
(197, '192011450', 0x3137322e31382e36382e323533000000, '2023-12-11 08:38:13', NULL, 1),
(198, '192011450', 0x3137322e31382e36382e323533000000, '2023-12-12 02:59:40', NULL, 1),
(199, '192011450', 0x3137322e31382e36382e323533000000, '2023-12-12 03:25:55', NULL, 1),
(200, '192011450', 0x3137322e31382e32352e353300000000, '2023-12-12 06:29:52', '12-12-2023 12:23:31 PM', 1),
(201, '192011450', 0x3137322e31382e32352e353300000000, '2023-12-12 06:53:35', '12-12-2023 12:42:42 PM', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courseID` (`courseID`),
  ADD KEY `idx_assignments_id` (`id`);

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
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `pdfs`
--
ALTER TABLE `pdfs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courseID` (`courseID`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`question_id`);

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
-- Indexes for table `tbl_records`
--
ALTER TABLE `tbl_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pdfs`
--
ALTER TABLE `pdfs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_records`
--
ALTER TABLE `tbl_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_ibfk_1` FOREIGN KEY (`courseID`) REFERENCES `course` (`id`);

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `quizzes` (`question_id`);

--
-- Constraints for table `pdfs`
--
ALTER TABLE `pdfs`
  ADD CONSTRAINT `pdfs_ibfk_1` FOREIGN KEY (`courseID`) REFERENCES `course` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
