-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2023 at 09:23 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app-perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` enum('1','0') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `nama_lengkap`, `password`, `status`) VALUES
(1, 'admin', 'Administrator', '$2y$10$r7bdumUI64GkGDELZ934M.ahJJwfZAdl/bn0e2SHKwdzNaq4/Ii26', '1'),
(2, 'keperpus', 'Kepala Perpustakaan', '$2y$10$PCP.5LR8skTpBW/lekkkaOeqjEXaq6X1HhEZfTpGD9EuGiq3yrvAu', '0'),
(5, 'farids', 'Farids Marchdiansyah', '$2y$10$8zP9jwmkDaBWhAB/6nsLReBgvnRCdxjBT.nSbVpTcAmN/88lRDh.O', '1');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `kd_buku` char(5) NOT NULL,
  `judul_buku` varchar(100) NOT NULL,
  `sampul` varchar(255) NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `tahun_terbit` char(4) NOT NULL,
  `nomor_rak` smallint(6) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `kd_buku`, `judul_buku`, `sampul`, `penerbit`, `pengarang`, `tahun_terbit`, `nomor_rak`, `jumlah`) VALUES
(2, 'BK001', 'Bahasa Indonesia', 'Buku_Bahasa_Indonesia_kelas_1_pak_iskandar.PNG', 'CV Mitra Media Pustaka', 'Iskandar Sukini', '2009', 3, 100),
(3, 'BK002', 'Ilmu Pengetahuan Alam', 'Buku_Ipa_kelas_1.PNG', 'Pusat Perbukuan', 'Drs. Bambang Suseno Subardi, S.Pd', '2010', 4, 99),
(4, 'BK003', 'Ilmu Pengetahuan Sosial', 'Buku_IPS_kelas_1.PNG', ' Pusat Perbukuan', 'Leo Agung Sutoyo Sulasih', '2009', 5, 100),
(5, 'BK004', 'Matematika', 'Buku_MTK_kelas_1.PNG', 'Pusat Perbukuan', 'AL-YA\'LU, Malang', '2008', 6, 100),
(7, 'BK005', 'Pendidikan Kewarganegaraan', 'Buku_PKN_kelas_1.PNG', 'Pusat Perbukuan', 'Karsono Sutimin', '2009', 7, 100),
(8, 'BK006', 'Seni Budaya dan Keterampilan', 'Buku_SBK_kelas_1.PNG', 'Pusat Perbukuan', 'Dyah Ruci Bramadya Rasha Murti Lukman Zen', '2010', 8, 100),
(9, 'BK007', 'Bahasa Indonesia', 'bhs_indonesia_kls_4.PNG', 'Pusat Kurikulum dan Perbukuan', 'Eva Yulia Nukman Cicilia Erni Setyowati', '2021', 9, 100),
(10, 'BK008', 'Bahasa Inggris', 'Bhs_inggris_kls_5.PNG', 'Pusat Perbukuan', 'EYLC TEAM', '2021', 10, 100),
(11, 'BK009', 'Pendidikan Agama Islam', 'PAI_KLS_1.PNG', 'Pusat Kurikulum dan Perbukuan', 'Muhammad Nurzakun Joko Santoso', '2021', 11, 100),
(12, 'BK010', 'Matematika ', 'MTK_KLS_2.PNG', 'Pusat Perbukuan', 'Tim  Gakko Tosho', '2021', 12, 100),
(13, 'BK011', 'Pendidikan Agama Islam', 'PAI_KLS_2.PNG', 'Pusat Perbukuan', 'A. Zainal Abidin Siti Kusrini', '2021', 13, 100),
(14, 'BK012', 'Bahasa Inggris', 'Bahasa_Inggris_kls_2.PNG', 'Pusat Perbukuan', 'EYLC TEAM', '2022', 14, 100),
(15, 'BK013', 'Bahasa Indonesia', 'BI_kelas_2.PNG', 'Pusat Perbukuan', 'Widjati Hartiningtyas Eni Priyanti', '2021', 15, 100),
(16, 'BK014', 'Matematika', 'MTK_KLS_3.PNG', 'Pusat Perbukuan', 'CV. Bina Pustaka', '2009', 4, 100),
(17, 'BK015', 'Pendidikan Jasmina Olahraga dan Kesehatan', 'PJOK_KLS_IV.PNG', 'Pusat Kurikulum dan Perbukuan Balitbang Kemendikbud', 'Berton Supriadi Simamora', '2019', 6, 100),
(18, 'BK016', 'Ilmu Pengetahuan Sosial', 'IPS_KLS_4.PNG', 'Pusat Perbukuan', ' Swadaya Murni, CV', '2009', 9, 100),
(19, 'BK017', 'Ilmu Pengetahuan Alam', 'IPA_KLS_IV.PNG', 'Pusat Perbukuan', 'Mentari Pustaka', '2010', 9, 100);

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id` int(11) NOT NULL,
  `tgl_buat` date NOT NULL,
  `judul_laporan` varchar(50) NOT NULL,
  `jenis` enum('semua','pinjam','kembali') NOT NULL,
  `tgl_awal` date DEFAULT NULL,
  `tgl_akhir` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id`, `tgl_buat`, `judul_laporan`, `jenis`, `tgl_awal`, `tgl_akhir`) VALUES
(11, '2020-12-18', 'Laporan Bulanan', 'semua', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_anggota` int(11) NOT NULL,
  `no_reg` char(6) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `kelas` varchar(5) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_anggota`, `no_reg`, `nama_siswa`, `jenis_kelamin`, `kelas`, `password`) VALUES
(11, 'REG004', 'wawan', 'L', 'I', '$2y$10$xwNgSqXYWlM4wYYyqtkuweIGFuKMcwWULOhJbMI4tADlZsfyntGmm'),
(12, 'REG005', 'supri', 'L', 'I', '$2y$10$Xq9KrrdEbu8VCKCsyky89uGyZxNRorUvcrNKrkDU0V1qxiI30GyxS'),
(13, 'REG006', 'rohman', 'L', 'IV', '$2y$10$y0MKiemWeQFl/UwI4ttS9OWec3SWWr7qPVy9BJ1VGJmEgUCMuG9EW'),
(14, 'REG007', 'yadi', 'L', 'VI', '$2y$10$jByZA8wm4ceOUOx/rfPeQe7GCs8t.SG1Xg2mDHOT.5ANp9nspqPP.'),
(15, 'REG008', 'elva', 'L', 'V', '$2y$10$UH.HUsbmu2mhKuiIcg/AcuNNzpA1EgisYc.cN/OkWGswz4NMy5Fp2'),
(16, 'REG009', 'farids', 'L', 'I', '$2y$10$1yYcVjPUg/84KngNKJ1IgObl5PpGjZoDP3RQfiBVgAWCEQumKZZQG'),
(17, 'REG010', 'fahrul', 'L', 'III', '$2y$10$rZuFHOvgoLyf.LZe2OllbeIhlEp4ew26OhqATU0g1QcGdNIvjGyA6');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `no_reg` char(6) NOT NULL,
  `kd_buku` char(5) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `denda` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `no_reg`, `kd_buku`, `tgl_pinjam`, `tgl_kembali`, `denda`) VALUES
(16, 'REG009', 'BK001', '2023-07-15', '2023-07-23', 1000),
(17, 'REG009', 'BK002', '2023-07-16', NULL, NULL),
(18, 'REG009', 'BK001', '2023-07-20', '2023-07-20', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kd_buku` (`kd_buku`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_anggota`),
  ADD UNIQUE KEY `no_reg` (`no_reg`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
