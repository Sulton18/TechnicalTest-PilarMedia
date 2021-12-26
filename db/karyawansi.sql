-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2021 at 05:09 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `karyawansi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_absen`
--

CREATE TABLE `tb_absen` (
  `id` int(11) NOT NULL,
  `id_karyawan` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `waktu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_absen`
--

INSERT INTO `tb_absen` (`id`, `id_karyawan`, `nama`, `waktu`) VALUES
(18, '170417', 'Sulton Aji Darmawan', 'Friday, 24-12-2021 09:39:49 pm'),
(19, '170401', 'Salma Putri Kurniawati', 'Friday, 24-12-2021 09:45:50 pm'),
(62, '170401', 'Salma Putri Kurniawati', ' 03:46:02 pm'),
(66, '170499', 'Calvin Yambekaw', ' 06:14:35 pm'),
(67, '170417', 'Sulton Aji Darmawan', ' 06:16:08 pm'),
(68, '170402', 'Ana Maghfiroh', ' 06:16:25 pm'),
(69, '170491', 'Agus Ariyadi', ' 06:17:05 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tb_daftar`
--

CREATE TABLE `tb_daftar` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_daftar`
--

INSERT INTO `tb_daftar` (`id`, `username`, `password`) VALUES
(2, 'admin', 'admin'),
(6, 'salma', 'salma');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jabatan`
--

CREATE TABLE `tb_jabatan` (
  `id` int(11) NOT NULL,
  `jabatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_jabatan`
--

INSERT INTO `tb_jabatan` (`id`, `jabatan`) VALUES
(10, 'Full Stack Developer'),
(11, 'HRD'),
(12, 'Ofiice Boy'),
(13, 'Administrasi'),
(14, 'Sekretaris');

-- --------------------------------------------------------

--
-- Table structure for table `tb_karyawan`
--

CREATE TABLE `tb_karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tmp_tgl_lahir` varchar(255) NOT NULL,
  `jenkel` varchar(255) NOT NULL,
  `agama` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `no_tel` varchar(18) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_karyawan`
--

INSERT INTO `tb_karyawan` (`id_karyawan`, `username`, `password`, `nama`, `tmp_tgl_lahir`, `jenkel`, `agama`, `alamat`, `no_tel`, `jabatan`, `foto`) VALUES
(170401, 'salma', 'aee12832d2da671b3bb375e5839f163e', 'Salma Putri Kurniawati', 'Jakarta/02-02-2000', 'Perempuan', 'Islam', 'Jakarta', '085100025001', 'HRD', '24122021154455download.jpg'),
(170402, 'ana', '276b6c4692e78d4799c12ada515bc3e4', 'Ana Maghfiroh', 'Surabaya', 'Perempuan', 'Islam', 'Surabaya', '081234567890', 'Sekretaris', '25122021120924main.png'),
(170417, 'admin', 'fe2d893aa202c27523a11201883bfaaf', 'Sulton Aji Darmawan', 'Sampang/22-12-1998', 'Laki-laki', 'Islam', 'Banyuates, Sampang, Madura', '085704558256', 'Full Stack Developer', '24122021153648sulton.jpeg'),
(170491, 'agus', '819ac58456aa2c0504df2db28a23999f', 'Agus Ariyadi', 'Bangkalan/10-10-2010', 'Laki-laki', 'Kristen', 'Bangkalan', '087890123678', 'Ofiice Boy', '2512202106091020211124_043649.png'),
(170499, 'calvin', '62a0ba0409946b29de92f428010d9d5f', 'Calvin Yambekaw', 'Malang', 'Laki-laki', 'Katholik', 'Malang', '080121343656', 'Administrasi', '2512202112110420211015_081045.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_keterangan`
--

CREATE TABLE `tb_keterangan` (
  `id` int(11) NOT NULL,
  `id_karyawan` varchar(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `alasan` text NOT NULL,
  `waktu` varchar(255) NOT NULL,
  `bukti` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_keterangan`
--

INSERT INTO `tb_keterangan` (`id`, `id_karyawan`, `nama`, `keterangan`, `alasan`, `waktu`, `bukti`) VALUES
(53, '170417', 'Sulton Aji Darmawan', 'Izin', 'menghadiri nikahan teman', 'Friday, 24-12-2021 09:38:24 pm', '24122021153858paper.PNG'),
(54, '170401', 'Salma Putri Kurniawati', 'Izin Cuti', 'Karena Melahirkan', 'Saturday, 25-12-2021 03:46:12 pm', '2512202109464320211015_081045.jpg'),
(55, '170499', 'Calvin Yambekaw', 'Izin Sakit', 'Demam Karen Kecapean', 'Saturday, 25-12-2021 06:14:57 pm', '251220211215385559852.jpg'),
(56, '170491', 'Agus Ariyadi', 'Izin Cuti', 'Karena harus pulang ke malang ', 'Saturday, 25-12-2021 06:17:15 pm', '25122021121755alamat_icon.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_absen`
--
ALTER TABLE `tb_absen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_daftar`
--
ALTER TABLE `tb_daftar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_jabatan`
--
ALTER TABLE `tb_jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_karyawan`
--
ALTER TABLE `tb_karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `tb_keterangan`
--
ALTER TABLE `tb_keterangan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_absen`
--
ALTER TABLE `tb_absen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `tb_daftar`
--
ALTER TABLE `tb_daftar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_jabatan`
--
ALTER TABLE `tb_jabatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb_keterangan`
--
ALTER TABLE `tb_keterangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
