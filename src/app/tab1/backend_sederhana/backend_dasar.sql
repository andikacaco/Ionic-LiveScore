-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2020 at 07:06 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `backend_dasar`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `id_kategori_berita` int(11) NOT NULL,
  `judul_berita` varchar(150) NOT NULL,
  `isi_berita` text NOT NULL,
  `waktu_post` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori_berita`, `judul_berita`, `isi_berita`, `waktu_post`) VALUES
(1, 1, 'Kepala BNPB: Hentikan Polemik Status Lockdown karena Corona!', '<p>Kepala BNPB yang juga Ketua Gugus Tugas Percepatan Penanganan COVID-19 Doni Monardo meminta masyarakat berdisiplin dan mematuhi imbauan melakukan social distancing. Masyarakat diminta tidak terfokus pada istilah lockdown karena Corona. </p>\r\n\r\n<p>\r\n\"Hentikan segala polemik yang berhubungan dengan status seperti halnya istilah lockdown. Yang kita butuhkan sekarang adalah kedisiplinan tentang bagaimana kita bisa menjabarkan social distancing, jaga jarak, jangan berdekatan, dilarang berkumpul. Ini tolong dipatuhi,\" kata Doni dalam konferensi pers yang disiarkan BNPB, Minggu (22/3/2020).</p>\r\n\r\n<p>\r\nMenurut Doni, jika imbauan social distancing tidak dipatuhi, akan semakin banyak warga yang terjangkit COVID-19. Karena itulah, Doni meminta masyarakat berdisiplin dalam menjaga jarak aman.\r\n</p>\r\n<p>\r\n\"Tanpa kita mematuhi ini, semakin banyak masyarakat yang terpapar. Kita bisa selamat, kita bisa sehat, apabila kita bisa berdisiplin,\" ujarnya.</p>', '2020-03-22 00:00:00'),
(2, 1, '4 Kondisi Kesehatan yang Memicu Dampak Fatal Virus Corona', '<p>Dalam banyak kasus, virus corona COVID-19 disebut hanya memicu keluhan ringan yang akan sembuh dengan sendirinya. Namun pada kondisi tertentu, bisa juga berdampak fatal.\'\r\n</p>\r\n<p>\r\nPemerintah Indonesia telah menegaskan, berbagai kasus kematian umumnya disertai penyakit tertentu yang sudah lebih dulu ada. Kematian terjadi karena kondisi tersebut memburuk setelah terinfeksi.\r\n</p>\r\n<p>\r\n\"Tidak ada laporan COVID-19 menjadi penyebab tunggal dari sebuah kematian,\" ujar Juru Bicara Pemerintah untuk Penanganan Virus Corona, Achmad Yurianto beberapa waktu lalu.\r\n</p>', '2020-03-22 06:00:00'),
(3, 2, 'Paulo Dybala: Aku dan Pacarku Positif COVID-19', '<p>\r\nPaulo Dybala akhirnya mengakui sudah positif terjangkit virus corona. Kekasih penyerang Juventus itu, Oriana Sabatini, juga dinyatakan tertular.\r\n</p>\r\n<p>\r\nDybala dikonfirmasi positif COVID-19. Hal itu diumumkan Juventus di situs resminya pada Minggu (22/3) dini hari WIB.\r\n</p>\r\n<p>\r\nPenyerang Argentina itu kemudian membuat unggahan di media sosial. Isinya adalah pengakuan telah terjangkit virus corona bersama sang kekasih, Oriana Sabatini.\r\n</p>\r\n<p>\r\n\"Hai semuanya, saya cuma ingin memberi tahu bahwa kami sudah menerima hasil tes COVID-19. Bersama Oriana, saya dinyatakan positif,\" tulis Dybala di akun Instagramnya.\r\n</p>\r\n<p>\r\n\"Beruntung, kami dalam kondisi yang sangat baik. Terima kasih atas doanya,\" tutup pernyatannya.\r\n</p>', '2020-03-22 04:14:12');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_berita`
--

CREATE TABLE `kategori_berita` (
  `id_kategori_berita` int(11) NOT NULL,
  `nama_kategori` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_berita`
--

INSERT INTO `kategori_berita` (`id_kategori_berita`, `nama_kategori`) VALUES
(1, 'Kesehatan'),
(2, 'Olahraga');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`),
  ADD KEY `id_kategori_berita` (`id_kategori_berita`);

--
-- Indexes for table `kategori_berita`
--
ALTER TABLE `kategori_berita`
  ADD PRIMARY KEY (`id_kategori_berita`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kategori_berita`
--
ALTER TABLE `kategori_berita`
  MODIFY `id_kategori_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
