-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Jan 2019 pada 01.46
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
(2, 'Rinda', 'rin2813@gmail.com', 'rin', 'rin'),
(3, 'LIMITED PERSON', 'lmtdprsn@mhs.ub.ac.id', ' ', ' ');

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
  `id_soal` varchar(255) DEFAULT NULL,
  `id` varchar(255) DEFAULT NULL,
  `soal` varchar(255) DEFAULT NULL,
  `jawaban` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `soal`
--

INSERT INTO `soal` (`id_soal`, `id`, `soal`, `jawaban`, `genre`) VALUES
('1', '', 'Kirigaya Kazuto merupakan nama asli dari Kirito', 'Ya', 'anime'),
('2', '', 'Nerve Gear merupakan device ciptaan dari Kayaba Akihiko', 'Ya', 'anime'),
('3', '', 'Leafa adalah nama karakter Suguha pada game Alfheim Online', 'Ya', 'anime'),
('4', '', 'SAO merupakan VRMMORPG tanpa sihir', 'Ya', 'anime'),
('5', '', 'Aincrad memiliki 100 lantai', 'Ya', 'anime'),
('6', '', 'Death Gun adalah player GGO yang dulunya juga terjebak dalam game SAO', 'Ya', 'anime'),
('7', '', 'Oss náða fjor regin, tynada vályndr jotunn merupakan sihir untuk menambah HP', 'Ya', 'anime'),
('8', '', 'SAO Alicization bercerita tentang uji coba mesin FullDive generasi ke-4', 'Ya', 'anime'),
('9', '', 'Asuna adalah satu-satunya player yang memiliki skill Nitou Ryuu', 'Tidak', 'anime'),
('10', '', 'Kirito bersama ribuan player lainnya terjebak dalam game SAO selama 3 tahun', 'Tidak', 'anime'),
('11', '', 'Shinon merupakan salah satu player yang terjebak dalam game SAO', 'Tidak', 'anime'),
('12', '', 'Mother Rosario adalah skill milik Yuuki yang diberikan pada Kirito saat kalah duel', 'Tidak', 'anime'),
('13', '', 'Alice Zuberg memiliki mata berwarna hijau dan rambut kuning keemasan', 'Tidak', 'anime'),
('14', '', 'Selka Zuberg merupakan kakak dari Alice Zuberg', 'Tidak', 'anime'),
('15', '', 'Karakter Cardinal terjebak dalam perpustakaan selama 500 tahun', 'Tidak', 'anime'),
('16', '', 'Girlband Twice berasal dari negara Korea', 'Ya', 'kpop'),
('17', '', 'Tzuyu merupakan member yang berasal dari Taiwan', 'Ya', 'kpop'),
('18', '', 'Twice beranggotakan 9 member', 'Ya', 'kpop'),
('19', '', 'Member tertua adalah Nayeon', 'Ya', 'kpop'),
('20', '', 'Album pertama Twice adalah \"The Story Begin\"', 'Ya', 'kpop'),
('21', '', 'Jungyeon merupakan adik dari aktris Gong Seung Yeon', 'Ya', 'kpop'),
('22', '', 'Sana adalah model di MV GOT7 -A', 'Ya', 'kpop'),
('23', '', 'Jihyo adalah main vocal Twice', 'Ya', 'kpop'),
('24', '', 'Momo merupakan member yang berasal dari Thailand', 'Tidak', 'kpop'),
('25', '', 'Twice berasal dari agensi SM Entertainment', 'Tidak', 'kpop'),
('26', '', 'Dahyun merupakan member termuda', 'Tidak', 'kpop'),
('27', '', 'Twice debut pada 20 September 2015', 'Tidak', 'kpop'),
('28', '', 'Mina pandai dalam taekwondo', 'Tidak', 'kpop'),
('29', '', 'Chaeyeong merupakan member tertinggi', 'Tidak', 'kpop'),
('30', '', 'Twice dan SNSD berada di agensi yang sama', 'Tidak', 'kpop'),
('31', '', 'Ketika berubah menjadi Infinity Sword, Pandangan Elsword berubah menjadi pandangan yang lebih tajam dan dingin.', 'Ya', 'game'),
('32', '', 'Night Watcher merupakan job dengan karakter perempuan pertama yang menggunakan pedang', 'Ya', ''),
('33', '', '', 'Ya', ''),
('34', '', '', 'Ya', ''),
('35', '', '', 'Ya', ''),
('36', '', '', 'Ya', ''),
('37', '', '', 'Ya', ''),
('38', '', '', 'Ya', ''),
('39', '', '', 'Tidak', ''),
('40', '', '', 'Tidak', ''),
('41', '', '', 'Tidak', ''),
('42', '', '', 'Tidak', ''),
('43', '', '', 'Tidak', ''),
('44', '', '', 'Tidak', ''),
('45', '', '', 'Tidak', ''),
('46', '', 'Song Joong Ki merupakan pemeran utama drama Descendant of the sun', 'Ya', 'k-drama'),
('47', '', 'JYP pernah bermain dalam serial drama Dream High', 'Ya', ''),
('48', '', 'Serial drama korea Let\'s Eat memiliki 3 season', 'Ya', ''),
('49', '', 'Drama Memories of the Alhambra merupakan comeback pertama Hyun Bin setelah 4 tahun vakum', 'Ya', ''),
('50', '', 'Gu Jun Pyo merupakan nama karakter yang diperankan oleh Lee Min Ho pada serial Boys Before Flowers', 'Ya', ''),
('51', '', 'Drama korea W merupakan drama yang terinspirasi dari komik di webtoon', 'Ya', ''),
('52', '', 'Drama korea Reply memiliki 3 series yaitu Reply 1997, Reply 1994, dan Reply 1988', 'Ya', ''),
('53', '', 'Drama korea Goblin dibintangi oleh Gong Yoo', 'Ya', ''),
('54', '', 'Shin Min Ah merupakan pemeran utama wanita dalam drama korea Goblin', 'Tidak', ''),
('55', '', 'Lee Jong Suk berperan menjadi preman dalam drama korea Dae Jang Geum', 'Tidak', ''),
('56', '', 'Indonesia termasuk salah satu lokasi syuting drama Descendants of The Sun', 'Tidak', ''),
('57', '', 'Park Bo Young merupakan tokoh antagonis dalam serial Strong Woman Do Bong Sun', 'Tidak', ''),
('58', '', 'Park Shin Hye merupakan tokoh utama wanita dalam serial drama Voice', 'Tidak', ''),
('59', '', 'Drama korea Pinokio memiliki 16 episode', 'Tidak', ''),
('60', '', 'Drama korea Dong Yi memiliki 16 episode', 'Tidak', ''),
('61', '', 'Spongebob lahir pada 14 Juli 1986', 'Ya', 'kartun'),
('62', '', 'Squidward adalah gurita', 'Ya', ''),
('63', '', 'SpongeBob merupakan kartun ciptaan Stephen Hillenberg', 'Ya', ''),
('64', '', 'Gary pewaris takhta kerajaan', 'Ya', ''),
('65', '', 'Plankton dan Ibunya Krab pernah berpacaran', 'Ya', ''),
('66', '', 'Rumah Spongebob berbentuk nanas', 'Ya', ''),
('67', '', 'Plankton dan Mr.Crab dulu bersahabat', 'Ya', ''),
('68', '', 'Sandi adalah tupai', 'Ya', ''),
('69', '', 'Squidward adalah cumi-cumi', 'Tidak', ''),
('70', '', 'Plankton memiliki istri yang bernama Karin', 'Tidak', ''),
('71', '', 'Chum merupakan makanan favorit penduduk bikini bottom', 'Tidak', ''),
('72', '', 'Pearl merupakan hiu', 'Tidak', ''),
('73', '', 'Patrick tinggal di rumah pohon', 'Tidak', ''),
('74', '', 'Patrick pernah menyamar sebagai perempuan bernama Patricintya', 'Tidak', ''),
('75', '', 'Nyonya puff sangat menyukai Spongebob', 'Tidak', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `point`
--
ALTER TABLE `point`
  ADD PRIMARY KEY (`id_point`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT untuk tabel `point`
--
ALTER TABLE `point`
  MODIFY `id_point` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `point`
--
ALTER TABLE `point`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`id`) REFERENCES `login` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
