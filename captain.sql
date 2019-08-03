-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Авг 03 2019 г., 08:10
-- Версия сервера: 10.3.15-MariaDB
-- Версия PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `captain`
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-07-20 12:11:51', '2019-07-20 09:11:51', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

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
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'Sparrow', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'jttucker550@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:106:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:37:\"portfolio/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"portfolio/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"portfolio/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"portfolio/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"portfolio/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"portfolio/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"portfolio/([^/]+)/embed/?$\";s:42:\"index.php?portfolio=$matches[1]&embed=true\";s:30:\"portfolio/([^/]+)/trackback/?$\";s:36:\"index.php?portfolio=$matches[1]&tb=1\";s:38:\"portfolio/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&paged=$matches[2]\";s:45:\"portfolio/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?portfolio=$matches[1]&cpage=$matches[2]\";s:34:\"portfolio/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?portfolio=$matches[1]&page=$matches[2]\";s:26:\"portfolio/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"portfolio/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"portfolio/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"portfolio/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"portfolio/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"portfolio/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'sparrow', 'yes'),
(41, 'stylesheet', 'sparrow', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:3:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}i:3;a:4:{s:5:\"title\";s:10:\"Categories\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:3:{i:1;a:0:{}i:2;a:4:{s:5:\"title\";s:4:\"Text\";s:4:\"text\";s:214:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas hendrerit lacus id turpis malesuada sodales. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam eget porta\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'ru_RU', 'yes'),
(97, 'widget_search', 'a:3:{i:2;a:1:{s:5:\"title\";s:0:\"\";}i:3;a:1:{s:5:\"title\";s:6:\"Search\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"right sidebar\";a:5:{i:0;s:8:\"search-3\";i:1;s:6:\"text-2\";i:2;s:12:\"categories-3\";i:3;s:11:\"tag_cloud-2\";i:4;s:15:\"media_gallery-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:5:{i:1564693912;a:4:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1564737112;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1564737132;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1564737133;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:2:{i:2;a:6:{s:5:\"title\";s:11:\"Photostream\";s:3:\"ids\";a:8:{i:0;i:61;i:1;i:62;i:2;i:63;i:3;i:64;i:4;i:65;i:5;i:66;i:6;i:67;i:7;i:68;}s:7:\"columns\";i:4;s:4:\"size\";s:9:\"thumbnail\";s:9:\"link_type\";s:4:\"post\";s:14:\"orderby_random\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:2:{i:2;a:3:{s:5:\"title\";s:4:\"Tags\";s:5:\"count\";i:0;s:8:\"taxonomy\";s:8:\"post_tag\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(116, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1563619667;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(136, 'can_compress_scripts', '1', 'no'),
(146, 'current_theme', 'Sparrow', 'yes'),
(147, 'theme_mods_sparrow', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:3:\"top\";i:2;s:6:\"bottom\";i:3;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(148, 'theme_switched', '', 'yes'),
(154, 'new_admin_email', 'jttucker550@gmail.com', 'yes'),
(158, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(226, 'recently_activated', 'a:2:{s:55:\"delete-expired-transients/delete-expired-transients.php\";i:1564162489;s:33:\"classic-editor/classic-editor.php\";i:1564162485;}', 'yes'),
(314, '_site_transient_timeout_browser_5eaddbe64bb311a7ba788adfd9ffdfcb', '1564675821', 'no'),
(315, '_site_transient_browser_5eaddbe64bb311a7ba788adfd9ffdfcb', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"75.0.3770.142\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(316, '_site_transient_timeout_php_check_f0b6411b8c82dcf39302e5312c1fbd33', '1564675822', 'no'),
(317, '_site_transient_php_check_f0b6411b8c82dcf39302e5312c1fbd33', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(357, 'acf_version', '5.8.2', 'yes'),
(429, 'category_children', 'a:0:{}', 'yes'),
(438, '_site_transient_timeout_php_check_d1959de4b7de84f195ea226c4728f095', '1565174022', 'no'),
(439, '_site_transient_php_check_d1959de4b7de84f195ea226c4728f095', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(453, 'core_updater.lock', '1564569575', 'no'),
(464, '_site_transient_timeout_browser_10fa2c6ef688a885b798647af59c5d8d', '1565182496', 'no'),
(465, '_site_transient_browser_10fa2c6ef688a885b798647af59c5d8d', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"76.0.3809.87\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(475, '_site_transient_timeout_theme_roots', '1564664524', 'no'),
(476, '_site_transient_theme_roots', 'a:4:{s:7:\"sparrow\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(479, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.2.2.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-5.2.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1564662785;s:15:\"version_checked\";s:5:\"5.2.2\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.2.2\";s:7:\"updated\";s:19:\"2019-07-22 10:38:09\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.2/ru_RU.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(480, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1564662786;s:7:\"checked\";a:4:{s:7:\"sparrow\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(481, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1564662787;s:7:\"checked\";a:3:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.2\";s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.2\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

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
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_menu_item_type', 'custom'),
(4, 5, '_menu_item_menu_item_parent', '0'),
(5, 5, '_menu_item_object_id', '5'),
(6, 5, '_menu_item_object', 'custom'),
(7, 5, '_menu_item_target', ''),
(8, 5, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9, 5, '_menu_item_xfn', ''),
(10, 5, '_menu_item_url', 'http://localhost/wordpress/'),
(97, 28, '_edit_lock', '1564229923:1'),
(98, 30, '_edit_lock', '1563653658:1'),
(100, 33, '_edit_lock', '1563653649:1'),
(101, 33, '_edit_last', '1'),
(102, 30, '_edit_last', '1'),
(103, 36, '_menu_item_type', 'post_type'),
(104, 36, '_menu_item_menu_item_parent', '0'),
(105, 36, '_menu_item_object_id', '28'),
(106, 36, '_menu_item_object', 'page'),
(107, 36, '_menu_item_target', ''),
(108, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(109, 36, '_menu_item_xfn', ''),
(110, 36, '_menu_item_url', ''),
(130, 39, '_edit_lock', '1564229729:1'),
(131, 41, '_edit_lock', '1564229758:1'),
(134, 41, '_edit_last', '1'),
(135, 46, '_menu_item_type', 'post_type'),
(136, 46, '_menu_item_menu_item_parent', '0'),
(137, 46, '_menu_item_object_id', '41'),
(138, 46, '_menu_item_object', 'page'),
(139, 46, '_menu_item_target', ''),
(140, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(141, 46, '_menu_item_xfn', ''),
(142, 46, '_menu_item_url', ''),
(144, 47, '_menu_item_type', 'post_type'),
(145, 47, '_menu_item_menu_item_parent', '0'),
(146, 47, '_menu_item_object_id', '39'),
(147, 47, '_menu_item_object', 'page'),
(148, 47, '_menu_item_target', ''),
(149, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(150, 47, '_menu_item_xfn', ''),
(151, 47, '_menu_item_url', ''),
(175, 52, '_menu_item_type', 'post_type'),
(176, 52, '_menu_item_menu_item_parent', '0'),
(177, 52, '_menu_item_object_id', '41'),
(178, 52, '_menu_item_object', 'page'),
(179, 52, '_menu_item_target', ''),
(180, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(181, 52, '_menu_item_xfn', ''),
(182, 52, '_menu_item_url', ''),
(184, 53, '_menu_item_type', 'post_type'),
(185, 53, '_menu_item_menu_item_parent', '0'),
(186, 53, '_menu_item_object_id', '39'),
(187, 53, '_menu_item_object', 'page'),
(188, 53, '_menu_item_target', ''),
(189, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(190, 53, '_menu_item_xfn', ''),
(191, 53, '_menu_item_url', ''),
(193, 54, '_menu_item_type', 'post_type'),
(194, 54, '_menu_item_menu_item_parent', '0'),
(195, 54, '_menu_item_object_id', '28'),
(196, 54, '_menu_item_object', 'page'),
(197, 54, '_menu_item_target', ''),
(198, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(199, 54, '_menu_item_xfn', ''),
(200, 54, '_menu_item_url', ''),
(211, 56, '_menu_item_type', 'custom'),
(212, 56, '_menu_item_menu_item_parent', '0'),
(213, 56, '_menu_item_object_id', '56'),
(214, 56, '_menu_item_object', 'custom'),
(215, 56, '_menu_item_target', ''),
(216, 56, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(217, 56, '_menu_item_xfn', ''),
(218, 56, '_menu_item_url', 'http://localhost/wordpress'),
(220, 3, '_edit_lock', '1563712898:1'),
(221, 1, '_edit_lock', '1564665984:1'),
(223, 1, '_edit_last', '1'),
(225, 59, '_edit_lock', '1564670535:1'),
(227, 61, '_wp_attached_file', '2019/07/thumb.jpg'),
(228, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:17:\"2019/07/thumb.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(229, 62, '_wp_attached_file', '2019/07/thumb-1.jpg'),
(230, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:19:\"2019/07/thumb-1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(231, 63, '_wp_attached_file', '2019/07/thumb-2.jpg'),
(232, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:19:\"2019/07/thumb-2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(233, 64, '_wp_attached_file', '2019/07/thumb-3.jpg'),
(234, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:19:\"2019/07/thumb-3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(235, 65, '_wp_attached_file', '2019/07/thumb-4.jpg'),
(236, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:19:\"2019/07/thumb-4.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(237, 66, '_wp_attached_file', '2019/07/thumb-5.jpg'),
(238, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:19:\"2019/07/thumb-5.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(239, 67, '_wp_attached_file', '2019/07/thumb-6.jpg'),
(240, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:19:\"2019/07/thumb-6.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(241, 68, '_wp_attached_file', '2019/07/thumb-7.jpg'),
(242, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:19:\"2019/07/thumb-7.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(244, 70, '_edit_lock', '1564670465:1'),
(246, 70, '_edit_last', '1'),
(275, 84, '_edit_lock', '1564068744:1'),
(276, 85, '_edit_lock', '1564578137:1'),
(277, 87, '_menu_item_type', 'post_type'),
(278, 87, '_menu_item_menu_item_parent', '0'),
(279, 87, '_menu_item_object_id', '85'),
(280, 87, '_menu_item_object', 'page'),
(281, 87, '_menu_item_target', ''),
(282, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(283, 87, '_menu_item_xfn', ''),
(284, 87, '_menu_item_url', ''),
(285, 87, '_menu_item_orphaned', '1564069011'),
(286, 85, '_edit_last', '1'),
(287, 90, '_edit_lock', '1564070112:1'),
(288, 91, '_edit_lock', '1564070680:1'),
(289, 93, '_edit_lock', '1564070794:1'),
(290, 96, '_edit_lock', '1564071017:1'),
(291, 97, '_edit_lock', '1564071098:1'),
(292, 98, '_edit_lock', '1564071174:1'),
(293, 100, '_edit_lock', '1564071207:1'),
(294, 102, '_menu_item_type', 'post_type'),
(295, 102, '_menu_item_menu_item_parent', '0'),
(296, 102, '_menu_item_object_id', '85'),
(297, 102, '_menu_item_object', 'page'),
(298, 102, '_menu_item_target', ''),
(299, 102, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(300, 102, '_menu_item_xfn', ''),
(301, 102, '_menu_item_url', ''),
(303, 103, '_edit_lock', '1564071480:1'),
(304, 104, '_edit_lock', '1564123110:1'),
(305, 39, '_wp_page_template', 'About.php'),
(306, 85, '_wp_page_template', 'category.php'),
(307, 41, '_wp_page_template', 'Contacts.php'),
(308, 33, '_wp_trash_meta_status', 'publish'),
(309, 33, '_wp_trash_meta_time', '1564229912'),
(310, 33, '_wp_desired_post_slug', 'portfolio-entry'),
(311, 30, '_wp_trash_meta_status', 'publish'),
(312, 30, '_wp_trash_meta_time', '1564229912'),
(313, 30, '_wp_desired_post_slug', 'portfolio-index'),
(314, 28, '_edit_last', '1'),
(315, 28, '_wp_page_template', 'Portfolio.php'),
(316, 105, '_menu_item_type', 'post_type'),
(317, 105, '_menu_item_menu_item_parent', '0'),
(318, 105, '_menu_item_object_id', '85'),
(319, 105, '_menu_item_object', 'page'),
(320, 105, '_menu_item_target', ''),
(321, 105, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(322, 105, '_menu_item_xfn', ''),
(323, 105, '_menu_item_url', ''),
(325, 107, '_edit_lock', '1564499021:1'),
(326, 108, '_wp_attached_file', '2019/07/camera-man-1.jpg'),
(327, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:626;s:4:\"file\";s:24:\"2019/07/camera-man-1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"camera-man-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"camera-man-1-288x300.jpg\";s:5:\"width\";i:288;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(328, 108, '_wp_attachment_image_alt', 'Camera Man'),
(329, 107, '_thumbnail_id', '108'),
(330, 107, '_edit_last', '1'),
(331, 107, '_wp_page_template', 'default'),
(332, 109, '_edit_lock', '1564690866:1'),
(333, 109, '_edit_last', '1'),
(334, 107, 'project-end-date', '20140116'),
(335, 107, '_project-end-date', 'field_5d3f473f80428'),
(336, 107, 'about_project', 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio.'),
(337, 107, '_about_project', 'field_5d40198cdd24f'),
(338, 107, 'client', 'Styleshout'),
(339, 107, '_client', 'field_5d401c407c7f8'),
(340, 113, '_edit_lock', '1564492118:1'),
(341, 114, '_edit_lock', '1564492125:1'),
(342, 115, '_edit_lock', '1564498597:1'),
(343, 116, '_wp_attached_file', '2019/07/geometric-backgrounds-02.jpg'),
(344, 116, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:790;s:6:\"height\";i:1000;s:4:\"file\";s:36:\"2019/07/geometric-backgrounds-02.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"geometric-backgrounds-02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"geometric-backgrounds-02-237x300.jpg\";s:5:\"width\";i:237;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"geometric-backgrounds-02-768x972.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:972;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(345, 115, '_thumbnail_id', '117'),
(346, 115, '_edit_last', '1'),
(347, 115, 'project-end-date', '20140109'),
(348, 115, '_project-end-date', 'field_5d3f473f80428'),
(349, 115, 'about_project', 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio.'),
(350, 115, '_about_project', 'field_5d40198cdd24f'),
(351, 115, 'client', 'Kronk'),
(352, 115, '_client', 'field_5d401c407c7f8'),
(353, 117, '_wp_attached_file', '2019/07/geometrics.jpg'),
(354, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:626;s:4:\"file\";s:22:\"2019/07/geometrics.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"geometrics-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"geometrics-288x300.jpg\";s:5:\"width\";i:288;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(355, 118, '_edit_lock', '1564498847:1'),
(356, 119, '_wp_attached_file', '2019/07/console.jpg'),
(357, 119, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:626;s:4:\"file\";s:19:\"2019/07/console.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"console-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"console-288x300.jpg\";s:5:\"width\";i:288;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(358, 118, '_thumbnail_id', '119'),
(359, 118, '_edit_last', '1'),
(360, 118, 'project-end-date', '19990415'),
(361, 118, '_project-end-date', 'field_5d3f473f80428'),
(362, 118, 'about_project', 'Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio.'),
(363, 118, '_about_project', 'field_5d40198cdd24f'),
(364, 118, 'client', 'Bob'),
(365, 118, '_client', 'field_5d401c407c7f8'),
(366, 120, '_edit_lock', '1564499056:1'),
(367, 120, '_edit_last', '1'),
(368, 120, 'project-end-date', '20190711'),
(369, 120, '_project-end-date', 'field_5d3f473f80428'),
(370, 120, 'about_project', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus iure doloribus qui placeat voluptas excepturi exercitationem blanditiis asperiores! Laborum rem quaerat tempora aliquid nulla earum at, ipsa excepturi nemo cupiditate'),
(371, 120, '_about_project', 'field_5d40198cdd24f'),
(372, 120, 'client', 'Kevin'),
(373, 120, '_client', 'field_5d401c407c7f8'),
(374, 121, '_wp_attached_file', '2019/07/into-the-light.jpg'),
(375, 121, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:626;s:4:\"file\";s:26:\"2019/07/into-the-light.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"into-the-light-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"into-the-light-288x300.jpg\";s:5:\"width\";i:288;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(376, 120, '_thumbnail_id', '121'),
(377, 122, '_edit_lock', '1564499179:1'),
(378, 123, '_wp_attached_file', '2019/07/farmerboy.jpg'),
(379, 123, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:626;s:4:\"file\";s:21:\"2019/07/farmerboy.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"farmerboy-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"farmerboy-288x300.jpg\";s:5:\"width\";i:288;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(380, 122, '_thumbnail_id', '123'),
(381, 122, '_edit_last', '1'),
(382, 122, 'project-end-date', '20030326'),
(383, 122, '_project-end-date', 'field_5d3f473f80428'),
(384, 122, 'about_project', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean semper urna ac eros bibendum, in sollicitudin dui congue. Donec eu orci vel nibh sodales accumsan. Aliquam erat volutpat. Curabitur ut purus in.'),
(385, 122, '_about_project', 'field_5d40198cdd24f'),
(386, 122, 'client', 'Mikhail'),
(387, 122, '_client', 'field_5d401c407c7f8'),
(388, 124, '_edit_lock', '1564499119:1'),
(389, 125, '_edit_lock', '1564499343:1'),
(390, 126, '_wp_attached_file', '2019/07/coffee-cup.jpg'),
(391, 126, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:626;s:4:\"file\";s:22:\"2019/07/coffee-cup.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"coffee-cup-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"coffee-cup-288x300.jpg\";s:5:\"width\";i:288;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(392, 125, '_thumbnail_id', '126'),
(393, 125, '_edit_last', '1'),
(394, 125, 'project-end-date', '20050414'),
(395, 125, '_project-end-date', 'field_5d3f473f80428'),
(396, 125, 'about_project', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas suscipit dolor ac libero vestibulum pulvinar. Nullam lacinia neque vitae fringilla semper. Ut efficitur lacinia massa at vehicula. Vivamus eu consequat nunc. Phasellus id nibh magna. Aenean mollis, ante sed ullamcorper consequat, massa mauris tincidunt est, at faucibus elit quam eu dui. Donec vitae arcu leo.\r\n\r\nQuisque eget dictum odio. Integer nec molestie arcu. Etiam auctor, erat nec auctor lobortis, diam enim iaculis erat, quis viverra tortor eros.'),
(397, 125, '_about_project', 'field_5d40198cdd24f'),
(398, 125, 'client', 'Mikhail'),
(399, 125, '_client', 'field_5d401c407c7f8'),
(400, 127, '_menu_item_type', 'custom'),
(401, 127, '_menu_item_menu_item_parent', '0'),
(402, 127, '_menu_item_object_id', '127'),
(403, 127, '_menu_item_object', 'custom'),
(404, 127, '_menu_item_target', ''),
(405, 127, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(406, 127, '_menu_item_xfn', ''),
(407, 127, '_menu_item_url', 'http://localhost/wordpress/category'),
(409, 128, '_menu_item_type', 'taxonomy'),
(410, 128, '_menu_item_menu_item_parent', '0'),
(411, 128, '_menu_item_object_id', '1'),
(412, 128, '_menu_item_object', 'category'),
(413, 128, '_menu_item_target', ''),
(414, 128, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(415, 128, '_menu_item_xfn', ''),
(416, 128, '_menu_item_url', ''),
(417, 128, '_menu_item_orphaned', '1564580791'),
(418, 129, '_menu_item_type', 'taxonomy'),
(419, 129, '_menu_item_menu_item_parent', '0'),
(420, 129, '_menu_item_object_id', '4'),
(421, 129, '_menu_item_object', 'category'),
(422, 129, '_menu_item_target', ''),
(423, 129, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(424, 129, '_menu_item_xfn', ''),
(425, 129, '_menu_item_url', ''),
(426, 129, '_menu_item_orphaned', '1564580792'),
(427, 130, '_menu_item_type', 'taxonomy'),
(428, 130, '_menu_item_menu_item_parent', '0'),
(429, 130, '_menu_item_object_id', '7'),
(430, 130, '_menu_item_object', 'category'),
(431, 130, '_menu_item_target', ''),
(432, 130, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(433, 130, '_menu_item_xfn', ''),
(434, 130, '_menu_item_url', ''),
(435, 130, '_menu_item_orphaned', '1564580792'),
(436, 131, '_menu_item_type', 'taxonomy'),
(437, 131, '_menu_item_menu_item_parent', '0'),
(438, 131, '_menu_item_object_id', '5'),
(439, 131, '_menu_item_object', 'category'),
(440, 131, '_menu_item_target', ''),
(441, 131, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(442, 131, '_menu_item_xfn', ''),
(443, 131, '_menu_item_url', ''),
(444, 131, '_menu_item_orphaned', '1564580792'),
(445, 132, '_menu_item_type', 'taxonomy'),
(446, 132, '_menu_item_menu_item_parent', '0'),
(447, 132, '_menu_item_object_id', '6'),
(448, 132, '_menu_item_object', 'category'),
(449, 132, '_menu_item_target', ''),
(450, 132, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(451, 132, '_menu_item_xfn', ''),
(452, 132, '_menu_item_url', ''),
(453, 132, '_menu_item_orphaned', '1564580793'),
(454, 133, '_menu_item_type', 'taxonomy'),
(455, 133, '_menu_item_menu_item_parent', '0'),
(456, 133, '_menu_item_object_id', '8'),
(457, 133, '_menu_item_object', 'category'),
(458, 133, '_menu_item_target', ''),
(459, 133, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(460, 133, '_menu_item_xfn', ''),
(461, 133, '_menu_item_url', ''),
(462, 133, '_menu_item_orphaned', '1564580793'),
(463, 134, '_menu_item_type', 'taxonomy'),
(464, 134, '_menu_item_menu_item_parent', '0'),
(465, 134, '_menu_item_object_id', '9'),
(466, 134, '_menu_item_object', 'category'),
(467, 134, '_menu_item_target', ''),
(468, 134, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(469, 134, '_menu_item_xfn', ''),
(470, 134, '_menu_item_url', ''),
(471, 134, '_menu_item_orphaned', '1564580793'),
(472, 135, '_wp_attached_file', '2019/07/post-image-1300x500-01.jpg'),
(473, 135, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:500;s:4:\"file\";s:34:\"2019/07/post-image-1300x500-01.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"post-image-1300x500-01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"post-image-1300x500-01-300x115.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:115;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"post-image-1300x500-01-768x295.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:295;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"post-image-1300x500-01-1024x394.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:394;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(475, 70, '_thumbnail_id', '135'),
(476, 136, '_wp_attached_file', '2019/07/post-image-1300x500-02.jpg'),
(477, 136, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:500;s:4:\"file\";s:34:\"2019/07/post-image-1300x500-02.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"post-image-1300x500-02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"post-image-1300x500-02-300x115.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:115;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"post-image-1300x500-02-768x295.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:295;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"post-image-1300x500-02-1024x394.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:394;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(479, 59, '_thumbnail_id', '136'),
(480, 137, '_wp_attached_file', '2019/07/post-image-1300x500-03.jpg'),
(481, 137, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:500;s:4:\"file\";s:34:\"2019/07/post-image-1300x500-03.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"post-image-1300x500-03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"post-image-1300x500-03-300x115.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:115;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"post-image-1300x500-03-768x295.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:295;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"post-image-1300x500-03-1024x394.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:394;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(483, 1, '_thumbnail_id', '137');

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
(1, 4, '2019-07-20 12:11:51', '2019-07-20 09:11:51', '<!-- wp:paragraph -->\n<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium  voluptatum deleniti atque. </p>\n<!-- /wp:paragraph -->', 'Quis autem vel esse eum iure reprehenderit qui in ea voluptate velit esse.', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2019-08-01 16:28:46', '2019-08-01 13:28:46', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(3, 1, '2019-07-20 12:11:51', '2019-07-20 09:11:51', '<!-- wp:heading --><h2>Кто мы</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Наш адрес сайта: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие персональные данные мы собираем и с какой целью</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Комментарии</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Медиафайлы</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Формы контактов</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Куки</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Встраиваемое содержимое других вебсайтов</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Веб-аналитика</h3><!-- /wp:heading --><!-- wp:heading --><h2>С кем мы делимся вашими данными</h2><!-- /wp:heading --><!-- wp:heading --><h2>Как долго мы храним ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Какие у вас права на ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куда мы отправляем ваши данные</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ваша контактная информация</h2><!-- /wp:heading --><!-- wp:heading --><h2>Дополнительная информация</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Как мы защищаем ваши данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие принимаются процедуры против взлома данных</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>От каких третьих сторон мы получаем данные</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Требования к раскрытию отраслевых нормативных требований</h3><!-- /wp:heading -->', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-07-20 12:11:51', '2019-07-20 09:11:51', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-07-20 22:08:05', '2019-07-20 19:08:05', '', 'Home', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f', '', '', '2019-07-27 15:19:06', '2019-07-27 12:19:06', '', 0, 'http://localhost/wordpress/?p=5', 1, 'nav_menu_item', '', 0),
(28, 1, '2019-07-20 23:08:03', '2019-07-20 20:08:03', '', 'Portfolio', '', 'publish', 'closed', 'closed', '', 'portfolio', '', '', '2019-07-27 15:18:43', '2019-07-27 12:18:43', '', 0, 'http://localhost/wordpress/?page_id=28', 0, 'page', '', 0),
(29, 1, '2019-07-20 23:08:03', '2019-07-20 20:08:03', '', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-07-20 23:08:03', '2019-07-20 20:08:03', '', 28, 'http://localhost/wordpress/2019/07/20/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2019-07-20 23:12:59', '2019-07-20 20:12:59', '', 'Portfolio Index', '', 'trash', 'closed', 'closed', '', 'portfolio-index__trashed', '', '', '2019-07-27 15:18:32', '2019-07-27 12:18:32', '', 28, 'http://localhost/wordpress/?page_id=30', 0, 'page', '', 0),
(31, 1, '2019-07-20 23:12:59', '2019-07-20 20:12:59', '', 'Portfolio index', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2019-07-20 23:12:59', '2019-07-20 20:12:59', '', 30, 'http://localhost/wordpress/2019/07/20/30-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2019-07-20 23:13:40', '2019-07-20 20:13:40', '', 'Portfolio Entry', '', 'trash', 'closed', 'closed', '', 'portfolio-entry__trashed', '', '', '2019-07-27 15:18:32', '2019-07-27 12:18:32', '', 28, 'http://localhost/wordpress/?page_id=33', 0, 'page', '', 0),
(34, 1, '2019-07-20 23:13:40', '2019-07-20 20:13:40', '', 'Portfolio Entry', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2019-07-20 23:13:40', '2019-07-20 20:13:40', '', 33, 'http://localhost/wordpress/2019/07/20/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2019-07-20 23:13:57', '2019-07-20 20:13:57', '', 'Portfolio Index', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2019-07-20 23:13:57', '2019-07-20 20:13:57', '', 30, 'http://localhost/wordpress/2019/07/20/30-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2019-07-20 23:15:03', '2019-07-20 20:15:03', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2019-07-27 15:19:06', '2019-07-27 12:19:06', '', 0, 'http://localhost/wordpress/?p=36', 3, 'nav_menu_item', '', 0),
(39, 1, '2019-07-20 23:16:23', '2019-07-20 20:16:23', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2019-07-27 15:17:49', '2019-07-27 12:17:49', '', 0, 'http://localhost/wordpress/?page_id=39', 0, 'page', '', 0),
(40, 1, '2019-07-20 23:16:23', '2019-07-20 20:16:23', '', 'About', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-07-20 23:16:23', '2019-07-20 20:16:23', '', 39, 'http://localhost/wordpress/2019/07/20/39-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2019-07-20 23:16:36', '2019-07-20 20:16:36', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-07-27 15:18:22', '2019-07-27 12:18:22', '', 0, 'http://localhost/wordpress/?page_id=41', 0, 'page', '', 0),
(42, 1, '2019-07-20 23:16:36', '2019-07-20 20:16:36', '', 'Contacts', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2019-07-20 23:16:36', '2019-07-20 20:16:36', '', 41, 'http://localhost/wordpress/2019/07/20/41-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2019-07-20 23:17:11', '2019-07-20 20:17:11', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2019-07-20 23:17:11', '2019-07-20 20:17:11', '', 41, 'http://localhost/wordpress/2019/07/20/41-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2019-07-20 23:17:42', '2019-07-20 20:17:42', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2019-07-27 15:19:06', '2019-07-27 12:19:06', '', 0, 'http://localhost/wordpress/?p=46', 4, 'nav_menu_item', '', 0),
(47, 1, '2019-07-20 23:17:42', '2019-07-20 20:17:42', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2019-07-27 15:19:06', '2019-07-27 12:19:06', '', 0, 'http://localhost/wordpress/?p=47', 5, 'nav_menu_item', '', 0),
(52, 1, '2019-07-21 12:41:29', '2019-07-21 09:41:29', '', 'Contact.', '', 'publish', 'closed', 'closed', '', '52', '', '', '2019-07-31 16:45:34', '2019-07-31 13:45:34', '', 0, 'http://localhost/wordpress/?p=52', 5, 'nav_menu_item', '', 0),
(53, 1, '2019-07-21 12:41:29', '2019-07-21 09:41:29', '', 'About.', '', 'publish', 'closed', 'closed', '', '53', '', '', '2019-07-31 16:45:34', '2019-07-31 13:45:34', '', 0, 'http://localhost/wordpress/?p=53', 4, 'nav_menu_item', '', 0),
(54, 1, '2019-07-21 12:41:29', '2019-07-21 09:41:29', '', 'Portfolio.', '', 'publish', 'closed', 'closed', '', '54', '', '', '2019-07-31 16:45:34', '2019-07-31 13:45:34', '', 0, 'http://localhost/wordpress/?p=54', 3, 'nav_menu_item', '', 0),
(56, 1, '2019-07-21 12:44:48', '2019-07-21 09:44:48', '', 'Home.', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-07-31 16:45:34', '2019-07-31 13:45:34', '', 0, 'http://localhost/wordpress/?p=56', 1, 'nav_menu_item', '', 0),
(57, 1, '2019-07-21 17:06:40', '2019-07-21 14:06:40', '<!-- wp:paragraph -->\n<p>Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите ее, затем начинайте создавать!</p>\n<!-- /wp:paragraph -->', 'Привет, мир!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-07-21 17:06:40', '2019-07-21 14:06:40', '', 1, 'http://localhost/wordpress/2019/07/21/1-revision-v1/', 0, 'revision', '', 0),
(59, 3, '2019-07-21 17:17:38', '2019-07-21 14:17:38', '<!-- wp:paragraph -->\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit.  </p>\n<!-- /wp:paragraph -->', 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit sed.', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium  voluptatum deleniti atque  ', 'publish', 'open', 'open', '', 'cms', '', '', '2019-08-01 17:44:24', '2019-08-01 14:44:24', '', 0, 'http://localhost/wordpress/?p=59', 0, 'post', '', 0),
(60, 1, '2019-07-21 17:17:38', '2019-07-21 14:17:38', '', 'CMS', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2019-07-21 17:17:38', '2019-07-21 14:17:38', '', 59, 'http://localhost/wordpress/2019/07/21/59-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2019-07-21 17:20:11', '2019-07-21 14:20:11', '', '', '', 'inherit', 'open', 'closed', '', 'thumb', '', '', '2019-07-21 17:20:34', '2019-07-21 14:20:34', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/07/thumb.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2019-07-21 17:20:38', '2019-07-21 14:20:38', '', 'thumb', '', 'inherit', 'open', 'closed', '', 'thumb-2', '', '', '2019-07-21 17:20:38', '2019-07-21 14:20:38', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/07/thumb-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2019-07-21 17:20:45', '2019-07-21 14:20:45', '', 'thumb', '', 'inherit', 'open', 'closed', '', 'thumb-3', '', '', '2019-07-21 17:20:45', '2019-07-21 14:20:45', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/07/thumb-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2019-07-21 17:20:51', '2019-07-21 14:20:51', '', 'thumb', '', 'inherit', 'open', 'closed', '', 'thumb-4', '', '', '2019-07-21 17:20:51', '2019-07-21 14:20:51', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/07/thumb-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2019-07-21 17:20:58', '2019-07-21 14:20:58', '', 'thumb', '', 'inherit', 'open', 'closed', '', 'thumb-5', '', '', '2019-07-21 17:20:58', '2019-07-21 14:20:58', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/07/thumb-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2019-07-21 17:21:02', '2019-07-21 14:21:02', '', 'thumb', '', 'inherit', 'open', 'closed', '', 'thumb-6', '', '', '2019-07-21 17:21:02', '2019-07-21 14:21:02', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/07/thumb-5.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2019-07-21 17:21:07', '2019-07-21 14:21:07', '', 'thumb', '', 'inherit', 'open', 'closed', '', 'thumb-7', '', '', '2019-07-21 17:21:07', '2019-07-21 14:21:07', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/07/thumb-6.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2019-07-21 17:21:10', '2019-07-21 14:21:10', '', 'thumb', '', 'inherit', 'open', 'closed', '', 'thumb-8', '', '', '2019-07-21 17:21:10', '2019-07-21 14:21:10', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/07/thumb-7.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 2, '2019-07-22 12:20:58', '2019-07-22 09:20:58', '<!-- wp:paragraph -->\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium  voluptatum deleniti atque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit.  </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> </p>\n<!-- /wp:paragraph -->', 'Proin gravida nibh vel velit auctor aliquet Aenean sollicitudin auctor.', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium  voluptatum deleniti atque ', 'publish', 'open', 'open', '', '%d1%80%d0%b0%d0%b1%d0%be%d1%82%d0%b0', '', '', '2019-08-01 17:40:41', '2019-08-01 14:40:41', '', 0, 'http://localhost/wordpress/?p=70', 0, 'post', '', 0),
(71, 1, '2019-07-22 12:22:01', '2019-07-22 09:22:01', '', 'Работа', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2019-07-22 12:22:01', '2019-07-22 09:22:01', '', 70, 'http://localhost/wordpress/2019/07/22/70-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2019-07-22 13:22:02', '2019-07-22 10:22:02', '', 'Proin gravida nibh vel velit auctor aliquet Aenean sollicitudin auctor.', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2019-07-22 13:22:02', '2019-07-22 10:22:02', '', 70, 'http://localhost/wordpress/2019/07/22/70-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2019-07-22 13:23:15', '2019-07-22 10:23:15', '<!-- wp:paragraph -->\n<p>\n\nAt vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium.\n\n</p>\n<!-- /wp:paragraph -->', 'Proin gravida nibh vel velit auctor aliquet Aenean sollicitudin auctor.', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2019-07-22 13:23:15', '2019-07-22 10:23:15', '', 70, 'http://localhost/wordpress/2019/07/22/70-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2019-07-22 13:46:41', '2019-07-22 10:46:41', '<!-- wp:paragraph -->\n<p>\n\nAt vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium.\n\n</p>\n<!-- /wp:paragraph -->', 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit sed.', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2019-07-22 13:46:41', '2019-07-22 10:46:41', '', 59, 'http://localhost/wordpress/2019/07/22/59-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2019-07-22 13:47:40', '2019-07-22 10:47:40', '<!-- wp:paragraph -->\n<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium. </p>\n<!-- /wp:paragraph -->', 'Quis autem vel esse eum iure reprehenderit qui in ea voluptate velit esse.', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-07-22 13:47:40', '2019-07-22 10:47:40', '', 1, 'http://localhost/wordpress/2019/07/22/1-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2019-07-22 13:48:03', '2019-07-22 10:48:03', '<!-- wp:paragraph -->\n<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium. </p>\n<!-- /wp:paragraph -->', 'Proin gravida nibh vel velit auctor aliquet Aenean sollicitudin auctor.', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2019-07-22 13:48:03', '2019-07-22 10:48:03', '', 70, 'http://localhost/wordpress/2019/07/22/70-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2019-07-22 13:48:28', '2019-07-22 10:48:28', '<!-- wp:paragraph -->\n<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium. </p>\n<!-- /wp:paragraph -->', 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit sed.', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2019-07-22 13:48:28', '2019-07-22 10:48:28', '', 59, 'http://localhost/wordpress/2019/07/22/59-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2019-07-22 14:37:50', '2019-07-22 11:37:50', '<!-- wp:paragraph -->\n<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium  voluptatum deleniti atque </p>\n<!-- /wp:paragraph -->', 'Proin gravida nibh vel velit auctor aliquet Aenean sollicitudin auctor.', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2019-07-22 14:37:50', '2019-07-22 11:37:50', '', 70, 'http://localhost/wordpress/2019/07/22/70-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2019-07-22 14:38:05', '2019-07-22 11:38:05', '<!-- wp:paragraph -->\n<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium  voluptatum deleniti atque  </p>\n<!-- /wp:paragraph -->', 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit sed.', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2019-07-22 14:38:05', '2019-07-22 11:38:05', '', 59, 'http://localhost/wordpress/2019/07/22/59-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2019-07-22 14:38:25', '2019-07-22 11:38:25', '<!-- wp:paragraph -->\n<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium  voluptatum deleniti atque. </p>\n<!-- /wp:paragraph -->', 'Quis autem vel esse eum iure reprehenderit qui in ea voluptate velit esse.', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-07-22 14:38:25', '2019-07-22 11:38:25', '', 1, 'http://localhost/wordpress/2019/07/22/1-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2019-07-25 18:33:22', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-25 18:33:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=84', 0, 'page', '', 0),
(85, 1, '2019-07-25 18:36:11', '2019-07-25 15:36:11', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-07-31 16:02:17', '2019-07-31 13:02:17', '', 0, 'http://localhost/wordpress/?page_id=85', 0, 'page', '', 0),
(86, 1, '2019-07-25 18:36:11', '2019-07-25 15:36:11', '', 'Блог', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2019-07-25 18:36:11', '2019-07-25 15:36:11', '', 85, 'http://localhost/wordpress/2019/07/25/85-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2019-07-25 18:36:51', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-25 18:36:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=87', 1, 'nav_menu_item', '', 0),
(88, 1, '2019-07-25 18:37:35', '2019-07-25 15:37:35', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2019-07-25 18:37:35', '2019-07-25 15:37:35', '', 85, 'http://localhost/wordpress/2019/07/25/85-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2019-07-25 18:54:40', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-25 18:54:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=90', 0, 'page', '', 0),
(91, 1, '2019-07-25 18:55:35', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-25 18:55:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=91', 0, 'page', '', 0),
(92, 1, '2019-07-25 19:04:44', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-25 19:04:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=92', 0, 'page', '', 0),
(93, 1, '2019-07-25 19:06:17', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-25 19:06:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=93', 0, 'page', '', 0),
(94, 1, '2019-07-25 19:06:47', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-25 19:06:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=94', 0, 'page', '', 0),
(95, 1, '2019-07-25 19:06:55', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-25 19:06:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=95', 0, 'post', '', 0),
(96, 1, '2019-07-25 19:07:03', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-25 19:07:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=96', 0, 'page', '', 0),
(97, 1, '2019-07-25 19:10:27', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-25 19:10:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=97', 0, 'page', '', 0),
(98, 1, '2019-07-25 19:11:43', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-25 19:11:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=98', 0, 'page', '', 0),
(99, 1, '2019-07-25 19:13:00', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-25 19:13:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=99', 0, 'page', '', 0),
(100, 1, '2019-07-25 19:13:10', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-25 19:13:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=100', 0, 'page', '', 0),
(101, 1, '2019-07-25 19:13:34', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-25 19:13:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=101', 0, 'page', '', 0),
(102, 1, '2019-07-25 19:14:25', '2019-07-25 16:14:25', ' ', '', '', 'publish', 'closed', 'closed', '', '102', '', '', '2019-07-27 15:19:06', '2019-07-27 12:19:06', '', 0, 'http://localhost/wordpress/?p=102', 2, 'nav_menu_item', '', 0),
(103, 1, '2019-07-25 19:16:11', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-25 19:16:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=103', 0, 'page', '', 0),
(104, 1, '2019-07-26 09:24:54', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-26 09:24:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=104', 0, 'page', '', 0),
(105, 1, '2019-07-27 15:19:21', '2019-07-27 12:19:21', ' ', '', '', 'publish', 'closed', 'closed', '', '105', '', '', '2019-07-31 16:45:34', '2019-07-31 13:45:34', '', 0, 'http://localhost/wordpress/?p=105', 2, 'nav_menu_item', '', 0),
(106, 1, '2019-07-27 22:54:56', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-07-27 22:54:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=106', 0, 'post', '', 0),
(107, 1, '2019-07-29 22:12:02', '2019-07-29 19:12:02', '', 'Camera Man', '', 'publish', 'closed', 'closed', '', 'camera-man', '', '', '2019-07-30 18:03:58', '2019-07-30 15:03:58', '', 0, 'http://localhost/wordpress/?post_type=portfolio&#038;p=107', 0, 'portfolio', '', 0),
(108, 1, '2019-07-29 22:11:27', '2019-07-29 19:11:27', '', 'camera-man', '', 'inherit', 'open', 'closed', '', 'camera-man', '', '', '2019-07-29 22:11:44', '2019-07-29 19:11:44', '', 107, 'http://localhost/wordpress/wp-content/uploads/2019/07/camera-man-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2019-07-29 22:28:21', '2019-07-29 19:28:21', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"portfolio\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Для портфолио', '%d0%b4%d0%bb%d1%8f-%d0%bf%d0%be%d1%80%d1%82%d1%84%d0%be%d0%bb%d0%b8%d0%be', 'publish', 'closed', 'closed', '', 'group_5d3f46f21d186', '', '', '2019-07-30 13:33:53', '2019-07-30 10:33:53', '', 0, 'http://localhost/wordpress/?post_type=acf-field-group&#038;p=109', 0, 'acf-field-group', '', 0),
(110, 1, '2019-07-29 22:28:21', '2019-07-29 19:28:21', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:3:\"F Y\";s:13:\"return_format\";s:3:\"F Y\";s:9:\"first_day\";i:1;}', 'Date', 'project-end-date', 'publish', 'closed', 'closed', '', 'field_5d3f473f80428', '', '', '2019-07-30 13:17:08', '2019-07-30 10:17:08', '', 109, 'http://localhost/wordpress/?post_type=acf-field&#038;p=110', 0, 'acf-field', '', 0),
(111, 1, '2019-07-30 13:20:10', '2019-07-30 10:20:10', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'О проекте', 'about_project', 'publish', 'closed', 'closed', '', 'field_5d40198cdd24f', '', '', '2019-07-30 13:21:22', '2019-07-30 10:21:22', '', 109, 'http://localhost/wordpress/?post_type=acf-field&#038;p=111', 1, 'acf-field', '', 0),
(112, 1, '2019-07-30 13:30:59', '2019-07-30 10:30:59', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Client', 'client', 'publish', 'closed', 'closed', '', 'field_5d401c407c7f8', '', '', '2019-07-30 13:33:53', '2019-07-30 10:33:53', '', 109, 'http://localhost/wordpress/?post_type=acf-field&#038;p=112', 2, 'acf-field', '', 0),
(113, 1, '2019-07-30 16:09:09', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-30 16:09:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=portfolio&p=113', 0, 'portfolio', '', 0),
(114, 1, '2019-07-30 16:11:03', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-30 16:11:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=portfolio&p=114', 0, 'portfolio', '', 0),
(115, 1, '2019-07-30 17:46:55', '2019-07-30 14:46:55', '', 'Geometrics', '', 'publish', 'closed', 'closed', '', 'geometrics', '', '', '2019-07-30 17:56:36', '2019-07-30 14:56:36', '', 0, 'http://localhost/wordpress/?post_type=portfolio&#038;p=115', 0, 'portfolio', '', 0),
(116, 1, '2019-07-30 17:45:45', '2019-07-30 14:45:45', '', 'geometric-backgrounds-02', '', 'inherit', 'open', 'closed', '', 'geometric-backgrounds-02', '', '', '2019-07-30 17:45:45', '2019-07-30 14:45:45', '', 115, 'http://localhost/wordpress/wp-content/uploads/2019/07/geometric-backgrounds-02.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2019-07-30 17:56:31', '2019-07-30 14:56:31', '', 'geometrics', '', 'inherit', 'open', 'closed', '', 'geometrics-2', '', '', '2019-07-30 17:56:31', '2019-07-30 14:56:31', '', 115, 'http://localhost/wordpress/wp-content/uploads/2019/07/geometrics.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2019-07-30 18:00:45', '2019-07-30 15:00:45', '', 'Console', '', 'publish', 'closed', 'closed', '', 'console', '', '', '2019-07-30 18:00:46', '2019-07-30 15:00:46', '', 0, 'http://localhost/wordpress/?post_type=portfolio&#038;p=118', 0, 'portfolio', '', 0),
(119, 1, '2019-07-30 18:00:39', '2019-07-30 15:00:39', '', 'console', '', 'inherit', 'open', 'closed', '', 'console', '', '', '2019-07-30 18:00:39', '2019-07-30 15:00:39', '', 118, 'http://localhost/wordpress/wp-content/uploads/2019/07/console.jpg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2019-07-30 18:02:23', '2019-07-30 15:02:23', '', 'Into The Light', '', 'publish', 'closed', 'closed', '', 'into-the-light', '', '', '2019-07-30 18:04:15', '2019-07-30 15:04:15', '', 0, 'http://localhost/wordpress/?post_type=portfolio&#038;p=120', 0, 'portfolio', '', 0),
(121, 1, '2019-07-30 18:02:49', '2019-07-30 15:02:49', '', 'into-the-light', '', 'inherit', 'open', 'closed', '', 'into-the-light-2', '', '', '2019-07-30 18:02:49', '2019-07-30 15:02:49', '', 120, 'http://localhost/wordpress/wp-content/uploads/2019/07/into-the-light.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2019-07-30 18:06:17', '2019-07-30 15:06:17', '', 'Farmer Boy', '', 'publish', 'closed', 'closed', '', 'farmer-boy', '', '', '2019-07-30 18:06:18', '2019-07-30 15:06:18', '', 0, 'http://localhost/wordpress/?post_type=portfolio&#038;p=122', 0, 'portfolio', '', 0),
(123, 1, '2019-07-30 18:05:18', '2019-07-30 15:05:18', '', 'farmerboy', '', 'inherit', 'open', 'closed', '', 'farmerboy', '', '', '2019-07-30 18:05:18', '2019-07-30 15:05:18', '', 122, 'http://localhost/wordpress/wp-content/uploads/2019/07/farmerboy.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2019-07-30 18:06:26', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-07-30 18:06:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=portfolio&p=124', 0, 'portfolio', '', 0),
(125, 1, '2019-07-30 18:09:01', '2019-07-30 15:09:01', '', 'Coffee Cup', '', 'publish', 'closed', 'closed', '', 'coffee-cup', '', '', '2019-07-30 18:09:02', '2019-07-30 15:09:02', '', 0, 'http://localhost/wordpress/?post_type=portfolio&#038;p=125', 0, 'portfolio', '', 0),
(126, 1, '2019-07-30 18:08:49', '2019-07-30 15:08:49', '', 'coffee-cup', '', 'inherit', 'open', 'closed', '', 'coffee-cup', '', '', '2019-07-30 18:08:49', '2019-07-30 15:08:49', '', 125, 'http://localhost/wordpress/wp-content/uploads/2019/07/coffee-cup.jpg', 0, 'attachment', 'image/jpeg', 0),
(127, 1, '2019-07-31 16:45:34', '2019-07-31 13:45:34', '', 'bl', '', 'publish', 'closed', 'closed', '', 'bl', '', '', '2019-07-31 16:45:34', '2019-07-31 13:45:34', '', 0, 'http://localhost/wordpress/?p=127', 6, 'nav_menu_item', '', 0),
(128, 1, '2019-07-31 16:46:31', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-31 16:46:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=128', 1, 'nav_menu_item', '', 0),
(129, 1, '2019-07-31 16:46:31', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-31 16:46:31', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=129', 1, 'nav_menu_item', '', 0),
(130, 1, '2019-07-31 16:46:32', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-31 16:46:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=130', 1, 'nav_menu_item', '', 0),
(131, 1, '2019-07-31 16:46:32', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-31 16:46:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=131', 1, 'nav_menu_item', '', 0),
(132, 1, '2019-07-31 16:46:32', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-31 16:46:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=132', 1, 'nav_menu_item', '', 0),
(133, 1, '2019-07-31 16:46:33', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-31 16:46:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=133', 1, 'nav_menu_item', '', 0),
(134, 1, '2019-07-31 16:46:33', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-07-31 16:46:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=134', 1, 'nav_menu_item', '', 0),
(135, 1, '2019-08-01 16:27:13', '2019-08-01 13:27:13', '', 'post-image-1300x500-01', '', 'inherit', 'open', 'closed', '', 'post-image-1300x500-01', '', '', '2019-08-01 16:27:13', '2019-08-01 13:27:13', '', 70, 'http://localhost/wordpress/wp-content/uploads/2019/07/post-image-1300x500-01.jpg', 0, 'attachment', 'image/jpeg', 0),
(136, 1, '2019-08-01 16:28:16', '2019-08-01 13:28:16', '', 'post-image-1300x500-02', '', 'inherit', 'open', 'closed', '', 'post-image-1300x500-02', '', '', '2019-08-01 16:28:16', '2019-08-01 13:28:16', '', 59, 'http://localhost/wordpress/wp-content/uploads/2019/07/post-image-1300x500-02.jpg', 0, 'attachment', 'image/jpeg', 0),
(137, 1, '2019-08-01 16:28:43', '2019-08-01 13:28:43', '', 'post-image-1300x500-03', '', 'inherit', 'open', 'closed', '', 'post-image-1300x500-03', '', '', '2019-08-01 16:28:43', '2019-08-01 13:28:43', '', 1, 'http://localhost/wordpress/wp-content/uploads/2019/07/post-image-1300x500-03.jpg', 0, 'attachment', 'image/jpeg', 0),
(138, 1, '2019-08-01 16:45:37', '2019-08-01 13:45:37', '<!-- wp:paragraph -->\n<p>fdfgdf</p>\n<!-- /wp:paragraph -->', 'Proin gravida nibh vel velit auctor aliquet Aenean sollicitudin auctor.', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium  voluptatum deleniti atque ', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2019-08-01 16:45:37', '2019-08-01 13:45:37', '', 70, 'http://localhost/wordpress/2019/08/01/70-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2019-08-01 16:47:57', '2019-08-01 13:47:57', '<!-- wp:paragraph -->\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. </p>\n<!-- /wp:paragraph -->', 'Proin gravida nibh vel velit auctor aliquet Aenean sollicitudin auctor.', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium  voluptatum deleniti atque ', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2019-08-01 16:47:57', '2019-08-01 13:47:57', '', 70, 'http://localhost/wordpress/2019/08/01/70-revision-v1/', 0, 'revision', '', 0),
(140, 1, '2019-08-01 17:03:28', '2019-08-01 14:03:28', '<!-- wp:paragraph -->\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi &lt; &lt;!--more--> accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. </p>\n<!-- /wp:paragraph -->', 'Proin gravida nibh vel velit auctor aliquet Aenean sollicitudin auctor.', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium  voluptatum deleniti atque ', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2019-08-01 17:03:28', '2019-08-01 14:03:28', '', 70, 'http://localhost/wordpress/2019/08/01/70-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2019-08-01 17:04:04', '2019-08-01 14:04:04', '<!-- wp:paragraph -->\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi &lt;!--more--> accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. </p>\n<!-- /wp:paragraph -->', 'Proin gravida nibh vel velit auctor aliquet Aenean sollicitudin auctor.', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium  voluptatum deleniti atque ', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2019-08-01 17:04:04', '2019-08-01 14:04:04', '', 70, 'http://localhost/wordpress/2019/08/01/70-revision-v1/', 0, 'revision', '', 0),
(142, 1, '2019-08-01 17:17:07', '2019-08-01 14:17:07', '<!-- wp:paragraph -->\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\n\nProin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. \n\n</p>\n<!-- /wp:paragraph -->', 'Proin gravida nibh vel velit auctor aliquet Aenean sollicitudin auctor.', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium  voluptatum deleniti atque ', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2019-08-01 17:17:07', '2019-08-01 14:17:07', '', 70, 'http://localhost/wordpress/2019/08/01/70-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2019-08-01 17:25:16', '2019-08-01 14:25:16', '<!-- wp:paragraph -->\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi  &lt;!--more--> accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. </p>\n<!-- /wp:paragraph -->', 'Proin gravida nibh vel velit auctor aliquet Aenean sollicitudin auctor.', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium  voluptatum deleniti atque ', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2019-08-01 17:25:16', '2019-08-01 14:25:16', '', 70, 'http://localhost/wordpress/2019/08/01/70-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2019-08-01 17:39:34', '2019-08-01 14:39:34', '<!-- wp:paragraph {\"className\":\"lead\"} -->\n<p class=\"lead\">Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium  voluptatum deleniti atque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit.  </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> </p>\n<!-- /wp:paragraph -->', 'Proin gravida nibh vel velit auctor aliquet Aenean sollicitudin auctor.', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium  voluptatum deleniti atque ', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2019-08-01 17:39:34', '2019-08-01 14:39:34', '', 70, 'http://localhost/wordpress/2019/08/01/70-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2019-08-01 17:40:41', '2019-08-01 14:40:41', '<!-- wp:paragraph -->\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium  voluptatum deleniti atque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit.  </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> </p>\n<!-- /wp:paragraph -->', 'Proin gravida nibh vel velit auctor aliquet Aenean sollicitudin auctor.', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium  voluptatum deleniti atque ', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2019-08-01 17:40:41', '2019-08-01 14:40:41', '', 70, 'http://localhost/wordpress/2019/08/01/70-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2019-08-01 17:44:24', '2019-08-01 14:44:24', '<!-- wp:paragraph -->\n<p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio. Sed non mauris vitae erat consequat auctor eu in elit.  </p>\n<!-- /wp:paragraph -->', 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit sed.', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate. At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium  voluptatum deleniti atque  ', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2019-08-01 17:44:24', '2019-08-01 14:44:24', '', 59, 'http://localhost/wordpress/2019/08/01/59-revision-v1/', 0, 'revision', '', 0);

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
(1, 'Designs', 'designs', 0),
(2, 'Верхнее меню', '%d0%b2%d0%b5%d1%80%d1%85%d0%bd%d0%b5%d0%b5-%d0%bc%d0%b5%d0%bd%d1%8e', 0),
(3, 'Нижнее меню', '%d0%bd%d0%b8%d0%b6%d0%bd%d0%b5%d0%b5-%d0%bc%d0%b5%d0%bd%d1%8e', 0),
(4, 'Internet', 'internet', 0),
(5, 'Typography', 'typography', 0),
(6, 'Photography', 'photography', 0),
(7, 'Web Development', 'web-development', 0),
(8, 'Projects', 'projects', 0),
(9, 'Other Stuff', 'other-stuff', 0),
(10, 'DRUPAL', 'drupal', 0),
(11, 'JOOMLA', 'joomla', 0),
(12, 'GHOST', 'ghost', 0),
(13, 'WORDPRESS', 'wordpress', 0),
(14, 'Photoshop', 'photoshop', 0),
(15, 'Photography', 'photography', 0),
(16, 'Branding', 'branding', 0),
(17, 'Illustrration', 'illustrration', 0),
(18, 'Branding', 'branding', 0),
(19, 'Illustrration', 'illustrration', 0),
(20, 'Web Development', 'web-development', 0),
(21, 'Web Design', 'web-design', 0);

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
(1, 4, 0),
(1, 5, 0),
(1, 6, 0),
(1, 7, 0),
(1, 8, 0),
(1, 9, 0),
(5, 2, 0),
(36, 2, 0),
(46, 2, 0),
(47, 2, 0),
(52, 3, 0),
(53, 3, 0),
(54, 3, 0),
(56, 3, 0),
(59, 1, 0),
(59, 10, 0),
(59, 11, 0),
(59, 12, 0),
(59, 13, 0),
(70, 4, 0),
(70, 7, 0),
(70, 11, 0),
(102, 2, 0),
(105, 3, 0),
(107, 14, 0),
(107, 15, 0),
(107, 16, 0),
(115, 19, 0),
(118, 20, 0),
(120, 14, 0),
(120, 15, 0),
(122, 16, 0),
(125, 21, 0),
(127, 3, 0);

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
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'nav_menu', '', 0, 6),
(4, 4, 'category', '', 0, 2),
(5, 5, 'category', '', 0, 1),
(6, 6, 'category', '', 0, 1),
(7, 7, 'category', '', 0, 2),
(8, 8, 'category', '', 0, 1),
(9, 9, 'category', '', 0, 1),
(10, 10, 'post_tag', '', 0, 1),
(11, 11, 'post_tag', '', 0, 2),
(12, 12, 'post_tag', '', 0, 1),
(13, 13, 'post_tag', '', 0, 1),
(14, 14, 'skills', '', 0, 2),
(15, 15, 'skills', '', 0, 2),
(16, 16, 'skills', '', 0, 2),
(17, 17, 'category', '', 0, 0),
(18, 18, 'category', '', 0, 0),
(19, 19, 'skills', '', 0, 1),
(20, 20, 'skills', '', 0, 1),
(21, 21, 'skills', '', 0, 1);

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
(1, 1, 'nickname', 'Admin'),
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
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:19:{s:64:\"d4bf1e427bedf69f4e96a013c91819d9a5588f1fce67cf0e5d5e6796e6530d36\";a:4:{s:10:\"expiration\";i:1564823531;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1563613931;}s:64:\"683c4f2b70c76e4904cfdb36f5debdecc6f0029cc321c312869f0736c6dc6c42\";a:4:{s:10:\"expiration\";i:1564827627;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1563618027;}s:64:\"a4a1c81cb293628b60f49a3f939a331f73e12ec437e9b5601ef407c8a4e35b8d\";a:4:{s:10:\"expiration\";i:1564691142;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1564518342;}s:64:\"07e0da84b3d5c67344e81435a486c1557b77d9008a9a9d36fa078f2196af55e0\";a:4:{s:10:\"expiration\";i:1564742021;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1564569221;}s:64:\"6412ed48d713bc702ed946a4c6a7f3082f163cbe7e7cc73dd269b76a98f51e71\";a:4:{s:10:\"expiration\";i:1564742284;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1564569484;}s:64:\"6a34b8e4f12414778fec7353651099df6ec86ccaae93715b182c3072085b0173\";a:4:{s:10:\"expiration\";i:1564742341;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1564569541;}s:64:\"04b36efce30530ae48eb6ec7fdae041c458521cae0c39c9d205024e6537770fe\";a:4:{s:10:\"expiration\";i:1564744814;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1564572014;}s:64:\"2c006328787b61e0deae87eed97494010475c2cff21ba2b1d1bae33d1481551f\";a:4:{s:10:\"expiration\";i:1564750495;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.87 Safari/537.36\";s:5:\"login\";i:1564577695;}s:64:\"060e78aea3e4be02fc6cbc9cdc3d6cb6747587aedf9b457a4e1bd74ca6af7fcb\";a:4:{s:10:\"expiration\";i:1565804446;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1564594846;}s:64:\"d085c9e41108e129880c9e2111e2f7ddec408dd7bed55d46bc409e2c16566778\";a:4:{s:10:\"expiration\";i:1565804447;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1564594847;}s:64:\"cc6145f53827204863ba854a8487df707ff7f4c5562e875d59748e67bab24274\";a:4:{s:10:\"expiration\";i:1565804447;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1564594847;}s:64:\"8d56ce7c251461d960a27e1270f0327a0e459c3f9b6141ceda721f56ede2fa5b\";a:4:{s:10:\"expiration\";i:1565804447;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1564594847;}s:64:\"a0c24518ce16b7e4f2e52b8eb6deb9d2d3a189fdb2f74f39d354e751571849c8\";a:4:{s:10:\"expiration\";i:1565804447;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1564594847;}s:64:\"b8642d10bcb3c7fa136c0fbe67c052955abf85ffd182534a7ff7f660dfe0d5fc\";a:4:{s:10:\"expiration\";i:1565804447;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1564594847;}s:64:\"0575ffa08291bcb15eb6a8971be15734aee5e7eb58d1b914b831248093cd3867\";a:4:{s:10:\"expiration\";i:1564778653;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1564605853;}s:64:\"5fc08fa0b1daddbb9304f51c9ef5d1ae2568181acb392ddc539e792d9a892721\";a:4:{s:10:\"expiration\";i:1564779475;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1564606675;}s:64:\"db158b9add11adbae7fee984f2bdb2d111ca8c041bd21eb05795615243251853\";a:4:{s:10:\"expiration\";i:1564835521;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1564662721;}s:64:\"eda5f5eee1574b44bd6dafb2982ca2c16f52831a058a1c3c351c103e5b633345\";a:4:{s:10:\"expiration\";i:1564841794;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1564668994;}s:64:\"35ba534b3c91760f285e6e340412cb53e82d42eb0503c41cb104cad6b1be7700\";a:4:{s:10:\"expiration\";i:1564842923;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.142 Safari/537.36\";s:5:\"login\";i:1564670123;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '106'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '3'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(22, 1, 'wp_user-settings-time', '1564071231'),
(23, 2, 'nickname', 'Sakura Haruno'),
(24, 2, 'first_name', 'Sakura'),
(25, 2, 'last_name', 'Haruno'),
(26, 2, 'description', ''),
(27, 2, 'rich_editing', 'true'),
(28, 2, 'syntax_highlighting', 'true'),
(29, 2, 'comment_shortcuts', 'false'),
(30, 2, 'admin_color', 'fresh'),
(31, 2, 'use_ssl', '0'),
(32, 2, 'show_admin_bar_front', 'true'),
(33, 2, 'locale', ''),
(34, 2, 'wp_capabilities', 'a:1:{s:6:\"editor\";b:1;}'),
(35, 2, 'wp_user_level', '7'),
(36, 2, 'dismissed_wp_pointers', ''),
(37, 3, 'nickname', 'John Doe'),
(38, 3, 'first_name', 'John'),
(39, 3, 'last_name', 'Doe'),
(40, 3, 'description', ''),
(41, 3, 'rich_editing', 'true'),
(42, 3, 'syntax_highlighting', 'true'),
(43, 3, 'comment_shortcuts', 'false'),
(44, 3, 'admin_color', 'fresh'),
(45, 3, 'use_ssl', '0'),
(46, 3, 'show_admin_bar_front', 'true'),
(47, 3, 'locale', ''),
(48, 3, 'wp_capabilities', 'a:1:{s:6:\"editor\";b:1;}'),
(49, 3, 'wp_user_level', '7'),
(50, 3, 'dismissed_wp_pointers', ''),
(51, 4, 'nickname', 'Naruto Uzumaki'),
(52, 4, 'first_name', 'Naruto'),
(53, 4, 'last_name', 'Uzumaki'),
(54, 4, 'description', ''),
(55, 4, 'rich_editing', 'true'),
(56, 4, 'syntax_highlighting', 'true'),
(57, 4, 'comment_shortcuts', 'false'),
(58, 4, 'admin_color', 'fresh'),
(59, 4, 'use_ssl', '0'),
(60, 4, 'show_admin_bar_front', 'true'),
(61, 4, 'locale', ''),
(62, 4, 'wp_capabilities', 'a:1:{s:6:\"editor\";b:1;}'),
(63, 4, 'wp_user_level', '7'),
(64, 4, 'dismissed_wp_pointers', ''),
(65, 1, 'closedpostboxes_page', 'a:0:{}'),
(66, 1, 'metaboxhidden_page', 'a:4:{i:0;s:10:\"postcustom\";i:1;s:16:\"commentstatusdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";}'),
(67, 1, 'meta-box-order_page', 'a:3:{s:4:\"side\";s:23:\"submitdiv,pageparentdiv\";s:6:\"normal\";s:45:\"postcustom,commentstatusdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(68, 1, 'screen_layout_page', '2'),
(69, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(70, 1, 'metaboxhidden_dashboard', 'a:1:{i:0;s:17:\"dashboard_primary\";}'),
(71, 1, 'closedpostboxes_portfolio', 'a:0:{}'),
(72, 1, 'metaboxhidden_portfolio', 'a:0:{}'),
(73, 1, 'community-events-location', 'a:4:{s:11:\"description\";s:8:\"New York\";s:8:\"latitude\";s:10:\"40.7142700\";s:9:\"longitude\";s:11:\"-74.0059700\";s:7:\"country\";s:2:\"US\";}');

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
(1, 'Admin', '$P$ByZ.g1TuebGKYqqEbHnMRyG69px12h0', 'admin', 'jttucker550@gmail.com', '', '2019-07-20 09:11:51', '', 0, 'Admin'),
(2, 'Sakura Naruno', '$P$Bhu41KTrhx4rE5QqwdFNGLn2tNpk08.', 'sakura-naruno', 'fuf@rt.com', '', '2019-07-22 10:42:43', '1563792164:$P$BDHBHUT8uoS6tDAG.SXxwJfRFrLZQh.', 0, 'Sakura Haruno'),
(3, 'John Doe', '$P$BO35jCVGnzUm/Qr1zQgVoL4zjFImmY0', 'john-doe', 'dsda@ff.com', '', '2019-07-22 10:51:16', '1563792677:$P$BJqObhLrG9okX.H4gBkY8l99l62TST.', 0, 'John Doe'),
(4, 'Naruto Uzumaki', '$P$BxLwomaIxBeWmi/nU9HwaaNSvZJFqb.', 'naruto-uzumaki', 'sdfsds@dlf.cjh', '', '2019-07-22 10:52:28', '1563792749:$P$BpUJrRe32Xsh1U/F3mD7JdmFOMbTB4/', 0, 'Naruto Uzumaki');

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
  ADD UNIQUE KEY `option_name` (`option_name`);

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=499;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=493;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
