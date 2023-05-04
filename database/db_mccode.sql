-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 27 Apr 2023 pada 08.12
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
-- Database: `db_mccode`
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
(1, 'xadmin', 'Admin Master');

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
(67, 'crud_generator_delete', 'Module crud generator');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permission_to_group`
--

CREATE TABLE `auth_permission_to_group` (
  `permission_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(1, 'Mr.J', '', 'admin@admin.com', '$2y$10$7TZmkej./RS1nHtasX9zC.xL4XJpLHNrcch4UgCx5nVeo7cDQTcXG', 'e0ed95a65d7aa00b073611e1a4f415b5', '2020-11-25 13:11:00', '::1', '1', '2023-04-27 16:11:00', '2020-11-24 04:25:27', '0');

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
(1, 1);

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
(3, '231120051803_favicon.ico', 'FAVICON', '2020-11-23 05:18:03', NULL);

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
(48, 0, 'm-crud generator', 'm-crud-generator', 'controller', 'm_crud_generator', '', 'mdi mdi-xml', '1', 11, '2020-11-01 12:23:11', '2020-11-22 00:06:35'),
(54, 7, 'file manager', 'file-manager', 'controller', 'filemanager', '', 'mdi mdi-folder-multiple-image', '1', 9, '2020-11-08 00:44:38', NULL);

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
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `ci_user_log`
--
ALTER TABLE `ci_user_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `filemanager`
--
ALTER TABLE `filemanager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `main_menu`
--
ALTER TABLE `main_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT untuk tabel `modules_crud_generator`
--
ALTER TABLE `modules_crud_generator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
