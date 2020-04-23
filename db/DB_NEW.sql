-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Apr 2020 pada 23.19
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
(244, 2, '2020-04-22', '00:00:00', 0, 0, 0),
(245, 1, '2020-04-22', '00:00:00', 5, 0, 0),
(246, 1, '2020-04-22', '00:00:00', 4, 0, 0),
(247, 1, '2020-04-22', '00:00:00', 3, 0, 0),
(248, 1, '2020-04-22', '00:00:00', 2, 0, 0),
(249, 1, '2020-04-22', '00:00:00', 1, 0, 0),
(250, 1, '2020-04-22', '00:00:00', 10, 0, 0),
(251, 1, '2020-04-22', '00:00:00', 9, 0, 0),
(252, 1, '2020-04-22', '00:00:00', 8, 0, 0),
(253, 1, '2020-04-22', '00:00:00', 7, 0, 0),
(254, 1, '2020-04-22', '00:00:00', 6, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ceramah`
--

CREATE TABLE `tbl_ceramah` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `chanel` varchar(200) NOT NULL,
  `nama_penceramah` varchar(200) NOT NULL,
  `topik` varchar(200) NOT NULL,
  `jam` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_foto`
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
-- Struktur dari tabel `tbl_puasa`
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
-- Struktur dari tabel `tbl_sholat`
--

CREATE TABLE `tbl_sholat` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `type` enum('wajib','sunnah') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_sholat`
--

INSERT INTO `tbl_sholat` (`id`, `name`, `type`) VALUES
(1, 'Puasa', 'wajib'),
(2, 'Shubuh', 'wajib'),
(3, 'Dzuhur', 'wajib'),
(4, 'Ashar', 'wajib'),
(5, 'Maghrib', 'wajib'),
(6, 'Isya', 'wajib'),
(7, 'Tahajud', 'sunnah'),
(8, 'Duha', 'sunnah'),
(9, 'Tarawih', 'sunnah'),
(10, 'Witir', 'sunnah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `id` int(11) NOT NULL,
  `user` int(5) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL,
  `nis` varchar(50) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `kelamin` enum('laki-laki','perempuan') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`id`, `user`, `name`, `nis`, `kelas`, `kelamin`) VALUES
(1, 1, 'Anggia Mentari Al Varah Harahap', '1', '7A', ''),
(2, 2, 'Anisa Bella Maharani', '2', '7A', ''),
(3, 3, 'ANNISA DIAN FAIZIAH', '3', '7A', ''),
(4, 4, 'Anugerah Dwi Novarizal', '4', '7A', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_surat`
--

CREATE TABLE `tbl_surat` (
  `id` int(11) NOT NULL,
  `Nama_surat` varchar(100) NOT NULL,
  `Arti_nama` varchar(100) NOT NULL,
  `jml_ayat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_surat`
--

INSERT INTO `tbl_surat` (`id`, `Nama_surat`, `Arti_nama`, `jml_ayat`) VALUES
(1, 'Surah Al-Fatihah', 'Pembukaan', 7),
(2, 'Surah Al-Baqarah', 'Sapi Betina', 286),
(3, 'Surah Ali \'Imran', 'Keluarga \'Imran', 200),
(4, 'Surah An-Nisa\'', 'Wanita', 176),
(5, 'Surah Al-Ma\'idah', 'Jamuan (hidangan makanan)', 120),
(6, 'Surah Al-An\'am', 'Hewan Ternak', 165),
(7, 'Surah Al-A’raf', 'Tempat yang tertinggi', 206),
(8, 'Surah Al-Anfal', 'Harta rampasan perang', 75),
(9, 'Surah At-Taubah', 'Pengampunan', 129),
(10, 'Surah Yunus', 'Nabi Yunus', 109),
(11, 'Surah Hud', 'Nabi Hud', 123),
(12, 'Surah Yusuf', 'Nabi Yusuf', 111),
(13, 'Surah Ar-Ra’d', 'Guruh (petir)', 43),
(14, 'Surah Ibrahim', 'Nabi Ibrahim', 52),
(15, 'Surah Al-Hijr', 'Gunung Al Hijr', 99),
(16, 'Surah An-Nahl', 'Lebah', 128),
(17, 'Surah Al-Isra\'', 'Perjalanan Malam', 111),
(18, 'Surah Al-Kahf', 'Penghuni-penghuni Gua', 110),
(19, 'Surah Maryam', 'Maryam (Maria)', 98),
(20, 'Surah Ta Ha', 'Ta Ha', 135),
(21, 'Surah Al-Anbiya', 'Nabi-Nabi', 112),
(22, 'Surah Al-Hajj', 'Haji', 78),
(23, 'Surah Al-Mu’minun', 'Orang-orang mukmin', 118),
(24, 'Surah An-Nur', 'Cahaya', 64),
(25, 'Surah Al-Furqan', 'Pembeda', 77),
(26, 'Surah Asy-Syu\'ara\'', 'Penyair', 227),
(27, 'Surah An-Naml', 'Semut', 93),
(28, 'Surah Al-Qasas', 'Kisah', 88),
(29, 'Surah Al-\'Ankabut', 'Laba-laba', 69),
(30, 'Surah Ar-Rum', 'Bangsa Romawi', 60),
(31, 'Surah Luqman', 'Keluarga Luqman', 34),
(32, 'Surah As-Sajdah', 'Sajdah', 30),
(33, 'Surah Al-Ahzab', 'Golongan-Golongan yang bersekutu', 73),
(34, 'Surah Saba’', 'Kaum Saba\'', 54),
(35, 'Surah Fatir', 'Pencipta', 45),
(36, 'Surah Ya Sin', 'Yaasiin', 83),
(37, 'Surah As-Saffat', 'Barisan-barisan', 182),
(38, 'Surah Sad', 'Shaad', 88),
(39, 'Surah Az-Zumar', 'Rombongan-rombongan', 75),
(40, 'Surah Ghafir', 'Yang mengampuni', 85),
(41, 'Surah Fussilat', 'Yang dijelaskan', 54),
(42, 'Surah Asy-Syura', 'Musyawarah', 53),
(43, 'Surah Az-Zukhruf', 'Perhiasan', 89),
(44, 'Surah Ad-Dukhan', 'Kabut', 59),
(45, 'Surah Al-Jasiyah', 'Yang bertekuk lutut', 37),
(46, 'Surah Al-Ahqaf', 'Bukit-bukit pasir', 35),
(47, 'Surah Muhammad', 'Nabi Muhammad', 38),
(48, 'Surah Al-Fath', 'Kemenangan', 29),
(49, 'Surah Al-Hujurat', 'Kamar-kamar', 18),
(50, 'Surah Qaf', 'Qaaf', 45),
(51, 'Surah Az-Zariyat', 'Angin yang menerbangkan', 60),
(52, 'Surah At-Tur', 'Bukit', 49),
(53, 'Surah An-Najm', 'Bintang', 62),
(54, 'Surah Al-Qamar', 'Bulan', 55),
(55, 'Surah Ar-Rahman', 'Yang Maha Pemurah', 78),
(56, 'Surah Al-Waqi’ah', 'Hari Kiamat', 96),
(57, 'Surah Al-Hadid', 'Besi', 29),
(58, 'Surah Al-Mujadilah', 'Wanita yang mengajukan gugatan', 22),
(59, 'Surah Al-Hasyr', 'Pengusiran', 24),
(60, 'Surah Al-Mumtahanah', 'Wanita yang diuji', 13),
(61, 'Surah As-Saff', 'Satu barisan', 14),
(62, 'Surah Al-Jumu’ah', 'Hari Jum’at', 11),
(63, 'Surah Al-Munafiqun', 'Orang-orang yang munafik', 11),
(64, 'Surah At-Tagabun', 'Hari dinampakkan kesalahan-kesalahan', 18),
(65, 'Surah At-Talaq', 'Talak', 12),
(66, 'Surah At-Tahrim', 'Mengharamkan', 12),
(67, 'Surah Al-Mulk', 'Kerajaan', 30),
(68, 'Surah Al-Qalam', 'Pena', 52),
(69, 'Surah Al-Haqqah', 'Hari kiamat', 52),
(70, 'Surah Al-Ma’arij', 'Tempat naik', 44),
(71, 'Surah Nuh', 'Nabi Nuh', 28),
(72, 'Surah Al-Jinn', 'Jin', 28),
(73, 'Surah Al-Muzzammil', 'Orang yang berselimut', 20),
(74, 'Surah Al-Muddassir', 'Orang yang berkemul', 56),
(75, 'Surah Al-Qiyamah', 'Kiamat', 40),
(76, 'Surah Al-Insan', 'Manusia', 31),
(77, 'Surah Al-Mursalat', 'Malaikat-Malaikat Yang Diutus', 50),
(78, 'Surah An-Naba’', 'Berita besar', 40),
(79, 'Surah An-Nazi’at', 'Malaikat-Malaikat Yang Mencabut', 46),
(80, 'Surah \'Abasa', 'Ia Bermuka masam', 42),
(81, 'Surah At-Takwir', 'Menggulung', 29),
(82, 'Surah Al-Infitar', 'Terbelah', 19),
(83, 'Surah Al-Tatfif', 'Orang-orang yang curang', 36),
(84, 'Surah Al-Insyiqaq', 'Terbelah', 25),
(85, 'Surah Al-Buruj', 'Gugusan bintang', 22),
(86, 'Surah At-Tariq', 'Yang datang di malam hari', 17),
(87, 'Surah Al-A’la', 'Yang paling tinggi', 19),
(88, 'Surah Al-Gasyiyah', 'Hari Pembalasan', 26),
(89, 'Surah Al-Fajr', 'Fajar', 30),
(90, 'Surah Al-Balad', 'Negeri', 20),
(91, 'Surah Asy-Syams', 'Matahari', 15),
(92, 'Surah Al-Lail', 'Malam', 21),
(93, 'Surah Ad-Duha', 'Waktu matahari sepenggalahan naik (Dhuha)', 11),
(94, 'Surah Al-Insyirah', 'Melapangkan', 8),
(95, 'Surah At-Tin', 'Buah Tin', 8),
(96, 'Surah Al-\'Alaq', 'Segumpal Darah', 19),
(97, 'Surah Al-Qadr', 'Kemuliaan', 5),
(98, 'Surah Al-Bayyinah', 'Pembuktian', 8),
(99, 'Surah Az-Zalzalah', 'Kegoncangan', 8),
(100, 'Surah Al-\'Adiyat', 'Berlari kencang', 11),
(101, 'Surah Al-Qari\'ah', 'Hari Kiamat', 11),
(102, 'Surah At-Takasur', 'Bermegah-megahan', 8),
(103, 'Surah Al-\'Asr', 'Masa/Waktu', 3),
(104, 'Surah Al-Humazah', 'Pengumpat', 9),
(105, 'Surah Al-Fil', 'Gajah', 5),
(106, 'Surah Quraisy', 'Suku Quraisy', 4),
(107, 'Surah Al-Ma’un', 'Barang-barang yang berguna', 7),
(108, 'Surah Al-Kausar', 'Nikmat yang berlimpah', 3),
(109, 'Surah Al-Kafirun', 'Orang-orang kafir', 6),
(110, 'Surah An-Nasr', 'Pertolongan', 3),
(111, 'Surah Al-Lahab', 'Gejolak Api/ Sabut', 5),
(112, 'Surah Al-Ikhlas', 'Ikhlas', 4),
(113, 'Surah Al-Falaq', 'Waktu Subuh', 5),
(114, 'Surah An-Nas', 'Umat Manusia', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tadarus`
--

CREATE TABLE `tbl_tadarus` (
  `id` int(11) UNSIGNED NOT NULL,
  `user` int(5) UNSIGNED NOT NULL,
  `nama_surat` int(50) NOT NULL,
  `surat_ke` smallint(5) UNSIGNED NOT NULL,
  `dari` smallint(5) UNSIGNED NOT NULL,
  `sampai` smallint(5) UNSIGNED NOT NULL,
  `tgl` date NOT NULL,
  `jam` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
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
-- Indeks untuk tabel `tbl_activity_sholat`
--
ALTER TABLE `tbl_activity_sholat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_ceramah`
--
ALTER TABLE `tbl_ceramah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_foto`
--
ALTER TABLE `tbl_foto`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_puasa`
--
ALTER TABLE `tbl_puasa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_sholat`
--
ALTER TABLE `tbl_sholat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_surat`
--
ALTER TABLE `tbl_surat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_tadarus`
--
ALTER TABLE `tbl_tadarus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_activity_sholat`
--
ALTER TABLE `tbl_activity_sholat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255;

--
-- AUTO_INCREMENT untuk tabel `tbl_foto`
--
ALTER TABLE `tbl_foto`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_puasa`
--
ALTER TABLE `tbl_puasa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_sholat`
--
ALTER TABLE `tbl_sholat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tbl_tadarus`
--
ALTER TABLE `tbl_tadarus`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
