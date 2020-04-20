-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Apr 2020 pada 12.17
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Struktur dari tabel `tbl_activity_sholat`
--

CREATE TABLE `tbl_activity_sholat` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` int(5) UNSIGNED NOT NULL,
  `waktu` date DEFAULT NULL,
  `jam` time NOT NULL,
  `kegiatan` int(1) UNSIGNED DEFAULT NULL,
  `status` int(1) NOT NULL,
  `haid` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_activity_sholat`
--

INSERT INTO `tbl_activity_sholat` (`id`, `user`, `waktu`, `jam`, `kegiatan`, `status`, `haid`) VALUES
(124, 1, '2020-04-20', '04:15:00', 1, 1, 0),
(125, 1, '2020-04-20', '07:20:00', 2, 0, 0),
(126, 1, '2020-04-20', '00:00:00', 3, 0, 0),
(127, 1, '2020-04-20', '00:00:00', 4, 0, 0),
(128, 1, '2020-04-20', '00:00:00', 5, 1, 0),
(129, 1, '2020-04-20', '00:00:00', 6, 0, 0),
(130, 1, '2020-04-20', '00:00:00', 7, 1, 0),
(131, 1, '2020-04-20', '00:00:00', 8, 0, 0),
(132, 1, '2020-04-20', '00:00:00', 9, 0, 0),
(133, 1, '2020-04-20', '00:00:00', 10, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_activity_sholat`
--
ALTER TABLE `tbl_activity_sholat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_activity_sholat`
--
ALTER TABLE `tbl_activity_sholat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
