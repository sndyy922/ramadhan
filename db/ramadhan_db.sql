-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2020 at 07:30 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ramadhan_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_activity_sholat`
--

CREATE TABLE `tbl_activity_sholat` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` int(5) UNSIGNED NOT NULL,
  `waktu` datetime DEFAULT NULL,
  `kegiatan` int(1) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `haid` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_foto`
--

CREATE TABLE `tbl_foto` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` int(5) UNSIGNED NOT NULL,
  `waktu` datetime NOT NULL,
  `foto` varchar(255) NOT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_puasa`
--

CREATE TABLE `tbl_puasa` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` int(5) UNSIGNED NOT NULL,
  `status` int(1) UNSIGNED NOT NULL DEFAULT 0,
  `haid` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `tanggal` date NOT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sholat`
--

CREATE TABLE `tbl_sholat` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `type` enum('wajib','sunnah') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sholat`
--

INSERT INTO `tbl_sholat` (`id`, `name`, `type`) VALUES
(1, 'Shubuh', 'wajib'),
(2, 'Dzuhur', 'wajib'),
(3, 'Ashar', 'wajib'),
(4, 'Maghrib', 'wajib'),
(5, 'Isya', 'wajib'),
(6, 'Tahajud', 'sunnah'),
(7, 'Duha', 'sunnah'),
(8, 'Jum\'at', 'sunnah'),
(9, 'Tarawih', 'sunnah'),
(10, 'Witir', 'sunnah');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `id` int(11) NOT NULL,
  `user` int(5) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `nis` varchar(50) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `kelamin` enum('laki-laki','perempuan') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tadarus`
--

CREATE TABLE `tbl_tadarus` (
  `id` int(11) UNSIGNED NOT NULL,
  `user` int(5) UNSIGNED NOT NULL,
  `nama_surat` varchar(50) NOT NULL,
  `surat_ke` smallint(5) UNSIGNED NOT NULL,
  `dari` smallint(5) UNSIGNED NOT NULL,
  `sampai` smallint(5) UNSIGNED NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` tinyint(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_activity_sholat`
--
ALTER TABLE `tbl_activity_sholat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_foto`
--
ALTER TABLE `tbl_foto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_puasa`
--
ALTER TABLE `tbl_puasa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sholat`
--
ALTER TABLE `tbl_sholat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tadarus`
--
ALTER TABLE `tbl_tadarus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_activity_sholat`
--
ALTER TABLE `tbl_activity_sholat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_foto`
--
ALTER TABLE `tbl_foto`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_puasa`
--
ALTER TABLE `tbl_puasa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_sholat`
--
ALTER TABLE `tbl_sholat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tadarus`
--
ALTER TABLE `tbl_tadarus`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
