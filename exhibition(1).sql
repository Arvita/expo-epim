-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jul 2021 pada 10.40
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exhibition`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(10) UNSIGNED DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `category`, `description`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Pendidikan', NULL, 1, NULL, NULL),
(2, 'Kesehatan', NULL, 1, NULL, NULL),
(3, 'Pertanian', NULL, 1, NULL, NULL),
(4, 'Peternakan', NULL, 1, NULL, NULL),
(5, 'E-commers', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `galleries`
--

INSERT INTO `galleries` (`id`, `title`, `description`, `picture`, `url`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'Halaman Utama Website', 'Halaman Utama Website', '1_1.jpg', '#', 1, NULL, NULL),
(2, 'Halaman Data Barang', 'Halaman Data Barang di Website', '1_2.jpg', '#', 1, NULL, NULL),
(3, 'Halaman Utama Mobile', 'Halaman Utama Mobile', '1_3.jpg', '#', 1, NULL, NULL),
(4, 'Halaman Kategori Makanan', 'Halaman Kategori Makanan di Mobile ', '1_4.jpg', '#', 1, NULL, NULL),
(5, NULL, NULL, '2_1.png', NULL, 2, '2021-07-10 00:33:03', '2021-07-10 00:33:03'),
(6, NULL, NULL, '3_1.png', NULL, 3, '2021-07-10 00:52:43', '2021-07-10 00:52:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_01_23_084144_create_products_table', 2),
(5, '2021_01_23_085625_create_galleries_table', 3),
(6, '2021_01_23_090533_create_platforms_table', 4),
(7, '2021_01_23_090852_create_categories_table', 5),
(8, '2021_01_23_160753_create_visits_table', 6),
(9, '2021_02_18_120453_add_google_to_users_table', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `platforms`
--

CREATE TABLE `platforms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `platform` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(10) UNSIGNED DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `platforms`
--

INSERT INTO `platforms` (`id`, `platform`, `description`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Website', 'Dalam rekayasa perangkat lunak, suatu aplikasi web adalah suatu aplikasi yang diakses menggunakan penjelajah web melalui suatu jaringan seperti Internet atau intranet.', 1, NULL, NULL),
(2, 'Mobile', 'Aplikasi mobil adalah program komputer yang dirancang untuk berjalan pada peranti bergerak seperti ponsel/tablet atau jam tangan. Aplikasi mobil sering kali dianggap sebagai kebalikan dari aplikasi desktop yang berjalan di komputer desktop, dan dengan aplikasi web yang berjalan di browser web perangkat.', 1, NULL, NULL),
(3, 'Desktop', 'Aplikasi Desktop adalah suatu aplikasi yang mampu beroperasi secara offline, tetapi kita harus menginstalnya sendiri pada laptop atau komputer. Aplikasi Web adalah suatu aplikasi berbasis web dapat beroperasi jika ada jaringan/koneksi internet.', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_leader` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_leader_nim` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_member` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_email` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `semester` int(10) UNSIGNED DEFAULT NULL,
  `group_class` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_picture` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_video` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_web` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_mobile` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_desktop` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_ig_poster` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `group_name`, `group_leader`, `group_leader_nim`, `group_member`, `group_email`, `group_phone`, `semester`, `group_class`, `title`, `description`, `category`, `platform`, `featured_picture`, `link_video`, `link_web`, `link_mobile`, `link_desktop`, `link_ig_poster`, `active`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Kelompok 11 UD Sri Rejeki', 'Nevin Trian Ade Putera', 'E41182107', 'Nevin Trian Ade Putera (E41182107); Brian Vidyanjaya (E41182193); Restu Dian Gunadi (E41182211); Bayu Jaya Ilham (E41182272); Hafil Aji Binafsihi (E41182165);', 'nevintrianade@gmail.com', '+6282234706515', 6, 'D', 'Sistem Informasi UD Sri Rejeki', 'Sistem Informasi Inventori UD Sri Rejeki adalah aplikasi eccommerce gudang yang menjual barang seperti makanan, minuman, perlengkapan dapur, dan kecantikan. Sistem informasi ini berbasis web dan android dan terdapat hak akses manajer, admin, sales, dan customer. Fitur pada aplikasi ini yaitu dapat mengelola user, barang, transaksi, dan laporan.', '2', 'Website, Mobile', 'ud_sri_rejeki.png', 'http://www.youtube.com/embed/ho4vAfTRnNo', 'http://udsrirejeki.wsjti.com', 'https://drive.google.com/drive/folders/1Zu7TNB7zgJBRoUL04l20F8owHqq_GlUR?usp=sharing', NULL, 'https://www.instagram.com/p/CKdIBlvn8i7/', 1, 5, '2021-01-25 17:00:00', '2021-07-09 23:56:42'),
(2, 'Lab RPL Crew tes', 'Hermawan Arif', 'E419123457', 'Novianto Hadi Raharjo', 'labrpl@polije.ac.id', '+6285646418027', 4, 'A', 'Aplikasi Mobile', 'Deskripsi Aplikasi Mobile', '2', 'Mobile', 'product_20210710073302_60e94d2e807c8.png', 'https://www.youtube.com/watch?v=B_UcvC0DQ6U', NULL, NULL, NULL, 'https://www.instagram.com/p/CRIybSpleKA/', 1, 3, NULL, '2021-07-10 02:39:23'),
(3, 'arvita', 'tes', 'E41231234', 'tes', 'aqwuarvitha@gmail.com', '085546349572', 4, 'a', 'tes', '<p>tes<br></p>', '2', 'mobile', 'product_20210710075241_60e951c9382fd.png', 'https://www.youtube.com/watch?v=B_UcvC0DQ6U', NULL, NULL, NULL, 'https://www.instagram.com/p/CRGMK4stICN/', 1, 3, '2021-07-10 00:52:42', '2021-07-10 00:52:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(225) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `avatar`, `google_id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'arvita', 'arvita', 'aqwuarvitha@gmail.com', '2021-07-09 14:28:49', '$2y$10$mDT0N7NRkuapmcDI9LJF5Opue6v9r./uUFafuwlqmxG8.ULeee8JC', NULL, 'https://lh3.googleusercontent.com/a-/AOh14GietJ4wKWWDACACBxKJYF9YgtbWP5uXutYbT2XAZw=s96-c', '116117543952160653452', 0, NULL, '2021-07-09 07:33:01'),
(3, 'arvita agus kurniasari', 'arvita agus kurniasari', 'arvitaagusk88@gmail.com', NULL, '$2y$10$naJ5Da0CfAEspYC.OL49q.8I/mRuYzOiwUXVAxqBsfz3VHls6BzTW', NULL, 'https://lh3.googleusercontent.com/a-/AOh14GilfkAIum4OT5lr6c5bQaNI-BSC1jY3_RAGY0pB=s96-c', '112737813656674377777', 1, '2021-07-09 21:28:07', '2021-07-09 21:28:07'),
(5, 'mahasiswa4', 'mahasiswa2', 'arvita.agus88@gmail.com', NULL, '$2y$10$sENwkQpKZkXji0AcGZYu7ORpz0XeUhS4a.hKNjn376.GlV/K8RhWS', NULL, 'user_20210710092027_60e9665b693b1.png', '$2y$10$7YEaR8hy2sXH6SbcMF9a1.bu29pvCEYgrE1zHKiY2NeDa3N1/NK0y', 1, '2021-07-10 02:20:27', '2021-07-10 23:46:23'),
(8, 'Arvita Agusk', 'Arvita Agusk', 'arvita.agusk@unlidrive.com', NULL, '$2y$10$GGF9IBGXEdwdFm.0UebOzewVqNkSGBALWZkN66ReAfEQmm7qnh3uS', NULL, 'https://lh3.googleusercontent.com/a/AATXAJyAEGyro97gR-nQApAMO-Kg6rZgUhRVOnrt2xgb=s96-c', '101494668189067428565', 2, '2021-07-10 23:25:16', '2021-07-10 23:25:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `visits`
--

CREATE TABLE `visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `primary_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secondary_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `score` bigint(20) UNSIGNED NOT NULL,
  `list` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`list`)),
  `expired_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `visits`
--

INSERT INTO `visits` (`id`, `primary_key`, `secondary_key`, `score`, `list`, `expired_at`, `created_at`, `updated_at`) VALUES
(1, 'visits:products_visits_recorded_ips:127.0.0.1', NULL, 1, NULL, '2022-07-11 01:39:32', '2021-07-11 01:39:32', '2021-07-11 01:39:32'),
(2, 'visits:products_visits', NULL, 1, NULL, NULL, '2021-07-11 01:39:32', '2021-07-11 01:39:32'),
(3, 'visits:products_visits_total', NULL, 1, NULL, NULL, '2021-07-11 01:39:32', '2021-07-11 01:39:32'),
(4, 'visits:products_visits_referers:', NULL, 1, NULL, NULL, '2021-07-11 01:39:32', '2021-07-11 01:39:32'),
(5, 'visits:products_visits_day', NULL, 1, NULL, NULL, '2021-07-11 01:39:32', '2021-07-11 01:39:32'),
(6, 'visits:products_visits_day_total', NULL, 1, NULL, NULL, '2021-07-11 01:39:32', '2021-07-11 01:39:32'),
(7, 'visits:products_visits_week', NULL, 1, NULL, NULL, '2021-07-11 01:39:32', '2021-07-11 01:39:32'),
(8, 'visits:products_visits_week_total', NULL, 1, NULL, NULL, '2021-07-11 01:39:32', '2021-07-11 01:39:32'),
(9, 'visits:products_visits_month', NULL, 1, NULL, NULL, '2021-07-11 01:39:32', '2021-07-11 01:39:32'),
(10, 'visits:products_visits_month_total', NULL, 1, NULL, NULL, '2021-07-11 01:39:32', '2021-07-11 01:39:32'),
(11, 'visits:products_visits_year', NULL, 1, NULL, NULL, '2021-07-11 01:39:32', '2021-07-11 01:39:32'),
(12, 'visits:products_visits_year_total', NULL, 1, NULL, NULL, '2021-07-11 01:39:32', '2021-07-11 01:39:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `votes`
--

CREATE TABLE `votes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vote` tinyint(4) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `votes`
--

INSERT INTO `votes` (`id`, `vote`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 8, 3, '2021-07-11 01:29:39', '2021-07-11 01:29:39');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

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
-- Indeks untuk tabel `platforms`
--
ALTER TABLE `platforms`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `visits_primary_key_unique` (`primary_key`),
  ADD UNIQUE KEY `visits_secondary_key_unique` (`secondary_key`);

--
-- Indeks untuk tabel `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `platforms`
--
ALTER TABLE `platforms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `visits`
--
ALTER TABLE `visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `votes`
--
ALTER TABLE `votes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
