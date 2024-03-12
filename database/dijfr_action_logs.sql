-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2022 at 04:55 PM
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
-- Table structure for table `dijfr_action_logs`
--

CREATE TABLE `dijfr_action_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `message_language_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT 0,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `ip_address` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.0.0.0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dijfr_action_logs`
--

INSERT INTO `dijfr_action_logs` (`id`, `message_language_key`, `message`, `log_date`, `extension`, `user_id`, `item_id`, `ip_address`) VALUES
(1, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2021-08-24 16:34:13', 'com_users', 738, 0, 'COM_ACTIONLOGS_DISABLED'),
(2, 'PLG_ACTIONLOG_JOOMLA_USER_UPDATE', '{\"action\":\"joomlaupdate\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"738\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"version\":\"3.10.1\",\"oldversion\":\"3.9.28\"}', '2021-08-24 16:35:02', 'com_joomlaupdate', 738, 738, 'COM_ACTIONLOGS_DISABLED'),
(3, 'PLG_ACTIONLOG_JOOMLA_APPLICATION_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_APPLICATION_CONFIG\",\"extension_name\":\"com_config.application\",\"itemlink\":\"index.php?option=com_config\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 16:38:44', 'com_config.application', 738, 0, 'COM_ACTIONLOGS_DISABLED'),
(4, 'PLG_ACTIONLOG_JOOMLA_APPLICATION_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_APPLICATION_CONFIG\",\"extension_name\":\"com_config.application\",\"itemlink\":\"index.php?option=com_config\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 16:38:55', 'com_config.application', 738, 0, 'COM_ACTIONLOGS_DISABLED'),
(5, 'PLG_ACTIONLOG_JOOMLA_APPLICATION_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_APPLICATION_CONFIG\",\"extension_name\":\"com_config.application\",\"itemlink\":\"index.php?option=com_config\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 16:39:22', 'com_config.application', 738, 0, 'COM_ACTIONLOGS_DISABLED'),
(6, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_COMPONENT\",\"id\":10001,\"name\":\"COM_JCE\",\"extension_name\":\"COM_JCE\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 16:45:54', 'com_installer', 738, 10001, 'COM_ACTIONLOGS_DISABLED'),
(7, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10002,\"name\":\"plg_editors_jce\",\"extension_name\":\"plg_editors_jce\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 16:45:54', 'com_installer', 738, 10002, 'COM_ACTIONLOGS_DISABLED'),
(8, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10003,\"name\":\"plg_content_jce\",\"extension_name\":\"plg_content_jce\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 16:45:54', 'com_installer', 738, 10003, 'COM_ACTIONLOGS_DISABLED'),
(9, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10004,\"name\":\"plg_extension_jce\",\"extension_name\":\"plg_extension_jce\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 16:45:54', 'com_installer', 738, 10004, 'COM_ACTIONLOGS_DISABLED'),
(10, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10005,\"name\":\"plg_fields_mediajce\",\"extension_name\":\"plg_fields_mediajce\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 16:45:54', 'com_installer', 738, 10005, 'COM_ACTIONLOGS_DISABLED'),
(11, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10006,\"name\":\"plg_installer_jce\",\"extension_name\":\"plg_installer_jce\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 16:45:54', 'com_installer', 738, 10006, 'COM_ACTIONLOGS_DISABLED'),
(12, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10007,\"name\":\"plg_quickicon_jce\",\"extension_name\":\"plg_quickicon_jce\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 16:45:54', 'com_installer', 738, 10007, 'COM_ACTIONLOGS_DISABLED'),
(13, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10008,\"name\":\"plg_system_jce\",\"extension_name\":\"plg_system_jce\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 16:45:54', 'com_installer', 738, 10008, 'COM_ACTIONLOGS_DISABLED'),
(14, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"738\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"table\":\"#__wf_profiles\"}', '2021-08-24 16:45:54', 'com_checkin', 738, 738, 'COM_ACTIONLOGS_DISABLED'),
(15, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"738\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"table\":\"#__wf_profiles\"}', '2021-08-24 16:45:54', 'com_checkin', 738, 738, 'COM_ACTIONLOGS_DISABLED'),
(16, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"738\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"table\":\"#__wf_profiles\"}', '2021-08-24 16:45:54', 'com_checkin', 738, 738, 'COM_ACTIONLOGS_DISABLED'),
(17, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"738\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"table\":\"#__wf_profiles\"}', '2021-08-24 16:45:54', 'com_checkin', 738, 738, 'COM_ACTIONLOGS_DISABLED'),
(18, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"738\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"table\":\"#__wf_profiles\"}', '2021-08-24 16:45:54', 'com_checkin', 738, 738, 'COM_ACTIONLOGS_DISABLED'),
(19, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PACKAGE\",\"id\":10009,\"name\":\"PKG_JCE\",\"extension_name\":\"PKG_JCE\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 16:45:54', 'com_installer', 738, 10009, 'COM_ACTIONLOGS_DISABLED'),
(20, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10011,\"name\":\"System - Helix Ultimate Framework\",\"extension_name\":\"System - Helix Ultimate Framework\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 16:47:37', 'com_installer', 738, 10011, 'COM_ACTIONLOGS_DISABLED'),
(21, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_TEMPLATE\",\"id\":10012,\"name\":\"Education\",\"extension_name\":\"Education\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 16:47:37', 'com_installer', 738, 10012, 'COM_ACTIONLOGS_DISABLED'),
(22, 'PLG_ACTIONLOG_JOOMLA_PLUGIN_INSTALLED', '{\"action\":\"install\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":10010,\"name\":\"Education based template installer\",\"extension_name\":\"Education based template installer\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 16:47:37', 'com_installer', 738, 10010, 'COM_ACTIONLOGS_DISABLED'),
(23, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"\\u0e2b\\u0e19\\u0e49\\u0e32\\u0e41\\u0e23\\u0e01\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 16:49:13', 'com_menus.item', 738, 101, 'COM_ACTIONLOGS_DISABLED'),
(24, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"738\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"table\":\"#__menu\"}', '2021-08-24 16:49:13', 'com_checkin', 738, 738, 'COM_ACTIONLOGS_DISABLED'),
(25, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":107,\"title\":\"\\u0e40\\u0e01\\u0e35\\u0e48\\u0e22\\u0e27\\u0e01\\u0e31\\u0e1a\\u0e01\\u0e25\\u0e38\\u0e48\\u0e21\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=107\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 16:50:16', 'com_menus.item', 738, 107, 'COM_ACTIONLOGS_DISABLED'),
(26, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":8,\"title\":\"\\u0e02\\u0e49\\u0e2d\\u0e21\\u0e39\\u0e25\\u0e2a\\u0e2b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e2d\\u0e2d\\u0e21\\u0e17\\u0e23\\u0e31\\u0e1e\\u0e22\\u0e4c\\u0e1a\\u0e49\\u0e32\\u0e19\\u0e1a\\u0e32\\u0e07\\u0e01\\u0e30\\u0e42\\u0e14\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=8\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 16:51:12', 'com_categories.category', 738, 8, 'COM_ACTIONLOGS_DISABLED'),
(27, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"\\u0e40\\u0e01\\u0e35\\u0e48\\u0e22\\u0e27\\u0e01\\u0e31\\u0e1a\\u0e01\\u0e25\\u0e38\\u0e48\\u0e21\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 16:51:37', 'com_content.article', 738, 1, 'COM_ACTIONLOGS_DISABLED'),
(28, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":107,\"title\":\"\\u0e40\\u0e01\\u0e35\\u0e48\\u0e22\\u0e27\\u0e01\\u0e31\\u0e1a\\u0e01\\u0e25\\u0e38\\u0e48\\u0e21\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=107\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 16:52:08', 'com_menus.item', 738, 107, 'COM_ACTIONLOGS_DISABLED'),
(29, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"738\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"table\":\"#__menu\"}', '2021-08-24 16:52:08', 'com_checkin', 738, 738, 'COM_ACTIONLOGS_DISABLED'),
(30, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"\\u0e40\\u0e01\\u0e35\\u0e48\\u0e22\\u0e27\\u0e01\\u0e31\\u0e1a\\u0e01\\u0e25\\u0e38\\u0e48\\u0e21\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 16:52:46', 'com_content.article', 738, 1, 'COM_ACTIONLOGS_DISABLED'),
(31, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"738\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"table\":\"#__content\"}', '2021-08-24 16:52:46', 'com_checkin', 738, 738, 'COM_ACTIONLOGS_DISABLED'),
(32, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"738\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"table\":\"#__content\"}', '2021-08-24 16:52:49', 'com_checkin', 738, 738, 'COM_ACTIONLOGS_DISABLED'),
(33, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":107,\"title\":\"\\u0e40\\u0e01\\u0e35\\u0e48\\u0e22\\u0e27\\u0e01\\u0e31\\u0e1a\\u0e01\\u0e25\\u0e38\\u0e48\\u0e21\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=107\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 16:53:04', 'com_menus.item', 738, 107, 'COM_ACTIONLOGS_DISABLED'),
(34, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"738\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"table\":\"#__menu\"}', '2021-08-24 16:53:04', 'com_checkin', 738, 738, 'COM_ACTIONLOGS_DISABLED'),
(35, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_ARTICLE\",\"id\":1,\"title\":\"\\u0e40\\u0e01\\u0e35\\u0e48\\u0e22\\u0e27\\u0e01\\u0e31\\u0e1a\\u0e01\\u0e25\\u0e38\\u0e48\\u0e21\",\"itemlink\":\"index.php?option=com_content&task=article.edit&id=1\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 16:55:14', 'com_content.article', 738, 1, 'COM_ACTIONLOGS_DISABLED'),
(36, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"738\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"table\":\"#__content\"}', '2021-08-24 16:55:14', 'com_checkin', 738, 738, 'COM_ACTIONLOGS_DISABLED'),
(37, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":107,\"title\":\"\\u0e40\\u0e01\\u0e35\\u0e48\\u0e22\\u0e27\\u0e01\\u0e31\\u0e1a\\u0e01\\u0e25\\u0e38\\u0e48\\u0e21\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=107\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 16:55:50', 'com_menus.item', 738, 107, 'COM_ACTIONLOGS_DISABLED'),
(38, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"738\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"table\":\"#__menu\"}', '2021-08-24 16:55:50', 'com_checkin', 738, 738, 'COM_ACTIONLOGS_DISABLED'),
(39, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":8,\"title\":\"\\u0e02\\u0e49\\u0e2d\\u0e21\\u0e39\\u0e25\\u0e2a\\u0e2b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e2d\\u0e2d\\u0e21\\u0e17\\u0e23\\u0e31\\u0e1e\\u0e22\\u0e4c\\u0e1a\\u0e49\\u0e32\\u0e19\\u0e1a\\u0e32\\u0e07\\u0e01\\u0e30\\u0e42\\u0e14\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=8\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 17:00:12', 'com_categories.category', 738, 8, 'COM_ACTIONLOGS_DISABLED'),
(40, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"738\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"table\":\"#__categories\"}', '2021-08-24 17:00:12', 'com_checkin', 738, 738, 'COM_ACTIONLOGS_DISABLED'),
(41, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"738\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"table\":\"#__categories\"}', '2021-08-24 17:03:45', 'com_checkin', 738, 738, 'COM_ACTIONLOGS_DISABLED'),
(42, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":107,\"title\":\"\\u0e40\\u0e01\\u0e35\\u0e48\\u0e22\\u0e27\\u0e01\\u0e31\\u0e1a\\u0e01\\u0e25\\u0e38\\u0e48\\u0e21\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=107\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 17:04:45', 'com_menus.item', 738, 107, 'COM_ACTIONLOGS_DISABLED'),
(43, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"738\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"table\":\"#__menu\"}', '2021-08-24 17:04:45', 'com_checkin', 738, 738, 'COM_ACTIONLOGS_DISABLED'),
(44, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_CATEGORY\",\"id\":8,\"title\":\"\\u0e02\\u0e49\\u0e2d\\u0e21\\u0e39\\u0e25\\u0e2a\\u0e2b\\u0e01\\u0e23\\u0e13\\u0e4c\\u0e2d\\u0e2d\\u0e21\\u0e17\\u0e23\\u0e31\\u0e1e\\u0e22\\u0e4c\\u0e1a\\u0e49\\u0e32\\u0e19\\u0e1a\\u0e32\\u0e07\\u0e01\\u0e30\\u0e42\\u0e14\",\"itemlink\":\"index.php?option=com_categories&task=category.edit&id=8\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 17:05:29', 'com_categories.category', 738, 8, 'COM_ACTIONLOGS_DISABLED'),
(45, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"738\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"table\":\"#__categories\"}', '2021-08-24 17:05:29', 'com_checkin', 738, 738, 'COM_ACTIONLOGS_DISABLED'),
(46, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"738\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"table\":\"#__categories\"}', '2021-08-24 17:05:30', 'com_checkin', 738, 738, 'COM_ACTIONLOGS_DISABLED'),
(47, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"738\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"table\":\"#__menu\"}', '2021-08-24 17:05:50', 'com_checkin', 738, 738, 'COM_ACTIONLOGS_DISABLED'),
(48, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"738\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"table\":\"#__categories\"}', '2021-08-24 17:06:09', 'com_checkin', 738, 738, 'COM_ACTIONLOGS_DISABLED'),
(49, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"738\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"table\":\"#__categories\"}', '2021-08-24 17:06:13', 'com_checkin', 738, 738, 'COM_ACTIONLOGS_DISABLED'),
(50, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"738\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"table\":\"#__modules\"}', '2021-08-24 17:07:02', 'com_checkin', 738, 738, 'COM_ACTIONLOGS_DISABLED'),
(51, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"738\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"table\":\"#__menu\"}', '2021-08-24 17:07:05', 'com_checkin', 738, 738, 'COM_ACTIONLOGS_DISABLED'),
(52, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"738\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"table\":\"#__menu\"}', '2021-08-24 17:07:31', 'com_checkin', 738, 738, 'COM_ACTIONLOGS_DISABLED'),
(53, 'PLG_ACTIONLOG_JOOMLA_APPLICATION_CONFIG_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_APPLICATION_CONFIG\",\"extension_name\":\"com_config.application\",\"itemlink\":\"index.php?option=com_config\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 17:07:46', 'com_config.application', 738, 0, 'COM_ACTIONLOGS_DISABLED'),
(54, 'PLG_ACTIONLOG_JOOMLA_EXTENSION_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_PLUGIN\",\"id\":\"10011\",\"name\":\"System - Helix Ultimate Framework\",\"extension_name\":\"System - Helix Ultimate Framework\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 17:08:20', 'com_installer', 738, 10011, 'COM_ACTIONLOGS_DISABLED'),
(55, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":108,\"title\":\"\\u0e1b\\u0e23\\u0e30\\u0e27\\u0e31\\u0e15\\u0e34\\u0e04\\u0e27\\u0e32\\u0e21\\u0e40\\u0e1b\\u0e47\\u0e19\\u0e21\\u0e32\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=108\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 17:11:13', 'com_menus.item', 738, 108, 'COM_ACTIONLOGS_DISABLED'),
(56, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":109,\"title\":\"\\u0e04\\u0e13\\u0e30\\u0e01\\u0e23\\u0e23\\u0e21\\u0e01\\u0e32\\u0e23\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=109\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 17:11:29', 'com_menus.item', 738, 109, 'COM_ACTIONLOGS_DISABLED'),
(57, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":110,\"title\":\"\\u0e02\\u0e49\\u0e2d\\u0e1a\\u0e31\\u0e07\\u0e04\\u0e31\\u0e1a\\u0e41\\u0e25\\u0e30\\u0e23\\u0e30\\u0e40\\u0e1a\\u0e35\\u0e22\\u0e1a\\u0e01\\u0e25\\u0e38\\u0e48\\u0e21\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=110\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 17:11:50', 'com_menus.item', 738, 110, 'COM_ACTIONLOGS_DISABLED'),
(58, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":111,\"title\":\"\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e21\\u0e31\\u0e04\\u0e23\\u0e2a\\u0e21\\u0e32\\u0e0a\\u0e34\\u0e01\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=111\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 17:12:08', 'com_menus.item', 738, 111, 'COM_ACTIONLOGS_DISABLED'),
(59, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":112,\"title\":\"\\u0e01\\u0e32\\u0e23\\u0e1d\\u0e32\\u0e01\\u0e40\\u0e07\\u0e34\\u0e19\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=112\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 17:12:41', 'com_menus.item', 738, 112, 'COM_ACTIONLOGS_DISABLED'),
(60, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":113,\"title\":\"\\u0e01\\u0e32\\u0e23\\u0e01\\u0e39\\u0e49\\u0e40\\u0e07\\u0e34\\u0e19\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=113\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 17:13:59', 'com_menus.item', 738, 113, 'COM_ACTIONLOGS_DISABLED'),
(61, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"738\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"table\":\"#__menu\"}', '2021-08-24 17:15:58', 'com_checkin', 738, 738, 'COM_ACTIONLOGS_DISABLED'),
(62, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":114,\"title\":\"\\u0e01\\u0e32\\u0e23\\u0e23\\u0e31\\u0e1a\\u0e2a\\u0e27\\u0e31\\u0e2a\\u0e14\\u0e34\\u0e01\\u0e32\\u0e23\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=114\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 17:16:26', 'com_menus.item', 738, 114, 'COM_ACTIONLOGS_DISABLED'),
(63, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_ADDED', '{\"action\":\"add\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":115,\"title\":\"\\u0e01\\u0e32\\u0e23\\u0e23\\u0e31\\u0e1a\\u0e40\\u0e07\\u0e34\\u0e19\\u0e1b\\u0e31\\u0e19\\u0e1c\\u0e25\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=115\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 17:16:40', 'com_menus.item', 738, 115, 'COM_ACTIONLOGS_DISABLED'),
(64, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"738\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"table\":\"#__menu\"}', '2021-08-24 17:17:37', 'com_checkin', 738, 738, 'COM_ACTIONLOGS_DISABLED'),
(65, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"738\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"table\":\"#__menu\"}', '2021-08-24 17:17:51', 'com_checkin', 738, 738, 'COM_ACTIONLOGS_DISABLED'),
(66, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"\\u0e2b\\u0e19\\u0e49\\u0e32\\u0e41\\u0e23\\u0e01\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 17:17:58', 'com_menus.item', 738, 101, 'COM_ACTIONLOGS_DISABLED'),
(67, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"738\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"table\":\"#__menu\"}', '2021-08-24 17:17:58', 'com_checkin', 738, 738, 'COM_ACTIONLOGS_DISABLED'),
(68, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"\\u0e2b\\u0e19\\u0e49\\u0e32\\u0e41\\u0e23\\u0e01\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 17:19:28', 'com_menus.item', 738, 101, 'COM_ACTIONLOGS_DISABLED'),
(69, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"738\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"table\":\"#__menu\"}', '2021-08-24 17:19:28', 'com_checkin', 738, 738, 'COM_ACTIONLOGS_DISABLED'),
(70, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_IN', '{\"action\":\"login\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_SITE\"}', '2021-08-24 17:19:34', 'com_users', 738, 0, 'COM_ACTIONLOGS_DISABLED'),
(71, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":101,\"title\":\"\\u0e2b\\u0e19\\u0e49\\u0e32\\u0e41\\u0e23\\u0e01\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=101\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 17:19:45', 'com_menus.item', 738, 101, 'COM_ACTIONLOGS_DISABLED'),
(72, 'PLG_SYSTEM_ACTIONLOGS_CONTENT_UPDATED', '{\"action\":\"update\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_MENU_ITEM\",\"id\":107,\"title\":\"\\u0e40\\u0e01\\u0e35\\u0e48\\u0e22\\u0e27\\u0e01\\u0e31\\u0e1a\\u0e01\\u0e25\\u0e38\\u0e48\\u0e21\",\"itemlink\":\"index.php?option=com_menus&task=item.edit&id=107\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\"}', '2021-08-24 17:19:52', 'com_menus.item', 738, 107, 'COM_ACTIONLOGS_DISABLED'),
(73, 'PLG_ACTIONLOG_JOOMLA_USER_CHECKIN', '{\"action\":\"checkin\",\"type\":\"PLG_ACTIONLOG_JOOMLA_TYPE_USER\",\"id\":\"738\",\"title\":\"admin\",\"itemlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"table\":\"#__menu\"}', '2021-08-24 17:19:52', 'com_checkin', 738, 738, 'COM_ACTIONLOGS_DISABLED'),
(74, 'PLG_ACTIONLOG_JOOMLA_USER_LOGGED_OUT', '{\"action\":\"logout\",\"id\":\"738\",\"userid\":\"738\",\"username\":\"admin\",\"accountlink\":\"index.php?option=com_users&task=user.edit&id=738\",\"app\":\"PLG_ACTIONLOG_JOOMLA_APPLICATION_ADMINISTRATOR\"}', '2021-08-24 17:22:09', 'com_users', 738, 738, 'COM_ACTIONLOGS_DISABLED');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dijfr_action_logs`
--
ALTER TABLE `dijfr_action_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_user_id_logdate` (`user_id`,`log_date`),
  ADD KEY `idx_user_id_extension` (`user_id`,`extension`),
  ADD KEY `idx_extension_item_id` (`extension`,`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dijfr_action_logs`
--
ALTER TABLE `dijfr_action_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;