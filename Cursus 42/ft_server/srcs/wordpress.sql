-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Сен 30 2020 г., 15:27
-- Версия сервера: 10.3.23-MariaDB-0+deb10u1
-- Версия PHP: 7.3.19-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `wordpress`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-09-30 16:43:12', '2020-09-30 13:43:12', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://localhost/wordpress', 'yes'),
(2, 'home', 'https://localhost/wordpress', 'yes'),
(3, 'blogname', 'hwindom_ft_server', 'yes'),
(4, 'blogdescription', 'SCHOLL 21', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'nik.yaroslavl@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:5:{i:2;a:4:{s:5:\"title\";s:21:\"Найдите нас\";s:4:\"text\";s:226:\"<strong>Адрес</strong>\n123 Мейн стрит\nНью Йорк, NY 10001\n\n<strong>Часы</strong>\nПонедельник&mdash;пятница: 9:00&ndash;17:00\nСуббота и воскресенье: 11:00&ndash;15:00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:13:\"О сайте\";s:4:\"text\";s:205:\"Здесь может быть отличное место для того, чтобы представить себя, свой сайт или выразить какие-то благодарности.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:21:\"Найдите нас\";s:4:\"text\";s:226:\"<strong>Адрес</strong>\n123 Мейн стрит\nНью Йорк, NY 10001\n\n<strong>Часы</strong>\nПонедельник&mdash;пятница: 9:00&ndash;17:00\nСуббота и воскресенье: 11:00&ndash;15:00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:13:\"О сайте\";s:4:\"text\";s:205:\"Здесь может быть отличное место для того, чтобы представить себя, свой сайт или выразить какие-то благодарности.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '11', 'yes'),
(82, 'page_on_front', '8', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1617025392', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'WPLANG', 'ru_RU', 'yes'),
(99, 'widget_search', 'a:4:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;i:3;a:1:{s:5:\"title\";s:10:\"Поиск\";}i:4;a:1:{s:5:\"title\";s:10:\"Поиск\";}}', 'yes'),
(100, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-2\";i:1;s:8:\"search-3\";i:2;s:6:\"text-3\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-4\";}s:9:\"sidebar-3\";a:2:{i:0;s:6:\"text-5\";i:1;s:8:\"search-4\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:6:{i:1601480595;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1601516595;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1601559795;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1601559802;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1601559803;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'recovery_keys', 'a:0:{}', 'yes'),
(123, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.5.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1601473400;s:15:\"version_checked\";s:5:\"5.5.1\";s:12:\"translations\";a:0:{}}', 'no'),
(124, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1601479560;s:7:\"checked\";a:3:{s:14:\"twentynineteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"2.4\";s:12:\"twentytwenty\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.7.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(125, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1601473402;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.1.6\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(126, '_site_transient_timeout_browser_1b821eea6503a8c2ca58fdb96df9e52f', '1602078203', 'no'),
(127, '_site_transient_browser_1b821eea6503a8c2ca58fdb96df9e52f', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"84.0.4147.105\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(128, '_site_transient_timeout_php_check_3a2d9985cedb197b672d242e982a58e6', '1602078203', 'no'),
(129, '_site_transient_php_check_3a2d9985cedb197b672d242e982a58e6', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(131, 'can_compress_scripts', '1', 'no'),
(132, '_transient_timeout_dash_v2_f69de0bbfe7eaa113146875f40c02000', '1601516604', 'no'),
(133, '_transient_dash_v2_f69de0bbfe7eaa113146875f40c02000', '<div class=\"rss-widget\"><p><strong>Ошибка RSS:</strong> XML or PCRE extensions not loaded!</p></div><div class=\"rss-widget\"><p><strong>Ошибка RSS:</strong> XML or PCRE extensions not loaded!</p></div>', 'no'),
(134, '_site_transient_timeout_community-events-e2f2ed925cc0dc7eddd67ec58c0404fa', '1601516605', 'no'),
(135, '_site_transient_community-events-e2f2ed925cc0dc7eddd67ec58c0404fa', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";s:10:\"172.17.0.0\";}s:6:\"events\";a:2:{i:0;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:75:\"Discussion Group: Who am I to be speaking? + Finding a topic for a WP event\";s:3:\"url\";s:68:\"https://www.meetup.com/learn-wordpress-discussions/events/273494801/\";s:6:\"meetup\";s:27:\"Learn WordPress Discussions\";s:10:\"meetup_url\";s:51:\"https://www.meetup.com/learn-wordpress-discussions/\";s:4:\"date\";s:19:\"2020-10-06 10:00:00\";s:8:\"end_date\";s:19:\"2020-10-06 11:00:00\";s:20:\"start_unix_timestamp\";i:1602003600;s:18:\"end_unix_timestamp\";i:1602007200;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:37.779998779297;s:9:\"longitude\";d:-122.41999816895;}}i:1;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:27:\"WordCamp Rochester, NY, USA\";s:3:\"url\";s:36:\"https://2020.rochester.wordcamp.org/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2020-10-03 08:35:00\";s:8:\"end_date\";s:19:\"2020-10-03 08:35:00\";s:20:\"start_unix_timestamp\";i:1601728500;s:18:\"end_unix_timestamp\";i:1601728500;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:43.1565779;s:9:\"longitude\";d:-77.6088465;}}}}', 'no'),
(138, 'finished_updating_comment_type', '1', 'yes'),
(140, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1601479570;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(141, '_site_transient_timeout_theme_roots', '1601481359', 'no'),
(142, '_site_transient_theme_roots', 'a:3:{s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(143, 'current_theme', 'Twenty Seventeen', 'yes'),
(144, 'theme_mods_twentyseventeen', 'a:7:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:3:\"top\";i:2;s:6:\"social\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:7:\"panel_1\";i:12;s:7:\"panel_2\";i:9;s:7:\"panel_3\";i:11;s:7:\"panel_4\";i:10;}', 'yes'),
(145, 'theme_switched', '', 'yes'),
(154, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', '2020/09/espresso.jpg'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2020/09/espresso.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"espresso-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"espresso-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"espresso-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"espresso-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"espresso-1536x922.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:922;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"espresso-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 5, '_starter_content_theme', 'twentyseventeen'),
(7, 6, '_wp_attached_file', '2020/09/sandwich.jpg'),
(8, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2020/09/sandwich.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"sandwich-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"sandwich-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"sandwich-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"sandwich-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"sandwich-1536x922.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:922;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"sandwich-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 6, '_starter_content_theme', 'twentyseventeen'),
(11, 7, '_wp_attached_file', '2020/09/coffee.jpg'),
(12, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2020/09/coffee.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"coffee-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"coffee-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"coffee-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"coffee-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"coffee-1536x922.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:922;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:18:\"coffee-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 7, '_starter_content_theme', 'twentyseventeen'),
(16, 8, '_customize_changeset_uuid', '69f5c5fc-f254-4609-a1f6-0a1d8b0608a7'),
(17, 9, '_thumbnail_id', '6'),
(19, 9, '_customize_changeset_uuid', '69f5c5fc-f254-4609-a1f6-0a1d8b0608a7'),
(20, 10, '_thumbnail_id', '5'),
(22, 10, '_customize_changeset_uuid', '69f5c5fc-f254-4609-a1f6-0a1d8b0608a7'),
(23, 11, '_thumbnail_id', '7'),
(25, 11, '_customize_changeset_uuid', '69f5c5fc-f254-4609-a1f6-0a1d8b0608a7'),
(26, 12, '_thumbnail_id', '5'),
(28, 12, '_customize_changeset_uuid', '69f5c5fc-f254-4609-a1f6-0a1d8b0608a7'),
(29, 19, '_menu_item_type', 'custom'),
(30, 19, '_menu_item_menu_item_parent', '0'),
(31, 19, '_menu_item_object_id', '19'),
(32, 19, '_menu_item_object', 'custom'),
(33, 19, '_menu_item_target', ''),
(34, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(35, 19, '_menu_item_xfn', ''),
(36, 19, '_menu_item_url', 'https://localhost/wordpress/'),
(37, 20, '_menu_item_type', 'post_type'),
(38, 20, '_menu_item_menu_item_parent', '0'),
(39, 20, '_menu_item_object_id', '9'),
(40, 20, '_menu_item_object', 'page'),
(41, 20, '_menu_item_target', ''),
(42, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(43, 20, '_menu_item_xfn', ''),
(44, 20, '_menu_item_url', ''),
(45, 21, '_menu_item_type', 'post_type'),
(46, 21, '_menu_item_menu_item_parent', '0'),
(47, 21, '_menu_item_object_id', '11'),
(48, 21, '_menu_item_object', 'page'),
(49, 21, '_menu_item_target', ''),
(50, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(51, 21, '_menu_item_xfn', ''),
(52, 21, '_menu_item_url', ''),
(53, 22, '_menu_item_type', 'post_type'),
(54, 22, '_menu_item_menu_item_parent', '0'),
(55, 22, '_menu_item_object_id', '10'),
(56, 22, '_menu_item_object', 'page'),
(57, 22, '_menu_item_target', ''),
(58, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(59, 22, '_menu_item_xfn', ''),
(60, 22, '_menu_item_url', ''),
(61, 23, '_menu_item_type', 'custom'),
(62, 23, '_menu_item_menu_item_parent', '0'),
(63, 23, '_menu_item_object_id', '23'),
(64, 23, '_menu_item_object', 'custom'),
(65, 23, '_menu_item_target', ''),
(66, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(67, 23, '_menu_item_xfn', ''),
(68, 23, '_menu_item_url', 'https://www.yelp.com'),
(69, 24, '_menu_item_type', 'custom'),
(70, 24, '_menu_item_menu_item_parent', '0'),
(71, 24, '_menu_item_object_id', '24'),
(72, 24, '_menu_item_object', 'custom'),
(73, 24, '_menu_item_target', ''),
(74, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(75, 24, '_menu_item_xfn', ''),
(76, 24, '_menu_item_url', 'https://www.facebook.com/wordpress'),
(77, 25, '_menu_item_type', 'custom'),
(78, 25, '_menu_item_menu_item_parent', '0'),
(79, 25, '_menu_item_object_id', '25'),
(80, 25, '_menu_item_object', 'custom'),
(81, 25, '_menu_item_target', ''),
(82, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(83, 25, '_menu_item_xfn', ''),
(84, 25, '_menu_item_url', 'https://twitter.com/wordpress'),
(85, 26, '_menu_item_type', 'custom'),
(86, 26, '_menu_item_menu_item_parent', '0'),
(87, 26, '_menu_item_object_id', '26'),
(88, 26, '_menu_item_object', 'custom'),
(89, 26, '_menu_item_target', ''),
(90, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(91, 26, '_menu_item_xfn', ''),
(92, 26, '_menu_item_url', 'https://www.instagram.com/explore/tags/wordcamp/'),
(93, 27, '_menu_item_type', 'custom'),
(94, 27, '_menu_item_menu_item_parent', '0'),
(95, 27, '_menu_item_object_id', '27'),
(96, 27, '_menu_item_object', 'custom'),
(97, 27, '_menu_item_target', ''),
(98, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(99, 27, '_menu_item_xfn', ''),
(100, 27, '_menu_item_url', 'mailto:wordpress@example.com'),
(101, 13, '_wp_trash_meta_status', 'publish'),
(102, 13, '_wp_trash_meta_time', '1601479620');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-09-30 16:43:12', '2020-09-30 13:43:12', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2020-09-30 16:43:12', '2020-09-30 13:43:12', '', 0, 'https://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2020-09-30 16:43:12', '2020-09-30 13:43:12', '<!-- wp:paragraph -->\n<p>Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...или так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдите <a href=\"https://localhost/wordpress/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!</p>\n<!-- /wp:paragraph -->', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-09-30 16:43:12', '2020-09-30 13:43:12', '', 0, 'https://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-09-30 16:43:12', '2020-09-30 13:43:12', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Наш адрес сайта: https://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие персональные данные мы собираем и с какой целью</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Комментарии</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Медиафайлы</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Формы контактов</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Куки</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Встраиваемое содержимое других вебсайтов</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Веб-аналитика</h3><!-- /wp:heading --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ваша контактная информация</h2><!-- /wp:heading --><!-- wp:heading --><h2>Дополнительная информация</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Как мы защищаем ваши данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие принимаются процедуры против взлома данных</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>От каких третьих сторон мы получаем данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Требования к раскрытию отраслевых нормативных требований</h3><!-- /wp:heading -->', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-09-30 16:43:12', '2020-09-30 13:43:12', '', 0, 'https://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-09-30 16:43:23', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-09-30 16:43:23', '0000-00-00 00:00:00', '', 0, 'https://localhost/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2020-09-30 18:26:59', '2020-09-30 15:26:59', '', 'Эспрессо', '', 'inherit', 'open', 'closed', '', '%d1%8d%d1%81%d0%bf%d1%80%d0%b5%d1%81%d1%81%d0%be', '', '', '2020-09-30 18:26:59', '2020-09-30 15:26:59', '', 0, 'https://localhost/wordpress/wp-content/uploads/2020/09/espresso.jpg', 0, 'attachment', 'image/jpeg', 0),
(6, 1, '2020-09-30 18:26:59', '2020-09-30 15:26:59', '', 'Сэндвич', '', 'inherit', 'open', 'closed', '', '%d1%81%d1%8d%d0%bd%d0%b4%d0%b2%d0%b8%d1%87', '', '', '2020-09-30 18:26:59', '2020-09-30 15:26:59', '', 0, 'https://localhost/wordpress/wp-content/uploads/2020/09/sandwich.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2020-09-30 18:26:59', '2020-09-30 15:26:59', '', 'Кофе', '', 'inherit', 'open', 'closed', '', '%d0%ba%d0%be%d1%84%d0%b5', '', '', '2020-09-30 18:26:59', '2020-09-30 15:26:59', '', 0, 'https://localhost/wordpress/wp-content/uploads/2020/09/coffee.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2020-09-30 18:26:59', '2020-09-30 15:26:59', '<!-- wp:paragraph -->\n<p>Добро пожаловать на сайт! Это ваша главная страница, которую большинство посетителей увидят, впервые зайдя на ваш сайт.</p>\n<!-- /wp:paragraph -->', 'Главная страница', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d0%b0', '', '', '2020-09-30 18:26:59', '2020-09-30 15:26:59', '', 0, 'https://localhost/wordpress/?page_id=8', 0, 'page', '', 0),
(9, 1, '2020-09-30 18:26:59', '2020-09-30 15:26:59', '<!-- wp:paragraph -->\n<p>Вы можете быть художником, который желает здесь представить себя и свои работы или представителем бизнеса с описанием миссии.</p>\n<!-- /wp:paragraph -->', 'О нас', '', 'publish', 'closed', 'closed', '', '%d0%be-%d0%bd%d0%b0%d1%81', '', '', '2020-09-30 18:26:59', '2020-09-30 15:26:59', '', 0, 'https://localhost/wordpress/?page_id=9', 0, 'page', '', 0),
(10, 1, '2020-09-30 18:26:59', '2020-09-30 15:26:59', '<!-- wp:paragraph -->\n<p>Это страница с основной контактной информацией, такой как адрес и номер телефона. Вы также можете попробовать добавить форму контактов с помощью плагина.</p>\n<!-- /wp:paragraph -->', 'Контакты', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b', '', '', '2020-09-30 18:26:59', '2020-09-30 15:26:59', '', 0, 'https://localhost/wordpress/?page_id=10', 0, 'page', '', 0),
(11, 1, '2020-09-30 18:26:59', '2020-09-30 15:26:59', '', 'Блог', '', 'publish', 'closed', 'closed', '', '%d0%b1%d0%bb%d0%be%d0%b3', '', '', '2020-09-30 18:26:59', '2020-09-30 15:26:59', '', 0, 'https://localhost/wordpress/?page_id=11', 0, 'page', '', 0),
(12, 1, '2020-09-30 18:26:59', '2020-09-30 15:26:59', '<!-- wp:paragraph -->\n<p>Это пример раздела главной страницы. Разделы домашней страницы могут быть любыми страницами кроме самой главной страницы, включая страницу последних записей блога.</p>\n<!-- /wp:paragraph -->', 'Раздел главной страницы', '', 'publish', 'closed', 'closed', '', '%d1%80%d0%b0%d0%b7%d0%b4%d0%b5%d0%bb-%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%be%d0%b9-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d1%8b', '', '', '2020-09-30 18:26:59', '2020-09-30 15:26:59', '', 0, 'https://localhost/wordpress/?page_id=12', 0, 'page', '', 0),
(13, 1, '2020-09-30 18:26:59', '2020-09-30 15:26:59', '{\n    \"widget_text[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIxOiLQndCw0LnQtNC40YLQtSDQvdCw0YEiO3M6NDoidGV4dCI7czoyMjY6IjxzdHJvbmc+0JDQtNGA0LXRgTwvc3Ryb25nPgoxMjMg0JzQtdC50L0g0YHRgtGA0LjRggrQndGM0Y4g0JnQvtGA0LosIE5ZIDEwMDAxCgo8c3Ryb25nPtCn0LDRgdGLPC9zdHJvbmc+CtCf0L7QvdC10LTQtdC70YzQvdC40LombWRhc2g70L/Rj9GC0L3QuNGG0LA6IDk6MDAmbmRhc2g7MTc6MDAK0KHRg9Cx0LHQvtGC0LAg0Lgg0LLQvtGB0LrRgNC10YHQtdC90YzQtTogMTE6MDAmbmRhc2g7MTU6MDAiO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u041d\\u0430\\u0439\\u0434\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0441\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"b7ad7dbd3ad4f894e3075f5ed04d93eb\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-30 15:26:15\"\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiLQn9C+0LjRgdC6Ijt9\",\n            \"title\": \"\\u041f\\u043e\\u0438\\u0441\\u043a\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"fcb75c563f1b0a840639b786d0f13608\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-30 15:26:15\"\n    },\n    \"widget_text[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjEzOiLQniDRgdCw0LnRgtC1IjtzOjQ6InRleHQiO3M6MjA1OiLQl9C00LXRgdGMINC80L7QttC10YIg0LHRi9GC0Ywg0L7RgtC70LjRh9C90L7QtSDQvNC10YHRgtC+INC00LvRjyDRgtC+0LPQviwg0YfRgtC+0LHRiyDQv9GA0LXQtNGB0YLQsNCy0LjRgtGMINGB0LXQsdGPLCDRgdCy0L7QuSDRgdCw0LnRgiDQuNC70Lgg0LLRi9GA0LDQt9C40YLRjCDQutCw0LrQuNC1LdGC0L4g0LHQu9Cw0LPQvtC00LDRgNC90L7RgdGC0LguIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"\\u041e \\u0441\\u0430\\u0439\\u0442\\u0435\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"5b2e3bab03a0226d827ecd955fcc526c\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-30 15:26:15\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-2\",\n            \"search-3\",\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-30 15:26:15\"\n    },\n    \"widget_text[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIxOiLQndCw0LnQtNC40YLQtSDQvdCw0YEiO3M6NDoidGV4dCI7czoyMjY6IjxzdHJvbmc+0JDQtNGA0LXRgTwvc3Ryb25nPgoxMjMg0JzQtdC50L0g0YHRgtGA0LjRggrQndGM0Y4g0JnQvtGA0LosIE5ZIDEwMDAxCgo8c3Ryb25nPtCn0LDRgdGLPC9zdHJvbmc+CtCf0L7QvdC10LTQtdC70YzQvdC40LombWRhc2g70L/Rj9GC0L3QuNGG0LA6IDk6MDAmbmRhc2g7MTc6MDAK0KHRg9Cx0LHQvtGC0LAg0Lgg0LLQvtGB0LrRgNC10YHQtdC90YzQtTogMTE6MDAmbmRhc2g7MTU6MDAiO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u041d\\u0430\\u0439\\u0434\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0441\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"b7ad7dbd3ad4f894e3075f5ed04d93eb\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-30 15:26:15\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-30 15:26:15\"\n    },\n    \"widget_text[5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjEzOiLQniDRgdCw0LnRgtC1IjtzOjQ6InRleHQiO3M6MjA1OiLQl9C00LXRgdGMINC80L7QttC10YIg0LHRi9GC0Ywg0L7RgtC70LjRh9C90L7QtSDQvNC10YHRgtC+INC00LvRjyDRgtC+0LPQviwg0YfRgtC+0LHRiyDQv9GA0LXQtNGB0YLQsNCy0LjRgtGMINGB0LXQsdGPLCDRgdCy0L7QuSDRgdCw0LnRgiDQuNC70Lgg0LLRi9GA0LDQt9C40YLRjCDQutCw0LrQuNC1LdGC0L4g0LHQu9Cw0LPQvtC00LDRgNC90L7RgdGC0LguIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"\\u041e \\u0441\\u0430\\u0439\\u0442\\u0435\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"5b2e3bab03a0226d827ecd955fcc526c\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-30 15:26:15\"\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiLQn9C+0LjRgdC6Ijt9\",\n            \"title\": \"\\u041f\\u043e\\u0438\\u0441\\u043a\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"fcb75c563f1b0a840639b786d0f13608\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-30 15:26:15\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-5\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-30 15:26:15\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            5,\n            6,\n            7,\n            8,\n            9,\n            10,\n            11,\n            12\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-30 15:26:15\"\n    },\n    \"nav_menu[-1]\": {\n        \"value\": {\n            \"name\": \"\\u0412\\u0435\\u0440\\u0445\\u043d\\u0435\\u0435 \\u043c\\u0435\\u043d\\u044e\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-30 15:26:59\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\",\n            \"url\": \"https://localhost/wordpress/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-30 15:26:59\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"value\": {\n            \"object_id\": 9,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"\\u041e \\u043d\\u0430\\u0441\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041e \\u043d\\u0430\\u0441\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-30 15:26:59\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"value\": {\n            \"object_id\": 11,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"\\u0411\\u043b\\u043e\\u0433\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0411\\u043b\\u043e\\u0433\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-30 15:26:59\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"value\": {\n            \"object_id\": 10,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-30 15:26:59\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-30 15:26:15\"\n    },\n    \"nav_menu[-5]\": {\n        \"value\": {\n            \"name\": \"\\u041c\\u0435\\u043d\\u044e \\u0441\\u043e\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0441\\u0441\\u044b\\u043b\\u043e\\u043a\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-30 15:26:59\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-30 15:26:59\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-30 15:26:59\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-30 15:26:59\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-30 15:26:59\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"custom\",\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-30 15:26:59\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-30 15:26:15\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-30 15:26:15\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 8,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-30 15:26:15\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 11,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-30 15:26:15\"\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 12,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-30 15:26:15\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-30 15:26:15\"\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 11,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-30 15:26:15\"\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 10,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-30 15:26:15\"\n    },\n    \"blogdescription\": {\n        \"value\": \"SCHOLL 21\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-30 15:26:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '69f5c5fc-f254-4609-a1f6-0a1d8b0608a7', '', '', '2020-09-30 18:26:59', '2020-09-30 15:26:59', '', 0, 'https://localhost/wordpress/?p=13', 0, 'customize_changeset', '', 0),
(14, 1, '2020-09-30 18:26:59', '2020-09-30 15:26:59', '<!-- wp:paragraph -->\n<p>Добро пожаловать на сайт! Это ваша главная страница, которую большинство посетителей увидят, впервые зайдя на ваш сайт.</p>\n<!-- /wp:paragraph -->', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-09-30 18:26:59', '2020-09-30 15:26:59', '', 8, 'https://localhost/wordpress/?p=14', 0, 'revision', '', 0),
(15, 1, '2020-09-30 18:26:59', '2020-09-30 15:26:59', '<!-- wp:paragraph -->\n<p>Вы можете быть художником, который желает здесь представить себя и свои работы или представителем бизнеса с описанием миссии.</p>\n<!-- /wp:paragraph -->', 'О нас', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2020-09-30 18:26:59', '2020-09-30 15:26:59', '', 9, 'https://localhost/wordpress/?p=15', 0, 'revision', '', 0),
(16, 1, '2020-09-30 18:26:59', '2020-09-30 15:26:59', '<!-- wp:paragraph -->\n<p>Это страница с основной контактной информацией, такой как адрес и номер телефона. Вы также можете попробовать добавить форму контактов с помощью плагина.</p>\n<!-- /wp:paragraph -->', 'Контакты', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-09-30 18:26:59', '2020-09-30 15:26:59', '', 10, 'https://localhost/wordpress/?p=16', 0, 'revision', '', 0),
(17, 1, '2020-09-30 18:26:59', '2020-09-30 15:26:59', '', 'Блог', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-09-30 18:26:59', '2020-09-30 15:26:59', '', 11, 'https://localhost/wordpress/?p=17', 0, 'revision', '', 0),
(18, 1, '2020-09-30 18:26:59', '2020-09-30 15:26:59', '<!-- wp:paragraph -->\n<p>Это пример раздела главной страницы. Разделы домашней страницы могут быть любыми страницами кроме самой главной страницы, включая страницу последних записей блога.</p>\n<!-- /wp:paragraph -->', 'Раздел главной страницы', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-09-30 18:26:59', '2020-09-30 15:26:59', '', 12, 'https://localhost/wordpress/?p=18', 0, 'revision', '', 0),
(19, 1, '2020-09-30 18:26:59', '2020-09-30 15:26:59', '', 'Главная страница', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d0%b0', '', '', '2020-09-30 18:26:59', '2020-09-30 15:26:59', '', 0, 'https://localhost/wordpress/?p=19', 0, 'nav_menu_item', '', 0),
(20, 1, '2020-09-30 18:26:59', '2020-09-30 15:26:59', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2020-09-30 18:26:59', '2020-09-30 15:26:59', '', 0, 'https://localhost/wordpress/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2020-09-30 18:26:59', '2020-09-30 15:26:59', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2020-09-30 18:26:59', '2020-09-30 15:26:59', '', 0, 'https://localhost/wordpress/?p=21', 2, 'nav_menu_item', '', 0),
(22, 1, '2020-09-30 18:26:59', '2020-09-30 15:26:59', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2020-09-30 18:26:59', '2020-09-30 15:26:59', '', 0, 'https://localhost/wordpress/?p=22', 3, 'nav_menu_item', '', 0),
(23, 1, '2020-09-30 18:26:59', '2020-09-30 15:26:59', '', 'Yelp', '', 'publish', 'closed', 'closed', '', 'yelp', '', '', '2020-09-30 18:26:59', '2020-09-30 15:26:59', '', 0, 'https://localhost/wordpress/?p=23', 0, 'nav_menu_item', '', 0),
(24, 1, '2020-09-30 18:26:59', '2020-09-30 15:26:59', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2020-09-30 18:26:59', '2020-09-30 15:26:59', '', 0, 'https://localhost/wordpress/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2020-09-30 18:27:00', '2020-09-30 15:27:00', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2020-09-30 18:27:00', '2020-09-30 15:27:00', '', 0, 'https://localhost/wordpress/?p=25', 2, 'nav_menu_item', '', 0),
(26, 1, '2020-09-30 18:27:00', '2020-09-30 15:27:00', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2020-09-30 18:27:00', '2020-09-30 15:27:00', '', 0, 'https://localhost/wordpress/?p=26', 3, 'nav_menu_item', '', 0),
(27, 1, '2020-09-30 18:27:00', '2020-09-30 15:27:00', '', 'Email', '', 'publish', 'closed', 'closed', '', 'email', '', '', '2020-09-30 18:27:00', '2020-09-30 15:27:00', '', 0, 'https://localhost/wordpress/?p=27', 4, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Верхнее меню', '%d0%b2%d0%b5%d1%80%d1%85%d0%bd%d0%b5%d0%b5-%d0%bc%d0%b5%d0%bd%d1%8e', 0),
(3, 'Меню социальных ссылок', '%d0%bc%d0%b5%d0%bd%d1%8e-%d1%81%d0%be%d1%86%d0%b8%d0%b0%d0%bb%d1%8c%d0%bd%d1%8b%d1%85-%d1%81%d1%81%d1%8b%d0%bb%d0%be%d0%ba', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(19, 2, 0),
(20, 2, 0),
(21, 2, 0),
(22, 2, 0),
(23, 3, 0),
(24, 3, 0),
(25, 3, 0),
(26, 3, 0),
(27, 3, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"91e386f6fff06c75af8b142f4acfbdcfae4fd7de403fc06c2762c67a17eab748\";a:4:{s:10:\"expiration\";i:1601646202;s:2:\"ip\";s:10:\"172.17.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.105 Safari/537.36\";s:5:\"login\";i:1601473402;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:10:\"172.17.0.0\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bh9bxwjf9ZrM.sRGiOJyiK5vXTqf5I0', 'admin', 'nik.yaroslavl@gmail.com', 'https://localhost/wordpress', '2020-09-30 13:43:12', '', 0, 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
