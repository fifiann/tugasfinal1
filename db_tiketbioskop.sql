-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2023 at 09:52 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tiketbioskop`
--

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `id` int(11) NOT NULL,
  `film` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`id`, `film`) VALUES
(1, 'Avengers'),
(2, 'Spider-Man'),
(3, 'Fast Furious'),
(4, 'Guardian Galaxy'),
(5, 'Deadpool');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `nama` varchar(255) NOT NULL,
  `film` varchar(255) NOT NULL,
  `jenis_tiket` varchar(255) NOT NULL,
  `jam_tayang` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `jml` varchar(10) NOT NULL,
  `total` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`nama`, `film`, `jenis_tiket`, `jam_tayang`, `harga`, `jml`, `total`) VALUES
('Tasman', 'Avengers', 'Ultra XD Atmos', '10.00', '20000', '4', 'Rp 200000'),
('Fauzil', 'Spider-Man', 'Ultra XD Atmos', '17.00', '50000', '2', 'Rp 100000'),
('ade', 'Spider-Man', 'Reguler', '17.00', '20000', '2', 'Rp 40000'),
('vivian', 'Spider-Man', 'Ultra XD Atmos', '10.00', '50000', '2', 'Rp 100000'),
('vivian', 'Spider-Man', 'Ultra XD Atmos', '17.00', '50000', '2', 'Rp 100000'),
('yayang', 'Spider-Man', 'Ultra XD Atmos', '17.00', '50000', '4', 'Rp 200000'),
('aulia', 'Fast Furious', 'Ultra XD Atmos', '10.00', '50000', '2', 'Rp 100000'),
('yayang', 'Spider-Man', 'Ultra XD Atmos', '17.00', '50000', '3', 'Rp 150000'),
('yayang', 'Fast Furious', 'Reguler', '20.00', '20000', '5', 'Rp 100000'),
('arya', 'Spider-Man', 'VIP', '20.00', '100000', '5', 'Rp 500000'),
('funm', 'Fast Furious', 'Reguler', '10.00', '20000', '4', 'Rp 80000'),
('nayanirwana', 'Spider-Man', 'VIP', '20.00', '100000', '3', 'Rp 300000'),
('aryaarfin', 'Spider-Man', 'Reguler', '17.00', '20000', '7', 'Rp 140000');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `role`) VALUES
('admin01', 'admin01', 'admin'),
('user', 'user123', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
