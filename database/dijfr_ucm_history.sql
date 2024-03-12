-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2022 at 06:18 PM
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
-- Table structure for table `dijfr_ucm_history`
--

CREATE TABLE `dijfr_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dijfr_ucm_history`
--

INSERT INTO `dijfr_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 8, 5, '', '2021-08-24 16:51:12', 738, 922, 'f0f5559cf926b8592f59bd4f8c9917afa45afe5c', '{\"id\":8,\"asset_id\":63,\"parent_id\":\"1\",\"lft\":\"11\",\"rgt\":12,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"\\u0e02\\u0e49\\u0e2d\\u0e21\\u0e39\\u0e25\\u0e2a\\u0e2b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e2d\\u0e2d\\u0e21\\u0e17\\u0e23\\u0e31\\u0e1e\\u0e22\\u0e4c\\u0e1a\\u0e49\\u0e32\\u0e19\\u0e1a\\u0e32\\u0e07\\u0e01\\u0e30\\u0e42\\u0e14\",\"alias\":\"\\u0e02\\u0e49\\u0e2d\\u0e21\\u0e39\\u0e25\\u0e2a\\u0e2b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e2d\\u0e2d\\u0e21\\u0e17\\u0e23\\u0e31\\u0e1e\\u0e22\\u0e4c\\u0e1a\\u0e49\\u0e32\\u0e19\\u0e1a\\u0e32\\u0e07\\u0e01\\u0e30\\u0e42\\u0e14\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"738\",\"created_time\":\"2021-08-24 16:51:12\",\"modified_user_id\":null,\"modified_time\":\"2021-08-24 16:51:12\",\"hits\":null,\"language\":\"*\",\"version\":null}', 0),
(2, 1, 1, '', '2021-08-24 16:51:37', 738, 2111, 'd04c1b5c2c457aa65b76cf186b1eee5760769f3d', '{\"id\":1,\"asset_id\":64,\"title\":\"\\u0e40\\u0e01\\u0e35\\u0e48\\u0e22\\u0e27\\u0e01\\u0e31\\u0e1a\\u0e01\\u0e25\\u0e38\\u0e48\\u0e21\",\"alias\":\"\\u0e40\\u0e01\\u0e35\\u0e48\\u0e22\\u0e27\\u0e01\\u0e31\\u0e1a\\u0e01\\u0e25\\u0e38\\u0e48\\u0e21\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2021-08-24 16:51:37\",\"created_by\":\"738\",\"created_by_alias\":\"\",\"modified\":\"2021-08-24 16:51:37\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2021-08-24 16:51:37\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"helix_ultimate_image\\\":\\\"\\\",\\\"helix_ultimate_image_alt_txt\\\":\\\"\\\",\\\"helix_ultimate_article_format\\\":\\\"standard\\\",\\\"helix_ultimate_audio\\\":\\\"\\\",\\\"helix_ultimate_gallery\\\":\\\"\\\",\\\"helix_ultimate_video\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\",\"note\":\"\"}', 0),
(3, 8, 5, '', '2021-08-24 17:00:12', 738, 948, '6928621106409c2f0ae1aee2c3ce68733005a3b6', '{\"id\":8,\"asset_id\":\"63\",\"parent_id\":\"1\",\"lft\":\"11\",\"rgt\":\"12\",\"level\":\"1\",\"path\":\"\\u0e02\\u0e49\\u0e2d\\u0e21\\u0e39\\u0e25\\u0e2a\\u0e2b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e2d\\u0e2d\\u0e21\\u0e17\\u0e23\\u0e31\\u0e1e\\u0e22\\u0e4c\\u0e1a\\u0e49\\u0e32\\u0e19\\u0e1a\\u0e32\\u0e07\\u0e01\\u0e30\\u0e42\\u0e14\",\"extension\":\"com_content\",\"title\":\"\\u0e02\\u0e49\\u0e2d\\u0e21\\u0e39\\u0e25\\u0e2a\\u0e2b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e2d\\u0e2d\\u0e21\\u0e17\\u0e23\\u0e31\\u0e1e\\u0e22\\u0e4c\\u0e1a\\u0e49\\u0e32\\u0e19\\u0e1a\\u0e32\\u0e07\\u0e01\\u0e30\\u0e42\\u0e14\",\"alias\":\"about\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":\"738\",\"checked_out_time\":\"2021-08-24 16:59:47\",\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"738\",\"created_time\":\"2021-08-24 16:51:12\",\"modified_user_id\":\"738\",\"modified_time\":\"2021-08-24 17:00:12\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}', 0),
(4, 8, 5, '', '2021-08-24 17:05:29', 738, 961, '428c009f47119010816e733c1fb4f87cc9ed6236', '{\"id\":8,\"asset_id\":\"63\",\"parent_id\":\"1\",\"lft\":\"11\",\"rgt\":\"12\",\"level\":\"1\",\"path\":\"about\",\"extension\":\"com_content\",\"title\":\"\\u0e02\\u0e49\\u0e2d\\u0e21\\u0e39\\u0e25\\u0e2a\\u0e2b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e2d\\u0e2d\\u0e21\\u0e17\\u0e23\\u0e31\\u0e1e\\u0e22\\u0e4c\\u0e1a\\u0e49\\u0e32\\u0e19\\u0e1a\\u0e32\\u0e07\\u0e01\\u0e30\\u0e42\\u0e14\",\"alias\":\"about\",\"note\":\"\",\"description\":\"<p>\\u0e02\\u0e49\\u0e2d\\u0e21\\u0e39\\u0e25\\u0e2a\\u0e2b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e2d\\u0e2d\\u0e21\\u0e17\\u0e23\\u0e31\\u0e1e\\u0e22\\u0e4c\\u0e1a\\u0e49\\u0e32\\u0e19\\u0e1a\\u0e32\\u0e07\\u0e01\\u0e30\\u0e42\\u0e14<\\/p>\",\"published\":\"1\",\"checked_out\":\"738\",\"checked_out_time\":\"2021-08-24 17:05:09\",\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"738\",\"created_time\":\"2021-08-24 16:51:12\",\"modified_user_id\":\"738\",\"modified_time\":\"2021-08-24 17:05:29\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dijfr_ucm_history`
--
ALTER TABLE `dijfr_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dijfr_ucm_history`
--
ALTER TABLE `dijfr_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
