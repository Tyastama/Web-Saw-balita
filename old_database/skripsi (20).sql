-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2021 at 10:59 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skripsi`
--

-- --------------------------------------------------------

--
-- Table structure for table `balita`
--

CREATE TABLE `balita` (
  `idbalita` int(5) NOT NULL,
  `nama_balita` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `nama_ayah` varchar(100) NOT NULL,
  `nama_ibu` varchar(100) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `balita`
--

INSERT INTO `balita` (`idbalita`, `nama_balita`, `tanggal_lahir`, `jenis_kelamin`, `nama_ayah`, `nama_ibu`, `alamat`) VALUES
(1, 'Rafa Aji Pratama', '2017-01-08', 'Laki-laki', 'Naruto', 'Lia', 'Mandingan'),
(2, 'Dafa Pratama', '2018-03-16', 'Laki-laki', 'Naruto', 'Lia', 'Mandingan'),
(3, 'Valentino Kusdiarto', '2017-08-01', 'Laki-laki', 'Apik', 'Dwi', 'Mandingan'),
(4, 'Dhea ', '2016-09-05', 'Perempuan', '-', 'Eva Susiowati', 'Mandingan'),
(5, 'Via Azerala', '2017-10-10', 'Perempuan', '-', 'Wasi P', 'Mayungan'),
(6, 'Alinza AK', '2017-07-08', 'Perempuan', 'Agus M', 'Dwi S', 'Mayungan'),
(7, 'Faza Maraya', '2020-06-16', 'Laki-laki', 'Sigit Tri Handono', 'Yeni Retnowati', 'Mayungan'),
(8, 'Syafiqa Asena', '2018-08-01', 'Perempuan', 'Sugino', 'Andina', 'Mandingan'),
(9, 'Zainudin', '2019-09-05', 'Laki-laki', 'Harun', 'Indah', 'Mandingan'),
(10, 'Maya Hasna Alfiani', '2017-10-10', 'Perempuan', 'Juli', 'Ida Susanti', 'Mandingan'),
(11, 'Maudy K', '2020-07-08', 'Perempuan', '-', 'Ira', 'Mayungan'),
(12, 'Kiki Satya Yudantha', '2020-06-16', 'Laki-laki', 'Margiyanto', 'Andriana', 'Mandingan'),
(13, 'Indra Agustina', '2019-08-01', 'Laki-laki', 'Agung Handayana', 'Sulisna', 'Mandingan'),
(14, 'Syahrul Hisam', '2020-09-05', 'Laki-laki', 'Andre T', 'Ina Saswita', 'Mandingan'),
(15, 'Nayla Azzahra ', '2018-08-10', 'Perempuan', 'Rudy S', 'Wiwik Handayani', 'Mayungan'),
(16, 'Nadin Aulia Rahmawati', '2019-07-22', 'Perempuan', '-', 'Septi Novita', 'Mandingan'),
(17, 'Dinda Aulia W', '2018-06-16', 'Perempuan', 'Heri', 'Anik W', 'Mandingan'),
(18, 'Fattan Al Baihaqi', '2020-08-04', 'Laki-laki', 'Nawan ', 'Eni', 'Mandingan'),
(19, 'Wawa Anzina', '2021-01-05', 'Perempuan', 'Edi', 'Cici', 'Mayungan'),
(20, 'Fadia Azzahra I', '2020-10-10', 'Perempuan', '-', 'Andri', 'Mayungan'),
(21, 'Pipit Maudin', '2020-08-08', 'Perempuan', 'Syam', '-', 'Mandingan'),
(22, 'Rendi Y', '2020-10-16', 'Laki-laki', 'Endra S', '-', 'Mayungan'),
(23, 'Aulia Oktvia', '2020-07-01', 'Perempuan', '-', 'Erna Sugiyanti', 'Mandingan'),
(24, 'Andre Yudistira Ramadhan', '2020-05-05', 'Laki-laki', '-', 'Dina Yumaroh', 'Mandingan'),
(25, 'Iyan Ikhsanu', '2019-10-13', 'Laki-laki', 'Sayono', 'Jumartini', 'Mandingan');

-- --------------------------------------------------------

--
-- Table structure for table `imunisasi`
--

CREATE TABLE `imunisasi` (
  `id_imunisasi` int(5) NOT NULL,
  `idbalita` int(5) NOT NULL,
  `hb` date DEFAULT NULL,
  `bcg` date DEFAULT NULL,
  `dpt1` date DEFAULT NULL,
  `hb2` date DEFAULT NULL,
  `hb3` date DEFAULT NULL,
  `campak` date DEFAULT NULL,
  `status_imunisasi` enum('Lengkap','Kurang Lengkap','Tidak Ada') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `imunisasi`
--

INSERT INTO `imunisasi` (`id_imunisasi`, `idbalita`, `hb`, `bcg`, `dpt1`, `hb2`, `hb3`, `campak`, `status_imunisasi`) VALUES
(1, 1, '2017-01-08', '2017-02-25', '2017-03-25', '2017-04-25', '2017-05-25', '2017-10-25', 'Lengkap'),
(2, 2, '2018-03-16', '2018-04-25', '2018-05-25', '2018-06-25', '2018-07-25', '2018-12-25', 'Lengkap'),
(3, 3, '2017-08-12', '2017-09-25', '2017-10-25', '0000-00-00', '0000-00-00', '0000-00-00', 'Kurang Lengkap'),
(4, 4, '2016-09-05', '2016-10-25', '2016-11-25', '2016-12-25', '2017-01-25', '0000-00-00', 'Kurang Lengkap'),
(5, 5, '2017-10-10', '2017-11-25', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 'Kurang Lengkap'),
(6, 1, '2017-07-08', '2017-08-25', '2017-09-25', '2017-10-25', '2017-11-25', '2018-04-25', 'Lengkap'),
(7, 7, '2020-06-16', '2020-07-25', '2020-08-25', '2020-09-25', '2020-10-25', '2021-04-25', 'Kurang Lengkap'),
(8, 8, '2018-08-01', '2018-09-25', '2018-10-25', '2018-11-25', '2018-12-25', '2018-05-25', 'Lengkap'),
(9, 9, '2019-09-05', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 'Kurang Lengkap'),
(10, 10, '2017-10-10', '2017-11-25', '2017-12-25', '2018-01-25', '2018-02-25', '0000-00-00', 'Kurang Lengkap'),
(11, 11, '2020-07-08', '2020-08-25', '2020-09-25', '2020-10-25', '2020-11-25', '0000-00-00', 'Kurang Lengkap'),
(12, 12, '2020-06-16', '2020-07-25', '2020-08-25', '2020-09-25', '2020-10-25', '2021-04-25', 'Lengkap'),
(13, 13, '2019-08-12', '2019-09-25', '2019-10-25', '2019-11-25', '2019-12-25', '0000-00-00', 'Kurang Lengkap'),
(14, 14, '2020-09-05', '2020-10-25', '0000-00-00', '2020-12-25', '2020-01-25', '0000-00-00', 'Kurang Lengkap'),
(15, 15, '2018-08-10', '2018-09-25', '2018-10-25', '2018-11-25', '0000-00-00', '0000-00-00', 'Kurang Lengkap'),
(16, 16, '2019-07-22', '2019-08-25', '2019-09-25', '0000-00-00', '0000-00-00', '0000-00-00', 'Kurang Lengkap'),
(17, 17, '2018-06-16', '2018-07-25', '2018-08-25', '2018-09-25', '2018-10-25', '0000-00-00', 'Kurang Lengkap'),
(18, 18, '2020-08-04', '2020-09-25', '2020-10-25', '2020-11-25', '2020-12-25', '0000-00-00', 'Kurang Lengkap'),
(19, 19, '2021-01-05', '2021-02-25', '2021-03-25', '0000-00-00', '0000-00-00', '0000-00-00', 'Kurang Lengkap'),
(20, 20, '2020-10-10', '2020-11-25', '2020-12-25', '2021-01-25', '2021-02-25', '0000-00-00', 'Kurang Lengkap'),
(21, 21, '2020-08-08', '2020-09-25', '2020-10-25', '2020-11-25', '2020-12-25', '0000-00-00', 'Kurang Lengkap'),
(22, 22, '2020-10-16', '2020-11-25', '2020-12-25', '2021-01-25', '2021-02-25', '0000-00-00', 'Kurang Lengkap'),
(23, 23, '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 'Tidak Ada'),
(24, 24, '2020-05-05', '2020-06-25', '2020-07-25', '2020-08-25', '2020-09-25', '2021-02-25', 'Lengkap'),
(25, 25, '2019-10-13', '2019-11-25', '2019-12-25', '2019-01-25', '0000-00-00', '0000-00-00', 'Kurang Lengkap');

-- --------------------------------------------------------

--
-- Table structure for table `kriteriasaw`
--

CREATE TABLE `kriteriasaw` (
  `id_kriteria` int(100) NOT NULL,
  `nama_kriteria` varchar(50) NOT NULL,
  `jenis` enum('cost','benefit') NOT NULL,
  `bobot` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kriteriasaw`
--

INSERT INTO `kriteriasaw` (`id_kriteria`, `nama_kriteria`, `jenis`, `bobot`) VALUES
(1, 'Umur', 'benefit', 0.3),
(2, 'Berat Badan', 'benefit', 0.25),
(3, 'Tinggi Badan', 'benefit', 0.25),
(4, 'Lingkar Kepala', 'benefit', 0.2);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `nama`, `username`, `password`, `level`) VALUES
(7, 'Admin', 'admin', 'admin', 'admin'),
(8, 'User', 'user', 'user', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `nilaisaw`
--

CREATE TABLE `nilaisaw` (
  `id` int(11) NOT NULL,
  `id_nilai` int(110) NOT NULL,
  `id_kriteria` int(110) NOT NULL,
  `id_balita` int(110) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `perkembangan`
--

CREATE TABLE `perkembangan` (
  `idperkembangan` int(5) NOT NULL,
  `idbalita` int(5) NOT NULL,
  `berat_badan` double NOT NULL,
  `tinggi_badan` double NOT NULL,
  `lingkar_kepala` double NOT NULL,
  `id_imunisasi` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perkembangan`
--

INSERT INTO `perkembangan` (`idperkembangan`, `idbalita`, `berat_badan`, `tinggi_badan`, `lingkar_kepala`, `id_imunisasi`) VALUES
(1, 1, 13.7, 95.5, 47, 1),
(2, 2, 13.5, 89.6, 46.5, 2),
(3, 3, 13.2, 89.4, 46.3, 3),
(4, 4, 14.5, 95.2, 47, 4),
(5, 5, 15.2, 89.5, 46, 5),
(6, 6, 16, 90, 46.2, 6),
(7, 7, 7.6, 67.4, 42.3, 7),
(8, 8, 11.5, 82.5, 45, 8),
(9, 9, 8.5, 71.8, 43.5, 9),
(10, 10, 15.6, 88.1, 46, 10),
(11, 11, 8.2, 65.5, 42, 11),
(12, 12, 9, 67.4, 42.2, 12),
(13, 13, 8.7, 71.6, 43.5, 13),
(14, 14, 7.3, 64.5, 40.5, 14),
(15, 15, 12, 80.9, 45, 15),
(16, 16, 7.8, 68.8, 43.6, 16),
(17, 17, 10, 80.8, 45.2, 17),
(18, 18, 7.5, 6.66, 41.5, 18),
(19, 19, 4.5, 54.5, 37, 19),
(20, 20, 6, 60.9, 40.3, 20),
(21, 21, 7.4, 64.3, 41.6, 21),
(22, 22, 5.8, 60.5, 39.2, 22),
(23, 23, 7.2, 65.5, 42, 23),
(24, 24, 9.3, 70.2, 43, 24),
(25, 25, 9.7, 71.5, 43.4, 25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `balita`
--
ALTER TABLE `balita`
  ADD PRIMARY KEY (`idbalita`);

--
-- Indexes for table `imunisasi`
--
ALTER TABLE `imunisasi`
  ADD PRIMARY KEY (`id_imunisasi`),
  ADD KEY `idbalita` (`idbalita`);

--
-- Indexes for table `kriteriasaw`
--
ALTER TABLE `kriteriasaw`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilaisaw`
--
ALTER TABLE `nilaisaw`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perkembangan`
--
ALTER TABLE `perkembangan`
  ADD PRIMARY KEY (`idperkembangan`),
  ADD KEY `idbalita` (`idbalita`),
  ADD KEY `id_imunisasi` (`id_imunisasi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `nilaisaw`
--
ALTER TABLE `nilaisaw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10005;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `imunisasi`
--
ALTER TABLE `imunisasi`
  ADD CONSTRAINT `imunisasi_ibfk_1` FOREIGN KEY (`idbalita`) REFERENCES `balita` (`idbalita`),
  ADD CONSTRAINT `imunisasi_ibfk_2` FOREIGN KEY (`idbalita`) REFERENCES `balita` (`idbalita`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
