-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Des 2021 pada 06.19
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ftimail`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_activation_attempts`
--

INSERT INTO `auth_activation_attempts` (`id`, `ip_address`, `user_agent`, `token`, `created_at`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'adc7c386e0d7b01513a30ac4d0b73788', '2021-11-04 18:23:53'),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '4031d43ac9364fa0b91e0248ac12a5db', '2021-11-04 18:28:16'),
(3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', '222beaeb50963a4fad51220266e88eae', '2021-11-04 18:36:13'),
(4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'adc7c386e0d7b01513a30ac4d0b73788', '2021-11-04 23:48:18'),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.69 Safari/537.36', 'e20c7058152580859a3003696bca7d72', '2021-11-04 23:48:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'PPA', 'administrator'),
(2, 'Dosen', 'Dosen'),
(3, 'Mahasiswa', 'Mahasiswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 8),
(2, 9),
(3, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-04 16:34:19', 0),
(2, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-04 16:43:58', 0),
(3, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-04 16:45:29', 0),
(4, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-04 17:30:41', 1),
(5, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-04 17:40:38', 1),
(6, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-04 17:40:52', 1),
(7, '::1', 'hasiholanhutasoit14@gmail.com', 6, '2021-11-04 18:24:02', 1),
(8, '::1', 'hasiholanhutasoit14@gmail.com', 6, '2021-11-04 18:26:15', 1),
(9, '::1', 'hasiholanhutasoit14@gmail.com', 7, '2021-11-04 18:28:26', 1),
(10, '::1', 'hasiholanhutasoit18@gmail.com', 8, '2021-11-04 18:36:29', 1),
(11, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-04 19:00:46', 1),
(12, '::1', 'hasiholanhutasoit18@gmail.com', 8, '2021-11-04 19:03:06', 1),
(13, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-04 19:26:55', 1),
(14, '::1', 'hasiholanhutasoit14@gmail.com', 7, '2021-11-04 19:27:14', 1),
(15, '::1', 'hasiholanhutasoit18@gmail.com', 8, '2021-11-04 19:27:35', 1),
(16, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-04 23:03:09', 1),
(17, '::1', 'hasiholanhutasoit18@gmail.com', 8, '2021-11-04 23:22:06', 1),
(18, '::1', 'hasiholanhutasoit14@gmail.com', 7, '2021-11-04 23:23:06', 1),
(19, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-04 23:43:57', 1),
(20, '::1', 'hasiholanhutasoit14@gmail.com', NULL, '2021-11-04 23:44:41', 0),
(21, '::1', 'hasiholanhutasoit18@gmail.com', 8, '2021-11-04 23:44:48', 1),
(22, '::1', 'hasiholanhutasoit14@gmail.com', NULL, '2021-11-04 23:47:53', 0),
(23, '::1', 'hasiholanhutasoit14@gmail.com', 9, '2021-11-04 23:48:04', 0),
(24, '::1', 'hasiholanhutasoit14@gmail.com', 9, '2021-11-04 23:48:38', 1),
(25, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-04 23:51:59', 1),
(26, '::1', 'hasiholanhutasoit18@gmail.com', 8, '2021-11-05 00:33:02', 1),
(27, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-05 02:02:40', 1),
(28, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-05 02:05:33', 1),
(29, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-05 08:54:22', 1),
(30, '::1', 'hasiholanhutasoit18@gmail.com', 8, '2021-11-05 08:56:55', 1),
(31, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-06 09:31:29', 1),
(32, '::1', 'hasiholanhutasoit14@gmail.com', 9, '2021-11-06 10:54:27', 1),
(33, '::1', 'hasiholanhutasoit14@gmail.com', 9, '2021-11-06 22:41:42', 1),
(34, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-06 22:42:43', 1),
(35, '::1', 'hasiholanhutasoit14@gmail.com', 9, '2021-11-06 22:48:16', 1),
(36, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-20 07:54:22', 1),
(37, '::1', 'hasiholanhutasoit14@gmail.com', 9, '2021-11-20 08:52:35', 1),
(38, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-20 10:00:07', 1),
(39, '::1', 'hasiholanhutasoit14@gmail.com', 9, '2021-11-20 10:31:12', 1),
(40, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-20 10:34:02', 1),
(41, '::1', 'hasiholanhutasoit14@gmail.com', 9, '2021-11-20 10:38:06', 1),
(42, '::1', 'hasiholanhutasoit18@gmail.com', 8, '2021-11-20 10:40:13', 1),
(43, '::1', 'hasiholanhutasoit18@gmail.com', 8, '2021-11-20 23:57:12', 1),
(44, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-21 00:23:06', 1),
(45, '::1', 'hasiholanhutasoit18@gmail.com', 8, '2021-11-21 01:11:01', 1),
(46, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-21 03:56:51', 1),
(47, '::1', 'hasiholanhutasoit18@gmail.com', 8, '2021-11-21 03:57:31', 1),
(48, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-21 03:57:58', 1),
(49, '::1', 'hasiholanhutasoit18@gmail.com', 8, '2021-11-21 04:03:07', 1),
(50, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-21 04:10:00', 1),
(51, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-21 07:11:29', 1),
(52, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-21 07:11:59', 1),
(53, '::1', 'hasiholanhutasoit18@gmail.com', 8, '2021-11-21 07:15:07', 1),
(54, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-21 07:19:44', 1),
(55, '::1', 'hasiholanhutasoit18@gmail.com', 8, '2021-11-21 07:29:23', 1),
(56, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-21 07:30:16', 1),
(57, '::1', 'hasiholanhutasoit18@gmail.com', 8, '2021-11-21 07:35:33', 1),
(58, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-21 07:41:05', 1),
(59, '::1', 'hasiholanhutasoit13@gmail.com', NULL, '2021-11-22 08:56:05', 0),
(60, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-22 08:56:16', 1),
(61, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-23 05:06:39', 1),
(62, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-26 10:04:28', 1),
(63, '::1', 'hasiholanhutasoit18@gmail.com', 8, '2021-11-26 10:08:06', 1),
(64, '::1', 'hasiholanhutasoit14@gmail.com', 9, '2021-11-27 12:49:04', 1),
(65, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-27 12:59:22', 1),
(66, '::1', 'hasiholanhutasoit14@gmail.com', 9, '2021-11-27 13:00:40', 1),
(67, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-27 13:24:49', 1),
(68, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-27 15:30:06', 1),
(69, '::1', 'hasiholanhutasoit14@gmail.com', 9, '2021-11-28 08:01:52', 1),
(70, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-28 08:03:10', 1),
(71, '::1', 'hasiholanhutasoit14@gmail.com', 9, '2021-11-28 08:03:29', 1),
(72, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-28 08:03:49', 1),
(73, '::1', 'hasiholanhutasoit18@gmail.com', 8, '2021-11-28 08:16:46', 1),
(74, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-28 08:23:44', 1),
(75, '::1', 'hasiholanhutasoit14@gmail.com', 9, '2021-11-28 08:25:29', 1),
(76, '::1', 'hasiholanhutasoit18@gmail.com', 8, '2021-11-28 08:28:04', 1),
(77, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-28 08:48:01', 1),
(78, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-28 09:02:32', 1),
(79, '::1', 'hasiholanhutasoit18@gmail.com', 8, '2021-11-28 09:11:50', 1),
(80, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-29 06:53:07', 1),
(81, '::1', 'hasiholanhutasoit18@gmail.com', 8, '2021-11-29 06:53:52', 1),
(82, '::1', 'hasiholanhutasoit18@gmail.com', 8, '2021-11-29 07:40:39', 1),
(83, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-11-29 08:02:03', 1),
(84, '::1', 'hasiholanhutasoit18@gmail.com', 8, '2021-11-29 08:03:00', 1),
(85, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-12-04 04:08:58', 1),
(86, '::1', 'hasiholanhutasoit18@gmail.com', 8, '2021-12-04 05:30:40', 1),
(87, '::1', 'hasiholanhutasoit14@gmail.com', 9, '2021-12-04 05:32:06', 1),
(88, '::1', 'hasiholanhutasoit18@gmail.com', 8, '2021-12-05 07:40:57', 1),
(89, '::1', 'hasiholanhutasoit18@gmail.com', 8, '2021-12-05 21:55:57', 1),
(90, '::1', 'hasiholanhutasoit13@gmail.com', 1, '2021-12-05 23:04:54', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1636048851, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_berita_acara`
--

CREATE TABLE `surat_berita_acara` (
  `id` int(255) NOT NULL,
  `id_user` varchar(30) NOT NULL,
  `judul_acara` varchar(255) NOT NULL,
  `tema_acara` varchar(255) NOT NULL,
  `tanggal_acara` date NOT NULL,
  `lokasi_acara` varchar(255) NOT NULL,
  `tujuan_surat` int(255) NOT NULL,
  `penerima_surat` int(255) NOT NULL,
  `keterangan` int(255) NOT NULL,
  `tanda_tangan` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'valid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_kegiatan_mahasiswa`
--

CREATE TABLE `surat_kegiatan_mahasiswa` (
  `id` int(255) NOT NULL,
  `no_surat` varchar(255) NOT NULL,
  `id_user` varchar(30) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `tujuan_surat` varchar(255) NOT NULL,
  `nama_mitra` varchar(255) NOT NULL,
  `alamat_mitra` varchar(255) NOT NULL,
  `dituju_kepada` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `tanda_tangan` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'proccess'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_personalia_sk_dosen`
--

CREATE TABLE `surat_personalia_sk_dosen` (
  `id` int(255) NOT NULL,
  `id_user` varchar(30) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `no_surat` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `tujuan_surat` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `tanda_tangan` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_tugas_dosen`
--

CREATE TABLE `surat_tugas_dosen` (
  `id` int(255) NOT NULL,
  `id_user` varchar(30) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `no_surat` varchar(255) NOT NULL,
  `tujuan_surat` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `nama_mitra` varchar(255) NOT NULL,
  `alamat_mitra` varchar(255) NOT NULL,
  `dituju_kepada` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `tanda_tangan` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'process'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_tugas_mahasiswa`
--

CREATE TABLE `surat_tugas_mahasiswa` (
  `id` int(255) NOT NULL,
  `id_user` varchar(30) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `no_surat` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `tujuan_surat` varchar(255) NOT NULL,
  `nama_mitra` varchar(255) NOT NULL,
  `alamat_mitra` varchar(255) NOT NULL,
  `dituju_kepada` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `tanda_tangan` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'process'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `surat_tugas_mahasiswa`
--

INSERT INTO `surat_tugas_mahasiswa` (`id`, `id_user`, `nama_user`, `no_surat`, `tanggal`, `tujuan_surat`, `nama_mitra`, `alamat_mitra`, `dituju_kepada`, `keterangan`, `tanda_tangan`, `status`) VALUES
(3, '170709258', 'joelapoi', '3/D/FTI/2021', '2021-11-18', 'asdfdsa', 'asd', 'adsafds', 'adfasdfasdf', '', '', 'valid'),
(4, '170709258', 'joelapoi', '4/D/FTI/2021', '2021-11-24', 'Main Main', 'UKDW', 'Yogyakarta', 'Bapak Dekan', 'Main main aja', '', 'valid'),
(6, '170709258', 'joelapoi', '6/D/FTI/2021', '2021-11-17', 'Main Main', 'adss', 'adsafds', 'Bapak Joel', 'sdfadsfasd', '', 'valid'),
(7, '170709258', 'joelapoi', '7/D/FTI/2021', '2021-11-25', 'asd', 'asd', 'adsafds', 'dasfadsfas', 'dfsgfgd', 'document.pdf', 'valid'),
(8, '170709258', 'joelapoi', '8/D/FTI/2021', '2021-11-09', 'asdfdsa', 'adss', 'adsafds', '', 'adsfasfd', '', 'invalid'),
(9, '170709258', 'Mahasiswa', '', '2021-11-16', 'Main Main', 'asd', 'adsafds', '', '', '', 'process');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_undangan`
--

CREATE TABLE `surat_undangan` (
  `id` int(255) NOT NULL,
  `id_user` varchar(255) NOT NULL,
  `tanggal_pelaksanaan` date NOT NULL,
  `waktu_pelaksanaan` time NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `tujuan_acara` varchar(255) NOT NULL,
  `penerima_surat` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `tanda_tangan` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'valid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `id_user` varchar(30) NOT NULL,
  `no_hp` varchar(30) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `id_user`, `no_hp`, `username`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'hasiholanhutasoit13@gmail.com', '170709258', '08535982414', 'Mahasiswa', '$2y$10$xOoFTxIvuS.HOJAN5M4ihO8kNVhdeN.gsQzdC2xgeTNJ0/HnEWTE6', NULL, NULL, NULL, '483b083660eff791235a9643e78e1488', NULL, NULL, 1, 0, '2021-11-04 17:25:35', '2021-11-04 17:25:35', NULL),
(8, 'hasiholanhutasoit18@gmail.com', '170709255', '085359804144', 'Admin', '$2y$10$Pbs7lR2cm6bHVOzj.OF4SuzSj6cFw7AuW9bM7HuCnqn1/X6mwUHCO', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-11-04 18:35:53', '2021-11-04 18:36:13', NULL),
(9, 'hasiholanhutasoit14@gmail.com', '170709226', '085359804046', 'Dosen', '$2y$10$AzIoDBgSD.ZwlIKXXd6AiujOLqWRnLxXJ/xuG79.hGQ.x.vuPFxA6', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-11-04 23:46:33', '2021-11-04 23:48:27', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indeks untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indeks untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indeks untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `surat_berita_acara`
--
ALTER TABLE `surat_berita_acara`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `surat_kegiatan_mahasiswa`
--
ALTER TABLE `surat_kegiatan_mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `surat_personalia_sk_dosen`
--
ALTER TABLE `surat_personalia_sk_dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `surat_tugas_dosen`
--
ALTER TABLE `surat_tugas_dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `surat_tugas_mahasiswa`
--
ALTER TABLE `surat_tugas_mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `surat_undangan`
--
ALTER TABLE `surat_undangan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `surat_berita_acara`
--
ALTER TABLE `surat_berita_acara`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `surat_kegiatan_mahasiswa`
--
ALTER TABLE `surat_kegiatan_mahasiswa`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `surat_personalia_sk_dosen`
--
ALTER TABLE `surat_personalia_sk_dosen`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `surat_tugas_dosen`
--
ALTER TABLE `surat_tugas_dosen`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `surat_tugas_mahasiswa`
--
ALTER TABLE `surat_tugas_mahasiswa`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `surat_undangan`
--
ALTER TABLE `surat_undangan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
