-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2022 at 07:23 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nicopedia`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(5) NOT NULL,
  `nama_admin` varchar(40) NOT NULL,
  `user_admin` varchar(15) NOT NULL,
  `pass_admin` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `user_admin`, `pass_admin`) VALUES
(1, 'Nico', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id_akun` int(5) NOT NULL,
  `nama_akun` varchar(100) NOT NULL,
  `stok_akun` int(5) NOT NULL,
  `gambar_akun` varchar(200) NOT NULL,
  `platform` varchar(100) NOT NULL,
  `harga_akun` int(10) NOT NULL,
  `id_kategori` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id_akun`, `nama_akun`, `stok_akun`, `gambar_akun`, `platform`, `harga_akun`, `id_kategori`) VALUES
(7, 'Akun ML 2 Skin Legend', 1, 'ml2.jpg', 'Mobile', 2000000, 8),
(8, 'Akun ML 3 Epic Limited', 1, 'ml4.jpg', 'Mobile', 160000, 8),
(9, 'Akun ML Spek Sultan', 1, 'ml5.jpg', 'Mobile', 900000, 8),
(10, 'Akun  ML Stun Selena 12  Skin Star', 1, 'ml6.jpg', 'Mobile', 800000, 8),
(11, 'Akun ML Spek GG', 1, 'ml7.jpg', 'Mobile', 210000, 8),
(14, 'Akun EPEP CR 32 Epas 22', 1, 'ff2.jpg', 'Mobile', 450000, 9),
(15, 'Akun EPEP Sg janda X S8', 1, 'ff3.jpg', 'Mobile', 300000, 9),
(16, '2 Akun DLS Take All 110', 1, 'dls1.jpg', 'Mobile', 110000, 11),
(17, 'Akun DLS Biasa aja kata Lemon', 1, 'dls2.jpg', 'Mobile', 60000, 11);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(5) NOT NULL,
  `nama_customer` varchar(40) NOT NULL,
  `telp_customer` varchar(15) NOT NULL,
  `catatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `nama_customer`, `telp_customer`, `catatan`) VALUES
(71, 'bebas', '324141', 'ok'),
(72, 'Izumi Fod', '23412432 ', 'hyyhyh'),
(73, 'erfwe', '342', 'dfs'),
(74, 'Izumi Fod', '8218738791313', 'Rahasia'),
(75, 'Izumi Fod', '8218738791313', 'Rahasia'),
(76, 'Izumi Fod', '8218738791313', 'Rahasia'),
(77, 'Izumi Fod', '8218738791313', 'Rahasia'),
(78, 'Izumi Fod', '8218738791313', 'Rahasia'),
(79, 'Izumi Fod', '8218738791313', 'Rahasia'),
(80, 'Izumi Fod', '8218738791313', 'Rahasia'),
(81, 'Izumi Fod', '8218738791313', 'Rahasia'),
(82, 'Izumi Fod', '8218738791313', 'Rahasia'),
(83, 'Izumi Fod', '8218738791313', 'Rahasia'),
(84, 'Izumi Fod', '8218738791313', 'Rahasia'),
(85, 'Izumi Fod', '8218738791313', 'Rahasia'),
(86, 'Izumi Fod', '8218738791313', 'Rahasia'),
(87, 'Izumi Fod', '8218738791313', 'Rahasia'),
(88, 'vb ', '324141', 'fgsf');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(8, 'Mobile Legend'),
(9, 'Free Fire'),
(10, 'Pubg Mobile'),
(11, 'Dream League Soccer'),
(12, 'High Domino'),
(13, 'Genshin Impact');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(5) NOT NULL,
  `tgl_penjualan` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `qty_penjualan` int(5) NOT NULL,
  `id_akun` int(5) NOT NULL,
  `id_customer` int(5) NOT NULL,
  `jumlah` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `tgl_penjualan`, `qty_penjualan`, `id_akun`, `id_customer`, `jumlah`) VALUES
(51, '2022-03-25 10:12:36', 1, 17, 71, ''),
(52, '2022-03-25 10:13:48', 1, 16, 72, ''),
(53, '2022-03-25 10:15:13', 1, 16, 73, ''),
(54, '2022-03-25 10:19:22', 1, 16, 74, ''),
(55, '2022-03-25 10:20:42', 1, 16, 75, ''),
(56, '2022-03-25 10:20:43', 1, 16, 76, ''),
(57, '2022-03-25 10:20:44', 1, 16, 77, ''),
(58, '2022-03-25 10:21:24', 1, 16, 78, ''),
(59, '2022-03-25 10:21:45', 1, 16, 79, ''),
(60, '2022-03-25 10:22:05', 1, 16, 80, ''),
(61, '2022-03-25 10:23:52', 1, 16, 81, ''),
(62, '2022-03-25 10:25:43', 1, 16, 82, ''),
(63, '2022-03-25 10:25:47', 1, 16, 83, ''),
(64, '2022-03-25 10:25:59', 1, 16, 84, ''),
(65, '2022-03-25 10:26:50', 1, 16, 85, ''),
(66, '2022-03-25 10:27:16', 1, 16, 86, ''),
(67, '2022-03-25 10:30:50', 1, 16, 87, ''),
(68, '2022-03-25 10:39:22', 1, 17, 88, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id_akun`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `id_akun` (`id_akun`),
  ADD KEY `id_customer` (`id_customer`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id_akun` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `akun`
--
ALTER TABLE `akun`
  ADD CONSTRAINT `akun_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`id_akun`) REFERENCES `akun` (`id_akun`),
  ADD CONSTRAINT `penjualan_ibfk_2` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
