-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2022 at 01:39 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_tanaman_polaris`
--

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id` int(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `tanaman` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `waktu_req` date NOT NULL,
  `pembayaran` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id`, `nama`, `email`, `tanaman`, `jumlah`, `telepon`, `alamat`, `keterangan`, `waktu_req`, `pembayaran`) VALUES
(1, 'Udin', 'udin@gmail.com', 'Calathea, Sukulen', 2, '081234567811', 'Rumahnya', 'abcd', '2022-10-26', 'BRI'),
(2, 'meimei', 'meimei@gmail.com', 'Alocasia, Monstera, Peace Lily', 5, '081234567810', 'Durian Runtuh', 'abcdefg', '2022-10-30', 'OVO'),
(3, 'budi', 'budi@gmail.com', 'Alocasia', 6, '081234567815', 'Rumahnya', 'gggggg', '2022-10-24', 'BNI');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id` int(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `tanaman` varchar(100) NOT NULL,
  `jumlah` int(5) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `waktu_req` date NOT NULL,
  `pembayaran` varchar(10) NOT NULL,
  `statusbayar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id`, `nama`, `email`, `tanaman`, `jumlah`, `telepon`, `alamat`, `keterangan`, `waktu_req`, `pembayaran`, `statusbayar`) VALUES
(1, 'Udin', 'udin@gmail.com', 'Calathea, Sukulen', 2, '081234567811', 'Rumahnya', 'abcd', '2022-10-26', 'BRI', ''),
(2, 'meimei', 'meimei@gmail.com', 'Alocasia, Monstera, Peace Lily', 5, '081234567810', 'Durian Runtuh', 'abcdefg', '2022-10-30', 'OVO', ''),
(3, 'budi', 'budi@gmail.com', 'Alocasia', 6, '081234567815', 'Rumahnya', 'gggggg', '2022-10-24', 'BNI', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`email`) REFERENCES `pemesanan` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
