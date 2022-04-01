-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2021 at 06:44 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_hospitalmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admi_email_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_name`, `admi_email_id`, `admin_password_id`, `status`) VALUES
(1, 'Janina', 'raha@gmail.com', '202cb962ac59075b964b07152d234b70', NULL),
(2, 'Park View Medical College', 'pvmc@gmail.com', '202cb962ac59075b964b07152d234b70', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appointment`
--

CREATE TABLE `tbl_appointment` (
  `appointment_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `department` text NOT NULL,
  `phone_number` text NOT NULL,
  `additional_message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_appointment`
--

INSERT INTO `tbl_appointment` (`appointment_id`, `name`, `email`, `department`, `phone_number`, `additional_message`) VALUES
(1, 'Md Sirajul Islam', 'sani@gmail.com', 'Colon and Rectal Surgeons', '01946910411', 'hfdifhdihfd'),
(2, 'Md Ajharul Islam', 'hi@gmail.com', 'Neurologists', '01946910412', 'fdddddddddd');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_director`
--

CREATE TABLE `tbl_director` (
  `id` int(11) NOT NULL,
  `director_name` text NOT NULL,
  `img` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_director`
--

INSERT INTO `tbl_director` (`id`, `director_name`, `img`, `message`) VALUES
(1, 'Dr.Usman Yousuf', 'img/1614319557.jpg', 'We want to give you our intensive care. Medical Service is not our business it\'s a service to humanity and mankind. We will deliver our best, appropriate and latest medicine and medical service....................');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_doctor`
--

CREATE TABLE `tbl_doctor` (
  `doctor_id` int(11) NOT NULL,
  `doctor_name` text NOT NULL,
  `doctor_type` int(11) NOT NULL,
  `admin_status` tinyint(4) NOT NULL DEFAULT 0,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_doctor`
--

INSERT INTO `tbl_doctor` (`doctor_id`, `doctor_name`, `doctor_type`, `admin_status`, `img`) VALUES
(23, 'Anika Jaman Malika', 4, 1, 'img/1613876785.jpg'),
(24, 'NImmi Chowdhury', 3, 0, 'img/1613877636.jpg'),
(25, 'Johirul Islam Juwel', 13, 1, 'img/1613877656.jpg'),
(26, 'Galib Ifthekar Rahath', 13, 1, 'img/1613877680.jpg'),
(27, 'Mashkur Taki Talha', 5, 0, 'img/1613877702.jpg'),
(28, 'Bodrul Islam Naiem', 13, 0, 'img/1613877735.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_doctor_type`
--

CREATE TABLE `tbl_doctor_type` (
  `type_id` int(11) NOT NULL,
  `type_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_doctor_type`
--

INSERT INTO `tbl_doctor_type` (`type_id`, `type_name`) VALUES
(3, 'Cardiologists'),
(4, 'Colon and Rectal Surgeons'),
(5, 'Critical Care Medicine Specialists'),
(7, 'Endocrinologists'),
(8, 'Emergency Medicine Specialists'),
(9, 'Family Physicians'),
(10, 'Gastroenterologists'),
(11, 'Geriatric Medicine Specialists'),
(12, 'Nephrologists'),
(13, 'Neurologists'),
(14, 'Obstetricians and Gynecologists'),
(15, 'Oncologists'),
(16, 'Ophthalmologists');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_medical_test`
--

CREATE TABLE `tbl_medical_test` (
  `test_id` int(11) NOT NULL,
  `test_name` text NOT NULL,
  `test_price` text NOT NULL,
  `test_time` text NOT NULL,
  `pre_requisite` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_medical_test`
--

INSERT INTO `tbl_medical_test` (`test_id`, `test_name`, `test_price`, `test_time`, `pre_requisite`) VALUES
(1, 'Urine Test', '100', 'Any Time', 'N/A'),
(3, '2D Echo', '1114', 'Any Time', 'N/A'),
(4, '4D Scan', '23', 'Any Time', 'empty stomach'),
(5, 'ACTH (Adreno Corticotropic Hormone) Test', '1024', 'Any Time', 'empty stomach'),
(6, 'Adenosine Deaminase Test', '271', 'Any Time', 'empty stomach'),
(7, 'AFB (Acid Fast Bacilli) Culture Test', '872', 'Any Time', 'empty stomach'),
(8, 'AFP (Alpha Feto Protein) Test', '1995', 'Any Time', 'N/A'),
(9, 'Alberts Stain', '185', 'Any Time', 'N/A'),
(10, 'Albumin Test', '3385', 'Any Time', 'N/A'),
(11, 'Blood Group Test', '5700', 'Any Time', 'N/A'),
(12, 'Bone Scan', '39', 'Any Time', 'N/A'),
(13, 'Dengue IgG Test', '3801', 'Any Time', 'N/A'),
(14, 'Electrolytes Test', '5002', 'Any Time', 'empty stomach');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_appointment`
--
ALTER TABLE `tbl_appointment`
  ADD PRIMARY KEY (`appointment_id`);

--
-- Indexes for table `tbl_director`
--
ALTER TABLE `tbl_director`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_doctor`
--
ALTER TABLE `tbl_doctor`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `tbl_doctor_type`
--
ALTER TABLE `tbl_doctor_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `tbl_medical_test`
--
ALTER TABLE `tbl_medical_test`
  ADD PRIMARY KEY (`test_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_appointment`
--
ALTER TABLE `tbl_appointment`
  MODIFY `appointment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_director`
--
ALTER TABLE `tbl_director`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_doctor`
--
ALTER TABLE `tbl_doctor`
  MODIFY `doctor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_doctor_type`
--
ALTER TABLE `tbl_doctor_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_medical_test`
--
ALTER TABLE `tbl_medical_test`
  MODIFY `test_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
