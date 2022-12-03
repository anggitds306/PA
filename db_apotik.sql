-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Nov 2022 pada 06.10
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bukatoko`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(1) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(2, 'Owner Laziztos', 'admin', '21232f297a57a5a743894a0e4a801fc3', '+6287886082042', 'cemilan_laziztos@gmail.com', 'Jl.Matoa I, Pancoranmas, Kota Depok, Jawa Barat 16433');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(1) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(12, ' Edisi Toples'),
(13, ' Edisi Kemasan'),
(14, 'Edisi Kotak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(1) NOT NULL,
  `category_id` int(1) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(4) NOT NULL,
  `data_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `data_created`) VALUES
(16, 12, 'Basreng Toples', 35000, '<p>Tersedia Hanya Beberapa Varian Rasa:</p>\r\n\r\n<p>Balado, Jagung Bakar, Pedes Asin,</p>\r\n', 'produk1639066076.jpeg', 1, '2021-12-09 16:07:56'),
(18, 12, 'Makaroni Spesial Lebaran', 30000, '<p>Tersedia Hanya Berbagai Varian Rasa:</p>\r\n\r\n<p>Coklat, Balado, Jagung Bakar, Keju, Pizza, Pedes Asin</p>\r\n', 'produk1639066881.jpg', 1, '2021-12-09 16:21:21'),
(19, 13, 'Makaroni', 5000, '<p>Tersedia Hanya Berbagai Varian Rasa:</p>\r\n\r\n<p>Coklat, Balado, Jagung Bakar, Keju, Pizza, Pedes Asin</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'produk1639066961.webp', 1, '2021-12-09 16:22:41'),
(21, 13, 'Basreng', 6000, '<p>Tersedia Hanya Beberapa Varian Rasa:</p>\r\n\r\n<p>Balado, Jagung Bakar, Pedes Asin,</p>\r\n', 'produk1639067088.webp', 1, '2021-12-09 16:24:48'),
(24, 12, 'Makaroni  Toples', 25000, '<p>Tersedia Hanya Berbagai Varian Rasa:</p>\r\n\r\n<p>Coklat, Balado, Jagung Bakar, Keju, Pizza, Pedes Asin</p>\r\n', 'produk1639140106.jpeg', 1, '2021-12-10 12:41:46'),
(27, 14, 'Mie Lidi', 5000, '<p>Tersedia Hanya Beberapa Varian Rasa:</p>\r\n\r\n<p>Balado, Pedes Asin, dan Jagung Bakar</p>\r\n', 'produk1639353092.jpg', 0, '2021-12-10 15:56:59');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
