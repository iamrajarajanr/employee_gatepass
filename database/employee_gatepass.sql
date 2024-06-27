-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2023 at 11:04 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee_gatepass`
--

-- --------------------------------------------------------

--
-- Table structure for table `department_list`
--

CREATE TABLE `department_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department_list`
--

INSERT INTO `department_list` (`id`, `name`, `description`, `status`, `date_created`, `date_updated`) VALUES
(1, 'COMPUTER SCIENCE ENGINEERING', '', 1, '2021-11-04 08:46:01', '2023-09-04 14:17:31'),
(2, 'ELECTRICAL AND ELECTRONICS ENGINEERING', '', 1, '2021-11-04 08:46:16', '2023-09-04 14:18:10'),
(3, 'ELECTRONICS AND COMMUNICATION ENGINEERING', '', 1, '2021-11-04 08:46:48', '2023-09-04 14:18:14'),
(4, 'MECHANICAL ENGINEERING ', '', 1, '2021-11-04 08:46:59', '2023-09-04 14:18:19'),
(14, 'CIVIL ENGINEERING', '', 1, '2023-09-04 14:18:02', '2023-09-04 14:18:02');

-- --------------------------------------------------------

--
-- Table structure for table `designation_list`
--

CREATE TABLE `designation_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `designation_list`
--

INSERT INTO `designation_list` (`id`, `name`, `description`, `status`, `date_created`, `date_updated`) VALUES
(16, 'STUDENT', '', 1, '2023-09-04 14:19:10', '2023-09-04 14:19:10'),
(17, 'FACULTY', '', 1, '2023-09-04 14:19:21', '2023-09-04 14:19:21'),
(18, 'PRINCIPAL', '', 1, '2023-09-04 14:19:34', '2023-09-04 14:19:34'),
(19, 'CHIEF EXECUTIVE OFFICER', '', 1, '2023-09-04 14:19:42', '2023-09-04 14:22:02'),
(20, 'ACADEMIC DEAN', '', 1, '2023-09-04 14:19:53', '2023-09-04 14:19:53'),
(21, 'ACADEMIC COORDINATOR', '', 1, '2023-09-04 14:20:13', '2023-09-04 14:20:13');

-- --------------------------------------------------------

--
-- Table structure for table `employee_list`
--

CREATE TABLE `employee_list` (
  `id` int(30) NOT NULL,
  `employee_code` varchar(50) NOT NULL,
  `department_id` int(30) DEFAULT NULL,
  `designation_id` int(30) DEFAULT NULL,
  `fullname` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = Active, 2= Inactive',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_list`
--

INSERT INTO `employee_list` (`id`, `employee_code`, `department_id`, `designation_id`, `fullname`, `status`, `date_created`, `date_updated`) VALUES
(10, '713621106004', 3, 16, 'S, GOPALAKRISHNAN ', 1, '2023-09-04 14:15:48', '2023-09-04 14:28:27'),
(11, '713621106334', 3, 16, 'R, RAJARAJAN ', 1, '2023-09-04 14:24:30', '2023-09-04 14:28:44'),
(12, '713621106017', 3, 16, 'E, TAMIL VANI ', 1, '2023-09-04 14:26:36', '2023-09-04 14:29:00'),
(13, '713621106010', 3, 16, 'V, MATHANGURU ', 1, '2023-09-04 14:27:39', '2023-09-04 14:29:19');

-- --------------------------------------------------------

--
-- Table structure for table `employee_meta`
--

CREATE TABLE `employee_meta` (
  `employee_id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_meta`
--

INSERT INTO `employee_meta` (`employee_id`, `meta_field`, `meta_value`) VALUES
(11, 'lastname', 'R'),
(11, 'firstname', 'RAJARAJAN'),
(11, 'middlename', ''),
(11, 'gender', 'Male'),
(11, 'dob', '2003-09-22'),
(11, 'contact', '9344689381'),
(11, 'address', 'NO:4 VEERAPANDI, DURAI NAGAR, COIMBATORE - 641019'),
(11, 'email', 'rajarajanr.sreesakthiengg@gmail.com'),
(10, 'lastname', 'S'),
(10, 'firstname', 'GOPALAKRISHNAN'),
(10, 'middlename', ''),
(10, 'gender', 'Male'),
(10, 'dob', '2023-09-04'),
(10, 'contact', '9489751212'),
(10, 'address', '7/386, ONIKANDI, ANNA NAGAR, KILKUNDHA PO\r\n\r\n'),
(10, 'email', 'gopalgopalakrishnan852@gmail.com'),
(12, 'lastname', 'E'),
(12, 'firstname', 'TAMIL VANI'),
(12, 'middlename', ''),
(12, 'gender', 'Female'),
(12, 'dob', '2023-09-04'),
(12, 'contact', '9360169507'),
(12, 'address', '3/464 CHINNA MARRIYAMMAN KOVIL STREET, KOTTAPALAYAM\r\n'),
(12, 'email', 'devielangovan1618@gmail.com'),
(13, 'lastname', 'V'),
(13, 'firstname', 'MATHANGURU'),
(13, 'middlename', ''),
(13, 'gender', 'Male'),
(13, 'dob', '2023-09-04'),
(13, 'contact', '9659964301'),
(13, 'address', '73/83 KODATHASANUR MANGALAKARAI PUDHUR POST\r\n'),
(13, 'email', 'mag125guru@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(30) NOT NULL,
  `employee_id` int(30) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=In, 2= Out',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Gate Pass Management System'),
(6, 'short_name', 'GPMS'),
(11, 'logo', 'uploads/logo-1635986546.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-1635986546.png'),
(15, 'content', 'Array');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', NULL, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/avatar-1.png?v=1635556826', NULL, 1, '2021-01-20 14:02:37', '2021-10-30 09:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `user_id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitor_logs`
--

CREATE TABLE `visitor_logs` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `contact` text NOT NULL,
  `address` text NOT NULL,
  `purpose` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = In, 2 =Out',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department_list`
--
ALTER TABLE `department_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designation_list`
--
ALTER TABLE `designation_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_list`
--
ALTER TABLE `employee_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `designation_id` (`designation_id`);

--
-- Indexes for table `employee_meta`
--
ALTER TABLE `employee_meta`
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `visitor_logs`
--
ALTER TABLE `visitor_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department_list`
--
ALTER TABLE `department_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `designation_list`
--
ALTER TABLE `designation_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `employee_list`
--
ALTER TABLE `employee_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `visitor_logs`
--
ALTER TABLE `visitor_logs`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_list`
--
ALTER TABLE `employee_list`
  ADD CONSTRAINT `employee_list_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department_list` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `employee_list_ibfk_2` FOREIGN KEY (`designation_id`) REFERENCES `designation_list` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `employee_meta`
--
ALTER TABLE `employee_meta`
  ADD CONSTRAINT `employee_meta_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
