-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 08 Jan 2019 pada 22.13
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
(1, 'Eka Novita', 'ekavita.30@gmail.com', 'eka123', 'eka123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `point`
--

CREATE TABLE `point` (
  `id_point` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `skor` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal`
--

CREATE TABLE `soal` (
  `id_soal` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `soal` text NOT NULL,
  `jawaban` varchar(30) NOT NULL,
  `genre` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `soal`
--

INSERT INTO `soal` (`id_soal`, `id`, `soal`, `jawaban`, `genre`) VALUES
(1, NULL, 'Negara selain Indonesia yang sebagian besar bangsanya adalah etnis Jawa dan bahasa yang digunakan juga menggunakan bahasa Jawa adalah ...', 'Suriname', 'pengetahuan Umum'),
(2, NULL, 'Salah satu negara yang terletak di perbatasan antara Asia, Rusia dan Eropa adalah ...', 'Azerbaijan', 'pengetahuan Umum'),
(3, NULL, 'suatu kaum atau keturunan yang dibantai besar - besaran oleh tentara NAZI ketika perang dunia ke 2 sehingga bermigrasi ke Timur Tengah adalah kaum ...', 'Yahudi', 'pengetahuan Umum'),
(4, NULL, 'Pemimpin yang berhasil menguasai konstantinopel atau sekarang Turki adalah ...', 'Muhammad Al Fatih', 'pengetahuan Umum'),
(5, NULL, 'ketakutan yang sangat berlebihan kepada kuman atau fobia kotor disebut ...', 'Mysophobia', 'pengetahuan Umum'),
(6, NULL, 'Aktor utama yang membintangi film Train to Busan adalah ...', 'Gong Yoo', 'Hiburan'),
(7, NULL, 'Sandi morse merupakan salah satu sandi yang digunakan untuk berkomunikasi dengan telegram. untuk huruf "A" diganti dengan simbol ...', '._', 'pengetahuan Umum'),
(8, NULL, 'Pencipta permainan bola basket adalah ...', 'James Naismith', 'Olahraga'),
(9, NULL, 'Suku yang paling banyak tersebar di benua Australia adalah ...', 'Suku Aborigin', 'pengetahuan Umum'),
(10, NULL, 'Creator yang menciptakan karakter - karakter pada serial anime Naruto adalah...', 'Masashi Kashimoto', 'Hiburan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `point`
--
ALTER TABLE `point`
  ADD PRIMARY KEY (`id_point`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id_soal`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `point`
--
ALTER TABLE `point`
  MODIFY `id_point` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `point`
--
ALTER TABLE `point`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`id`) REFERENCES `login` (`id`);

--
-- Ketidakleluasaan untuk tabel `soal`
--
ALTER TABLE `soal`
  ADD CONSTRAINT `fk_id_user` FOREIGN KEY (`id`) REFERENCES `login` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
