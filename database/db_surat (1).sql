-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 26 Apr 2023 pada 08.43
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
-- Database: `db_surat`
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
(2, 'a', 'MUTU DAN SUMBER DAYA PELAYANAN NON MEDIK'),
(3, 'b', 'PERBEKALAN DAN PEMELIHARAAN SARANA PRASARANA NON MEDIK');

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
(282, 'sidebar_view_transaksi', 'Module sidebar');

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
-- Struktur dari tabel `auth_user`
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
-- Dumping data untuk tabel `auth_user`
--

INSERT INTO `auth_user` (`id_user`, `name`, `nip`, `photo`, `email`, `password`, `kode_ruangan`, `token`, `last_login`, `ip_address`, `is_active`, `created`, `modified`, `is_delete`) VALUES
(1, 'jakaria', '', '200522145337_download.png', 'admin@admin.com', '$2y$10$KuDwoERWCthWuckdV1hJz.6azZ8BtgPzqJuOAT/Ltx8mCKJKOymry', 'RU-000001,RU-000007,RU-000008,RU-000009', '71521d92376191f68e7dabca51344e1b', '2023-04-26 15:39:00', '::1', '1', '2022-05-19 13:36:00', '2023-01-17 10:28:22', '0'),
(2, 'jaka', '', '', 'jakarialucky@gmail.com', '$2y$10$bMLeY71gA7k3Bl3GZ5Hdv.x9BqYdtFY0EPN2Zn8ab33aj6aklJh1.', 'RU-000007,RU-000008,RU-000009', '8b824e4488001280a3e093883cd6adbc', '2022-12-26 08:03:00', '125.164.98.110', '1', '2022-05-23 08:50:48', '2022-12-05 10:33:16', '1'),
(3, 'Arif Supriyanto', '', '060323003335_Foto_Biru_2.JPG', 'arif@politala.ac.id', '$2y$10$mqUht1gEEDD2AvjPP..W8etwnO6TXywBXqIZXBQx7.Xuwtq0VWPAm', 'RU-000001', '5afe5e14fe78f54541dc6f280f67de54', '2023-03-06 00:33:00', '125.164.99.114', '1', '2022-06-23 13:09:43', '2023-03-06 00:33:35', '1'),
(4, 'heri', '', '', 'heri@politala.ac.id', '$2y$10$Z27XWtjPBk1Wt9cndr040OS5y82cROqb3ZLyerCYti.IpOTwIjrkK', 'RU-000003,RU-000004', '41277dbab627aa13d970ef3d4e03042b', NULL, NULL, '1', '2022-07-22 10:55:34', NULL, '1'),
(5, 'sylvia tantina', '', '', 'sylviatantina@politala.ac.id', '$2y$10$sUznuirbnchG32938izcCukLLtB/i4ARghvYTqsIK0fmuqWAu3pFm', 'RU-000006,RU-000009', 'fe88be50145cfe023fa8230a9c3a0a8a', NULL, NULL, '1', '2022-07-22 10:56:30', NULL, '1');

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
(2, 2),
(3, 2),
(4, 2),
(5, 2);

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

--
-- Dumping data untuk tabel `ci_user_log`
--

INSERT INTO `ci_user_log` (`id`, `user`, `ip_address`, `controller`, `url`, `data`, `created_at`) VALUES
(1, 1, '::1', 'Setting', '/template_metro_ci/cpanel/setting/core.html', NULL, '2023-04-26 08:34:49'),
(2, 1, '::1', 'Setting', '/template_metro_ci/cpanel/setting/core.html', NULL, '2023-04-26 08:45:28'),
(3, 1, '::1', 'Setting', '/template_metro_ci/cpanel/setting/core.html', NULL, '2023-04-26 08:53:11'),
(4, 1, '::1', 'Setting', '/template_metro_ci/cpanel/setting/core.html', NULL, '2023-04-26 08:54:35'),
(5, 1, '::1', 'Setting', '/template_metro_ci/cpanel/setting/core.html', NULL, '2023-04-26 08:55:29'),
(6, 1, '::1', 'title', '/template_metro_ci/cpanel/dashboard.html', NULL, '2023-04-26 08:55:42'),
(7, 1, '::1', 'title', '/template_metro_ci/cpanel/dashboard.html', NULL, '2023-04-26 08:56:34'),
(8, 1, '::1', 'title', '/template_metro_ci/cpanel/dashboard.html', NULL, '2023-04-26 08:56:51'),
(9, 1, '::1', 'User', '/template_metro_ci/cpanel/user.html', NULL, '2023-04-26 08:57:04'),
(10, 1, '::1', 'User', '/template_metro_ci/cpanel/user.html', NULL, '2023-04-26 09:02:01'),
(11, 1, '::1', 'User', '/template_metro_ci/cpanel/user.html', NULL, '2023-04-26 09:02:59'),
(12, 1, '::1', 'User', '/template_metro_ci/cpanel/user.html', NULL, '2023-04-26 09:03:25'),
(13, 1, '::1', 'User', '/template_metro_ci/cpanel/user.html', NULL, '2023-04-26 09:03:53'),
(14, 1, '::1', 'User', '/template_metro_ci/cpanel/user.html', NULL, '2023-04-26 09:03:56'),
(15, 1, '::1', 'User', '/template_metro_ci/cpanel/user.html', NULL, '2023-04-26 09:04:09'),
(16, 1, '::1', 'User', '/template_metro_ci/cpanel/user.html', NULL, '2023-04-26 09:05:23'),
(17, 1, '::1', 'User', '/template_metro_ci/cpanel/user.html', NULL, '2023-04-26 09:06:05'),
(18, 1, '::1', 'title', '/template_metro_ci/cpanel/dashboard.html', NULL, '2023-04-26 09:06:07'),
(19, 1, '::1', 'User', '/template_metro_ci/cpanel/user.html', NULL, '2023-04-26 09:06:09'),
(20, 1, '::1', 'User', '/template_metro_ci/cpanel/user.html', NULL, '2023-04-26 09:20:35'),
(21, 1, '::1', 'title', '/template_metro_ci/cpanel/dashboard.html', NULL, '2023-04-26 09:20:36'),
(22, 1, '::1', 'title', '/template_metro_ci/cpanel/dashboard.html', NULL, '2023-04-26 09:20:41'),
(23, 1, '::1', 'title', '/template_metro_ci/cpanel/dashboard.html', NULL, '2023-04-26 09:36:19'),
(24, 1, '::1', 'title', '/template_metro_ci/cpanel/dashboard.html', NULL, '2023-04-26 09:36:26'),
(25, 1, '::1', 'title', '/template_metro_ci/cpanel/dashboard.html', NULL, '2023-04-26 09:44:27'),
(26, 1, '::1', 'title', '/template_metro_ci/cpanel/dashboard.html', NULL, '2023-04-26 09:45:16'),
(27, 1, '::1', 'File manager', '/template_metro_ci/cpanel/filemanager.html', NULL, '2023-04-26 09:45:54'),
(28, 1, '::1', 'Setting', '/template_metro_ci/cpanel/setting.html', NULL, '2023-04-26 09:46:14'),
(29, 1, '::1', 'Group', '/template_metro_ci/cpanel/group.html', NULL, '2023-04-26 09:46:19'),
(30, 1, '::1', 'title', '/template_metro_ci/cpanel/dashboard.html', NULL, '2023-04-26 09:50:23'),
(31, 1, '::1', 'title', '/template_metro_ci/cpanel/permission.html', NULL, '2023-04-26 09:50:28'),
(32, 1, '::1', 'title', '/template_metro_ci/cpanel/permission/delete.html', '{\"id\":\"0cddb65f004568f0b5864ba2d6942fa34391445229853b19be495bdf871ad154762249d2ba29f482efabaffe4c1d9c32caa7f7ccc2cfe0afc21749eb490e8b42JcdmeAnJoMu5qInx7kFtmN2FNwkLoO8ZazAlRp~Hn1M-,5e214d5424dace4202f810062519897eaa278ed21092557f484ea2285197d55501c8c5871e1fc2669951214a126eb403cd9f504edb2ded1d513d75a7bc1f1819seRXiuLIMgkw28yBIgQDik4vPVxNEehmLKJkSS4nYWY-,041b3cc08d6d42a008c6e4b028ac211712b7d853c725d428bb9f53ff3eb20d04e11feff11d2a5eb5f118dbdfb9d1febceecf7759ab7c2d31ad9eef4fdea6ead9u2pVKUYbnToeuElCaSYtMPXgfrxS~8G6HktF6TvaXQc-,3e2f8a5d53052d0ef15c50c6192616565848e869ce5181d5ade97b869617535991e887ab3270e8f3d5376b39e4ef6725947605555b3478b1aba9af49beedff6728T16xwrn6S_idRt2dMPA9hz4Q~Yc3dc2OR2O~XesH8-,a2d019b9c1961c0de33158ae3e820393cde48e9c7d1fe72e0bfb0d9af155d007db4d87d134345f80fb9c6c52bec80b9036423832e11c38bc99ab6f74ee6665f9B4q2Sdvq9Nq3HmcaDFk9nApthgLIqifSVWAKxeRdCQk-,13e34440c3378d82f73277a5121e41d3fe015096ab36cc53396026f40a5ef397abc8849a7106f55a77d7db42d49fd5635eb20d9befdf1ad86336a73db797a507imV0EknKigsRcDueGCDR2gMHSTQGLy2tFoEvlRaX9MQ-,8112c63386ed9aeedc13722d978dc9368401b0ed0361e4f383cf1e98bbec8c0bbb7f6325169c4fdff747100e6f7c0b77c9279cdce6dbe40cf1255c4a199138c5DMSQzaFmv~khJXlICQmpx3Po5JcDWirDxRcpjxJ8KmI-,3746ccd60e411c3a5017593bf255ef5ce39d3ed5238ab999df1aad13760f05e30f170051be991bf7a80afa9620c8ece9c45eb99c126be061c7af272a41a30f22bTNVmx2A6BItCy_8sLC32FZO7QCmXivVGLnllD~5S6E-,34d20f5684e6384f38d7b6aa60f55ab38f3c2fb886cd2c2aa628905b044c44b3ee5176b24731faa5ca2ce3ba5571f09741bc4578057e332e69659a76b8082924W8NzjCNSXoslkDD2SjheGHh8wqS9Cg_gDNUxztcmmRs-,c5df070aeb4be510a7f826363a3d18799a2eaec934b9e761ceb6b6e8d09b7ce23e95899dfc8d0d97e3feca6ab18e7ec1c69a7569ef45e4c52650b9c21744638bB8Js1K69abx7hzoJ37PtneUJfJfGDh8JsVnLuc1ckPw-\"}', '2023-04-26 09:51:08'),
(33, 1, '::1', 'title', '/template_metro_ci/cpanel/permission/delete.html', '{\"id\":\"0cddb65f004568f0b5864ba2d6942fa34391445229853b19be495bdf871ad154762249d2ba29f482efabaffe4c1d9c32caa7f7ccc2cfe0afc21749eb490e8b42JcdmeAnJoMu5qInx7kFtmN2FNwkLoO8ZazAlRp~Hn1M-,5e214d5424dace4202f810062519897eaa278ed21092557f484ea2285197d55501c8c5871e1fc2669951214a126eb403cd9f504edb2ded1d513d75a7bc1f1819seRXiuLIMgkw28yBIgQDik4vPVxNEehmLKJkSS4nYWY-,041b3cc08d6d42a008c6e4b028ac211712b7d853c725d428bb9f53ff3eb20d04e11feff11d2a5eb5f118dbdfb9d1febceecf7759ab7c2d31ad9eef4fdea6ead9u2pVKUYbnToeuElCaSYtMPXgfrxS~8G6HktF6TvaXQc-,3e2f8a5d53052d0ef15c50c6192616565848e869ce5181d5ade97b869617535991e887ab3270e8f3d5376b39e4ef6725947605555b3478b1aba9af49beedff6728T16xwrn6S_idRt2dMPA9hz4Q~Yc3dc2OR2O~XesH8-,a2d019b9c1961c0de33158ae3e820393cde48e9c7d1fe72e0bfb0d9af155d007db4d87d134345f80fb9c6c52bec80b9036423832e11c38bc99ab6f74ee6665f9B4q2Sdvq9Nq3HmcaDFk9nApthgLIqifSVWAKxeRdCQk-,13e34440c3378d82f73277a5121e41d3fe015096ab36cc53396026f40a5ef397abc8849a7106f55a77d7db42d49fd5635eb20d9befdf1ad86336a73db797a507imV0EknKigsRcDueGCDR2gMHSTQGLy2tFoEvlRaX9MQ-,8112c63386ed9aeedc13722d978dc9368401b0ed0361e4f383cf1e98bbec8c0bbb7f6325169c4fdff747100e6f7c0b77c9279cdce6dbe40cf1255c4a199138c5DMSQzaFmv~khJXlICQmpx3Po5JcDWirDxRcpjxJ8KmI-,3746ccd60e411c3a5017593bf255ef5ce39d3ed5238ab999df1aad13760f05e30f170051be991bf7a80afa9620c8ece9c45eb99c126be061c7af272a41a30f22bTNVmx2A6BItCy_8sLC32FZO7QCmXivVGLnllD~5S6E-,34d20f5684e6384f38d7b6aa60f55ab38f3c2fb886cd2c2aa628905b044c44b3ee5176b24731faa5ca2ce3ba5571f09741bc4578057e332e69659a76b8082924W8NzjCNSXoslkDD2SjheGHh8wqS9Cg_gDNUxztcmmRs-,c5df070aeb4be510a7f826363a3d18799a2eaec934b9e761ceb6b6e8d09b7ce23e95899dfc8d0d97e3feca6ab18e7ec1c69a7569ef45e4c52650b9c21744638bB8Js1K69abx7hzoJ37PtneUJfJfGDh8JsVnLuc1ckPw-\"}', '2023-04-26 09:51:14'),
(34, 1, '::1', 'title', '/template_metro_ci/cpanel/permission.html', NULL, '2023-04-26 09:51:21'),
(35, 1, '::1', 'title', '/template_metro_ci/cpanel/permission/delete.html', '{\"id\":\"0dc892fd1e506ede2d1f288d5f6da13e52175a3935d00341ee4df152e373794040c46a4b2bfd66bd70d3ce538bd551acb31df22dabfb67de35e6d752d6e5acd4LUf2WWvLbQOqqW0A97U2x2iKKTvbY4KEjWvvXMcB_m4-,970a6d85d97623a7354b54a8f5ce894a5321587da0fbda4820cea7d57d4f3b27bc375861c3d8aba1cdc3faf1a2b2e41aae9f0d6d4f11fbefaaff0ff2b7d3b8a9y~KBYIZXc7hSz1P5XpKqcjk5RlVe7FfBvJ6V30iNYZA-,73c0c82632c43cf41517f8bcc7a75ce43114f864c7549d898876d3272447076e09a02ce235445b5fab09368c704ec88faa23dad9a2944299a7151d4d6035f079YBLtwbF2NQpFyl7NAt23~VsoOoVj9ELV2znz2iN8gzE-,5f5822e9dc0015d56f7f5581ca7e41ff4a64f6b7652ace18aadd2ae2c64c16ca7570af18bc80804f30720ee48d361600757be382189ebf1abd3e3a51239cd3b0BpZQvv16kPN7fm7tSrNIKwPviCyCk6Dn9SwV9SsqLfM-,e936c1befe6576e0fd2422a7320e2bdb972e10a1f1f322b315d0188b1447f9013385d77388e7aadb31d622ce5103984a31708b77075ca338136ccaacf2ab0d74F7MI6v7UQrrpf8tRuFVP9bn2hfBfuAOj7~tAUvkB0Tc-,4ee26d44d79cdad464ec7e8bfc72b783e38c34810c26cabb428f80b02478df43a08b5bb36a169f2e183191b14e30505d40c48e17fd09370250dc7c9009fc33benPBtrBjoNLkS8N4w~ZyfcuOxaP_4jt0tDVnc3v6tfbo-,b9e13ad36ca76c0a74621f209a5d104bf36a29ff9fe7d011eaf7a33d3588008db7594a4d1f06ba1b8b70dbe17ed975784f51a3f60160852911416b22a5e967cfM~ZncYZjdfZIw8fGFKUO3UfXjG93NpUsU0qs5Z1kYtg-,c42a8d63899a50875b241d947397ca7090fded58cb09fdd814dc4167d9d9a1eaf10c7de188cc7a5a786f0305eb9caf2abe59e3848a403e0c62a33f73e073612bKlUMhx2BO~VcLvdcMHLqJr5E9ttIy6hnTX1_2eO5P~4-,e6afb0395730ca88bef268f791000e60d928da7e91414c9f581579e9cac9d74676f4189a10e349d22f098f855a3e6078aea7eb097b170572b37474b1ec444dd1gXXofrfUYPGJxhJtZdt8K~Fg~5KQNMVQOuM535FwNfg-,1093d61493281db42e6a1d81faddcb94d318c777768d27d888d288005eeff2dca1235d7a89f6e1fee1fc2d6122b8e3c671f82abd3d67a818228cf2452e1aca58n2by3DUNadNJMaVpe9ruqkBPEjZd1J2paNzuHfTF4M0-\"}', '2023-04-26 09:51:42'),
(36, 1, '::1', 'title', '/template_metro_ci/cpanel/permission.html', NULL, '2023-04-26 09:51:43'),
(37, 1, '::1', 'title', '/template_metro_ci/cpanel/dashboard.html', NULL, '2023-04-26 10:12:28'),
(38, 1, '::1', 'title', '/template_metro_ci/cpanel/dashboard.html', NULL, '2023-04-26 10:12:58'),
(39, 1, '::1', 'title', '/template_metro_ci/cpanel/dashboard.html', NULL, '2023-04-26 10:14:40'),
(40, 1, '::1', 'title', '/template_metro_ci/cpanel/dashboard.html', NULL, '2023-04-26 10:15:18'),
(41, 1, '::1', 'title', '/template_metro_ci/cpanel/dashboard.html', NULL, '2023-04-26 10:15:33'),
(42, 1, '::1', 'title', '/template_metro_ci/cpanel/dashboard.html', NULL, '2023-04-26 10:18:35'),
(43, 1, '::1', 'File manager', '/template_metro_ci/cpanel/filemanager.html', NULL, '2023-04-26 10:45:34'),
(44, 1, '::1', 'File manager', '/template_metro_ci/cpanel/filemanager/delete.html', '{\"id\":\"6d577d26d7063de0cefba0b08c779c37d462c63d60e9c044654c6edd7752021321f2dbe3337cfbd4053d89cff3c9fe5558a317f69a4f5ec43a17be2907a12fc0gNyHgCibrwk02idzEDTb794ayhWEicyE4A9Ef1r7M~w-,e885c22e3ef327c4db7d313e23d7e6eb1c88bb09afeb9618585e926a3bc2518543637712badcb164875e8a21897115b231a960da80067a438f18be94ceac1b22HWCj6WNFLO39zS44hGGE0xx9Gj6wMdBbXu7r9PlljVA-,ddd37bb4f0c8c49a50ae784d49fe5f376f880f5cf03fab4bbb8f3fca7d1ed98da7ecfb10547d5cad2f2226ea8ba1d0116c2fbd3ed035c0a461d9d5dee48b686cBdY7xZRJGPa6M8MEbWKLE44~XeOgwn8zrt1sHYk38YY-,1066e19df328e9f712b157bdc52a3ce9203bc51114109499e3d0ea34924773b0fdf5feba4490607854ef15fcbe3c5ca1ace9a9a9a4b2849a2909c9731b0eaa3bss1TYLf1qFSPtgmCOBBszn~1rjzoJmZsl96Ev695vO0-,70e0f5cfd25c351321e32e534de52f4515ea6839b82fee0ac4eadf55429b41e2ade6978517f88efccfdd3af5b55cc5cc5448a8991410d75caafbcd508952f295JrQN38Cqkb5kicD9jfcUaWoFwCH28mgBMzV~wwr7YkU-,35454c773e21940b7cf9deb3a5977338fda581a8da9788e7fd947e0bf48d3e5c3deb209dfccf2eaae34e5ad27cffa6f86b005d706fa37801194d431eec4472c9YCedEtxMtmate2~Q28FVU3r6QeHqlso8lgN9CnIM70w-,e2911089355cfc23e9599de114780bdde7fd659982b8b94900c404b54ca89f1060fd57661a7b82a865dfb5d69bcc2fd5489d45e47bf04f54949572df74a58a20TrU1mEBSsvzhSYsGgMt0eupyH5n8MbaDwbUgwu_xq0I-,d880b80232d40dddaadfd3b574b415351fe776f954f361bb3127818e5e7eccc2e1482c318c952b6505c595c64808f2b1701878bd46af466970f223060b1716d3GjcWQZDjO0WSDURDezu3t~pOdgP0jAM~hzFaFNeRIbA-,b6243a4485c5391cac193e9d3f08528e927592e4462166eee33476442b0f6e76d6e45f8f82a84e5e6ce28df2a8129a0f9862ae04c96ccf140b55ec4d0c3f31fbkI987o6m3s1KsSxhJPy8MaISb14YV9rnCL5kptSyv_E-,b55940e237322ff36b1c597ff5827cf871d086be913a2ec55a7e92649f59c0f6687939a5a043fc38eed396ea866ec32df26f48fb26bb55c088e9ff6ab7b4e3052QxFQrZS3qnfoude3IUhn0MzfKz0yLNs5_DNeFfxJ5c-\"}', '2023-04-26 10:48:21'),
(45, 1, '::1', 'File manager', '/template_metro_ci/cpanel/filemanager.html', NULL, '2023-04-26 10:48:22'),
(46, 1, '::1', 'File manager', '/template_metro_ci/cpanel/filemanager/delete.html', '{\"id\":\"4d8ea5848054fc91ecf4d2d78e7dffe802ebebaee09bca7335a20aae0d8ba621f176ddd748a344b6cd8f51697a69e3642b6b9fedc856e53bf4aa0f1fa42520af1aa25b6n2BvWp8rF41p_V8~l8S_oLKHjABecf9pWyd4-,d1d416f7903540f37dbbce45469309da75e21169ab83306aa74dd394edae0a4c203c7147e64bedb025d85f7dd8d2820a48ccc72ffa0eea608b61292973445086RSvCmB5iFtnwwQ1JXbGf60fu3ckZdM_BTfondqIsNoM-,0837904365bd4fc8a513a3f74b59f7a249b0518ef4f26e96acfe58248ab8598faa33fe7729fcdaf111c73237aa9de44f6d63196fc33e613a97581433d238cb3dJWXB~iRg~Vh0IgjUDEbU~uEcE6WbnPTJ3luYz1hU7UE-,5952098eb2362575829b7ce1cb1b96eaa1cd7317dec3ca9cb7769d1148c37ccd8251f2870049f23ded7a7a2128732f4f7b7b521a43690cdbd3957f6ba8e277b0Ns3FuCwwZ9QEs6Y18K~R7DBdBFCzDiG9eucvi6cOwvM-,7f332ed5827f9544a221a639fd4e113d12ab681dbfee97d89439bf3a863587072cdf738f9ac90387f508669d6bb64aac326e2d0296b9f36c791da8aafc0fda40O4zaqR5bTdi0JozxlAxSoRwSP6393pynd~JOtYQQmQ8-,eb5278f8a7b7f12feebfc0a0b3881e63d36ac60be0dcff51ad1ebe31b6ada4144253737ff46a32a171e3e855ff73e3456f010b346f0c98b904fc715ae0aa2af1pfO8SBn39xDGGvXm9qxDCqp_0MzyLbRzAyEkQivUbBE-,ea200f0f44abcd98c4f2003d45b6275a40dfb21c5dd3496839fc93f152f8d39eb12988ae3e71fae159e6b15b175aba10a2a52ca930b1aab8a1491e8a3d113957OKuyAH3TEqTqMEtis~~~gSagIO1PL_96DOoYiiu2rcA-,93f6c860f5581232a719b83d72afb67b6db94da711beee4b144ecf0f1f255a8386e720ce3812eee9bf3a286509c945ccfedfc2ae6c8e66ae40419f12a5bf5ea13K_yRyp5kqWDbgIwynbBCe5swVWqWKDTXGFepKIF~bY-,f6548e963a911412a1bce7e1d733a1c2453765a7f4220b31f2c44f64549bfebbd08254dfc6f1f39a03da2fe2ddea8e8c0057db546c8f4b29b1f5d45aaa7d9838fQGvtULw064Y7WSoahcYHTajtLyAXU2VAs5AYx9nOao-,ca6647ae8a1be975dddf20f719b5aebb4085135225ce57d658ef8e428dfff1756bb4722f18fa2f470d3722afa5fcc978771b5cf25fc7399292100b66100ed1eeYAXkxnU86tDxAyGuIhSeZ0z3w0o8m1pJdvgnaeikhXA-\"}', '2023-04-26 10:48:40'),
(47, 1, '::1', 'File manager', '/template_metro_ci/cpanel/filemanager.html', NULL, '2023-04-26 10:48:41'),
(48, 1, '::1', 'File manager', '/template_metro_ci/cpanel/filemanager/delete.html', '{\"id\":\"90c4c0f5fd126b0476b4b5dbf60a3affe79a189e1517c1af1061484611703aa8dbcafa2af1fb12aa0c1f7bfc0360ed84b092776fa239c2b7f1bb01c2d585ca6fEyOXcvF1n9wpP2DLtMX8RjC_d2col_uHrpA6uF0fSJw-,e782d0c649a09595df46e882304e3c4365771255531d55e41ca42ce21a662930f922e335d1cca4b73414a46f5c940d8481b314f6f453bcb9c0e9dd5e93a9074c6YARqBUWd0ZgJ0HSVfc0MckWvtXfOvopc66T0VmQi5U-,64af86e9a6bcae5f1c2536a9da030743a97f035143452654699878251f78ec5e60950487ee787dc3229acd28385b498c1b1cba7b97090989c8f083f16a4efd088WTP8Y2CZ570GxKW~g9vSQEEMmyEHOp4uz2T600xP6w-,95abd9dd052570c243be0f9791c744c3047c607019ec924e20ca72571ce14b56662a8e96cadb3f4bc953a9506b9acf18883adf4fa52e22b572ebb09ce0bdee7cXTZ3J4v1gF2Bh6G2R~OSBeo7pdJpLimwaPrttCP3QKw-,c682a0ee38449fe9736b24d6cdd0603f885bed4e8cdc5912c81a2de03808bdb3b9758c03f6ee2bfb208b236a5a1f8da15910ce0d7e800c3155d4c46ddbbaea9fZXN4ES~8V9dv89N0AsiplnLfAjQNdbtVwV1zk_gH8~s-,ecaf384cd032dd8e5ced0d32e0dd34ad65744dfca51bb991b1d0d4100aeeaa2b9a7325f44f1c934aba51a416c7edd23453c2427be26ffcc921c05a037a97d82bJKfmiK0CbQyMF3sZwJ8~nborX64~21Z_UXIkMAEBND4-,91dfc06fe959d19996dba762efe8fbe20e09a41264154a022829b04cb7f43f6476eed34ef707c5c3edc834a3367fef6795f9f6ae2b55158beeb1022fb82af72dvaKgHiV1xle9JIt1iG1E7X3FzQ1HiaD9WF3kuLEWqcg-,cb6ff4573db37ff7ff19093d608b181e3ca2f7619c4eb14e6553aa4f932d2bae987bfb73267f9b96447206333e63c660c2fa6726e6749e0f3531faf1b4b8d8daVYOCI56agPbOg7jXDD1pp7Fm0WrDRWLd7CpmwAY5ZHE-,38d74cc7705853da602f0df34251cc0f379682ede3c2c40ef134091aac1c04aa75d77178b63c9db27d5e997a117c879471d0a4c75d112cf3e9dbef95dad63f2bFfRIqsNSAfYjQ1FeWoVb4J0vLmjtRc~XsZbuuK_0lRs-,bdbe21a9c5932b786ce0e7ac38077ba26df167bf8ff99bb13ecda08217e0ee0ec5c9d8b425da3897f69f9591534a1b22157c70c853d9adf6b733c82b2669f8deIVoakK0TS3bD1lKnlp95ueDXYWevrYrBwAZeG5HtMMU-\"}', '2023-04-26 10:48:55'),
(49, 1, '::1', 'File manager', '/template_metro_ci/cpanel/filemanager.html', NULL, '2023-04-26 10:48:57'),
(50, 1, '::1', 'File manager', '/template_metro_ci/cpanel/filemanager/delete.html', '{\"id\":\"797ffab869e8f14a17e8694be64b00dfd3bb8825fbde8c393702934e3d5e2cb2becbc837a5ac2a85b6ed91f2e49d159dfee76f27542615a43118bd69b6c802bcVGnN1_al1scCAayCF1EWlegByVvGbzDvSvuYt3fw8xo-,7b95259a422ba84a3c4150955b0c8adc2905634be35c9f650cfdf08f11bbccee0bf85cc289ebaf08d99ec5ff17fbb5206394986b7751f7a1ff05108e6996c808OG0OVHYd6bWQ7VByR_n2_DYAK7JsGKR_Oo5v_zXzdmQ-,c586758db482d546e4fafa8c49cdef91c8d245b3cd4813e8aa5ba2e263fcf42ddbfdcd607ad6b5b241ec7abcfaa08b7801433cc013b18420916331da23ca4d9bBflIlQpPPTPTWOc1E9sDkpVR5ZNFe25jJ8IUHMKatOw-,109f726b27f960d1739a946bf3c814270705a625841345f3f23706d4a07aadc24724239f0bbad282745c206924e89ceab492ccbf76dbd910743c1878149d482d1lK_HcJ60d5e3DLFgSlHWM68LNZr8vGqh_fn4C6zGSw-,d061d352adfebb13f6d87f8acd67f8b029633fdb6bb872b1b7e9ca6e7fef2062c699be9809b9cd71cf7bea3b299d2b01d5ce9c6a5aaa80351adf3644483307fd5oGfvPBC8qMay7dzLVy3K11uqlNIOK7fKXhOo9sBBv8-,631843a293162d5cb5a7db4c9e6357efa0e8d712a5ce289dc849ab96f48d02b9a400cfb2a2c395cd2c022256563feeb6a2de0ed0fbba75f917ed65a3436c4e24GzmyfuWTx771k7NlaHX_GHp2eEoLzQjUcQ5a5DS8nvM-,a2129a38d39810d296e609ed4e9733353ea11ae43ffd492fbbe1cea570c5eaa96d0eeff12d6e7b4514c4cb582fb5fa11c21aef25de890206335431e9b0c62bcaGlL5xQ3113Hl2LFGwLI7mTeo_XwbAkXEoN56zPWB7Pc-,f07e2ae2fba61102201e2bd02e87523034fc1b615bec0355cc6220eb86e53126f4cf0b73b46787b5ae3e28aa8387d5b0bca64b6243d0b8adef48b31219f92f25EiV6xB7~ZRql4ydg_aCxBR_~~2SYI2kFrWRQ0x9MSrQ-\"}', '2023-04-26 10:49:09'),
(51, 1, '::1', 'File manager', '/template_metro_ci/cpanel/filemanager.html', NULL, '2023-04-26 10:49:10'),
(52, 1, '::1', 'File manager', '/template_metro_ci/cpanel/filemanager.html', NULL, '2023-04-26 10:49:15'),
(53, 1, '::1', 'title', '/template_metro_ci/cpanel/dashboard.html', NULL, '2023-04-26 15:39:27');

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
(61, 'config', 'user_log_status', 'Y');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `ci_user_log`
--
ALTER TABLE `ci_user_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT untuk tabel `filemanager`
--
ALTER TABLE `filemanager`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `main_menu`
--
ALTER TABLE `main_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT untuk tabel `modules_crud_generator`
--
ALTER TABLE `modules_crud_generator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
