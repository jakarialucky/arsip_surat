-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table disignmy_inven_lab.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group` varchar(100) NOT NULL,
  `definition` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table disignmy_inven_lab.auth_group: ~3 rows (approximately)
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
INSERT INTO `auth_group` (`id`, `group`, `definition`) VALUES
	(1, 'xadmin', 'Admin Master'),
	(2, 'laboran', 'Untuk User group Laboran'),
	(3, 'kalab', '');
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- Dumping structure for table disignmy_inven_lab.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission` varchar(100) NOT NULL,
  `definition` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=268 DEFAULT CHARSET=utf8;

-- Dumping data for table disignmy_inven_lab.auth_permission: ~157 rows (approximately)
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
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
	(80, 'jenis_barang_list', 'Module jenis_barang'),
	(81, 'jenis_barang_detail', 'Module jenis_barang'),
	(82, 'jenis_barang_add', 'Module jenis_barang'),
	(83, 'jenis_barang_update', 'Module jenis_barang'),
	(84, 'jenis_barang_delete', 'Module jenis_barang'),
	(85, 'ruangan_list', 'Module ruangan'),
	(86, 'ruangan_detail', 'Module ruangan'),
	(87, 'ruangan_add', 'Module ruangan'),
	(88, 'ruangan_update', 'Module ruangan'),
	(89, 'ruangan_delete', 'Module ruangan'),
	(115, 'sidebar_view_master_data', 'Module sidebar'),
	(116, 'sidebar_view_jenis_barang', 'Module sidebar'),
	(117, 'sidebar_view_ruangan', 'Module sidebar'),
	(118, 'sidebar_view_transaksi', 'Module sidebar'),
	(119, 'sidebar_view_pinjam', 'Module sidebar'),
	(120, 'sidebar_view_data_barang', 'Module sidebar'),
	(121, 'dashboard_jumlah_jenis_barang', 'Module dashboard'),
	(122, 'sidebar_view_setting', 'Module sidebar'),
	(123, 'sidebar_view_laporan', 'Module sidebar'),
	(149, 'barang_list', 'Module barang'),
	(150, 'barang_detail', 'Module barang'),
	(151, 'barang_add', 'Module barang'),
	(152, 'barang_update', 'Module barang'),
	(153, 'barang_delete', 'Module barang'),
	(154, 'inventaris_barang_list', 'Module inventaris_barang'),
	(155, 'inventaris_barang_detail', 'Module inventaris_barang'),
	(156, 'inventaris_barang_add', 'Module inventaris_barang'),
	(157, 'inventaris_barang_update', 'Module inventaris_barang'),
	(158, 'inventaris_barang_delete', 'Module inventaris_barang'),
	(159, 'sidebar_view_inventaris_barang', 'Module sidebar'),
	(160, 'rincian_barang_list', 'Module rincian_barang'),
	(161, 'rincian_barang_detail', 'Module rincian_barang'),
	(162, 'rincian_barang_add', 'Module rincian_barang'),
	(163, 'rincian_barang_update', 'Module rincian_barang'),
	(164, 'rincian_barang_delete', 'Module rincian_barang'),
	(165, 'rincian_barang_filter', 'Module rincian'),
	(176, 'pinjam_list', 'Module pinjam'),
	(177, 'pinjam_detail', 'Module pinjam'),
	(178, 'pinjam_add', 'Module pinjam'),
	(179, 'pinjam_update', 'Module pinjam'),
	(180, 'pinjam_delete', 'Module pinjam'),
	(181, 'sidebar_view_history_maintenance', 'Module sidebar'),
	(182, 'sidebar_view_skp', 'Module sidebar'),
	(183, 'sidebar_view_skp_laboran', 'Module sidebar'),
	(184, 'sidebar_view_jadwal_laboratorium', 'Module sidebar'),
	(185, 'sidebar_view_inventaris_bahan', 'Module sidebar'),
	(186, 'sidebar_view_so_bahan', 'Module sidebar'),
	(187, 'sidebar_view_jadwal_themplate', 'Module sidebar'),
	(188, 'sidebar_view_perubahan_jadwal', 'Module sidebar'),
	(194, 'mata_kuliah_list', 'Module mata_kuliah'),
	(195, 'mata_kuliah_detail', 'Module mata_kuliah'),
	(196, 'mata_kuliah_add', 'Module mata_kuliah'),
	(197, 'mata_kuliah_update', 'Module mata_kuliah'),
	(198, 'mata_kuliah_delete', 'Module mata_kuliah'),
	(214, 'bahan_list', 'Module bahan'),
	(215, 'bahan_detail', 'Module bahan'),
	(216, 'bahan_add', 'Module bahan'),
	(217, 'bahan_update', 'Module bahan'),
	(218, 'bahan_delete', 'Module bahan'),
	(224, 'transaksi_bahan_list', 'Module transaksi_bahan'),
	(225, 'transaksi_bahan_detail', 'Module transaksi_bahan'),
	(226, 'transaksi_bahan_add', 'Module transaksi_bahan'),
	(227, 'transaksi_bahan_update', 'Module transaksi_bahan'),
	(228, 'transaksi_bahan_delete', 'Module transaksi_bahan'),
	(229, 'jadwal_perubahan_list', 'Module jadwal_perubahan'),
	(230, 'jadwal_perubahan_detail', 'Module jadwal_perubahan'),
	(231, 'jadwal_perubahan_add', 'Module jadwal_perubahan'),
	(232, 'jadwal_perubahan_update', 'Module jadwal_perubahan'),
	(233, 'jadwal_perubahan_delete', 'Module jadwal_perubahan'),
	(234, 'sidebar_view_data_bahan', 'Module sidebar'),
	(245, 'jadwal_laboratorium_list', 'Module jadwal_laboratorium'),
	(246, 'jadwal_laboratorium_detail', 'Module jadwal_laboratorium'),
	(247, 'jadwal_laboratorium_add', 'Module jadwal_laboratorium'),
	(248, 'jadwal_laboratorium_update', 'Module jadwal_laboratorium'),
	(249, 'jadwal_laboratorium_delete', 'Module jadwal_laboratorium'),
	(255, 'tbl_jadwal_lab_static_list', 'Module tbl_jadwal_lab_static'),
	(256, 'tbl_jadwal_lab_static_detail', 'Module tbl_jadwal_lab_static'),
	(257, 'tbl_jadwal_lab_static_add', 'Module tbl_jadwal_lab_static'),
	(258, 'tbl_jadwal_lab_static_update', 'Module tbl_jadwal_lab_static'),
	(259, 'tbl_jadwal_lab_static_delete', 'Module tbl_jadwal_lab_static'),
	(260, 'sidebar_view_mata_kuliah', 'Module sidebar'),
	(261, 'sidebar_view_jadwal_template', 'Module sidebar'),
	(262, 'laporan_barang_list', 'Module laporan_barang'),
	(263, 'laporan_barang_delete', 'Module laporan_barang'),
	(264, 'laporan_bahan_list', 'Module laporan_bahan'),
	(265, 'laporan_bahan_delete', 'Module laporan_bahan'),
	(266, 'sidebar_view_laporan_bahan', 'Module sidebar'),
	(267, 'sidebar_view_laporan_barang', 'Module sidebar');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- Dumping structure for table disignmy_inven_lab.auth_permission_to_group
CREATE TABLE IF NOT EXISTS `auth_permission_to_group` (
  `permission_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table disignmy_inven_lab.auth_permission_to_group: ~28 rows (approximately)
/*!40000 ALTER TABLE `auth_permission_to_group` DISABLE KEYS */;
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES
	(47, 2),
	(55, 2),
	(115, 2),
	(116, 2),
	(117, 2),
	(118, 2),
	(119, 2),
	(120, 2),
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
	(100, 2),
	(101, 2),
	(102, 2),
	(103, 2),
	(104, 2),
	(110, 2),
	(111, 2),
	(112, 2),
	(113, 2),
	(114, 2);
/*!40000 ALTER TABLE `auth_permission_to_group` ENABLE KEYS */;

-- Dumping structure for table disignmy_inven_lab.auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
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
  `is_delete` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table disignmy_inven_lab.auth_user: ~5 rows (approximately)
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` (`id_user`, `name`, `nip`, `photo`, `email`, `password`, `kode_ruangan`, `token`, `last_login`, `ip_address`, `is_active`, `created`, `modified`, `is_delete`) VALUES
	(1, 'jakaria', '', '200522145337_download.png', 'jakaria@politala.ac.id', '$2y$10$Xsg2UYgIC8A05l.A6vh6qu9QFetPhtHDQnmuWkLLOWELfDwMxGrEy', 'RU-000001,RU-000007,RU-000008,RU-000009', '0391ce8341f498d25de320ce70567191', '2022-08-16 08:45:00', '10.10.13.198', '1', '2022-05-19 13:36:00', '2022-08-15 13:32:33', '0'),
	(2, 'jaka', '', '', 'jakarialucky@gmail.com', '$2y$10$bMLeY71gA7k3Bl3GZ5Hdv.x9BqYdtFY0EPN2Zn8ab33aj6aklJh1.', 'RU-000001', '8b824e4488001280a3e093883cd6adbc', '2022-08-05 14:32:00', '::1', '1', '2022-05-23 08:50:48', '2022-06-23 13:24:22', '0'),
	(3, 'JONO', '', '', 'jakaria.pay@gmail.com', '$2y$10$1ktIjPeS4W/BFBGL1.3edekz7MWO6ktHcHZeTY7tHyoDeh1HG3o.2', 'RU-000001', '621af0b04876ed70aa03c805638fab39', NULL, NULL, '1', '2022-06-23 13:09:43', '2022-06-23 13:23:15', '0'),
	(4, 'heri', '', '', 'heri@politala.ac.id', '$2y$10$Z27XWtjPBk1Wt9cndr040OS5y82cROqb3ZLyerCYti.IpOTwIjrkK', 'RU-000003,RU-000004', '41277dbab627aa13d970ef3d4e03042b', NULL, NULL, '1', '2022-07-22 10:55:34', NULL, '0'),
	(5, 'sylvia tantina', '', '', 'sylviatantina@politala.ac.id', '$2y$10$sUznuirbnchG32938izcCukLLtB/i4ARghvYTqsIK0fmuqWAu3pFm', 'RU-000006,RU-000009', 'fe88be50145cfe023fa8230a9c3a0a8a', NULL, NULL, '1', '2022-07-22 10:56:30', NULL, '0');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

-- Dumping structure for table disignmy_inven_lab.auth_user_to_group
CREATE TABLE IF NOT EXISTS `auth_user_to_group` (
  `id_user` int(11) NOT NULL,
  `id_group` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table disignmy_inven_lab.auth_user_to_group: ~5 rows (approximately)
/*!40000 ALTER TABLE `auth_user_to_group` DISABLE KEYS */;
INSERT INTO `auth_user_to_group` (`id_user`, `id_group`) VALUES
	(1, 1),
	(2, 2),
	(3, 2),
	(4, 2),
	(5, 2);
/*!40000 ALTER TABLE `auth_user_to_group` ENABLE KEYS */;

-- Dumping structure for table disignmy_inven_lab.ci_user_log
CREATE TABLE IF NOT EXISTS `ci_user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `url` text,
  `data` text,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table disignmy_inven_lab.ci_user_log: ~0 rows (approximately)
/*!40000 ALTER TABLE `ci_user_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ci_user_log` ENABLE KEYS */;

-- Dumping structure for table disignmy_inven_lab.filemanager
CREATE TABLE IF NOT EXISTS `filemanager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) DEFAULT NULL,
  `ket` text,
  `created` datetime DEFAULT NULL,
  `update` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- Dumping data for table disignmy_inven_lab.filemanager: ~23 rows (approximately)
/*!40000 ALTER TABLE `filemanager` DISABLE KEYS */;
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
	(27, '160822103021_1604888274_Dome_.jpg', 'Di upload melalui module Barang', '2022-08-16 10:30:00', NULL);
/*!40000 ALTER TABLE `filemanager` ENABLE KEYS */;

-- Dumping structure for table disignmy_inven_lab.main_menu
CREATE TABLE IF NOT EXISTS `main_menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
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
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- Dumping data for table disignmy_inven_lab.main_menu: ~30 rows (approximately)
/*!40000 ALTER TABLE `main_menu` DISABLE KEYS */;
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
	(55, 0, 'master data', 'master-data', 'controller', '', '', 'ion-cube', '1', 11, '2022-05-24 09:27:40', NULL),
	(56, 55, 'jenis barang', 'jenis-barang', 'controller', 'jenis_barang', '', 'ion-filing', '1', 12, '2022-05-24 09:30:18', '2022-05-24 09:33:47'),
	(57, 55, 'ruangan', 'ruangan', 'controller', 'ruangan', '', 'mdi mdi-city', '1', 13, '2022-05-24 09:35:41', NULL),
	(58, 0, 'transaksi', 'transaksi', 'controller', '', '', 'ti-exchange-vertical', '1', 16, '2022-05-24 09:38:22', NULL),
	(59, 58, 'pinjam', 'pinjam', 'controller', 'pinjam', '', '', '1', 20, '2022-05-24 09:43:11', NULL),
	(60, 55, 'data barang', 'data-barang', 'controller', 'barang', '', '', '1', 15, '2022-05-24 09:47:47', NULL),
	(61, 0, 'setting', 'setting', 'controller', '', '', 'mdi mdi-settings', '1', 27, '2022-05-24 14:26:11', NULL),
	(62, 0, 'laporan', 'laporan', 'controller', '', '', 'mdi mdi-book-open-page-variant', '1', 26, '2022-05-24 14:36:26', NULL),
	(63, 58, 'inventaris barang', 'inventaris-barang', 'controller', 'inventaris_barang', '', '', '1', 17, '2022-06-08 14:19:43', NULL),
	(64, 58, 'history maintenance', 'history-maintenance', 'controller', 'maintenance', '', '', '0', 21, '2022-06-23 12:30:29', '2022-08-01 15:25:20'),
	(65, 0, 'skp laboran', 'skp-laboran', 'controller', '', '', 'ion-ios7-bookmarks', '0', 25, '2022-06-23 12:32:26', '2022-06-23 14:28:51'),
	(66, 0, 'jadwal laboratorium', 'jadwal-laboratorium', 'controller', '', '', 'mdi mdi-calendar-multiple-check', '1', 22, '2022-07-15 10:28:38', NULL),
	(67, 58, 'inventaris bahan', 'inventaris-bahan', 'controller', 'transaksi_bahan', '', '', '1', 18, '2022-07-15 10:30:46', '2022-07-25 09:36:04'),
	(68, 58, 'so bahan', 'so-bahan', 'controller', '', '', '', '0', 19, '2022-07-15 10:31:08', '2022-08-01 15:25:08'),
	(69, 66, 'jadwal template', 'jadwal-template', 'controller', 'jadwal_laboratorium', '', '', '1', 23, '2022-07-15 10:35:10', '2022-08-01 15:27:21'),
	(70, 66, 'perubahan jadwal', 'perubahan-jadwal', 'controller', 'jadwal_perubahan', '', '', '1', 24, '2022-07-15 10:35:58', '2022-07-25 09:36:41'),
	(71, 55, 'data bahan', 'data-bahan', 'controller', 'bahan', '', '', '1', 14, '2022-07-25 09:34:17', NULL),
	(73, 55, 'mata kuliah', 'mata-kuliah', 'controller', 'mata_kuliah', '', '', '1', 0, '2022-07-28 14:41:25', NULL),
	(74, 62, 'laporan bahan', 'laporan-bahan', 'controller', 'laporan_bahan', '', '', '1', 0, '2022-08-15 14:33:59', NULL),
	(75, 62, 'laporan barang', 'laporan-barang', 'controller', 'laporan_barang', '', '', '1', 0, '2022-08-15 14:34:21', NULL);
/*!40000 ALTER TABLE `main_menu` ENABLE KEYS */;

-- Dumping structure for table disignmy_inven_lab.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table disignmy_inven_lab.migrations: ~1 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`version`) VALUES
	(1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table disignmy_inven_lab.modules_crud_generator
CREATE TABLE IF NOT EXISTS `modules_crud_generator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(255) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `table` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- Dumping data for table disignmy_inven_lab.modules_crud_generator: ~14 rows (approximately)
/*!40000 ALTER TABLE `modules_crud_generator` DISABLE KEYS */;
INSERT INTO `modules_crud_generator` (`id`, `module`, `module_name`, `table`, `created_at`) VALUES
	(3, 'Jenis_barang', 'Jenis Barang', 'tbl_jenis_barang', '2022-05-24 08:46:00'),
	(4, 'Ruangan', 'Ruangan', 'tbl_ruangan', '2022-05-24 08:50:00'),
	(15, 'Barang', 'Barang', 'tbl_barang', '2022-06-03 11:22:00'),
	(16, 'Inventaris_barang', 'Inventaris Barang', 'tbl_transaksi_barang', '2022-06-08 13:46:00'),
	(17, 'Rincian_barang', 'Rincian Barang', 'tbl_rincian_barang', '2022-06-08 16:12:00'),
	(20, 'Pinjam', 'Pinjam', 'tbl_pinjam', '2022-06-20 15:35:00'),
	(22, 'Mata_kuliah', 'Mata Kuliah', 'tbl_mata_kuliah', '2022-07-20 16:09:00'),
	(26, 'Bahan', 'Bahan', 'tbl_bahan', '2022-07-20 16:36:00'),
	(28, 'Transaksi_bahan', 'Transaksi Bahan', 'tbl_transaksi_bahan', '2022-07-22 15:58:00'),
	(29, 'Jadwal_perubahan', 'Jadwal Perubahan', 'tbl_jadwal_perubahan', '2022-07-22 16:02:00'),
	(32, 'Jadwal_laboratorium', 'Jadwal Laboratorium', 'tbl_jadwal_jenis', '2022-07-25 10:40:00'),
	(34, 'Tbl_jadwal_lab_static', 'Tbl Jadwal Lab Static', 'tbl_jadwal_lab_static', '2022-07-28 11:25:00'),
	(35, 'Laporan_barang', 'Laporan  Barang', 'tbl_transaksi_barang', '2022-08-15 14:06:00'),
	(36, 'Laporan_bahan', 'Laporan Bahan', 'tbl_transaksi_bahan', '2022-08-15 14:13:00');
/*!40000 ALTER TABLE `modules_crud_generator` ENABLE KEYS */;

-- Dumping structure for table disignmy_inven_lab.setting
CREATE TABLE IF NOT EXISTS `setting` (
  `id_setting` int(11) NOT NULL,
  `group` varchar(50) NOT NULL,
  `options` varchar(100) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_setting`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table disignmy_inven_lab.setting: ~15 rows (approximately)
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
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
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;

-- Dumping structure for table disignmy_inven_lab.tbl_bahan
CREATE TABLE IF NOT EXISTS `tbl_bahan` (
  `kode_bahan` varchar(10) NOT NULL COMMENT 'BH-000001',
  `barcode_bahan` varchar(250) NOT NULL,
  `nama_bahan_merk` text NOT NULL,
  `kode_jenis_barang` varchar(10) NOT NULL COMMENT 'JNB-000001',
  `spesifikasi` text NOT NULL,
  `gambar_barang` text NOT NULL,
  `add_by` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`kode_bahan`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table disignmy_inven_lab.tbl_bahan: ~20 rows (approximately)
/*!40000 ALTER TABLE `tbl_bahan` DISABLE KEYS */;
INSERT INTO `tbl_bahan` (`kode_bahan`, `barcode_bahan`, `nama_bahan_merk`, `kode_jenis_barang`, `spesifikasi`, `gambar_barang`, `add_by`) VALUES
	('BH-000001', '', 'KABEL HDMI NYK - 5M', 'JNB-000019', '', '220722135535_1af5c810_03a0_45.jpg', ''),
	('BH-000002', '', 'Hdmi speed HDTV cable -12M', 'JNB-000019', '', '', ''),
	('BH-000003', '', 'Logitech h370', 'JNB-000020', '', '', ''),
	('BH-000004', '', 'Trendnet crimping tool', 'JNB-000021', '', '', ''),
	('BH-000005', '', 'B-steady pro gimbal', 'JNB-000022', '', '', ''),
	('BH-000006', '', 'HDTV to VGA adapter skhub Vega', 'JNB-000023', '', '', ''),
	('BH-000007', '', '1 in 4 out ada Splitter ventio', 'JNB-000023', '', '', ''),
	('BH-000008', '', 'Anycast mx18', 'JNB-000023', '', '', ''),
	('BH-000009', '', 'Hdmi switch 5 to 1', 'JNB-000023', '', '', ''),
	('BH-000010', '', 'Tab Advan A8', 'JNB-000024', '', '', ''),
	('BH-000011', '', 'USB 3.0 AM/AM', 'JNB-000031', '', '160822093924_1660613888352631.jpg', ''),
	('BH-000012', '', 'Kabel fiber optic', 'JNB-000032', '', '160822094151_1660614054974410.jpg', ''),
	('BH-000013', '', 'RJ45 conector UPT cat 6 BELDEN', 'JNB-000033', '', '160822094721_1660614366919764.jpg', ''),
	('BH-000014', '', 'Battrai alkaline A 2', 'JNB-000000', '', '160822095225_1660614722491690.jpg', ''),
	('BH-000015', '', 'NYX Connection RJ45 CAT 6', 'JNB-000033', '', '160822100548_572f4dc6_86fe_4e.jpg', ''),
	('BH-000016', '', 'NYX Connection RJ45 CAT 5', 'JNB-000033', '', '', ''),
	('BH-000017', '', 'Roset 2 core', 'JNB-000000', '', '160822101929_7279802_bbb7945b.jpg', ''),
	('BH-000018', '', 'SMART DIGITAL MULTIMETER', 'JNB-000029', '', '', ''),
	('BH-000019', '', 'JOINTWIT HANDHELD LIGHT SOURCE JW3109', 'JNB-000029', '', '', ''),
	('BH-000020', '', 'SC 8108 cable tester', 'JNB-000029', '', '', '');
/*!40000 ALTER TABLE `tbl_bahan` ENABLE KEYS */;

-- Dumping structure for table disignmy_inven_lab.tbl_barang
CREATE TABLE IF NOT EXISTS `tbl_barang` (
  `kode_barang` varchar(10) NOT NULL COMMENT 'BR-000001',
  `barcode_barang` varchar(250) NOT NULL,
  `nama_barang_merk` text NOT NULL,
  `kode_bmn` varchar(30) NOT NULL,
  `kode_jenis_barang` varchar(10) NOT NULL COMMENT 'JNB-000001',
  `spesifikasi` text NOT NULL,
  `gambar_barang` text NOT NULL,
  `add_by` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`kode_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table disignmy_inven_lab.tbl_barang: ~32 rows (approximately)
/*!40000 ALTER TABLE `tbl_barang` DISABLE KEYS */;
INSERT INTO `tbl_barang` (`kode_barang`, `barcode_barang`, `nama_barang_merk`, `kode_bmn`, `kode_jenis_barang`, `spesifikasi`, `gambar_barang`, `add_by`) VALUES
	('BR-000001', '', 'Mouse', '-', 'JNB-000002', 'Bagus', '', ''),
	('BR-000002', '', 'Keyboard HP', '-', 'JNB-000002', '-', '', ''),
	('BR-000003', '', 'Monitor HP 21 Inc', '', 'JNB-000001', '', '', ''),
	('BR-000004', '', 'Hp elite desk 800 G5 TWR', '3100102001', 'JNB-000004', '<p><span xss=removed>HP EliteDesk 800 G5 Tower - HPQ8QU69PA</span><br xss=removed><span xss=removed>IntelÂ® Coreâ„¢ i7-9700 (3 GHz base frequency, up to 4.8 GHz with IntelÂ® Turbo Boost Technology, 12 MB cache, 8 cores)</span><br xss=removed><span xss=removed>Memory 16GB DDR4-2666</span><br xss=removed><span xss=removed>HDD 1TB 7200 RPM SATA 3.5 + 256GB SSD M.2 PCIe NVMe</span><br xss=removed><span xss=removed>VGA </span>NVIDIA GeForce RTX 2060Â <span xss=removed>Gra</span><span xss=removed>phics (8 GB GDDR5 dedicated)</span><br xss=removed><span xss=removed>HP USB Keyboard & Mouse</span><br xss=removed><span xss=removed>OS : Windows 10 Pro 64</span><br xss=removed><span xss=removed>DVD-RW ODD</span><br xss=removed><span xss=removed>wi- fi</span><br xss=removed><span xss=removed>antena</span><br xss=removed><span xss=removed>HP Parallel Port</span><br xss=removed><span xss=removed>HP SD Media Card Reader</span><br xss=removed><span xss=removed>Warranty HP 3/3/3</span><br xss=removed><span xss=removed>Non Monitor</span><br xss=removed><span xss=removed>WLAN ac 2x2 +BT 4.2 WW vPro</span><br></p>', '080622133535_b81965bb_3e27_4a.jpg', ''),
	('BR-000005', '', 'Kursi Merah', '3050201003', 'JNB-000006', '<p>-</p>', '', ''),
	('BR-000006', '', 'PC all in one HP g5 600', '3100102001', 'JNB-000005', '<p><span xss=removed>Processor intel core i7-9700T (2.0GHz-4.3GHz with Turbo Boost Technology, 12MB cache, 8 cores)</span><br xss=removed><span xss=removed>RAM 8GB DDR4-2666</span><br xss=removed><span xss=removed>HDD 1TB 7200rpm SATA</span><br xss=removed><span xss=removed>VGA intel UHD Graphics 630</span><br xss=removed><span xss=removed>Layar TOUCH SCREEN 21.5 inch diagonal FHD IPS widescreen LCD anti-glare WLED-backlit (1920x1080)</span><br xss=removed><span xss=removed>Windows 10 PRO 64 Bit</span><br xss=removed><span xss=removed>GARANSI RESMI 5 TAHUN ONSITE SERVICE</span><br xss=removed><span xss=removed>Slim DVD-Writer, Webcam 720, Realtek RTL8821CE ac 1x1 + Bluetooth 4.2 WW, 1 USB 2.0 type-C, 4 USB 3.1, 1 DISPLAY PORT 1.2, 1 RJ-45, 1 M.2 PCIe slots, TPM 1.2, HP 90W PSU</span><br></p>', '230622132819_c48626fb_14c5_4e.jpg', ''),
	('BR-000007', '', 'CISCO Wireless-N Access Point CBW 140AC-F ', '', 'JNB-000014', '', '', ''),
	('BR-000008', '', 'NVIDIA Jetson Nano Developer Kit- Mini PC for Al and Robotics', '', 'JNB-000025', '', '', ''),
	('BR-000009', '', 'UBIQUITI airMAX 2x2 Omni Antenna AMO-2G10', '', 'JNB-000014', '', '', ''),
	('BR-000010', '', 'UBIQUITI Rocket M2 UBNT Rocket M2', '', 'JNB-000014', '', '', ''),
	('BR-000011', '', 'UBIQUITI lite Beam AC GEN2 LBE-5AC-GEN2', '', 'JNB-000014', '', '', ''),
	('BR-000012', '', 'UBIQUITI UniFi Video Camera UVC-G3-DOME', '', 'JNB-000026', '', '', ''),
	('BR-000013', '', 'UBIQUITI Unifi Dream Machine Pro/ UDMP / UDM PRO', '', 'JNB-000028', '', '', ''),
	('BR-000014', '', 'INDORACK StandinG Close Rack 4', '', 'JNB-000012', '', '', ''),
	('BR-000015', '', 'MIKROTIK RB1100AHx4', '', 'JNB-000028', '', '', ''),
	('BR-000016', '', 'MIKROTIK Router Wireless RB951', '', 'JNB-000028', '', '', ''),
	('BR-000017', '', 'UBIQUITI Unifi 24 Ports POE+ 250W GE Managed Switch ES-24-2S0W', '', 'JNB-000015', '', '', ''),
	('BR-000018', '', 'Fusion Splicer JOINWIT JW4108', '', 'JNB-000029', '', '', ''),
	('BR-000019', '', 'OTDR Joinwit JW3302 FQ Optical nme Domain Reflectometer JW 3302', '', 'JNB-000029', '', '', ''),
	('BR-000020', '', 'Dragino Lora iot Development Kit', '', 'JNB-000025', '', '', ''),
	('BR-000021', '', 'Trainer Kit lot -Internet Of Things', '', 'JNB-000025', '', '160822083636_1660610170127562.jpg', ''),
	('BR-000022', '', 'OTB(Optical Termination Box) 12 core', '', 'JNB-000029', '', '160822092700_1660613167108159.jpg', ''),
	('BR-000023', '', 'TP-Link TL-MR3220', '', 'JNB-000028', '', '160822092955_1660613305568633.jpg', ''),
	('BR-000024', '', 'TP-Link TL-WA901ND', '', 'JNB-000014', '', '', ''),
	('BR-000028', '', 'Speaker eggel', '', 'JNB-000037', '', '160822095443_1660614856913905.jpg', ''),
	('BR-000029', '', 'D-link DGS-1100-08p', '', 'JNB-000015', '', '160822102709_1542211146.jpg', ''),
	('BR-000030', '', 'Fiber optic device', '', 'JNB-000029', '', '160822102914_ecc62f9eb1291561.jpg', ''),
	('BR-000031', '', 'JOINT Closure DOME 24', '', 'JNB-000036', '', '160822103021_1604888274_Dome_.jpg', ''),
	('BR-000032', '', 'APC SRT 2.2K 230V', '', 'JNB-000034', '', '', ''),
	('BR-000033', '', 'DELL POWEREDGE R440', '', 'JNB-000035', '', '', ''),
	('BR-000034', '', 'Lemari Besar Ivente', '', 'JNB-000009', '', '', ''),
	('BR-000035', '', 'Meja Besar Ivente', '', 'JNB-000007', '', '', '');
/*!40000 ALTER TABLE `tbl_barang` ENABLE KEYS */;

-- Dumping structure for table disignmy_inven_lab.tbl_jadwal_jenis
CREATE TABLE IF NOT EXISTS `tbl_jadwal_jenis` (
  `id_jadwal_jenis` int(11) NOT NULL AUTO_INCREMENT,
  `nama_jadwal` varchar(50) DEFAULT NULL,
  `kode_ruangan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_jadwal_jenis`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table disignmy_inven_lab.tbl_jadwal_jenis: ~2 rows (approximately)
/*!40000 ALTER TABLE `tbl_jadwal_jenis` DISABLE KEYS */;
INSERT INTO `tbl_jadwal_jenis` (`id_jadwal_jenis`, `nama_jadwal`, `kode_ruangan`) VALUES
	(1, 'Jadwal Awal Semester 2023', 'RU-000001'),
	(3, 'Jadwal 2022 Semester Genap', 'RU-000001');
/*!40000 ALTER TABLE `tbl_jadwal_jenis` ENABLE KEYS */;

-- Dumping structure for table disignmy_inven_lab.tbl_jadwal_lab_static
CREATE TABLE IF NOT EXISTS `tbl_jadwal_lab_static` (
  `id_jadwal_static` bigint(20) NOT NULL AUTO_INCREMENT,
  `kode_jadwal_jenis` varchar(50) NOT NULL DEFAULT '0',
  `hari` varchar(50) DEFAULT NULL,
  `jam_awal` time DEFAULT NULL,
  `jam_akhir` time DEFAULT NULL,
  `kode_mata_kuliah` varchar(50) DEFAULT NULL,
  `sks` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_jadwal_static`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Dumping data for table disignmy_inven_lab.tbl_jadwal_lab_static: ~3 rows (approximately)
/*!40000 ALTER TABLE `tbl_jadwal_lab_static` DISABLE KEYS */;
INSERT INTO `tbl_jadwal_lab_static` (`id_jadwal_static`, `kode_jadwal_jenis`, `hari`, `jam_awal`, `jam_akhir`, `kode_mata_kuliah`, `sks`, `status`) VALUES
	(3, '1', 'Monday', '11:50:00', '14:00:00', 'AII22620', 2, NULL),
	(4, '1', 'Monday', '14:00:00', '16:00:00', 'AII23120', 2, NULL),
	(12, '3', 'Wednesday', '12:20:00', '14:30:00', 'AII23220', 2, NULL);
/*!40000 ALTER TABLE `tbl_jadwal_lab_static` ENABLE KEYS */;

-- Dumping structure for table disignmy_inven_lab.tbl_jadwal_perubahan
CREATE TABLE IF NOT EXISTS `tbl_jadwal_perubahan` (
  `id_jadwal_static` bigint(20) NOT NULL AUTO_INCREMENT,
  `nama_jadwal` varchar(50) NOT NULL DEFAULT '0',
  `kode_ruangan` varchar(50) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam_awal` time DEFAULT NULL,
  `jam_akhir` time DEFAULT NULL,
  `kode_mata_kuliah` varchar(50) DEFAULT NULL,
  `sks` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_jadwal_static`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table disignmy_inven_lab.tbl_jadwal_perubahan: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbl_jadwal_perubahan` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_jadwal_perubahan` ENABLE KEYS */;

-- Dumping structure for table disignmy_inven_lab.tbl_jenis_barang
CREATE TABLE IF NOT EXISTS `tbl_jenis_barang` (
  `kode_jenis_barang` varchar(10) NOT NULL COMMENT 'JNB-000001',
  `nama_jenis_barang` varchar(250) DEFAULT NULL,
  `kategori` int(1) NOT NULL DEFAULT '1' COMMENT '1:elektronik,2:non_elektronik',
  PRIMARY KEY (`kode_jenis_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table disignmy_inven_lab.tbl_jenis_barang: ~38 rows (approximately)
/*!40000 ALTER TABLE `tbl_jenis_barang` DISABLE KEYS */;
INSERT INTO `tbl_jenis_barang` (`kode_jenis_barang`, `nama_jenis_barang`, `kategori`) VALUES
	('JNB-000000', 'Tidak Diketahui', 1),
	('JNB-000001', 'Monitor', 1),
	('JNB-000002', 'Mouse', 1),
	('JNB-000003', 'Keyboard', 1),
	('JNB-000004', 'Komputer Desktop', 1),
	('JNB-000005', 'Komputer AIO', 1),
	('JNB-000006', 'Kursi', 2),
	('JNB-000007', 'Meja', 2),
	('JNB-000008', 'AC', 1),
	('JNB-000009', 'Lemari', 2),
	('JNB-000010', 'Papan Tulis', 2),
	('JNB-000011', 'Proyektor', 1),
	('JNB-000012', 'Rak Besi', 2),
	('JNB-000013', 'Stavolt', 1),
	('JNB-000014', 'Access Point', 1),
	('JNB-000015', 'Switch', 1),
	('JNB-000016', 'Modem', 1),
	('JNB-000017', 'Kipas Angin', 1),
	('JNB-000018', 'Printer', 1),
	('JNB-000019', 'Kabel HDMI', 1),
	('JNB-000020', 'Headphone', 1),
	('JNB-000021', 'Crimping Tool', 1),
	('JNB-000022', 'Gimbal', 1),
	('JNB-000023', 'Converter', 1),
	('JNB-000024', 'Handphone', 1),
	('JNB-000025', 'Developer Kit', 1),
	('JNB-000026', 'CCTV', 1),
	('JNB-000027', 'Rak', 2),
	('JNB-000028', 'Router', 1),
	('JNB-000029', 'Tools', 1),
	('JNB-000030', 'Multimeter', 1),
	('JNB-000031', 'USB', 1),
	('JNB-000032', 'Kabel', 1),
	('JNB-000033', 'Konektor', 1),
	('JNB-000034', 'UPS', 1),
	('JNB-000035', 'Komputer Server', 1),
	('JNB-000036', 'Joint Closure', 1),
	('JNB-000037', 'Speaker', 1);
/*!40000 ALTER TABLE `tbl_jenis_barang` ENABLE KEYS */;

-- Dumping structure for table disignmy_inven_lab.tbl_jenis_jadwal
CREATE TABLE IF NOT EXISTS `tbl_jenis_jadwal` (
  `id_jenis_jadwal` varchar(50) NOT NULL,
  `nama_jenis` varchar(50) DEFAULT NULL,
  `kode_ruangan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_jenis_jadwal`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table disignmy_inven_lab.tbl_jenis_jadwal: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbl_jenis_jadwal` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_jenis_jadwal` ENABLE KEYS */;

-- Dumping structure for table disignmy_inven_lab.tbl_mata_kuliah
CREATE TABLE IF NOT EXISTS `tbl_mata_kuliah` (
  `kode_mata_kuliah` varchar(50) NOT NULL,
  `mata_kuliah` varchar(50) DEFAULT NULL,
  `warna` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kode_mata_kuliah`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table disignmy_inven_lab.tbl_mata_kuliah: ~30 rows (approximately)
/*!40000 ALTER TABLE `tbl_mata_kuliah` DISABLE KEYS */;
INSERT INTO `tbl_mata_kuliah` (`kode_mata_kuliah`, `mata_kuliah`, `warna`) VALUES
	('AII22620', 'Matematika Diskrit', '#F75E25'),
	('AII23120', 'Basis Data 2', '#84C3BE'),
	('AII23220', 'Pemrograman Web 1', '#C2B078'),
	('AII23320', 'Algoritma dan Pemrograman 2', '#826C34'),
	('AII23520', 'Rekayasa Perangkat Lunak 1', '#5E2129'),
	('AII43120', 'Keamanan Jaringan', '#7F7679'),
	('AII43220', 'Sistem Informasi Geografis', '#1D1E33'),
	('AII43420', 'Pemrograman Visual 2', '#633A34'),
	('AII43620', 'Multimedia', '#898176'),
	('AII52120', 'Kesehatan dan Keselamatan Kerja', '#8673A1'),
	('AII52620', 'Internet of Things', '#1E5945'),
	('EII212303', 'Basis Data', '#1F3438'),
	('EIK212304', 'Administrasi dan Manajemen Jaringan', '#3B83BD'),
	('EIK212305', 'Jaringan Komputer 2', '#633A34'),
	('EIK212306', 'Sistem Komunikasi Serat Optik', '#59351F'),
	('EIK212307', 'Sistem Operasi Jaringan', '#45322E'),
	('EIK212308', 'Teknologi Nirkabel', '#F5D033'),
	('PEP212201', 'Agama', '#382C1E'),
	('PEP212202', 'Bahasa Inggris II', '#6A5D4D'),
	('PII42320', 'IT Proyek', '#686C5E'),
	('PII53520', 'Metodologi Penelitian', '#606E8C'),
	('PIK22820', 'Pengembangan Kepribadian dan Karakter ', '#4E5754'),
	('PIK22920', 'Bahasa Inggris II', '#B8B799'),
	('PIK42720', 'Bahasa Inggris IV', '#6F4F28'),
	('PIK52220', 'Pengenalan Industri Pertanian', '#6C7156'),
	('PIK52420', 'Teknoprenersip', '#999950'),
	('PIP22720', 'Agama', '#5D9B9B'),
	('PIP42520', 'Kewarganegaraan', '#FDF4E3'),
	('PIP5232020', 'Pancasila', '#E5BE01'),
	('PIP52720', 'Bahasa Indonesia', '#6C3B2A');
/*!40000 ALTER TABLE `tbl_mata_kuliah` ENABLE KEYS */;

-- Dumping structure for table disignmy_inven_lab.tbl_mutasi_barang
CREATE TABLE IF NOT EXISTS `tbl_mutasi_barang` (
  `kode_mutasi` varchar(10) NOT NULL COMMENT 'MB-000001',
  `kode_petugas` varchar(10) DEFAULT NULL COMMENT 'PTG-00001',
  `kode_barang` varchar(100) DEFAULT NULL COMMENT 'BR-000001',
  `kode_ruangan_awal` varchar(100) DEFAULT NULL COMMENT 'RU-00001',
  `kode_ruangan_tujuan` varchar(100) DEFAULT NULL COMMENT 'RU-00001',
  `jumlah_barang` int(11) DEFAULT NULL,
  `alasan_mutasi` varchar(250) DEFAULT NULL,
  `status_persetujuan` int(11) DEFAULT NULL,
  PRIMARY KEY (`kode_mutasi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table disignmy_inven_lab.tbl_mutasi_barang: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbl_mutasi_barang` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_mutasi_barang` ENABLE KEYS */;

-- Dumping structure for table disignmy_inven_lab.tbl_petugas
CREATE TABLE IF NOT EXISTS `tbl_petugas` (
  `kode_petugas` varchar(10) NOT NULL COMMENT 'PTG-00001',
  `username` varchar(20) NOT NULL,
  `password` varchar(500) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `photo` text,
  `ruangan` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`kode_petugas`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table disignmy_inven_lab.tbl_petugas: ~3 rows (approximately)
/*!40000 ALTER TABLE `tbl_petugas` DISABLE KEYS */;
INSERT INTO `tbl_petugas` (`kode_petugas`, `username`, `password`, `name`, `email`, `photo`, `ruangan`) VALUES
	('3', 'yougie', 'd9ce856cc13f6727768ecffeaffaa3363510687b5019e0aaf368d32dac63e6bd0af6bc6bfca1a3b1e550bdcece9fbc70362401d04c85d451b75aa05fe95d2aaaWNQa/pUxI2CzLyj8XwjFdwuWecE2w2CFh4Ag4zbDvKQ=', 'Yougie Affandi', 'yougieaffandi@gmail.com', NULL, NULL),
	('4', 'arif', 'd9ce856cc13f6727768ecffeaffaa3363510687b5019e0aaf368d32dac63e6bd0af6bc6bfca1a3b1e550bdcece9fbc70362401d04c85d451b75aa05fe95d2aaaWNQa/pUxI2CzLyj8XwjFdwuWecE2w2CFh4Ag4zbDvKQ=', 'Arif Supriyanto', 'arifsupriyanto@gmail.com', NULL, NULL),
	('5', 'agus', 'd9ce856cc13f6727768ecffeaffaa3363510687b5019e0aaf368d32dac63e6bd0af6bc6bfca1a3b1e550bdcece9fbc70362401d04c85d451b75aa05fe95d2aaaWNQa/pUxI2CzLyj8XwjFdwuWecE2w2CFh4Ag4zbDvKQ=', 'Agustian Noor', 'agustiannoor@gmail.com', NULL, NULL);
/*!40000 ALTER TABLE `tbl_petugas` ENABLE KEYS */;

-- Dumping structure for table disignmy_inven_lab.tbl_pinjam
CREATE TABLE IF NOT EXISTS `tbl_pinjam` (
  `kode_pinjam` varchar(10) NOT NULL COMMENT 'PJB-000001',
  `nim` varchar(50) NOT NULL DEFAULT '',
  `id_transaksi_barang` varchar(50) NOT NULL DEFAULT '',
  `kode_ruangan` varchar(100) NOT NULL DEFAULT '' COMMENT 'RU-00001',
  `kode_barang` varchar(10) NOT NULL DEFAULT '' COMMENT 'BR-000001',
  `jumlah` int(20) NOT NULL,
  `tgl_pinjam` datetime NOT NULL,
  `tgl_kembali` datetime DEFAULT NULL,
  `status` enum('1','2') NOT NULL COMMENT '1:dipinjam,2:dikembalikan',
  PRIMARY KEY (`kode_pinjam`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table disignmy_inven_lab.tbl_pinjam: ~3 rows (approximately)
/*!40000 ALTER TABLE `tbl_pinjam` DISABLE KEYS */;
INSERT INTO `tbl_pinjam` (`kode_pinjam`, `nim`, `id_transaksi_barang`, `kode_ruangan`, `kode_barang`, `jumlah`, `tgl_pinjam`, `tgl_kembali`, `status`) VALUES
	('PJB-000004', 'A1312026', 'TRB-000005', 'RU-000001', 'BR-000003', 2, '2022-06-29 11:29:00', '2022-06-23 10:33:00', '2'),
	('PJB-000005', 'A1312026', 'TRB-000005', 'RU-000001', 'BR-000003', 1, '2022-06-23 11:34:00', '2022-06-23 10:33:00', '2'),
	('PJB-000006', 'A1312029', 'TRB-000002', 'RU-000001', 'BR-000002', 1, '2022-08-01 14:00:00', NULL, '1');
/*!40000 ALTER TABLE `tbl_pinjam` ENABLE KEYS */;

-- Dumping structure for table disignmy_inven_lab.tbl_rincian_barang
CREATE TABLE IF NOT EXISTS `tbl_rincian_barang` (
  `id_rincian` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_transaksi_barang` varchar(150) NOT NULL DEFAULT '0',
  `kode_barang` varchar(150) DEFAULT '0',
  `kode_bmn_beda` varchar(150) DEFAULT NULL,
  `tahun` varchar(150) NOT NULL DEFAULT '0',
  `kondisi` int(11) NOT NULL DEFAULT '1' COMMENT '1:baik,2:rusak ringan,3:rusak berat',
  `nub_per_unit` int(11) NOT NULL DEFAULT '0',
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id_rincian`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;

-- Dumping data for table disignmy_inven_lab.tbl_rincian_barang: ~83 rows (approximately)
/*!40000 ALTER TABLE `tbl_rincian_barang` DISABLE KEYS */;
INSERT INTO `tbl_rincian_barang` (`id_rincian`, `id_transaksi_barang`, `kode_barang`, `kode_bmn_beda`, `tahun`, `kondisi`, `nub_per_unit`, `keterangan`) VALUES
	(1, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 1, ''),
	(2, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 2, ''),
	(3, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 3, ''),
	(4, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 4, ''),
	(5, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 5, ''),
	(6, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 6, ''),
	(7, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 7, ''),
	(8, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 8, ''),
	(9, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 9, ''),
	(10, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 10, ''),
	(11, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 11, ''),
	(12, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 12, ''),
	(13, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 13, ''),
	(14, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 14, ''),
	(15, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 15, ''),
	(16, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 16, ''),
	(17, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 17, ''),
	(18, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 18, ''),
	(19, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 19, ''),
	(20, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 20, ''),
	(21, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 21, ''),
	(22, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 22, ''),
	(23, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 23, ''),
	(24, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 24, ''),
	(25, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 25, ''),
	(26, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 26, ''),
	(27, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 27, ''),
	(28, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 28, ''),
	(29, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 29, ''),
	(30, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 30, ''),
	(31, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 31, ''),
	(32, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 32, ''),
	(33, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 33, ''),
	(34, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 34, ''),
	(35, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 35, ''),
	(36, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 36, ''),
	(37, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 37, ''),
	(38, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 38, ''),
	(39, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 39, ''),
	(40, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 40, ''),
	(41, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 41, ''),
	(42, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 42, ''),
	(43, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 43, ''),
	(44, 'TRB-000004', 'BR-000005', NULL, '2020', 1, 44, ''),
	(45, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 1, ''),
	(46, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 2, ''),
	(47, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 3, ''),
	(48, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 4, ''),
	(49, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 5, ''),
	(50, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 6, ''),
	(51, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 7, ''),
	(52, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 8, ''),
	(53, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 9, ''),
	(54, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 10, ''),
	(55, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 11, ''),
	(56, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 12, ''),
	(57, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 13, ''),
	(58, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 14, ''),
	(59, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 15, ''),
	(60, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 16, ''),
	(61, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 17, ''),
	(62, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 18, ''),
	(63, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 19, ''),
	(64, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 20, ''),
	(65, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 21, ''),
	(66, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 22, ''),
	(67, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 23, ''),
	(68, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 24, ''),
	(69, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 25, ''),
	(70, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 26, ''),
	(71, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 27, ''),
	(72, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 28, ''),
	(73, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 29, ''),
	(74, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 30, ''),
	(75, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 31, ''),
	(76, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 32, ''),
	(77, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 33, ''),
	(78, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 34, ''),
	(79, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 35, ''),
	(80, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 36, ''),
	(81, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 37, ''),
	(82, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 38, ''),
	(83, 'TRB-000001', 'BR-000004', NULL, '2020', 1, 39, '');
/*!40000 ALTER TABLE `tbl_rincian_barang` ENABLE KEYS */;

-- Dumping structure for table disignmy_inven_lab.tbl_ruangan
CREATE TABLE IF NOT EXISTS `tbl_ruangan` (
  `kode_ruangan` varchar(100) NOT NULL COMMENT 'RU-000001',
  `nama_ruangan` varchar(50) NOT NULL,
  `nama_gedung` varchar(50) NOT NULL,
  `kode_jadwal` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kode_ruangan`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table disignmy_inven_lab.tbl_ruangan: ~9 rows (approximately)
/*!40000 ALTER TABLE `tbl_ruangan` DISABLE KEYS */;
INSERT INTO `tbl_ruangan` (`kode_ruangan`, `nama_ruangan`, `nama_gedung`, `kode_jadwal`) VALUES
	('RU-000001', 'Laboratorium Komputer Linus Trovald', 'Gedung Teknik Informatika ,Lantai 3', NULL),
	('RU-000002', 'Laboratorium Komputer kenneth thompson', 'Gedung Teknik Informatika ,Lantai 3', NULL),
	('RU-000003', 'Laboratorium Komputer A', 'Gedung TI B', NULL),
	('RU-000004', 'Laboratorium Komputer B', 'Gedung TI B', NULL),
	('RU-000005', 'Laboratorium Komputer Steve Jobs', 'Gedung Teknik Informatika ,Lantai 3', NULL),
	('RU-000006', 'Laboratorium Komputer Bill Gates', 'Gedung Teknik Informatika ,Lantai 3', NULL),
	('RU-000007', 'Laboratorium Data Center', 'Gedung Teknik Informatika ,Lantai 1', NULL),
	('RU-000008', 'Laboratorium IOT', 'Gedung Teknik Informatika ,Lantai 1', NULL),
	('RU-000009', 'Laboratorium Komputer Phyton', 'Gedung Teknik Informatika ,Lantai 2', NULL);
/*!40000 ALTER TABLE `tbl_ruangan` ENABLE KEYS */;

-- Dumping structure for table disignmy_inven_lab.tbl_stock_opname_barang
CREATE TABLE IF NOT EXISTS `tbl_stock_opname_barang` (
  `id_so_barang` bigint(20) NOT NULL AUTO_INCREMENT,
  `kode_barang` varchar(250) NOT NULL DEFAULT '',
  `kode_ruangan` varchar(250) DEFAULT NULL,
  `tanggal` varchar(250) DEFAULT NULL,
  `jumlah` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id_so_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table disignmy_inven_lab.tbl_stock_opname_barang: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbl_stock_opname_barang` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_stock_opname_barang` ENABLE KEYS */;

-- Dumping structure for table disignmy_inven_lab.tbl_transaksi_bahan
CREATE TABLE IF NOT EXISTS `tbl_transaksi_bahan` (
  `id_transaksi_bahan` varchar(12) NOT NULL COMMENT 'TRH-0000001',
  `kode_ruangan` varchar(100) NOT NULL,
  `kode_bahan` varchar(10) NOT NULL,
  `jml_bahan` int(5) NOT NULL,
  `tanggal_bahan` date DEFAULT NULL,
  PRIMARY KEY (`id_transaksi_bahan`) USING BTREE,
  KEY `FK_tbl_transaksi_bahan_tbl_bahan` (`kode_bahan`),
  CONSTRAINT `FK_tbl_transaksi_bahan_tbl_bahan` FOREIGN KEY (`kode_bahan`) REFERENCES `tbl_bahan` (`kode_bahan`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table disignmy_inven_lab.tbl_transaksi_bahan: ~21 rows (approximately)
/*!40000 ALTER TABLE `tbl_transaksi_bahan` DISABLE KEYS */;
INSERT INTO `tbl_transaksi_bahan` (`id_transaksi_bahan`, `kode_ruangan`, `kode_bahan`, `jml_bahan`, `tanggal_bahan`) VALUES
	('TRH-000001', 'RU-000005', 'BH-000004', 10, '2022-07-26'),
	('TRH-000002', 'RU-000005', 'BH-000001', 12, '2022-07-26'),
	('TRH-000003', 'RU-000005', 'BH-000002', 2, '2022-07-26'),
	('TRH-000004', 'RU-000005', 'BH-000003', 15, '2022-07-26'),
	('TRH-000005', 'RU-000005', 'BH-000005', 1, '2022-07-26'),
	('TRH-000006', 'RU-000005', 'BH-000006', 15, '2022-07-26'),
	('TRH-000007', 'RU-000005', 'BH-000007', 2, '2022-07-26'),
	('TRH-000008', 'RU-000005', 'BH-000008', 4, '2022-07-26'),
	('TRH-000009', 'RU-000005', 'BH-000009', 2, '2022-07-26'),
	('TRH-000010', 'RU-000005', 'BH-000010', 2, '2022-07-26'),
	('TRH-000011', 'RU-000005', 'BH-000001', 22, '2022-07-26'),
	('TRH-000012', 'RU-000007', 'BH-000011', 8, '2022-08-16'),
	('TRH-000013', 'RU-000007', 'BH-000012', 9, '2022-08-16'),
	('TRH-000014', 'RU-000007', 'BH-000013', 17, '2022-08-16'),
	('TRH-000015', 'RU-000007', 'BH-000014', 6, '2022-08-16'),
	('TRH-000016', 'RU-000007', 'BH-000015', 5, '2022-08-16'),
	('TRH-000017', 'RU-000007', 'BH-000016', 15, '2022-08-16'),
	('TRH-000018', 'RU-000007', 'BH-000017', 15, '2022-08-16'),
	('TRH-000019', 'RU-000007', 'BH-000018', 9, '2022-08-16'),
	('TRH-000020', 'RU-000007', 'BH-000019', 1, '2022-08-16'),
	('TRH-000021', 'RU-000007', 'BH-000020', 7, '2022-08-16');
/*!40000 ALTER TABLE `tbl_transaksi_bahan` ENABLE KEYS */;

-- Dumping structure for table disignmy_inven_lab.tbl_transaksi_barang
CREATE TABLE IF NOT EXISTS `tbl_transaksi_barang` (
  `id_transaksi_barang` varchar(12) NOT NULL COMMENT 'TRB-0000001',
  `kode_ruangan` varchar(100) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `jml_barang` int(5) NOT NULL,
  `status_ganerate` int(11) NOT NULL DEFAULT '0' COMMENT '0:belum,1:sudah',
  `tanggal_barang` date DEFAULT NULL,
  PRIMARY KEY (`id_transaksi_barang`),
  KEY `FK_tbl_transaksi_barang_tbl_barang` (`kode_barang`),
  CONSTRAINT `FK_tbl_transaksi_barang_tbl_barang` FOREIGN KEY (`kode_barang`) REFERENCES `tbl_barang` (`kode_barang`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table disignmy_inven_lab.tbl_transaksi_barang: ~32 rows (approximately)
/*!40000 ALTER TABLE `tbl_transaksi_barang` DISABLE KEYS */;
INSERT INTO `tbl_transaksi_barang` (`id_transaksi_barang`, `kode_ruangan`, `kode_barang`, `jml_barang`, `status_ganerate`, `tanggal_barang`) VALUES
	('TRB-000001', 'RU-000001', 'BR-000004', 40, 1, NULL),
	('TRB-000002', 'RU-000001', 'BR-000002', 40, 0, NULL),
	('TRB-000003', 'RU-000001', 'BR-000001', 40, 0, NULL),
	('TRB-000004', 'RU-000001', 'BR-000005', 44, 1, NULL),
	('TRB-000005', 'RU-000001', 'BR-000003', 40, 0, NULL),
	('TRB-000006', 'RU-000002', 'BR-000006', 37, 0, NULL),
	('TRB-000007', 'RU-000007', 'BR-000007', 10, 0, '2022-01-21'),
	('TRB-000008', 'RU-000007', 'BR-000008', 4, 0, '2022-01-21'),
	('TRB-000009', 'RU-000007', 'BR-000009', 5, 0, '2022-01-21'),
	('TRB-000010', 'RU-000007', 'BR-000010', 5, 0, '2022-01-21'),
	('TRB-000011', 'RU-000007', 'BR-000011', 20, 0, '2022-01-21'),
	('TRB-000012', 'RU-000007', 'BR-000012', 15, 0, '2022-01-21'),
	('TRB-000013', 'RU-000007', 'BR-000013', 4, 0, '2022-01-21'),
	('TRB-000014', 'RU-000007', 'BR-000014', 4, 0, '2022-01-21'),
	('TRB-000015', 'RU-000007', 'BR-000015', 30, 0, '2022-01-21'),
	('TRB-000016', 'RU-000007', 'BR-000016', 30, 0, '2022-01-21'),
	('TRB-000017', 'RU-000007', 'BR-000017', 20, 0, '2022-01-21'),
	('TRB-000018', 'RU-000007', 'BR-000018', 10, 0, '2022-01-21'),
	('TRB-000019', 'RU-000007', 'BR-000019', 13, 0, '2022-01-21'),
	('TRB-000020', 'RU-000007', 'BR-000020', 2, 0, '2022-01-21'),
	('TRB-000021', 'RU-000007', 'BR-000021', 30, 0, '2022-01-21'),
	('TRB-000022', 'RU-000007', 'BR-000022', 5, 0, '2022-08-16'),
	('TRB-000023', 'RU-000007', 'BR-000023', 5, 0, '2022-08-16'),
	('TRB-000024', 'RU-000007', 'BR-000024', 2, 0, '2022-08-16'),
	('TRB-000028', 'RU-000007', 'BR-000028', 1, 0, '2022-08-16'),
	('TRB-000029', 'RU-000007', 'BR-000029', 19, 0, '2022-08-16'),
	('TRB-000030', 'RU-000007', 'BR-000030', 28, 0, '2022-08-16'),
	('TRB-000031', 'RU-000007', 'BR-000031', 6, 0, '2022-08-16'),
	('TRB-000032', 'RU-000007', 'BR-000032', 2, 0, '2022-08-16'),
	('TRB-000033', 'RU-000007', 'BR-000033', 4, 0, '2022-08-16'),
	('TRB-000034', 'RU-000007', 'BR-000034', 3, 0, '2020-01-01'),
	('TRB-000035', 'RU-000007', 'BR-000035', 2, 0, '2020-01-01');
/*!40000 ALTER TABLE `tbl_transaksi_barang` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
