-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2020 at 02:21 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventaris_cic`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `id_barang` varchar(30) NOT NULL,
  `jenis_barang` varchar(50) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `harga` int(10) NOT NULL,
  `foto` varchar(250) NOT NULL,
  `kegunaan` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`id_barang`, `jenis_barang`, `nama_barang`, `harga`, `foto`, `kegunaan`) VALUES
('5fa509d0968b1', 'Freezer', 'Kulkas', 3000000, 'default.jpg', 'Membuat es batu'),
('5fa656f536313', 'ghgjh', 'yvvyt', 1000000, 'default.jpg', 'tempat duduk'),
('x001', 'Alat Tulis', 'Spidol', 5000, 'defaul.jpg', 'Untuk Pengajaran'),
('x002', 'Penghapus', 'Joyko', 7000, 'default.jpg', 'Menghapus');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jenis`
--

CREATE TABLE `tbl_jenis` (
  `id_jenis` varchar(20) NOT NULL,
  `nama_jenis` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_jenis`
--

INSERT INTO `tbl_jenis` (`id_jenis`, `nama_jenis`) VALUES
('TI2', 'Alat Tulis');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pemakaian`
--

CREATE TABLE `tbl_pemakaian` (
  `kode_pemakaian` varchar(15) NOT NULL,
  `tanggal` date NOT NULL,
  `id_barang` varchar(15) NOT NULL,
  `kode_pengguna` varchar(20) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pemakaian`
--

INSERT INTO `tbl_pemakaian` (`kode_pemakaian`, `tanggal`, `id_barang`, `kode_pengguna`, `jumlah`) VALUES
('abc', '2020-11-06', 'x001', 'A01', 10),
('abcd', '2020-11-06', 'x001', 'A02', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pemasok`
--

CREATE TABLE `tbl_pemasok` (
  `id_pemasok` varchar(15) NOT NULL,
  `nama_pemasok` varchar(50) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `no_telepon` varchar(15) NOT NULL,
  `email` varchar(20) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pemasok`
--

INSERT INTO `tbl_pemasok` (`id_pemasok`, `nama_pemasok`, `alamat`, `no_telepon`, `email`, `keterangan`) VALUES
('TI1', 'Wisah Sri Mulyani', 'Cibuluh, Sumedang', '083825241645', 'wisahsrimulyani25@gm', 'Pemasok Spidol'),
('TI3', 'Sutianah', 'Sahbandar, Majalengka', '085215527151', 'tiasutianahsutianah@', 'Pemasok Penghapus');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pemasok_2019102039`
--

CREATE TABLE `tbl_pemasok_2019102039` (
  `kode_pemasok` varchar(20) NOT NULL,
  `nama_pemasok` varchar(50) NOT NULL,
  `alamat_pemasok` varchar(250) NOT NULL,
  `email` varchar(20) NOT NULL,
  `no_telepon` varchar(15) NOT NULL,
  `keterangan` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pemasok_2019102039`
--

INSERT INTO `tbl_pemasok_2019102039` (`kode_pemasok`, `nama_pemasok`, `alamat_pemasok`, `email`, `no_telepon`, `keterangan`) VALUES
('5fb7c073dc1b8', 'CV. Jaya Adil', 'Ds. Sahbandar, Kec. Kertajati Kab. Majalengka', 'jayaadilmakmur@gmail', '083826824666', 'Pemasok Bahan Bangunan dan Matrial'),
('5fb7c0ab5b6a6', 'CV. Dua Putri', 'Ds. Cibuluh, Kec. Ujungjaya, Kab. Majalengka', 'duaputrimandiri@gmai', '083134986984', 'Pemasok Gas Elpiji'),
('5fb7c0dddfeda', 'PT. Jalayatra', 'Ds. Ligung, Kec, Ligung, Kab. Majalengka', 'jalayatracirebon@gma', '081234654789', 'Pemasok Alat Tulis Kantor'),
('5fb7c12898430', 'PT. Tia Tari', 'Ds. Palasah, Kec. Palasah, Kab. Majalengka', 'tiatari12@gmail.com', '085220687123', 'Pemasok Snack dan Makanan Ringan'),
('5fb7c17146ce4', 'CV. Keisya Rifka', 'Ds. Kertajati, Kec. Kertajati, Kab. Majalengka', 'keisyarifka@gmail.co', '089678456345', 'Pemasok Alat dan Bahan Pembuat Kue'),
('5fb7c1c6339f9', 'CV. Jaya Abadi', 'Ds, Kadipaten, Kec. Kadipaten, Kab. Majalengka', 'jayaabadi@gmail.com', '085215527151', 'Pemasok Perhiasan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `kode_pengguna` varchar(20) NOT NULL,
  `nama_pengguna` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `alamat` varchar(222) NOT NULL,
  `no_hp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`kode_pengguna`, `nama_pengguna`, `jenis_kelamin`, `jabatan`, `alamat`, `no_hp`) VALUES
('A01', 'Sutianah', 'Perempuan', 'Mahasiswa', 'Majalengka', '085215527151'),
('A02', 'Wisah Sri Mulyani', 'Perempuan', 'Mahasiswa', 'Majalengka', '083825241645'),
('A03', 'Tiara Fanisa', 'Perempuan', 'Mahasiswa', 'Indramayu', '083876930758');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `level` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `email`, `password`, `nama`, `jenis_kelamin`, `alamat`, `no_hp`, `level`) VALUES
('5fa6d21c60790', 'tiasutianahsutianah@gmail.com', 'sutianah2502', 'Sutianah', 'Perempuan', 'Sahbandar, Majalengka', '085215527151', 'Mahasiswa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `tbl_jenis`
--
ALTER TABLE `tbl_jenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `tbl_pemakaian`
--
ALTER TABLE `tbl_pemakaian`
  ADD PRIMARY KEY (`kode_pemakaian`);

--
-- Indexes for table `tbl_pemasok`
--
ALTER TABLE `tbl_pemasok`
  ADD PRIMARY KEY (`id_pemasok`);

--
-- Indexes for table `tbl_pemasok_2019102039`
--
ALTER TABLE `tbl_pemasok_2019102039`
  ADD PRIMARY KEY (`kode_pemasok`);

--
-- Indexes for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`kode_pengguna`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
