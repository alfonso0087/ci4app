-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2020 at 06:04 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4_wpu`
--

-- --------------------------------------------------------

--
-- Table structure for table `komik`
--

CREATE TABLE `komik` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `komik`
--

INSERT INTO `komik` (`id`, `judul`, `slug`, `penulis`, `penerbit`, `sampul`, `created_at`, `updated_at`) VALUES
(1, 'Naruto Uzumaki', 'naruto-uzumaki', 'Masashi Kishimoto', 'Shonen Jump', '1594815552_e5e795cb4d5d76018716.jpeg', NULL, '2020-07-15 07:19:12'),
(2, 'Bleach', 'bleach', 'Tite Kubo', 'Shonen Jump', 'bleach.jpg', NULL, NULL),
(12, 'Eye Shield 21', 'eye-shield-21', 'artau', 'yfuofyuo', 'default.jpg', '2020-07-15 06:57:11', '2020-07-15 06:57:11');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-07-15-122850', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1594823659, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Diana Yulianti', 'Gg. Rajawali Timur No. 20, Samarinda 99382, KepR', '2016-06-30 14:32:46', '2020-07-15 10:17:17'),
(2, 'Fathonah Usamah', 'Jr. Ki Hajar Dewantara No. 500, Sawahlunto 57319, PapBar', '2019-06-02 06:51:55', '2020-07-15 10:17:17'),
(3, 'Cawisadi Najmudin', 'Dk. K.H. Wahid Hasyim (Kopo) No. 301, Pematangsiantar 64808, KepR', '1977-07-05 01:02:57', '2020-07-15 10:17:17'),
(4, 'Titin Laksita', 'Ki. Bakau No. 95, Mataram 62861, SumBar', '1995-02-01 08:05:04', '2020-07-15 10:17:17'),
(5, 'Naradi Sihombing', 'Ki. Bayan No. 194, Pekanbaru 16588, JaBar', '1989-09-15 14:59:30', '2020-07-15 10:17:17'),
(6, 'Anastasia Tantri Kusmawati S.Psi', 'Jr. Katamso No. 64, Ambon 63367, Lampung', '2015-03-22 02:21:49', '2020-07-15 10:17:17'),
(7, 'Nadia Lestari', 'Ds. Gedebage Selatan No. 87, Payakumbuh 54647, KalBar', '2012-03-17 15:27:38', '2020-07-15 10:17:17'),
(8, 'Simon Irawan', 'Kpg. Qrisdoren No. 787, Tomohon 43511, KalUt', '2001-04-29 00:58:37', '2020-07-15 10:17:17'),
(9, 'Ridwan Tamba', 'Jln. Yogyakarta No. 214, Pekalongan 25790, KalBar', '1980-05-21 07:59:53', '2020-07-15 10:17:17'),
(10, 'Eva Maryati S.Pt', 'Dk. HOS. Cjokroaminoto (Pasirkaliki) No. 216, Padangsidempuan 97549, Jambi', '2019-02-26 06:11:00', '2020-07-15 10:17:17'),
(11, 'Bagiya Garda Simanjuntak M.Pd', 'Jln. Urip Sumoharjo No. 238, Bima 15419, Gorontalo', '2018-08-15 23:16:11', '2020-07-15 10:17:17'),
(12, 'Dasa Maulana', 'Kpg. Cikapayang No. 956, Prabumulih 12873, JaTim', '1979-02-22 13:11:22', '2020-07-15 10:17:17'),
(13, 'Novi Zaenab Farida S.Gz', 'Psr. Umalas No. 353, Metro 54672, SumSel', '2013-07-28 11:49:48', '2020-07-15 10:17:17'),
(14, 'Imam Tamba', 'Dk. Barat No. 833, Lhokseumawe 72221, SulTra', '1970-05-15 18:42:22', '2020-07-15 10:17:17'),
(15, 'Muhammad Kardi Saputra', 'Psr. Sugiono No. 933, Ambon 58282, SulTra', '1986-08-20 02:33:38', '2020-07-15 10:17:17'),
(16, 'Kariman Anggabaya Suryono', 'Jr. Gardujati No. 324, Tanjung Pinang 13211, DKI', '2012-01-10 12:57:29', '2020-07-15 10:17:17'),
(17, 'Patricia Suryatmi', 'Jln. Monginsidi No. 200, Prabumulih 24967, KalTim', '2003-08-12 22:02:30', '2020-07-15 10:17:17'),
(18, 'Cahya Edi Halim M.Kom.', 'Dk. Sunaryo No. 896, Pangkal Pinang 26334, DIY', '1998-05-29 17:12:23', '2020-07-15 10:17:17'),
(19, 'Elvina Purnawati', 'Ki. Casablanca No. 283, Pekanbaru 40274, SulUt', '2015-09-30 13:09:58', '2020-07-15 10:17:17'),
(20, 'Teddy Tamba', 'Kpg. Daan No. 765, Batu 76410, NTB', '1978-10-27 22:12:43', '2020-07-15 10:17:17'),
(21, 'Fitria Hastuti S.Pd', 'Jln. Cikutra Timur No. 192, Pariaman 51189, Aceh', '2018-05-12 03:31:20', '2020-07-15 10:17:17'),
(22, 'Latika Restu Nurdiyanti', 'Jr. Qrisdoren No. 835, Palopo 77052, MalUt', '1988-06-22 13:39:43', '2020-07-15 10:17:17'),
(23, 'Unjani Yani Melani', 'Jln. Veteran No. 701, Pematangsiantar 53258, JaTim', '1973-11-19 06:24:25', '2020-07-15 10:17:17'),
(24, 'Upik Hutasoit', 'Gg. Bakti No. 159, Palembang 87065, Jambi', '1975-03-09 05:05:32', '2020-07-15 10:17:17'),
(25, 'Balijan Lukita Irawan', 'Kpg. Ahmad Dahlan No. 173, Sungai Penuh 87511, KalSel', '1992-06-05 10:28:52', '2020-07-15 10:17:17'),
(26, 'Azalea Citra Farida', 'Kpg. Abdul Rahmat No. 221, Cimahi 17236, NTB', '2000-11-03 02:03:11', '2020-07-15 10:17:17'),
(27, 'Asmadi Saputra', 'Gg. Zamrud No. 625, Cimahi 67665, Gorontalo', '1985-08-08 14:11:16', '2020-07-15 10:17:17'),
(28, 'Cindy Padmasari', 'Dk. Kusmanto No. 372, Bitung 60635, SumBar', '2013-12-20 03:15:07', '2020-07-15 10:17:17'),
(29, 'Rahmi Lailasari', 'Jln. Uluwatu No. 21, Serang 70475, KalTeng', '2019-03-15 20:06:10', '2020-07-15 10:17:17'),
(30, 'Kuncara Waluyo', 'Kpg. Gremet No. 335, Tomohon 90821, Bali', '2012-08-07 08:57:10', '2020-07-15 10:17:17'),
(31, 'Rachel Maryati', 'Psr. Baja No. 341, Cirebon 13091, SumUt', '2012-12-14 03:33:49', '2020-07-15 10:17:17'),
(32, 'Emong Saefullah M.TI.', 'Ki. Siliwangi No. 46, Administrasi Jakarta Barat 31054, Gorontalo', '2006-09-16 09:45:22', '2020-07-15 10:17:17'),
(33, 'Prasetyo Halim', 'Kpg. Surapati No. 293, Administrasi Jakarta Barat 94832, Banten', '1990-12-10 12:24:17', '2020-07-15 10:17:17'),
(34, 'Puput Purnawati', 'Psr. Bakti No. 60, Blitar 42177, SulTra', '2002-05-05 04:22:11', '2020-07-15 10:17:17'),
(35, 'Talia Astuti', 'Dk. Diponegoro No. 414, Solok 71357, SulSel', '1996-05-09 17:08:58', '2020-07-15 10:17:17'),
(36, 'Chelsea Kusmawati S.I.Kom', 'Jr. Astana Anyar No. 798, Blitar 80975, SumBar', '1988-08-09 01:01:56', '2020-07-15 10:17:17'),
(37, 'Nadine Betania Usamah', 'Jr. Bara Tambar No. 968, Bandar Lampung 31573, Jambi', '2012-03-04 09:54:03', '2020-07-15 10:17:17'),
(38, 'Jamalia Zelaya Padmasari S.E.', 'Jln. Ters. Kiaracondong No. 366, Cilegon 21174, KepR', '1998-05-26 20:22:33', '2020-07-15 10:17:17'),
(39, 'Lamar Harja Ramadan', 'Gg. Dipatiukur No. 31, Dumai 83908, SulBar', '1995-02-20 15:38:48', '2020-07-15 10:17:17'),
(40, 'Prayitna Habibi S.H.', 'Jln. Reksoninten No. 331, Medan 88678, NTT', '1990-07-19 06:29:17', '2020-07-15 10:17:17'),
(41, 'Karen Wijayanti', 'Psr. Bakau No. 801, Padang 52527, SulBar', '2013-05-06 12:17:38', '2020-07-15 10:17:17'),
(42, 'Shania Hastuti', 'Ds. Yos No. 851, Cirebon 27158, NTB', '1972-06-20 08:30:30', '2020-07-15 10:17:17'),
(43, 'Patricia Prastuti', 'Ki. Baladewa No. 574, Magelang 28736, SumSel', '1973-12-07 01:44:44', '2020-07-15 10:17:17'),
(44, 'Ganep Kadir Sihombing S.Gz', 'Jr. Suryo Pranoto No. 850, Subulussalam 44201, SumBar', '2004-03-04 16:19:05', '2020-07-15 10:17:17'),
(45, 'Eja Arta Utama S.Farm', 'Ds. Wahid No. 103, Bontang 52001, KalSel', '2016-11-02 04:35:46', '2020-07-15 10:17:17'),
(46, 'Panji Prasetya', 'Dk. Reksoninten No. 900, Tangerang Selatan 11421, KalTeng', '1997-10-06 10:55:11', '2020-07-15 10:17:17'),
(47, 'Talia Melani', 'Psr. Kalimantan No. 749, Palu 54795, DKI', '2013-06-03 16:58:39', '2020-07-15 10:17:17'),
(48, 'Aisyah Yolanda', 'Jr. Bagas Pati No. 563, Pontianak 76090, Aceh', '1981-03-01 07:18:34', '2020-07-15 10:17:17'),
(49, 'Maya Maryati S.Pt', 'Dk. Madrasah No. 688, Tebing Tinggi 27469, DIY', '1975-08-14 13:00:29', '2020-07-15 10:17:17'),
(50, 'Muni Saptono', 'Ds. Babadak No. 275, Pontianak 78087, KalTeng', '1973-06-26 19:27:45', '2020-07-15 10:17:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `komik`
--
ALTER TABLE `komik`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `komik`
--
ALTER TABLE `komik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
