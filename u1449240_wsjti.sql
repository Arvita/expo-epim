-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 19, 2021 at 02:13 AM
-- Server version: 10.3.29-MariaDB-cll-lve
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u1449240_wsjti`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
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
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `description`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Pendidikan', NULL, 1, NULL, NULL),
(2, 'Kesehatan', NULL, 1, NULL, NULL),
(3, 'Pertanian', NULL, 1, NULL, NULL),
(4, 'Peternakan', NULL, 1, NULL, NULL),
(5, 'E-commers', NULL, 1, NULL, NULL),
(6, 'Alat', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `galleries`
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
-- Dumping data for table `galleries`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
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
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `platforms`
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
-- Dumping data for table `platforms`
--

INSERT INTO `platforms` (`id`, `platform`, `description`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Website', 'Dalam rekayasa perangkat lunak, suatu aplikasi web adalah suatu aplikasi yang diakses menggunakan penjelajah web melalui suatu jaringan seperti Internet atau intranet.', 1, NULL, NULL),
(2, 'Mobile', 'Aplikasi mobil adalah program komputer yang dirancang untuk berjalan pada peranti bergerak seperti ponsel/tablet atau jam tangan. Aplikasi mobil sering kali dianggap sebagai kebalikan dari aplikasi desktop yang berjalan di komputer desktop, dan dengan aplikasi web yang berjalan di browser web perangkat.', 1, NULL, NULL),
(3, 'Desktop', 'Aplikasi Desktop adalah suatu aplikasi yang mampu beroperasi secara offline, tetapi kita harus menginstalnya sendiri pada laptop atau komputer. Aplikasi Web adalah suatu aplikasi berbasis web dapat beroperasi jika ada jaringan/koneksi internet.', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
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
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `group_name`, `group_leader`, `group_leader_nim`, `group_member`, `group_email`, `group_phone`, `semester`, `group_class`, `title`, `description`, `category`, `platform`, `featured_picture`, `link_video`, `link_web`, `link_mobile`, `link_desktop`, `link_ig_poster`, `active`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Kelompok 11 UD Sri Rejeki', 'Nevin Trian Ade Putera', 'E41182107', 'Nevin Trian Ade Putera (E41182107); Brian Vidyanjaya (E41182193); Restu Dian Gunadi (E41182211); Bayu Jaya Ilham (E41182272); Hafil Aji Binafsihi (E41182165);', 'nevintrianade@gmail.com', '+6282234706515', 6, 'D', 'Sistem Informasi UD Sri Rejeki', 'Sistem Informasi Inventori UD Sri Rejeki adalah aplikasi eccommerce gudang yang menjual barang seperti makanan, minuman, perlengkapan dapur, dan kecantikan. Sistem informasi ini berbasis web dan android dan terdapat hak akses manajer, admin, sales, dan customer. Fitur pada aplikasi ini yaitu dapat mengelola user, barang, transaksi, dan laporan.', '2', 'Website, Mobile', 'ud_sri_rejeki.png', 'http://www.youtube.com/embed/ho4vAfTRnNo', 'http://udsrirejeki.wsjti.com', 'https://drive.google.com/drive/folders/1Zu7TNB7zgJBRoUL04l20F8owHqq_GlUR?usp=sharing', NULL, 'https://www.instagram.com/p/CKdIBlvn8i7/', 1, 5, '2021-01-25 17:00:00', '2021-07-09 23:56:42'),
(2, 'Lab RPL Crew tes', 'Hermawan Arif', 'E419123457', 'Novianto Hadi Raharjo', 'labrpl@polije.ac.id', '+6285646418027', 4, 'A', 'Aplikasi Mobile', 'Deskripsi Aplikasi Mobile', '2', 'Mobile', 'product_20210710073302_60e94d2e807c8.png', 'https://www.youtube.com/watch?v=B_UcvC0DQ6U', NULL, NULL, NULL, 'https://www.instagram.com/p/CRIybSpleKA/', 1, 3, NULL, '2021-07-10 02:39:23'),
(3, 'arvita', 'tes', 'E41231234', 'tes', 'aqwuarvitha@gmail.com', '085546349572', 4, 'a', 'tes', '<p>tes<br></p>', '2', 'mobile', 'product_20210710075241_60e951c9382fd.png', 'https://www.youtube.com/watch?v=B_UcvC0DQ6U', NULL, NULL, NULL, 'https://www.instagram.com/p/CRGMK4stICN/', 1, 3, '2021-07-10 00:52:42', '2021-07-10 00:52:42');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `avatar`, `google_id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'arvita', 'arvita', 'aqwuarvitha@gmail.com', '2021-07-09 14:28:49', '$2y$10$mDT0N7NRkuapmcDI9LJF5Opue6v9r./uUFafuwlqmxG8.ULeee8JC', NULL, 'https://lh3.googleusercontent.com/a-/AOh14GietJ4wKWWDACACBxKJYF9YgtbWP5uXutYbT2XAZw=s96-c', '116117543952160653452', 0, NULL, '2021-07-09 07:33:01'),
(3, 'arvita agus kurniasari', 'arvita agus kurniasari', 'arvitaagusk88@gmail.com', NULL, '$2y$10$naJ5Da0CfAEspYC.OL49q.8I/mRuYzOiwUXVAxqBsfz3VHls6BzTW', NULL, 'https://lh3.googleusercontent.com/a-/AOh14GilfkAIum4OT5lr6c5bQaNI-BSC1jY3_RAGY0pB=s96-c', '112737813656674377777', 1, '2021-07-09 21:28:07', '2021-07-09 21:28:07'),
(5, 'mahasiswa4', 'mahasiswa2', 'arvita.agus88@gmail.com', NULL, '$2y$10$sENwkQpKZkXji0AcGZYu7ORpz0XeUhS4a.hKNjn376.GlV/K8RhWS', NULL, 'user_20210710092027_60e9665b693b1.png', '$2y$10$7YEaR8hy2sXH6SbcMF9a1.bu29pvCEYgrE1zHKiY2NeDa3N1/NK0y', 1, '2021-07-10 02:20:27', '2021-07-10 23:46:23'),
(8, 'Arvita Agusk', 'Arvita Agusk', 'arvita.agusk@unlidrive.com', NULL, '$2y$10$GGF9IBGXEdwdFm.0UebOzewVqNkSGBALWZkN66ReAfEQmm7qnh3uS', NULL, 'https://lh3.googleusercontent.com/a/AATXAJyAEGyro97gR-nQApAMO-Kg6rZgUhRVOnrt2xgb=s96-c', '101494668189067428565', 2, '2021-07-10 23:25:16', '2021-07-10 23:25:16'),
(9, 'David Juli Ariyadi', 'David Juli Ariyadi', 'david_juli@polije.ac.id', '2021-07-10 17:00:00', '$2y$10$5PmdMl5hftuBRnNSMEyzq.DL1PdMylAoGa5UVYdYuzFYrke7Y8jdC', NULL, 'https://lh3.googleusercontent.com/a-/AOh14Gg4I7eZYHqCoMNq6WRRov9Ew8iMIC1bhmCPnwGyAg=s96-c', '117415829589724256795', 0, '2021-07-11 21:40:36', '2021-07-11 21:41:28'),
(10, 'M Hasan', 'M Hasan', 'hasanmuhammad197@gmail.com', NULL, '$2y$10$52oW3f16U7B7rEVPMvAV8ewqXT0puT6PpMXyLiZtfwjJ6rL05Ysay', NULL, 'https://lh3.googleusercontent.com/a-/AOh14Gjlt0QQ5SCUTFv4guID4nbMbm56jLdjNJFXnx4i0g=s96-c', '108783157041580442266', 1, '2021-07-12 04:20:34', '2021-07-12 04:20:34'),
(11, 'Alfian Ezza Raditya', 'Alfian Ezza Raditya', 'rianezza86@gmail.com', NULL, '$2y$10$iF6wMHQTi2l49zK.PAjbquRT/6hu9k5O.14p7dKTiPFcJS/W9bxQ.', NULL, 'https://lh3.googleusercontent.com/a-/AOh14GiP0hMveHvLXsxnEqhMX2keU2K71Iy1T9f4zq5Q=s96-c', '101230717236698871984', 1, '2021-07-12 20:27:07', '2021-07-12 20:27:07'),
(12, 'Indra Prasetya', 'Indra Prasetya', 'nostayord@gmail.com', NULL, '$2y$10$eZwrb6BnsE8Ya7TxapIgUOH9ohIm/bD6sueSkXf5IexsnYZGLrYT.', NULL, 'https://lh3.googleusercontent.com/a-/AOh14GgcXNbVMklD4rmGYWc2ae8bqzmPcTmWMB1YX8wdAw=s96-c', '116086306114197017807', 1, '2021-07-12 20:47:54', '2021-07-12 20:47:54'),
(13, 'E41180658 Muhammad Jamalludin', 'E41180658 Muhammad Jamalludin', 'e41180658@student.polije.ac.id', NULL, '$2y$10$xn5R.4iDslDT998aw1KiMOPSl7y5xyLm.vt/qRNzYOa7PbP4hm21i', NULL, 'https://lh3.googleusercontent.com/a/AATXAJzEpLcEkTUelowdqvG1wmG9_ytcgkv4gj9xMTXr=s96-c', '109600052761749778374', 1, '2021-07-12 21:00:25', '2021-07-12 21:00:25'),
(14, 'ARDIAN HILMI PRAMULINTANG', 'ARDIAN HILMI PRAMULINTANG', 'ardianhil86@gmail.com', NULL, '$2y$10$fOLdiRNaz2Q9Hv7T213Xne38dxBglaTfX7kdFNFagiRaD4BF/BkOO', NULL, 'https://lh3.googleusercontent.com/a-/AOh14GjoEMOZfGXDKF6Y3wGhhmgPksvyYHN4ReK_AOBB5Q=s96-c', '108314896535753338963', 1, '2021-07-12 21:08:50', '2021-07-12 21:08:50'),
(15, 'Fajriansyah Decky Setiawan', 'Fajriansyah Decky Setiawan', 'deckys096@gmail.com', NULL, '$2y$10$OG6lp9w8OU91E115/91F5uyOdqnZpdnFpQaZgi4mFZFHTfwIgT3Lm', NULL, 'https://lh3.googleusercontent.com/a-/AOh14Gg3gRQmiyQ2m8exTzDsAJeEQq2aqbxaKjdyyqCP=s96-c', '105197683255817109111', 1, '2021-07-12 22:34:18', '2021-07-12 22:34:18'),
(16, 'Ayunda Kusuma Wardani', 'Ayunda Kusuma Wardani', 'ayundakusumawardani12@gmail.com', NULL, '$2y$10$nkGCphlrArXAH3LaN.KA9uRviKutdSaJsYfWceMv/04tvC4KWB5Ky', NULL, 'https://lh3.googleusercontent.com/a-/AOh14GjrpKo09NpzNWOKr8VA1i-ngVyOsEAiV3xfzaHb=s96-c', '106285033678683015229', 1, '2021-07-12 23:05:44', '2021-07-12 23:05:44'),
(17, 'Mohammad Haerul Anam', 'Mohammad Haerul Anam', 'mhaerulanam603@gmail.com', NULL, '$2y$10$sMBebvVjyGfjOClBAqkzbug4XyEvo5ttoCZsBCCv50Ptsonxaohl2', NULL, 'https://lh3.googleusercontent.com/a-/AOh14GhpamkzhHmF244B6gpVQjuNO5YKF-hsKWDRcKGdFNs=s96-c', '109806243152170939137', 1, '2021-07-12 23:13:59', '2021-07-12 23:13:59'),
(18, 'fastabee', 'fastabee', 'fastabikul87@gmail.com', NULL, '$2y$10$FQn.amDsjHnsVqOLMD9bOOgZFiF4i/lkagDMWW.b8BmyVCB2ta9G.', NULL, 'https://lh3.googleusercontent.com/a-/AOh14GgfWgDK-lv6ld-1wC3EgmVrtJE_o9w3xLKVvvmf=s96-c', '116781288715204938954', 1, '2021-07-13 00:29:53', '2021-07-13 00:29:53'),
(19, 'Sitti Mahmudah', 'Sitti Mahmudah', 'sittimahmudah8@gmail.com', NULL, '$2y$10$4mL4/KBQtJhXa2dHCwV9/uPwqpwikxJQS//B/dVNHsmqbLSq5aDwC', NULL, 'https://lh3.googleusercontent.com/a-/AOh14GicOF7VbTGY5bTrIBDtFRMcvtUmcDdcst8TKEgwGzk=s96-c', '107161468102646100183', 1, '2021-07-13 00:32:17', '2021-07-13 00:32:17'),
(20, 'Andrea Santana Adzani', 'Andrea Santana Adzani', 'andreasterben69@gmail.com', NULL, '$2y$10$2Bs9s1x2UdNSI1QdI.rTuO3nmo5duUgZu4btY5RkSyw6J5qOhTQUK', NULL, 'https://lh3.googleusercontent.com/a-/AOh14Gi-yQSsnGKFPxXpt4RDpa0lXoWE8aOKNQZPUZNH=s96-c', '117801335305552469150', 1, '2021-07-13 01:24:02', '2021-07-13 01:24:02'),
(21, 'Dimas Fajrul Falah', 'Dimas Fajrul Falah', 'dimasfajrul24@gmail.com', NULL, '$2y$10$Y6DJaMu.bfIgmdRV2/s5uuXJPjpf3mhQJ6.QJ5EWqBKksJcydYEE.', NULL, 'https://lh3.googleusercontent.com/a-/AOh14Gg8yZOs9Yny3aCtPEnv2iOgx-WEyQI_Zgw-lWe99w=s96-c', '108847473303861432711', 1, '2021-07-13 07:04:00', '2021-07-13 07:04:00'),
(22, 'Farul Ahmad Wananda', 'Farul Ahmad Wananda', 'farulahmad2002@gmail.com', NULL, '$2y$10$s60xtGNVRQjJDGUqZXT3XeFGS9vEQx9vrGsWJ/PjJs10qxfEJiSWy', NULL, 'https://lh3.googleusercontent.com/a-/AOh14GjKTtiXwsY6ca_6wrQtPiFwFRMcVh3_9GlTknN6PA=s96-c', '102689476680157858333', 1, '2021-07-13 19:05:26', '2021-07-13 19:05:26'),
(23, 'Erik Rizki Firdaus', 'Erik Rizki Firdaus', 'erikrizky89@gmail.com', NULL, '$2y$10$byIgqKzlslT2zmKDx3kA.eqO6hzQbHD7YyQPuZ6Gsbm4nMJuo2h5K', NULL, 'https://lh3.googleusercontent.com/a-/AOh14GhTFX86j70nl8KbFdZ7ROumWm3dv_ajufdbOC7rrw=s96-c', '105249434281939201341', 1, '2021-07-14 16:38:23', '2021-07-14 16:38:23'),
(24, 'M Farhan Nur Pratama', 'M Farhan Nur Pratama', 'mfarhannur80@gmail.com', NULL, '$2y$10$D/9f3ylDldsjZZW1PUDn/.u0dhMCu8fLufytWvxFhyYnEjLRSptDW', NULL, 'https://lh3.googleusercontent.com/a-/AOh14GjQo3cVegLxXnhsH7T6TUhXqSslA871ztXmt5Ydrw=s96-c', '103710791561317532910', 1, '2021-07-15 21:30:03', '2021-07-15 21:30:03'),
(25, 'Gede Sute', 'Gede Sute', 'gedesute00@gmail.com', NULL, '$2y$10$F5knMVwW1Veyq6qQc42uAuigitYZ6MMGcH9kTd8rC7fYLwSqHs4Pu', NULL, 'https://lh3.googleusercontent.com/a-/AOh14GjIeTWYPU7j8c2q1XF2VMos4PSSi6N9SS0BUuNRQA=s96-c', '111947893278142292612', 1, '2021-07-16 02:40:43', '2021-07-16 02:40:43'),
(26, 'Bayu Ilham', 'Bayu Ilham', 'persegi004@gmail.com', NULL, '$2y$10$Mo5W5dS/gHwQr44HyXBM/eKzVDF0lMN6fZ0czz10jYkAxvGV7e7f.', NULL, 'https://lh3.googleusercontent.com/a-/AOh14GhDjnGJGvslxBJnuSndkDHKYbn9WfOSwULgUW2mEg=s96-c', '114413292962125189565', 1, '2021-07-16 02:43:10', '2021-07-16 02:43:10'),
(27, 'E41180100 Achmad Syadidul Fahim', 'E41180100 Achmad Syadidul Fahim', 'e41180100@student.polije.ac.id', NULL, '$2y$10$Q2M7iNvI9NwMFH6077aJyuFALTZDWoBMERkAGeOdThFldLA9eChTW', NULL, 'https://lh3.googleusercontent.com/a/AATXAJxtNZGuo_N5KoVl2U38fe5n5Ra06tywR1U9ocLc=s96-c', '112770079501579922442', 1, '2021-07-16 04:22:12', '2021-07-16 04:22:12'),
(28, 'Ady Nugraha Putra Ramadhan', 'Ady Nugraha Putra Ramadhan', 'adynugrahaputra@gmail.com', NULL, '$2y$10$PafhwxfjlJ/TJ9theyG17OOjbjJKiSZ5qMHZzhdo7TcY4pCHznnl2', NULL, 'https://lh3.googleusercontent.com/a/AATXAJzhVWnDpbYG3XYZMkaXRjnhe5pdUgnXpRWfph3l=s96-c', '117763473939190607931', 1, '2021-07-16 21:55:01', '2021-07-16 21:55:01'),
(29, 'Irman', 'Irman', 'alfianrochmatul77@gmail.com', NULL, '$2y$10$BYqeov1ce9E5hBQnF2ar/.5i4uvlblWcssfHBQo0WhjTyADCnRPgS', NULL, 'https://lh3.googleusercontent.com/a-/AOh14GjLrPp53yL01L2p5wwgNxWEzz1KW7ksBsEoTXQtsg=s96-c', '109729932501172296841', 1, '2021-07-17 04:13:05', '2021-07-17 04:13:05'),
(30, 'Fahrul Irsyad', 'Fahrul Irsyad', 'fahrulirsyad16@gmail.com', NULL, '$2y$10$.R21lkQyRIkO5CBKrNNZV.FyjWBd2HljBaoxg1oUgYb9t9MlTMJla', NULL, 'https://lh3.googleusercontent.com/a/AATXAJzgzTFBKuMk9tdWSy4PThiffZYQb3M4YTgKJoQ9=s96-c', '104927679833292325222', 1, '2021-07-17 19:26:56', '2021-07-17 19:26:56'),
(31, 'Rizdky Oktaviari', 'Rizdky Oktaviari', 'kudaberkuda@gmail.com', NULL, '$2y$10$DSYKvpRYdkKN9Fs3JcKdsupdWOnEq0FQegemVbJG73L7Nh1/fjIdC', NULL, 'https://lh3.googleusercontent.com/a-/AOh14Gh-qjGw6XOkKQNPddY8uzkq_E_FIUkRYfmIsuOz=s96-c', '111625444706219077157', 1, '2021-07-17 23:49:30', '2021-07-17 23:49:30'),
(32, 'fadhila dwi kurniawan', 'fadhila dwi kurniawan', 'fadhiladwikurniawan@gmail.com', NULL, '$2y$10$nO3HXumaxpzwVPAJ3.XF7eLjIfPksEJqTLR1c3EPrrPE0fuh62oAu', NULL, 'https://lh3.googleusercontent.com/a-/AOh14GgynqtA4NAGYmgEirk_R1ULeEPmBI0vj-dIBL3nXQ=s96-c', '114065449257720235813', 1, '2021-07-18 02:56:09', '2021-07-18 02:56:09'),
(33, 'depe 14', 'depe 14', 'depe1405@gmail.com', NULL, '$2y$10$UfEw8K5l.uDH7Hg7d4tc/.hf93hBPDTIt1Vo5KyGLxnpO/KImDEHm', NULL, 'https://lh3.googleusercontent.com/a/AATXAJwp5I-YGqtK8rPPZmAHL6sVRGgFMZqHWSI_r7jm=s96-c', '117362016041993441075', 1, '2021-07-18 04:23:25', '2021-07-18 04:23:25'),
(34, 'Myco J', 'Myco J', 'mycojihan28@gmail.com', NULL, '$2y$10$a/Mmv7u7awMmXXbc9FuutOt0lxw9VmyYNxhfjFKQuN3LH5jbsmvGy', NULL, 'https://lh3.googleusercontent.com/a/AATXAJwjUlr-yJzr7fIlZP5y-M7wDo-TpU9Jm_jeU2u-6vU=s96-c', '109345251808533012236', 1, '2021-07-18 05:37:17', '2021-07-18 05:37:17'),
(35, 'E41190530 Alif Irhasshoufi Nasihul Umam', 'E41190530 Alif Irhasshoufi Nasihul Umam', 'e41190530@student.polije.ac.id', NULL, '$2y$10$pHgNRHBFLBH.QIcGYwbP8eUxj0msj7nvBnEqatlFMmg0VAJG9pIQO', NULL, 'https://lh3.googleusercontent.com/a/AATXAJwwm1KE2RiGiiLh_3Roh7yLMXBXPSMXJGpoJWwL=s96-c', '108951545173001655923', 1, '2021-07-18 08:25:28', '2021-07-18 08:25:28'),
(36, 'linda dewi linda', 'linda dewi linda', 'lindadewilinda@gmail.com', NULL, '$2y$10$9.uZM21zb1skqx2P5HnSxOaVHO9WX5FvtVwtQ1iTyBZFbRgi5ab.q', NULL, 'https://lh3.googleusercontent.com/a/AATXAJzl23DLj7Mt_Gpqbjj7z3PG-8-E07CknOD-MSSF=s96-c', '115425435482512374594', 1, '2021-07-18 08:55:04', '2021-07-18 08:55:04');

-- --------------------------------------------------------

--
-- Table structure for table `visits`
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
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`id`, `primary_key`, `secondary_key`, `score`, `list`, `expired_at`, `created_at`, `updated_at`) VALUES
(1, 'visits:products_visits_recorded_ips:127.0.0.1', NULL, 1, NULL, '2022-07-11 01:39:32', '2021-07-11 01:39:32', '2021-07-11 01:39:32'),
(2, 'visits:products_visits', NULL, 78, NULL, NULL, '2021-07-11 01:39:32', '2021-07-18 14:13:32'),
(3, 'visits:products_visits_total', NULL, 78, NULL, NULL, '2021-07-11 01:39:32', '2021-07-18 14:13:32'),
(4, 'visits:products_visits_referers:', NULL, 78, NULL, NULL, '2021-07-11 01:39:32', '2021-07-18 14:13:32'),
(5, 'visits:products_visits_day', NULL, 78, NULL, NULL, '2021-07-11 01:39:32', '2021-07-18 14:13:32'),
(6, 'visits:products_visits_day_total', NULL, 78, NULL, NULL, '2021-07-11 01:39:32', '2021-07-18 14:13:32'),
(7, 'visits:products_visits_week', NULL, 78, NULL, NULL, '2021-07-11 01:39:32', '2021-07-18 14:13:32'),
(8, 'visits:products_visits_week_total', NULL, 78, NULL, NULL, '2021-07-11 01:39:32', '2021-07-18 14:13:32'),
(9, 'visits:products_visits_month', NULL, 78, NULL, NULL, '2021-07-11 01:39:32', '2021-07-18 14:13:32'),
(10, 'visits:products_visits_month_total', NULL, 78, NULL, NULL, '2021-07-11 01:39:32', '2021-07-18 14:13:32'),
(11, 'visits:products_visits_year', NULL, 78, NULL, NULL, '2021-07-11 01:39:32', '2021-07-18 14:13:32'),
(12, 'visits:products_visits_year_total', NULL, 78, NULL, NULL, '2021-07-11 01:39:32', '2021-07-18 14:13:32'),
(13, 'visits:products_visits_recorded_ips:103.109.209.130', NULL, 1, NULL, '2022-07-11 21:25:27', '2021-07-11 21:25:27', '2021-07-11 21:25:27'),
(14, 'visits:products_visits_recorded_ips:125.166.116.159', NULL, 1, NULL, '2022-07-11 21:27:21', '2021-07-11 21:27:21', '2021-07-11 21:27:21'),
(15, 'visits:products_visits_recorded_ips:125.166.117.100', NULL, 1, NULL, '2022-07-12 00:42:55', '2021-07-12 00:42:55', '2021-07-12 00:42:55'),
(16, 'visits:products_visits_recorded_ips:103.240.110.100', NULL, 1, NULL, '2022-07-12 04:20:34', '2021-07-12 04:20:34', '2021-07-12 04:20:34'),
(17, 'visits:products_visits_recorded_ips:180.253.160.127', NULL, 1, NULL, '2022-07-12 05:46:49', '2021-07-12 05:46:49', '2021-07-12 05:46:49'),
(18, 'visits:products_visits_recorded_ips:184.154.139.19', NULL, 1, NULL, '2022-07-12 11:08:36', '2021-07-12 11:08:36', '2021-07-12 11:08:36'),
(19, 'visits:products_visits_recorded_ips:114.125.86.159', NULL, 1, NULL, '2022-07-12 20:16:32', '2021-07-12 20:16:32', '2021-07-12 20:16:32'),
(20, 'visits:products_visits_recorded_ips:180.253.166.83', NULL, 1, NULL, '2022-07-12 20:16:45', '2021-07-12 20:16:45', '2021-07-12 20:16:45'),
(21, 'visits:products_visits_recorded_ips:125.166.119.56', NULL, 1, NULL, '2022-07-12 20:16:56', '2021-07-12 20:16:56', '2021-07-12 20:16:56'),
(22, 'visits:products_visits_recorded_ips:125.166.119.118', NULL, 1, NULL, '2022-07-12 20:18:39', '2021-07-12 20:18:39', '2021-07-12 20:18:39'),
(23, 'visits:products_visits_recorded_ips:110.137.103.240', NULL, 1, NULL, '2022-07-12 20:26:49', '2021-07-12 20:26:49', '2021-07-12 20:26:49'),
(24, 'visits:products_visits_recorded_ips:182.1.91.84', NULL, 1, NULL, '2022-07-12 20:27:25', '2021-07-12 20:27:25', '2021-07-12 20:27:25'),
(25, 'visits:products_visits_recorded_ips:180.253.167.32', NULL, 1, NULL, '2022-07-12 20:27:58', '2021-07-12 20:27:58', '2021-07-12 20:27:58'),
(26, 'visits:products_visits_recorded_ips:103.3.58.118', NULL, 1, NULL, '2022-07-12 20:28:33', '2021-07-12 20:28:33', '2021-07-12 20:28:33'),
(27, 'visits:products_visits_recorded_ips:112.215.237.244', NULL, 1, NULL, '2022-07-12 20:43:54', '2021-07-12 20:43:54', '2021-07-12 20:43:54'),
(28, 'visits:products_visits_recorded_ips:36.78.187.108', NULL, 1, NULL, '2022-07-12 20:47:55', '2021-07-12 20:47:55', '2021-07-12 20:47:55'),
(29, 'visits:products_visits_recorded_ips:116.206.40.78', NULL, 1, NULL, '2022-07-12 20:55:45', '2021-07-12 20:55:45', '2021-07-12 20:55:45'),
(30, 'visits:products_visits_recorded_ips:118.99.83.55', NULL, 1, NULL, '2022-07-12 20:58:04', '2021-07-12 20:58:04', '2021-07-12 20:58:04'),
(31, 'visits:products_visits_recorded_ips:125.166.117.245', NULL, 1, NULL, '2022-07-12 21:08:50', '2021-07-12 21:08:50', '2021-07-12 21:08:50'),
(32, 'visits:products_visits_recorded_ips:110.137.101.173', NULL, 1, NULL, '2022-07-12 22:29:44', '2021-07-12 22:29:44', '2021-07-12 22:29:44'),
(33, 'visits:products_visits_recorded_ips:182.1.105.255', NULL, 1, NULL, '2022-07-12 22:30:33', '2021-07-12 22:30:33', '2021-07-12 22:30:33'),
(34, 'visits:products_visits_recorded_ips:140.213.219.24', NULL, 1, NULL, '2022-07-12 22:34:19', '2021-07-12 22:34:19', '2021-07-12 22:34:19'),
(35, 'visits:products_visits_recorded_ips:182.1.116.233', NULL, 1, NULL, '2022-07-12 22:56:27', '2021-07-12 22:56:27', '2021-07-12 22:56:27'),
(36, 'visits:products_visits_recorded_ips:111.92.162.132', NULL, 1, NULL, '2022-07-12 23:04:39', '2021-07-12 23:04:39', '2021-07-12 23:04:39'),
(37, 'visits:products_visits_recorded_ips:125.166.116.35', NULL, 1, NULL, '2022-07-12 23:13:59', '2021-07-12 23:13:59', '2021-07-12 23:13:59'),
(38, 'visits:products_visits_recorded_ips:110.50.81.201', NULL, 1, NULL, '2022-07-12 23:14:02', '2021-07-12 23:14:02', '2021-07-12 23:14:02'),
(39, 'visits:products_visits_recorded_ips:36.81.156.198', NULL, 1, NULL, '2022-07-13 00:20:56', '2021-07-13 00:20:56', '2021-07-13 00:20:56'),
(40, 'visits:products_visits_recorded_ips:182.1.80.37', NULL, 1, NULL, '2022-07-13 00:29:53', '2021-07-13 00:29:53', '2021-07-13 00:29:53'),
(41, 'visits:products_visits_recorded_ips:125.166.118.219', NULL, 1, NULL, '2022-07-13 00:32:17', '2021-07-13 00:32:17', '2021-07-13 00:32:17'),
(42, 'visits:products_visits_recorded_ips:114.125.93.117', NULL, 1, NULL, '2022-07-13 01:22:03', '2021-07-13 01:22:03', '2021-07-13 01:22:03'),
(43, 'visits:products_visits_recorded_ips:100.21.218.158', NULL, 1, NULL, '2022-07-13 04:12:21', '2021-07-13 04:12:21', '2021-07-13 04:12:21'),
(44, 'visits:products_visits_recorded_ips:162.210.194.38', NULL, 1, NULL, '2022-07-13 07:04:00', '2021-07-13 07:04:00', '2021-07-13 07:04:00'),
(45, 'visits:products_visits_recorded_ips:216.21.170.8', NULL, 1, NULL, '2022-07-13 07:04:03', '2021-07-13 07:04:03', '2021-07-13 07:04:03'),
(46, 'visits:products_visits_recorded_ips:172.58.15.179', NULL, 1, NULL, '2022-07-13 07:04:50', '2021-07-13 07:04:50', '2021-07-13 07:04:50'),
(47, 'visits:products_visits_recorded_ips:125.166.116.12', NULL, 1, NULL, '2022-07-13 07:53:55', '2021-07-13 07:53:55', '2021-07-13 07:53:55'),
(48, 'visits:products_visits_recorded_ips:112.215.237.197', NULL, 1, NULL, '2022-07-13 07:55:16', '2021-07-13 07:55:16', '2021-07-13 07:55:16'),
(49, 'visits:products_visits_recorded_ips:125.166.116.161', NULL, 1, NULL, '2022-07-13 07:56:47', '2021-07-13 07:56:47', '2021-07-13 07:56:47'),
(50, 'visits:products_visits_recorded_ips:125.166.116.61', NULL, 1, NULL, '2022-07-13 19:05:26', '2021-07-13 19:05:26', '2021-07-13 19:05:26'),
(51, 'visits:products_visits_recorded_ips:125.166.117.160', NULL, 1, NULL, '2022-07-13 21:00:36', '2021-07-13 21:00:36', '2021-07-13 21:00:36'),
(52, 'visits:products_visits_recorded_ips:125.166.119.24', NULL, 1, NULL, '2022-07-14 04:34:36', '2021-07-14 04:34:36', '2021-07-14 04:34:36'),
(53, 'visits:products_visits_recorded_ips:184.154.139.21', NULL, 1, NULL, '2022-07-14 11:04:56', '2021-07-14 11:04:56', '2021-07-14 11:04:56'),
(54, 'visits:products_visits_recorded_ips:180.253.163.206', NULL, 1, NULL, '2022-07-14 16:38:23', '2021-07-14 16:38:23', '2021-07-14 16:38:23'),
(55, 'visits:products_visits_recorded_ips:103.125.104.54', NULL, 1, NULL, '2022-07-15 03:03:45', '2021-07-15 03:03:45', '2021-07-15 03:03:45'),
(56, 'visits:products_visits_recorded_ips:112.215.154.121', NULL, 1, NULL, '2022-07-15 03:04:09', '2021-07-15 03:04:09', '2021-07-15 03:04:09'),
(57, 'visits:products_visits_recorded_ips:110.137.100.26', NULL, 1, NULL, '2022-07-15 03:33:24', '2021-07-15 03:33:24', '2021-07-15 03:33:24'),
(58, 'visits:products_visits_recorded_ips:36.90.51.108', NULL, 1, NULL, '2022-07-15 06:07:14', '2021-07-15 06:07:14', '2021-07-15 06:07:14'),
(59, 'visits:products_visits_recorded_ips:125.166.117.57', NULL, 1, NULL, '2022-07-16 02:40:43', '2021-07-16 02:40:43', '2021-07-16 02:40:43'),
(60, 'visits:products_visits_recorded_ips:140.213.59.132', NULL, 1, NULL, '2022-07-16 02:43:10', '2021-07-16 02:43:10', '2021-07-16 02:43:10'),
(61, 'visits:products_visits_recorded_ips:110.50.80.196', NULL, 1, NULL, '2022-07-16 03:15:32', '2021-07-16 03:15:32', '2021-07-16 03:15:32'),
(62, 'visits:products_visits_recorded_ips:125.166.116.139', NULL, 1, NULL, '2022-07-16 04:22:13', '2021-07-16 04:22:13', '2021-07-16 04:22:13'),
(63, 'visits:products_visits_recorded_ips:180.253.165.79', NULL, 1, NULL, '2022-07-16 18:59:08', '2021-07-16 18:59:08', '2021-07-16 18:59:08'),
(64, 'visits:products_visits_recorded_ips:125.166.119.97', NULL, 1, NULL, '2022-07-16 20:45:26', '2021-07-16 20:45:26', '2021-07-16 20:45:26'),
(65, 'visits:products_visits_recorded_ips:103.156.141.3', NULL, 1, NULL, '2022-07-16 21:55:02', '2021-07-16 21:55:02', '2021-07-16 21:55:02'),
(66, 'visits:products_visits_recorded_ips:114.4.4.197', NULL, 1, NULL, '2022-07-16 21:56:15', '2021-07-16 21:56:15', '2021-07-16 21:56:15'),
(67, 'visits:products_visits_recorded_ips:125.166.118.218', NULL, 1, NULL, '2022-07-16 23:13:44', '2021-07-16 23:13:44', '2021-07-16 23:13:44'),
(68, 'visits:products_visits_recorded_ips:182.1.79.164', NULL, 1, NULL, '2022-07-16 23:43:09', '2021-07-16 23:43:09', '2021-07-16 23:43:09'),
(69, 'visits:products_visits_recorded_ips:125.166.117.52', NULL, 1, NULL, '2022-07-16 23:45:45', '2021-07-16 23:45:45', '2021-07-16 23:45:45'),
(70, 'visits:products_visits_recorded_ips:125.166.118.21', NULL, 1, NULL, '2022-07-17 00:24:52', '2021-07-17 00:24:52', '2021-07-17 00:24:52'),
(71, 'visits:products_visits_recorded_ips:125.166.116.152', NULL, 1, NULL, '2022-07-17 05:10:51', '2021-07-17 05:10:51', '2021-07-17 05:10:51'),
(72, 'visits:products_visits_recorded_ips:125.166.116.106', NULL, 1, NULL, '2022-07-17 06:16:40', '2021-07-17 06:16:40', '2021-07-17 06:16:40'),
(73, 'visits:products_visits_recorded_ips:223.25.104.4', NULL, 1, NULL, '2022-07-17 09:18:08', '2021-07-17 09:18:08', '2021-07-17 09:18:08'),
(74, 'visits:products_visits_recorded_ips:180.247.238.45', NULL, 1, NULL, '2022-07-17 09:19:50', '2021-07-17 09:19:50', '2021-07-17 09:19:50'),
(75, 'visits:products_visits_recorded_ips:184.154.139.18', NULL, 1, NULL, '2022-07-17 11:01:00', '2021-07-17 11:01:00', '2021-07-17 11:01:00'),
(76, 'visits:products_visits_recorded_ips:36.76.112.98', NULL, 1, NULL, '2022-07-17 11:24:21', '2021-07-17 11:24:21', '2021-07-17 11:24:21'),
(77, 'visits:products_visits_recorded_ips:110.137.103.137', NULL, 1, NULL, '2022-07-17 21:31:28', '2021-07-17 21:31:28', '2021-07-17 21:31:28'),
(78, 'visits:products_visits_recorded_ips:125.166.119.82', NULL, 1, NULL, '2022-07-17 23:49:30', '2021-07-17 23:49:30', '2021-07-17 23:49:30'),
(79, 'visits:products_visits_recorded_ips:103.156.141.4', NULL, 1, NULL, '2022-07-18 02:50:36', '2021-07-18 02:50:36', '2021-07-18 02:50:36'),
(80, 'visits:products_visits_recorded_ips:112.215.154.79', NULL, 1, NULL, '2022-07-18 02:56:09', '2021-07-18 02:56:09', '2021-07-18 02:56:09'),
(81, 'visits:products_visits_recorded_ips:182.253.121.18', NULL, 1, NULL, '2022-07-18 02:56:26', '2021-07-18 02:56:26', '2021-07-18 02:56:26'),
(82, 'visits:products_visits_recorded_ips:114.4.4.132', NULL, 1, NULL, '2022-07-18 02:56:29', '2021-07-18 02:56:29', '2021-07-18 02:56:29'),
(83, 'visits:products_visits_recorded_ips:125.166.119.45', NULL, 1, NULL, '2022-07-18 04:23:26', '2021-07-18 04:23:26', '2021-07-18 04:23:26'),
(84, 'visits:products_visits_recorded_ips:103.106.219.224', NULL, 1, NULL, '2022-07-18 05:04:17', '2021-07-18 05:04:17', '2021-07-18 05:04:17'),
(85, 'visits:products_visits_recorded_ips:125.166.117.155', NULL, 1, NULL, '2022-07-18 05:37:17', '2021-07-18 05:37:17', '2021-07-18 05:37:17'),
(86, 'visits:products_visits_recorded_ips:125.166.119.248', NULL, 1, NULL, '2022-07-18 08:25:28', '2021-07-18 08:25:28', '2021-07-18 08:25:28'),
(87, 'visits:products_visits_recorded_ips:180.253.164.187', NULL, 1, NULL, '2022-07-18 08:55:05', '2021-07-18 08:55:05', '2021-07-18 08:55:05'),
(88, 'visits:products_visits_recorded_ips:184.154.139.3', NULL, 1, NULL, '2022-07-18 11:07:59', '2021-07-18 11:07:59', '2021-07-18 11:07:59'),
(89, 'visits:products_visits_recorded_ips:182.1.72.42', NULL, 1, NULL, '2022-07-18 14:13:32', '2021-07-18 14:13:32', '2021-07-18 14:13:32');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
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
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `vote`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 8, 3, '2021-07-11 01:29:39', '2021-07-11 01:29:39'),
(2, 1, 9, 1, '2021-07-11 21:45:47', '2021-07-11 21:45:47'),
(3, 1, 5, 1, '2021-07-12 00:47:57', '2021-07-12 00:47:57'),
(4, 1, 16, 2, '2021-07-12 23:06:28', '2021-07-12 23:06:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `platforms`
--
ALTER TABLE `platforms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `visits_primary_key_unique` (`primary_key`),
  ADD UNIQUE KEY `visits_secondary_key_unique` (`secondary_key`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `platforms`
--
ALTER TABLE `platforms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
