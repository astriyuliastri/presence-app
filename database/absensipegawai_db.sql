-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2022 at 07:10 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensipegawai_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id_absen` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `waktu` time NOT NULL,
  `keterangan` enum('Masuk','Pulang') NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id_absen`, `tgl`, `waktu`, `keterangan`, `id_user`) VALUES
(4, '2019-07-25', '07:21:53', 'Masuk', 6),
(5, '2019-07-26', '09:00:47', 'Masuk', 6),
(6, '2019-07-26', '16:01:03', 'Pulang', 6),
(7, '2019-07-25', '17:01:28', 'Pulang', 6),
(8, '2021-12-07', '16:40:17', 'Masuk', 6),
(9, '2021-12-07', '16:40:45', 'Pulang', 6),
(10, '2021-12-14', '10:42:20', 'Masuk', 6),
(11, '2021-12-14', '10:49:56', 'Pulang', 6),
(12, '2021-12-15', '16:47:40', 'Masuk', 6),
(13, '2021-12-15', '16:47:47', 'Pulang', 6),
(14, '2021-12-22', '09:25:30', 'Masuk', 6),
(15, '2021-12-22', '09:25:38', 'Pulang', 6),
(16, '2021-12-23', '10:49:30', 'Masuk', 6),
(17, '2021-12-23', '10:50:07', 'Pulang', 6),
(18, '2022-01-27', '20:09:29', 'Masuk', 6),
(19, '2022-01-27', '20:12:59', 'Pulang', 6),
(20, '2022-01-28', '19:57:40', 'Masuk', 6),
(21, '2022-02-11', '11:28:07', 'Masuk', 6),
(22, '2022-02-15', '08:55:41', 'Masuk', 6),
(23, '2022-02-15', '08:55:45', 'Pulang', 6);

-- --------------------------------------------------------

--
-- Table structure for table `divisi`
--

CREATE TABLE `divisi` (
  `id_divisi` smallint(3) NOT NULL,
  `nama_divisi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divisi`
--

INSERT INTO `divisi` (`id_divisi`, `nama_divisi`) VALUES
(1, 'Seksi Pelayanan'),
(4, 'Kebersihan'),
(5, 'Kepala Dusun'),
(6, 'Kepala Desa'),
(7, 'Sekertaris'),
(8, 'Urusan Tata Usaha dan Umum'),
(9, 'Urusan Keuangan'),
(10, 'Urusan Perencanaan'),
(11, 'Seksi Pemerintahan'),
(12, 'Seksi Kesejahteraan'),
(13, 'Dusun I'),
(14, 'Dusun II'),
(15, 'Dusun III');

-- --------------------------------------------------------

--
-- Table structure for table `jam`
--

CREATE TABLE `jam` (
  `id_jam` tinyint(1) NOT NULL,
  `start` time NOT NULL,
  `finish` time NOT NULL,
  `keterangan` enum('Masuk','Pulang') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jam`
--

INSERT INTO `jam` (`id_jam`, `start`, `finish`, `keterangan`) VALUES
(1, '20:00:00', '08:15:00', 'Masuk'),
(2, '20:00:00', '22:00:00', 'Pulang');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` smallint(5) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `foto` varchar(20) DEFAULT 'no-foto.png',
  `divisi` smallint(5) DEFAULT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(60) NOT NULL,
  `level` enum('Manager','Karyawan') NOT NULL DEFAULT 'Karyawan'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nik`, `nama`, `telp`, `email`, `foto`, `divisi`, `username`, `password`, `level`) VALUES
(1, '', 'Astri Yuliastri', '089530157874', 'astri.yuliastri@gmail.com', '1644890879.png', NULL, 'admin', '$2y$10$ggpFtRjc5ZDJPWgQAz9Giebsmev8G1D4/YZ3wVNL2q1Jsux2AEURC', 'Manager'),
(6, '123456789101112', 'Haris', '08151231902', 'haris@gmail.com', '1644890685.png', 6, 'haris', '$2y$10$wx5R5ktzSxFbwBRw9t4Nbux.kO9yxK18Pe5EXPNjmCJERjrek9BTe', 'Karyawan'),
(7, '', 'Tika Erika R, S.Pd', '08123123876', 'tika.erika@gmail.com', '1644890712.png', NULL, 'tika', '$2y$10$UFB6bCDElu3yhk/wxv1CzOwiwS30b7h0l5F0ezB5gVAj3rmIw68dq', 'Karyawan'),
(14, '16830298764873', 'Dadan Sudrajat', '089637283973', 'dadan.sudrajat@gmail.com', '1644890737.png', NULL, 'dadan', '$2y$10$.ps5Eq2OzHc2ksCWBKg1uOX4X0m6gPT1KgBlUwkJT8nDi5WsoJona', 'Karyawan'),
(15, '193747389876', 'Lespana', '089763729732', 'lespana@gmail.com', '1644890753.png', NULL, 'lespana', '$2y$10$oWkOg3nexKEN5PtzZ2ZSEOuqXUdVBFm6De.4c3XgQjCKZuJWkpPmS', 'Karyawan'),
(16, '1876998763456', 'Bayu Samiaji', '089234567876', 'bayu.samiaji@gmail.com', 'no-foto.png', 10, 'bayu', '$2y$10$cIuBMmxMbJxNlHXw0rHO1OZR/5gBoz23soCD5mARorXb4JkVs3.4q', 'Karyawan'),
(17, '18965467638098', 'Wahyudin', '089765487975', 'wahyudin@gmail.com', 'no-foto.png', 12, 'wahyudin', '$2y$10$dms.Cqm/z2XRc/UpqkwW3.a36jhekActGtcMRDubyYBnyq5VuoABe', 'Karyawan'),
(18, '1765898876709', 'Arga Nugraha', '087654654678', 'arga.nugraha@gmail.com', 'no-foto.png', 13, 'arga', '$2y$10$8pgEnvPd53WXgb1sH4kS1OXVuSMYBxcYacSYQdBtaH2AaKl91LB6W', 'Karyawan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id_absen`);

--
-- Indexes for table `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`id_divisi`);

--
-- Indexes for table `jam`
--
ALTER TABLE `jam`
  ADD PRIMARY KEY (`id_jam`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id_absen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `divisi`
--
ALTER TABLE `divisi`
  MODIFY `id_divisi` smallint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `jam`
--
ALTER TABLE `jam`
  MODIFY `id_jam` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
