-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Bulan Mei 2022 pada 11.48
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inahan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barangs`
--

CREATE TABLE `barangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stok` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `barangs`
--

INSERT INTO `barangs` (`id`, `nama_barang`, `gambar`, `harga`, `stok`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 'Light Stick Army Bomb ver.3', 'army_bomb.jpg', '630000', '21', 'Sealed', '2021-12-04 17:00:00', '2021-12-30 23:12:46'),
(2, 'NCT Dream Season Greeting 2022', 'sg22_nct.jpg', '690000', '15', 'Unsealed - Full set', '2021-12-04 17:00:00', '2021-12-31 00:01:14'),
(3, 'Album BTS - BE (Deluxe Edition)', 'album_be.jpg', '680000', '10', 'Sealed', '2021-12-04 17:00:00', '2021-12-04 17:00:00'),
(4, 'Accessorise NCTZEN', 'acc_nctzen.jpeg', '30000', '47', 'Bonus PC NCT(Unofficial)', NULL, NULL),
(5, 'Album TWICE', 'album_twc.jpeg', '300000', '9', 'Unsealed', NULL, '2021-12-30 23:12:46'),
(6, 'Botol Tumblr StrayKidz', 'botol_tumblr_skz.jpeg', '57000', '33', 'Unofficial', NULL, '2021-12-31 00:14:56'),
(7, 'T-Shirt BlackPink', 'bp_tshirt.jpeg', '250000', '7', 'Official', NULL, NULL),
(8, 'Buku The Secret Of BigBang', 'buku_bigbang.jpeg', '60000', '13', 'Official, Include Poster', NULL, NULL),
(9, 'Lightstick Twice Candy Bong', 'candy_bong.jpg', '640000', '60', 'Official', NULL, '2021-12-31 00:08:33'),
(10, 'Poster Exo \"Love Shot\"', 'exo_poster.jpeg', '270000', '12', 'Official', NULL, NULL),
(11, 'Gantungan Kunci GOT7', 'ganci_got7.jpeg', '21000', '87', 'Unofficial', NULL, NULL),
(12, 'Lightband Day6', 'lightband_day6.jpeg', '670000', '11', 'Official', NULL, NULL),
(13, 'Lightstick Dreamcatcher', 'ls_dc.jpeg', '2500000', '4', 'Official, Include Jubah Official', NULL, NULL),
(14, 'Hoodie NCIT', 'ncit_hoodie.jpeg', '312000', '27', 'Official', NULL, NULL),
(15, 'Album EXO - Obsession No.6', 'obsession.jpg', '530000', '40', 'Sealed', NULL, '2021-12-28 08:16:43'),
(16, 'Photocard NCT 127', 'pc_nct127.jpeg', '380000', '12', 'Official', NULL, NULL),
(17, 'Boneka BT21 - RJ ', 'RJ.jpg', '475000', '17', 'Official', NULL, NULL),
(18, 'BTS 2022 Season\'s Greeting', 'sg22_bts.jpg', '1012000', '2', 'Sealed', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_12_04_131524_create_barangs_table', 1),
(10, '2021_12_04_132346_create_pesanan_details_table', 3),
(11, '2021_12_04_132141_create_pesanans_table', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanans`
--

CREATE TABLE `pesanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode` int(11) NOT NULL,
  `voucher` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah_harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pesanans`
--

INSERT INTO `pesanans` (`id`, `user_id`, `tanggal`, `status`, `kode`, `voucher`, `jumlah_harga`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-12-14', '1', 729, NULL, 630000, '2021-12-13 22:05:15', '2021-12-14 04:40:57'),
(2, 1, '2021-12-14', '1', 327, NULL, 630000, '2021-12-14 04:59:17', '2021-12-14 04:59:30'),
(3, 1, '2021-12-14', '1', 370, NULL, 630000, '2021-12-14 05:01:28', '2021-12-14 05:01:35'),
(4, 1, '2021-12-14', '1', 560, NULL, 690000, '2021-12-14 05:02:43', '2021-12-14 05:05:52'),
(5, 1, '2021-12-14', '1', 807, NULL, 630000, '2021-12-14 05:07:00', '2021-12-14 23:19:51'),
(6, 2, '2021-12-15', '1', 583, NULL, 930000, '2021-12-14 19:42:03', '2021-12-30 23:12:46'),
(7, 1, '2021-12-15', '1', 770, NULL, 630000, '2021-12-14 23:26:12', '2021-12-16 03:10:11'),
(8, 1, '2021-12-17', '1', 676, NULL, 530000, '2021-12-17 00:27:54', '2021-12-28 08:16:43'),
(9, 1, '2021-12-28', '1', 185, NULL, 690000, '2021-12-28 08:27:05', '2021-12-30 23:11:13'),
(10, 2, '2021-12-31', '1', 855, NULL, 690000, '2021-12-30 23:18:35', '2021-12-30 23:28:37'),
(11, 2, '2021-12-31', '1', 793, NULL, 1380000, '2021-12-30 23:33:50', '2021-12-31 00:01:14'),
(12, 2, '2021-12-31', '1', 510, NULL, 640000, '2021-12-31 00:03:23', '2021-12-31 00:03:39'),
(13, 2, '2021-12-31', '1', 827, NULL, 640000, '2021-12-31 00:08:22', '2021-12-31 00:08:33'),
(14, 2, '2021-12-31', '1', 914, NULL, 57000, '2021-12-31 00:14:44', '2021-12-31 00:14:56'),
(15, 2, '2021-12-31', '0', 257, NULL, 640000, '2021-12-31 00:19:52', '2021-12-31 00:19:52'),
(16, 1, '2022-01-02', '0', 504, NULL, 42000, '2022-01-02 01:04:26', '2022-01-02 01:04:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan_details`
--

CREATE TABLE `pesanan_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `barang_id` int(11) NOT NULL,
  `pesananid_id` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `jumlah_harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pesanan_details`
--

INSERT INTO `pesanan_details` (`id`, `barang_id`, `pesananid_id`, `jumlah`, `jumlah_harga`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 630000, '2021-12-13 22:05:15', '2021-12-13 22:05:15'),
(4, 1, 2, 1, 630000, '2021-12-14 04:59:17', '2021-12-14 04:59:17'),
(5, 1, 3, 1, 630000, '2021-12-14 05:01:28', '2021-12-14 05:01:28'),
(8, 2, 4, 1, 690000, '2021-12-14 05:05:43', '2021-12-14 05:05:43'),
(11, 1, 5, 1, 630000, '2021-12-14 23:18:21', '2021-12-14 23:18:21'),
(18, 1, 7, 1, 630000, '2021-12-16 03:10:06', '2021-12-16 03:10:06'),
(23, 15, 8, 1, 530000, '2021-12-28 08:16:22', '2021-12-28 08:16:22'),
(30, 5, 6, 1, 300000, '2021-12-30 23:07:52', '2021-12-30 23:07:52'),
(31, 1, 6, 1, 630000, '2021-12-30 23:08:01', '2021-12-30 23:08:01'),
(32, 2, 9, 1, 690000, '2021-12-30 23:11:06', '2021-12-30 23:11:06'),
(33, 2, 10, 1, 690000, '2021-12-30 23:18:35', '2021-12-30 23:18:35'),
(34, 2, 11, 2, 1380000, '2021-12-30 23:33:50', '2021-12-30 23:45:21'),
(35, 9, 12, 1, 640000, '2021-12-31 00:03:23', '2021-12-31 00:03:23'),
(36, 9, 13, 1, 640000, '2021-12-31 00:08:22', '2021-12-31 00:08:22'),
(37, 6, 14, 1, 57000, '2021-12-31 00:14:44', '2021-12-31 00:14:44'),
(38, 9, 15, 1, 640000, '2021-12-31 00:19:52', '2021-12-31 00:19:52'),
(39, 11, 16, 2, 42000, '2022-01-02 01:04:26', '2022-01-02 01:04:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nohp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `alamat`, `nohp`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Faradila Wahyu Wijayanti', 'faradila@gmail.com', NULL, '$2y$10$lRsB3YtRjdu1rvPFLX.NYe32Dl7m9niYvTD86LcA8HvHXlXxdPrTe', 'RT006/RW001, Dsn. Tempel, Ds. Tanggul Kundung, Kec. Besuki, Kab. Tulungagung, Prof. Jawa Timur, Kode Pos 66275 (Depot Hidayah).', '081332355638', NULL, '2021-12-05 06:42:57', '2021-12-14 19:53:36'),
(2, 'Faradila Wahyu Wijayanti', 'lalaluv.star@gmail.com', NULL, '$2y$10$0qFVcQQmq71GTONCf/GQL.KHIid9nZN35CP5pjmJrOurNcOIHeNuy', 'Tulungagung', '081332355638', NULL, '2021-12-13 20:41:26', '2021-12-30 23:12:07');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `pesanans`
--
ALTER TABLE `pesanans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesanan_details`
--
ALTER TABLE `pesanan_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pesanans`
--
ALTER TABLE `pesanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `pesanan_details`
--
ALTER TABLE `pesanan_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
