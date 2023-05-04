-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 12, 2023 at 06:47 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_surat`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `group` varchar(100) NOT NULL,
  `definition` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `group`, `definition`) VALUES
(1, 'xadmin', 'Admin Master'),
(2, 'a', 'MUTU DAN SUMBER DAYA PELAYANAN NON MEDIK'),
(3, 'b', 'PERBEKALAN DAN PEMELIHARAAN SARANA PRASARANA NON MEDIK');

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `permission` varchar(100) NOT NULL,
  `definition` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
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
(115, 'sidebar_view_master_data', 'Module sidebar'),
(116, 'sidebar_view_jenis_barang', 'Module sidebar'),
(117, 'sidebar_view_ruangan', 'Module sidebar'),
(118, 'sidebar_view_transaksi', 'Module sidebar'),
(119, 'sidebar_view_pinjam', 'Module sidebar'),
(120, 'sidebar_view_data_barang', 'Module sidebar'),
(121, 'dashboard_jumlah_jenis_barang', 'Module dashboard'),
(122, 'sidebar_view_setting', 'Module sidebar'),
(123, 'sidebar_view_laporan', 'Module sidebar'),
(159, 'sidebar_view_inventaris_barang', 'Module sidebar'),
(181, 'sidebar_view_history_maintenance', 'Module sidebar'),
(182, 'sidebar_view_skp', 'Module sidebar'),
(183, 'sidebar_view_skp_laboran', 'Module sidebar'),
(184, 'sidebar_view_jadwal_laboratorium', 'Module sidebar'),
(185, 'sidebar_view_inventaris_bahan', 'Module sidebar'),
(186, 'sidebar_view_so_bahan', 'Module sidebar'),
(187, 'sidebar_view_jadwal_themplate', 'Module sidebar'),
(188, 'sidebar_view_perubahan_jadwal', 'Module sidebar'),
(234, 'sidebar_view_data_bahan', 'Module sidebar'),
(260, 'sidebar_view_mata_kuliah', 'Module sidebar'),
(261, 'sidebar_view_jadwal_template', 'Module sidebar'),
(266, 'sidebar_view_laporan_bahan', 'Module sidebar'),
(267, 'sidebar_view_laporan_barang', 'Module sidebar'),
(270, 'sidebar_view_dosen', 'Module sidebar'),
(272, 'sidebar_view_penggunaan_lab', 'Module sidebar'),
(273, 'sidebar_view_data_alat', 'Module sidebar'),
(274, 'sidebar_view_jenis_alat', 'Module sidebar'),
(275, 'sidebar_view_jenis_bahan', 'Module sidebar'),
(276, 'sidebar_view_inventaris_alat', 'Module sidebar'),
(277, 'sidebar_view_laporan_alat', 'Module sidebar'),
(280, 'sidebar_view_peminjaman', 'Module sidebar'),
(281, 'sidebar_view_dashboard2', 'Module sidebar');

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission_to_group`
--

CREATE TABLE `auth_permission_to_group` (
  `permission_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission_to_group`
--

INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(121, 2),
(55, 2),
(115, 2),
(116, 2),
(117, 2),
(118, 2),
(120, 2),
(123, 2),
(159, 2),
(185, 2),
(234, 2),
(266, 2),
(267, 2),
(80, 2),
(81, 2),
(82, 2),
(83, 2),
(84, 2),
(85, 2),
(86, 2),
(87, 2),
(88, 2),
(89, 2),
(149, 2),
(150, 2),
(151, 2),
(152, 2),
(153, 2),
(154, 2),
(155, 2),
(156, 2),
(157, 2),
(158, 2),
(160, 2),
(161, 2),
(162, 2),
(163, 2),
(164, 2),
(165, 2),
(194, 2),
(195, 2),
(196, 2),
(197, 2),
(198, 2),
(214, 2),
(215, 2),
(216, 2),
(217, 2),
(218, 2),
(224, 2),
(225, 2),
(226, 2),
(227, 2),
(228, 2),
(262, 2),
(263, 2),
(264, 2),
(265, 2);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id_user` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `nip` varchar(100) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `kode_ruangan` varchar(500) NOT NULL,
  `token` varchar(100) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `is_delete` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id_user`, `name`, `nip`, `photo`, `email`, `password`, `kode_ruangan`, `token`, `last_login`, `ip_address`, `is_active`, `created`, `modified`, `is_delete`) VALUES
(1, 'jakaria', '', '200522145337_download.png', 'admin@admin.com', '$2y$10$KuDwoERWCthWuckdV1hJz.6azZ8BtgPzqJuOAT/Ltx8mCKJKOymry', 'RU-000001,RU-000007,RU-000008,RU-000009', '71521d92376191f68e7dabca51344e1b', '2023-04-12 12:01:00', '::1', '1', '2022-05-19 13:36:00', '2023-01-17 10:28:22', '0'),
(2, 'jaka', '', '', 'jakarialucky@gmail.com', '$2y$10$bMLeY71gA7k3Bl3GZ5Hdv.x9BqYdtFY0EPN2Zn8ab33aj6aklJh1.', 'RU-000007,RU-000008,RU-000009', '8b824e4488001280a3e093883cd6adbc', '2022-12-26 08:03:00', '125.164.98.110', '1', '2022-05-23 08:50:48', '2022-12-05 10:33:16', '1'),
(3, 'Arif Supriyanto', '', '060323003335_Foto_Biru_2.JPG', 'arif@politala.ac.id', '$2y$10$mqUht1gEEDD2AvjPP..W8etwnO6TXywBXqIZXBQx7.Xuwtq0VWPAm', 'RU-000001', '5afe5e14fe78f54541dc6f280f67de54', '2023-03-06 00:33:00', '125.164.99.114', '1', '2022-06-23 13:09:43', '2023-03-06 00:33:35', '1'),
(4, 'heri', '', '', 'heri@politala.ac.id', '$2y$10$Z27XWtjPBk1Wt9cndr040OS5y82cROqb3ZLyerCYti.IpOTwIjrkK', 'RU-000003,RU-000004', '41277dbab627aa13d970ef3d4e03042b', NULL, NULL, '1', '2022-07-22 10:55:34', NULL, '1'),
(5, 'sylvia tantina', '', '', 'sylviatantina@politala.ac.id', '$2y$10$sUznuirbnchG32938izcCukLLtB/i4ARghvYTqsIK0fmuqWAu3pFm', 'RU-000006,RU-000009', 'fe88be50145cfe023fa8230a9c3a0a8a', NULL, NULL, '1', '2022-07-22 10:56:30', NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_to_group`
--

CREATE TABLE `auth_user_to_group` (
  `id_user` int(11) NOT NULL,
  `id_group` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user_to_group`
--

INSERT INTO `auth_user_to_group` (`id_user`, `id_group`) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 2),
(5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ci_user_log`
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
-- Table structure for table `filemanager`
--

CREATE TABLE `filemanager` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `ket` text,
  `created` datetime DEFAULT NULL,
  `update` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `filemanager`
--

INSERT INTO `filemanager` (`id`, `file_name`, `ket`, `created`, `update`) VALUES
(5, '190522135403_af9e6721f9cd403f.png', 'Di upload melalui module File manager', '2022-05-19 13:54:03', NULL),
(6, '190522140613_LOGO12.png', 'Di upload melalui module File manager', '2022-05-19 14:06:13', NULL),
(7, '200522145337_download.png', 'Di upload melalui module User', '2022-05-20 14:53:00', NULL),
(8, '080622133535_b81965bb_3e27_4a.jpg', 'Di upload melalui module Barang', '2022-06-08 13:35:00', NULL),
(9, '230622132819_c48626fb_14c5_4e.jpg', 'Di upload melalui module Barang', '2022-06-23 13:28:00', NULL),
(10, '220722135535_1af5c810_03a0_45.jpg', 'Di upload melalui module Bahan', '2022-07-22 13:55:00', NULL),
(11, '160822083636_1660610170127562.jpg', 'Di upload melalui module Barang', '2022-08-16 08:36:00', NULL),
(12, '160822092700_1660613167108159.jpg', 'Di upload melalui module Barang', '2022-08-16 09:27:00', NULL),
(13, '160822092955_1660613305568633.jpg', 'Di upload melalui module Barang', '2022-08-16 09:29:00', NULL),
(14, '160822093334_1660613569059605.jpg', 'Di upload melalui module Barang', '2022-08-16 09:33:00', NULL),
(15, '160822093542_1660613711218236.jpg', 'Di upload melalui module Barang', '2022-08-16 09:35:00', NULL),
(16, '160822093924_1660613888352631.jpg', 'Di upload melalui module Bahan', '2022-08-16 09:39:00', NULL),
(17, '160822094151_1660614054974410.jpg', 'Di upload melalui module Bahan', '2022-08-16 09:41:00', NULL),
(18, '160822094721_1660614366919764.jpg', 'Di upload melalui module Bahan', '2022-08-16 09:47:00', NULL),
(19, '160822095025_1660614591266714.jpg', 'Di upload melalui module Barang', '2022-08-16 09:50:00', NULL),
(20, '160822095225_1660614722491690.jpg', 'Di upload melalui module Bahan', '2022-08-16 09:52:00', NULL),
(21, '160822095443_1660614856913905.jpg', 'Di upload melalui module Barang', '2022-08-16 09:54:00', NULL),
(22, '160822100548_572f4dc6_86fe_4e.jpg', 'Di upload melalui module Bahan', '2022-08-16 10:05:00', NULL),
(23, '160822101929_7279802_bbb7945b.jpg', 'Di upload melalui module Bahan', '2022-08-16 10:19:00', NULL),
(24, '160822102145_1604888274_Dome_.jpg', 'Di upload melalui module Bahan', '2022-08-16 10:21:00', NULL),
(25, '160822102709_1542211146.jpg', 'Di upload melalui module Barang', '2022-08-16 10:27:00', NULL),
(26, '160822102914_ecc62f9eb1291561.jpg', 'Di upload melalui module Barang', '2022-08-16 10:29:00', NULL),
(27, '160822103021_1604888274_Dome_.jpg', 'Di upload melalui module Barang', '2022-08-16 10:30:00', NULL),
(28, '220822102901_15563380567888.jpg', 'Di upload melalui module Barang', '2022-08-22 10:29:00', NULL),
(29, '220822103217_15564229530467.jpg', 'Di upload melalui module Barang', '2022-08-22 10:32:00', NULL),
(30, '220822103653_amZzL3Q2Ny8yMDEv.jpg', 'Di upload melalui module Barang', '2022-08-22 10:36:00', NULL),
(31, '220822103902_polytron_PSF_500.jpg', 'Di upload melalui module Barang', '2022-08-22 10:39:00', NULL),
(32, '220822125607_20200721dni_172(.jpg', 'Di upload melalui module Barang', '2022-08-22 12:56:00', NULL),
(33, '220822130418_15563378420151.jpg', 'Di upload melalui module Barang', '2022-08-22 13:04:00', NULL),
(34, '220822130644_15563378217992.jpg', 'Di upload melalui module Barang', '2022-08-22 13:06:00', NULL),
(35, '220822130951_253954_2a7c6c14_.jpg', 'Di upload melalui module Barang', '2022-08-22 13:09:00', NULL),
(36, '220822131108_TL_WA901ND_03.jpg', 'Di upload melalui module Barang', '2022-08-22 13:11:00', NULL),
(37, '220822131202_download.jpg', 'Di upload melalui module Barang', '2022-08-22 13:12:00', NULL),
(38, '220822131233_r440_1280x720.jpg', 'Di upload melalui module Barang', '2022-08-22 13:12:00', NULL),
(39, '220822131904_15563391026323.jpg', 'Di upload melalui module Barang', '2022-08-22 13:19:00', NULL),
(40, '220822132133_15562401863482.jpg', 'Di upload melalui module Barang', '2022-08-22 13:21:00', NULL),
(41, '010922161342_15563335415913.jpg', 'Di upload melalui module Barang', '2022-09-01 16:13:00', NULL),
(42, '060323003335_Foto_Biru_2.JPG', 'Di upload melalui module User', '2023-03-06 00:33:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `main_menu`
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
-- Dumping data for table `main_menu`
--

INSERT INTO `main_menu` (`id_menu`, `is_parent`, `menu`, `slug`, `type`, `controller`, `target`, `icon`, `is_active`, `sort`, `created`, `modified`) VALUES
(3, 7, 'management menu', 'management-menu', 'controller', 'main_menu', '', '', '1', 8, '2020-02-15 06:48:31', '2020-11-02 13:33:26'),
(7, 0, 'configuration', 'configuration', 'controller', '', '', 'fa fa-cogs', '1', 6, '2020-02-26 06:42:29', '2020-11-23 05:20:01'),
(34, 7, 'settings', 'settings', 'controller', 'setting', '', '', '1', 7, '2020-10-19 00:25:57', '2020-11-23 05:20:11'),
(36, 0, 'dashboard', 'dashboard', 'controller', 'dashboard', '', 'mdi mdi-laptop', '1', 1, '2020-10-27 08:18:55', '2023-04-12 14:05:38'),
(37, 0, 'auth', 'auth', NULL, '', NULL, 'mdi mdi-account-settings-variant', '1', 2, '2020-10-27 08:45:17', NULL),
(38, 37, 'user', 'user', 'controller', 'user', NULL, 'mdi mdi-account-star', '1', 3, '2020-10-27 08:46:10', '2020-10-27 09:38:05'),
(39, 37, 'groups', 'groups', 'controller', 'group', NULL, '', '1', 4, '2020-10-27 08:48:28', '2020-10-27 20:24:12'),
(40, 37, 'permission', 'permission', 'controller', 'permission', NULL, '', '1', 5, '2020-10-27 08:49:49', '2020-10-29 22:47:10'),
(48, 0, 'm-crud generator', 'm-crud-generator', 'controller', 'm_crud_generator', '', 'mdi mdi-xml', '1', 10, '2020-11-01 12:23:11', '2020-11-22 00:06:35'),
(54, 7, 'file manager', 'file-manager', 'controller', 'filemanager', '', 'mdi mdi-folder-multiple-image', '1', 9, '2020-11-08 00:44:38', NULL),
(58, 0, 'transaksi', 'transaksi', 'controller', '', '', 'ti-exchange-vertical', '1', 11, '2022-05-24 09:38:22', NULL),
(61, 0, 'setting', 'setting', 'controller', '', '', 'mdi mdi-settings', '0', 12, '2022-05-24 14:26:11', '2023-04-12 14:05:45');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `modules_crud_generator`
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
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(11) NOT NULL,
  `group` varchar(50) NOT NULL,
  `options` varchar(100) NOT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id_setting`, `group`, `options`, `value`) VALUES
(1, 'general', 'web_name', 'SILAB'),
(2, 'general', 'web_domain', 'http://localhost/SIILAB/'),
(3, 'general', 'web_owner', 'jakaria'),
(4, 'general', 'email', 'jakaria@politala.ac.id'),
(5, 'general', 'telepon', '085288888888'),
(6, 'general', 'address', '-'),
(7, 'general', 'logo', '190522140613_LOGO12.png'),
(8, 'general', 'logo_mini', '190522135403_af9e6721f9cd403f.png'),
(9, 'general', 'favicon', '190522135403_af9e6721f9cd403f.png'),
(50, 'sosmed', 'facebook', 'https://facebook.com/'),
(51, 'general', 'instagram', 'https://instagram/'),
(52, 'sosmed', 'youtube', 'https://www.youtube.com/'),
(53, 'sosmed', 'twitter', 'https://twitter/'),
(60, 'config', 'maintenance_status', 'N'),
(61, 'config', 'user_log_status', 'N');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `ci_user_log`
--
ALTER TABLE `ci_user_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `filemanager`
--
ALTER TABLE `filemanager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_menu`
--
ALTER TABLE `main_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `modules_crud_generator`
--
ALTER TABLE `modules_crud_generator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ci_user_log`
--
ALTER TABLE `ci_user_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `filemanager`
--
ALTER TABLE `filemanager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `main_menu`
--
ALTER TABLE `main_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `modules_crud_generator`
--
ALTER TABLE `modules_crud_generator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
