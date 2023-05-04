#
# TABLE STRUCTURE FOR: auth_group
#

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group` varchar(100) NOT NULL,
  `definition` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `auth_group` (`id`, `group`, `definition`) VALUES (1, 'xadmin', 'Admin Master');
INSERT INTO `auth_group` (`id`, `group`, `definition`) VALUES (2, 'spj', 'Pengguna penginputan SPJ');
INSERT INTO `auth_group` (`id`, `group`, `definition`) VALUES (3, 'rba', 'Pengguna penginputan RBA ( Rencana Belanja Anggaran )');
INSERT INTO `auth_group` (`id`, `group`, `definition`) VALUES (4, 'admin', 'admin aplikasi');


#
# TABLE STRUCTURE FOR: auth_permission
#

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission` varchar(100) NOT NULL,
  `definition` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (1, 'config_view_default', 'Module config');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (2, 'config_view_logo', 'Module config');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (3, 'config_view_sosmed', 'Module config');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (4, 'config_view_core', 'Module config');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (5, 'config_update_web_name', 'Module config');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (6, 'config_update_web_domain', 'Module config');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (7, 'config_update_web_owner', 'Module config');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (8, 'config_update_email', 'Module config');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (9, 'config_update_telepon', 'Module config');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (10, 'config_update_address', 'Module config');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (11, 'config_update_logo', 'Module config');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (12, 'config_update_logo_mini', 'Module config');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (13, 'config_update_favicon', 'Module config');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (14, 'config_update_facebook', 'Module config');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (15, 'config_update_instagram', 'Module config');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (16, 'config_update_youtube', 'Module config');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (17, 'config_update_twitter', 'Module config');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (18, 'config_update_language', 'Module config');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (19, 'config_update_time_zone', 'Module config');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (20, 'config_update_max_upload', 'Module config');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (21, 'config_update_route_admin', 'Module config');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (22, 'config_update_route_login', 'Module config');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (23, 'config_update_encryption_key', 'Module config');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (24, 'config_update_encryption_url', 'Module config');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (25, 'config_update_url_suffix', 'Module config');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (26, 'config_update_user_log_status', 'Module config');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (27, 'config_update_maintenance_status', 'Module config');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (28, 'menu_list', 'Module menu');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (29, 'menu_add', 'Module menu');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (30, 'menu_update', 'Module menu');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (31, 'menu_delete', 'Module menu');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (32, 'menu_drag_positions', 'Module menu');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (33, 'user_list', 'Module user');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (34, 'user_add', 'Module user');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (35, 'user_update', 'Module user');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (36, 'user_detail', 'Module user');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (37, 'user_delete', 'Module user');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (38, 'groups_list', 'Module groups');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (39, 'groups_add', 'Module groups');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (40, 'groups_access', 'Module groups');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (41, 'groups_update', 'Module groups');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (42, 'groups_delete', 'Module groups');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (43, 'permission_list', 'Module permission');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (44, 'permission_add', 'Module permission');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (45, 'permission_update', 'Module permission');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (46, 'permission_delete', 'Module permission');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (47, 'dashboard__view_profile_user', 'Module dashboard');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (48, 'dashboard_view_total_user', 'Module dashboard');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (49, 'dashboard_view_total_group', 'Module dashboard');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (50, 'dashboard_view_total_permission', 'Module dashboard');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (51, 'dashboard_view_total_filemanager', 'Module dashboard');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (52, 'filemanager_list', 'Module filemanager');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (53, 'filemanager_add', 'Module filemanager');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (54, 'filemanager_delete', 'Module filemanager');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (55, 'sidebar_view_dashboard', 'Module sidebar');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (56, 'sidebar_view_auth', 'Module sidebar');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (57, 'sidebar_view_user', 'Module sidebar');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (58, 'sidebar_view_groups', 'Module sidebar');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (59, 'sidebar_view_permission', 'Module sidebar');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (60, 'sidebar_view_config', 'Module sidebar');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (61, 'sidebar_view_system', 'Module sidebar');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (62, 'sidebar_view_management_menu', 'Module sidebar');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (63, 'sidebar_view_file_manager', 'Module sidebar');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (64, 'sidebar_view_m-crud_generator', 'Module Sidebar');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (65, 'crud_generator_list', 'Module crud generator');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (66, 'crud_generator_add', 'Module crud generator');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (67, 'crud_generator_delete', 'Module crud generator');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (68, 'sidebar_view_configuration', 'Module sidebar');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (69, 'sidebar_view_settings', 'Module sidebar');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (70, 'sidebar_view_surat_masuk', 'Module sidebar');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (71, 'sidebar_view_surat_keluar', 'Module sidebar');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (72, 'sidebar_view_spj', 'Module sidebar');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (73, 'sidebar_view_rba', 'Module sidebar');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (74, 'c_surat_masuk_list', 'Module c_surat_masuk');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (75, 'c_surat_masuk_detail', 'Module c_surat_masuk');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (76, 'c_surat_masuk_add', 'Module c_surat_masuk');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (77, 'c_surat_masuk_update', 'Module c_surat_masuk');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (78, 'c_surat_masuk_delete', 'Module c_surat_masuk');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (79, 'c_surat_keluar_list', 'Module c_surat_keluar');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (80, 'c_surat_keluar_detail', 'Module c_surat_keluar');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (81, 'c_surat_keluar_add', 'Module c_surat_keluar');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (82, 'c_surat_keluar_update', 'Module c_surat_keluar');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (83, 'c_surat_keluar_delete', 'Module c_surat_keluar');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (84, 'c_rba_list', 'Module c_rba');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (85, 'c_rba_detail', 'Module c_rba');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (86, 'c_rba_add', 'Module c_rba');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (87, 'c_rba_update', 'Module c_rba');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (88, 'c_rba_delete', 'Module c_rba');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (89, 'c_spj_list', 'Module c_spj');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (90, 'c_spj_detail', 'Module c_spj');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (91, 'c_spj_add', 'Module c_spj');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (92, 'c_spj_update', 'Module c_spj');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (93, 'c_spj_delete', 'Module c_spj');


#
# TABLE STRUCTURE FOR: auth_permission_to_group
#

DROP TABLE IF EXISTS `auth_permission_to_group`;

CREATE TABLE `auth_permission_to_group` (
  `permission_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (28, 4);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (29, 4);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (30, 4);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (31, 4);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (32, 4);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (33, 4);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (34, 4);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (35, 4);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (36, 4);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (37, 4);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (47, 4);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (48, 4);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (49, 4);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (50, 4);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (51, 4);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (57, 4);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (62, 4);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (70, 3);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (71, 3);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (73, 3);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (70, 2);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (71, 2);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (72, 2);


#
# TABLE STRUCTURE FOR: auth_user
#

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
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
  `is_delete` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `auth_user` (`id_user`, `name`, `photo`, `email`, `password`, `token`, `last_login`, `ip_address`, `is_active`, `created`, `modified`, `is_delete`) VALUES (1, 'Mr.J', '280423144500_360_F_406919209_.jpg', 'admin@admin.com', '$2y$10$KuDwoERWCthWuckdV1hJz.6azZ8BtgPzqJuOAT/Ltx8mCKJKOymry', '71521d92376191f68e7dabca51344e1b', '2023-05-04 13:29:00', '::1', '1', '2023-04-27 16:11:00', '2023-04-28 14:45:00', '0');
INSERT INTO `auth_user` (`id_user`, `name`, `photo`, `email`, `password`, `token`, `last_login`, `ip_address`, `is_active`, `created`, `modified`, `is_delete`) VALUES (2, 'subhan', '', 'subhan@gmail.com', '$2y$10$5xjBfKKTWKEtYA2NUVfPnORW9Xh3YFJDvJzaW9pOxcxltMpuVA89i', '238b46a27b6d7512d7c94ea4e8e95ace', NULL, NULL, '1', '2023-04-28 14:45:52', '2023-04-28 14:57:19', '0');
INSERT INTO `auth_user` (`id_user`, `name`, `photo`, `email`, `password`, `token`, `last_login`, `ip_address`, `is_active`, `created`, `modified`, `is_delete`) VALUES (3, 'mutu spj', '', 'mutu_spj@gmail.com', '$2y$10$mfLrbvvOz0EzHf7R.lqUv.EmTIlC3YqH9Jzwn/9pQGUcSeiLLUs5u', 'ee7b7f8c916aed7a23edecb74622c6be', NULL, NULL, '1', '2023-04-28 14:51:57', NULL, '0');
INSERT INTO `auth_user` (`id_user`, `name`, `photo`, `email`, `password`, `token`, `last_login`, `ip_address`, `is_active`, `created`, `modified`, `is_delete`) VALUES (4, 'perbekalan spj', '', 'perbekalan_spj@gmail.com', '$2y$10$Ft/qGiJ3uWEbQEGQk3iSE.Is3YlRAieNy2L0CclRGNCB72EgIHt1W', 'f58dcbbbd01dcb8cffebc2f2bd15d34f', NULL, NULL, '1', '2023-04-28 14:52:34', NULL, '0');
INSERT INTO `auth_user` (`id_user`, `name`, `photo`, `email`, `password`, `token`, `last_login`, `ip_address`, `is_active`, `created`, `modified`, `is_delete`) VALUES (5, 'mutu rba', '', 'mutu_rba@gmail.com', '$2y$10$9wAMCuZdMt5l324eYp4asuSmOIzfIn/hjj./vIr3xZy5CJn9aOJQm', '3d44a8e946b757ac54068ca43abec07e', NULL, NULL, '1', '2023-04-28 14:53:18', NULL, '0');


#
# TABLE STRUCTURE FOR: auth_user_to_group
#

DROP TABLE IF EXISTS `auth_user_to_group`;

CREATE TABLE `auth_user_to_group` (
  `id_user` int(11) NOT NULL,
  `id_group` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `auth_user_to_group` (`id_user`, `id_group`) VALUES (1, 1);
INSERT INTO `auth_user_to_group` (`id_user`, `id_group`) VALUES (2, 4);
INSERT INTO `auth_user_to_group` (`id_user`, `id_group`) VALUES (3, 2);
INSERT INTO `auth_user_to_group` (`id_user`, `id_group`) VALUES (4, 2);
INSERT INTO `auth_user_to_group` (`id_user`, `id_group`) VALUES (5, 3);


#
# TABLE STRUCTURE FOR: ci_user_log
#

DROP TABLE IF EXISTS `ci_user_log`;

CREATE TABLE `ci_user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `url` text,
  `data` text,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: filemanager
#

DROP TABLE IF EXISTS `filemanager`;

CREATE TABLE `filemanager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) DEFAULT NULL,
  `ket` text,
  `created` datetime DEFAULT NULL,
  `update` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO `filemanager` (`id`, `file_name`, `ket`, `created`, `update`) VALUES (1, '231120043259_logos1.png', 'LOGO APLIKASI', '2020-11-23 04:32:59', NULL);
INSERT INTO `filemanager` (`id`, `file_name`, `ket`, `created`, `update`) VALUES (2, '231120051100_logo_mini.png', 'LOGO MINI', '2020-11-23 05:11:00', NULL);
INSERT INTO `filemanager` (`id`, `file_name`, `ket`, `created`, `update`) VALUES (3, '231120051803_favicon.ico', 'FAVICON', '2020-11-23 05:18:03', NULL);
INSERT INTO `filemanager` (`id`, `file_name`, `ket`, `created`, `update`) VALUES (4, '280423143924_gk_letter_type_l.jpg', 'Di upload melalui module User', '2023-04-28 14:39:00', NULL);
INSERT INTO `filemanager` (`id`, `file_name`, `ket`, `created`, `update`) VALUES (5, '280423143944_360_F_406919209_.jpg', 'Di upload melalui module User', '2023-04-28 14:39:00', NULL);
INSERT INTO `filemanager` (`id`, `file_name`, `ket`, `created`, `update`) VALUES (6, '280423144500_360_F_406919209_.jpg', 'Di upload melalui module User', '2023-04-28 14:45:00', NULL);
INSERT INTO `filemanager` (`id`, `file_name`, `ket`, `created`, `update`) VALUES (7, '280423144552_Screenshot_2022_.png', 'Di upload melalui module User', '2023-04-28 14:45:00', NULL);


#
# TABLE STRUCTURE FOR: main_menu
#

DROP TABLE IF EXISTS `main_menu`;

CREATE TABLE `main_menu` (
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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

INSERT INTO `main_menu` (`id_menu`, `is_parent`, `menu`, `slug`, `type`, `controller`, `target`, `icon`, `is_active`, `sort`, `created`, `modified`) VALUES (3, 7, 'management menu', 'management-menu', 'controller', 'main_menu', '', '', '1', 8, '2020-02-15 06:48:31', '2020-11-02 13:33:26');
INSERT INTO `main_menu` (`id_menu`, `is_parent`, `menu`, `slug`, `type`, `controller`, `target`, `icon`, `is_active`, `sort`, `created`, `modified`) VALUES (7, 0, 'configuration', 'configuration', 'controller', '', '', 'fa fa-cogs', '1', 6, '2020-02-26 06:42:29', '2020-11-23 05:20:01');
INSERT INTO `main_menu` (`id_menu`, `is_parent`, `menu`, `slug`, `type`, `controller`, `target`, `icon`, `is_active`, `sort`, `created`, `modified`) VALUES (34, 7, 'settings', 'settings', 'controller', 'setting', '', '', '1', 7, '2020-10-19 00:25:57', '2020-11-23 05:20:11');
INSERT INTO `main_menu` (`id_menu`, `is_parent`, `menu`, `slug`, `type`, `controller`, `target`, `icon`, `is_active`, `sort`, `created`, `modified`) VALUES (36, 0, 'dashboard', 'dashboard', 'controller', 'dashboard', '', 'mdi mdi-laptop', '1', 1, '2020-10-27 08:18:55', '2020-11-09 23:07:13');
INSERT INTO `main_menu` (`id_menu`, `is_parent`, `menu`, `slug`, `type`, `controller`, `target`, `icon`, `is_active`, `sort`, `created`, `modified`) VALUES (37, 0, 'auth', 'auth', NULL, '', NULL, 'mdi mdi-account-settings-variant', '1', 2, '2020-10-27 08:45:17', NULL);
INSERT INTO `main_menu` (`id_menu`, `is_parent`, `menu`, `slug`, `type`, `controller`, `target`, `icon`, `is_active`, `sort`, `created`, `modified`) VALUES (38, 37, 'user', 'user', 'controller', 'user', NULL, 'mdi mdi-account-star', '1', 3, '2020-10-27 08:46:10', '2020-10-27 09:38:05');
INSERT INTO `main_menu` (`id_menu`, `is_parent`, `menu`, `slug`, `type`, `controller`, `target`, `icon`, `is_active`, `sort`, `created`, `modified`) VALUES (39, 37, 'groups', 'groups', 'controller', 'group', NULL, '', '1', 4, '2020-10-27 08:48:28', '2020-10-27 20:24:12');
INSERT INTO `main_menu` (`id_menu`, `is_parent`, `menu`, `slug`, `type`, `controller`, `target`, `icon`, `is_active`, `sort`, `created`, `modified`) VALUES (40, 37, 'permission', 'permission', 'controller', 'permission', NULL, '', '1', 5, '2020-10-27 08:49:49', '2020-10-29 22:47:10');
INSERT INTO `main_menu` (`id_menu`, `is_parent`, `menu`, `slug`, `type`, `controller`, `target`, `icon`, `is_active`, `sort`, `created`, `modified`) VALUES (48, 0, 'm-crud generator', 'm-crud-generator', 'controller', 'm_crud_generator', '', 'mdi mdi-xml', '1', 10, '2020-11-01 12:23:11', '2020-11-22 00:06:35');
INSERT INTO `main_menu` (`id_menu`, `is_parent`, `menu`, `slug`, `type`, `controller`, `target`, `icon`, `is_active`, `sort`, `created`, `modified`) VALUES (54, 7, 'file manager', 'file-manager', 'controller', 'filemanager', '', 'mdi mdi-folder-multiple-image', '1', 9, '2020-11-08 00:44:38', NULL);
INSERT INTO `main_menu` (`id_menu`, `is_parent`, `menu`, `slug`, `type`, `controller`, `target`, `icon`, `is_active`, `sort`, `created`, `modified`) VALUES (55, 0, 'surat masuk', 'surat-masuk', 'controller', 'c_surat_masuk', '', 'fa fa-window-restore', '1', 11, '2023-04-28 14:25:40', '2023-05-04 13:42:47');
INSERT INTO `main_menu` (`id_menu`, `is_parent`, `menu`, `slug`, `type`, `controller`, `target`, `icon`, `is_active`, `sort`, `created`, `modified`) VALUES (56, 0, 'surat keluar', 'surat-keluar', 'controller', 'c_surat_keluar', '', 'fa fa-envelope-open', '1', 12, '2023-04-28 14:26:02', '2023-05-04 13:43:23');
INSERT INTO `main_menu` (`id_menu`, `is_parent`, `menu`, `slug`, `type`, `controller`, `target`, `icon`, `is_active`, `sort`, `created`, `modified`) VALUES (57, 0, 'spj', 'spj', 'controller', 'c_spj', '', 'mdi mdi-apple-keyboard-caps', '1', 13, '2023-04-28 14:26:39', '2023-05-04 13:43:42');
INSERT INTO `main_menu` (`id_menu`, `is_parent`, `menu`, `slug`, `type`, `controller`, `target`, `icon`, `is_active`, `sort`, `created`, `modified`) VALUES (58, 0, 'rba', 'rba', 'controller', 'c_rba', '', 'mdi mdi-amplifier', '1', 14, '2023-04-28 14:27:15', '2023-05-04 13:43:52');


#
# TABLE STRUCTURE FOR: migrations
#

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `migrations` (`version`) VALUES ('1');


#
# TABLE STRUCTURE FOR: modules_crud_generator
#

DROP TABLE IF EXISTS `modules_crud_generator`;

CREATE TABLE `modules_crud_generator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(255) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `table` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `modules_crud_generator` (`id`, `module`, `module_name`, `table`, `created_at`) VALUES (1, 'C_surat_masuk', 'Surat Masuk', 'tb_surat_masuk', '2023-05-04 13:35:00');
INSERT INTO `modules_crud_generator` (`id`, `module`, `module_name`, `table`, `created_at`) VALUES (2, 'C_surat_keluar', 'Surat Keluar', 'tb_surat_keluar', '2023-05-04 13:39:00');
INSERT INTO `modules_crud_generator` (`id`, `module`, `module_name`, `table`, `created_at`) VALUES (3, 'C_rba', 'Surat Rba', 'tbl_rba', '2023-05-04 13:40:00');
INSERT INTO `modules_crud_generator` (`id`, `module`, `module_name`, `table`, `created_at`) VALUES (4, 'C_spj', 'Surat Spj', 'tbl_spj', '2023-05-04 13:41:00');


#
# TABLE STRUCTURE FOR: setting
#

DROP TABLE IF EXISTS `setting`;

CREATE TABLE `setting` (
  `id_setting` int(11) NOT NULL,
  `group` varchar(50) NOT NULL,
  `options` varchar(100) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_setting`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `setting` (`id_setting`, `group`, `options`, `value`) VALUES (1, 'general', 'web_name', 'SIMPEG');
INSERT INTO `setting` (`id_setting`, `group`, `options`, `value`) VALUES (2, 'general', 'web_domain', 'http://localhost/mcodev2/');
INSERT INTO `setting` (`id_setting`, `group`, `options`, `value`) VALUES (3, 'general', 'web_owner', 'Mr.J');
INSERT INTO `setting` (`id_setting`, `group`, `options`, `value`) VALUES (4, 'general', 'email', 'admin@admin.com');
INSERT INTO `setting` (`id_setting`, `group`, `options`, `value`) VALUES (5, 'general', 'telepon', '085288888888');
INSERT INTO `setting` (`id_setting`, `group`, `options`, `value`) VALUES (6, 'general', 'address', '-');
INSERT INTO `setting` (`id_setting`, `group`, `options`, `value`) VALUES (7, 'general', 'logo', '231120043259_logos1.png');
INSERT INTO `setting` (`id_setting`, `group`, `options`, `value`) VALUES (8, 'general', 'logo_mini', '231120051100_logo_mini.png');
INSERT INTO `setting` (`id_setting`, `group`, `options`, `value`) VALUES (9, 'general', 'favicon', '231120051803_favicon.ico');
INSERT INTO `setting` (`id_setting`, `group`, `options`, `value`) VALUES (50, 'sosmed', 'facebook', 'https://facebook.com/mpampam');
INSERT INTO `setting` (`id_setting`, `group`, `options`, `value`) VALUES (51, 'general', 'instagram', 'https://instagram/mpampam');
INSERT INTO `setting` (`id_setting`, `group`, `options`, `value`) VALUES (52, 'sosmed', 'youtube', 'https://www.youtube.com/channel/UC1TlTaxRNdwrCqjBJ5zh6TA');
INSERT INTO `setting` (`id_setting`, `group`, `options`, `value`) VALUES (53, 'sosmed', 'twitter', 'https://twitter/m_pampam');
INSERT INTO `setting` (`id_setting`, `group`, `options`, `value`) VALUES (60, 'config', 'maintenance_status', 'N');
INSERT INTO `setting` (`id_setting`, `group`, `options`, `value`) VALUES (61, 'config', 'user_log_status', 'N');


#
# TABLE STRUCTURE FOR: tb_disposisi
#

DROP TABLE IF EXISTS `tb_disposisi`;

CREATE TABLE `tb_disposisi` (
  `id_disposisi` int(11) NOT NULL AUTO_INCREMENT,
  `id_surat` int(11) DEFAULT NULL,
  `tanggal_disposisi` date DEFAULT NULL,
  `oleh` varchar(100) DEFAULT NULL,
  `tujuan_disposisi` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_disposisi`) USING BTREE,
  KEY `id_surat` (`id_surat`) USING BTREE,
  CONSTRAINT `tb_disposisi_ibfk_1` FOREIGN KEY (`id_surat`) REFERENCES `db_surat`.`tb_surat` (`id_surat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

#
# TABLE STRUCTURE FOR: tb_jenis_surat
#

DROP TABLE IF EXISTS `tb_jenis_surat`;

CREATE TABLE `tb_jenis_surat` (
  `id_jenis_surat` int(5) NOT NULL,
  `jenis_surat` varchar(40) NOT NULL,
  PRIMARY KEY (`id_jenis_surat`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: tb_surat_keluar
#

DROP TABLE IF EXISTS `tb_surat_keluar`;

CREATE TABLE `tb_surat_keluar` (
  `id_surat_keluar` int(10) NOT NULL AUTO_INCREMENT,
  `no_surat` varchar(15) DEFAULT NULL,
  `tgl_surat` date DEFAULT NULL,
  `perihal` varchar(100) DEFAULT NULL,
  `pengirim` varchar(45) DEFAULT NULL,
  `kepada` varchar(30) DEFAULT NULL,
  `id_jenis_surat` int(5) DEFAULT NULL,
  `sifat_surat` enum('Rahasia','Penting','Segera','Biasa') DEFAULT NULL,
  `id_petugas` int(11) unsigned DEFAULT NULL,
  `deskripsi` longtext,
  `berkas_surat_keluar` varchar(250) NOT NULL,
  `dibuat_pada` int(11) NOT NULL,
  PRIMARY KEY (`id_surat_keluar`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: tb_surat_masuk
#

DROP TABLE IF EXISTS `tb_surat_masuk`;

CREATE TABLE `tb_surat_masuk` (
  `id_surat_masuk` int(11) NOT NULL AUTO_INCREMENT,
  `no_surat` varchar(13) DEFAULT NULL,
  `tgl_surat` date DEFAULT NULL,
  `perihal` varchar(100) DEFAULT NULL,
  `id_jenis_surat` int(5) DEFAULT NULL,
  `pengirim` varchar(30) DEFAULT NULL,
  `ditujukan` varchar(30) DEFAULT NULL,
  `deskripsi` mediumtext,
  `id_petugas` int(11) unsigned DEFAULT NULL,
  `sifat_surat` enum('Rahasia','Penting','Segera','Biasa') DEFAULT NULL,
  `status_disposisi` enum('Sudah Disposisi','Belum Disposisi') DEFAULT NULL,
  `dibuat_pada` int(11) NOT NULL,
  `berkas_surat_masuk` varchar(20) NOT NULL,
  PRIMARY KEY (`id_surat_masuk`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: tbl_rba
#

DROP TABLE IF EXISTS `tbl_rba`;

CREATE TABLE `tbl_rba` (
  `id_rba` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_rba` varchar(50) DEFAULT NULL,
  `tanggal_rba` varchar(255) NOT NULL,
  `nama_rba` varchar(255) DEFAULT NULL,
  `no_rekening_kegiatan_rba` varchar(50) DEFAULT NULL,
  `berkas_rba` varchar(255) DEFAULT NULL,
  `date_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_rba`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

#
# TABLE STRUCTURE FOR: tbl_spj
#

DROP TABLE IF EXISTS `tbl_spj`;

CREATE TABLE `tbl_spj` (
  `id_spj` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_spj` varchar(50) DEFAULT NULL,
  `tanggal_surat_spj` date NOT NULL,
  `no_invoice` varchar(50) DEFAULT NULL,
  `nama_pembayar` varchar(255) DEFAULT NULL,
  `jumlah_uang` int(11) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `date_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_spj`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

