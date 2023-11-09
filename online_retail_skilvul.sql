-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 09 Nov 2023 pada 12.32
-- Versi server: 8.0.31-0ubuntu0.20.04.1
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_retail_skilvul`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `Category`
--

CREATE TABLE `Category` (
  `id` int NOT NULL,
  `name` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `Category`
--

INSERT INTO `Category` (`id`, `name`) VALUES
(1, 'ESPRESSO BASED'),
(2, 'MOCKTAIL'),
(3, 'MILK BASED'),
(4, 'TEA BASED'),
(5, 'BLEND');

-- --------------------------------------------------------

--
-- Struktur dari tabel `Orders`
--

CREATE TABLE `Orders` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `count` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `Orders`
--

INSERT INTO `Orders` (`id`, `user_id`, `product_id`, `count`) VALUES
(1, 1, 1, 2),
(2, 2, 2, 1),
(3, 2, 1, 1),
(4, 4, 5, 2),
(5, 5, 8, 4),
(6, 6, 10, 2),
(7, 7, 7, 1),
(8, 7, 3, 2),
(9, 9, 3, 2),
(10, 9, 4, 2),
(11, 3, 7, 2),
(12, 3, 10, 1),
(13, 3, 1, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `Product`
--

CREATE TABLE `Product` (
  `id` int NOT NULL,
  `name` varchar(99) NOT NULL,
  `price` int NOT NULL,
  `category_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `Product`
--

INSERT INTO `Product` (`id`, `name`, `price`, `category_id`) VALUES
(1, 'Crimeberry', 30000, 2),
(2, 'Pinamoly', 32000, 2),
(3, 'Cappucino', 26000, 1),
(4, 'Cafe latte', 24000, 1),
(5, 'Chocolate', 28000, 3),
(6, 'Matcha', 28000, 3),
(7, 'Lecy Tea', 20000, 4),
(8, 'Vanilla Tea', 20000, 4),
(9, 'Peach Tea', 20000, 4),
(10, 'Choco Hazelnut', 32000, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `User`
--

CREATE TABLE `User` (
  `id` int NOT NULL,
  `name` varchar(99) NOT NULL,
  `address` varchar(99) NOT NULL,
  `email` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `User`
--

INSERT INTO `User` (`id`, `name`, `address`, `email`) VALUES
(1, 'Auzan', 'Kediri', 'auzan@gmail.com'),
(2, 'Jalil', 'Kediri', 'jalil21@gmail.com'),
(3, 'adam', 'Surabaya', 'adam@gmail.com'),
(4, 'Budi', 'Surabaya', 'budi@gmail.com'),
(5, 'Citra', 'Klaten', 'citra@gmail.com'),
(6, 'David', 'Klaten', 'david@gmail.com'),
(7, 'Elsa', 'Solo', 'elsa@gmail.com'),
(8, 'Fauzi', 'Solo', 'fauzi@gmail.com'),
(9, 'Gina', 'Malang', 'gina@gmail.com'),
(10, 'Hendra', 'Bogor', 'hendra@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `Orders`
--
ALTER TABLE `Orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indeks untuk tabel `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indeks untuk tabel `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `Category`
--
ALTER TABLE `Category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `Orders`
--
ALTER TABLE `Orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `Product`
--
ALTER TABLE `Product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `User`
--
ALTER TABLE `User`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `Orders`
--
ALTER TABLE `Orders`
  ADD CONSTRAINT `Orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `User` (`id`),
  ADD CONSTRAINT `Orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `Product` (`id`);

--
-- Ketidakleluasaan untuk tabel `Product`
--
ALTER TABLE `Product`
  ADD CONSTRAINT `Product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `Category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
