-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Out-2023 às 19:52
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `teste-2`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://br.wordpress.org/', '', '2023-09-14 12:36:04', '2023-09-14 15:36:04', 'Oi, isto é um comentário.\nPara iniciar a moderar, editar e excluir comentários, visite a tela Comentários no painel.\nOs avatares dos comentaristas vêm do <a href=\"https://br.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/site', 'yes'),
(2, 'home', 'http://localhost/site', 'yes'),
(3, 'blogname', 'Worddiference', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'janainabs21@outlook.com.br', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'wp-devs', 'yes'),
(41, 'stylesheet', 'wp-devs', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '55853', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
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
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1710257764', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '55853', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'pt_BR', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:156:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Posts recentes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:224:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Arquivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorias</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:9:{i:1698694565;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1698723365;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1698723394;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1698766565;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1698766594;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1698766596;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1698939370;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1699025765;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(121, '_transient_wp_core_block_css_files', 'a:496:{i:0;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/archives/editor-rtl.css\";i:1;s:70:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/archives/editor-rtl.min.css\";i:2;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/archives/editor.css\";i:3;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/archives/editor.min.css\";i:4;s:65:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/archives/style-rtl.css\";i:5;s:69:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/archives/style-rtl.min.css\";i:6;s:61:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/archives/style.css\";i:7;s:65:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/archives/style.min.css\";i:8;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/audio/editor-rtl.css\";i:9;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/audio/editor-rtl.min.css\";i:10;s:59:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/audio/editor.css\";i:11;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/audio/editor.min.css\";i:12;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/audio/style-rtl.css\";i:13;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/audio/style-rtl.min.css\";i:14;s:58:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/audio/style.css\";i:15;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/audio/style.min.css\";i:16;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/audio/theme-rtl.css\";i:17;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/audio/theme-rtl.min.css\";i:18;s:58:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/audio/theme.css\";i:19;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/audio/theme.min.css\";i:20;s:64:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/avatar/editor-rtl.css\";i:21;s:68:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/avatar/editor-rtl.min.css\";i:22;s:60:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/avatar/editor.css\";i:23;s:64:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/avatar/editor.min.css\";i:24;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/avatar/style-rtl.css\";i:25;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/avatar/style-rtl.min.css\";i:26;s:59:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/avatar/style.css\";i:27;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/avatar/style.min.css\";i:28;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/block/editor-rtl.css\";i:29;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/block/editor-rtl.min.css\";i:30;s:59:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/block/editor.css\";i:31;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/block/editor.min.css\";i:32;s:64:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/button/editor-rtl.css\";i:33;s:68:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/button/editor-rtl.min.css\";i:34;s:60:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/button/editor.css\";i:35;s:64:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/button/editor.min.css\";i:36;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/button/style-rtl.css\";i:37;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/button/style-rtl.min.css\";i:38;s:59:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/button/style.css\";i:39;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/button/style.min.css\";i:40;s:65:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/buttons/editor-rtl.css\";i:41;s:69:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/buttons/editor-rtl.min.css\";i:42;s:61:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/buttons/editor.css\";i:43;s:65:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/buttons/editor.min.css\";i:44;s:64:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/buttons/style-rtl.css\";i:45;s:68:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/buttons/style-rtl.min.css\";i:46;s:60:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/buttons/style.css\";i:47;s:64:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/buttons/style.min.css\";i:48;s:65:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/calendar/style-rtl.css\";i:49;s:69:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/calendar/style-rtl.min.css\";i:50;s:61:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/calendar/style.css\";i:51;s:65:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/calendar/style.min.css\";i:52;s:68:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/categories/editor-rtl.css\";i:53;s:72:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/categories/editor-rtl.min.css\";i:54;s:64:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/categories/editor.css\";i:55;s:68:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/categories/editor.min.css\";i:56;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/categories/style-rtl.css\";i:57;s:71:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/categories/style-rtl.min.css\";i:58;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/categories/style.css\";i:59;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/categories/style.min.css\";i:60;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/code/editor-rtl.css\";i:61;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/code/editor-rtl.min.css\";i:62;s:58:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/code/editor.css\";i:63;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/code/editor.min.css\";i:64;s:61:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/code/style-rtl.css\";i:65;s:65:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/code/style-rtl.min.css\";i:66;s:57:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/code/style.css\";i:67;s:61:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/code/style.min.css\";i:68;s:61:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/code/theme-rtl.css\";i:69;s:65:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/code/theme-rtl.min.css\";i:70;s:57:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/code/theme.css\";i:71;s:61:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/code/theme.min.css\";i:72;s:65:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/columns/editor-rtl.css\";i:73;s:69:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/columns/editor-rtl.min.css\";i:74;s:61:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/columns/editor.css\";i:75;s:65:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/columns/editor.min.css\";i:76;s:64:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/columns/style-rtl.css\";i:77;s:68:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/columns/style-rtl.min.css\";i:78;s:60:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/columns/style.css\";i:79;s:64:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/columns/style.min.css\";i:80;s:72:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/comment-content/style-rtl.css\";i:81;s:76:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/comment-content/style-rtl.min.css\";i:82;s:68:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/comment-content/style.css\";i:83;s:72:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/comment-content/style.min.css\";i:84;s:73:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/comment-template/style-rtl.css\";i:85;s:77:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/comment-template/style-rtl.min.css\";i:86;s:69:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/comment-template/style.css\";i:87;s:73:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/comment-template/style.min.css\";i:88;s:85:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/comments-pagination-numbers/editor-rtl.css\";i:89;s:89:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/comments-pagination-numbers/editor-rtl.min.css\";i:90;s:81:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/comments-pagination-numbers/editor.css\";i:91;s:85:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/comments-pagination-numbers/editor.min.css\";i:92;s:77:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/comments-pagination/editor-rtl.css\";i:93;s:81:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/comments-pagination/editor-rtl.min.css\";i:94;s:73:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/comments-pagination/editor.css\";i:95;s:77:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/comments-pagination/editor.min.css\";i:96;s:76:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/comments-pagination/style-rtl.css\";i:97;s:80:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/comments-pagination/style-rtl.min.css\";i:98;s:72:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/comments-pagination/style.css\";i:99;s:76:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/comments-pagination/style.min.css\";i:100;s:72:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/comments-title/editor-rtl.css\";i:101;s:76:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/comments-title/editor-rtl.min.css\";i:102;s:68:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/comments-title/editor.css\";i:103;s:72:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/comments-title/editor.min.css\";i:104;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/comments/editor-rtl.css\";i:105;s:70:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/comments/editor-rtl.min.css\";i:106;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/comments/editor.css\";i:107;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/comments/editor.min.css\";i:108;s:65:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/comments/style-rtl.css\";i:109;s:69:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/comments/style-rtl.min.css\";i:110;s:61:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/comments/style.css\";i:111;s:65:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/comments/style.min.css\";i:112;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/cover/editor-rtl.css\";i:113;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/cover/editor-rtl.min.css\";i:114;s:59:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/cover/editor.css\";i:115;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/cover/editor.min.css\";i:116;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/cover/style-rtl.css\";i:117;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/cover/style-rtl.min.css\";i:118;s:58:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/cover/style.css\";i:119;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/cover/style.min.css\";i:120;s:65:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/details/editor-rtl.css\";i:121;s:69:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/details/editor-rtl.min.css\";i:122;s:61:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/details/editor.css\";i:123;s:65:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/details/editor.min.css\";i:124;s:64:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/details/style-rtl.css\";i:125;s:68:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/details/style-rtl.min.css\";i:126;s:60:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/details/style.css\";i:127;s:64:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/details/style.min.css\";i:128;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/embed/editor-rtl.css\";i:129;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/embed/editor-rtl.min.css\";i:130;s:59:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/embed/editor.css\";i:131;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/embed/editor.min.css\";i:132;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/embed/style-rtl.css\";i:133;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/embed/style-rtl.min.css\";i:134;s:58:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/embed/style.css\";i:135;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/embed/style.min.css\";i:136;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/embed/theme-rtl.css\";i:137;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/embed/theme-rtl.min.css\";i:138;s:58:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/embed/theme.css\";i:139;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/embed/theme.min.css\";i:140;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/file/editor-rtl.css\";i:141;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/file/editor-rtl.min.css\";i:142;s:58:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/file/editor.css\";i:143;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/file/editor.min.css\";i:144;s:61:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/file/style-rtl.css\";i:145;s:65:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/file/style-rtl.min.css\";i:146;s:57:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/file/style.css\";i:147;s:61:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/file/style.min.css\";i:148;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/footnotes/style-rtl.css\";i:149;s:70:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/footnotes/style-rtl.min.css\";i:150;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/footnotes/style.css\";i:151;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/footnotes/style.min.css\";i:152;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/freeform/editor-rtl.css\";i:153;s:70:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/freeform/editor-rtl.min.css\";i:154;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/freeform/editor.css\";i:155;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/freeform/editor.min.css\";i:156;s:65:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/gallery/editor-rtl.css\";i:157;s:69:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/gallery/editor-rtl.min.css\";i:158;s:61:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/gallery/editor.css\";i:159;s:65:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/gallery/editor.min.css\";i:160;s:64:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/gallery/style-rtl.css\";i:161;s:68:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/gallery/style-rtl.min.css\";i:162;s:60:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/gallery/style.css\";i:163;s:64:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/gallery/style.min.css\";i:164;s:64:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/gallery/theme-rtl.css\";i:165;s:68:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/gallery/theme-rtl.min.css\";i:166;s:60:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/gallery/theme.css\";i:167;s:64:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/gallery/theme.min.css\";i:168;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/group/editor-rtl.css\";i:169;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/group/editor-rtl.min.css\";i:170;s:59:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/group/editor.css\";i:171;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/group/editor.min.css\";i:172;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/group/style-rtl.css\";i:173;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/group/style-rtl.min.css\";i:174;s:58:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/group/style.css\";i:175;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/group/style.min.css\";i:176;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/group/theme-rtl.css\";i:177;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/group/theme-rtl.min.css\";i:178;s:58:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/group/theme.css\";i:179;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/group/theme.min.css\";i:180;s:64:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/heading/style-rtl.css\";i:181;s:68:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/heading/style-rtl.min.css\";i:182;s:60:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/heading/style.css\";i:183;s:64:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/heading/style.min.css\";i:184;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/html/editor-rtl.css\";i:185;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/html/editor-rtl.min.css\";i:186;s:58:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/html/editor.css\";i:187;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/html/editor.min.css\";i:188;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/image/editor-rtl.css\";i:189;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/image/editor-rtl.min.css\";i:190;s:59:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/image/editor.css\";i:191;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/image/editor.min.css\";i:192;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/image/style-rtl.css\";i:193;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/image/style-rtl.min.css\";i:194;s:58:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/image/style.css\";i:195;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/image/style.min.css\";i:196;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/image/theme-rtl.css\";i:197;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/image/theme-rtl.min.css\";i:198;s:58:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/image/theme.css\";i:199;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/image/theme.min.css\";i:200;s:72:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/latest-comments/style-rtl.css\";i:201;s:76:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/latest-comments/style-rtl.min.css\";i:202;s:68:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/latest-comments/style.css\";i:203;s:72:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/latest-comments/style.min.css\";i:204;s:70:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/latest-posts/editor-rtl.css\";i:205;s:74:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/latest-posts/editor-rtl.min.css\";i:206;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/latest-posts/editor.css\";i:207;s:70:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/latest-posts/editor.min.css\";i:208;s:69:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/latest-posts/style-rtl.css\";i:209;s:73:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/latest-posts/style-rtl.min.css\";i:210;s:65:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/latest-posts/style.css\";i:211;s:69:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/latest-posts/style.min.css\";i:212;s:61:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/list/style-rtl.css\";i:213;s:65:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/list/style-rtl.min.css\";i:214;s:57:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/list/style.css\";i:215;s:61:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/list/style.min.css\";i:216;s:68:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/media-text/editor-rtl.css\";i:217;s:72:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/media-text/editor-rtl.min.css\";i:218;s:64:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/media-text/editor.css\";i:219;s:68:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/media-text/editor.min.css\";i:220;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/media-text/style-rtl.css\";i:221;s:71:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/media-text/style-rtl.min.css\";i:222;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/media-text/style.css\";i:223;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/media-text/style.min.css\";i:224;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/more/editor-rtl.css\";i:225;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/more/editor-rtl.min.css\";i:226;s:58:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/more/editor.css\";i:227;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/more/editor.min.css\";i:228;s:73:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/navigation-link/editor-rtl.css\";i:229;s:77:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/navigation-link/editor-rtl.min.css\";i:230;s:69:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/navigation-link/editor.css\";i:231;s:73:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/navigation-link/editor.min.css\";i:232;s:72:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/navigation-link/style-rtl.css\";i:233;s:76:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/navigation-link/style-rtl.min.css\";i:234;s:68:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/navigation-link/style.css\";i:235;s:72:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/navigation-link/style.min.css\";i:236;s:76:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/navigation-submenu/editor-rtl.css\";i:237;s:80:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/navigation-submenu/editor-rtl.min.css\";i:238;s:72:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/navigation-submenu/editor.css\";i:239;s:76:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/navigation-submenu/editor.min.css\";i:240;s:68:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/navigation/editor-rtl.css\";i:241;s:72:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/navigation/editor-rtl.min.css\";i:242;s:64:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/navigation/editor.css\";i:243;s:68:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/navigation/editor.min.css\";i:244;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/navigation/style-rtl.css\";i:245;s:71:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/navigation/style-rtl.min.css\";i:246;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/navigation/style.css\";i:247;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/navigation/style.min.css\";i:248;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/nextpage/editor-rtl.css\";i:249;s:70:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/nextpage/editor-rtl.min.css\";i:250;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/nextpage/editor.css\";i:251;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/nextpage/editor.min.css\";i:252;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/page-list/editor-rtl.css\";i:253;s:71:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/page-list/editor-rtl.min.css\";i:254;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/page-list/editor.css\";i:255;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/page-list/editor.min.css\";i:256;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/page-list/style-rtl.css\";i:257;s:70:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/page-list/style-rtl.min.css\";i:258;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/page-list/style.css\";i:259;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/page-list/style.min.css\";i:260;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/paragraph/editor-rtl.css\";i:261;s:71:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/paragraph/editor-rtl.min.css\";i:262;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/paragraph/editor.css\";i:263;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/paragraph/editor.min.css\";i:264;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/paragraph/style-rtl.css\";i:265;s:70:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/paragraph/style-rtl.min.css\";i:266;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/paragraph/style.css\";i:267;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/paragraph/style.min.css\";i:268;s:68:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-author/style-rtl.css\";i:269;s:72:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-author/style-rtl.min.css\";i:270;s:64:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-author/style.css\";i:271;s:68:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-author/style.min.css\";i:272;s:76:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-comments-form/editor-rtl.css\";i:273;s:80:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-comments-form/editor-rtl.min.css\";i:274;s:72:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-comments-form/editor.css\";i:275;s:76:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-comments-form/editor.min.css\";i:276;s:75:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-comments-form/style-rtl.css\";i:277;s:79:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-comments-form/style-rtl.min.css\";i:278;s:71:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-comments-form/style.css\";i:279;s:75:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-comments-form/style.min.css\";i:280;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-date/style-rtl.css\";i:281;s:70:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-date/style-rtl.min.css\";i:282;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-date/style.css\";i:283;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-date/style.min.css\";i:284;s:70:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-excerpt/editor-rtl.css\";i:285;s:74:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-excerpt/editor-rtl.min.css\";i:286;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-excerpt/editor.css\";i:287;s:70:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-excerpt/editor.min.css\";i:288;s:69:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-excerpt/style-rtl.css\";i:289;s:73:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-excerpt/style-rtl.min.css\";i:290;s:65:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-excerpt/style.css\";i:291;s:69:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-excerpt/style.min.css\";i:292;s:77:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-featured-image/editor-rtl.css\";i:293;s:81:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-featured-image/editor-rtl.min.css\";i:294;s:73:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-featured-image/editor.css\";i:295;s:77:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-featured-image/editor.min.css\";i:296;s:76:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-featured-image/style-rtl.css\";i:297;s:80:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-featured-image/style-rtl.min.css\";i:298;s:72:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-featured-image/style.css\";i:299;s:76:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-featured-image/style.min.css\";i:300;s:77:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-navigation-link/style-rtl.css\";i:301;s:81:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-navigation-link/style-rtl.min.css\";i:302;s:73:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-navigation-link/style.css\";i:303;s:77:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-navigation-link/style.min.css\";i:304;s:71:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-template/editor-rtl.css\";i:305;s:75:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-template/editor-rtl.min.css\";i:306;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-template/editor.css\";i:307;s:71:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-template/editor.min.css\";i:308;s:70:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-template/style-rtl.css\";i:309;s:74:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-template/style-rtl.min.css\";i:310;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-template/style.css\";i:311;s:70:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-template/style.min.css\";i:312;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-terms/style-rtl.css\";i:313;s:71:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-terms/style-rtl.min.css\";i:314;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-terms/style.css\";i:315;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-terms/style.min.css\";i:316;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-title/style-rtl.css\";i:317;s:71:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-title/style-rtl.min.css\";i:318;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-title/style.css\";i:319;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/post-title/style.min.css\";i:320;s:69:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/preformatted/style-rtl.css\";i:321;s:73:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/preformatted/style-rtl.min.css\";i:322;s:65:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/preformatted/style.css\";i:323;s:69:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/preformatted/style.min.css\";i:324;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/pullquote/editor-rtl.css\";i:325;s:71:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/pullquote/editor-rtl.min.css\";i:326;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/pullquote/editor.css\";i:327;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/pullquote/editor.min.css\";i:328;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/pullquote/style-rtl.css\";i:329;s:70:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/pullquote/style-rtl.min.css\";i:330;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/pullquote/style.css\";i:331;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/pullquote/style.min.css\";i:332;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/pullquote/theme-rtl.css\";i:333;s:70:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/pullquote/theme-rtl.min.css\";i:334;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/pullquote/theme.css\";i:335;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/pullquote/theme.min.css\";i:336;s:82:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/query-pagination-numbers/editor-rtl.css\";i:337;s:86:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/query-pagination-numbers/editor-rtl.min.css\";i:338;s:78:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/query-pagination-numbers/editor.css\";i:339;s:82:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/query-pagination-numbers/editor.min.css\";i:340;s:74:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/query-pagination/editor-rtl.css\";i:341;s:78:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/query-pagination/editor-rtl.min.css\";i:342;s:70:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/query-pagination/editor.css\";i:343;s:74:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/query-pagination/editor.min.css\";i:344;s:73:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/query-pagination/style-rtl.css\";i:345;s:77:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/query-pagination/style-rtl.min.css\";i:346;s:69:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/query-pagination/style.css\";i:347;s:73:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/query-pagination/style.min.css\";i:348;s:68:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/query-title/style-rtl.css\";i:349;s:72:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/query-title/style-rtl.min.css\";i:350;s:64:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/query-title/style.css\";i:351;s:68:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/query-title/style.min.css\";i:352;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/query/editor-rtl.css\";i:353;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/query/editor-rtl.min.css\";i:354;s:59:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/query/editor.css\";i:355;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/query/editor.min.css\";i:356;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/quote/style-rtl.css\";i:357;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/quote/style-rtl.min.css\";i:358;s:58:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/quote/style.css\";i:359;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/quote/style.min.css\";i:360;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/quote/theme-rtl.css\";i:361;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/quote/theme-rtl.min.css\";i:362;s:58:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/quote/theme.css\";i:363;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/quote/theme.min.css\";i:364;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/read-more/style-rtl.css\";i:365;s:70:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/read-more/style-rtl.min.css\";i:366;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/read-more/style.css\";i:367;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/read-more/style.min.css\";i:368;s:61:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/rss/editor-rtl.css\";i:369;s:65:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/rss/editor-rtl.min.css\";i:370;s:57:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/rss/editor.css\";i:371;s:61:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/rss/editor.min.css\";i:372;s:60:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/rss/style-rtl.css\";i:373;s:64:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/rss/style-rtl.min.css\";i:374;s:56:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/rss/style.css\";i:375;s:60:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/rss/style.min.css\";i:376;s:64:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/search/editor-rtl.css\";i:377;s:68:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/search/editor-rtl.min.css\";i:378;s:60:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/search/editor.css\";i:379;s:64:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/search/editor.min.css\";i:380;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/search/style-rtl.css\";i:381;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/search/style-rtl.min.css\";i:382;s:59:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/search/style.css\";i:383;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/search/style.min.css\";i:384;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/search/theme-rtl.css\";i:385;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/search/theme-rtl.min.css\";i:386;s:59:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/search/theme.css\";i:387;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/search/theme.min.css\";i:388;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/separator/editor-rtl.css\";i:389;s:71:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/separator/editor-rtl.min.css\";i:390;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/separator/editor.css\";i:391;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/separator/editor.min.css\";i:392;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/separator/style-rtl.css\";i:393;s:70:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/separator/style-rtl.min.css\";i:394;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/separator/style.css\";i:395;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/separator/style.min.css\";i:396;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/separator/theme-rtl.css\";i:397;s:70:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/separator/theme-rtl.min.css\";i:398;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/separator/theme.css\";i:399;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/separator/theme.min.css\";i:400;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/shortcode/editor-rtl.css\";i:401;s:71:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/shortcode/editor-rtl.min.css\";i:402;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/shortcode/editor.css\";i:403;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/shortcode/editor.min.css\";i:404;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/site-logo/editor-rtl.css\";i:405;s:71:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/site-logo/editor-rtl.min.css\";i:406;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/site-logo/editor.css\";i:407;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/site-logo/editor.min.css\";i:408;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/site-logo/style-rtl.css\";i:409;s:70:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/site-logo/style-rtl.min.css\";i:410;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/site-logo/style.css\";i:411;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/site-logo/style.min.css\";i:412;s:70:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/site-tagline/editor-rtl.css\";i:413;s:74:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/site-tagline/editor-rtl.min.css\";i:414;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/site-tagline/editor.css\";i:415;s:70:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/site-tagline/editor.min.css\";i:416;s:68:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/site-title/editor-rtl.css\";i:417;s:72:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/site-title/editor-rtl.min.css\";i:418;s:64:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/site-title/editor.css\";i:419;s:68:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/site-title/editor.min.css\";i:420;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/site-title/style-rtl.css\";i:421;s:71:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/site-title/style-rtl.min.css\";i:422;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/site-title/style.css\";i:423;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/site-title/style.min.css\";i:424;s:69:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/social-link/editor-rtl.css\";i:425;s:73:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/social-link/editor-rtl.min.css\";i:426;s:65:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/social-link/editor.css\";i:427;s:69:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/social-link/editor.min.css\";i:428;s:70:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/social-links/editor-rtl.css\";i:429;s:74:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/social-links/editor-rtl.min.css\";i:430;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/social-links/editor.css\";i:431;s:70:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/social-links/editor.min.css\";i:432;s:69:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/social-links/style-rtl.css\";i:433;s:73:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/social-links/style-rtl.min.css\";i:434;s:65:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/social-links/style.css\";i:435;s:69:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/social-links/style.min.css\";i:436;s:64:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/spacer/editor-rtl.css\";i:437;s:68:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/spacer/editor-rtl.min.css\";i:438;s:60:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/spacer/editor.css\";i:439;s:64:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/spacer/editor.min.css\";i:440;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/spacer/style-rtl.css\";i:441;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/spacer/style-rtl.min.css\";i:442;s:59:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/spacer/style.css\";i:443;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/spacer/style.min.css\";i:444;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/table/editor-rtl.css\";i:445;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/table/editor-rtl.min.css\";i:446;s:59:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/table/editor.css\";i:447;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/table/editor.min.css\";i:448;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/table/style-rtl.css\";i:449;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/table/style-rtl.min.css\";i:450;s:58:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/table/style.css\";i:451;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/table/style.min.css\";i:452;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/table/theme-rtl.css\";i:453;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/table/theme-rtl.min.css\";i:454;s:58:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/table/theme.css\";i:455;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/table/theme.min.css\";i:456;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/tag-cloud/style-rtl.css\";i:457;s:70:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/tag-cloud/style-rtl.min.css\";i:458;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/tag-cloud/style.css\";i:459;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/tag-cloud/style.min.css\";i:460;s:71:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/template-part/editor-rtl.css\";i:461;s:75:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/template-part/editor-rtl.min.css\";i:462;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/template-part/editor.css\";i:463;s:71:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/template-part/editor.min.css\";i:464;s:70:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/template-part/theme-rtl.css\";i:465;s:74:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/template-part/theme-rtl.min.css\";i:466;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/template-part/theme.css\";i:467;s:70:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/template-part/theme.min.css\";i:468;s:73:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/term-description/style-rtl.css\";i:469;s:77:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/term-description/style-rtl.min.css\";i:470;s:69:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/term-description/style.css\";i:471;s:73:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/term-description/style.min.css\";i:472;s:70:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/text-columns/editor-rtl.css\";i:473;s:74:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/text-columns/editor-rtl.min.css\";i:474;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/text-columns/editor.css\";i:475;s:70:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/text-columns/editor.min.css\";i:476;s:69:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/text-columns/style-rtl.css\";i:477;s:73:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/text-columns/style-rtl.min.css\";i:478;s:65:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/text-columns/style.css\";i:479;s:69:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/text-columns/style.min.css\";i:480;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/verse/style-rtl.css\";i:481;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/verse/style-rtl.min.css\";i:482;s:58:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/verse/style.css\";i:483;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/verse/style.min.css\";i:484;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/video/editor-rtl.css\";i:485;s:67:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/video/editor-rtl.min.css\";i:486;s:59:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/video/editor.css\";i:487;s:63:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/video/editor.min.css\";i:488;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/video/style-rtl.css\";i:489;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/video/style-rtl.min.css\";i:490;s:58:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/video/style.css\";i:491;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/video/style.min.css\";i:492;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/video/theme-rtl.css\";i:493;s:66:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/video/theme-rtl.min.css\";i:494;s:58:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/video/theme.css\";i:495;s:62:\"C:/xampp/htdocs/teste-2/wp-includes/blocks/video/theme.min.css\";}', 'yes'),
(123, 'recovery_keys', 'a:0:{}', 'yes'),
(124, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1694705821;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(126, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:25:\"Verificação SSL falhou.\";}}', 'yes'),
(143, 'can_compress_scripts', '1', 'yes'),
(156, 'current_theme', 'wp devs', 'yes'),
(157, 'theme_mods_wp-devs', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:19:\"wp_devs_footer_menu\";i:4;s:17:\"wp_devs_main_menu\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1695225259;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(158, 'theme_switched', '', 'yes'),
(161, 'finished_updating_comment_type', '1', 'yes'),
(168, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":6,\"critical\":0}', 'yes'),
(188, 'recently_activated', 'a:0:{}', 'yes'),
(190, 'theme_mods_twentytwentytwo', 'a:5:{i:0;b:0;s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1695225300;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(272, 'recovery_mode_email_last_sent', '1695655521', 'yes'),
(288, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:3;}}', 'yes'),
(338, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-6.3.2.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-6.3.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.3.2\";s:7:\"version\";s:5:\"6.3.2\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1698691902;s:15:\"version_checked\";s:5:\"6.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(339, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1698691904;s:7:\"checked\";a:4:{s:15:\"twentytwentyone\";s:3:\"1.9\";s:17:\"twentytwentythree\";s:3:\"1.2\";s:15:\"twentytwentytwo\";s:3:\"1.5\";s:7:\"wp-devs\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.9.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.2.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.5.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(341, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:26:\"janainabs21@outlook.com.br\";s:7:\"version\";s:5:\"6.3.2\";s:9:\"timestamp\";i:1697743149;}', 'no'),
(359, '_site_transient_timeout_theme_roots', '1698693703', 'no'),
(360, '_site_transient_theme_roots', 'a:4:{s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";s:7:\"wp-devs\";s:7:\"/themes\";}', 'no'),
(361, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1698691904;s:8:\"response\";a:2:{s:31:\"query-monitor/query-monitor.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/query-monitor\";s:4:\"slug\";s:13:\"query-monitor\";s:6:\"plugin\";s:31:\"query-monitor/query-monitor.php\";s:11:\"new_version\";s:6:\"3.14.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/query-monitor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/query-monitor.3.14.1.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:58:\"https://ps.w.org/query-monitor/assets/icon.svg?rev=2870124\";s:3:\"svg\";s:58:\"https://ps.w.org/query-monitor/assets/icon.svg?rev=2870124\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/query-monitor/assets/banner-1544x500.png?rev=2870124\";s:2:\"1x\";s:68:\"https://ps.w.org/query-monitor/assets/banner-772x250.png?rev=2457098\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.5\";s:6:\"tested\";s:5:\"6.3.2\";s:12:\"requires_php\";s:3:\"7.4\";}s:47:\"show-current-template/show-current-template.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:35:\"w.org/plugins/show-current-template\";s:4:\"slug\";s:21:\"show-current-template\";s:6:\"plugin\";s:47:\"show-current-template/show-current-template.php\";s:11:\"new_version\";s:5:\"0.5.2\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/show-current-template/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/show-current-template.0.5.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:66:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=2955632\";s:3:\"svg\";s:66:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=2955632\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";s:6:\"tested\";s:5:\"6.3.2\";s:12:\"requires_php\";s:3:\"7.4\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:23:\"debug-bar/debug-bar.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:23:\"w.org/plugins/debug-bar\";s:4:\"slug\";s:9:\"debug-bar\";s:6:\"plugin\";s:23:\"debug-bar/debug-bar.php\";s:11:\"new_version\";s:5:\"1.1.4\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/debug-bar/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/debug-bar.1.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:54:\"https://ps.w.org/debug-bar/assets/icon.svg?rev=1908362\";s:3:\"svg\";s:54:\"https://ps.w.org/debug-bar/assets/icon.svg?rev=1908362\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/debug-bar/assets/banner-1544x500.png?rev=1365496\";s:2:\"1x\";s:64:\"https://ps.w.org/debug-bar/assets/banner-772x250.png?rev=1365496\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.4\";}s:24:\"vlibras-widget/index.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/vlibras-widget\";s:4:\"slug\";s:14:\"vlibras-widget\";s:6:\"plugin\";s:24:\"vlibras-widget/index.php\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/vlibras-widget/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/vlibras-widget.1.0.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/vlibras-widget/assets/icon-128x128.png?rev=2277900\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/vlibras-widget/assets/banner-772x250.png?rev=2277900\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.6\";}}s:7:\"checked\";a:4:{s:23:\"debug-bar/debug-bar.php\";s:5:\"1.1.4\";s:31:\"query-monitor/query-monitor.php\";s:6:\"3.13.1\";s:47:\"show-current-template/show-current-template.php\";s:5:\"0.5.1\";s:24:\"vlibras-widget/index.php\";s:3:\"1.0\";}}', 'no'),
(362, '_site_transient_timeout_php_check_3fde9d06ba9e4fd20d08658e6f30b792', '1699296705', 'no'),
(363, '_site_transient_php_check_3fde9d06ba9e4fd20d08658e6f30b792', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 8, '_edit_lock', '1695310739:1'),
(4, 10, '_edit_lock', '1695310756:1'),
(5, 12, '_edit_lock', '1695310791:1'),
(6, 14, '_edit_lock', '1695310816:1'),
(9, 18, '_menu_item_type', 'post_type'),
(10, 18, '_menu_item_menu_item_parent', '0'),
(11, 18, '_menu_item_object_id', '14'),
(12, 18, '_menu_item_object', 'page'),
(13, 18, '_menu_item_target', ''),
(14, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(15, 18, '_menu_item_xfn', ''),
(16, 18, '_menu_item_url', ''),
(18, 19, '_menu_item_type', 'post_type'),
(19, 19, '_menu_item_menu_item_parent', '0'),
(20, 19, '_menu_item_object_id', '12'),
(21, 19, '_menu_item_object', 'page'),
(22, 19, '_menu_item_target', ''),
(23, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(24, 19, '_menu_item_xfn', ''),
(25, 19, '_menu_item_url', ''),
(27, 20, '_menu_item_type', 'post_type'),
(28, 20, '_menu_item_menu_item_parent', '0'),
(29, 20, '_menu_item_object_id', '10'),
(30, 20, '_menu_item_object', 'page'),
(31, 20, '_menu_item_target', ''),
(32, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(33, 20, '_menu_item_xfn', ''),
(34, 20, '_menu_item_url', ''),
(36, 21, '_menu_item_type', 'post_type'),
(37, 21, '_menu_item_menu_item_parent', '0'),
(38, 21, '_menu_item_object_id', '8'),
(39, 21, '_menu_item_object', 'page'),
(40, 21, '_menu_item_target', ''),
(41, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(42, 21, '_menu_item_xfn', ''),
(43, 21, '_menu_item_url', ''),
(45, 22, '_menu_item_type', 'post_type'),
(46, 22, '_menu_item_menu_item_parent', '0'),
(47, 22, '_menu_item_object_id', '14'),
(48, 22, '_menu_item_object', 'page'),
(49, 22, '_menu_item_target', ''),
(50, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(51, 22, '_menu_item_xfn', ''),
(52, 22, '_menu_item_url', ''),
(54, 23, '_menu_item_type', 'post_type'),
(55, 23, '_menu_item_menu_item_parent', '0'),
(56, 23, '_menu_item_object_id', '12'),
(57, 23, '_menu_item_object', 'page'),
(58, 23, '_menu_item_target', ''),
(59, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(60, 23, '_menu_item_xfn', ''),
(61, 23, '_menu_item_url', ''),
(63, 24, '_menu_item_type', 'post_type'),
(64, 24, '_menu_item_menu_item_parent', '0'),
(65, 24, '_menu_item_object_id', '10'),
(66, 24, '_menu_item_object', 'page'),
(67, 24, '_menu_item_target', ''),
(68, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(69, 24, '_menu_item_xfn', ''),
(70, 24, '_menu_item_url', ''),
(72, 25, '_menu_item_type', 'post_type'),
(73, 25, '_menu_item_menu_item_parent', '0'),
(74, 25, '_menu_item_object_id', '8'),
(75, 25, '_menu_item_object', 'page'),
(76, 25, '_menu_item_target', ''),
(77, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(78, 25, '_menu_item_xfn', ''),
(79, 25, '_menu_item_url', ''),
(81, 21, '_wp_old_date', '2023-09-27'),
(82, 20, '_wp_old_date', '2023-09-27'),
(83, 19, '_wp_old_date', '2023-09-27'),
(84, 18, '_wp_old_date', '2023-09-27');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-09-14 12:36:04', '2023-09-14 15:36:04', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2023-09-14 12:36:04', '2023-09-14 15:36:04', '', 0, 'http://localhost/teste-2/?p=1', 0, 'post', '', 1),
(2, 1, '2023-09-14 12:36:04', '2023-09-14 15:36:04', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/teste-2/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'publish', 'closed', 'open', '', 'pagina-exemplo', '', '', '2023-09-14 12:36:04', '2023-09-14 15:36:04', '', 0, 'http://localhost/teste-2/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-09-14 12:36:04', '2023-09-14 15:36:04', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>O endereço do nosso site é: http://localhost/teste-2.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia incorporada de outros sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Com quem compartilhamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você solicitar uma redefinição de senha, seu endereço de IP será incluído no e-mail de redefinição de senha.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde seus dados são enviados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph -->', 'Política de privacidade', '', 'draft', 'closed', 'open', '', 'politica-de-privacidade', '', '', '2023-09-14 12:36:04', '2023-09-14 15:36:04', '', 0, 'http://localhost/teste-2/?page_id=3', 0, 'page', '', 0),
(4, 0, '2023-09-14 12:36:07', '2023-09-14 15:36:07', '<!-- wp:page-list /-->', 'Navegação', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2023-09-14 12:36:07', '2023-09-14 15:36:07', '', 0, 'http://localhost/teste-2/2023/09/14/navigation/', 0, 'wp_navigation', '', 0),
(6, 1, '2023-09-20 12:54:23', '2023-09-20 15:54:23', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentytwo', '', '', '2023-09-20 12:54:23', '2023-09-20 15:54:23', '', 0, 'http://localhost/teste-2/2023/09/20/wp-global-styles-twentytwentytwo/', 0, 'wp_global_styles', '', 0),
(8, 1, '2023-09-21 12:41:22', '2023-09-21 15:41:22', '<!-- wp:paragraph -->\n<p>Home page</p>\n<!-- /wp:paragraph -->', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2023-09-21 12:41:22', '2023-09-21 15:41:22', '', 0, 'http://localhost/teste-2/?page_id=8', 0, 'page', '', 0),
(9, 1, '2023-09-21 12:41:22', '2023-09-21 15:41:22', '<!-- wp:paragraph -->\n<p>Home page</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-09-21 12:41:22', '2023-09-21 15:41:22', '', 8, 'http://localhost/teste-2/?p=9', 0, 'revision', '', 0),
(10, 1, '2023-09-21 12:41:40', '2023-09-21 15:41:40', '<!-- wp:paragraph -->\n<p>Blog page</p>\n<!-- /wp:paragraph -->', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2023-09-21 12:41:40', '2023-09-21 15:41:40', '', 0, 'http://localhost/teste-2/?page_id=10', 0, 'page', '', 0),
(11, 1, '2023-09-21 12:41:40', '2023-09-21 15:41:40', '<!-- wp:paragraph -->\n<p>Blog page</p>\n<!-- /wp:paragraph -->', 'Blog', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-09-21 12:41:40', '2023-09-21 15:41:40', '', 10, 'http://localhost/teste-2/?p=11', 0, 'revision', '', 0),
(12, 1, '2023-09-21 12:42:15', '2023-09-21 15:42:15', '<!-- wp:paragraph -->\n<p>About page</p>\n<!-- /wp:paragraph -->', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2023-09-21 12:42:15', '2023-09-21 15:42:15', '', 0, 'http://localhost/teste-2/?page_id=12', 0, 'page', '', 0),
(13, 1, '2023-09-21 12:42:15', '2023-09-21 15:42:15', '<!-- wp:paragraph -->\n<p>About page</p>\n<!-- /wp:paragraph -->', 'About', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-09-21 12:42:15', '2023-09-21 15:42:15', '', 12, 'http://localhost/teste-2/?p=13', 0, 'revision', '', 0),
(14, 1, '2023-09-21 12:42:40', '2023-09-21 15:42:40', '<!-- wp:paragraph -->\n<p>Contact page</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2023-09-21 12:42:40', '2023-09-21 15:42:40', '', 0, 'http://localhost/teste-2/?page_id=14', 0, 'page', '', 0),
(15, 1, '2023-09-21 12:42:40', '2023-09-21 15:42:40', '<!-- wp:paragraph -->\n<p>Contact page</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2023-09-21 12:42:40', '2023-09-21 15:42:40', '', 14, 'http://localhost/teste-2/?p=15', 0, 'revision', '', 0),
(18, 1, '2023-10-10 12:34:37', '2023-09-27 15:44:43', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2023-10-10 12:34:37', '2023-10-10 15:34:37', '', 0, 'http://localhost/teste-2/?p=18', 4, 'nav_menu_item', '', 0),
(19, 1, '2023-10-10 12:34:37', '2023-09-27 15:44:43', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2023-10-10 12:34:37', '2023-10-10 15:34:37', '', 0, 'http://localhost/teste-2/?p=19', 3, 'nav_menu_item', '', 0),
(20, 1, '2023-10-10 12:34:37', '2023-09-27 15:44:43', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2023-10-10 12:34:37', '2023-10-10 15:34:37', '', 0, 'http://localhost/teste-2/?p=20', 2, 'nav_menu_item', '', 0),
(21, 1, '2023-10-10 12:34:37', '2023-09-27 15:44:43', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2023-10-10 12:34:37', '2023-10-10 15:34:37', '', 0, 'http://localhost/teste-2/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2023-09-27 12:45:27', '2023-09-27 15:45:27', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2023-09-27 12:45:27', '2023-09-27 15:45:27', '', 0, 'http://localhost/teste-2/?p=22', 4, 'nav_menu_item', '', 0),
(23, 1, '2023-09-27 12:45:27', '2023-09-27 15:45:27', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2023-09-27 12:45:27', '2023-09-27 15:45:27', '', 0, 'http://localhost/teste-2/?p=23', 3, 'nav_menu_item', '', 0),
(24, 1, '2023-09-27 12:45:27', '2023-09-27 15:45:27', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2023-09-27 12:45:27', '2023-09-27 15:45:27', '', 0, 'http://localhost/teste-2/?p=24', 2, 'nav_menu_item', '', 0),
(25, 1, '2023-09-27 12:45:27', '2023-09-27 15:45:27', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2023-09-27 12:45:27', '2023-09-27 15:45:27', '', 0, 'http://localhost/teste-2/?p=25', 1, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'twentytwentytwo', 'twentytwentytwo', 0),
(3, 'Main menu', 'main-menu', 0),
(4, 'Footer Menu', 'footer-menu', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 2, 0),
(18, 3, 0),
(19, 3, 0),
(20, 3, 0),
(21, 3, 0),
(22, 4, 0),
(23, 4, 0),
(24, 4, 0),
(25, 4, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'janaina'),
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
(16, 1, 'session_tokens', 'a:1:{s:64:\"d22a3492cfe6f74e62ae649a8c5c52d0576d83f2415c811122b96668d1ad63b2\";a:4:{s:10:\"expiration\";i:1698521163;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36\";s:5:\"login\";i:1698348363;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '7'),
(18, 1, 'wp_persisted_preferences', 'a:3:{s:14:\"core/edit-site\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2023-09-21T15:40:49.552Z\";s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'janaina', '$P$BsZff8IkycoQv/Admp/xzyA2Kn3RNU.', 'janaina', 'janainabs21@outlook.com.br', 'http://localhost/teste-2', '2023-09-14 15:36:04', '', 0, 'janaina');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Índices para tabela `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices para tabela `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Índices para tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Índices para tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Índices para tabela `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Índices para tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Índices para tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices para tabela `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=364;

--
-- AUTO_INCREMENT de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
