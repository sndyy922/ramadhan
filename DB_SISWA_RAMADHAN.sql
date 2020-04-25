-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Apr 2020 pada 11.59
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
(305, 54251752, '2020-04-24', '00:00:00', 1, 0, 0),
(306, 54251752, '2020-04-25', '00:00:00', 2, 0, 0),
(307, 54251752, '2020-04-25', '00:00:00', 3, 0, 0),
(308, 54251752, '2020-04-25', '00:00:00', 4, 0, 0),
(309, 54251752, '2020-04-25', '00:00:00', 5, 0, 0),
(310, 54251752, '2020-04-25', '00:00:00', 6, 0, 0),
(311, 54251752, '2020-04-25', '00:00:00', 7, 0, 0),
(312, 54251752, '2020-04-25', '00:00:00', 8, 0, 0),
(313, 54251752, '2020-04-25', '00:00:00', 9, 0, 0),
(314, 54251752, '2020-04-25', '00:00:00', 10, 0, 0),
(315, 54251752, '2020-04-25', '00:00:00', 1, 1, 0),
(316, 1, '2020-04-25', '00:00:00', 1, 0, 0),
(317, 1, '2020-04-25', '00:00:00', 2, 0, 0),
(318, 1, '2020-04-25', '00:00:00', 3, 0, 0),
(319, 1, '2020-04-25', '00:00:00', 4, 0, 0),
(320, 1, '2020-04-25', '00:00:00', 5, 0, 0),
(321, 1, '2020-04-25', '00:00:00', 6, 0, 0),
(322, 1, '2020-04-25', '00:00:00', 7, 0, 0),
(323, 1, '2020-04-25', '00:00:00', 8, 0, 0),
(324, 1, '2020-04-25', '00:00:00', 9, 0, 0),
(325, 1, '2020-04-25', '00:00:00', 10, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_ceramah`
--

CREATE TABLE `tbl_ceramah` (
  `id` int(11) NOT NULL,
  `id_user` int(200) NOT NULL,
  `tgl` date NOT NULL,
  `chanel` varchar(200) NOT NULL,
  `nama_penceramah` varchar(200) NOT NULL,
  `topik` varchar(200) NOT NULL,
  `jam` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_ceramah`
--

INSERT INTO `tbl_ceramah` (`id`, `id_user`, `tgl`, `chanel`, `nama_penceramah`, `topik`, `jam`) VALUES
(0, 0, '2020-04-25', 'Chanel ', 'Nama Penceramah :', 'Topik Ceramah :', '12:12');

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
  `id` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `name` varchar(60) NOT NULL,
  `nis` varchar(50) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `kelamin` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`id`, `user`, `name`, `nis`, `kelas`, `kelamin`) VALUES
('', '12345', '', '1234', '', ''),
('0034218918', '12345', 'RENDI TONGA SYAPUTRA', '0034218918', '7E', ''),
('0041442922', '12345', 'Septi Adi Suryo', '0041442922', '8F', ''),
('0042886148', '12345', 'Tegar Ramadhan', '0042886148', '8G', ''),
('0045109004', '12345', 'Fania Rahmatika', '0045109004', '8G', ''),
('0046181386', '12345', 'Harun Arroshid', '0046181386', '8F', ''),
('0046480531', '12345', 'IKHWAN NURCAHYO', '0046480531', '8F', ''),
('0047860024', '12345', 'RIZKY NUR HIDAYAT', '0047860024', '8B', ''),
('0048231339', '12345', 'Lucky Budhi Septian', '0048231339', '8E', ''),
('0048254043', '12345', 'EKA RIZKI RAMADHAN', '0048254043', '8D', ''),
('0049492779', '12345', 'IRFAN SETIAWAN', '0049492779', '8A', ''),
('0051002784', '12345', 'Aulia Oktaviani', '0051002784', '8D', ''),
('0051005242', '12345', 'DIMAS BAGAS PRASETYO', '0051005242', '8D', ''),
('0051021624', '12345', 'Anopwal Surya Widodo', '0051021624', '7H', ''),
('0051312169', '12345', 'Dina Rahmawati', '0051312169', '8G', ''),
('0051313978', '12345', 'ANISA RAHMA FITRIYANI', '0051313978', '8D', ''),
('0051316105', '12345', 'Sri Fajarena', '0051316105', '8C', ''),
('0051610566', '12345', 'Fardha Prayogo', '0051610566', '8G', ''),
('0051659761', '12345', 'RAFI DWI PURNAMA', '0051659761', '8G', ''),
('0051664293', '12345', 'Alista Ariiqoturrizqi', '0051664293', '8C', ''),
('0051736530', '12345', 'ARTIKA RAHMANIA RAHAYU', '0051736530', '8A', ''),
('0051793532', '12345', 'AZALIA PUSPITA NUR SAHWAHITA', '0051793532', '8A', ''),
('0051799715', '12345', 'Maulana Apriyadi', '0051799715', '8D', ''),
('0051909590', '12345', 'Desi Nur Rizkiana', '0051909590', '8G', ''),
('0051913297', '12345', 'Darin Farah Khalda', '0051913297', '8E', ''),
('0052100987', '12345', 'Dimas Hartanto', '0052100987', '8G', ''),
('0052102712', '12345', 'MUHAMMAD MALIK ABDURRAHMAN', '0052102712', '8B', ''),
('0052160368', '12345', 'Ellynda Dwi Noviana', '0052160368', '8B', ''),
('0052441148', '12345', 'AMELIA RAMADHANI UTAMI', '0052441148', '8B', ''),
('0052449891', '12345', 'Lidya Nur Sabrina', '0052449891', '8B', ''),
('0052672191', '12345', 'Femy Dina Lestari', '0052672191', '8B', ''),
('0052676606', '12345', 'ADE NOVITA NURCAHYANI', '0052676606', '8B', ''),
('0052925874', '12345', 'NANDA ADRIAN', '0052925874', '8A', ''),
('0052941623', '12345', 'MARSYA ROSALINA PUTRI', '0052941623', '8G', ''),
('0053296470', '12345', 'Baiquni Burhanuddin Arkan', '0053296470', '8C', ''),
('0053470102', '12345', 'ANINDITA RAHMANINGSIH', '0053470102', '7I', ''),
('0053483163', '12345', 'mohammad gilang ramadhan', '0053483163', '8C', ''),
('0053630919', '12345', 'SOFIA RAHMADANI', '0053630919', '8D', ''),
('0053728336', '12345', 'Monika Tri Lestari', '0053728336', '8F', ''),
('0053758730', '12345', 'Dyah Ayu Kusumaningrum', '0053758730', '8C', ''),
('0053957186', '12345', 'NUR FAIZAH AKHSANITAKWIN', '0053957186', '8E', ''),
('0054034805', '12345', 'Indri Amalia Az Zahra', '0054034805', '8D', ''),
('0054251752', '12345', 'Iqbal Rizky Fantono', '0054251752', '7B', ''),
('0054265739', '12345', 'DESTA SUFANA MUSLIM', '0054265739', '8A', ''),
('0054283054', '12345', 'Jumiati', '0054283054', '7G', ''),
('0054389101', '12345', 'Salsa Jovita Anggraeni Hakim', '0054389101', '8C', ''),
('0054392654', '12345', 'GHOFARUL IKHSAN ALFAQI', '0054392654', '8B', ''),
('0054435665', '12345', 'RIFKI HASBIANUR', '0054435665', '8A', ''),
('0054541406', '12345', 'Arya Pangestu Roofi Utama', '0054541406', '8C', ''),
('0054547468', '12345', 'Arnelyta Dwi Annisa ', '0054547468', '8G', ''),
('0054604083', '12345', 'DIFAN RIFKI ROMADHON', '0054604083', '7F', ''),
('0054769112', '12345', 'ANDHICKA DHANU AZIEL CHAQIQI', '0054769112', '8D', ''),
('0054784594', '12345', 'ADELIA AURA ISNA DIFANDINI', '0054784594', '8F', ''),
('0054837304', '12345', 'TIYO NOFANTO', '0054837304', '8D', ''),
('0054844183', '12345', 'MUHAMMAD ARIF NURHAYAN', '0054844183', '8C', ''),
('0054927733', '12345', 'IRGI FAIZAL', '0054927733', '8A', ''),
('0054932052', '12345', 'Diva Nur\'aini', '0054932052', '8F', ''),
('0055011515', '12345', 'Okan Raihan Orlando', '0055011515', '8F', ''),
('0055017976', '12345', 'INAYAH GUSTI', '0055017976', '8C', ''),
('0055081739', '12345', 'ALIFIA PUTRI AZZAHRA', '0055081739', '8G', ''),
('0055093100', '12345', 'FEBRIANTO', '0055093100', '7C', ''),
('0055106814', '12345', 'Siti Aisyah', '0055106814', '8E', ''),
('0055174769', '12345', 'Rifat Musyaffa', '0055174769', '8C', ''),
('0055215555', '12345', 'DESI ADILA PUTRI', '0055215555', '8E', ''),
('0055281786', '12345', 'MOHAMMAD RAHMADHANI', '0055281786', '7D', ''),
('0055310448', '12345', 'Zahra Nur Agustin', '0055310448', '7E', ''),
('0055371816', '12345', 'Novalita Silkyana Putri', '0055371816', '8F', ''),
('0055382970', '12345', 'FAIQ YUNIAR ANDIKA', '0055382970', '8D', ''),
('0055516031', '12345', 'ALEXANTYA NOVEMBRIANA', '0055516031', '8F', ''),
('0055733194', '12345', 'DEWALI ZANDICAH MALIK', '0055733194', '8D', ''),
('0055762303', '12345', 'ABI DZAKI FAUZAN', '0055762303', '8B', ''),
('0055824592', '12345', 'Vera Keisha Aliya', '0055824592', '8D', ''),
('0055837314', '12345', 'Zean Nur Ramadhani', '0055837314', '8F', ''),
('0055889137', '12345', 'GIANA WENING SAPUTRI', '0055889137', '8C', ''),
('0055914905', '12345', 'Salis Viranti', '0055914905', '8B', ''),
('0056117361', '12345', 'CHANDRA PRADIPTA SETIYAWAN', '0056117361', '8F', ''),
('0056139514', '12345', 'RAFI ADRIANSYAH', '0056139514', '8B', ''),
('0056274889', '12345', 'RAFID MAULANA RAMADHAN', '0056274889', '7E', ''),
('0056318296', '12345', 'AISHAFA DEFCALIA HURIN', '0056318296', '8F', ''),
('0056442718', '12345', 'DESTYA FAJAR DWI ARBIYANSAH', '0056442718', '8C', ''),
('0056458306', '12345', 'Faizun', '0056458306', '8E', ''),
('0056512309', '12345', 'Zein Khoirul Anam', '0056512309', '8E', ''),
('0056535982', '12345', 'Maoradhiva Nugraheni', '0056535982', '8C', ''),
('0056598709', '12345', 'Desti Puspaningrum', '0056598709', '8A', ''),
('0056600273', '12345', 'ELLA SIANI DWI WULANDARI', '0056600273', '8F', ''),
('0056613638', '12345', 'DZAKWAN HADA MUSYAFFA\'', '0056613638', '7E', ''),
('0056686881', '12345', 'Arif Budiyanto', '0056686881', '8B', ''),
('0056840709', '12345', 'Fazry Aiman Syarhan', '0056840709', '8C', ''),
('0056909396', '12345', 'Khairil Akma', '0056909396', '8A', ''),
('0057138483', '12345', 'SYAHRIDAR YASA PASTIKA ', '0057138483', '8B', ''),
('0057338549', '12345', 'Rayhan Galih Perdana', '0057338549', '8D', ''),
('0057417106', '12345', 'HARNUM SAVITRI', '0057417106', '8E', ''),
('0057499390', '12345', 'Nilla Dhian Pramesthi', '0057499390', '8A', ''),
('0057599111', '12345', 'GALUH CANDRA ADRIAN', '0057599111', '8B', ''),
('0057665931', '12345', 'KURNIA EKA KARTIKA', '0057665931', '8E', ''),
('0057721205', '12345', 'AZALINA PUSPITA NUR SAHWAHITA', '0057721205', '8B', ''),
('0057745838', '12345', 'NAFA RAHMADHANI', '0057745838', '8F', ''),
('0058126241', '12345', 'ELVIN LU', '0058126241', '8C', ''),
('0058139330', '12345', 'Azzahra Fitri Novarizka', '0058139330', '8G', ''),
('0058190501', '12345', 'Naufal Rizki Arianto', '0058190501', '8D', ''),
('0058252953', '12345', 'MOHAMAD TRISMA FERIYANTO', '0058252953', '8F', ''),
('0058297138', '12345', 'SITI NURKHALISA', '0058297138', '8F', ''),
('0058581173', '12345', 'Raka Maulana Faren Ahmad', '0058581173', '8C', ''),
('0058668190', '12345', 'Faizal Mahmud Ghathaf', '0058668190', '8C', ''),
('0058951842', '12345', 'Alenka Annajmu Khatta Ghozali', '0058951842', '8D', ''),
('0058983508', '12345', 'Aufa Ahza Pramono', '0058983508', '8A', ''),
('0059059784', '12345', 'Muhammad Ngabdulloh', '0059059784', '8B', ''),
('0059070928', '12345', 'ENDAR ARDIANINGSIH', '0059070928', '8B', ''),
('0059123978', '12345', 'Meilisa Nur Rizqina', '0059123978', '8A', ''),
('0059221451', '12345', 'ADELLA ZAHRA NUR HAKIM', '0059221451', '8D', ''),
('0059387879', '12345', 'Satria Nugraha Adinata', '0059387879', '8C', ''),
('0059776287', '12345', 'Hanif Rizwar Deswiantoro', '0059776287', '7C', ''),
('0059788039', '12345', 'LUTFIANA AZAHARI', '0059788039', '8G', ''),
('0059834510', '12345', 'MOHAMAD ARDAN SAPUTRA', '0059834510', '7G', ''),
('0059891703', '12345', 'LUTFIAH DIAN PERMADI', '0059891703', '8D', ''),
('0059991243', '12345', 'GREGORIUS TITO SUSANTO', '0059991243', '8F', ''),
('0061022706', '12345', 'Ardiansyah Angga Pujianto', '0061022706', '8E', ''),
('0061097040', '12345', 'Zalfa Berliana Putri', '0061097040', '8E', ''),
('0061121106', '12345', 'MUHAMMAD RIZIQ MUBAROQ', '0061121106', '7E', ''),
('0061143116', '12345', 'ELIVIA MAHDANI', '0061143116', '7E', ''),
('0061344213', '12345', 'ZAHWA NURAINI', '0061344213', '7I', ''),
('0061349604', '12345', 'Novelita Cahya Andini', '0061349604', '7E', ''),
('0061353712', '12345', 'Willy Andrian Saputra', '0061353712', '8E', ''),
('0061403939', '12345', 'GALUH YOLANDRA BAROKAH', '0061403939', '8E', ''),
('0061409493', '12345', 'SANDHI CAHYA RAMADHAN', '0061409493', '7A', ''),
('0061411831', '12345', 'HANATA WIJAYANTO', '0061411831', '7D', ''),
('0061433042', '12345', 'Ifel Laelina Yasmin', '0061433042', '8B', ''),
('0061446258', '12345', 'MUHAMMAD CAHYA CHAERUNUSA', '0061446258', '8C', ''),
('0061464286', '12345', 'Hana Arum Larasati', '0061464286', '8A', ''),
('0061474807', '12345', 'Sawaliana Anggun Safitri', '0061474807', '7A', ''),
('0061494800', '12345', 'Nabila Nur Azizah', '0061494800', '8B', ''),
('0061499626', '12345', 'HESSYA PERMANA PUTRA', '0061499626', '7F', ''),
('0061524824', '12345', 'Bima Nanda Wicaksono', '0061524824', '7F', ''),
('0061535332', '12345', 'Sefri Dewi Marlita', '0061535332', '7C', ''),
('0061586849', '12345', 'Muhammad Rifqi Mahardika', '0061586849', '7C', ''),
('0061597403', '12345', 'Ghatahfaandinar Felix Naveda', '0061597403', '7A', ''),
('0061599565', '12345', 'Floretta Melvi Rivanna', '0061599565', '8C', ''),
('0061645381', '12345', 'Aldeagustin Dwi Mulviani', '0061645381', '8B', ''),
('0061664921', '12345', 'Agung Saputra Herdiyansyah', '0061664921', '7F', ''),
('0061681487', '12345', 'Khalista Fefi Arifatun', '0061681487', '7D', ''),
('0061734654', '12345', 'Bunga Dzakiyah', '0061734654', '7E', ''),
('0061765015', '12345', 'Farras Haidar', '0061765015', '7C', ''),
('0061851455', '12345', 'Hanif Budi Hendrawan', '0061851455', '7C', ''),
('0061888840', '12345', 'INDAH WULAN SAFITRI', '0061888840', '7I', ''),
('0061917608', '12345', 'ROFI NURHANAFI', '0061917608', '8F', ''),
('0061972075', '12345', 'Wanda Natasha Ramadhani Al Fitrah', '0061972075', '7C', ''),
('0062013996', '12345', 'CITRA DWI LESTARI', '0062013996', '8D', ''),
('0062175072', '12345', 'ZULFA ADITYA PRATAMA', '0062175072', '8A', ''),
('0062186029', '12345', 'MOHAMAD ILHAM BUSTAMI', '0062186029', '8E', ''),
('0062194166', '12345', 'MARESTA SUBHIANA ', '0062194166', '8A', ''),
('0062233807', '12345', 'Mirza Dwi Pranayuda', '0062233807', '8F', ''),
('0062357831', '12345', 'AZKA RESHINTA HAMIDA', '0062357831', '7F', ''),
('0062381456', '12345', 'Mokhamad Vian Fadli', '0062381456', '8D', ''),
('0062405990', '12345', 'Nyssa Syahrulia Putri', '0062405990', '7H', ''),
('0062427643', '12345', 'HUSEN SYAEFULLOH', '0062427643', '7B', ''),
('0062469612', '12345', 'Erick Satria Perdana', '0062469612', '7A', ''),
('0062492805', '12345', 'RICHARD MUHAMMAD FADLY SANTOSO', '0062492805', '8A', ''),
('0062587659', '12345', 'SEVI ANJAR NU AENI', '0062587659', '7F', ''),
('0062593219', '12345', 'Artanti Estiningtyas', '0062593219', '7C', ''),
('0062639672', '12345', 'Indri Ainur Laela', '0062639672', '8C', ''),
('0062726933', '12345', 'Vanesa Putri Fahrezy', '0062726933', '8G', ''),
('0062778981', '12345', 'Intan Maulidia', '0062778981', '8C', ''),
('0062807121', '12345', 'RASENINDRA TAQI ARKANANDA', '0062807121', '8F', ''),
('0062873952', '12345', 'Rizky Ayu Amalia', '0062873952', '7H', ''),
('0062888205', '12345', 'Hargafirsta Surya Alfaiq', '0062888205', '7E', ''),
('0062966719', '12345', 'FELY AFIFAH', '0062966719', '8B', ''),
('0063029297', '12345', 'Febrilian Khairunnisa', '0063029297', '8A', ''),
('0063117859', '12345', 'DAVIT WAHYU YULIANTO', '0063117859', '7A', ''),
('0063198124', '12345', 'FARRELDO PUTRA HERWINSYAH', '0063198124', '8B', ''),
('0063215637', '12345', 'VIONA AURELIA SALSABILA', '0063215637', '7D', ''),
('0063217253', '12345', 'Nur Zaidah', '0063217253', '7C', ''),
('0063261439', '12345', 'KHOLISH RZKIA RAHMAWATI', '0063261439', '7H', ''),
('0063283278', '12345', 'Ukhti Laili', '0063283278', '7B', ''),
('0063348316', '12345', 'Candra Yudha Pratama', '0063348316', '8E', ''),
('0063437884', '12345', 'Faishal Wafa\' Dzaky', '0063437884', '8G', ''),
('0063442914', '12345', 'ALFIN HAFIZ SETIAWAN', '0063442914', '8B', ''),
('0063457072', '12345', 'Prita Dwi Amanda', '0063457072', '8E', ''),
('0063459003', '12345', 'MUNIF ABDUL AZIZ', '0063459003', '7I', ''),
('0063479275', '12345', 'SALMA DWI RAISSA SALSABILA', '0063479275', '7E', ''),
('0063499120', '12345', 'Afif Nurhidayah', '0063499120', '7I', ''),
('0063528247', '12345', 'RIRIH KINANTI WIDHI PAMUJI', '0063528247', '7E', ''),
('0063568621', '12345', 'Raditya Yusuf', '0063568621', '7H', ''),
('0063569372', '12345', 'NABILAH DEWI NURJANNAH', '0063569372', '8D', ''),
('0063573935', '12345', 'MH.Shyafi Putra Karbala', '0063573935', '8A', ''),
('0063598960', '12345', 'AUDYA SHIFA AZZAHRA', '0063598960', '8G', ''),
('0063623891', '12345', 'HARAYA ALFEN TEDIANSYAH', '0063623891', '7H', ''),
('0063694024', '12345', 'Nabilah Khoirunnisa', '0063694024', '7B', ''),
('0063733460', '12345', 'LAILA INDAH SAFITRI', '0063733460', '7C', ''),
('0063761099', '12345', 'RESTU AL DHAVA ADHIYAKSA', '0063761099', '7D', ''),
('0063813521', '12345', 'Dita Novilia Saputri', '0063813521', '7D', ''),
('0063821832', '12345', 'Alex Sandria Putri Sheva Mareska', '0063821832', '8G', ''),
('0063898385', '12345', 'Khalifatul Azizah', '0063898385', '8D', ''),
('0063908674', '12345', 'Radiana Esalia Hasan', '0063908674', '8G', ''),
('0063967936', '12345', 'YOLANDA MAYA ALYA ZAHRA', '0063967936', '7D', ''),
('0063975351', '12345', 'Mufti Ghisyam Akhrori', '0063975351', '7E', ''),
('0063985249', '12345', 'Sabilla Elisa Syarif', '0063985249', '8A', ''),
('0064005264', '12345', 'Daniel Zanuar Rasyid Syahputra', '0064005264', '8C', ''),
('0064038188', '12345', 'Ade Herwan Sadili', '0064038188', '7E', ''),
('0064078090', '12345', 'Novia Anggraini', '0064078090', '8E', ''),
('0064147276', '12345', 'PRASETYO INGGRIANTO', '0064147276', '8F', ''),
('0064164205', '12345', 'Alfi Nanda Putri', '0064164205', '7I', ''),
('0064167514', '12345', 'FIKRI DWI NAILAH', '0064167514', '8F', ''),
('0064218351', '12345', 'Lequeenaya Wredhayana', '0064218351', '7I', ''),
('0064255854', '12345', 'DEVISA DAHAN CAHYAKUSUMA', '0064255854', '8E', ''),
('0064338512', '12345', 'Amira Sendana Ramadhan', '0064338512', '7B', ''),
('0064370551', '12345', 'Anindya Indriani Juliana', '0064370551', '8B', ''),
('0064371265', '12345', 'KEYLA PUAN HAPSARI', '0064371265', '8E', ''),
('0064379233', '12345', 'SRI YULFAH AFRIANI', '0064379233', '8F', ''),
('0064396596', '12345', 'Vivia Aurellita', '0064396596', '7H', ''),
('0064458244', '12345', 'AYI NOVIKA SARI', '0064458244', '7B', ''),
('0064527532', '12345', 'LUTHVIA ANAN FAUZIAN HERMANTO', '0064527532', '7A', ''),
('0064546330', '12345', 'Dhimas Rifki Hafiz Alfandi', '0064546330', '7A', ''),
('0064568109', '12345', 'NOVIA GITA ALFIRDA MU\'TAZ', '0064568109', '7H', ''),
('0064590831', '12345', 'Lulu Husni Luqiana', '0064590831', '8A', ''),
('0064616421', '12345', 'TIAS ZESVITA', '0064616421', '7A', ''),
('0064622717', '12345', 'Sevania Anindya Putri', '0064622717', '7A', ''),
('0064671648', '12345', 'Melinda Diansa', '0064671648', '7B', ''),
('0064677969', '12345', 'Nadya Devika Maharani Alamsyah', '0064677969', '7B', ''),
('0064682916', '12345', 'ADZILAH FEBRILIAN ROSITO', '0064682916', '7E', ''),
('0064825493', '12345', 'NANDY ISNA PRAMUDYA', '0064825493', '8D', ''),
('0064840106', '12345', 'RIFKI WINDAYANI', '0064840106', '7C', ''),
('0064841612', '12345', 'DIVALIYAN NURHIDAYANTI', '0064841612', '7D', ''),
('0064848716', '12345', 'HIMAWAN WIDYATAMA', '0064848716', '8G', ''),
('0064885363', '12345', 'Mutiara Irsyah', '0064885363', '7C', ''),
('0064896713', '12345', 'Bagas Kurniansya', '0064896713', '8E', ''),
('0064937338', '12345', 'Yanwar Setiawan', '0064937338', '7D', ''),
('0064943847', '12345', 'HANIFAH SETIANINGRUM', '0064943847', '7F', ''),
('0064970869', '12345', 'RONA SALMA MALIKHA', '0064970869', '8F', ''),
('0064994923', '12345', 'VELYNE ANDYNA FILZAHRANI', '0064994923', '8A', ''),
('0065050327', '12345', 'EMA SHINTA MAHARANI', '0065050327', '7A', ''),
('0065148231', '12345', 'Syarif Amarulloh', '0065148231', '7H', ''),
('0065159461', '12345', 'KAYLA AMATUSYAFI', '0065159461', '7A', ''),
('0065178890', '12345', 'BESTARI NAURA SYIFA', '0065178890', '8D', ''),
('0065350055', '12345', 'Revalsa Putra Lusyandra', '0065350055', '8D', ''),
('0065381452', '12345', 'YULIAN NUR IZZATI', '0065381452', '7F', ''),
('0065389729', '12345', 'DENANDRA SYARIEF NUR WAHYUDI', '0065389729', '8G', ''),
('0065507303', '12345', 'MUHAMMAD HAFFI NURUL FIRDAUS', '0065507303', '8B', ''),
('0065638575', '12345', 'Linda Lianawati', '0065638575', '7F', ''),
('0065762248', '12345', 'FARISA NUR SEPTIANI', '0065762248', '8G', ''),
('0065848828', '12345', 'NAISHA SALSABILLA', '0065848828', '8F', ''),
('0065946631', '12345', 'RETNO DWI YULIANTI', '0065946631', '7I', ''),
('0065960419', '12345', 'Aziz Abdullah', '0065960419', '7E', ''),
('0065991058', '12345', 'HANADI DIANA PUTRI', '0065991058', '7E', ''),
('0066027610', '12345', 'Jasmine Khairunisa', '0066027610', '7F', ''),
('0066108844', '12345', 'Najma Asyifa Isma Khairani', '0066108844', '7E', ''),
('0066109159', '12345', 'AFRISYA EFRA ELYA MAULIDA', '0066109159', '8D', ''),
('0066136745', '12345', 'Zanuar Saputra', '0066136745', '8A', ''),
('0066153823', '12345', 'FIKRA GIGA TAHERA ARRAFI', '0066153823', '7A', ''),
('0066176279', '12345', 'DESVIANA ZAHWA AULIA', '0066176279', '8C', ''),
('0066193716', '12345', 'Anugerah Dwi Novarizal', '0066193716', '7A', ''),
('0066306571', '12345', 'Ayu Syafira Wulandari', '0066306571', '7E', ''),
('0066329304', '12345', 'Ahmad Nur Kholilurohman', '0066329304', '7F', ''),
('0066403256', '12345', 'R. Landa Pangda Hasan', '0066403256', '7F', ''),
('0066418746', '12345', 'NAISYA RIFA NURUL AZAHRA', '0066418746', '7I', ''),
('0066424708', '12345', 'Dimas Rizky Ramadhan', '0066424708', '7B', ''),
('0066470650', '12345', 'Unaisyah Moulia Wardhani', '0066470650', '8C', ''),
('0066514088', '12345', 'MUHAMMAD TAUKHID GOAN PRASETYO', '0066514088', '7E', ''),
('0066605229', '12345', 'ADITYA GILANG PRASETYA', '0066605229', '7F', ''),
('0066651068', '12345', 'Rosita Dwi Anggraini', '0066651068', '8F', ''),
('0066672739', '12345', 'Rizka Nur Fajri', '0066672739', '7G', ''),
('0066747389', '12345', 'ANNISA ARTIKASARI', '0066747389', '8F', ''),
('0066832521', '12345', 'IFFANDI IBNU PRASETYA', '0066832521', '8G', ''),
('0066885450', '12345', 'ALISHA DHIYAURRAHMA PRATIWI', '0066885450', '8C', ''),
('0066893967', '12345', 'AGRESIA DITA HIDAYAH', '0066893967', '8E', ''),
('0066959154', '12345', 'Dinda Nuraini', '0066959154', '7A', ''),
('0066962800', '12345', 'Dinda Pramuditya', '0066962800', '8C', ''),
('0067033160', '12345', 'Rosmila Dewi', '0067033160', '8D', ''),
('0067070826', '12345', 'Intan Cahaya Pratiwi', '0067070826', '7B', ''),
('0067161424', '12345', 'Nadhif Fauqa Saputra', '0067161424', '7C', ''),
('0067236491', '12345', 'Diah Ayu Saputri', '0067236491', '7D', ''),
('0067252313', '12345', 'Oktavian Ramadhani', '0067252313', '7E', ''),
('0067323499', '12345', 'Aldo Ramadhani Saputra', '0067323499', '8G', ''),
('0067379285', '12345', 'Vandika Dwi Pamungkas', '0067379285', '7I', ''),
('0067398788', '12345', 'ARTIKA OCTAVIA PASYA', '0067398788', '8E', ''),
('0067406348', '12345', 'HUGO ARYAGUNA', '0067406348', '8D', ''),
('0067435603', '12345', 'SABILLA NAILLA ZULFA', '0067435603', '8D', ''),
('0067464651', '12345', 'MOHAMMAD CANDRA PRIMADANI', '0067464651', '7B', ''),
('0067500401', '12345', 'Adlar Abhista Tito Pratama', '0067500401', '7C', ''),
('0067500816', '12345', 'SAYYIDA NUR RIFA\'I', '0067500816', '7D', ''),
('0067506350', '12345', 'YUSUF AKIF ALFAJRI', '0067506350', '8E', ''),
('0067548810', '12345', 'MEISYA AGRYN RAHMADHANI', '0067548810', '8A', ''),
('0067592344', '12345', 'EGI NURFAHMI', '0067592344', '7C', ''),
('0067595605', '12345', 'Cindy Aini Maemunah', '0067595605', '7I', ''),
('0067596126', '12345', 'Pradipta Arya Dwi Pambudi', '0067596126', '8A', ''),
('0067610361', '12345', 'HOKGIE ISDIYAR PRAYOGA', '0067610361', '8B', ''),
('0067637484', '12345', 'ADITYA PRATAMA', '0067637484', '8E', ''),
('0067666001', '12345', 'Raya Putra Indra Pratama', '0067666001', '8G', ''),
('0067697150', '12345', 'JIHAN AHNAF ARSHINTA ZAHIYAH', '0067697150', '8E', ''),
('0067705880', '12345', 'CAYLA SALSABILA PUTRI KUSWANTO', '0067705880', '8A', ''),
('0067780059', '12345', 'NADIA GIAN ALIVIA', '0067780059', '8G', ''),
('0067782012', '12345', 'Malano Opses Putra Sandu', '0067782012', '8F', ''),
('0067793394', '12345', 'OKTA PUTRA ROMADHON', '0067793394', '7G', ''),
('0067847866', '12345', 'RADITYA RAMADHAN MULIA', '0067847866', '7I', ''),
('0067913658', '12345', 'Desnita Nur Shafira', '0067913658', '7G', ''),
('0067918732', '12345', 'Rizki Nur Fajri', '0067918732', '7G', ''),
('0067930203', '12345', 'MUKHAMAD KHANIF MAULANA', '0067930203', '7F', ''),
('0067995509', '12345', 'ADESTA DIMAS SETIYAWAN FIRMANSYAH', '0067995509', '8G', ''),
('0068046367', '12345', 'NALAISA PUSPA BUMILANG', '0068046367', '7B', ''),
('0068117420', '12345', 'FELITA SYIFA\' AGUSTIN', '0068117420', '7G', ''),
('0068172075', '12345', 'ISNAIINI MEI HAYATI', '0068172075', '7A', ''),
('0068213294', '12345', 'Rofifah Alya Budiasih', '0068213294', '7D', ''),
('0068227429', '12345', 'Barkah Saputra', '0068227429', '7E', ''),
('0068234282', '12345', 'MUHAMAD RAFIF MUZAFA', '0068234282', '8E', ''),
('0068280285', '12345', 'Fiki Nur Mufaqoromah', '0068280285', '7G', ''),
('0068315224', '12345', 'YENITA NURLAILY AZZAHRA', '0068315224', '8A', ''),
('0068337381', '12345', 'Dafiq Aufaiziy Yagsya', '0068337381', '8B', ''),
('0068344846', '12345', 'Yola Mustika Ramadani', '0068344846', '7B', ''),
('0068400647', '12345', 'FAUZAN FADILLAH ', '0068400647', '7E', ''),
('0068412652', '12345', 'NATHANIA NAFISA WULANDARI', '0068412652', '8B', ''),
('0068412796', '12345', 'Mohamad Imam Soleh', '0068412796', '7G', ''),
('0068424450', '12345', 'Amalia Afdelina', '0068424450', '7G', ''),
('0068481998', '12345', 'NADILA CITRA NATARA SANTY', '0068481998', '8D', ''),
('0068487351', '12345', 'Talitha Belva Camila Said', '0068487351', '8D', ''),
('0068491698', '12345', 'SYELITA PUTRI IRMAWATI', '0068491698', '7B', ''),
('0068564966', '12345', 'Moh. Zico Guruh Aprilano', '0068564966', '7A', ''),
('0068622581', '12345', 'Putri Rafika Oktafiani', '0068622581', '7H', ''),
('0068738024', '12345', 'Susan Nur Rahmah', '0068738024', '7F', ''),
('0068775729', '12345', 'HILMI ZAHID MAULANA', '0068775729', '8A', ''),
('0068788376', '12345', 'Dwi Hesti', '0068788376', '7F', ''),
('0068791010', '12345', 'Diki Dwi Purwansyah', '0068791010', '8D', ''),
('0068822428', '12345', 'INDAH ELISA MAULIDINA', '0068822428', '8E', ''),
('0068881594', '12345', 'Aurelia Titania Putri', '0068881594', '8E', ''),
('0068914194', '12345', 'Zhafran Hilal Rhamadhan', '0068914194', '7D', ''),
('0068961039', '12345', 'Duta Khoirul Abyan', '0068961039', '7I', ''),
('0068961844', '12345', 'ASFAL MAULA CAHYADIANSYAH PRATAMA', '0068961844', '7B', ''),
('0068983330', '12345', 'Jonathan Anggra Tetuko', '0068983330', '8F', ''),
('0068988303', '12345', 'SERLINA VIKA LESTARI', '0068988303', '8C', ''),
('0069070521', '12345', 'Naf\'an Nurhafis', '0069070521', '7A', ''),
('0069146671', '12345', 'Annisa Syamila Doreen', '0069146671', '8G', ''),
('0069210794', '12345', 'Fauzan Nafi\' Al-Hajj', '0069210794', '8F', ''),
('0069221734', '12345', 'NAUFAL SYAFI ALIFIAN', '0069221734', '8A', ''),
('0069258307', '12345', 'FALENTINO GADING RAFIF RIWANO', '0069258307', '8G', ''),
('0069351450', '12345', 'TEGAR ARIFIYAN', '0069351450', '7H', ''),
('0069403833', '12345', 'ALYA NABILA ANJANI', '0069403833', '8G', ''),
('0069446184', '12345', 'Yonata Zenny Prastya', '0069446184', '7E', ''),
('0069499934', '12345', 'TRINANDA MAURENO ISKANDAR', '0069499934', '8B', ''),
('0069506657', '12345', 'LINGGA PRASETYO', '0069506657', '8G', ''),
('0069520232', '12345', 'Atta Prima Sastri', '0069520232', '7G', ''),
('0069606443', '12345', 'Amar Arafat', '0069606443', '7B', ''),
('0069675149', '12345', 'Felly Oktavia Rahma Dani', '0069675149', '7I', ''),
('0069688824', '12345', 'INNANDHITO ADHIRA PRAYOGI', '0069688824', '8A', ''),
('0069739059', '12345', 'Fatir Isradila Mahardika Afandi', '0069739059', '7I', ''),
('0069746971', '12345', 'DZAKI ATHO RIZQULLOH', '0069746971', '7A', ''),
('0069800071', '12345', 'PRAYOGA DANAR SATRIA AJI', '0069800071', '7D', ''),
('0069875296', '12345', 'TSAQIF ARVA MAULANA', '0069875296', '8D', ''),
('0069893448', '12345', 'Aziz Kurniawan', '0069893448', '7B', ''),
('0071005962', '12345', 'FARICHA GANIS PUSPAWARDANI', '0071005962', '7F', ''),
('0071024688', '12345', 'Dwi Rista Pristianti', '0071024688', '7G', ''),
('0071051088', '12345', 'HANAFI RETNO SAPUTRO', '0071051088', '7I', ''),
('0071218953', '12345', 'DAFFA AFIF FAIZHAL', '0071218953', '7H', ''),
('0071219433', '12345', 'PRAMESTI LAVERDA ATTA', '0071219433', '7G', ''),
('0071242067', '12345', 'Aroyanu Zakiya Luvni', '0071242067', '7B', ''),
('0071273826', '12345', 'Berliana Asih Pratiwi', '0071273826', '7C', ''),
('0071388177', '12345', 'Windy Purwaningrum', '0071388177', '7B', ''),
('0071419128', '12345', 'SATYA BANGUN WIDYA PURNAMA', '0071419128', '7G', ''),
('0071493947', '12345', 'Dimas Restu Kurniawan', '0071493947', '7I', ''),
('0071519743', '12345', 'NARENDRA RADIT PRATAMA', '0071519743', '7G', ''),
('0071576472', '12345', 'Nidya Queenty Prameswari', '0071576472', '7C', ''),
('0071675841', '12345', 'Maulidina Wulandari', '0071675841', '7E', ''),
('0071693574', '12345', 'ABID RIFQI APRILIAWAN', '0071693574', '7B', ''),
('0071782819', '12345', 'Moch Akbar Abdillah', '0071782819', '7C', ''),
('0071988484', '12345', 'Edwin Afrilya', '0071988484', '7C', ''),
('0072011757', '12345', 'Rizka Khairul Nabila', '0072011757', '7I', ''),
('0072027885', '12345', 'Satrio Robiansyah', '0072027885', '7I', ''),
('0072154294', '12345', 'Ezica Maulida Al Kalivi', '0072154294', '7I', ''),
('0072311142', '12345', 'Nazwa Wahyu Meyshilla', '0072311142', '7E', ''),
('0072320573', '12345', 'MUHAMMAD ABDUL QODIR JAELANI ADIFA', '0072320573', '7B', ''),
('0072329996', '12345', 'DAMAI DIHANI INDAHLOKA', '0072329996', '7D', ''),
('0072351256', '12345', 'FABIAN BINTANG PRABOWO', '0072351256', '7C', ''),
('0072397181', '12345', 'JESYKA REVALINA VIVIANI', '0072397181', '7G', ''),
('0072445768', '12345', 'ARBANGA DADI WIGUNA', '0072445768', '7H', ''),
('0072455019', '12345', 'INAYATUS SYARIFAH', '0072455019', '7F', ''),
('0072469298', '12345', 'Anisa Bella Maharani', '0072469298', '7A', ''),
('0072534908', '12345', 'Mareta Shinta Kartika', '0072534908', '7E', ''),
('0072534955', '12345', 'Herdiana Icha Asyafii', '0072534955', '7A', ''),
('0072694110', '12345', 'Mauluna Zahra', '0072694110', '8E', ''),
('0072745353', '12345', 'GALUH LUKITASARI', '0072745353', '7F', ''),
('0072806427', '12345', 'Febriana Dwi Saputri', '0072806427', '7C', ''),
('0072897246', '12345', 'Erlin Mey Cahyaningsih', '0072897246', '7G', ''),
('0072960912', '12345', 'ASSA ANNASJWA AULIANISA', '0072960912', '7G', ''),
('0073059361', '12345', 'Mahesa akbar pratama', '0073059361', '7D', ''),
('0073213783', '12345', 'Amanda Nabila Amalia', '0073213783', '7D', ''),
('0073280440', '12345', 'SUCI SILVIANA', '0073280440', '7H', ''),
('0073284762', '12345', 'AFGHAN EDHI ASMORO ', '0073284762', '7F', ''),
('0073365695', '12345', 'Athiyatul Qoyyum', '0073365695', '7C', ''),
('0073454590', '12345', 'SYIFA NAYLA FARHAH', '0073454590', '7C', ''),
('0073458523', '12345', 'Nayaka Azarine', '0073458523', '7I', ''),
('0073461307', '12345', 'MUHAMMAD JUNDI FADLAN FIRDAUS', '0073461307', '7D', ''),
('0073578927', '12345', 'Raihan Alim Mulya Widiantoro', '0073578927', '7D', ''),
('0073583825', '12345', 'Moch. Gibran Malik', '0073583825', '7H', ''),
('0073635656', '12345', 'MUHAMMAD AKMAL KHOTIBUL UMAM', '0073635656', '7G', ''),
('0073873513', '12345', 'Intan Vara Anggitia', '0073873513', '7H', ''),
('0073940320', '12345', 'Aridhah Laila Ramadhani', '0073940320', '7G', ''),
('0073943951', '12345', 'Heri Adi Pratama', '0073943951', '7F', ''),
('0073981255', '12345', 'ANGGI FEBRIANA', '0073981255', '7H', ''),
('0073986070', '12345', 'Ovan Avrilianto', '0073986070', '7F', ''),
('0074136500', '12345', 'MAHARANI EZA RAYASWARI', '0074136500', '7I', ''),
('0074221619', '12345', 'CELSIE APRILIA SEKAR RINJANI', '0074221619', '7B', ''),
('0074349621', '12345', 'ZAYAN NIDA KARMILA', '0074349621', '7H', ''),
('0074470284', '12345', 'ZAIN FAISHAL HANIF', '0074470284', '7F', ''),
('0074536776', '12345', 'Saka Adi Luhung', '0074536776', '7C', ''),
('0074546893', '12345', 'Aan Febbyan', '0074546893', '7H', ''),
('0074546916', '12345', 'Rizkia Zara Nurfaiza', '0074546916', '7D', ''),
('0074590573', '12345', 'CLARESTA SYIFA PRTISTA SUSENO', '0074590573', '7A', ''),
('0074618871', '12345', 'Ferdinan Galang Ananta', '0074618871', '7D', ''),
('0074653548', '12345', 'Aufaadhani Agista Raihaana', '0074653548', '7A', ''),
('0074752431', '12345', 'MEIDIANA KUSUMA DEVI', '0074752431', '7C', ''),
('0074769723', '12345', 'Nazara Mezaluna', '0074769723', '7F', ''),
('0074956379', '12345', 'ALAN RAFI KUSUMA', '0074956379', '7B', ''),
('0074997960', '12345', 'ELSHA MERLY ANI', '0074997960', '7H', ''),
('0075064780', '12345', 'INDAH KURNIA RAMADHANI', '0075064780', '7D', ''),
('0075104974', '12345', 'ADELIA YURISTIKA PRAHANDARI', '0075104974', '7B', ''),
('0075112896', '12345', 'YOVELDHA KECZYA MAUDINA PUTRI', '0075112896', '7B', ''),
('0075127730', '12345', 'Nurul Huda Husain', '0075127730', '7I', ''),
('0075197890', '12345', 'Amelia Nur Azizah', '0075197890', '7I', ''),
('0075398703', '12345', 'JULIA ASYIFA FARAHDANI', '0075398703', '7H', ''),
('0075414309', '12345', 'ABELLIA KELANA KHALILA PUTRI', '0075414309', '8B', ''),
('0075418562', '12345', 'Yanuar Rizki Putri', '0075418562', '7I', ''),
('0075438249', '12345', 'Najwa Dwi Fairu Uzah', '0075438249', '7A', ''),
('0075499478', '12345', 'Dzaky Afaza Andika Putra', '0075499478', '7H', ''),
('0075543951', '12345', 'Mia Nur Ramadhani', '0075543951', '7E', ''),
('0075578686', '12345', 'Nahrisyah Alyuspi', '0075578686', '7A', ''),
('0075596805', '12345', 'Anggia Mentari Al Varah Harahap', '0075596805', '7A', ''),
('0075671224', '12345', 'Wahyu Amalia Maylanie', '0075671224', '7E', ''),
('0075751128', '12345', 'Devi Ainun Agasi', '0075751128', '7D', ''),
('0075781476', '12345', 'Endryan Dwi Purwanto', '0075781476', '7E', ''),
('0075981215', '12345', 'KINANTI DWI LARASATI', '0075981215', '7A', ''),
('0076005894', '12345', 'Almara Ardiza', '0076005894', '7H', ''),
('0076025572', '12345', 'Ade Bagus Satrio', '0076025572', '7G', ''),
('0076162398', '12345', 'KAYANA LILA FAUSTINA', '0076162398', '7B', ''),
('0076184012', '12345', 'Edwan Zhuniyan Pratama', '0076184012', '7G', ''),
('0076355958', '12345', 'Istighfarina Tyara Azzahra', '0076355958', '7I', ''),
('0076454670', '12345', 'JENI ARTIKA SETIARINI', '0076454670', '7H', ''),
('0076468644', '12345', 'Sofyan Hendrawan', '0076468644', '7I', ''),
('0076494588', '12345', 'MUHAMAD HOIRUL FUADI', '0076494588', '7B', ''),
('0076529410', '12345', 'FAHRI ASFAR ARRASYID', '0076529410', '7D', ''),
('0076546194', '12345', 'MUHAMMAD DAFFA ADHITYA RAHMAN', '0076546194', '7G', ''),
('0076546921', '12345', 'Dela Grania Moyna Evelyn', '0076546921', '7E', ''),
('0076646440', '12345', 'Najwa Isya Maharani', '0076646440', '7H', ''),
('0076674850', '12345', 'Maulana Rifa\'i', '0076674850', '7D', ''),
('0076710916', '12345', 'Zikri Febiansyah Pratama', '0076710916', '7G', ''),
('0076718459', '12345', 'Azis Bagas Maulana', '0076718459', '7F', ''),
('0076728376', '12345', 'Alfian Ahmad Fauzacky', '0076728376', '7H', ''),
('0076760872', '12345', 'Nafasati Aurelya Putri', '0076760872', '7H', ''),
('0076790038', '12345', 'NAFI\'AH KHAERUNNISA', '0076790038', '7C', ''),
('0076918372', '12345', 'Intan Dhiyandra Yodhi', '0076918372', '7F', ''),
('0076924417', '12345', 'NUR RISKA WIDYAWATI', '0076924417', '7B', ''),
('0076956184', '12345', 'GEZCHA AR RAZZY RULIYANTO', '0076956184', '7H', ''),
('0077232379', '12345', 'Sevina Lia Ramadhani', '0077232379', '7G', ''),
('0077311267', '12345', 'Zaskia Farah Zayyana', '0077311267', '7G', ''),
('0077347037', '12345', 'Nabilla Mauliana', '0077347037', '7C', ''),
('0077376795', '12345', 'Kiara Nala Tsabita', '0077376795', '7B', ''),
('0077407374', '12345', 'Celesta Habibah Firdzani', '0077407374', '7H', ''),
('0077467049', '12345', 'DIAH AYU PRAMUNDITA ', '0077467049', '7D', ''),
('0077558835', '12345', 'Akbar Rezqi Surendra NP', '0077558835', '7G', ''),
('0077769704', '12345', 'Nafi\'u Nurhayati Aqilla', '0077769704', '7F', ''),
('0077887354', '12345', 'Bunga Ida Avriliana', '0077887354', '7D', ''),
('0077919895', '12345', 'Azahra Tifania Putri', '0077919895', '7F', ''),
('0078002458', '12345', 'Talitha Neysa Oktriana', '0078002458', '7C', ''),
('0078193755', '12345', 'Akbar Putra Pamungkas', '0078193755', '7F', ''),
('0078265420', '12345', 'WULAN QINASIH', '0078265420', '7F', ''),
('0078272221', '12345', 'Rafii\' Anugrah Pratama', '0078272221', '7A', ''),
('0078360011', '12345', 'NABELLA AZARHINA FULZIANA', '0078360011', '7H', ''),
('0078501948', '12345', 'YOVINTA BRILLIAN REVANIA', '0078501948', '7A', ''),
('0078581364', '12345', 'MUHAMMAD ROSYID AL AHQAAF', '0078581364', '7G', ''),
('0078608816', '12345', 'Nyla Amanda Putri', '0078608816', '7C', ''),
('0078651784', '12345', 'Mohammad Rizky Ardiansyah', '0078651784', '7D', ''),
('0078665266', '12345', 'KAFKA DWI AZRIL SYAH', '0078665266', '7H', ''),
('0078734011', '12345', 'IRSYAD FADLI ROMADHON', '0078734011', '7G', ''),
('0078820323', '12345', 'Bayu Prasetyo', '0078820323', '7D', ''),
('0078824983', '12345', 'SAHIRA SALSABILA', '0078824983', '7E', ''),
('0078878255', '12345', 'Mohammad Aamar Fatih Zaidan', '0078878255', '7C', ''),
('0079047102', '12345', 'Irsyad Nadhif Wardana', '0079047102', '7A', ''),
('0079142391', '12345', 'Hanif Prayoga', '0079142391', '7I', ''),
('0079267144', '12345', 'Nadia Fatikah Ariqoh', '0079267144', '7A', ''),
('0079497783', '12345', 'ANNISA DIAN FAIZIAH', '0079497783', '7A', ''),
('0079678052', '12345', 'NADIRA HAT RAS RENGGANINGTYAS ', '0079678052', '7F', ''),
('0079690562', '12345', 'NUR LAELI NGASRIYAH', '0079690562', '7E', ''),
('0079829482', '12345', 'Sania Anggraeni', '0079829482', '7H', ''),
('0079903692', '12345', 'MAULANA RISQI ALSEENDO', '0079903692', '7B', ''),
('0083435228', '12345', 'Faizal Dwi Saputro', '0083435228', '7B', ''),
('0083475748', '12345', 'Salsabilla Luthfi Reviana', '0083475748', '7I', ''),
('0087225496', '12345', 'Ardyan Maulana Muhammad', '0087225496', '7I', ''),
('0087672923', '12345', 'Julyan Panca Aditya', '0087672923', '7G', ''),
('0117679521', '12345', 'NOVITA TRIMULYANINGSIH', '0117679521', '7H', ''),
('0134000623', '12345', 'Intan Natalinda Absari', '0134000623', '7I', ''),
('0136222384', '12345', 'FERIZQO KAFKA NIRAWAN', '0136222384', '7A', ''),
('0136739267', '12345', 'Syifa Tazniatul Aisya', '0136739267', '7G', ''),
('0137383149', '12345', 'Hanif Abdullah', '0137383149', '7I', ''),
('0138617616', '12345', 'Alifah Zahra Agustina Putri', '0138617616', '7G', ''),
('0145418319', '12345', 'RACHEL ESA PERMANA', '0145418319', '7C', ''),
('1', '12345', 'sandy', '1', '1', '1'),
('3065104600', '12345', 'Ellya Risma RezekiBoru Mangungsong', '3065104600', '7C', ''),
('3065390131', '12345', 'Febri Nur Utami', '3065390131', '7D', ''),
('3065972303', '12345', 'Muhammad Zaki Setiono', '3065972303', '7F', ''),
('3066131392', '12345', 'UKASYAH DAMAR HADI', '3066131392', '7E', ''),
('3078804272', '12345', 'Intan Anggun cahyani', '3078804272', '7D', '');

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
  `user` int(50) UNSIGNED NOT NULL,
  `nama_surat` int(50) NOT NULL,
  `surat_ke` smallint(5) UNSIGNED NOT NULL,
  `dari` smallint(5) UNSIGNED NOT NULL,
  `sampai` smallint(5) UNSIGNED NOT NULL,
  `tgl` date NOT NULL,
  `jam` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_tadarus`
--

INSERT INTO `tbl_tadarus` (`id`, `user`, `nama_surat`, `surat_ke`, `dari`, `sampai`, `tgl`, `jam`) VALUES
(42, 54251752, 1, 0, 12, 12, '1212-12-12', '00:00:12'),
(43, 1, 1, 0, 1, 1, '1212-12-12', '00:00:01');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT untuk tabel `tbl_foto`
--
ALTER TABLE `tbl_foto`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_sholat`
--
ALTER TABLE `tbl_sholat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_tadarus`
--
ALTER TABLE `tbl_tadarus`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
