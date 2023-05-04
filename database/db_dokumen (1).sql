-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 28 Apr 2023 pada 07.49
-- Versi server: 5.7.33
-- Versi PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_dokumen`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `group` varchar(100) NOT NULL,
  `definition` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_group`
--

INSERT INTO `auth_group` (`id`, `group`, `definition`) VALUES
(1, 'xadmin', 'Admin Master'),
(2, 'spj', 'Pengguna penginputan SPJ'),
(3, 'rba', 'Pengguna penginputan RBA ( Rencana Belanja Anggaran )'),
(4, 'admin', 'admin aplikasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `permission` varchar(100) NOT NULL,
  `definition` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES
(1, 'config_view_default', 'Module config'),
(2, 'config_view_logo', 'Module config'),
(3, 'config_view_sosmed', 'Module config'),
(4, 'config_view_core', 'Module config'),
(5, 'config_update_web_name', 'Module config'),
(6, 'config_update_web_domain', 'Module config'),
(7, 'config_update_web_owner', 'Module config'),
(8, 'config_update_email', 'Module config'),
(9, 'config_update_telepon', 'Module config'),
(10, 'config_update_address', 'Module config'),
(11, 'config_update_logo', 'Module config'),
(12, 'config_update_logo_mini', 'Module config'),
(13, 'config_update_favicon', 'Module config'),
(14, 'config_update_facebook', 'Module config'),
(15, 'config_update_instagram', 'Module config'),
(16, 'config_update_youtube', 'Module config'),
(17, 'config_update_twitter', 'Module config'),
(18, 'config_update_language', 'Module config'),
(19, 'config_update_time_zone', 'Module config'),
(20, 'config_update_max_upload', 'Module config'),
(21, 'config_update_route_admin', 'Module config'),
(22, 'config_update_route_login', 'Module config'),
(23, 'config_update_encryption_key', 'Module config'),
(24, 'config_update_encryption_url', 'Module config'),
(25, 'config_update_url_suffix', 'Module config'),
(26, 'config_update_user_log_status', 'Module config'),
(27, 'config_update_maintenance_status', 'Module config'),
(28, 'menu_list', 'Module menu'),
(29, 'menu_add', 'Module menu'),
(30, 'menu_update', 'Module menu'),
(31, 'menu_delete', 'Module menu'),
(32, 'menu_drag_positions', 'Module menu'),
(33, 'user_list', 'Module user'),
(34, 'user_add', 'Module user'),
(35, 'user_update', 'Module user'),
(36, 'user_detail', 'Module user'),
(37, 'user_delete', 'Module user'),
(38, 'groups_list', 'Module groups'),
(39, 'groups_add', 'Module groups'),
(40, 'groups_access', 'Module groups'),
(41, 'groups_update', 'Module groups'),
(42, 'groups_delete', 'Module groups'),
(43, 'permission_list', 'Module permission'),
(44, 'permission_add', 'Module permission'),
(45, 'permission_update', 'Module permission'),
(46, 'permission_delete', 'Module permission'),
(47, 'dashboard__view_profile_user', 'Module dashboard'),
(48, 'dashboard_view_total_user', 'Module dashboard'),
(49, 'dashboard_view_total_group', 'Module dashboard'),
(50, 'dashboard_view_total_permission', 'Module dashboard'),
(51, 'dashboard_view_total_filemanager', 'Module dashboard'),
(52, 'filemanager_list', 'Module filemanager'),
(53, 'filemanager_add', 'Module filemanager'),
(54, 'filemanager_delete', 'Module filemanager'),
(55, 'sidebar_view_dashboard', 'Module sidebar'),
(56, 'sidebar_view_auth', 'Module sidebar'),
(57, 'sidebar_view_user', 'Module sidebar'),
(58, 'sidebar_view_groups', 'Module sidebar'),
(59, 'sidebar_view_permission', 'Module sidebar'),
(60, 'sidebar_view_config', 'Module sidebar'),
(61, 'sidebar_view_system', 'Module sidebar'),
(62, 'sidebar_view_management_menu', 'Module sidebar'),
(63, 'sidebar_view_file_manager', 'Module sidebar'),
(64, 'sidebar_view_m-crud_generator', 'Module Sidebar'),
(65, 'crud_generator_list', 'Module crud generator'),
(66, 'crud_generator_add', 'Module crud generator'),
(67, 'crud_generator_delete', 'Module crud generator'),
(68, 'sidebar_view_configuration', 'Module sidebar'),
(69, 'sidebar_view_settings', 'Module sidebar'),
(70, 'sidebar_view_surat_masuk', 'Module sidebar'),
(71, 'sidebar_view_surat_keluar', 'Module sidebar'),
(72, 'sidebar_view_spj', 'Module sidebar'),
(73, 'sidebar_view_rba', 'Module sidebar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permission_to_group`
--

CREATE TABLE `auth_permission_to_group` (
  `permission_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_permission_to_group`
--

INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES
(28, 4),
(29, 4),
(30, 4),
(31, 4),
(32, 4),
(33, 4),
(34, 4),
(35, 4),
(36, 4),
(37, 4),
(47, 4),
(48, 4),
(49, 4),
(50, 4),
(51, 4),
(57, 4),
(62, 4),
(70, 3),
(71, 3),
(73, 3),
(70, 2),
(71, 2),
(72, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user`
--

CREATE TABLE `auth_user` (
  `id_user` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `is_delete` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_user`
--

INSERT INTO `auth_user` (`id_user`, `name`, `photo`, `email`, `password`, `token`, `last_login`, `ip_address`, `is_active`, `created`, `modified`, `is_delete`) VALUES
(1, 'Mr.J', '280423144500_360_F_406919209_.jpg', 'admin@admin.com', '$2y$10$KuDwoERWCthWuckdV1hJz.6azZ8BtgPzqJuOAT/Ltx8mCKJKOymry', '71521d92376191f68e7dabca51344e1b', '2023-04-28 14:08:00', '::1', '1', '2023-04-27 16:11:00', '2023-04-28 14:45:00', '0'),
(2, 'subhan', '', 'subhan@gmail.com', '$2y$10$5xjBfKKTWKEtYA2NUVfPnORW9Xh3YFJDvJzaW9pOxcxltMpuVA89i', '238b46a27b6d7512d7c94ea4e8e95ace', NULL, NULL, '1', '2023-04-28 14:45:52', '2023-04-28 14:57:19', '0'),
(3, 'mutu spj', '', 'mutu_spj@gmail.com', '$2y$10$mfLrbvvOz0EzHf7R.lqUv.EmTIlC3YqH9Jzwn/9pQGUcSeiLLUs5u', 'ee7b7f8c916aed7a23edecb74622c6be', NULL, NULL, '1', '2023-04-28 14:51:57', NULL, '0'),
(4, 'perbekalan spj', '', 'perbekalan_spj@gmail.com', '$2y$10$Ft/qGiJ3uWEbQEGQk3iSE.Is3YlRAieNy2L0CclRGNCB72EgIHt1W', 'f58dcbbbd01dcb8cffebc2f2bd15d34f', NULL, NULL, '1', '2023-04-28 14:52:34', NULL, '0'),
(5, 'mutu rba', '', 'mutu_rba@gmail.com', '$2y$10$9wAMCuZdMt5l324eYp4asuSmOIzfIn/hjj./vIr3xZy5CJn9aOJQm', '3d44a8e946b757ac54068ca43abec07e', NULL, NULL, '1', '2023-04-28 14:53:18', NULL, '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user_to_group`
--

CREATE TABLE `auth_user_to_group` (
  `id_user` int(11) NOT NULL,
  `id_group` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_user_to_group`
--

INSERT INTO `auth_user_to_group` (`id_user`, `id_group`) VALUES
(1, 1),
(2, 4),
(3, 2),
(4, 2),
(5, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ci_user_log`
--

CREATE TABLE `ci_user_log` (
  `id` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `url` text,
  `data` text,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `filemanager`
--

CREATE TABLE `filemanager` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `ket` text,
  `created` datetime DEFAULT NULL,
  `update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `filemanager`
--

INSERT INTO `filemanager` (`id`, `file_name`, `ket`, `created`, `update`) VALUES
(1, '231120043259_logos1.png', 'LOGO APLIKASI', '2020-11-23 04:32:59', NULL),
(2, '231120051100_logo_mini.png', 'LOGO MINI', '2020-11-23 05:11:00', NULL),
(3, '231120051803_favicon.ico', 'FAVICON', '2020-11-23 05:18:03', NULL),
(4, '280423143924_gk_letter_type_l.jpg', 'Di upload melalui module User', '2023-04-28 14:39:00', NULL),
(5, '280423143944_360_F_406919209_.jpg', 'Di upload melalui module User', '2023-04-28 14:39:00', NULL),
(6, '280423144500_360_F_406919209_.jpg', 'Di upload melalui module User', '2023-04-28 14:45:00', NULL),
(7, '280423144552_Screenshot_2022_.png', 'Di upload melalui module User', '2023-04-28 14:45:00', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `main_menu`
--

CREATE TABLE `main_menu` (
  `id_menu` int(11) NOT NULL,
  `is_parent` int(11) DEFAULT NULL,
  `menu` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `type` enum('controller','url') DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `target` varchar(20) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `is_active` enum('0','1') DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `main_menu`
--

INSERT INTO `main_menu` (`id_menu`, `is_parent`, `menu`, `slug`, `type`, `controller`, `target`, `icon`, `is_active`, `sort`, `created`, `modified`) VALUES
(3, 7, 'management menu', 'management-menu', 'controller', 'main_menu', '', '', '1', 8, '2020-02-15 06:48:31', '2020-11-02 13:33:26'),
(7, 0, 'configuration', 'configuration', 'controller', '', '', 'fa fa-cogs', '1', 6, '2020-02-26 06:42:29', '2020-11-23 05:20:01'),
(34, 7, 'settings', 'settings', 'controller', 'setting', '', '', '1', 7, '2020-10-19 00:25:57', '2020-11-23 05:20:11'),
(36, 0, 'dashboard', 'dashboard', 'controller', 'dashboard', '', 'mdi mdi-laptop', '1', 1, '2020-10-27 08:18:55', '2020-11-09 23:07:13'),
(37, 0, 'auth', 'auth', NULL, '', NULL, 'mdi mdi-account-settings-variant', '1', 2, '2020-10-27 08:45:17', NULL),
(38, 37, 'user', 'user', 'controller', 'user', NULL, 'mdi mdi-account-star', '1', 3, '2020-10-27 08:46:10', '2020-10-27 09:38:05'),
(39, 37, 'groups', 'groups', 'controller', 'group', NULL, '', '1', 4, '2020-10-27 08:48:28', '2020-10-27 20:24:12'),
(40, 37, 'permission', 'permission', 'controller', 'permission', NULL, '', '1', 5, '2020-10-27 08:49:49', '2020-10-29 22:47:10'),
(48, 0, 'm-crud generator', 'm-crud-generator', 'controller', 'm_crud_generator', '', 'mdi mdi-xml', '1', 10, '2020-11-01 12:23:11', '2020-11-22 00:06:35'),
(54, 7, 'file manager', 'file-manager', 'controller', 'filemanager', '', 'mdi mdi-folder-multiple-image', '1', 9, '2020-11-08 00:44:38', NULL),
(55, 0, 'surat masuk', 'surat-masuk', 'controller', '', '', 'fa fa-window-restore', '1', 11, '2023-04-28 14:25:40', NULL),
(56, 0, 'surat keluar', 'surat-keluar', 'controller', '', '', 'fa fa-envelope-open', '1', 12, '2023-04-28 14:26:02', NULL),
(57, 0, 'spj', 'spj', 'controller', '', '', 'mdi mdi-apple-keyboard-caps', '1', 13, '2023-04-28 14:26:39', NULL),
(58, 0, 'rba', 'rba', 'controller', '', '', 'mdi mdi-amplifier', '1', 14, '2023-04-28 14:27:15', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `modules_crud_generator`
--

CREATE TABLE `modules_crud_generator` (
  `id` int(11) NOT NULL,
  `module` varchar(255) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `table` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(11) NOT NULL,
  `group` varchar(50) NOT NULL,
  `options` varchar(100) NOT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`id_setting`, `group`, `options`, `value`) VALUES
(1, 'general', 'web_name', 'SIMPEG'),
(2, 'general', 'web_domain', 'http://localhost/mcodev2/'),
(3, 'general', 'web_owner', 'Mr.J'),
(4, 'general', 'email', 'admin@admin.com'),
(5, 'general', 'telepon', '085288888888'),
(6, 'general', 'address', '-'),
(7, 'general', 'logo', '231120043259_logos1.png'),
(8, 'general', 'logo_mini', '231120051100_logo_mini.png'),
(9, 'general', 'favicon', '231120051803_favicon.ico'),
(50, 'sosmed', 'facebook', 'https://facebook.com/mpampam'),
(51, 'general', 'instagram', 'https://instagram/mpampam'),
(52, 'sosmed', 'youtube', 'https://www.youtube.com/channel/UC1TlTaxRNdwrCqjBJ5zh6TA'),
(53, 'sosmed', 'twitter', 'https://twitter/m_pampam'),
(60, 'config', 'maintenance_status', 'N'),
(61, 'config', 'user_log_status', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_rba`
--

CREATE TABLE `tbl_rba` (
  `id_rba` int(11) NOT NULL,
  `nomor_rba` varchar(50) DEFAULT NULL,
  `tanggal_rba` varchar(255) NOT NULL,
  `nama_rba` varchar(255) DEFAULT NULL,
  `no_rekening_kegiatan_rba` varchar(50) DEFAULT NULL,
  `berkas_rba` varchar(255) DEFAULT NULL,
  `date_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_spj`
--

CREATE TABLE `tbl_spj` (
  `id_spj` int(11) NOT NULL,
  `nomor_spj` varchar(50) DEFAULT NULL,
  `tanggal_surat_spj` date NOT NULL,
  `no_invoice` varchar(50) DEFAULT NULL,
  `nama_pembayar` varchar(255) DEFAULT NULL,
  `jumlah_uang` int(11) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `date_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_disposisi`
--

CREATE TABLE `tb_disposisi` (
  `id_disposisi` int(11) NOT NULL,
  `id_surat` int(11) DEFAULT NULL,
  `tanggal_disposisi` date DEFAULT NULL,
  `oleh` varchar(100) DEFAULT NULL,
  `tujuan_disposisi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jenis_surat`
--

CREATE TABLE `tb_jenis_surat` (
  `id_jenis_surat` int(5) NOT NULL,
  `jenis_surat` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_surat_keluar`
--

CREATE TABLE `tb_surat_keluar` (
  `id_surat_keluar` int(10) NOT NULL,
  `no_surat` varchar(15) DEFAULT NULL,
  `tgl_surat` date DEFAULT NULL,
  `perihal` varchar(100) DEFAULT NULL,
  `pengirim` varchar(45) DEFAULT NULL,
  `kepada` varchar(30) DEFAULT NULL,
  `id_jenis_surat` int(5) DEFAULT NULL,
  `sifat_surat` enum('Rahasia','Penting','Segera','Biasa') DEFAULT NULL,
  `id_petugas` int(11) UNSIGNED DEFAULT NULL,
  `deskripsi` longtext,
  `berkas_surat_keluar` varchar(250) NOT NULL,
  `dibuat_pada` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_surat_masuk`
--

CREATE TABLE `tb_surat_masuk` (
  `id_surat_masuk` int(11) NOT NULL,
  `no_surat` varchar(13) DEFAULT NULL,
  `tgl_surat` date DEFAULT NULL,
  `perihal` varchar(100) DEFAULT NULL,
  `id_jenis_surat` int(5) DEFAULT NULL,
  `pengirim` varchar(30) DEFAULT NULL,
  `ditujukan` varchar(30) DEFAULT NULL,
  `deskripsi` mediumtext,
  `id_petugas` int(11) UNSIGNED DEFAULT NULL,
  `sifat_surat` enum('Rahasia','Penting','Segera','Biasa') DEFAULT NULL,
  `status_disposisi` enum('Sudah Disposisi','Belum Disposisi') DEFAULT NULL,
  `dibuat_pada` int(11) NOT NULL,
  `berkas_surat_masuk` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `ci_user_log`
--
ALTER TABLE `ci_user_log`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `filemanager`
--
ALTER TABLE `filemanager`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `main_menu`
--
ALTER TABLE `main_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `modules_crud_generator`
--
ALTER TABLE `modules_crud_generator`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indeks untuk tabel `tbl_rba`
--
ALTER TABLE `tbl_rba`
  ADD PRIMARY KEY (`id_rba`) USING BTREE;

--
-- Indeks untuk tabel `tbl_spj`
--
ALTER TABLE `tbl_spj`
  ADD PRIMARY KEY (`id_spj`) USING BTREE;

--
-- Indeks untuk tabel `tb_disposisi`
--
ALTER TABLE `tb_disposisi`
  ADD PRIMARY KEY (`id_disposisi`) USING BTREE,
  ADD KEY `id_surat` (`id_surat`) USING BTREE;

--
-- Indeks untuk tabel `tb_jenis_surat`
--
ALTER TABLE `tb_jenis_surat`
  ADD PRIMARY KEY (`id_jenis_surat`) USING BTREE;

--
-- Indeks untuk tabel `tb_surat_keluar`
--
ALTER TABLE `tb_surat_keluar`
  ADD PRIMARY KEY (`id_surat_keluar`) USING BTREE;

--
-- Indeks untuk tabel `tb_surat_masuk`
--
ALTER TABLE `tb_surat_masuk`
  ADD PRIMARY KEY (`id_surat_masuk`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `ci_user_log`
--
ALTER TABLE `ci_user_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `filemanager`
--
ALTER TABLE `filemanager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `main_menu`
--
ALTER TABLE `main_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT untuk tabel `modules_crud_generator`
--
ALTER TABLE `modules_crud_generator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_rba`
--
ALTER TABLE `tbl_rba`
  MODIFY `id_rba` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_spj`
--
ALTER TABLE `tbl_spj`
  MODIFY `id_spj` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_disposisi`
--
ALTER TABLE `tb_disposisi`
  MODIFY `id_disposisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_surat_keluar`
--
ALTER TABLE `tb_surat_keluar`
  MODIFY `id_surat_keluar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_surat_masuk`
--
ALTER TABLE `tb_surat_masuk`
  MODIFY `id_surat_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_disposisi`
--
ALTER TABLE `tb_disposisi`
  ADD CONSTRAINT `tb_disposisi_ibfk_1` FOREIGN KEY (`id_surat`) REFERENCES `db_surat`.`tb_surat` (`id_surat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
