-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2024 at 12:54 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gestion_de_stock`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add Category', 7, 'add_category'),
(26, 'Can change Category', 7, 'change_category'),
(27, 'Can delete Category', 7, 'delete_category'),
(28, 'Can view Category', 7, 'view_category'),
(29, 'Can add produit', 8, 'add_produit'),
(30, 'Can change produit', 8, 'change_produit'),
(31, 'Can delete produit', 8, 'delete_produit'),
(32, 'Can view produit', 8, 'view_produit'),
(33, 'Can add fournisseur', 9, 'add_fournisseur'),
(34, 'Can change fournisseur', 9, 'change_fournisseur'),
(35, 'Can delete fournisseur', 9, 'delete_fournisseur'),
(36, 'Can view fournisseur', 9, 'view_fournisseur'),
(37, 'Can add unite', 10, 'add_unite'),
(38, 'Can change unite', 10, 'change_unite'),
(39, 'Can delete unite', 10, 'delete_unite'),
(40, 'Can view unite', 10, 'view_unite'),
(41, 'Can add stock transaction', 11, 'add_stocktransaction'),
(42, 'Can change stock transaction', 11, 'change_stocktransaction'),
(43, 'Can delete stock transaction', 11, 'delete_stocktransaction'),
(44, 'Can view stock transaction', 11, 'view_stocktransaction'),
(45, 'Can add mouvement stock', 11, 'add_mouvementstock'),
(46, 'Can change mouvement stock', 11, 'change_mouvementstock'),
(47, 'Can delete mouvement stock', 11, 'delete_mouvementstock'),
(48, 'Can view mouvement stock', 11, 'view_mouvementstock');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$kyVx1yupriiA8xQ20x0GLc$m0ib8JeQYHN6663cZxeX8g+xHOp0+a5NbsHU4Mx6KD4=', '2024-01-22 07:05:22.105361', 1, 'admin', '', '', '', 1, 1, '2024-01-19 06:50:16.058466'),
(2, 'pbkdf2_sha256$720000$argaSrkfE6PWljPQvS3bAM$UtszCNDSMHsIsdrlm9VULcvKlTRJ3+ZH2xjTy773UHI=', '2024-01-21 05:50:15.040067', 0, 'Richard', '', '', 'richard@gmail.com', 0, 1, '2024-01-20 11:31:24.313393');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-01-19 08:23:19.209448', '1', 'Boisson', 1, '[{\"added\": {}}]', 7, 1),
(2, '2024-01-19 08:23:36.467603', '1', 'Cageaut', 1, '[{\"added\": {}}]', 10, 1),
(3, '2024-01-19 08:23:55.706987', '1', 'STAR', 1, '[{\"added\": {}}]', 9, 1),
(4, '2024-01-19 08:23:58.293859', '1', 'Bierre', 1, '[{\"added\": {}}]', 8, 1),
(5, '2024-01-19 08:29:25.165847', '2', 'Produit laitier', 1, '[{\"added\": {}}]', 7, 1),
(6, '2024-01-19 08:29:34.564048', '2', 'Pièce', 1, '[{\"added\": {}}]', 10, 1),
(7, '2024-01-19 08:30:09.571225', '2', 'SUPER MAKI', 1, '[{\"added\": {}}]', 9, 1),
(8, '2024-01-19 11:02:13.392197', '6', 'test - 32 (2024-01-19 11:00:04.652827+00:00)', 3, '', 11, 1),
(9, '2024-01-19 11:13:17.979405', '8', 'None - 3 (2024-01-19 11:09:28.452787+00:00)', 3, '', 11, 1),
(10, '2024-01-20 18:41:29.722653', '5', 'Fromage', 3, '', 8, 1),
(11, '2024-01-20 18:41:35.362528', '8', 'Beure', 2, '[{\"changed\": {\"fields\": [\"Disponible\"]}}]', 8, 1),
(12, '2024-01-20 18:41:39.895946', '9', 'Fromage', 2, '[{\"changed\": {\"fields\": [\"Disponible\"]}}]', 8, 1),
(13, '2024-01-21 05:53:47.040131', '8', 'Beure', 2, '[{\"changed\": {\"fields\": [\"Disponible\"]}}]', 8, 1),
(14, '2024-01-22 06:41:32.225972', '16', 'Fromage - 5 (2024-01-20 15:01:47.686258+00:00)', 3, '', 11, 1),
(15, '2024-01-22 06:41:32.225972', '15', 'Beure - 15 (2024-01-20 14:59:54.602995+00:00)', 3, '', 11, 1),
(16, '2024-01-22 06:41:32.225972', '14', 'T-shirt - 2 (2024-01-20 14:36:49.075093+00:00)', 3, '', 11, 1),
(17, '2024-01-22 06:41:32.241635', '13', 'Beure - 6 (2024-01-20 13:57:48.796693+00:00)', 3, '', 11, 1),
(18, '2024-01-22 06:41:32.241635', '12', 'Beure - 1 (2024-01-20 13:21:33.811401+00:00)', 3, '', 11, 1),
(19, '2024-01-22 06:41:32.241635', '11', 'Beure - 1 (2024-01-20 13:20:14.114566+00:00)', 3, '', 11, 1),
(20, '2024-01-22 06:41:32.241635', '10', 'Beure - 200 (2024-01-20 12:47:54.340088+00:00)', 3, '', 11, 1),
(21, '2024-01-22 06:41:32.241635', '9', 'Beure - 14 (2024-01-19 15:40:11.081562+00:00)', 3, '', 11, 1),
(22, '2024-01-22 06:41:39.114876', '11', 'Kappa', 3, '', 8, 1),
(23, '2024-01-22 06:41:39.114876', '10', 'T-shirt', 3, '', 8, 1),
(24, '2024-01-22 06:41:39.114876', '9', 'Fromage', 3, '', 8, 1),
(25, '2024-01-22 06:41:39.114876', '8', 'Beure', 3, '', 8, 1),
(26, '2024-01-22 06:41:48.188329', '5', 'Aigle d\'or', 3, '', 9, 1),
(27, '2024-01-22 06:41:48.188329', '4', 'Baobab', 3, '', 9, 1),
(28, '2024-01-22 06:41:48.188329', '3', 'Leader price', 3, '', 9, 1),
(29, '2024-01-22 06:41:48.203961', '1', 'STAR', 3, '', 9, 1),
(30, '2024-01-22 06:41:48.203961', '2', 'SUPER MAKI', 3, '', 9, 1),
(31, '2024-01-22 06:41:55.934033', '4', 'Kg', 3, '', 10, 1),
(32, '2024-01-22 06:41:55.934033', '3', 'Pack', 3, '', 10, 1),
(33, '2024-01-22 06:41:55.948557', '2', 'Pièce', 3, '', 10, 1),
(34, '2024-01-22 06:41:55.948557', '1', 'Cageaut', 3, '', 10, 1),
(35, '2024-01-22 06:42:01.851050', '5', 'Test2', 3, '', 7, 1),
(36, '2024-01-22 06:42:01.851050', '4', 'Test3', 3, '', 7, 1),
(37, '2024-01-22 06:42:01.861063', '3', 'Test', 3, '', 7, 1),
(38, '2024-01-22 06:42:01.861063', '2', 'Produit laitier', 3, '', 7, 1),
(39, '2024-01-22 06:42:01.861063', '1', 'Boisson', 3, '', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'produit', 'category'),
(9, 'produit', 'fournisseur'),
(8, 'produit', 'produit'),
(10, 'produit', 'unite'),
(6, 'sessions', 'session'),
(11, 'stock', 'mouvementstock');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-01-19 06:18:36.691813'),
(2, 'auth', '0001_initial', '2024-01-19 06:18:37.460126'),
(3, 'admin', '0001_initial', '2024-01-19 06:18:37.632844'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-01-19 06:18:37.648882'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-01-19 06:18:37.664528'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-01-19 06:18:37.789982'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-01-19 06:18:37.852903'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-01-19 06:18:37.942499'),
(9, 'auth', '0004_alter_user_username_opts', '2024-01-19 06:18:37.947521'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-01-19 06:18:38.010036'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-01-19 06:18:38.010036'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-01-19 06:18:38.042805'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-01-19 06:18:38.072962'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-01-19 06:18:38.088587'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-01-19 06:18:38.183222'),
(16, 'auth', '0011_update_proxy_permissions', '2024-01-19 06:18:38.199254'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-01-19 06:18:38.214899'),
(18, 'sessions', '0001_initial', '2024-01-19 06:18:38.278222'),
(19, 'produit', '0001_initial', '2024-01-19 06:37:39.004757'),
(20, 'stock', '0001_initial', '2024-01-19 06:48:20.529597'),
(21, 'stock', '0002_rename_stocktransaction_mouvementstock', '2024-01-19 07:18:16.762451'),
(22, 'produit', '0002_alter_produit_category_alter_produit_fournisseur_and_more', '2024-01-19 10:58:01.987076'),
(23, 'stock', '0003_alter_mouvementstock_produit', '2024-01-19 10:58:02.002700'),
(24, 'stock', '0004_alter_mouvementstock_produit', '2024-01-19 11:03:20.161739'),
(25, 'stock', '0005_alter_mouvementstock_produit', '2024-01-19 11:09:01.183170'),
(26, 'stock', '0006_alter_mouvementstock_produit', '2024-01-19 11:14:14.188643');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3xyh3unnlo9l8139wdckprjvhgli98us', '.eJxVjDkOwjAQAP_iGlnJro8sJX3eEPlY4wCypTipEH9HllJAOzOat1jcseflaLwtaxRXAeLyy7wLTy5dxIcr9ypDLfu2etkTedom5xr5dTvbv0F2LfetBoMpeDLKW880qBGtNSaqMRADkp5o0CaxJwDFFANqbRFhSmQYQXy-u_42qA:1rRBQY:f2Dek0JY0xscFuuRuWKLR1G_E9o-_j2jbn5Gvjkncec', '2024-02-03 13:30:26.663947'),
('ddgqw58rsyqj5okc1jbn8ryux15ru5xl', '.eJxVjDkOwjAQAP_iGlnJro8sJX3eEPlY4wCypTipEH9HllJAOzOat1jcseflaLwtaxRXAeLyy7wLTy5dxIcr9ypDLfu2etkTedom5xr5dTvbv0F2LfetBoMpeDLKW880qBGtNSaqMRADkp5o0CaxJwDFFANqbRFhSmQYQXy-u_42qA:1rRD2d:m1zSdYYPsHJCpjuBdA7TfXyW6n8CYyZOvtcByKrV6y8', '2024-02-03 15:13:51.193199'),
('eyubzijd3b8jdh2unxzs5co0gskvqmbg', '.eJxVjDkOwjAQAP_iGlnJro8sJX3eEPlY4wCypTipEH9HllJAOzOat1jcseflaLwtaxRXAeLyy7wLTy5dxIcr9ypDLfu2etkTedom5xr5dTvbv0F2LfetBoMpeDLKW880qBGtNSaqMRADkp5o0CaxJwDFFANqbRFhSmQYQXy-u_42qA:1rRDv3:S2BMoR8EVeUukOBZiftc9M5zrkhB361VCTk7glAFO-k', '2024-02-03 16:10:05.890785'),
('gi60qaloxa760lxgvn952fiv4dvvbiwk', '.eJxVjDkOwjAQAP_iGlnJro8sJX3eEPlY4wCypTipEH9HllJAOzOat1jcseflaLwtaxRXAeLyy7wLTy5dxIcr9ypDLfu2etkTedom5xr5dTvbv0F2LfetBoMpeDLKW880qBGtNSaqMRADkp5o0CaxJwDFFANqbRFhSmQYQXy-u_42qA:1rRBAf:82ZfekXFxynUQJUboG-DoNDMkG-bMNLJsX1GdSteJwY', '2024-02-03 13:14:01.241119'),
('hbhd4f8stsqd19y2s4lh9ojk7z1ge5u2', '.eJxVjEEOwiAQRe_C2pBhUgRcuvcMZGAYqRqalHbVeHdt0oVu_3vvbyrSutS49jLHkdVFGXX63RLlZ2k74Ae1-6Tz1JZ5THpX9EG7vk1cXtfD_Tuo1Ou3DihgXBKxUAIPwsEPhB7gjAwGfQJwzDa4QizZOp-Qg0loyRVnhNT7A97DOAQ:1rQk4h:lqH6ccd5aE4eWvLxcIrz2SSXugdfovEOsFZ7h0xXo8c', '2024-02-02 08:18:03.081535'),
('o8w1qfhpf0zkce2atrqpmipklzfbtk89', '.eJxVjDkOwjAQAP_iGlnJro8sJX3eEPlY4wCypTipEH9HllJAOzOat1jcseflaLwtaxRXAeLyy7wLTy5dxIcr9ypDLfu2etkTedom5xr5dTvbv0F2LfetBoMpeDLKW880qBGtNSaqMRADkp5o0CaxJwDFFANqbRFhSmQYQXy-u_42qA:1rR9ZY:_gpucmZ1K9ax2L3pcXhhkuzjo1PG8qhxpkKZi1Bo30A', '2024-02-03 11:31:36.604019'),
('p84i00bkc6klkqwzo1e674ts0tfx4c2l', '.eJxVjEEOwiAQRe_C2pBhUgRcuvcMZGAYqRqalHbVeHdt0oVu_3vvbyrSutS49jLHkdVFGXX63RLlZ2k74Ae1-6Tz1JZ5THpX9EG7vk1cXtfD_Tuo1Ou3DihgXBKxUAIPwsEPhB7gjAwGfQJwzDa4QizZOp-Qg0loyRVnhNT7A97DOAQ:1rQjZx:nzqVxi6ymPgFB5z8yVtFRFpa0Q_IyNC2Fe0Qd_b03ZI', '2024-02-02 07:46:17.590769'),
('w6gvjvpuh78ndbx5zcsl6pt73dqiuosp', '.eJxVjEEOwiAQRe_C2pBhUgRcuvcMZGAYqRqalHbVeHdt0oVu_3vvbyrSutS49jLHkdVFGXX63RLlZ2k74Ae1-6Tz1JZ5THpX9EG7vk1cXtfD_Tuo1Ou3DihgXBKxUAIPwsEPhB7gjAwGfQJwzDa4QizZOp-Qg0loyRVnhNT7A97DOAQ:1rR44p:TGGkW2v8lvJWxm8bFNSczwv8qJoyEFZNOf2R6PWcXwE', '2024-02-03 05:39:31.573470'),
('y8e0glhm9t166rasz8972dgweaqd18e6', '.eJxVjEEOwiAQRe_C2pBhUgRcuvcMZGAYqRqalHbVeHdt0oVu_3vvbyrSutS49jLHkdVFGXX63RLlZ2k74Ae1-6Tz1JZ5THpX9EG7vk1cXtfD_Tuo1Ou3DihgXBKxUAIPwsEPhB7gjAwGfQJwzDa4QizZOp-Qg0loyRVnhNT7A97DOAQ:1rQjOu:37-wraZKGT80RX75U--68zr8quDcevUMv6mDXtYF59o', '2024-02-02 07:34:52.971178'),
('ycaibkcegiwua3yahjxkuqm3rgjq1ppo', '.eJxVjEEOwiAQRe_C2pBhUgRcuvcMZGAYqRqalHbVeHdt0oVu_3vvbyrSutS49jLHkdVFGXX63RLlZ2k74Ae1-6Tz1JZ5THpX9EG7vk1cXtfD_Tuo1Ou3DihgXBKxUAIPwsEPhB7gjAwGfQJwzDa4QizZOp-Qg0loyRVnhNT7A97DOAQ:1rRQlR:Qb_RbQcPkHYH1NVCAD6cPFbYtr8vnt1t_L_4bJePASE', '2024-02-04 05:53:01.236094'),
('yztpz7nxyb9pbf7vlps1beaajoqc1sg5', 'e30:1rQjJY:JkirPQQlL0YhW06-laT_u4tKFAIia73vovRlzON-J3U', '2024-02-02 07:29:20.852348');

-- --------------------------------------------------------

--
-- Table structure for table `produit_category`
--

CREATE TABLE `produit_category` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `produit_category`
--

INSERT INTO `produit_category` (`id`, `nom`) VALUES
(6, 'star');

-- --------------------------------------------------------

--
-- Table structure for table `produit_fournisseur`
--

CREATE TABLE `produit_fournisseur` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `adress` varchar(100) DEFAULT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `produit_produit`
--

CREATE TABLE `produit_produit` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(200) NOT NULL,
  `description` longtext DEFAULT NULL,
  `prix` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  `seuil_minimum` int(11) DEFAULT NULL,
  `date_creation` date NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `fournisseur_id` bigint(20) DEFAULT NULL,
  `unite_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `produit_produit`
--

INSERT INTO `produit_produit` (`id`, `nom`, `description`, `prix`, `quantite`, `seuil_minimum`, `date_creation`, `disponible`, `category_id`, `fournisseur_id`, `unite_id`) VALUES
(12, 'jus', 'GHGH', 1000, 123, 5, '2024-01-22', 1, 6, NULL, 5),
(13, 'Savony', '', 1500, 5, 9, '2024-01-22', 1, 6, NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `produit_unite`
--

CREATE TABLE `produit_unite` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `produit_unite`
--

INSERT INTO `produit_unite` (`id`, `nom`) VALUES
(5, 'piece');

-- --------------------------------------------------------

--
-- Table structure for table `stock_mouvementstock`
--

CREATE TABLE `stock_mouvementstock` (
  `id` bigint(20) NOT NULL,
  `quantite` int(11) NOT NULL,
  `type_transaction` varchar(10) NOT NULL,
  `date_transaction` datetime(6) NOT NULL,
  `produit_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stock_mouvementstock`
--

INSERT INTO `stock_mouvementstock` (`id`, `quantite`, `type_transaction`, `date_transaction`, `produit_id`) VALUES
(17, 100, 'in', '2024-01-22 06:44:43.640492', 12),
(18, 25, 'out', '2024-01-22 07:06:04.226726', 13);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `produit_category`
--
ALTER TABLE `produit_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produit_fournisseur`
--
ALTER TABLE `produit_fournisseur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produit_produit`
--
ALTER TABLE `produit_produit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produit_produit_category_id_d28de223_fk_produit_category_id` (`category_id`),
  ADD KEY `produit_produit_fournisseur_id_f8cf77cb_fk_produit_f` (`fournisseur_id`),
  ADD KEY `produit_produit_unite_id_d905b027_fk_produit_unite_id` (`unite_id`);

--
-- Indexes for table `produit_unite`
--
ALTER TABLE `produit_unite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_mouvementstock`
--
ALTER TABLE `stock_mouvementstock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_mouvementstock_produit_id_01608615_fk_produit_produit_id` (`produit_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `produit_category`
--
ALTER TABLE `produit_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `produit_fournisseur`
--
ALTER TABLE `produit_fournisseur`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `produit_produit`
--
ALTER TABLE `produit_produit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `produit_unite`
--
ALTER TABLE `produit_unite`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stock_mouvementstock`
--
ALTER TABLE `stock_mouvementstock`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `produit_produit`
--
ALTER TABLE `produit_produit`
  ADD CONSTRAINT `produit_produit_category_id_d28de223_fk_produit_category_id` FOREIGN KEY (`category_id`) REFERENCES `produit_category` (`id`),
  ADD CONSTRAINT `produit_produit_fournisseur_id_f8cf77cb_fk_produit_f` FOREIGN KEY (`fournisseur_id`) REFERENCES `produit_fournisseur` (`id`),
  ADD CONSTRAINT `produit_produit_unite_id_d905b027_fk_produit_unite_id` FOREIGN KEY (`unite_id`) REFERENCES `produit_unite` (`id`);

--
-- Constraints for table `stock_mouvementstock`
--
ALTER TABLE `stock_mouvementstock`
  ADD CONSTRAINT `stock_mouvementstock_produit_id_01608615_fk_produit_produit_id` FOREIGN KEY (`produit_id`) REFERENCES `produit_produit` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
