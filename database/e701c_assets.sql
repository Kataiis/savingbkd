-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2022 at 06:19 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saving_bkd`
--

-- --------------------------------------------------------

--
-- Table structure for table `e701c_assets`
--

CREATE TABLE `e701c_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT 0 COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e701c_assets`
--

INSERT INTO `e701c_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 167, 0, 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(8, 1, 17, 50, 1, 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),
(9, 1, 51, 52, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 53, 54, 1, 'com_installer', 'com_installer', '{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11, 1, 55, 56, 1, 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1}}'),
(12, 1, 57, 58, 1, 'com_login', 'com_login', '{}'),
(13, 1, 59, 60, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 61, 62, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 63, 64, 1, 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
(16, 1, 65, 68, 1, 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1}}'),
(17, 1, 69, 70, 1, 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18, 1, 71, 122, 1, 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1}}'),
(19, 1, 123, 126, 1, 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(20, 1, 127, 128, 1, 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1}}'),
(21, 1, 129, 130, 1, 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1}}'),
(22, 1, 131, 132, 1, 'com_search', 'com_search', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(23, 1, 133, 134, 1, 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1}}'),
(24, 1, 135, 138, 1, 'com_users', 'com_users', '{\"core.admin\":{\"7\":1}}'),
(26, 1, 139, 140, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 74, 37, 42, 3, 'com_content.category.2', 'Uncategorised', '{}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}'),
(30, 19, 124, 125, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}'),
(32, 24, 136, 137, 2, 'com_users.category.7', 'Uncategorised', '{}'),
(33, 1, 141, 142, 1, 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34, 1, 143, 144, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}'),
(35, 1, 145, 146, 1, 'com_tags', 'com_tags', '{}'),
(36, 1, 147, 148, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 149, 150, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 151, 152, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 72, 73, 2, 'com_modules.module.1', 'Main Menu', '{}'),
(40, 18, 74, 75, 2, 'com_modules.module.2', 'Login', '{}'),
(41, 18, 76, 77, 2, 'com_modules.module.3', 'Popular Articles', '{}'),
(42, 18, 78, 79, 2, 'com_modules.module.4', 'Recently Added Articles', '{}'),
(43, 18, 80, 81, 2, 'com_modules.module.8', 'Toolbar', '{}'),
(44, 18, 82, 83, 2, 'com_modules.module.9', 'Quick Icons', '{}'),
(45, 18, 84, 85, 2, 'com_modules.module.10', 'Logged-in Users', '{}'),
(46, 18, 86, 87, 2, 'com_modules.module.12', 'Admin Menu', '{}'),
(47, 18, 88, 89, 2, 'com_modules.module.13', 'Admin Submenu', '{}'),
(48, 18, 90, 91, 2, 'com_modules.module.14', 'User Status', '{}'),
(49, 18, 92, 93, 2, 'com_modules.module.15', 'Title', '{}'),
(50, 18, 94, 95, 2, 'com_modules.module.16', 'Login Form', '{}'),
(51, 18, 96, 97, 2, 'com_modules.module.17', 'Breadcrumbs', '{}'),
(52, 18, 98, 99, 2, 'com_modules.module.79', 'Multilanguage status', '{}'),
(53, 18, 100, 101, 2, 'com_modules.module.86', 'Joomla Version', '{}'),
(54, 16, 66, 67, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 18, 102, 103, 2, 'com_modules.module.87', 'Sample Data', '{}'),
(56, 1, 153, 154, 1, 'com_privacy', 'com_privacy', '{}'),
(57, 1, 155, 156, 1, 'com_actionlogs', 'com_actionlogs', '{}'),
(58, 18, 104, 105, 2, 'com_modules.module.88', 'Latest Actions', '{}'),
(59, 18, 106, 107, 2, 'com_modules.module.89', 'Privacy Dashboard', '{}'),
(60, 1, 157, 158, 1, 'com_fields', 'com_fields', '{}'),
(61, 1, 159, 160, 1, 'com_associations', 'com_associations', '{}'),
(62, 1, 161, 162, 1, 'com_jce', 'COM_JCE', '{}'),
(63, 1, 163, 164, 1, 'com_slideshowck', 'com_slideshowck', '{}'),
(64, 18, 108, 109, 2, 'com_modules.module.90', 'Slideshow CK', '{}'),
(65, 8, 18, 21, 2, 'com_content.category.8', 'download', '{}'),
(66, 65, 19, 20, 3, 'com_content.article.1', 'แบบฟอร์มเอกสาร', '{}'),
(67, 18, 110, 111, 2, 'com_modules.module.91', 'News Show Pro GK5', '{}'),
(68, 18, 112, 113, 2, 'com_modules.module.92', 'News Show', '{}'),
(69, 71, 23, 24, 3, 'com_content.article.2', 'FAQ', '{}'),
(71, 8, 22, 25, 2, 'com_content.category.9', 'FAQ', '{}'),
(72, 74, 27, 28, 3, 'com_content.category.10', 'News', '{}'),
(74, 8, 26, 45, 2, 'com_content.category.11', 'datanews', '{}'),
(77, 18, 114, 115, 2, 'com_modules.module.93', 'News Blog Layout - Latest Articles', '{}'),
(78, 27, 38, 39, 4, 'com_content.article.7', 'map', '{}'),
(79, 18, 116, 117, 2, 'com_modules.module.94', 'Minifrontpage', '{}'),
(80, 74, 29, 30, 3, 'com_content.article.8', 'news', '{}'),
(81, 18, 118, 119, 2, 'com_modules.module.95', 'map', '{}'),
(83, 18, 120, 121, 2, 'com_modules.module.96', 'News Update', '{}'),
(84, 74, 31, 32, 3, 'com_content.article.10', 'News 20 Nov 2021', '{}'),
(87, 27, 40, 41, 4, 'com_content.article.13', 'Link MiniFrontpage', '{}'),
(88, 74, 33, 34, 3, 'com_content.article.14', 'ข่าว3', '{}'),
(89, 74, 35, 36, 3, 'com_content.article.15', 'ข่าว4', '{}'),
(90, 74, 43, 44, 3, 'com_content.article.16', 'ข่าววันที่ 20 พฤศจิกายน 2564', '{}'),
(91, 1, 165, 166, 1, 'com_mdfiles', 'com_mdfiles', '{}'),
(92, 93, 47, 48, 3, 'com_content.article.17', 'ประวัติความเป็นมา', '{}'),
(93, 8, 46, 49, 2, 'com_content.category.12', 'about', '{}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `e701c_assets`
--
ALTER TABLE `e701c_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `e701c_assets`
--
ALTER TABLE `e701c_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=94;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
