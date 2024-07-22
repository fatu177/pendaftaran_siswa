-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jul 2024 pada 09.16
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `peserta_ujikom`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:2;', 1721632507),
('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1721632507;', 1721632507),
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:0:{}s:11:\"permissions\";a:0:{}s:5:\"roles\";a:0:{}}', 1721638707);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gelombangs`
--

CREATE TABLE `gelombangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_gelombang` varchar(255) NOT NULL,
  `aktif` tinyint(4) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `gelombangs`
--

INSERT INTO `gelombangs` (`id`, `nama_gelombang`, `aktif`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Gelombang 1', 1, NULL, '2024-06-19 21:56:05', '2024-06-26 06:45:33'),
(2, 'Gelombang 2', 0, NULL, '2024-06-20 18:17:05', '2024-06-26 06:45:33'),
(3, 'Gelombang 3', 0, NULL, '2024-06-20 19:21:42', '2024-06-26 06:45:33'),
(4, 'Gelombang 4', 0, NULL, '2024-06-20 19:30:05', '2024-06-26 06:45:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusans`
--

CREATE TABLE `jurusans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jurusans`
--

INSERT INTO `jurusans` (`id`, `nama_jurusan`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', NULL, '2024-06-19 21:55:49', '2024-06-19 21:55:49'),
(2, 'Tata Boga', NULL, '2024-06-19 23:45:44', '2024-06-19 23:45:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `levels`
--

CREATE TABLE `levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_06_20_013609_create_jurusans_table', 1),
(5, '2024_06_20_013620_create_gelombangs_table', 1),
(6, '2024_06_20_013720_create_pesertapelatihans_table', 1),
(7, '2024_06_20_021627_create_levels_table', 1),
(8, '2024_06_20_025523_create_permission_tables', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesertapelatihans`
--

CREATE TABLE `pesertapelatihans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_jurusan` bigint(20) UNSIGNED DEFAULT NULL,
  `id_gelombang` bigint(20) UNSIGNED DEFAULT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `nik` varchar(255) NOT NULL,
  `kartu_keluarga` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `pendidikan_terakhir` varchar(255) NOT NULL,
  `nama_sekolah` varchar(255) NOT NULL,
  `kejuruan` varchar(255) NOT NULL,
  `nomor_hp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `aktivitas_saat_ini` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pesertapelatihans`
--

INSERT INTO `pesertapelatihans` (`id`, `id_jurusan`, `id_gelombang`, `nama_lengkap`, `nik`, `kartu_keluarga`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `pendidikan_terakhir`, `nama_sekolah`, `kejuruan`, `nomor_hp`, `email`, `aktivitas_saat_ini`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(11, 2, 1, 'Harimurti Santoso', '3528050708013957', '1408880608089410', 'Laki - Laki', 'Langsa', '1977-10-11', 'S-2', 'PJ Astuti (Persero) Tbk', 'Bahasa Inggris', '0280 2379 0259', 'widodo.eka@yahoo.com', 'Bekerja', 0, NULL, '2024-07-21 23:01:40', '2024-07-21 23:01:40'),
(12, 2, 4, 'Yessi Wahyuni', '1674506709049607', '9104186605125698', 'Laki - Laki', 'Pekalongan', '1978-08-08', 'SMA', 'PD Lailasari Winarno', 'Bahasa Inggris', '0857 0262 4353', 'marbun.vivi@maheswara.ac.id', 'Sekolah', 2, NULL, '2024-07-21 23:01:40', '2024-07-21 23:01:40'),
(13, 2, 2, 'Sakti Prakasa', '3601150602151110', '1808840306980211', 'Laki - Laki', 'Banda Aceh', '1977-11-17', 'S-2', 'PJ Laksmiwati (Persero) Tbk', 'Fisika', '0554 2536 7634', 'zelda.haryanti@gmail.co.id', 'Sekolah', 0, NULL, '2024-07-21 23:01:40', '2024-07-21 23:01:40'),
(14, 2, 4, 'Omar Jailani', '6108861707079035', '3517761906084673', 'Perempuan', 'Madiun', '2018-04-24', 'SMA', 'PD Pradipta', 'Komputer', '(+62) 226 2540 4116', 'muhammad48@lailasari.org', 'Bekerja', 2, NULL, '2024-07-21 23:01:40', '2024-07-21 23:01:40'),
(15, 2, 1, 'Taufan Adriansyah S.I.Kom', '1905705208094876', '7406980403131747', 'Laki - Laki', 'Bitung', '2019-09-25', 'S-2', 'Perum Haryanti', 'Fisika', '(+62) 680 9116 910', 'salimah80@lestari.in', 'Mencari Kerja', 2, NULL, '2024-07-21 23:01:40', '2024-07-21 23:01:40'),
(16, 2, 4, 'Tari Patricia Aryani', '3307416302128604', '7405834102054378', 'Perempuan', 'Ambon', '2021-09-19', 'S-2', 'PT Uyainah Tbk', 'Bahasa Inggris', '(+62) 969 6158 958', 'dpermadi@gunawan.co.id', 'Sekolah', 2, NULL, '2024-07-21 23:01:40', '2024-07-21 23:01:40'),
(17, 1, 3, 'Kala Hutapea', '9117831405004018', '1905615805027383', 'Perempuan', 'Sawahlunto', '2007-03-30', 'S-2', 'Fa Mardhiyah Prasetyo', 'Fisika', '0516 9338 950', 'qkusumo@halimah.name', 'Bekerja', 0, NULL, '2024-07-21 23:01:40', '2024-07-21 23:01:40'),
(18, 1, 3, 'Nilam Pertiwi', '2102766106215063', '1809291906107009', 'Perempuan', 'Batam', '2009-02-07', 'S-2', 'Fa Gunarto Yolanda Tbk', 'Fisika', '0460 5302 354', 'pia.hutasoit@gmail.com', 'Bekerja', 0, NULL, '2024-07-21 23:01:40', '2024-07-21 23:01:40'),
(19, 2, 1, 'Lili Laila Nurdiyanti', '3574636403189192', '1373312409003751', 'Laki - Laki', 'Pangkal Pinang', '2014-12-24', 'S-2', 'PT Nasyidah Tbk', 'Komputer', '0840 352 769', 'ajiman.nababan@rahimah.asia', 'Sekolah', 2, NULL, '2024-07-21 23:01:40', '2024-07-21 23:01:40'),
(20, 2, 3, 'Hartana Zulkarnain', '5301656811004416', '1906510311123362', 'Laki - Laki', 'Pangkal Pinang', '1983-04-27', 'S-2', 'Perum Nasyidah Hariyah Tbk', 'Fisika', '0649 2630 5775', 'yolanda.wasis@gmail.co.id', 'Sekolah', 0, NULL, '2024-07-21 23:01:40', '2024-07-21 23:01:40'),
(21, 1, 1, 'Nugraha Tamba', '7503141809116364', '9104866605961182', 'Perempuan', 'Yogyakarta', '2005-04-18', 'S-1', 'PJ Haryanti', 'Komputer', '0684 5443 377', 'maria.rahayu@gmail.co.id', 'Sekolah', 0, NULL, '2024-07-21 23:01:40', '2024-07-21 23:01:40'),
(22, 1, 4, 'Kamaria Pratiwi', '5311085602057545', '2105313012034283', 'Laki - Laki', 'Palembang', '1971-04-11', 'S-1', 'PD Gunawan', 'Komputer', '0765 7205 159', 'saptono.luluh@sitompul.sch.id', 'Bekerja', 1, NULL, '2024-07-21 23:01:40', '2024-07-21 23:01:40'),
(23, 2, 2, 'Hesti Andriani M.Pd', '6571901304217796', '7371282502191312', 'Laki - Laki', 'Pasuruan', '2002-04-26', 'S-2', 'Yayasan Wibisono Iswahyudi', 'Fisika', '0256 3681 889', 'wulan.palastri@gunarto.name', 'Sekolah', 2, NULL, '2024-07-21 23:01:40', '2024-07-21 23:01:40'),
(24, 1, 4, 'Ikin Suryono', '1808455005068641', '3502782903092797', 'Laki - Laki', 'Malang', '2014-07-23', 'S-2', 'UD Purwanti', 'Bahasa Inggris', '(+62) 24 8127 9030', 'msantoso@gmail.com', 'Sekolah', 0, NULL, '2024-07-21 23:01:40', '2024-07-21 23:01:40'),
(25, 1, 2, 'Nadia Padmasari', '9210656604195644', '9171376104031639', 'Laki - Laki', 'Magelang', '2004-03-21', 'S-2', 'PD Pratiwi (Persero) Tbk', 'Komputer', '(+62) 444 0860 2299', 'vivi29@yahoo.co.id', 'Bekerja', 0, NULL, '2024-07-21 23:01:40', '2024-07-21 23:01:40'),
(26, 2, 3, 'Maria Hastuti S.Farm', '3508435312960256', '3209722401222488', 'Perempuan', 'Banjarmasin', '1973-12-02', 'S-2', 'Perum Wijayanti Palastri Tbk', 'Fisika', '(+62) 476 2033 9418', 'gnurdiyanti@gmail.com', 'Mencari Kerja', 2, NULL, '2024-07-21 23:01:40', '2024-07-21 23:01:40'),
(27, 2, 3, 'Tari Yuniar', '3217861309125946', '9128401003156300', 'Perempuan', 'Padangpanjang', '1987-07-19', 'S-1', 'Yayasan Suryono Rajata Tbk', 'Fisika', '0429 7800 7593', 'pramadan@gmail.co.id', 'Bekerja', 1, NULL, '2024-07-21 23:01:40', '2024-07-21 23:01:40'),
(28, 1, 4, 'Saiful Kajen Kusumo', '3309075504974817', '1303005212165986', 'Laki - Laki', 'Dumai', '2002-12-12', 'S-1', 'PD Rahmawati (Persero) Tbk', 'Bahasa Inggris', '(+62) 515 3865 981', 'zulaikha34@handayani.my.id', 'Sekolah', 1, NULL, '2024-07-21 23:01:40', '2024-07-21 23:01:40'),
(29, 1, 1, 'Maryanto Napitupulu M.Kom.', '9271335709212704', '6271311503963365', 'Laki - Laki', 'Madiun', '2018-05-01', 'S-1', 'CV Dongoran Tbk', 'Bahasa Inggris', '(+62) 530 8312 409', 'lili.narpati@gmail.com', 'Bekerja', 1, NULL, '2024-07-21 23:01:40', '2024-07-21 23:01:40'),
(30, 1, 4, 'Agnes Eva Kusmawati S.Sos', '1217825110947928', '6401006209166916', 'Laki - Laki', 'Serang', '2000-03-16', 'S-1', 'PD Kuswandari', 'Fisika', '(+62) 952 2473 0157', 'anastasia.pranowo@astuti.info', 'Mencari Kerja', 0, NULL, '2024-07-21 23:01:40', '2024-07-21 23:01:40'),
(31, 2, 1, 'Cawisono Jinawi Napitupulu S.Kom', '7415605906103089', '1572041512996208', 'Perempuan', 'Mataram', '2024-01-12', 'S-2', 'UD Kuswoyo (Persero) Tbk', 'Komputer', '(+62) 833 002 157', 'vpermata@halimah.com', 'Mencari Kerja', 2, NULL, '2024-07-21 23:01:51', '2024-07-21 23:01:51'),
(32, 1, 1, 'Lala Yuliarti S.I.Kom', '3315091212030276', '1708303107213599', 'Perempuan', 'Surabaya', '1990-08-23', 'S-1', 'PJ Habibi Novitasari', 'Bahasa Inggris', '(+62) 341 4943 2979', 'suwarno.gangsa@yahoo.co.id', 'Bekerja', 0, NULL, '2024-07-21 23:01:51', '2024-07-21 23:01:51'),
(33, 1, 3, 'Hilda Susanti M.TI.', '7605986806003795', '7402494204123217', 'Laki - Laki', 'Tarakan', '1982-01-08', 'S-1', 'Fa Pudjiastuti Yolanda Tbk', 'Bahasa Inggris', '0570 2236 4574', 'galih37@novitasari.mil.id', 'Bekerja', 0, NULL, '2024-07-21 23:01:51', '2024-07-21 23:01:51'),
(34, 2, 1, 'Danuja Siregar', '1374502110227005', '3324550604019056', 'Laki - Laki', 'Pangkal Pinang', '1972-05-01', 'S-1', 'Perum Sihotang Natsir (Persero) Tbk', 'Bahasa Inggris', '0262 5120 3796', 'halimah.icha@latupono.go.id', 'Bekerja', 2, NULL, '2024-07-21 23:01:51', '2024-07-21 23:01:51'),
(35, 1, 3, 'Gasti Lidya Winarsih', '6472480411162814', '1302826405039312', 'Laki - Laki', 'Sabang', '2014-05-12', 'S-1', 'CV Simanjuntak Tbk', 'Fisika', '(+62) 718 3818 9518', 'yolanda.maras@situmorang.go.id', 'Bekerja', 1, NULL, '2024-07-21 23:01:51', '2024-07-21 23:01:51'),
(36, 1, 1, 'Ian Habibi S.Sos', '7311824807134707', '5313220112218639', 'Laki - Laki', 'Gunungsitoli', '2009-02-10', 'S-2', 'PD Wibowo (Persero) Tbk', 'Bahasa Inggris', '0800 9887 4774', 'queen69@yuliarti.go.id', 'Sekolah', 0, NULL, '2024-07-21 23:01:51', '2024-07-21 23:01:51'),
(37, 2, 1, 'Calista Yuliarti', '7402035210956184', '7415805708152880', 'Laki - Laki', 'Manado', '1993-10-29', 'SMA', 'PD Utama', 'Komputer', '0359 4604 2744', 'halimah.kenes@yahoo.com', 'Mencari Kerja', 2, NULL, '2024-07-21 23:01:51', '2024-07-21 23:01:51'),
(38, 1, 1, 'Faizah Riyanti M.Pd', '1377577012130937', '9208337110000841', 'Perempuan', 'Malang', '1975-02-02', 'SMA', 'UD Wasita (Persero) Tbk', 'Komputer', '0991 3899 108', 'qhakim@rahmawati.info', 'Mencari Kerja', 1, NULL, '2024-07-21 23:01:51', '2024-07-21 23:01:51'),
(39, 1, 3, 'Karman Reksa Wibowo', '1813300903005619', '6104052404973967', 'Perempuan', 'Blitar', '1995-06-04', 'S-1', 'PT Sihombing Rajasa Tbk', 'Komputer', '0499 6620 441', 'silvia41@yahoo.com', 'Bekerja', 0, NULL, '2024-07-21 23:01:51', '2024-07-21 23:01:51'),
(40, 1, 4, 'Genta Yance Aryani S.Farm', '6213625209013384', '6111611510103308', 'Laki - Laki', 'Bontang', '1979-06-02', 'S-1', 'PT Rahmawati Tbk', 'Bahasa Inggris', '(+62) 811 5123 048', 'ivan18@yahoo.com', 'Sekolah', 1, NULL, '2024-07-21 23:01:51', '2024-07-21 23:01:51'),
(41, 1, 1, 'Nadine Lestari S.Pt', '7318866912014036', '7406880106119509', 'Laki - Laki', 'Cilegon', '1982-05-04', 'S-2', 'PJ Samosir Salahudin Tbk', 'Bahasa Inggris', '0852 2839 4976', 'alika.susanti@gmail.co.id', 'Sekolah', 1, NULL, '2024-07-21 23:01:51', '2024-07-21 23:01:51'),
(42, 1, 4, 'Kadir Rajasa', '3212226807033623', '6205831803037818', 'Perempuan', 'Banjarbaru', '2014-10-07', 'SMA', 'PT Winarno Jailani', 'Bahasa Inggris', '(+62) 484 4456 355', 'napitupulu.ami@gmail.co.id', 'Sekolah', 1, NULL, '2024-07-21 23:01:51', '2024-07-21 23:01:51'),
(43, 2, 3, 'Uchita Septi Hariyah S.Sos', '6211356106015263', '3275891610947135', 'Perempuan', 'Mojokerto', '2018-09-06', 'S-1', 'Perum Latupono Tbk', 'Bahasa Inggris', '0870 0008 9896', 'jamil00@gmail.co.id', 'Sekolah', 1, NULL, '2024-07-21 23:01:51', '2024-07-21 23:01:51'),
(44, 2, 1, 'Ayu Melani M.M.', '3328046502002990', '3215765705014060', 'Perempuan', 'Langsa', '2024-04-19', 'S-1', 'CV Prasetyo (Persero) Tbk', 'Komputer', '(+62) 622 2093 8932', 'hprakasa@yahoo.com', 'Sekolah', 1, NULL, '2024-07-21 23:01:51', '2024-07-21 23:01:51'),
(45, 2, 4, 'Alambana Wibowo', '3278852506011033', '6472515404141762', 'Laki - Laki', 'Administrasi Jakarta Pusat', '1987-08-17', 'SMA', 'Yayasan Laksita Tbk', 'Fisika', '(+62) 417 8034 763', 'uchita12@gmail.com', 'Bekerja', 2, NULL, '2024-07-21 23:01:51', '2024-07-21 23:01:51'),
(46, 1, 1, 'Aisyah Nurdiyanti S.Pt', '1202110603094422', '8205082008155511', 'Laki - Laki', 'Banda Aceh', '1979-02-28', 'S-2', 'Perum Habibi Usamah', 'Komputer', '(+62) 25 8319 025', 'gmaryadi@wahyudin.or.id', 'Bekerja', 2, NULL, '2024-07-21 23:01:51', '2024-07-21 23:01:51'),
(47, 1, 1, 'Adiarja Firmansyah', '1811402701119956', '1405111312093048', 'Perempuan', 'Palu', '2010-02-16', 'S-2', 'Fa Aryani (Persero) Tbk', 'Fisika', '(+62) 26 9962 315', 'gawati43@sitorus.mil.id', 'Sekolah', 0, NULL, '2024-07-21 23:01:51', '2024-07-21 23:01:51'),
(48, 1, 4, 'Gandi Maryadi S.E.', '3502316805998503', '3313953012190556', 'Laki - Laki', 'Serang', '1977-11-16', 'S-1', 'PJ Wastuti', 'Fisika', '(+62) 861 718 620', 'dalima49@laksita.tv', 'Sekolah', 2, NULL, '2024-07-21 23:01:51', '2024-07-21 23:01:51'),
(49, 2, 1, 'Ibun Nainggolan', '1502405611129592', '8271950111956505', 'Laki - Laki', 'Ternate', '1977-10-03', 'S-2', 'Fa Siregar Thamrin', 'Komputer', '0825 4254 974', 'dono75@nasyidah.biz.id', 'Sekolah', 0, NULL, '2024-07-21 23:01:51', '2024-07-21 23:01:51'),
(50, 2, 3, 'Karsa Dabukke', '7316500102241068', '9101336410178833', 'Perempuan', 'Sibolga', '2021-08-10', 'SMA', 'UD Uyainah Permadi (Persero) Tbk', 'Komputer', '(+62) 323 0126 636', 'rfirmansyah@gmail.com', 'Bekerja', 2, NULL, '2024-07-21 23:01:51', '2024-07-21 23:01:51'),
(51, 2, 3, 'Puput Mayasari', '3318574408026071', '5102436207969239', 'Perempuan', 'Banda Aceh', '2017-12-29', 'S-2', 'Fa Mandasari (Persero) Tbk', 'Bahasa Inggris', '(+62) 228 6239 471', 'yuni05@yahoo.com', 'Sekolah', 0, NULL, '2024-07-21 23:03:11', '2024-07-21 23:03:11'),
(52, 1, 4, 'Manah Wibisono M.Farm', '5204276704049286', '1308275609960976', 'Laki - Laki', 'Probolinggo', '2006-11-26', 'S-1', 'PD Marbun Nababan Tbk', 'Komputer', '(+62) 359 4129 9914', 'tsirait@yahoo.co.id', 'Sekolah', 0, NULL, '2024-07-21 23:03:11', '2024-07-21 23:03:11'),
(53, 1, 3, 'Cayadi Budiyanto S.I.Kom', '6206786407007626', '3516044102158494', 'Laki - Laki', 'Palu', '2005-11-04', 'SMA', 'PT Purnawati Januar', 'Komputer', '0269 0873 845', 'farida.wulan@narpati.id', 'Sekolah', 1, NULL, '2024-07-21 23:03:11', '2024-07-21 23:03:11'),
(54, 1, 2, 'Ophelia Hastuti M.TI.', '9201594508028703', '3312063012210738', 'Perempuan', 'Salatiga', '2020-09-08', 'SMA', 'Yayasan Manullang', 'Fisika', '(+62) 352 1293 1103', 'uyainah.kunthara@kuswandari.asia', 'Mencari Kerja', 1, NULL, '2024-07-21 23:03:11', '2024-07-21 23:03:11'),
(55, 1, 1, 'Daruna Ardianto S.Farm', '7104441205225915', '3271925706052939', 'Laki - Laki', 'Lubuklinggau', '1973-02-24', 'S-1', 'CV Laksmiwati Lazuardi Tbk', 'Komputer', '(+62) 803 048 697', 'ganep.pertiwi@gmail.co.id', 'Sekolah', 1, NULL, '2024-07-21 23:03:11', '2024-07-21 23:03:11'),
(56, 1, 1, 'Prayoga Viman Santoso S.Kom', '1808476710055680', '3213924909165477', 'Laki - Laki', 'Surakarta', '2022-02-02', 'S-2', 'UD Lailasari Lestari Tbk', 'Bahasa Inggris', '(+62) 252 6094 3616', 'agnes.pratiwi@rahimah.desa.id', 'Sekolah', 2, NULL, '2024-07-21 23:03:11', '2024-07-21 23:03:11'),
(57, 2, 1, 'Ajeng Diana Nuraini', '7472601211057382', '5301215111969945', 'Perempuan', 'Palembang', '1985-03-28', 'SMA', 'Perum Yulianti Tbk', 'Komputer', '029 6248 737', 'jumadi87@yahoo.com', 'Mencari Kerja', 2, NULL, '2024-07-21 23:03:11', '2024-07-21 23:03:11'),
(58, 2, 4, 'Darmaji Waluyo S.Kom', '5313955004986127', '3505100802955346', 'Perempuan', 'Cilegon', '2008-01-17', 'S-1', 'PJ Najmudin', 'Fisika', '(+62) 729 6341 6650', 'hkuswandari@yahoo.co.id', 'Sekolah', 0, NULL, '2024-07-21 23:03:11', '2024-07-21 23:03:11'),
(59, 2, 1, 'Darsirah Winarno', '5201861803103004', '1111262405239839', 'Perempuan', 'Sorong', '2003-07-11', 'S-1', 'PJ Novitasari Novitasari (Persero) Tbk', 'Bahasa Inggris', '(+62) 923 8472 0828', 'halim.bagas@gmail.com', 'Mencari Kerja', 0, NULL, '2024-07-21 23:03:11', '2024-07-21 23:03:11'),
(60, 1, 3, 'Iriana Janet Usamah S.E.I', '6411095010204668', '7603390610236431', 'Laki - Laki', 'Palopo', '2005-09-28', 'SMA', 'Perum Kusmawati', 'Komputer', '0872 418 567', 'halimah.catur@yahoo.com', 'Mencari Kerja', 0, NULL, '2024-07-21 23:03:11', '2024-07-21 23:03:11'),
(61, 1, 4, 'Carla Rahayu', '7412365008034481', '6402485002240692', 'Laki - Laki', 'Manado', '2013-05-21', 'S-1', 'PJ Pranowo (Persero) Tbk', 'Bahasa Inggris', '0445 0819 4724', 'fitriani76@mustofa.com', 'Mencari Kerja', 1, NULL, '2024-07-21 23:03:11', '2024-07-21 23:03:11'),
(62, 2, 4, 'Mahdi Rusman Rajasa S.Gz', '3471255411966414', '9212210110182172', 'Laki - Laki', 'Bekasi', '1997-08-31', 'S-2', 'CV Mayasari (Persero) Tbk', 'Fisika', '0568 8314 861', 'clestari@puspasari.tv', 'Mencari Kerja', 0, NULL, '2024-07-21 23:03:11', '2024-07-21 23:03:11'),
(63, 2, 1, 'Malika Aryani', '5171954705191992', '3273265303175903', 'Laki - Laki', 'Lubuklinggau', '1976-12-02', 'SMA', 'PD Sihombing', 'Fisika', '022 8511 3200', 'xriyanti@gunawan.my.id', 'Mencari Kerja', 2, NULL, '2024-07-21 23:03:11', '2024-07-21 23:03:11'),
(64, 1, 1, 'Hasna Riyanti M.Kom.', '1805616507942845', '3329432204162149', 'Laki - Laki', 'Denpasar', '1996-12-26', 'SMA', 'Yayasan Hardiansyah Rahmawati', 'Fisika', '028 0090 985', 'kanggriawan@jailani.ac.id', 'Bekerja', 1, NULL, '2024-07-21 23:03:11', '2024-07-21 23:03:11'),
(65, 1, 4, 'Paris Fujiati', '1704085003057013', '3212756911232924', 'Laki - Laki', 'Surakarta', '1999-06-20', 'SMA', 'Perum Wahyuni Tbk', 'Bahasa Inggris', '(+62) 491 0948 285', 'zelda94@yahoo.co.id', 'Bekerja', 0, NULL, '2024-07-21 23:03:11', '2024-07-21 23:03:11'),
(66, 1, 3, 'Zahra Mulyani S.E.', '1224170801969301', '1312875911145998', 'Laki - Laki', 'Pontianak', '2012-05-19', 'S-1', 'PT Suwarno', 'Bahasa Inggris', '0353 3841 7900', 'lailasari.safina@samosir.biz', 'Sekolah', 1, NULL, '2024-07-21 23:03:11', '2024-07-21 23:03:11'),
(67, 2, 4, 'Almira Hana Puspasari M.Kom.', '1224266109105079', '7304365003088940', 'Laki - Laki', 'Metro', '1981-07-14', 'SMA', 'UD Irawan (Persero) Tbk', 'Komputer', '(+62) 969 0111 4242', 'yessi.permadi@gmail.co.id', 'Bekerja', 0, NULL, '2024-07-21 23:03:11', '2024-07-21 23:03:11'),
(68, 2, 3, 'Asmuni Erik Putra S.Farm', '3401766202000164', '3519440602040889', 'Perempuan', 'Salatiga', '1978-10-23', 'S-2', 'PT Puspita (Persero) Tbk', 'Bahasa Inggris', '(+62) 689 2335 219', 'ywacana@gmail.co.id', 'Mencari Kerja', 2, NULL, '2024-07-21 23:03:11', '2024-07-21 23:03:11'),
(69, 1, 3, 'Diah Ciaobella Hariyah', '3101071402055203', '3303400111106004', 'Laki - Laki', 'Lhokseumawe', '1977-05-02', 'S-1', 'CV Irawan (Persero) Tbk', 'Komputer', '(+62) 414 0137 119', 'ibrani.farida@handayani.sch.id', 'Bekerja', 0, NULL, '2024-07-21 23:03:11', '2024-07-21 23:03:11'),
(70, 2, 4, 'Putri Usada', '1218436503137236', '5317371412218286', 'Perempuan', 'Tebing Tinggi', '1978-07-08', 'SMA', 'PJ Handayani', 'Komputer', '026 3282 089', 'garan.adriansyah@firgantoro.com', 'Sekolah', 1, NULL, '2024-07-21 23:03:11', '2024-07-21 23:03:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2024-06-19 20:44:25', '2024-06-19 20:44:25'),
(2, 'Instruktur Pelatihan', 'web', '2024-06-19 21:55:32', '2024-06-19 21:55:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('EZreSM19iJYu705gzhkVEvKrBxsyf6Is4AWeTT8X', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiTlJpbFVLb1Rsb3VldlpHeFozOUV1TzA3bzZqVlo0c2d3Z3RVSHVjTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHA6Ly9wZXJzaWFwYW5fdWppa29tLnRlc3QvYWRtaW4vcGVzZXJ0YV9wZWxhdGloYW4vY3JlYXRlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJGFJZkxNQWdUcE55aWhHellPUFMzS2VORDJxdTE0eDhUaWFHR1FQT1FEL0JPNE1pVVkzdGhLIjtzOjg6ImZpbGFtZW50IjthOjA6e319', 1721554313),
('gAbsNvbAqF52nynbAW4faiWPUP8CZJy2NjOk79Qw', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiRWJHMW5nb01JQjg4U1B3VkdMV3RodXgwZDJWZ1VxZkxqOEhDQ21WdiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHA6Ly9wZXJzaWFwYW5fdWppa29tLnRlc3QvYWRtaW4vcGVzZXJ0YV9wZWxhdGloYW4iO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkRU16WFpuTWNqTHlVRllMN3l0TzEwT3JNMDNXRzNuaFo5UFV2V1owQ1BEREdnemFlTXFGWXUiO30=', 1721632466);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$12$aIfLMAgTpNyihGzYOPS3KeND2qu14x8TiaGGQPOQD/BO4MiUY3thK', NULL, '2024-06-19 20:04:51', '2024-06-20 21:16:37'),
(2, 'Instruktur', 'instruktur@gmail.com', NULL, '$2y$12$EMzXZnMcjLyUFYL7ytO10OrM03WG3nhZ9PUvWZ0CPDDGgzaeMqFYu', NULL, '2024-06-20 20:41:14', '2024-06-20 21:17:22');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `gelombangs`
--
ALTER TABLE `gelombangs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jurusans`
--
ALTER TABLE `jurusans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `pesertapelatihans`
--
ALTER TABLE `pesertapelatihans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pesertapelatihans_id_jurusan_foreign` (`id_jurusan`),
  ADD KEY `pesertapelatihans_id_gelombang_foreign` (`id_gelombang`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gelombangs`
--
ALTER TABLE `gelombangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jurusans`
--
ALTER TABLE `jurusans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `levels`
--
ALTER TABLE `levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pesertapelatihans`
--
ALTER TABLE `pesertapelatihans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pesertapelatihans`
--
ALTER TABLE `pesertapelatihans`
  ADD CONSTRAINT `pesertapelatihans_id_gelombang_foreign` FOREIGN KEY (`id_gelombang`) REFERENCES `gelombangs` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `pesertapelatihans_id_jurusan_foreign` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusans` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
