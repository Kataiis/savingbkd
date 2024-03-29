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
-- Table structure for table `dijfr_updates`
--

CREATE TABLE `dijfr_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT 0,
  `extension_id` int(11) DEFAULT 0,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(4) DEFAULT 0,
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Dumping data for table `dijfr_updates`
--

INSERT INTO `dijfr_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(2, 2, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/hy-AM_details.xml', '', ''),
(3, 2, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.4.1.2', '', 'https://update.joomla.org/language/details3/ms-MY_details.xml', '', ''),
(4, 2, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.9.28.1', '', 'https://update.joomla.org/language/details3/ro-RO_details.xml', '', ''),
(5, 2, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.10.0.1', '', 'https://update.joomla.org/language/details3/nl-BE_details.xml', '', ''),
(6, 2, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.8.0.1', '', 'https://update.joomla.org/language/details3/zh-TW_details.xml', '', ''),
(7, 2, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.10.1.1', '', 'https://update.joomla.org/language/details3/fr-FR_details.xml', '', ''),
(8, 2, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/gl-ES_details.xml', '', ''),
(9, 2, 0, 'Georgian', '', 'pkg_ka-GE', 'package', '', 0, '3.10.0.2', '', 'https://update.joomla.org/language/details3/ka-GE_details.xml', '', ''),
(10, 2, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.10.0.1', '', 'https://update.joomla.org/language/details3/el-GR_details.xml', '', ''),
(11, 2, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.10.0.1', '', 'https://update.joomla.org/language/details3/ja-JP_details.xml', '', ''),
(12, 2, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/he-IL_details.xml', '', ''),
(13, 2, 0, 'Bengali', '', 'pkg_bn-BD', 'package', '', 0, '3.8.10.1', '', 'https://update.joomla.org/language/details3/bn-BD_details.xml', '', ''),
(14, 2, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.10.1.1', '', 'https://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(15, 2, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.9.16.1', '', 'https://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(16, 2, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.9.27.1', '', 'https://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(17, 2, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(18, 2, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.6.5.2', '', 'https://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(19, 2, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.9.23.1', '', 'https://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(20, 2, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.9.28.1', '', 'https://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(21, 2, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.9.28.2', '', 'https://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(22, 2, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.10.0.1', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(23, 2, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.10.1.1', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(24, 2, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.10.1.1', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(25, 2, 0, 'Esperanto', '', 'pkg_eo-XX', 'package', '', 0, '3.8.11.1', '', 'https://update.joomla.org/language/details3/eo-XX_details.xml', '', ''),
(26, 2, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.9.21.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(27, 2, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.10.0.1', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(28, 2, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(29, 2, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.8.9.1', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(30, 2, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.9.25.2', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(31, 2, 0, 'Lithuanian', '', 'pkg_lt-LT', 'package', '', 0, '3.9.16.1', '', 'https://update.joomla.org/language/details3/lt-LT_details.xml', '', ''),
(32, 2, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(33, 2, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.10.0.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(34, 2, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(35, 2, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.10.1.1', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(36, 2, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.9.28.1', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(37, 2, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.9.29.2', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(38, 2, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.10.0.1', '', 'https://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(39, 2, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.9.28.1', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(40, 2, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.9.28.1', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(41, 2, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.9.28.1', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(42, 2, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.9.28.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(43, 2, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(44, 2, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.10.1.1', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(45, 2, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.10.1.2', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(46, 2, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.9.28.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(47, 2, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.9.28.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(48, 2, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.7.5.2', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(49, 2, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(50, 2, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.9.24.1', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', ''),
(51, 2, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.2', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(52, 2, 0, 'German DE', '', 'pkg_de-DE', 'package', '', 0, '3.10.1.1', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(53, 2, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.9.21.1', '', 'https://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(54, 2, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.9.28.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(55, 2, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.10.0.1', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(56, 2, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.9.24.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(57, 2, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.9.28.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(58, 2, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(59, 2, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(60, 2, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.9.16.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(61, 2, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.9.28.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(62, 2, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(63, 2, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.9.28.1', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(64, 2, 0, 'French CA', '', 'pkg_fr-CA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(65, 2, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.10.1.1', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(66, 2, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(67, 2, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.3', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(68, 2, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.2', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
(69, 2, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.8.13.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', ''),
(70, 2, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', ''),
(71, 2, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.9.28.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', ''),
(72, 2, 0, 'Spanish CO', '', 'pkg_es-CO', 'package', '', 0, '3.9.15.1', '', 'https://update.joomla.org/language/details3/es-CO_details.xml', '', ''),
(73, 2, 0, 'German CH', '', 'pkg_de-CH', 'package', '', 0, '3.10.1.1', '', 'https://update.joomla.org/language/details3/de-CH_details.xml', '', ''),
(74, 2, 0, 'German AT', '', 'pkg_de-AT', 'package', '', 0, '3.10.1.1', '', 'https://update.joomla.org/language/details3/de-AT_details.xml', '', ''),
(75, 2, 0, 'German LI', '', 'pkg_de-LI', 'package', '', 0, '3.10.1.1', '', 'https://update.joomla.org/language/details3/de-LI_details.xml', '', ''),
(76, 2, 0, 'German LU', '', 'pkg_de-LU', 'package', '', 0, '3.10.1.1', '', 'https://update.joomla.org/language/details3/de-LU_details.xml', '', ''),
(77, 2, 0, 'English NZ', '', 'pkg_en-NZ', 'package', '', 0, '3.9.28.1', '', 'https://update.joomla.org/language/details3/en-NZ_details.xml', '', ''),
(78, 2, 0, 'Kazakh', '', 'pkg_kk-KZ', 'package', '', 0, '3.9.23.1', '', 'https://update.joomla.org/language/details3/kk-KZ_details.xml', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dijfr_updates`
--
ALTER TABLE `dijfr_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dijfr_updates`
--
ALTER TABLE `dijfr_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
