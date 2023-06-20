#
# TABLE STRUCTURE FOR: auth_group
#

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group` varchar(100) NOT NULL,
  `definition` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO `auth_group` (`id`, `group`, `definition`) VALUES (1, 'xadmin', 'Admin Master');
INSERT INTO `auth_group` (`id`, `group`, `definition`) VALUES (4, 'admin', 'admin aplikasi');
INSERT INTO `auth_group` (`id`, `group`, `definition`) VALUES (6, 'pmutu', 'Pengguna Mutu dan Sumberdaya Pelayanan Medik');
INSERT INTO `auth_group` (`id`, `group`, `definition`) VALUES (7, 'pperbekalan', 'Seksi Perbekalan Dan pemeliharaan medik');


#
# TABLE STRUCTURE FOR: auth_permission
#

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission` varchar(100) NOT NULL,
  `definition` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

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
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (95, 'c_jenis_surat_list', 'Module c_jenis_surat');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (96, 'c_jenis_surat_detail', 'Module c_jenis_surat');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (97, 'c_jenis_surat_add', 'Module c_jenis_surat');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (98, 'c_jenis_surat_update', 'Module c_jenis_surat');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (99, 'c_jenis_surat_delete', 'Module c_jenis_surat');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (100, 'sidebar_view_backup', 'Module sidebar');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (101, 'sidebar_view_jenis_surat', 'Module sidebar');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (102, 'sidebar_view_laporan', 'Module sidebar');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (103, 'c_rba_filter', 'Module c');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (104, 'sidebar_view_backup_database', 'Module sidebar');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (105, 'sidebar_view_beranda', 'Module sidebar');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (106, 'sidebar_view_autentikasi', 'Module sidebar');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (107, 'sidebar_view_pengguna', 'Module sidebar');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (108, 'sidebar_view_izin', 'Module sidebar');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (109, 'sidebar_view_konfigurasi', 'Module sidebar');
INSERT INTO `auth_permission` (`id`, `permission`, `definition`) VALUES (110, 'sidebar_view_pengaturan', 'Module sidebar');


#
# TABLE STRUCTURE FOR: auth_permission_to_group
#

DROP TABLE IF EXISTS `auth_permission_to_group`;

CREATE TABLE `auth_permission_to_group` (
  `permission_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (70, 6);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (71, 6);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (72, 6);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (73, 6);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (100, 6);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (102, 6);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (74, 6);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (75, 6);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (76, 6);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (77, 6);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (78, 6);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (79, 6);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (80, 6);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (81, 6);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (82, 6);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (83, 6);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (84, 6);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (85, 6);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (86, 6);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (87, 6);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (88, 6);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (89, 6);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (90, 6);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (91, 6);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (92, 6);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (93, 6);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (95, 6);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (96, 6);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (97, 6);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (98, 6);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (99, 6);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (103, 6);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (70, 7);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (71, 7);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (72, 7);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (73, 7);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (102, 7);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (74, 7);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (75, 7);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (76, 7);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (77, 7);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (78, 7);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (79, 7);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (80, 7);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (81, 7);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (82, 7);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (83, 7);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (84, 7);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (85, 7);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (86, 7);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (87, 7);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (88, 7);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (89, 7);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (90, 7);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (91, 7);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (92, 7);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (93, 7);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (95, 7);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (96, 7);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (97, 7);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (98, 7);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (99, 7);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (103, 7);
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
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (56, 4);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (57, 4);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (62, 4);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (68, 4);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (101, 4);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (104, 4);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (105, 4);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (106, 4);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (107, 4);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (109, 4);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (95, 4);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (96, 4);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (97, 4);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (98, 4);
INSERT INTO `auth_permission_to_group` (`permission_id`, `group_id`) VALUES (99, 4);


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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO `auth_user` (`id_user`, `name`, `photo`, `email`, `password`, `token`, `last_login`, `ip_address`, `is_active`, `created`, `modified`, `is_delete`) VALUES (1, 'Mr.J', '280423144500_360_F_406919209_.jpg', 'superadmin@admin.com', '$2y$10$/76va4Dm12IqnE7WIGwMrOSbxCb18.WPC4AuxLdjlE9gJ1S6JakuW', '806c03483984ccbd8fa9c0274840802a', '2023-06-09 08:04:00', '::1', '1', '2023-04-27 16:11:00', '2023-05-10 16:04:35', '0');
INSERT INTO `auth_user` (`id_user`, `name`, `photo`, `email`, `password`, `token`, `last_login`, `ip_address`, `is_active`, `created`, `modified`, `is_delete`) VALUES (2, 'subhan', '', 'subhan@gmail.com', '$2y$10$5xjBfKKTWKEtYA2NUVfPnORW9Xh3YFJDvJzaW9pOxcxltMpuVA89i', '238b46a27b6d7512d7c94ea4e8e95ace', '2023-05-10 13:46:00', '::1', '1', '2023-04-28 14:45:52', '2023-05-10 13:57:52', '0');
INSERT INTO `auth_user` (`id_user`, `name`, `photo`, `email`, `password`, `token`, `last_login`, `ip_address`, `is_active`, `created`, `modified`, `is_delete`) VALUES (3, 'mutu spj', '', 'mutu_spj@gmail.com', '$2y$10$mfLrbvvOz0EzHf7R.lqUv.EmTIlC3YqH9Jzwn/9pQGUcSeiLLUs5u', 'ee7b7f8c916aed7a23edecb74622c6be', NULL, NULL, '1', '2023-04-28 14:51:57', NULL, '1');
INSERT INTO `auth_user` (`id_user`, `name`, `photo`, `email`, `password`, `token`, `last_login`, `ip_address`, `is_active`, `created`, `modified`, `is_delete`) VALUES (4, 'perbekalan spj', '', 'perbekalan_spj@gmail.com', '$2y$10$Ft/qGiJ3uWEbQEGQk3iSE.Is3YlRAieNy2L0CclRGNCB72EgIHt1W', 'f58dcbbbd01dcb8cffebc2f2bd15d34f', '2023-05-09 14:29:00', '::1', '1', '2023-04-28 14:52:34', NULL, '1');
INSERT INTO `auth_user` (`id_user`, `name`, `photo`, `email`, `password`, `token`, `last_login`, `ip_address`, `is_active`, `created`, `modified`, `is_delete`) VALUES (5, 'mutu rba', '', 'mutu_rba@gmail.com', '$2y$10$9wAMCuZdMt5l324eYp4asuSmOIzfIn/hjj./vIr3xZy5CJn9aOJQm', '3d44a8e946b757ac54068ca43abec07e', NULL, NULL, '1', '2023-04-28 14:53:18', NULL, '1');
INSERT INTO `auth_user` (`id_user`, `name`, `photo`, `email`, `password`, `token`, `last_login`, `ip_address`, `is_active`, `created`, `modified`, `is_delete`) VALUES (6, 'perbekalan rba', '', 'perbekalan_rba@gmail.com', '$2y$10$bEl7yKkNQWcoyOD0N5hxge5QU7UvxUVC.C7xJfSPsPd8KQk2N8Kt2', 'aa22399d772f1eae985b737da3368267', NULL, NULL, '1', '2023-05-04 16:00:47', NULL, '1');
INSERT INTO `auth_user` (`id_user`, `name`, `photo`, `email`, `password`, `token`, `last_login`, `ip_address`, `is_active`, `created`, `modified`, `is_delete`) VALUES (7, 'soraya', '', 'soraya@gmail.com', '$2y$10$H0JSCvS2B83BfyVHFGHKwu9mSJRJJLNGMf3v3kRe/h00gWvdWJGZC', '1c3cb6f862bc7a4994d411a0c95a87ff', '2023-05-10 15:59:00', '::1', '1', '2023-05-10 14:06:10', NULL, '0');
INSERT INTO `auth_user` (`id_user`, `name`, `photo`, `email`, `password`, `token`, `last_login`, `ip_address`, `is_active`, `created`, `modified`, `is_delete`) VALUES (8, 'sandi', '', 'sandi@gmail.com', '$2y$10$OWPcHRzK3h3q9tEa8rkXHOyIV6VO1AJk9gCLp5DnZA1QqLvs2vbzO', '1905dc86270c6ac19390c2803bf84ebb', '2023-05-12 14:38:00', '::1', '1', '2023-05-10 14:06:30', NULL, '0');
INSERT INTO `auth_user` (`id_user`, `name`, `photo`, `email`, `password`, `token`, `last_login`, `ip_address`, `is_active`, `created`, `modified`, `is_delete`) VALUES (9, 'admin', '', 'admin@admin.com', '$2y$10$FDBi6o/4QeCU.PWKA6HZKuiOjnbt1NAqek3OK3PB5RKGY7dguJrdG', '9282d235ed015aae9dae98c50bfa4b85', '2023-05-24 10:05:00', '::1', '1', '2023-05-10 16:04:59', NULL, '0');


#
# TABLE STRUCTURE FOR: auth_user_to_group
#

DROP TABLE IF EXISTS `auth_user_to_group`;

CREATE TABLE `auth_user_to_group` (
  `id_user` int(11) NOT NULL,
  `id_group` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `auth_user_to_group` (`id_user`, `id_group`) VALUES (1, 1);
INSERT INTO `auth_user_to_group` (`id_user`, `id_group`) VALUES (2, 6);
INSERT INTO `auth_user_to_group` (`id_user`, `id_group`) VALUES (3, 2);
INSERT INTO `auth_user_to_group` (`id_user`, `id_group`) VALUES (4, 2);
INSERT INTO `auth_user_to_group` (`id_user`, `id_group`) VALUES (5, 3);
INSERT INTO `auth_user_to_group` (`id_user`, `id_group`) VALUES (6, 3);
INSERT INTO `auth_user_to_group` (`id_user`, `id_group`) VALUES (7, 6);
INSERT INTO `auth_user_to_group` (`id_user`, `id_group`) VALUES (8, 7);
INSERT INTO `auth_user_to_group` (`id_user`, `id_group`) VALUES (9, 4);


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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

INSERT INTO `filemanager` (`id`, `file_name`, `ket`, `created`, `update`) VALUES (1, '231120043259_logos1.png', 'LOGO APLIKASI', '2020-11-23 04:32:59', NULL);
INSERT INTO `filemanager` (`id`, `file_name`, `ket`, `created`, `update`) VALUES (2, '231120051100_logo_mini.png', 'LOGO MINI', '2020-11-23 05:11:00', NULL);
INSERT INTO `filemanager` (`id`, `file_name`, `ket`, `created`, `update`) VALUES (3, '231120051803_favicon.ico', 'FAVICON', '2020-11-23 05:18:03', NULL);
INSERT INTO `filemanager` (`id`, `file_name`, `ket`, `created`, `update`) VALUES (4, '280423143924_gk_letter_type_l.jpg', 'Di upload melalui module User', '2023-04-28 14:39:00', NULL);
INSERT INTO `filemanager` (`id`, `file_name`, `ket`, `created`, `update`) VALUES (5, '280423143944_360_F_406919209_.jpg', 'Di upload melalui module User', '2023-04-28 14:39:00', NULL);
INSERT INTO `filemanager` (`id`, `file_name`, `ket`, `created`, `update`) VALUES (6, '280423144500_360_F_406919209_.jpg', 'Di upload melalui module User', '2023-04-28 14:45:00', NULL);
INSERT INTO `filemanager` (`id`, `file_name`, `ket`, `created`, `update`) VALUES (9, '050523112847_download_(1).png', 'Di upload melalui module File manager', '2023-05-05 11:28:47', NULL);
INSERT INTO `filemanager` (`id`, `file_name`, `ket`, `created`, `update`) VALUES (10, '050523112910_download_(2).png', 'Di upload melalui module File manager', '2023-05-05 11:29:10', NULL);
INSERT INTO `filemanager` (`id`, `file_name`, `ket`, `created`, `update`) VALUES (11, '050523113657_download.png', 'Di upload melalui module Surat Masuk', '2023-05-05 11:36:00', NULL);
INSERT INTO `filemanager` (`id`, `file_name`, `ket`, `created`, `update`) VALUES (13, '050523120652_download.png', 'Di upload melalui module Surat Masuk', '2023-05-05 12:06:00', NULL);
INSERT INTO `filemanager` (`id`, `file_name`, `ket`, `created`, `update`) VALUES (14, '050523134512_basic_sample.zip', 'Di upload melalui module Surat Masuk', '2023-05-05 13:45:00', NULL);
INSERT INTO `filemanager` (`id`, `file_name`, `ket`, `created`, `update`) VALUES (15, '050523135657_download_(2).png', 'Di upload melalui module Surat Masuk', '2023-05-05 13:56:00', NULL);
INSERT INTO `filemanager` (`id`, `file_name`, `ket`, `created`, `update`) VALUES (16, '050523140320_basic_sample.zip', 'Di upload melalui module Surat Masuk', '2023-05-05 14:03:00', NULL);
INSERT INTO `filemanager` (`id`, `file_name`, `ket`, `created`, `update`) VALUES (17, '050523161206_2023_0008.pdf', 'Di upload melalui module Surat Keluar', '2023-05-05 16:12:00', NULL);
INSERT INTO `filemanager` (`id`, `file_name`, `ket`, `created`, `update`) VALUES (18, '100523161729_Screenshot_2023_.png', 'Di upload melalui module File manager', '2023-05-10 16:17:29', NULL);
INSERT INTO `filemanager` (`id`, `file_name`, `ket`, `created`, `update`) VALUES (19, '120523144243_Rp__365_000.pdf', 'Di upload melalui module Surat Spj', '2023-05-12 14:42:00', NULL);
INSERT INTO `filemanager` (`id`, `file_name`, `ket`, `created`, `update`) VALUES (20, '120523144430_Rp__575_000.pdf', 'Di upload melalui module Surat Spj', '2023-05-12 14:44:00', NULL);


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
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

INSERT INTO `main_menu` (`id_menu`, `is_parent`, `menu`, `slug`, `type`, `controller`, `target`, `icon`, `is_active`, `sort`, `created`, `modified`) VALUES (3, 7, 'management menu', 'management-menu', 'controller', 'main_menu', '', '', '1', 8, '2020-02-15 06:48:31', '2020-11-02 13:33:26');
INSERT INTO `main_menu` (`id_menu`, `is_parent`, `menu`, `slug`, `type`, `controller`, `target`, `icon`, `is_active`, `sort`, `created`, `modified`) VALUES (7, 0, 'konfigurasi', 'konfigurasi', 'controller', '', '', 'fa fa-cogs', '1', 6, '2020-02-26 06:42:29', '2023-05-22 08:07:39');
INSERT INTO `main_menu` (`id_menu`, `is_parent`, `menu`, `slug`, `type`, `controller`, `target`, `icon`, `is_active`, `sort`, `created`, `modified`) VALUES (34, 7, 'pengaturan', 'pengaturan', 'controller', 'setting', '', '', '0', 7, '2020-10-19 00:25:57', '2023-05-24 10:05:25');
INSERT INTO `main_menu` (`id_menu`, `is_parent`, `menu`, `slug`, `type`, `controller`, `target`, `icon`, `is_active`, `sort`, `created`, `modified`) VALUES (36, 0, 'beranda', 'beranda', 'controller', 'dashboard', '', 'mdi mdi-laptop', '1', 1, '2020-10-27 08:18:55', '2023-05-22 08:06:19');
INSERT INTO `main_menu` (`id_menu`, `is_parent`, `menu`, `slug`, `type`, `controller`, `target`, `icon`, `is_active`, `sort`, `created`, `modified`) VALUES (37, 0, 'autentikasi', 'autentikasi', 'controller', '', '', 'fab fa-autoprefixer', '1', 2, '2020-10-27 08:45:17', '2023-05-22 08:06:43');
INSERT INTO `main_menu` (`id_menu`, `is_parent`, `menu`, `slug`, `type`, `controller`, `target`, `icon`, `is_active`, `sort`, `created`, `modified`) VALUES (38, 37, 'pengguna', 'pengguna', 'controller', 'user', '', 'mdi mdi-account-star', '1', 3, '2020-10-27 08:46:10', '2023-05-22 08:06:55');
INSERT INTO `main_menu` (`id_menu`, `is_parent`, `menu`, `slug`, `type`, `controller`, `target`, `icon`, `is_active`, `sort`, `created`, `modified`) VALUES (39, 37, 'groups', 'groups', 'controller', 'group', NULL, '', '1', 4, '2020-10-27 08:48:28', '2020-10-27 20:24:12');
INSERT INTO `main_menu` (`id_menu`, `is_parent`, `menu`, `slug`, `type`, `controller`, `target`, `icon`, `is_active`, `sort`, `created`, `modified`) VALUES (40, 37, 'izin', 'izin', 'controller', 'permission', '', '', '1', 5, '2020-10-27 08:49:49', '2023-05-22 08:07:22');
INSERT INTO `main_menu` (`id_menu`, `is_parent`, `menu`, `slug`, `type`, `controller`, `target`, `icon`, `is_active`, `sort`, `created`, `modified`) VALUES (48, 0, 'm-crud generator', 'm-crud-generator', 'controller', 'm_crud_generator', '', 'mdi mdi-xml', '0', 10, '2020-11-01 12:23:11', '2023-05-09 14:30:16');
INSERT INTO `main_menu` (`id_menu`, `is_parent`, `menu`, `slug`, `type`, `controller`, `target`, `icon`, `is_active`, `sort`, `created`, `modified`) VALUES (54, 7, 'file manager', 'file-manager', 'controller', 'filemanager', '', 'mdi mdi-folder-multiple-image', '1', 9, '2020-11-08 00:44:38', NULL);
INSERT INTO `main_menu` (`id_menu`, `is_parent`, `menu`, `slug`, `type`, `controller`, `target`, `icon`, `is_active`, `sort`, `created`, `modified`) VALUES (55, 0, 'surat masuk', 'surat-masuk', 'controller', 'c_surat_masuk', '', 'fa fa-window-restore', '1', 12, '2023-04-28 14:25:40', '2023-05-04 13:42:47');
INSERT INTO `main_menu` (`id_menu`, `is_parent`, `menu`, `slug`, `type`, `controller`, `target`, `icon`, `is_active`, `sort`, `created`, `modified`) VALUES (56, 0, 'surat keluar', 'surat-keluar', 'controller', 'c_surat_keluar', '', 'fa fa-envelope-open', '1', 13, '2023-04-28 14:26:02', '2023-05-04 13:43:23');
INSERT INTO `main_menu` (`id_menu`, `is_parent`, `menu`, `slug`, `type`, `controller`, `target`, `icon`, `is_active`, `sort`, `created`, `modified`) VALUES (57, 0, 'spj', 'spj', 'controller', 'c_spj', '', 'mdi mdi-apple-keyboard-caps', '1', 14, '2023-04-28 14:26:39', '2023-05-15 14:45:43');
INSERT INTO `main_menu` (`id_menu`, `is_parent`, `menu`, `slug`, `type`, `controller`, `target`, `icon`, `is_active`, `sort`, `created`, `modified`) VALUES (58, 0, 'rba', 'rba', 'controller', 'c_rba', '', 'mdi mdi-amplifier', '1', 15, '2023-04-28 14:27:15', '2023-05-04 13:43:52');
INSERT INTO `main_menu` (`id_menu`, `is_parent`, `menu`, `slug`, `type`, `controller`, `target`, `icon`, `is_active`, `sort`, `created`, `modified`) VALUES (59, 0, 'backup database', 'backup-database', 'controller', 'backup', '', 'fas fa-database', '1', 17, '2023-05-04 15:49:21', '2023-05-09 15:26:44');
INSERT INTO `main_menu` (`id_menu`, `is_parent`, `menu`, `slug`, `type`, `controller`, `target`, `icon`, `is_active`, `sort`, `created`, `modified`) VALUES (60, 0, 'jenis surat', 'jenis-surat', 'controller', 'c_jenis_surat', '', 'far fa-list-alt', '1', 11, '2023-05-04 16:06:20', NULL);
INSERT INTO `main_menu` (`id_menu`, `is_parent`, `menu`, `slug`, `type`, `controller`, `target`, `icon`, `is_active`, `sort`, `created`, `modified`) VALUES (61, 0, 'laporan', 'laporan', 'controller', 'c_laporan', '', 'far fa-file-excel', '1', 16, '2023-05-05 16:01:28', '2023-05-08 10:47:52');


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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `modules_crud_generator` (`id`, `module`, `module_name`, `table`, `created_at`) VALUES (1, 'C_surat_masuk', 'Surat Masuk', 'tb_surat_masuk', '2023-05-04 13:35:00');
INSERT INTO `modules_crud_generator` (`id`, `module`, `module_name`, `table`, `created_at`) VALUES (2, 'C_surat_keluar', 'Surat Keluar', 'tb_surat_keluar', '2023-05-04 13:39:00');
INSERT INTO `modules_crud_generator` (`id`, `module`, `module_name`, `table`, `created_at`) VALUES (3, 'C_rba', 'Surat Rba', 'tbl_rba', '2023-05-04 13:40:00');
INSERT INTO `modules_crud_generator` (`id`, `module`, `module_name`, `table`, `created_at`) VALUES (4, 'C_spj', 'Surat Spj', 'tbl_spj', '2023-05-04 13:41:00');
INSERT INTO `modules_crud_generator` (`id`, `module`, `module_name`, `table`, `created_at`) VALUES (5, 'C_jenis_surat', 'Jenis Surat', 'tb_jenis_surat', '2023-05-04 14:52:00');


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

INSERT INTO `setting` (`id_setting`, `group`, `options`, `value`) VALUES (1, 'general', 'web_name', 'ARSIP DOKUMEN');
INSERT INTO `setting` (`id_setting`, `group`, `options`, `value`) VALUES (2, 'general', 'web_domain', 'http://localhost/mcodev2/');
INSERT INTO `setting` (`id_setting`, `group`, `options`, `value`) VALUES (3, 'general', 'web_owner', 'Mr.J');
INSERT INTO `setting` (`id_setting`, `group`, `options`, `value`) VALUES (4, 'general', 'email', 'admin@admin.com');
INSERT INTO `setting` (`id_setting`, `group`, `options`, `value`) VALUES (5, 'general', 'telepon', '085288888888');
INSERT INTO `setting` (`id_setting`, `group`, `options`, `value`) VALUES (6, 'general', 'address', '-');
INSERT INTO `setting` (`id_setting`, `group`, `options`, `value`) VALUES (7, 'general', 'logo', '100523161729_Screenshot_2023_.png');
INSERT INTO `setting` (`id_setting`, `group`, `options`, `value`) VALUES (8, 'general', 'logo_mini', '100523161729_Screenshot_2023_.png');
INSERT INTO `setting` (`id_setting`, `group`, `options`, `value`) VALUES (9, 'general', 'favicon', '050523112628_download.png');
INSERT INTO `setting` (`id_setting`, `group`, `options`, `value`) VALUES (50, 'sosmed', 'facebook', 'https://facebook.com/');
INSERT INTO `setting` (`id_setting`, `group`, `options`, `value`) VALUES (51, 'general', 'instagram', 'https://instagram/');
INSERT INTO `setting` (`id_setting`, `group`, `options`, `value`) VALUES (52, 'sosmed', 'youtube', 'https://www.youtube.com/channel/');
INSERT INTO `setting` (`id_setting`, `group`, `options`, `value`) VALUES (53, 'sosmed', 'twitter', 'https://twitter/');
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
  `id_petugas` int(11) DEFAULT NULL,
  `tujuan_disposisi` varchar(100) DEFAULT NULL,
  `isi_disposisi` text NOT NULL,
  PRIMARY KEY (`id_disposisi`) USING BTREE,
  KEY `id_surat` (`id_surat`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf32;

INSERT INTO `tb_disposisi` (`id_disposisi`, `id_surat`, `tanggal_disposisi`, `id_petugas`, `tujuan_disposisi`, `isi_disposisi`) VALUES (3, 2, '2023-05-09', 1, 'Kepegawaian', 'ADA');
INSERT INTO `tb_disposisi` (`id_disposisi`, `id_surat`, `tanggal_disposisi`, `id_petugas`, `tujuan_disposisi`, `isi_disposisi`) VALUES (4, 3, '2023-05-10', 1, 'Seksi Mutu', 'Sudah di kirim');


#
# TABLE STRUCTURE FOR: tb_jenis_surat
#

DROP TABLE IF EXISTS `tb_jenis_surat`;

CREATE TABLE `tb_jenis_surat` (
  `id_jenis_surat` varchar(5) NOT NULL,
  `jenis_surat` varchar(40) NOT NULL,
  PRIMARY KEY (`id_jenis_surat`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tb_jenis_surat` (`id_jenis_surat`, `jenis_surat`) VALUES ('001', 'Undangan');
INSERT INTO `tb_jenis_surat` (`id_jenis_surat`, `jenis_surat`) VALUES ('002', 'Pemberitahuan');
INSERT INTO `tb_jenis_surat` (`id_jenis_surat`, `jenis_surat`) VALUES ('003', 'Edaran');
INSERT INTO `tb_jenis_surat` (`id_jenis_surat`, `jenis_surat`) VALUES ('004', 'Perintah');
INSERT INTO `tb_jenis_surat` (`id_jenis_surat`, `jenis_surat`) VALUES ('005', 'Instruksi');
INSERT INTO `tb_jenis_surat` (`id_jenis_surat`, `jenis_surat`) VALUES ('006', 'Tugas');
INSERT INTO `tb_jenis_surat` (`id_jenis_surat`, `jenis_surat`) VALUES ('007', 'Permohonan');
INSERT INTO `tb_jenis_surat` (`id_jenis_surat`, `jenis_surat`) VALUES ('008', 'Perjalanan Dinas');
INSERT INTO `tb_jenis_surat` (`id_jenis_surat`, `jenis_surat`) VALUES ('009', 'Keputusan');


#
# TABLE STRUCTURE FOR: tb_surat_keluar
#

DROP TABLE IF EXISTS `tb_surat_keluar`;

CREATE TABLE `tb_surat_keluar` (
  `id_surat_keluar` int(10) NOT NULL AUTO_INCREMENT,
  `no_surat` varchar(150) DEFAULT NULL,
  `tgl_surat` date DEFAULT NULL,
  `perihal` varchar(100) DEFAULT NULL,
  `pengirim` varchar(45) DEFAULT NULL,
  `kepada` varchar(30) DEFAULT NULL,
  `id_jenis_surat` int(5) DEFAULT NULL,
  `sifat_surat` enum('Rahasia','Penting','Segera','Biasa') DEFAULT NULL,
  `id_petugas` int(11) unsigned DEFAULT NULL,
  `deskripsi` longtext,
  `berkas_surat_keluar` text NOT NULL,
  `dibuat_pada` int(11) NOT NULL,
  `id_group` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_surat_keluar`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO `tb_surat_keluar` (`id_surat_keluar`, `no_surat`, `tgl_surat`, `perihal`, `pengirim`, `kepada`, `id_jenis_surat`, `sifat_surat`, `id_petugas`, `deskripsi`, `berkas_surat_keluar`, `dibuat_pada`, `id_group`) VALUES (1, '005/3805-UMPEG/RSUD HB', '2022-12-05', 'Undangan Rapat Koordinasi MIRM', 'Direktur RSUD', 'Tamu Undangan', 4, 'Penting', 1, 'Rapat Koordinasi MIRM', '050523161206_2023_0008.pdf', 0, NULL);


#
# TABLE STRUCTURE FOR: tb_surat_masuk
#

DROP TABLE IF EXISTS `tb_surat_masuk`;

CREATE TABLE `tb_surat_masuk` (
  `id_surat_masuk` int(11) NOT NULL AUTO_INCREMENT,
  `no_surat` varchar(150) DEFAULT NULL,
  `tgl_surat` date DEFAULT NULL,
  `perihal` varchar(100) DEFAULT NULL,
  `id_jenis_surat` int(5) DEFAULT NULL,
  `pengirim` varchar(30) DEFAULT NULL,
  `ditujukan` text,
  `deskripsi` mediumtext,
  `id_petugas` int(11) unsigned DEFAULT NULL,
  `sifat_surat` enum('Rahasia','Penting','Segera','Biasa') DEFAULT NULL,
  `status_disposisi` enum('Sudah Disposisi','Belum Disposisi') DEFAULT NULL,
  `dibuat_pada` int(11) NOT NULL,
  `berkas_surat_masuk` text NOT NULL,
  `id_group` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_surat_masuk`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO `tb_surat_masuk` (`id_surat_masuk`, `no_surat`, `tgl_surat`, `perihal`, `id_jenis_surat`, `pengirim`, `ditujukan`, `deskripsi`, `id_petugas`, `sifat_surat`, `status_disposisi`, `dibuat_pada`, `berkas_surat_masuk`, `id_group`) VALUES (2, 'DPU/2020/IV/7', '2023-05-05', 'Kunjungan Kerja', 2, 'IT Support', 'Perbekalan', 'Kunjungan kerja projek No. KU/LK.2020/I/-554 selatan', 1, 'Rahasia', 'Sudah Disposisi', 0, '050523140320_basic_sample.zip', 1);


#
# TABLE STRUCTURE FOR: tbl_rba
#

DROP TABLE IF EXISTS `tbl_rba`;

CREATE TABLE `tbl_rba` (
  `id_rba` int(11) NOT NULL AUTO_INCREMENT,
  `perubahan_ke` varchar(50) DEFAULT NULL,
  `tanggal_rba` varchar(255) NOT NULL,
  `nama_rba` varchar(255) DEFAULT NULL,
  `no_rekening_kegiatan_rba` varchar(50) DEFAULT NULL,
  `berkas_rba` varchar(255) DEFAULT NULL,
  `date_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id_group` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_rba`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf32;

INSERT INTO `tbl_rba` (`id_rba`, `perubahan_ke`, `tanggal_rba`, `nama_rba`, `no_rekening_kegiatan_rba`, `berkas_rba`, `date_create`, `id_group`) VALUES (1, '1212', '2023-05-15', '1212', '12121', '', '2023-05-15 14:59:33', 1);


#
# TABLE STRUCTURE FOR: tbl_spj
#

DROP TABLE IF EXISTS `tbl_spj`;

CREATE TABLE `tbl_spj` (
  `id_spj` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_spj` varchar(50) DEFAULT NULL,
  `tanggal_surat_spj` date NOT NULL,
  `no_invoice` varchar(50) DEFAULT NULL,
  `uraian` varchar(255) DEFAULT NULL,
  `jumlah_uang` int(11) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `date_create` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id_group` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_spj`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf32;

INSERT INTO `tbl_spj` (`id_spj`, `nomor_spj`, `tanggal_surat_spj`, `no_invoice`, `uraian`, `jumlah_uang`, `file`, `date_create`, `id_group`) VALUES (2, 'INV-1654562268', '2022-06-07', 'INV-1654562268', 'PASTITALA', 365000, '120523144243_Rp__365_000.pdf', '2023-05-12 14:42:43', 7);
INSERT INTO `tbl_spj` (`id_spj`, `nomor_spj`, `tanggal_surat_spj`, `no_invoice`, `uraian`, `jumlah_uang`, `file`, `date_create`, `id_group`) VALUES (3, 'INV-1655190769', '2022-06-14', 'INV-1655190769', 'pastitala', 575000, '120523144430_Rp__575_000.pdf', '2023-05-12 14:44:30', 7);
INSERT INTO `tbl_spj` (`id_spj`, `nomor_spj`, `tanggal_surat_spj`, `no_invoice`, `uraian`, `jumlah_uang`, `file`, `date_create`, `id_group`) VALUES (4, '', '2023-05-24', '23', '23', 23, '', '2023-05-31 09:24:03', 1);


