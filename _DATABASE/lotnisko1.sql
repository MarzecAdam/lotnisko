-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2022 at 11:42 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lotnisko1`
--

-- --------------------------------------------------------

--
-- Table structure for table `odloty`
--

CREATE TABLE `odloty` (
  `id_odloty` int(11) NOT NULL,
  `godzina` datetime DEFAULT NULL,
  `kierunek` varchar(25) DEFAULT NULL,
  `linia` int(5) DEFAULT NULL,
  `nr_lotu` varchar(8) DEFAULT NULL,
  `odprawa` varchar(25) DEFAULT NULL,
  `godz_odprawy` time DEFAULT NULL,
  `bramki` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `odloty`
--

INSERT INTO `odloty` (`id_odloty`, `godzina`, `kierunek`, `linia`, `nr_lotu`, `odprawa`, `godz_odprawy`, `bramki`) VALUES
(5, '2023-01-02 20:10:00', 'Liverpool', 1, 'W6 1011', 'Terminal A, 21-22', '17:08:00', 3),
(6, '2023-01-02 20:50:00', 'Edynburg', 2, 'FR 1050', 'Terminal A, 11 ', '19:01:00', 4),
(7, '2023-01-02 21:35:00', 'Hurghada', 3, 'FT 1518', 'Terminal A, 6-7', '18:34:00', 6),
(8, '2023-01-02 05:30:00', 'Warszawa', 4, 'LO 3880', 'Terminal B, 43-44', '03:30:00', 14),
(9, '2023-01-02 19:10:00', 'Oslo Gardermoen', 5, 'FR 4835', 'Terminal B, 23-24', '17:06:00', 10);

-- --------------------------------------------------------

--
-- Table structure for table `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `ID_users` int(11) NOT NULL,
  `user` varchar(20) NOT NULL,
  `psw` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`ID_users`, `user`, `psw`) VALUES
(1, 'adam', 'qwerty');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `odloty`
--
ALTER TABLE `odloty`
  ADD PRIMARY KEY (`id_odloty`);

--
-- Indexes for table `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`ID_users`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `odloty`
--
ALTER TABLE `odloty`
  MODIFY `id_odloty` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `ID_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
