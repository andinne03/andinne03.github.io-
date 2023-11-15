-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 14, 2018 at 12:13 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36
 
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
 
 
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
 
--
-- Database: `grafik_mahasiswa`
--
 
-- --------------------------------------------------------
 
--
-- Table structure for table `mahasiswa`
--
 
CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nim` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `fakultas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
 
--
-- Dumping data for table `mahasiswa`
--
 
INSERT INTO `mahasiswa` (`id`, `nama`, `nim`, `jenis_kelamin`, `fakultas`) VALUES
(1, 'Johny Pambudi', '1234567890', 'L', 'Teknik'),
(2, 'Maya Rahmaniah', '1234456667', 'P', 'Ekonomi'),
(3, 'Diki ALfarabi Hadi', '123345678887', 'L', 'Teknik'),
(4, 'Suamtono', '123456789', 'L', 'Fisip'),
(5, 'Jamludin Syah', '12345663536', 'L', 'Teknik'),
(6, 'Rahmaniah', '212111231133', 'P', 'Ekonomi'),
(7, 'Qiano Arfabian Putra', '1123555365', 'L', 'Teknik'),
(8, 'Gibran', '1122432434', 'L', 'Ekonomi'),
(9, 'Johny', '12363377332', 'L', 'Pertanian'),
(10, 'Muhammad Riski', '12837373839', 'L', 'Fisip'),
(11, 'Rahmat Syah Alub', '122652626252', 'L', 'Fisip'),
(12, 'Mahmud Amir', '123455467464', 'L', 'Pertanian'),
(13, 'Aminah', '123112342', 'P', 'Teknik'),
(14, 'Putri Aladin', '213114324234', 'P', 'Ekonomi'),
(15, 'Lubis', '11231334234', 'P', 'Pertanian'),
(16, 'Iqlima', '12312423423', 'P', 'Pertanian'),
(17, 'Rahman Muhammad', '121312438', 'L', 'Pertanian'),
(18, 'Muhammad Ikbal', '12387448844', 'L', 'Teknik'),
(19, 'Monika', '1223244344', 'P', 'Fisip'),
(20, 'Haris Aziz', '1123834748', 'L', 'Teknik');
 
--
-- Indexes for dumped tables
--
 
--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);
 
--
-- AUTO_INCREMENT for dumped tables
--
 
--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;
 
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
