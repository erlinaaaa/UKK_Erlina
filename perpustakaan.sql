-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2024 at 08:14 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `bukuid` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `thn_terbit` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`bukuid`, `judul`, `penulis`, `penerbit`, `thn_terbit`) VALUES
(551, 'Resign', 'Almira Bastari', 'Gramedia', 2022),
(552, 'Antologi Rasa', 'Ika Natassa', 'Gramedia', 2021),
(553, 'Laut Bercerita', 'Leila S.', 'Gramedia', 2023),
(554, 'Pelabuhan Terakhir', 'Roidah', 'Erlangga', 2022),
(555, 'Berwisata ke Surga', 'Restu Fitria', 'Erlangga', 2023);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `no` int(5) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`no`, `username`, `password`) VALUES
(1, 'erlina', 'erlina');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `peminjamanid` int(5) NOT NULL,
  `userid` int(5) NOT NULL,
  `bukuid` int(10) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `status_peminjaman` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`peminjamanid`, `userid`, `bukuid`, `tgl_pinjam`, `tgl_kembali`, `status_peminjaman`) VALUES
(201, 1011, 553, '2024-02-01', '2024-02-06', 'Kembali'),
(202, 1013, 553, '2024-02-06', '2024-02-10', 'Kembali'),
(203, 1011, 551, '2024-02-07', '2024-02-11', 'Kembali'),
(204, 1015, 552, '2024-02-12', '2024-02-20', 'Kembali'),
(205, 1015, 555, '2024-02-20', '0000-00-00', 'Belum kembali');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(5) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama_lngkp` varchar(100) NOT NULL,
  `almt` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `email`, `nama_lngkp`, `almt`) VALUES
(1011, 'titi@gmail.com', 'Titi Padmasari', 'Jl. Mirama Bandung'),
(1012, 'rosi@gmail.com', 'Rosiana', 'Jl. S. Parman Malang'),
(1013, 'arima@gmail.com', 'Arima Nanda', 'Jl. Bunga Cengkeh Malang'),
(1014, 'davin@gmail.com', 'Davin Nugroho', 'Komplek AU Singosari Malang'),
(1015, 'kemal@gmail.com', 'Kemal AirLangga', 'Jl. Intan Surabaya');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`bukuid`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`peminjamanid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `bukuid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=556;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `peminjamanid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1016;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
