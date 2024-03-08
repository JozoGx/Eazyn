-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2024 at 01:59 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `izin_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bk`
--

CREATE TABLE `bk` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bk`
--

INSERT INTO `bk` (`id`, `nama`, `username`, `password`) VALUES
(1, 'Rismiyanti', 'bkyanti', 'yanti1'),
(2, 'Sri Yuniati', 'bkyuni', 'yuni2'),
(3, 'Suharjiyanto', 'bkyanto', 'yanto3');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `mapel` varchar(50) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `NIP` varchar(20) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nama`, `mapel`, `username`, `password`, `NIP`, `foto`) VALUES
(1, 'Catarina Setyawati Marsiana', 'Sejarah', 'gurucatar', 'catar1', '19650801 200501 2 00', 'Catarina.jpeg'),
(2, 'Diyono', 'Agama', 'gurudiyono', 'diyon2', '19710708 202221 1 00', 'Diyono.jpeg'),
(3, 'Eka Nur Ahmad Romadhoni', 'SaaS', 'gurueka', 'eka3', '19930301 201903 1 01', 'Eka.jpeg'),
(4, 'Nikmah Rokhani', 'Bahasa Indonesia', 'gurunikmah', 'nikmah4', '19760417 200801 2 01', 'Nikmah.jpeg'),
(5, 'Rr. Retna Trimantaraningsih', 'PaaS', 'gururere', 'rere5', '19700627 202121 2 00', 'Retna.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `izin`
--

CREATE TABLE `izin` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `guru_id` int(11) DEFAULT NULL,
  `bk_id` int(11) DEFAULT NULL,
  `alasan` varchar(200) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `waktu` varchar(8) NOT NULL,
  `tanggal` datetime NOT NULL,
  `is_approved` int(11) NOT NULL,
  `file_pendukung` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `izin`
--

INSERT INTO `izin` (`id`, `siswa_id`, `guru_id`, `bk_id`, `alasan`, `kode`, `waktu`, `tanggal`, `is_approved`, `file_pendukung`) VALUES
(1, 1, 1, 1, 'main minecraft', '123', '1-4', '2024-02-16 03:24:32', 3, NULL),
(2, 2, 2, 2, 'lapar', '234', '5-6', '2024-02-16 03:24:32', 2, NULL),
(3, 3, 3, 3, 'bangun kesiangan', '345', '1-2', '2024-02-23 02:33:44', 0, NULL),
(4, 4, 4, 2, 'pergi ke luar negeri', '456', '1-12', '2024-02-23 02:33:44', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `nama_setting` varchar(20) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `nama_setting`, `value`) VALUES
(1, 'pembatasan', '12');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `NIS` varchar(6) NOT NULL,
  `jurusan` varchar(5) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `kelas`, `NIS`, `jurusan`, `username`, `password`, `foto`) VALUES
(1, 'Rosyidah Muthmainnah', '11', '20448', 'SIJAB', '1rosyidah', 'siswa1', 'rosyidah.jpeg'),
(2, 'Robertho Darrell', '11', '20449', 'SIJAB', '2robertho', 'siswa2', 'robertho.jpeg'),
(3, 'Sabian Raka Pramuditya', '11', '20450', 'SIJAB', '3sabian', 'siswa3', 'sabian.jpeg'),
(4, 'Salwa Az-zahra Mizar', '11', '20451', 'SIJAB', '4salwa', 'siswa4', 'salwa.jpeg'),
(5, 'Shafwan Ilham Dzaky', '11', '20452', 'SIJAA', '5budi', 'siswa5', 'budi.jpeg'),
(6, 'Surya Andhika Putri', '11', '20453', 'SIJAA', '6surya', 'siswa6', 'surya.jpeg'),
(7, 'Thara Bunga Novriyansyah', '11', '20454', 'SIJAA', '7thara', 'siswa7', 'thara.jpeg'),
(8, 'Tsabita Irene Adielia', '11', '20455', 'TOIA', '8tsabita', 'siswa8', 'tsabita.jpeg'),
(9, 'Vincentius Reynara Ezratama', '11', '20456', 'TOIA', '9nara', 'siswa9', 'nara.jpeg'),
(10, 'Yohanes Farel Kristiawan', '11', '20457', 'TOIB', '10farel', 'siswa10', 'farel.jpeg'),
(11, 'Nur Rijalul Annam', '11', '20441', 'KIB', '11nur', 'siswa11', 'rijal.jpeg'),
(12, 'Nur Rahman Rifai', '11', '20439', 'KIA', '12fifi', 'siswa12', 'fifi.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bk`
--
ALTER TABLE `bk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `izin`
--
ALTER TABLE `izin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bk`
--
ALTER TABLE `bk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `izin`
--
ALTER TABLE `izin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
