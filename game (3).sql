-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 16 Jan 2019 pada 22.37
-- Versi Server: 10.2.19-MariaDB-10.2.19+maria~xenial-log
-- PHP Version: 7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `game`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `nama`, `email`, `username`, `password`) VALUES
(1, 'Eka Novita', 'ekavita.30@gmail.com', 'eka123', 'eka123'),
(2, 'Rinda', 'rin2813@gmail.com', 'rin', 'rin');
(3, 'Limited Person', 'lmtd@rocketmail.co.id', ' ', ' ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal`
--

CREATE TABLE `soal` (
  `id_soal` varchar(255) NOT NULL,
  `soal` varchar(255) NOT NULL,
  `opsi1` varchar(255) DEFAULT NULL,
  `opsi2` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `soal`
--

INSERT INTO `soal` (`id_soal`, `soal`, `opsi1`, `opsi2`) VALUES
('AN01', 'Anda tidak banyak memiliki keinginan dalam hidup, dapat diartikan hidup anda hambar', '', ''),
('AN010', 'Apakah Anda hanya sekedar tahu anime Naruto dari televisi/semacamnya?', 'Ya', 'Tidak'),
('AN011', 'Anda normal karena anme hanya untuk hiburan semata', '', ''),
('AN012', 'Apakah Anda tau siapa saja karakter dalam serial anime Naruto ?', 'Ya semua', 'Tidak semua'),
('AN013', 'Anda termasuk penyuka anime ', '', ''),
('AN014', 'Benarkah bahwa Kidomaru merupakan murid dari Jiraya?', 'Salah', 'Benar'),
('AN015', 'Anda WIBU', '', ''),
('AN02', 'Apakah Anda tertarik menonton Anime?', 'Mungkin', 'Tidak sama sekali'),
('AN03', 'Setidaknya anda memiliki keinginan yang berpotensi mengantar anda kedunia WIBU, semoga tercapai coba terus', '', ''),
('AN04', 'Apakah Anda pernah menonton anime selain Naruto?', 'Ya', 'Tidak'),
('AN05', 'Anda termasuk orang yang hanya sekedar tahu tentang beberapa anime (newbie)', '', ''),
('AN06', 'Apakah Anda hanya menonton beberapa anime yang sedang viral saja?', 'Ya', 'Tidak selalu'),
('AN07', 'Anda termasuk penyuka anime musiman', '', ''),
('AN08', 'Apakah Anda tau serial anime Naruto?', 'Ya', 'Tidak'),
('AN09', 'Anda termasuk orang yang hanya sekedar tahu tentang beberapa anime (newbie)', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id_soal`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
