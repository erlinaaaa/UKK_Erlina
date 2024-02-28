-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Feb 2024 pada 01.12
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 7.4.30

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
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `bukuid` varchar(5) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `penulis` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `thn_terbit` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`bukuid`, `judul`, `penulis`, `penerbit`, `thn_terbit`) VALUES
('123', 'indonesia', 'erlina', 'gramedia', 2005),
('551', 'Resign', 'Almira Bastari', 'Gramedia', 2022),
('552', 'Antologi Rasa', 'Ika Natassa', 'Gramedia', 2021),
('553', 'Laut Bercerita', 'Leila S.', 'Gramedia', 2023),
('554', 'Pelabuhan Terakhir', 'Roidah', 'Erlangga', 2022),
('555', 'Berwisata ke Surga', 'Restu Fitria', 'Erlangga', 2023);

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('erlina', 'erlina');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminajaman`
--

CREATE TABLE `peminajaman` (
  `peminjamanid` int(5) NOT NULL,
  `userid` int(5) NOT NULL,
  `bukuid` int(5) NOT NULL,
  `tgl_peminjaman` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `sts_peminjaman` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peminajaman`
--

INSERT INTO `peminajaman` (`peminjamanid`, `userid`, `bukuid`, `tgl_peminjaman`, `tgl_pengembalian`, `sts_peminjaman`) VALUES
(201, 1015, 555, '2024-02-01', '2024-02-10', 'Kembali'),
(202, 1013, 553, '2024-02-06', '2024-02-10', 'Kembali'),
(203, 1011, 551, '2024-02-07', '2024-02-11', 'Kembali'),
(204, 1015, 552, '2024-02-12', '2024-02-20', 'Kembali'),
(205, 1015, 552, '2024-02-20', '2024-02-24', 'Belum kembali');

-- --------------------------------------------------------

--
-- Struktur dari tabel `useriduser`
--

CREATE TABLE `useriduser` (
  `userid` int(5) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama_lngkp` varchar(60) NOT NULL,
  `almt` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `useriduser`
--

INSERT INTO `useriduser` (`userid`, `email`, `nama_lngkp`, `almt`) VALUES
(1011, 'titi@gmail.com', 'Titi Padmasari', 'Jl. Mirama Bandung'),
(1012, 'rosi@gmail.com', 'Rosiana', 'Jl. S. Parman Malang'),
(1013, 'arima@gmail.com', 'Ariama Nanda', 'Jl. Bunga Cengkeh Malang'),
(1014, 'davin15@gmail.com', 'Davin Nugroho P.', 'Komplek AU Singosari Malang'),
(1015, 'kemal@gmail.com', 'Kemal Airlangga', 'Jl. Intan Surabaya');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`bukuid`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `peminajaman`
--
ALTER TABLE `peminajaman`
  ADD PRIMARY KEY (`peminjamanid`);

--
-- Indeks untuk tabel `useriduser`
--
ALTER TABLE `useriduser`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `peminajaman`
--
ALTER TABLE `peminajaman`
  MODIFY `peminjamanid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
