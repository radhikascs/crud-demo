-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2017 at 11:45 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_carrera`
--

CREATE TABLE `tbl_carrera` (
  `carr_id` int(11) NOT NULL,
  `carr_nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=big5;

--
-- Dumping data for table `tbl_carrera`
--

INSERT INTO `tbl_carrera` (`carr_id`, `carr_nombre`) VALUES
(1, 'Passport'),
(2, 'Driving License'),
(3, 'Pan Card'),
(4, 'Aadhar Card'),
(5, 'Marriage Certificate'),
(6, 'Domicile Certificate'),
(8, 'Business Card'),
(9, 'Employee I Card');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_estudiante`
--

CREATE TABLE `tbl_estudiante` (
  `estu_id` int(11) NOT NULL,
  `estu_nombre` varchar(45) NOT NULL,
  `estu_apellido` varchar(45) NOT NULL,
  `estu_cedula` int(11) NOT NULL,
  `carr_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `qualification` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL,
  `dob` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=big5;

--
-- Dumping data for table `tbl_estudiante`
--

INSERT INTO `tbl_estudiante` (`estu_id`, `estu_nombre`, `estu_apellido`, `estu_cedula`, `carr_id`, `photo`, `mobile`, `qualification`, `city`, `dob`) VALUES
(4, 'Esteban', 'Leon', 19201202, 2, '', '0', '', '', '0000-00-00'),
(7, 'Carlos', 'Gonzalez', 123456, 3, '', '0', '', '', '0000-00-00'),
(9, 'Ysmael', 'Blanco', 12000311, 3, '', '0', '', '', '0000-00-00'),
(10, 'Carlos', 'Ramos', 18292111, 2, '', '0', '', 'Cochin', '0000-00-00'),
(12, 'Cecilio', 'Jimenez', 16987234, 1, '', '0', '', 'Hyderabad', '0000-00-00'),
(13, 'Pedro', 'Perez', 15030322, 2, '', '0', '', 'Chennai', '0000-00-00'),
(14, 'Ruben', 'Mejias', 20929112, 2, '', '0', '', 'Mumbai', '0000-00-00'),
(15, 'Erick', 'Perez', 18782999, 3, '', '0', '', 'Bangalore', '0000-00-00'),
(16, 'Carlos', 'Martinez', 12399111, 3, '', '0', '', 'Mumabi', '0000-00-00'),
(17, 'Silvio', 'Bustamante', 23001922, 3, '', '0', '', 'Mumbai', '0000-00-00'),
(18, 'Raul', 'Rodriguez', 21122394, 2, '', '0', '', 'THANE', '0000-00-00'),
(20, 'Carlos', 'Farias', 123445, 8, '', '0', '', 'Dombivli', '0000-00-00'),
(22, 'Claudio', 'Saraza', 43434343, 8, '', '0', '', 'Mumbai', '0000-00-00'),
(23, 'Radhika', 'fdgb', 32543, 4, '', '0', '', 'Thane', '0000-00-00'),
(26, 'Omkar', 'Thane', 421202, 6, '', '9920526508', 'MBA', 'Thane', '0000-00-00'),
(27, 'Radhika', 'Thane', 421202, 4, '', '9819336928', 'Masters', '', '0000-00-00'),
(28, 'Radhika', 'fdgb', 32543987, 6, '', '9926508052', 'Masters', 'Mumbai', '0000-00-00'),
(29, 'Rashmi', 'Thane', 421202, 8, '', '972187872', 'Masters', 'Mumbai', '0000-00-00'),
(30, 'Rashmi', 'Thane', 421202, 8, '', '972187872', 'Masters', 'Mumbai', '0000-00-00'),
(31, 'Radhika', 'fdgb', 32543, 8, '', '9823747', 'Masters', 'Mumbai', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_carrera`
--
ALTER TABLE `tbl_carrera`
  ADD PRIMARY KEY (`carr_id`);

--
-- Indexes for table `tbl_estudiante`
--
ALTER TABLE `tbl_estudiante`
  ADD PRIMARY KEY (`estu_id`),
  ADD KEY `carr_id` (`carr_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_carrera`
--
ALTER TABLE `tbl_carrera`
  MODIFY `carr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_estudiante`
--
ALTER TABLE `tbl_estudiante`
  MODIFY `estu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_estudiante`
--
ALTER TABLE `tbl_estudiante`
  ADD CONSTRAINT `tbl_estudiante_ibfk_1` FOREIGN KEY (`carr_id`) REFERENCES `tbl_carrera` (`carr_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
