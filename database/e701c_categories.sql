-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2022 at 06:20 PM
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
-- Table structure for table `e701c_categories`
--

CREATE TABLE `e701c_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lft` int(11) NOT NULL DEFAULT 0,
  `rgt` int(11) NOT NULL DEFAULT 0,
  `level` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 0,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `params` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e701c_categories`
--

INSERT INTO `e701c_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 21, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 747, '2021-09-13 10:08:31', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 11, 16, 17, 2, 'datanew/uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 747, '2021-09-13 10:08:31', 747, '2021-12-16 16:00:04', 0, '*', 1),
(3, 28, 1, 1, 2, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 747, '2021-09-13 10:08:31', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 3, 4, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 747, '2021-09-13 10:08:31', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 5, 6, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 747, '2021-09-13 10:08:31', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 7, 8, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 747, '2021-09-13 10:08:31', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 65, 1, 9, 10, 1, 'download', 'com_content', 'download', 'download', '', '<ul>\r\n<li><span style=\"color: #1f497d; font-family: \'Angsana New\', serif; font-size: large;\"><span style=\"font-family: \'TH SarabunPSK\', sans-serif; font-size: x-large;\"><span lang=\"th\"><b>ใบสมัครสมาชิก</b></span></span></span></li>\r\n<li><span style=\"color: #1f497d; font-family: \'Angsana New\', serif; font-size: large;\"><span style=\"font-family: \'TH SarabunPSK\', sans-serif; font-size: x-large;\"><span lang=\"th\"><b>ใบขอกู้สามัญ</b></span></span></span></li>\r\n<li><span style=\"color: #1f497d; font-family: \'Angsana New\', serif; font-size: large;\"><span style=\"font-family: \'TH SarabunPSK\', sans-serif; font-size: x-large;\"><span lang=\"th\"><b>ใบขอกู้ฉุกเฉิน</b></span></span></span></li>\r\n<li><span style=\"color: #1f497d; font-family: \'Angsana New\', serif; font-size: large;\"><span style=\"font-family: \'TH SarabunPSK\', sans-serif; font-size: x-large;\"><span lang=\"th\"><b>ใบขอรับสวัสดิการ</b></span></span></span></li>\r\n<li><span style=\"color: #1f497d; font-family: \'Angsana New\', serif; font-size: large;\"><span style=\"font-family: \'TH SarabunPSK\', sans-serif; font-size: x-large;\"><span lang=\"th\"><b>ใบขอรับเงินณาปณกิจสมทบ</b></span></span></span></li>\r\n<li><span style=\"color: #1f497d; font-family: \'Angsana New\', serif; font-size: large;\"><span style=\"font-family: \'TH SarabunPSK\', sans-serif; font-size: x-large;\"><span lang=\"th\"><b>ใบขอลาออกและรับสภาพหนี้</b></span></span><span style=\"font-family: \'TH SarabunPSK\', sans-serif; font-size: x-large;\"><b>&nbsp;</b></span></span></li>\r\n<li><span style=\"color: #1f497d; font-family: \'Angsana New\', serif; font-size: large;\"><span style=\"font-family: \'TH SarabunPSK\', sans-serif; font-size: x-large;\"><span lang=\"th\"><b>ใบขอลาออก</b></span></span></span></li>\r\n</ul>', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 747, '2021-09-21 17:55:09', 747, '2021-09-21 18:02:53', 0, '*', 1),
(9, 71, 1, 11, 12, 1, 'faq', 'com_content', 'FAQ', 'faq', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 747, '2021-10-05 16:21:40', 0, '2021-10-05 16:21:40', 0, '*', 1),
(10, 72, 11, 14, 15, 2, 'datanew/news', 'com_content', 'News', 'news', '', '', -2, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 747, '2021-10-05 16:22:13', 747, '2021-10-13 12:24:00', 0, '*', 1),
(11, 74, 1, 13, 18, 1, 'datanew', 'com_content', 'datanews', 'datanew', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 747, '2021-10-06 08:02:25', 747, '2021-11-28 16:36:59', 0, '*', 1),
(12, 93, 1, 19, 20, 1, 'about', 'com_content', 'about', 'about', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 747, '2022-01-06 16:44:51', 0, '2022-01-06 16:44:51', 0, '*', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `e701c_categories`
--
ALTER TABLE `e701c_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `e701c_categories`
--
ALTER TABLE `e701c_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
