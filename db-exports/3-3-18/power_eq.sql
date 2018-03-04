-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Mar 04, 2018 at 04:50 AM
-- Server version: 5.5.42
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `power_eq`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-02-06 06:18:07', '2018-02-06 06:18:07', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=481 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888', 'yes'),
(2, 'home', 'http://localhost:8888', 'yes'),
(3, 'blogname', 'Power Equipment Co', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'chris@chrisstack.co', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:19:"sitemap_index\\.xml$";s:19:"index.php?sitemap=1";s:31:"([^/]+?)-sitemap([0-9]+)?\\.xml$";s:51:"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]";s:24:"([a-z]+)?-?sitemap\\.xsl$";s:25:"index.php?xsl=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=6&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:35:"autodescription/autodescription.php";i:2;s:70:"foogallery-owl-carousel-template/foogallery-owl-carousel-extension.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'underscores', 'yes'),
(41, 'stylesheet', 'underscores-child', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:51:"insert-php-code-snippet/insert-php-code-snippet.php";s:25:"xyz_ips_network_uninstall";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '6', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'cron', 'a:5:{i:1520144288;a:3:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1520144300;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1520150143;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1520150898;a:1:{s:19:"wpseo-reindex-links";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:3:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1517899768;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}s:18:"nav_menu_locations";a:0:{}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.4.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.4.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.4-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.4-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.9.4-partial-3.zip";s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.4";s:7:"version";s:5:"4.9.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:5:"4.9.3";}i:1;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.4.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.4.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.4-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.4-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.9.4-partial-3.zip";s:8:"rollback";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.4-rollback-3.zip";}s:7:"current";s:5:"4.9.4";s:7:"version";s:5:"4.9.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:5:"4.9.3";s:9:"new_files";s:0:"";}}s:12:"last_checked";i:1520110834;s:15:"version_checked";s:5:"4.9.3";s:12:"translations";a:0:{}}', 'no'),
(128, 'can_compress_scripts', '1', 'no'),
(137, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1520110833;s:7:"checked";a:2:{s:17:"underscores-child";s:5:"1.0.0";s:11:"underscores";s:5:"1.0.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(138, 'current_theme', 'Underscores Child', 'yes'),
(139, 'theme_mods_underscores-child', 'a:5:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1517899652;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}s:12:"header_image";s:13:"remove-header";}', 'yes'),
(140, 'theme_switched', '', 'yes'),
(142, 'theme_mods_underscores', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1517899902;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(148, 'category_children', 'a:0:{}', 'yes'),
(160, 'recently_activated', 'a:3:{s:51:"insert-php-code-snippet/insert-php-code-snippet.php";i:1518103690;s:24:"wordpress-seo/wp-seo.php";i:1518090319;s:35:"cyclone-slider-2/cyclone-slider.php";i:1518090292;}', 'yes'),
(167, 'acf_version', '5.6.8', 'yes'),
(170, 'wpseo', 'a:25:{s:14:"blocking_files";a:0:{}s:15:"ms_defaults_set";b:0;s:7:"version";s:3:"6.2";s:12:"company_logo";s:0:"";s:12:"company_name";s:0:"";s:17:"company_or_person";s:0:"";s:20:"disableadvanced_meta";b:1;s:19:"onpage_indexability";b:1;s:12:"googleverify";s:0:"";s:8:"msverify";s:0:"";s:11:"person_name";s:0:"";s:12:"website_name";s:0:"";s:22:"alternate_website_name";s:0:"";s:12:"yandexverify";s:0:"";s:9:"site_type";s:0:"";s:20:"has_multiple_authors";s:0:"";s:16:"environment_type";s:0:"";s:23:"content_analysis_active";b:1;s:23:"keyword_analysis_active";b:1;s:20:"enable_setting_pages";b:0;s:21:"enable_admin_bar_menu";b:1;s:26:"enable_cornerstone_content";b:1;s:24:"enable_text_link_counter";b:1;s:22:"show_onboarding_notice";b:1;s:18:"first_activated_on";i:1517904498;}', 'yes'),
(171, 'wpseo_permalinks', 'a:9:{s:15:"cleanpermalinks";b:0;s:24:"cleanpermalink-extravars";s:0:"";s:29:"cleanpermalink-googlecampaign";b:0;s:31:"cleanpermalink-googlesitesearch";b:0;s:15:"cleanreplytocom";b:0;s:10:"cleanslugs";b:1;s:18:"redirectattachment";b:0;s:17:"stripcategorybase";b:0;s:13:"trailingslash";b:0;}', 'yes'),
(172, 'wpseo_titles', 'a:53:{s:10:"title_test";i:0;s:17:"forcerewritetitle";b:0;s:9:"separator";s:7:"sc-dash";s:15:"usemetakeywords";b:0;s:16:"title-home-wpseo";s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";s:18:"title-author-wpseo";s:41:"%%name%%, Author at %%sitename%% %%page%%";s:19:"title-archive-wpseo";s:38:"%%date%% %%page%% %%sep%% %%sitename%%";s:18:"title-search-wpseo";s:63:"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%";s:15:"title-404-wpseo";s:35:"Page not found %%sep%% %%sitename%%";s:19:"metadesc-home-wpseo";s:0:"";s:21:"metadesc-author-wpseo";s:0:"";s:22:"metadesc-archive-wpseo";s:0:"";s:18:"metakey-home-wpseo";s:0:"";s:20:"metakey-author-wpseo";s:0:"";s:22:"noindex-subpages-wpseo";b:0;s:20:"noindex-author-wpseo";b:0;s:21:"noindex-archive-wpseo";b:1;s:14:"disable-author";b:0;s:12:"disable-date";b:0;s:19:"disable-post_format";b:0;s:10:"title-post";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-post";s:0:"";s:12:"metakey-post";s:0:"";s:12:"noindex-post";b:0;s:13:"showdate-post";b:0;s:16:"hideeditbox-post";b:0;s:10:"title-page";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-page";s:0:"";s:12:"metakey-page";s:0:"";s:12:"noindex-page";b:0;s:13:"showdate-page";b:0;s:16:"hideeditbox-page";b:0;s:16:"title-attachment";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:19:"metadesc-attachment";s:0:"";s:18:"metakey-attachment";s:0:"";s:18:"noindex-attachment";b:0;s:19:"showdate-attachment";b:0;s:22:"hideeditbox-attachment";b:0;s:18:"title-tax-category";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-category";s:0:"";s:20:"metakey-tax-category";s:0:"";s:24:"hideeditbox-tax-category";b:0;s:20:"noindex-tax-category";b:0;s:18:"title-tax-post_tag";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-post_tag";s:0:"";s:20:"metakey-tax-post_tag";s:0:"";s:24:"hideeditbox-tax-post_tag";b:0;s:20:"noindex-tax-post_tag";b:0;s:21:"title-tax-post_format";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-post_format";s:0:"";s:23:"metakey-tax-post_format";s:0:"";s:27:"hideeditbox-tax-post_format";b:0;s:23:"noindex-tax-post_format";b:1;}', 'yes'),
(173, 'wpseo_social', 'a:20:{s:9:"fb_admins";a:0:{}s:12:"fbconnectkey";s:32:"be74d8186e5aca39283f31c0efcf7e4f";s:13:"facebook_site";s:0:"";s:13:"instagram_url";s:0:"";s:12:"linkedin_url";s:0:"";s:11:"myspace_url";s:0:"";s:16:"og_default_image";s:0:"";s:18:"og_frontpage_title";s:0:"";s:17:"og_frontpage_desc";s:0:"";s:18:"og_frontpage_image";s:0:"";s:9:"opengraph";b:1;s:13:"pinterest_url";s:0:"";s:15:"pinterestverify";s:0:"";s:14:"plus-publisher";s:0:"";s:7:"twitter";b:1;s:12:"twitter_site";s:0:"";s:17:"twitter_card_type";s:19:"summary_large_image";s:11:"youtube_url";s:0:"";s:15:"google_plus_url";s:0:"";s:10:"fbadminapp";s:0:"";}', 'yes'),
(174, 'wpseo_rss', 'a:2:{s:9:"rssbefore";s:0:"";s:8:"rssafter";s:53:"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.";}', 'yes'),
(175, 'wpseo_internallinks', 'a:10:{s:20:"breadcrumbs-404crumb";s:25:"Error 404: Page not found";s:23:"breadcrumbs-blog-remove";b:0;s:20:"breadcrumbs-boldlast";b:0;s:25:"breadcrumbs-archiveprefix";s:12:"Archives for";s:18:"breadcrumbs-enable";b:0;s:16:"breadcrumbs-home";s:4:"Home";s:18:"breadcrumbs-prefix";s:0:"";s:24:"breadcrumbs-searchprefix";s:16:"You searched for";s:15:"breadcrumbs-sep";s:7:"&raquo;";s:23:"post_types-post-maintax";i:0;}', 'yes'),
(176, 'wpseo_xml', 'a:16:{s:22:"disable_author_sitemap";b:1;s:22:"disable_author_noposts";b:1;s:16:"enablexmlsitemap";b:1;s:16:"entries-per-page";i:1000;s:14:"excluded-posts";s:0:"";s:38:"user_role-administrator-not_in_sitemap";b:0;s:31:"user_role-editor-not_in_sitemap";b:0;s:31:"user_role-author-not_in_sitemap";b:0;s:36:"user_role-contributor-not_in_sitemap";b:0;s:35:"user_role-subscriber-not_in_sitemap";b:0;s:30:"post_types-post-not_in_sitemap";b:0;s:30:"post_types-page-not_in_sitemap";b:0;s:36:"post_types-attachment-not_in_sitemap";b:1;s:34:"taxonomies-category-not_in_sitemap";b:0;s:34:"taxonomies-post_tag-not_in_sitemap";b:0;s:37:"taxonomies-post_format-not_in_sitemap";b:0;}', 'yes'),
(177, 'wpseo_flush_rewrite', '1', 'yes'),
(178, '_transient_timeout_wpseo_link_table_inaccessible', '1549440498', 'no'),
(179, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(180, '_transient_timeout_wpseo_meta_table_inaccessible', '1549440498', 'no'),
(181, '_transient_wpseo_meta_table_inaccessible', '0', 'no'),
(183, 'wpseo_sitemap_1_cache_validator', 'yDLs', 'no'),
(184, 'wpseo_sitemap_page_cache_validator', 'yDLt', 'no'),
(188, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(202, 'widget_cyclone-slider-widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(226, 'the_seo_framework_tested_upgrade_version', '3001', 'yes'),
(227, 'autodescription-site-settings', 'a:106:{s:18:"alter_search_query";i:1;s:19:"alter_archive_query";i:1;s:24:"alter_archive_query_type";s:8:"in_query";s:23:"alter_search_query_type";s:8:"in_query";s:22:"cache_meta_description";i:0;s:17:"cache_meta_schema";i:0;s:13:"cache_sitemap";i:1;s:12:"cache_object";i:1;s:22:"display_seo_bar_tables";i:1;s:23:"display_seo_bar_metabox";i:0;s:21:"display_pixel_counter";i:1;s:25:"display_character_counter";i:0;s:16:"canonical_scheme";s:9:"automatic";s:17:"timestamps_format";s:1:"1";s:15:"title_seperator";s:4:"pipe";s:14:"title_location";s:5:"right";s:19:"title_rem_additions";i:0;s:18:"title_rem_prefixes";i:0;s:21:"description_separator";s:4:"pipe";s:21:"description_additions";i:1;s:20:"description_blogname";i:1;s:6:"noydir";i:1;s:16:"category_noindex";i:0;s:11:"tag_noindex";i:0;s:14:"author_noindex";i:0;s:12:"date_noindex";i:1;s:14:"search_noindex";i:1;s:18:"attachment_noindex";i:1;s:12:"site_noindex";i:0;s:17:"category_nofollow";i:0;s:12:"tag_nofollow";i:0;s:15:"author_nofollow";i:0;s:13:"date_nofollow";i:0;s:15:"search_nofollow";i:0;s:19:"attachment_nofollow";i:0;s:13:"site_nofollow";i:0;s:18:"category_noarchive";i:0;s:13:"tag_noarchive";i:0;s:16:"author_noarchive";i:0;s:14:"date_noarchive";i:0;s:16:"search_noarchive";i:0;s:20:"attachment_noarchive";i:0;s:14:"site_noarchive";i:0;s:13:"paged_noindex";i:1;s:18:"home_paged_noindex";i:0;s:16:"homepage_noindex";i:0;s:17:"homepage_nofollow";i:0;s:18:"homepage_noarchive";i:0;s:14:"homepage_title";s:0:"";s:16:"homepage_tagline";i:1;s:20:"homepage_description";s:0:"";s:22:"homepage_title_tagline";s:0:"";s:19:"home_title_location";s:4:"left";s:25:"homepage_social_image_url";s:0:"";s:24:"homepage_social_image_id";i:0;s:13:"shortlink_tag";i:0;s:15:"prev_next_posts";i:0;s:18:"prev_next_archives";i:1;s:19:"prev_next_frontpage";i:1;s:18:"facebook_publisher";s:0:"";s:15:"facebook_author";s:0:"";s:14:"facebook_appid";s:0:"";s:17:"post_publish_time";i:1;s:16:"post_modify_time";i:1;s:12:"twitter_card";s:19:"summary_large_image";s:12:"twitter_site";s:0:"";s:15:"twitter_creator";s:0:"";s:7:"og_tags";i:1;s:13:"facebook_tags";i:1;s:12:"twitter_tags";i:1;s:19:"social_image_fb_url";s:0:"";s:18:"social_image_fb_id";i:0;s:19:"google_verification";s:0:"";s:17:"bing_verification";s:0:"";s:19:"yandex_verification";s:0:"";s:17:"pint_verification";s:0:"";s:16:"knowledge_output";i:1;s:14:"knowledge_type";s:12:"organization";s:14:"knowledge_logo";i:1;s:14:"knowledge_name";s:0:"";s:18:"knowledge_logo_url";s:0:"";s:17:"knowledge_logo_id";i:0;s:18:"knowledge_facebook";s:0:"";s:17:"knowledge_twitter";s:0:"";s:15:"knowledge_gplus";s:0:"";s:19:"knowledge_instagram";s:0:"";s:17:"knowledge_youtube";s:0:"";s:18:"knowledge_linkedin";s:0:"";s:19:"knowledge_pinterest";s:0:"";s:20:"knowledge_soundcloud";s:0:"";s:16:"knowledge_tumblr";s:0:"";s:15:"sitemaps_output";i:1;s:17:"sitemaps_modified";i:1;s:15:"sitemaps_robots";i:1;s:11:"ping_google";i:1;s:9:"ping_bing";i:1;s:11:"ping_yandex";i:1;s:14:"sitemap_styles";i:1;s:12:"sitemap_logo";i:1;s:18:"sitemap_color_main";s:3:"333";s:20:"sitemap_color_accent";s:6:"00cd98";s:16:"excerpt_the_feed";i:1;s:15:"source_the_feed";i:1;s:17:"ld_json_searchbox";i:1;s:19:"ld_json_breadcrumbs";i:1;s:12:"updated_3001";i:1;}', 'yes'),
(228, 'the_seo_framework_upgraded_db_version', '3001', 'yes'),
(229, '_transient_tsf_tdir_1_1', '1', 'yes'),
(273, 'xyz_credit_link', '0', 'yes'),
(275, 'xyz_ips_premium_version_ads', '1', 'yes'),
(276, 'xyz_ips_auto_insert', '1', 'yes'),
(279, 'widget_xyz_insert_php_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(301, 'foog_owl_activation_date', '1520726400', 'yes'),
(304, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1520110831;s:8:"response";a:2:{s:35:"autodescription/autodescription.php";O:8:"stdClass":11:{s:2:"id";s:29:"w.org/plugins/autodescription";s:4:"slug";s:15:"autodescription";s:6:"plugin";s:35:"autodescription/autodescription.php";s:11:"new_version";s:5:"3.0.5";s:3:"url";s:46:"https://wordpress.org/plugins/autodescription/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/autodescription.zip";s:5:"icons";a:4:{s:0:"";s:68:"https://ps.w.org/autodescription/assets/icon-512x512.png?rev=1579478";s:2:"1x";s:68:"https://ps.w.org/autodescription/assets/icon-128x128.png?rev=1579478";s:2:"2x";s:68:"https://ps.w.org/autodescription/assets/icon-256x256.png?rev=1579478";s:7:"default";s:68:"https://ps.w.org/autodescription/assets/icon-256x256.png?rev=1579478";}s:7:"banners";a:3:{s:2:"2x";s:71:"https://ps.w.org/autodescription/assets/banner-1544x500.png?rev=1579478";s:2:"1x";s:70:"https://ps.w.org/autodescription/assets/banner-772x250.png?rev=1579478";s:7:"default";s:71:"https://ps.w.org/autodescription/assets/banner-1544x500.png?rev=1579478";}s:11:"banners_rtl";a:0:{}s:6:"tested";s:5:"4.9.4";s:13:"compatibility";O:8:"stdClass":0:{}}s:24:"wordpress-seo/wp-seo.php";O:8:"stdClass":11:{s:2:"id";s:27:"w.org/plugins/wordpress-seo";s:4:"slug";s:13:"wordpress-seo";s:6:"plugin";s:24:"wordpress-seo/wp-seo.php";s:11:"new_version";s:5:"6.3.1";s:3:"url";s:44:"https://wordpress.org/plugins/wordpress-seo/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/wordpress-seo.6.3.1.zip";s:5:"icons";a:4:{s:2:"1x";s:66:"https://ps.w.org/wordpress-seo/assets/icon-128x128.png?rev=1550389";s:2:"2x";s:66:"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1550389";s:3:"svg";s:58:"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1203032";s:7:"default";s:58:"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1203032";}s:7:"banners";a:3:{s:2:"2x";s:69:"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1695112";s:2:"1x";s:68:"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1695112";s:7:"default";s:69:"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1695112";}s:11:"banners_rtl";a:3:{s:2:"2x";s:73:"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1695112";s:2:"1x";s:72:"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1695112";s:7:"default";s:73:"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1695112";}s:6:"tested";s:5:"4.9.4";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:3:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"4.4.12";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip";s:5:"icons";a:3:{s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:7:"default";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";}s:7:"banners";a:3:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";s:7:"default";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";}s:11:"banners_rtl";a:0:{}}s:35:"cyclone-slider-2/cyclone-slider.php";O:8:"stdClass":9:{s:2:"id";s:30:"w.org/plugins/cyclone-slider-2";s:4:"slug";s:16:"cyclone-slider-2";s:6:"plugin";s:35:"cyclone-slider-2/cyclone-slider.php";s:11:"new_version";s:5:"3.2.0";s:3:"url";s:47:"https://wordpress.org/plugins/cyclone-slider-2/";s:7:"package";s:59:"https://downloads.wordpress.org/plugin/cyclone-slider-2.zip";s:5:"icons";a:3:{s:2:"1x";s:68:"https://ps.w.org/cyclone-slider-2/assets/icon-128x128.png?rev=978785";s:2:"2x";s:68:"https://ps.w.org/cyclone-slider-2/assets/icon-256x256.png?rev=978785";s:7:"default";s:68:"https://ps.w.org/cyclone-slider-2/assets/icon-256x256.png?rev=978785";}s:7:"banners";a:2:{s:2:"1x";s:70:"https://ps.w.org/cyclone-slider-2/assets/banner-772x250.jpg?rev=746267";s:7:"default";s:70:"https://ps.w.org/cyclone-slider-2/assets/banner-772x250.jpg?rev=746267";}s:11:"banners_rtl";a:0:{}}s:70:"foogallery-owl-carousel-template/foogallery-owl-carousel-extension.php";O:8:"stdClass":9:{s:2:"id";s:46:"w.org/plugins/foogallery-owl-carousel-template";s:4:"slug";s:32:"foogallery-owl-carousel-template";s:6:"plugin";s:70:"foogallery-owl-carousel-template/foogallery-owl-carousel-extension.php";s:11:"new_version";s:5:"1.4.2";s:3:"url";s:63:"https://wordpress.org/plugins/foogallery-owl-carousel-template/";s:7:"package";s:81:"https://downloads.wordpress.org/plugin/foogallery-owl-carousel-template.1.4.2.zip";s:5:"icons";a:3:{s:2:"1x";s:84:"https://ps.w.org/foogallery-owl-carousel-template/assets/icon-128x128.png?rev=970092";s:2:"2x";s:84:"https://ps.w.org/foogallery-owl-carousel-template/assets/icon-256x256.png?rev=970092";s:7:"default";s:84:"https://ps.w.org/foogallery-owl-carousel-template/assets/icon-256x256.png?rev=970092";}s:7:"banners";a:2:{s:2:"1x";s:86:"https://ps.w.org/foogallery-owl-carousel-template/assets/banner-772x250.png?rev=949982";s:7:"default";s:86:"https://ps.w.org/foogallery-owl-carousel-template/assets/banner-772x250.png?rev=949982";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(362, 'WPLANG', '', 'yes'),
(363, 'new_admin_email', 'chris@chrisstack.co', 'yes'),
(450, '_site_transient_timeout_browser_d3b8d64a156767756c3e2c71c25097f3', '1520215230', 'no'),
(451, '_site_transient_browser_d3b8d64a156767756c3e2c71c25097f3', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"64.0.3282.167";s:8:"platform";s:9:"Macintosh";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(465, '_transient_tsf_exclude_0_1', 'a:2:{s:7:"archive";a:0:{}s:6:"search";a:0:{}}', 'yes'),
(478, '_transient_doing_cron', '1520110830.5148589611053466796875', 'yes'),
(479, '_site_transient_timeout_theme_roots', '1520112632', 'no'),
(480, '_site_transient_theme_roots', 'a:3:{s:4:"test";s:7:"/themes";s:17:"underscores-child";s:7:"/themes";s:11:"underscores";s:7:"/themes";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=1139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(4, 2, '_wp_trash_meta_status', 'publish'),
(5, 2, '_wp_trash_meta_time', '1517903741'),
(6, 2, '_wp_desired_post_slug', 'sample-page'),
(7, 6, '_edit_last', '1'),
(8, 6, '_edit_lock', '1518441471:1'),
(9, 8, '_wp_attached_file', '2018/02/lg-logo.png'),
(10, 8, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:280;s:6:"height";i:69;s:4:"file";s:19:"2018/02/lg-logo.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"lg-logo-150x69.png";s:5:"width";i:150;s:6:"height";i:69;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(11, 9, '_wp_attached_file', '2018/02/cropped-lg-logo.png'),
(12, 9, '_wp_attachment_context', 'custom-header'),
(13, 9, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1000;s:6:"height";i:250;s:4:"file";s:27:"2018/02/cropped-lg-logo.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"cropped-lg-logo-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:26:"cropped-lg-logo-300x75.png";s:5:"width";i:300;s:6:"height";i:75;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:27:"cropped-lg-logo-768x192.png";s:5:"width";i:768;s:6:"height";i:192;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}s:17:"attachment_parent";i:8;}'),
(16, 10, '_wp_trash_meta_status', 'publish'),
(17, 10, '_wp_trash_meta_time', '1517903996'),
(18, 11, '_wp_trash_meta_status', 'publish'),
(19, 11, '_wp_trash_meta_time', '1517904108'),
(20, 6, '_wp_page_template', 'template-home.php'),
(21, 6, '_yoast_wpseo_content_score', '30'),
(22, 12, '_wp_trash_meta_status', 'auto-draft'),
(23, 12, '_wp_trash_meta_time', '1517904878'),
(24, 12, '_wp_desired_post_slug', ''),
(25, 14, '_menu_item_type', 'post_type'),
(26, 14, '_menu_item_menu_item_parent', '0'),
(27, 14, '_menu_item_object_id', '6'),
(28, 14, '_menu_item_object', 'page'),
(29, 14, '_menu_item_target', ''),
(30, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(31, 14, '_menu_item_xfn', ''),
(32, 14, '_menu_item_url', ''),
(33, 14, '_menu_item_orphaned', '1517910933'),
(34, 15, '_menu_item_type', 'post_type'),
(35, 15, '_menu_item_menu_item_parent', '0'),
(36, 15, '_menu_item_object_id', '6'),
(37, 15, '_menu_item_object', 'page'),
(38, 15, '_menu_item_target', ''),
(39, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(40, 15, '_menu_item_xfn', ''),
(41, 15, '_menu_item_url', ''),
(42, 15, '_menu_item_orphaned', '1517910933'),
(43, 16, '_edit_last', '1'),
(44, 16, '_edit_lock', '1519611542:1'),
(45, 16, '_wp_page_template', 'template-custom.php'),
(46, 16, '_yoast_wpseo_content_score', '30'),
(47, 18, '_edit_last', '1'),
(48, 18, '_edit_lock', '1518550726:1'),
(49, 18, '_wp_page_template', 'template-custom.php'),
(50, 18, '_yoast_wpseo_content_score', '30'),
(51, 20, '_edit_last', '1'),
(52, 20, '_edit_lock', '1517910841:1'),
(53, 20, '_wp_page_template', 'template-custom.php'),
(54, 20, '_yoast_wpseo_content_score', '30'),
(55, 22, '_edit_last', '1'),
(56, 22, '_edit_lock', '1517910850:1'),
(57, 22, '_wp_page_template', 'template-custom.php'),
(58, 22, '_yoast_wpseo_content_score', '30'),
(59, 24, '_edit_last', '1'),
(60, 24, '_edit_lock', '1517910867:1'),
(61, 24, '_wp_page_template', 'template-custom.php'),
(62, 24, '_yoast_wpseo_content_score', '30'),
(63, 26, '_menu_item_type', 'post_type'),
(64, 26, '_menu_item_menu_item_parent', '0'),
(65, 26, '_menu_item_object_id', '6'),
(66, 26, '_menu_item_object', 'page'),
(67, 26, '_menu_item_target', ''),
(68, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(69, 26, '_menu_item_xfn', ''),
(70, 26, '_menu_item_url', ''),
(71, 26, '_menu_item_orphaned', '1517911012'),
(72, 27, '_menu_item_type', 'post_type'),
(73, 27, '_menu_item_menu_item_parent', '0'),
(74, 27, '_menu_item_object_id', '6'),
(75, 27, '_menu_item_object', 'page'),
(76, 27, '_menu_item_target', ''),
(77, 27, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(78, 27, '_menu_item_xfn', ''),
(79, 27, '_menu_item_url', ''),
(81, 28, '_menu_item_type', 'post_type'),
(82, 28, '_menu_item_menu_item_parent', '0'),
(83, 28, '_menu_item_object_id', '16'),
(84, 28, '_menu_item_object', 'page'),
(85, 28, '_menu_item_target', ''),
(86, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(87, 28, '_menu_item_xfn', ''),
(88, 28, '_menu_item_url', ''),
(90, 29, '_menu_item_type', 'post_type'),
(91, 29, '_menu_item_menu_item_parent', '0'),
(92, 29, '_menu_item_object_id', '18'),
(93, 29, '_menu_item_object', 'page'),
(94, 29, '_menu_item_target', ''),
(95, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(96, 29, '_menu_item_xfn', ''),
(97, 29, '_menu_item_url', ''),
(99, 30, '_menu_item_type', 'post_type'),
(100, 30, '_menu_item_menu_item_parent', '0'),
(101, 30, '_menu_item_object_id', '20'),
(102, 30, '_menu_item_object', 'page'),
(103, 30, '_menu_item_target', ''),
(104, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(105, 30, '_menu_item_xfn', ''),
(106, 30, '_menu_item_url', ''),
(108, 31, '_menu_item_type', 'post_type'),
(109, 31, '_menu_item_menu_item_parent', '0'),
(110, 31, '_menu_item_object_id', '22'),
(111, 31, '_menu_item_object', 'page'),
(112, 31, '_menu_item_target', ''),
(113, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(114, 31, '_menu_item_xfn', ''),
(115, 31, '_menu_item_url', ''),
(117, 32, '_menu_item_type', 'post_type'),
(118, 32, '_menu_item_menu_item_parent', '0'),
(119, 32, '_menu_item_object_id', '24'),
(120, 32, '_menu_item_object', 'page'),
(121, 32, '_menu_item_target', ''),
(122, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(123, 32, '_menu_item_xfn', ''),
(124, 32, '_menu_item_url', ''),
(126, 33, '_wp_attached_file', '2018/02/favicon.png'),
(127, 33, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:30;s:6:"height";i:30;s:4:"file";s:19:"2018/02/favicon.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(128, 34, '_wp_attached_file', '2018/02/24-7.png'),
(129, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:159;s:6:"height";i:25;s:4:"file";s:16:"2018/02/24-7.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"24-7-150x25.png";s:5:"width";i:150;s:6:"height";i:25;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(130, 35, '_wp_attached_file', '2018/02/twp-logo.png'),
(131, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:84;s:6:"height";i:112;s:4:"file";s:20:"2018/02/twp-logo.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(132, 36, '_wp_attached_file', '2018/02/search-icon.png'),
(133, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:50;s:6:"height";i:50;s:4:"file";s:23:"2018/02/search-icon.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(134, 37, '_wp_attached_file', '2018/02/footer-logo.png'),
(135, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:279;s:6:"height";i:61;s:4:"file";s:23:"2018/02/footer-logo.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"footer-logo-150x61.png";s:5:"width";i:150;s:6:"height";i:61;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(136, 39, '_wp_attached_file', '2018/02/power-plant-e1517929221811.jpg'),
(137, 39, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3285;s:6:"height";i:1314;s:4:"file";s:38:"2018/02/power-plant-e1517929221811.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:38:"power-plant-e1517929221811-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:38:"power-plant-e1517929221811-300x120.jpg";s:5:"width";i:300;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:38:"power-plant-e1517929221811-768x307.jpg";s:5:"width";i:768;s:6:"height";i:307;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:39:"power-plant-e1517929221811-1024x410.jpg";s:5:"width";i:1024;s:6:"height";i:410;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:2:"11";s:6:"credit";s:0:"";s:6:"camera";s:22:"Canon EOS 350D DIGITAL";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1123621477";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:2:"16";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(138, 40, '_wp_attached_file', '2018/02/vintage-power-eq-e1517929246891.jpg'),
(139, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:992;s:6:"height";i:399;s:4:"file";s:43:"2018/02/vintage-power-eq-e1517929246891.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:43:"vintage-power-eq-e1517929246891-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:43:"vintage-power-eq-e1517929246891-300x121.jpg";s:5:"width";i:300;s:6:"height";i:121;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:43:"vintage-power-eq-e1517929246891-768x309.jpg";s:5:"width";i:768;s:6:"height";i:309;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(140, 41, '_edit_last', '1'),
(143, 41, '_edit_lock', '1517968766:1'),
(148, 39, '_wp_attachment_backup_sizes', 'a:5:{s:9:"full-orig";a:3:{s:5:"width";i:3285;s:6:"height";i:2165;s:4:"file";s:15:"power-plant.jpg";}s:14:"thumbnail-orig";a:4:{s:4:"file";s:23:"power-plant-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"medium-orig";a:4:{s:4:"file";s:23:"power-plant-300x198.jpg";s:5:"width";i:300;s:6:"height";i:198;s:9:"mime-type";s:10:"image/jpeg";}s:17:"medium_large-orig";a:4:{s:4:"file";s:23:"power-plant-768x506.jpg";s:5:"width";i:768;s:6:"height";i:506;s:9:"mime-type";s:10:"image/jpeg";}s:10:"large-orig";a:4:{s:4:"file";s:24:"power-plant-1024x675.jpg";s:5:"width";i:1024;s:6:"height";i:675;s:9:"mime-type";s:10:"image/jpeg";}}'),
(149, 40, '_wp_attachment_backup_sizes', 'a:4:{s:9:"full-orig";a:3:{s:5:"width";i:992;s:6:"height";i:515;s:4:"file";s:20:"vintage-power-eq.jpg";}s:14:"thumbnail-orig";a:4:{s:4:"file";s:28:"vintage-power-eq-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"medium-orig";a:4:{s:4:"file";s:28:"vintage-power-eq-300x156.jpg";s:5:"width";i:300;s:6:"height";i:156;s:9:"mime-type";s:10:"image/jpeg";}s:17:"medium_large-orig";a:4:{s:4:"file";s:28:"vintage-power-eq-768x399.jpg";s:5:"width";i:768;s:6:"height";i:399;s:9:"mime-type";s:10:"image/jpeg";}}'),
(156, 41, '_cycloneslider_metas', 'a:2:{i:0;a:28:{s:2:"id";i:39;s:4:"type";s:5:"image";s:6:"hidden";i:0;s:4:"link";s:0:"";s:5:"title";s:23:"Leader In Power Systems";s:11:"description";s:44:"<a href="/">Talk with an expert &#10095;</a>";s:11:"link_target";s:5:"_self";s:7:"img_alt";s:0:"";s:9:"img_title";s:0:"";s:20:"enable_slide_effects";i:0;s:2:"fx";s:7:"default";s:5:"speed";s:0:"";s:7:"timeout";s:0:"";s:10:"tile_count";s:0:"";s:10:"tile_delay";s:3:"100";s:13:"tile_vertical";s:4:"true";s:11:"video_thumb";s:0:"";s:9:"video_url";s:0:"";s:5:"video";s:0:"";s:6:"custom";s:0:"";s:11:"youtube_url";s:0:"";s:15:"youtube_related";s:4:"true";s:9:"vimeo_url";s:0:"";s:11:"testimonial";s:0:"";s:18:"testimonial_author";s:0:"";s:16:"testimonial_link";s:0:"";s:23:"testimonial_link_target";s:5:"_self";s:15:"testimonial_img";i:0;}i:1;a:28:{s:2:"id";i:40;s:4:"type";s:5:"image";s:6:"hidden";i:0;s:4:"link";s:0:"";s:5:"title";s:37:"Providing Solutions for Over 85 Years";s:11:"description";s:35:"<a href="/">Learn More &#10095;</a>";s:11:"link_target";s:5:"_self";s:7:"img_alt";s:0:"";s:9:"img_title";s:0:"";s:20:"enable_slide_effects";i:0;s:2:"fx";s:7:"default";s:5:"speed";s:0:"";s:7:"timeout";s:0:"";s:10:"tile_count";s:0:"";s:10:"tile_delay";s:3:"100";s:13:"tile_vertical";s:4:"true";s:11:"video_thumb";s:0:"";s:9:"video_url";s:0:"";s:5:"video";s:0:"";s:6:"custom";s:0:"";s:11:"youtube_url";s:0:"";s:15:"youtube_related";s:4:"true";s:9:"vimeo_url";s:0:"";s:11:"testimonial";s:0:"";s:18:"testimonial_author";s:0:"";s:16:"testimonial_link";s:0:"";s:23:"testimonial_link_target";s:5:"_self";s:15:"testimonial_img";i:0;}}'),
(157, 41, '_cycloneslider_settings', 'a:15:{s:8:"template";s:8:"standard";s:2:"fx";s:4:"fade";s:7:"timeout";i:4000;s:5:"speed";i:1000;s:5:"width";i:960;s:6:"height";i:600;s:11:"hover_pause";s:5:"false";s:14:"show_prev_next";i:1;s:8:"show_nav";i:1;s:10:"tile_count";i:7;s:10:"tile_delay";i:100;s:13:"tile_vertical";s:4:"true";s:6:"random";i:0;s:6:"resize";i:1;s:16:"width_management";s:4:"full";}'),
(160, 44, '_wp_attached_file', '2018/02/twp-ribbon-large.png'),
(161, 44, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:84;s:6:"height";i:132;s:4:"file";s:28:"2018/02/twp-ribbon-large.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(162, 45, '_wp_attached_file', '2018/02/armstrong.png'),
(163, 45, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:215;s:6:"height";i:115;s:4:"file";s:21:"2018/02/armstrong.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"armstrong-150x115.png";s:5:"width";i:150;s:6:"height";i:115;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(166, 47, '_wp_attached_file', '2018/02/cleaver-brooks.png'),
(167, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:215;s:6:"height";i:115;s:4:"file";s:26:"2018/02/cleaver-brooks.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"cleaver-brooks-150x115.png";s:5:"width";i:150;s:6:"height";i:115;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(168, 48, '_wp_attached_file', '2018/02/factory-worker.jpg'),
(169, 48, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:600;s:6:"height";i:400;s:4:"file";s:26:"2018/02/factory-worker.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"factory-worker-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"factory-worker-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"2.2";s:6:"credit";s:14:"MilanVirijevic";s:6:"camera";s:21:"Canon EOS 5D Mark III";s:7:"caption";s:68:"Depth of field. Great processing photos.Used professional equipment.";s:17:"created_timestamp";s:10:"1459077173";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"50";s:3:"iso";s:3:"640";s:13:"shutter_speed";s:5:"0.005";s:5:"title";s:68:"Depth of field. Great processing photos.Used professional equipment.";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(170, 49, '_wp_attached_file', '2018/02/industrial.jpg'),
(171, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2400;s:6:"height";i:700;s:4:"file";s:22:"2018/02/industrial.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"industrial-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"industrial-300x88.jpg";s:5:"width";i:300;s:6:"height";i:88;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"industrial-768x224.jpg";s:5:"width";i:768;s:6:"height";i:224;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"industrial-1024x299.jpg";s:5:"width";i:1024;s:6:"height";i:299;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(172, 50, '_wp_attached_file', '2018/02/search-icon-1.png'),
(173, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:50;s:6:"height";i:50;s:4:"file";s:25:"2018/02/search-icon-1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(174, 51, '_wp_attached_file', '2018/02/viking-pumps.png'),
(175, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:215;s:6:"height";i:115;s:4:"file";s:24:"2018/02/viking-pumps.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"viking-pumps-150x115.png";s:5:"width";i:150;s:6:"height";i:115;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(176, 52, '_wp_attached_file', '2018/02/gardner-denver.png'),
(177, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:215;s:6:"height";i:115;s:4:"file";s:26:"2018/02/gardner-denver.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"gardner-denver-150x115.png";s:5:"width";i:150;s:6:"height";i:115;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(178, 53, '_edit_last', '1'),
(179, 53, 'field_5a7c45f700f27', 'a:13:{s:3:"key";s:19:"field_5a7c45f700f27";s:5:"label";s:18:"Home About Content";s:4:"name";s:18:"home_about_content";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(181, 53, 'position', 'acf_after_title'),
(182, 53, 'layout', 'no_box'),
(183, 53, 'hide_on_screen', ''),
(184, 53, '_edit_lock', '1518096667:1'),
(187, 55, 'home_about', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(188, 55, '_home_about', 'field_5a7c45f700f27'),
(189, 6, '_genesis_title', 'Power Equipment Company'),
(190, 6, '_genesis_description', 'Our goal at Power Equipment Company is to provide you with the highest quality energy solutions on the market today as well as immediate service.'),
(191, 6, 'home_about', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(192, 6, '_home_about', 'field_5a7c45f700f27'),
(193, 53, 'field_5a7c4862303eb', 'a:11:{s:3:"key";s:19:"field_5a7c4862303eb";s:5:"label";s:16:"Home About Image";s:4:"name";s:16:"home_about_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:11:"save_format";s:6:"object";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(196, 56, 'home_about', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(197, 56, '_home_about', 'field_5a7c45f700f27'),
(198, 56, 'home_about_image', '48'),
(199, 56, '_home_about_image', 'field_5a7c4862303eb'),
(200, 6, 'home_about_image', '48'),
(201, 6, '_home_about_image', 'field_5a81881327a2d'),
(203, 48, '_wp_attachment_image_alt', 'Power Equipment Company employee'),
(204, 49, '_wp_attachment_image_alt', 'Power Equipment Company'),
(205, 53, 'field_5a7c4b6f73950', 'a:11:{s:3:"key";s:19:"field_5a7c4b6f73950";s:5:"label";s:15:"Home Hero Image";s:4:"name";s:15:"home_hero_image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:11:"save_format";s:6:"object";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(207, 57, 'home_hero_image', '49'),
(208, 57, '_home_hero_image', 'field_5a7c4b6f73950'),
(209, 57, 'home_about_image', '48'),
(210, 57, '_home_about_image', 'field_5a7c4862303eb'),
(211, 57, 'home_about', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(212, 57, '_home_about', 'field_5a7c45f700f27'),
(213, 6, 'home_hero_image', '49'),
(214, 6, '_home_hero_image', 'field_5a7c4b6f73950'),
(216, 53, 'field_5a7c4ce68b41d', 'a:14:{s:3:"key";s:19:"field_5a7c4ce68b41d";s:5:"label";s:18:"Home About Heading";s:4:"name";s:18:"home_about_heading";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(218, 58, 'home_hero_image', '49'),
(219, 58, '_home_hero_image', 'field_5a7c4b6f73950'),
(220, 58, 'home_about_image', '48'),
(221, 58, '_home_about_image', 'field_5a7c4862303eb'),
(222, 58, 'home_about_heading', 'test'),
(223, 58, '_home_about_heading', 'field_5a7c4ce68b41d'),
(224, 58, 'home_about', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(225, 58, '_home_about', 'field_5a7c45f700f27'),
(226, 6, 'home_about_heading', 'About Power Equipment Co.'),
(227, 6, '_home_about_heading', 'field_5a81883127a2e'),
(228, 59, 'home_hero_image', '49'),
(229, 59, '_home_hero_image', 'field_5a7c4b6f73950'),
(230, 59, 'home_about_image', '48'),
(231, 59, '_home_about_image', 'field_5a7c4862303eb'),
(232, 59, 'home_about_heading', 'About Power Equipment Co.'),
(233, 59, '_home_about_heading', 'field_5a7c4ce68b41d'),
(234, 59, 'home_about', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(235, 59, '_home_about', 'field_5a7c45f700f27'),
(237, 60, 'home_hero_image', '49'),
(238, 60, '_home_hero_image', 'field_5a7c4b6f73950'),
(239, 60, 'home_about_image', '48'),
(240, 60, '_home_about_image', 'field_5a7c4862303eb'),
(241, 60, 'home_about_heading', 'About Power Equipment Co.'),
(242, 60, '_home_about_heading', 'field_5a7c4ce68b41d'),
(243, 60, 'home_about_content', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(244, 60, '_home_about_content', 'field_5a7c45f700f27'),
(245, 6, 'home_about_content', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(246, 6, '_home_about_content', 'field_5a81884f27a2f'),
(249, 53, 'field_5a7c4e3487b2a', 'a:14:{s:3:"key";s:19:"field_5a7c4e3487b2a";s:5:"label";s:20:"Home Mission Heading";s:4:"name";s:20:"home_mission_heading";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:4;}'),
(251, 53, 'field_5a7c4e49ccfc3', 'a:13:{s:3:"key";s:19:"field_5a7c4e49ccfc3";s:5:"label";s:20:"Home Mission Content";s:4:"name";s:20:"home_mission_content";s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:10:"formatting";s:2:"br";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:5;}'),
(253, 61, 'home_hero_image', '49'),
(254, 61, '_home_hero_image', 'field_5a7c4b6f73950'),
(255, 61, 'home_about_image', '48'),
(256, 61, '_home_about_image', 'field_5a7c4862303eb'),
(257, 61, 'home_about_heading', 'About Power Equipment Co.'),
(258, 61, '_home_about_heading', 'field_5a7c4ce68b41d'),
(259, 61, 'home_about_content', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(260, 61, '_home_about_content', 'field_5a7c45f700f27'),
(261, 61, 'home_mission_heading', 'Your Energy Systems – Up & Running'),
(262, 61, '_home_mission_heading', 'field_5a7c4e3487b2a'),
(263, 61, 'home_mission_content', 'That''s the primary goal at Power Equipment Company. As it has been for more than 85 years. By providing innovative solutions, quality products and service on demand, we have taken the guess work out of your systems'' performance so that you can rest easy.'),
(264, 61, '_home_mission_content', 'field_5a7c4e49ccfc3'),
(265, 6, 'home_mission_heading', 'Your Energy Systems – Up & Running'),
(266, 6, '_home_mission_heading', 'field_5a7c4e3487b2a'),
(267, 6, 'home_mission_content', 'That''s the primary goal at Power Equipment Company as it has been for more than 85 years. By providing innovative solutions, quality products and service on demand, we have taken the guess work out of your systems'' performance so that you can rest easy.'),
(268, 6, '_home_mission_content', 'field_5a7c4e49ccfc3'),
(269, 62, 'home_hero_image', '49'),
(270, 62, '_home_hero_image', 'field_5a7c4b6f73950'),
(271, 62, 'home_about_image', '48'),
(272, 62, '_home_about_image', 'field_5a7c4862303eb'),
(273, 62, 'home_about_heading', 'About Power Equipment Co.'),
(274, 62, '_home_about_heading', 'field_5a7c4ce68b41d'),
(275, 62, 'home_about_content', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(276, 62, '_home_about_content', 'field_5a7c45f700f27'),
(277, 62, 'home_mission_heading', 'Your Energy Systems – Up & Running'),
(278, 62, '_home_mission_heading', 'field_5a7c4e3487b2a'),
(279, 62, 'home_mission_content', 'That''s the primary goal at Power Equipment Company as it has been for more than 85 years. By providing innovative solutions, quality products and service on demand, we have taken the guess work out of your systems'' performance so that you can rest easy.'),
(280, 62, '_home_mission_content', 'field_5a7c4e49ccfc3'),
(281, 53, 'field_5a7c51273a92e', 'a:14:{s:3:"key";s:19:"field_5a7c51273a92e";s:5:"label";s:22:"Home Companies Heading";s:4:"name";s:22:"home_companies_heading";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:6;}'),
(282, 53, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:1:"6";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(283, 63, 'home_hero_image', '49'),
(284, 63, '_home_hero_image', 'field_5a7c4b6f73950'),
(285, 63, 'home_about_image', '48'),
(286, 63, '_home_about_image', 'field_5a7c4862303eb'),
(287, 63, 'home_about_heading', 'About Power Equipment Co.'),
(288, 63, '_home_about_heading', 'field_5a7c4ce68b41d'),
(289, 63, 'home_about_content', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(290, 63, '_home_about_content', 'field_5a7c45f700f27'),
(291, 63, 'home_mission_heading', 'Your Energy Systems – Up & Running'),
(292, 63, '_home_mission_heading', 'field_5a7c4e3487b2a'),
(293, 63, 'home_mission_content', 'That''s the primary goal at Power Equipment Company as it has been for more than 85 years. By providing innovative solutions, quality products and service on demand, we have taken the guess work out of your systems'' performance so that you can rest easy.'),
(294, 63, '_home_mission_content', 'field_5a7c4e49ccfc3'),
(295, 63, 'home_companies_heading', 'Manufacturing With the Best in the Business'),
(296, 63, '_home_companies_heading', 'field_5a7c51273a92e'),
(297, 6, 'home_companies_heading', 'Manufacturing With the Best in the Business'),
(298, 6, '_home_companies_heading', 'field_5a7c51273a92e'),
(299, 64, 'home_hero_image', '49'),
(300, 64, '_home_hero_image', 'field_5a7c4b6f73950'),
(301, 64, 'home_about_image', '48'),
(302, 64, '_home_about_image', 'field_5a7c4862303eb'),
(303, 64, 'home_about_heading', 'About Power Equipment Co.'),
(304, 64, '_home_about_heading', 'field_5a7c4ce68b41d'),
(305, 64, 'home_about_content', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(306, 64, '_home_about_content', 'field_5a7c45f700f27'),
(307, 64, 'home_mission_heading', 'Your Energy Systems – Up & Running'),
(308, 64, '_home_mission_heading', 'field_5a7c4e3487b2a'),
(309, 64, 'home_mission_content', 'That''s the primary goal at Power Equipment Company as it has been for more than 85 years. By providing innovative solutions, quality products and service on demand, we have taken the guess work out of your systems'' performance so that you can rest easy.'),
(310, 64, '_home_mission_content', 'field_5a7c4e49ccfc3'),
(311, 64, 'home_companies_heading', 'test'),
(312, 64, '_home_companies_heading', 'field_5a7c51273a92e'),
(313, 65, 'home_hero_image', '49'),
(314, 65, '_home_hero_image', 'field_5a7c4b6f73950'),
(315, 65, 'home_about_image', '48'),
(316, 65, '_home_about_image', 'field_5a7c4862303eb'),
(317, 65, 'home_about_heading', 'About Power Equipment Co.'),
(318, 65, '_home_about_heading', 'field_5a7c4ce68b41d'),
(319, 65, 'home_about_content', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(320, 65, '_home_about_content', 'field_5a7c45f700f27'),
(321, 65, 'home_mission_heading', 'Your Energy Systems – Up & Running'),
(322, 65, '_home_mission_heading', 'field_5a7c4e3487b2a'),
(323, 65, 'home_mission_content', 'That''s the primary goal at Power Equipment Company as it has been for more than 85 years. By providing innovative solutions, quality products and service on demand, we have taken the guess work out of your systems'' performance so that you can rest easy.'),
(324, 65, '_home_mission_content', 'field_5a7c4e49ccfc3'),
(325, 65, 'home_companies_heading', 'Manufacturing With the Best in the Business'),
(326, 65, '_home_companies_heading', 'field_5a7c51273a92e'),
(327, 66, '_edit_last', '1'),
(328, 66, 'field_5a7c51b0e5423', 'a:14:{s:3:"key";s:19:"field_5a7c51b0e5423";s:5:"label";s:14:"Location 1 URL";s:4:"name";s:14:"location_1_url";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"none";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(329, 66, 'field_5a7c5338e5424', 'a:14:{s:3:"key";s:19:"field_5a7c5338e5424";s:5:"label";s:15:"Location 1 Name";s:4:"name";s:15:"location_1_name";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(330, 66, 'field_5a7c5351e5425', 'a:14:{s:3:"key";s:19:"field_5a7c5351e5425";s:5:"label";s:42:"Location 1 Phone (numbers and dashes only)";s:4:"name";s:16:"location_1_phone";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"1";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(332, 66, 'position', 'acf_after_title'),
(333, 66, 'layout', 'no_box'),
(334, 66, 'hide_on_screen', ''),
(335, 66, '_edit_lock', '1518098575:1'),
(336, 67, '_edit_last', '1'),
(337, 67, '_edit_lock', '1518100408:1'),
(338, 67, '_wp_page_template', 'default'),
(343, 69, 'location_1_url', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:31:"https://goo.gl/maps/ZeAvuQc4Stu";s:6:"target";s:0:"";}'),
(344, 69, '_location_1_url', 'field_5a7c51b0e5423'),
(345, 69, 'location_1_name', 'Memphis, TN – Corporate Office'),
(346, 69, '_location_1_name', 'field_5a7c5338e5424'),
(347, 69, 'location_1_phone', '901-327-8261'),
(348, 69, '_location_1_phone', 'field_5a7c5351e5425'),
(349, 67, 'location_1_url', 'https://goo.gl/maps/ZeAvuQc4Stu'),
(350, 67, '_location_1_url', 'field_5a7c51b0e5423'),
(351, 67, 'location_1_name', 'Memphis, TN – Corporate Office'),
(352, 67, '_location_1_name', 'field_5a7c5338e5424'),
(353, 67, 'location_1_phone', '901-327-8261'),
(354, 67, '_location_1_phone', 'field_5a7c5351e5425'),
(355, 66, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"67";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(356, 70, '_edit_lock', '1518441512:1'),
(357, 70, '_edit_last', '1'),
(358, 67, 'location_1', 'a:3:{s:5:"title";s:32:"Memphis, TN – Corporate Office";s:3:"url";s:31:"https://goo.gl/maps/ZeAvuQc4Stu";s:6:"target";s:6:"_blank";}'),
(359, 67, '_location_1', 'field_5a7c51b0e5423'),
(360, 82, 'location_1_url', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:31:"https://goo.gl/maps/ZeAvuQc4Stu";s:6:"target";s:0:"";}'),
(361, 82, '_location_1_url', 'field_5a7c51b0e5423'),
(362, 82, 'location_1_name', 'Memphis, TN – Corporate Office'),
(363, 82, '_location_1_name', 'field_5a7c5338e5424'),
(364, 82, 'location_1_phone', '901-327-8261'),
(365, 82, '_location_1_phone', 'field_5a7c5351e5425'),
(366, 82, 'location_1', 'a:3:{s:5:"title";s:32:"Memphis, TN – Corporate Office";s:3:"url";s:31:"https://goo.gl/maps/ZeAvuQc4Stu";s:6:"target";s:6:"_blank";}'),
(367, 82, '_location_1', 'field_5a7c51b0e5423'),
(368, 83, 'location_1_url', 'https://goo.gl/maps/ZeAvuQc4Stu'),
(369, 83, '_location_1_url', 'field_5a7c51b0e5423'),
(370, 83, 'location_1_name', 'Memphis, TN – Corporate Office'),
(371, 83, '_location_1_name', 'field_5a7c5338e5424'),
(372, 83, 'location_1_phone', '901-327-8261'),
(373, 83, '_location_1_phone', 'field_5a7c5351e5425'),
(374, 83, 'location_1', 'a:3:{s:5:"title";s:32:"Memphis, TN – Corporate Office";s:3:"url";s:31:"https://goo.gl/maps/ZeAvuQc4Stu";s:6:"target";s:6:"_blank";}'),
(375, 83, '_location_1', 'field_5a7c51b0e5423'),
(376, 67, 'location_one_phone', '901-327-8261'),
(377, 67, '_location_one_phone', 'field_5a7c5351e5425'),
(378, 84, 'location_1_url', 'https://goo.gl/maps/ZeAvuQc4Stu'),
(379, 84, '_location_1_url', 'field_5a7c51b0e5423'),
(380, 84, 'location_1_name', 'Memphis, TN – Corporate Office'),
(381, 84, '_location_1_name', 'field_5a7c5338e5424'),
(382, 84, 'location_1_phone', '901-327-8261'),
(383, 84, '_location_1_phone', 'field_5a7c5351e5425'),
(384, 84, 'location_1', 'a:3:{s:5:"title";s:32:"Memphis, TN – Corporate Office";s:3:"url";s:31:"https://goo.gl/maps/ZeAvuQc4Stu";s:6:"target";s:6:"_blank";}'),
(385, 84, '_location_1', 'field_5a7c51b0e5423'),
(386, 84, 'location_one_phone', '901-327-8261'),
(387, 84, '_location_one_phone', 'field_5a7c5351e5425'),
(388, 74, '_edit_lock', '1519611766:1'),
(389, 74, '_edit_last', '1'),
(390, 6, 'home_hero_heading', 'Leader In Power Systems'),
(391, 6, '_home_hero_heading', 'field_5a7c5ec8b187c'),
(392, 87, 'home_about', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(393, 87, '_home_about', 'field_5a7c45f700f27'),
(394, 87, 'home_about_image', '48'),
(395, 87, '_home_about_image', 'field_5a7c4862303eb'),
(396, 87, 'home_hero_image', '49'),
(397, 87, '_home_hero_image', 'field_5a7c4b6f73950'),
(398, 87, 'home_about_heading', 'About Power Equipment Co.'),
(399, 87, '_home_about_heading', 'field_5a7c4ce68b41d'),
(400, 87, 'home_about_content', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(401, 87, '_home_about_content', 'field_5a7c45f700f27'),
(402, 87, 'home_mission_heading', 'Your Energy Systems – Up & Running'),
(403, 87, '_home_mission_heading', 'field_5a7c4e3487b2a'),
(404, 87, 'home_mission_content', 'That''s the primary goal at Power Equipment Company as it has been for more than 85 years. By providing innovative solutions, quality products and service on demand, we have taken the guess work out of your systems'' performance so that you can rest easy.'),
(405, 87, '_home_mission_content', 'field_5a7c4e49ccfc3'),
(406, 87, 'home_companies_heading', 'Manufacturing With the Best in the Business'),
(407, 87, '_home_companies_heading', 'field_5a7c51273a92e'),
(408, 87, 'home_hero_heading', 'Leader In Power Systems'),
(409, 87, '_home_hero_heading', 'field_5a7c5ec8b187c'),
(410, 6, 'location_1_url', 'https://goo.gl/maps/ZeAvuQc4Stu'),
(411, 6, '_location_1_url', 'field_5a7c51b0e5423'),
(412, 6, 'location_one_phone', '901-327-8261'),
(413, 6, '_location_one_phone', 'field_5a7c5351e5425'),
(414, 88, 'home_about', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(415, 88, '_home_about', 'field_5a7c45f700f27'),
(416, 88, 'home_about_image', '48'),
(417, 88, '_home_about_image', 'field_5a7c4862303eb'),
(418, 88, 'home_hero_image', '49'),
(419, 88, '_home_hero_image', 'field_5a7c4b6f73950'),
(420, 88, 'home_about_heading', 'About Power Equipment Co.'),
(421, 88, '_home_about_heading', 'field_5a7c4ce68b41d'),
(422, 88, 'home_about_content', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(423, 88, '_home_about_content', 'field_5a7c45f700f27'),
(424, 88, 'home_mission_heading', 'Your Energy Systems – Up & Running'),
(425, 88, '_home_mission_heading', 'field_5a7c4e3487b2a'),
(426, 88, 'home_mission_content', 'That''s the primary goal at Power Equipment Company as it has been for more than 85 years. By providing innovative solutions, quality products and service on demand, we have taken the guess work out of your systems'' performance so that you can rest easy.'),
(427, 88, '_home_mission_content', 'field_5a7c4e49ccfc3'),
(428, 88, 'home_companies_heading', 'Manufacturing With the Best in the Business'),
(429, 88, '_home_companies_heading', 'field_5a7c51273a92e'),
(430, 88, 'home_hero_heading', 'Leader In Power Systems'),
(431, 88, '_home_hero_heading', 'field_5a7c5ec8b187c'),
(432, 88, 'location_1_url', 'https://goo.gl/maps/ZeAvuQc4Stu'),
(433, 88, '_location_1_url', 'field_5a7c51b0e5423'),
(434, 88, 'location_one_phone', '901-327-8261'),
(435, 88, '_location_one_phone', 'field_5a7c5351e5425'),
(436, 67, '_wp_trash_meta_status', 'publish'),
(437, 67, '_wp_trash_meta_time', '1518100553'),
(438, 67, '_wp_desired_post_slug', 'footer'),
(439, 1, '_wp_trash_meta_status', 'publish'),
(440, 1, '_wp_trash_meta_time', '1518100581'),
(441, 1, '_wp_desired_post_slug', 'hello-world'),
(442, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(443, 90, '_edit_last', '1'),
(446, 90, '_edit_lock', '1518103563:1'),
(449, 90, '_primary_term_category', '1'),
(450, 90, 'location_1_url', 'a:3:{s:5:"title";s:32:"Memphis, TN – Corporate Office";s:3:"url";s:20:"http://chrisstack.co";s:6:"target";s:6:"_blank";}'),
(451, 90, '_location_1_url', 'field_5a7c51b0e5423'),
(452, 90, 'location_one_phone', 'test'),
(453, 90, '_location_one_phone', 'field_5a7c5351e5425'),
(454, 92, 'location_1_url', 'https://goo.gl/maps/ZeAvuQc4Stu'),
(455, 92, '_location_1_url', 'field_5a7c51b0e5423'),
(456, 92, 'location_one_phone', '901-327-8261'),
(457, 92, '_location_one_phone', 'field_5a7c5351e5425'),
(460, 93, 'location_1_url', 'a:3:{s:5:"title";s:32:"Memphis, TN – Corporate Office";s:3:"url";s:31:"https://goo.gl/maps/ZeAvuQc4Stu";s:6:"target";s:6:"_blank";}'),
(461, 93, '_location_1_url', 'field_5a7c51b0e5423'),
(462, 93, 'location_one_phone', '901-327-8261'),
(463, 93, '_location_one_phone', 'field_5a7c5351e5425'),
(470, 94, 'location_1_url', 'a:3:{s:5:"title";s:32:"Memphis, TN – Corporate Office";s:3:"url";s:31:"https://goo.gl/maps/ZeAvuQc4Stu";s:6:"target";s:6:"_blank";}'),
(471, 94, '_location_1_url', 'field_5a7c51b0e5423'),
(472, 94, 'location_one_phone', 'test'),
(473, 94, '_location_one_phone', 'field_5a7c5351e5425'),
(478, 95, 'location_1_url', 'a:3:{s:5:"title";s:32:"Memphis, TN – Corporate Office";s:3:"url";s:20:"http://chrisstack.co";s:6:"target";s:6:"_blank";}'),
(479, 95, '_location_1_url', 'field_5a7c51b0e5423'),
(480, 95, 'location_one_phone', 'test'),
(481, 95, '_location_one_phone', 'field_5a7c5351e5425'),
(482, 90, '_wp_trash_meta_status', 'publish'),
(483, 90, '_wp_trash_meta_time', '1518103707'),
(484, 90, '_wp_desired_post_slug', 'footer'),
(485, 47, '_wp_attachment_image_alt', 'Cleaver Brooks'),
(486, 51, '_wp_attachment_image_alt', 'Viking Pumps'),
(487, 6, 'company_logo_1', '47'),
(488, 6, '_company_logo_1', 'field_5a81735be5837'),
(489, 6, 'company_logo_2', '51'),
(490, 6, '_company_logo_2', 'field_5a817396e5838'),
(491, 98, 'home_about', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(492, 98, '_home_about', 'field_5a7c45f700f27'),
(493, 98, 'home_about_image', '48'),
(494, 98, '_home_about_image', 'field_5a7c4862303eb'),
(495, 98, 'home_hero_image', '49'),
(496, 98, '_home_hero_image', 'field_5a7c4b6f73950'),
(497, 98, 'home_about_heading', 'About Power Equipment Co.'),
(498, 98, '_home_about_heading', 'field_5a7c4ce68b41d'),
(499, 98, 'home_about_content', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(500, 98, '_home_about_content', 'field_5a7c45f700f27'),
(501, 98, 'home_mission_heading', 'Your Energy Systems – Up & Running'),
(502, 98, '_home_mission_heading', 'field_5a7c4e3487b2a'),
(503, 98, 'home_mission_content', 'That''s the primary goal at Power Equipment Company as it has been for more than 85 years. By providing innovative solutions, quality products and service on demand, we have taken the guess work out of your systems'' performance so that you can rest easy.'),
(504, 98, '_home_mission_content', 'field_5a7c4e49ccfc3');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(505, 98, 'home_companies_heading', 'Manufacturing With the Best in the Business'),
(506, 98, '_home_companies_heading', 'field_5a7c51273a92e'),
(507, 98, 'home_hero_heading', 'Leader In Power Systems'),
(508, 98, '_home_hero_heading', 'field_5a7c5ec8b187c'),
(509, 98, 'location_1_url', 'https://goo.gl/maps/ZeAvuQc4Stu'),
(510, 98, '_location_1_url', 'field_5a7c51b0e5423'),
(511, 98, 'location_one_phone', '901-327-8261'),
(512, 98, '_location_one_phone', 'field_5a7c5351e5425'),
(513, 98, 'company_logo_1', '47'),
(514, 98, '_company_logo_1', 'field_5a81735be5837'),
(515, 98, 'company_logo_2', '51'),
(516, 98, '_company_logo_2', 'field_5a817396e5838'),
(517, 6, 'company_logo_3', '45'),
(518, 6, '_company_logo_3', 'field_5a8175477f92f'),
(519, 98, 'company_logo_3', ''),
(520, 98, '_company_logo_3', 'field_5a8175477f92f'),
(521, 45, '_wp_attachment_image_alt', 'Armstrong'),
(522, 52, '_wp_attachment_image_alt', 'Gardner Denver'),
(535, 6, 'company_logo_4', '52'),
(536, 6, '_company_logo_4', 'field_5a817b3d2228d'),
(537, 6, 'company_logo_5', '123'),
(538, 6, '_company_logo_5', 'field_5a817575af8fd'),
(539, 6, 'company_logo_6', '125'),
(540, 6, '_company_logo_6', 'field_5a817575af8fc'),
(541, 6, 'company_logo_7', '114'),
(542, 6, '_company_logo_7', 'field_5a817573af8fb'),
(543, 6, 'company_logo_8', '121'),
(544, 6, '_company_logo_8', 'field_5a817571af8fa'),
(545, 109, 'home_about', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(546, 109, '_home_about', 'field_5a7c45f700f27'),
(547, 109, 'home_about_image', '48'),
(548, 109, '_home_about_image', 'field_5a7c4862303eb'),
(549, 109, 'home_hero_image', '49'),
(550, 109, '_home_hero_image', 'field_5a7c4b6f73950'),
(551, 109, 'home_about_heading', 'About Power Equipment Co.'),
(552, 109, '_home_about_heading', 'field_5a7c4ce68b41d'),
(553, 109, 'home_about_content', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(554, 109, '_home_about_content', 'field_5a7c45f700f27'),
(555, 109, 'home_mission_heading', 'Your Energy Systems – Up & Running'),
(556, 109, '_home_mission_heading', 'field_5a7c4e3487b2a'),
(557, 109, 'home_mission_content', 'That''s the primary goal at Power Equipment Company as it has been for more than 85 years. By providing innovative solutions, quality products and service on demand, we have taken the guess work out of your systems'' performance so that you can rest easy.'),
(558, 109, '_home_mission_content', 'field_5a7c4e49ccfc3'),
(559, 109, 'home_companies_heading', 'Manufacturing With the Best in the Business'),
(560, 109, '_home_companies_heading', 'field_5a7c51273a92e'),
(561, 109, 'home_hero_heading', 'Leader In Power Systems'),
(562, 109, '_home_hero_heading', 'field_5a7c5ec8b187c'),
(563, 109, 'location_1_url', 'https://goo.gl/maps/ZeAvuQc4Stu'),
(564, 109, '_location_1_url', 'field_5a7c51b0e5423'),
(565, 109, 'location_one_phone', '901-327-8261'),
(566, 109, '_location_one_phone', 'field_5a7c5351e5425'),
(567, 109, 'company_logo_1', '47'),
(568, 109, '_company_logo_1', 'field_5a81735be5837'),
(569, 109, 'company_logo_2', '51'),
(570, 109, '_company_logo_2', 'field_5a817396e5838'),
(571, 109, 'company_logo_3', '45'),
(572, 109, '_company_logo_3', 'field_5a8175477f92f'),
(573, 109, 'company_logo_4', '52'),
(574, 109, '_company_logo_4', 'field_5a817576af8fe'),
(575, 109, 'company_logo_5', '106'),
(576, 109, '_company_logo_5', 'field_5a817575af8fd'),
(577, 109, 'company_logo_6', '108'),
(578, 109, '_company_logo_6', 'field_5a817575af8fc'),
(579, 109, 'company_logo_7', '107'),
(580, 109, '_company_logo_7', 'field_5a817573af8fb'),
(581, 109, 'company_logo_8', '105'),
(582, 109, '_company_logo_8', 'field_5a817571af8fa'),
(586, 112, 'home_about', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(587, 112, '_home_about', 'field_5a7c45f700f27'),
(588, 112, 'home_about_image', '48'),
(589, 112, '_home_about_image', 'field_5a7c4862303eb'),
(590, 112, 'home_hero_image', '49'),
(591, 112, '_home_hero_image', 'field_5a7c4b6f73950'),
(592, 112, 'home_about_heading', 'About Power Equipment Co.'),
(593, 112, '_home_about_heading', 'field_5a7c4ce68b41d'),
(594, 112, 'home_about_content', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(595, 112, '_home_about_content', 'field_5a7c45f700f27'),
(596, 112, 'home_mission_heading', 'Your Energy Systems – Up & Running'),
(597, 112, '_home_mission_heading', 'field_5a7c4e3487b2a'),
(598, 112, 'home_mission_content', 'That''s the primary goal at Power Equipment Company as it has been for more than 85 years. By providing innovative solutions, quality products and service on demand, we have taken the guess work out of your systems'' performance so that you can rest easy.'),
(599, 112, '_home_mission_content', 'field_5a7c4e49ccfc3'),
(600, 112, 'home_companies_heading', 'Manufacturing With the Best in the Business'),
(601, 112, '_home_companies_heading', 'field_5a7c51273a92e'),
(602, 112, 'home_hero_heading', 'Leader In Power Systems'),
(603, 112, '_home_hero_heading', 'field_5a7c5ec8b187c'),
(604, 112, 'location_1_url', 'https://goo.gl/maps/ZeAvuQc4Stu'),
(605, 112, '_location_1_url', 'field_5a7c51b0e5423'),
(606, 112, 'location_one_phone', '901-327-8261'),
(607, 112, '_location_one_phone', 'field_5a7c5351e5425'),
(608, 112, 'company_logo_1', '47'),
(609, 112, '_company_logo_1', 'field_5a81735be5837'),
(610, 112, 'company_logo_2', '51'),
(611, 112, '_company_logo_2', 'field_5a817396e5838'),
(612, 112, 'company_logo_3', '45'),
(613, 112, '_company_logo_3', 'field_5a8175477f92f'),
(614, 112, 'company_logo_4', '52'),
(615, 112, '_company_logo_4', 'field_5a817576af8fe'),
(616, 112, 'company_logo_5', '106'),
(617, 112, '_company_logo_5', 'field_5a817575af8fd'),
(618, 112, 'company_logo_6', '108'),
(619, 112, '_company_logo_6', 'field_5a817575af8fc'),
(620, 112, 'company_logo_7', '110'),
(621, 112, '_company_logo_7', 'field_5a817573af8fb'),
(622, 112, 'company_logo_8', '105'),
(623, 112, '_company_logo_8', 'field_5a817571af8fa'),
(624, 114, '_wp_attached_file', '2018/02/parker-boiler.png'),
(625, 114, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:186;s:6:"height";i:115;s:4:"file";s:25:"2018/02/parker-boiler.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"parker-boiler-150x115.png";s:5:"width";i:150;s:6:"height";i:115;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(626, 114, '_wp_attachment_image_alt', 'Parker Boiler'),
(627, 115, 'home_about', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(628, 115, '_home_about', 'field_5a7c45f700f27'),
(629, 115, 'home_about_image', '48'),
(630, 115, '_home_about_image', 'field_5a7c4862303eb'),
(631, 115, 'home_hero_image', '49'),
(632, 115, '_home_hero_image', 'field_5a7c4b6f73950'),
(633, 115, 'home_about_heading', 'About Power Equipment Co.'),
(634, 115, '_home_about_heading', 'field_5a7c4ce68b41d'),
(635, 115, 'home_about_content', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(636, 115, '_home_about_content', 'field_5a7c45f700f27'),
(637, 115, 'home_mission_heading', 'Your Energy Systems – Up & Running'),
(638, 115, '_home_mission_heading', 'field_5a7c4e3487b2a'),
(639, 115, 'home_mission_content', 'That''s the primary goal at Power Equipment Company as it has been for more than 85 years. By providing innovative solutions, quality products and service on demand, we have taken the guess work out of your systems'' performance so that you can rest easy.'),
(640, 115, '_home_mission_content', 'field_5a7c4e49ccfc3'),
(641, 115, 'home_companies_heading', 'Manufacturing With the Best in the Business'),
(642, 115, '_home_companies_heading', 'field_5a7c51273a92e'),
(643, 115, 'home_hero_heading', 'Leader In Power Systems'),
(644, 115, '_home_hero_heading', 'field_5a7c5ec8b187c'),
(645, 115, 'location_1_url', 'https://goo.gl/maps/ZeAvuQc4Stu'),
(646, 115, '_location_1_url', 'field_5a7c51b0e5423'),
(647, 115, 'location_one_phone', '901-327-8261'),
(648, 115, '_location_one_phone', 'field_5a7c5351e5425'),
(649, 115, 'company_logo_1', '47'),
(650, 115, '_company_logo_1', 'field_5a81735be5837'),
(651, 115, 'company_logo_2', '51'),
(652, 115, '_company_logo_2', 'field_5a817396e5838'),
(653, 115, 'company_logo_3', '45'),
(654, 115, '_company_logo_3', 'field_5a8175477f92f'),
(655, 115, 'company_logo_4', '52'),
(656, 115, '_company_logo_4', 'field_5a817576af8fe'),
(657, 115, 'company_logo_5', '106'),
(658, 115, '_company_logo_5', 'field_5a817575af8fd'),
(659, 115, 'company_logo_6', '108'),
(660, 115, '_company_logo_6', 'field_5a817575af8fc'),
(661, 115, 'company_logo_7', '114'),
(662, 115, '_company_logo_7', 'field_5a817573af8fb'),
(663, 115, 'company_logo_8', '105'),
(664, 115, '_company_logo_8', 'field_5a817571af8fa'),
(668, 118, 'home_about', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(669, 118, '_home_about', 'field_5a7c45f700f27'),
(670, 118, 'home_about_image', '48'),
(671, 118, '_home_about_image', 'field_5a7c4862303eb'),
(672, 118, 'home_hero_image', '49'),
(673, 118, '_home_hero_image', 'field_5a7c4b6f73950'),
(674, 118, 'home_about_heading', 'About Power Equipment Co.'),
(675, 118, '_home_about_heading', 'field_5a7c4ce68b41d'),
(676, 118, 'home_about_content', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(677, 118, '_home_about_content', 'field_5a7c45f700f27'),
(678, 118, 'home_mission_heading', 'Your Energy Systems – Up & Running'),
(679, 118, '_home_mission_heading', 'field_5a7c4e3487b2a'),
(680, 118, 'home_mission_content', 'That''s the primary goal at Power Equipment Company as it has been for more than 85 years. By providing innovative solutions, quality products and service on demand, we have taken the guess work out of your systems'' performance so that you can rest easy.'),
(681, 118, '_home_mission_content', 'field_5a7c4e49ccfc3'),
(682, 118, 'home_companies_heading', 'Manufacturing With the Best in the Business'),
(683, 118, '_home_companies_heading', 'field_5a7c51273a92e'),
(684, 118, 'home_hero_heading', 'Leader In Power Systems'),
(685, 118, '_home_hero_heading', 'field_5a7c5ec8b187c'),
(686, 118, 'location_1_url', 'https://goo.gl/maps/ZeAvuQc4Stu'),
(687, 118, '_location_1_url', 'field_5a7c51b0e5423'),
(688, 118, 'location_one_phone', '901-327-8261'),
(689, 118, '_location_one_phone', 'field_5a7c5351e5425'),
(690, 118, 'company_logo_1', '47'),
(691, 118, '_company_logo_1', 'field_5a81735be5837'),
(692, 118, 'company_logo_2', '51'),
(693, 118, '_company_logo_2', 'field_5a817396e5838'),
(694, 118, 'company_logo_3', '45'),
(695, 118, '_company_logo_3', 'field_5a8175477f92f'),
(696, 118, 'company_logo_4', '52'),
(697, 118, '_company_logo_4', 'field_5a817576af8fe'),
(698, 118, 'company_logo_5', '116'),
(699, 118, '_company_logo_5', 'field_5a817575af8fd'),
(700, 118, 'company_logo_6', '108'),
(701, 118, '_company_logo_6', 'field_5a817575af8fc'),
(702, 118, 'company_logo_7', '114'),
(703, 118, '_company_logo_7', 'field_5a817573af8fb'),
(704, 118, 'company_logo_8', '105'),
(705, 118, '_company_logo_8', 'field_5a817571af8fa'),
(706, 121, '_wp_attached_file', '2018/02/ebara.png'),
(707, 121, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:109;s:6:"height";i:115;s:4:"file";s:17:"2018/02/ebara.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(708, 121, '_wp_attachment_image_alt', 'Ebara'),
(709, 122, 'home_about', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(710, 122, '_home_about', 'field_5a7c45f700f27'),
(711, 122, 'home_about_image', '48'),
(712, 122, '_home_about_image', 'field_5a7c4862303eb'),
(713, 122, 'home_hero_image', '49'),
(714, 122, '_home_hero_image', 'field_5a7c4b6f73950'),
(715, 122, 'home_about_heading', 'About Power Equipment Co.'),
(716, 122, '_home_about_heading', 'field_5a7c4ce68b41d'),
(717, 122, 'home_about_content', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(718, 122, '_home_about_content', 'field_5a7c45f700f27'),
(719, 122, 'home_mission_heading', 'Your Energy Systems – Up & Running'),
(720, 122, '_home_mission_heading', 'field_5a7c4e3487b2a'),
(721, 122, 'home_mission_content', 'That''s the primary goal at Power Equipment Company as it has been for more than 85 years. By providing innovative solutions, quality products and service on demand, we have taken the guess work out of your systems'' performance so that you can rest easy.'),
(722, 122, '_home_mission_content', 'field_5a7c4e49ccfc3'),
(723, 122, 'home_companies_heading', 'Manufacturing With the Best in the Business'),
(724, 122, '_home_companies_heading', 'field_5a7c51273a92e'),
(725, 122, 'home_hero_heading', 'Leader In Power Systems'),
(726, 122, '_home_hero_heading', 'field_5a7c5ec8b187c'),
(727, 122, 'location_1_url', 'https://goo.gl/maps/ZeAvuQc4Stu'),
(728, 122, '_location_1_url', 'field_5a7c51b0e5423'),
(729, 122, 'location_one_phone', '901-327-8261'),
(730, 122, '_location_one_phone', 'field_5a7c5351e5425'),
(731, 122, 'company_logo_1', '47'),
(732, 122, '_company_logo_1', 'field_5a81735be5837'),
(733, 122, 'company_logo_2', '51'),
(734, 122, '_company_logo_2', 'field_5a817396e5838'),
(735, 122, 'company_logo_3', '45'),
(736, 122, '_company_logo_3', 'field_5a8175477f92f'),
(737, 122, 'company_logo_4', '52'),
(738, 122, '_company_logo_4', 'field_5a817b3d2228d'),
(739, 122, 'company_logo_5', '116'),
(740, 122, '_company_logo_5', 'field_5a817575af8fd'),
(741, 122, 'company_logo_6', '108'),
(742, 122, '_company_logo_6', 'field_5a817575af8fc'),
(743, 122, 'company_logo_7', '114'),
(744, 122, '_company_logo_7', 'field_5a817573af8fb'),
(745, 122, 'company_logo_8', '121'),
(746, 122, '_company_logo_8', 'field_5a817571af8fa'),
(747, 123, '_wp_attached_file', '2018/02/mueller.jpg'),
(748, 123, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:114;s:6:"height";i:115;s:4:"file";s:19:"2018/02/mueller.jpg";s:5:"sizes";a:0:{}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1297093486";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:5:"Print";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(749, 123, '_wp_attachment_image_alt', 'Mueller Industries'),
(750, 124, 'home_about', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(751, 124, '_home_about', 'field_5a7c45f700f27'),
(752, 124, 'home_about_image', '48'),
(753, 124, '_home_about_image', 'field_5a7c4862303eb'),
(754, 124, 'home_hero_image', '49'),
(755, 124, '_home_hero_image', 'field_5a7c4b6f73950'),
(756, 124, 'home_about_heading', 'About Power Equipment Co.'),
(757, 124, '_home_about_heading', 'field_5a7c4ce68b41d'),
(758, 124, 'home_about_content', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(759, 124, '_home_about_content', 'field_5a7c45f700f27'),
(760, 124, 'home_mission_heading', 'Your Energy Systems – Up & Running'),
(761, 124, '_home_mission_heading', 'field_5a7c4e3487b2a'),
(762, 124, 'home_mission_content', 'That''s the primary goal at Power Equipment Company as it has been for more than 85 years. By providing innovative solutions, quality products and service on demand, we have taken the guess work out of your systems'' performance so that you can rest easy.'),
(763, 124, '_home_mission_content', 'field_5a7c4e49ccfc3'),
(764, 124, 'home_companies_heading', 'Manufacturing With the Best in the Business'),
(765, 124, '_home_companies_heading', 'field_5a7c51273a92e'),
(766, 124, 'home_hero_heading', 'Leader In Power Systems'),
(767, 124, '_home_hero_heading', 'field_5a7c5ec8b187c'),
(768, 124, 'location_1_url', 'https://goo.gl/maps/ZeAvuQc4Stu'),
(769, 124, '_location_1_url', 'field_5a7c51b0e5423'),
(770, 124, 'location_one_phone', '901-327-8261'),
(771, 124, '_location_one_phone', 'field_5a7c5351e5425'),
(772, 124, 'company_logo_1', '47'),
(773, 124, '_company_logo_1', 'field_5a81735be5837'),
(774, 124, 'company_logo_2', '51'),
(775, 124, '_company_logo_2', 'field_5a817396e5838'),
(776, 124, 'company_logo_3', '45'),
(777, 124, '_company_logo_3', 'field_5a8175477f92f'),
(778, 124, 'company_logo_4', '52'),
(779, 124, '_company_logo_4', 'field_5a817b3d2228d'),
(780, 124, 'company_logo_5', '123'),
(781, 124, '_company_logo_5', 'field_5a817575af8fd'),
(782, 124, 'company_logo_6', '108'),
(783, 124, '_company_logo_6', 'field_5a817575af8fc'),
(784, 124, 'company_logo_7', '114'),
(785, 124, '_company_logo_7', 'field_5a817573af8fb'),
(786, 124, 'company_logo_8', '121'),
(787, 124, '_company_logo_8', 'field_5a817571af8fa'),
(788, 125, '_wp_attached_file', '2018/02/cameron.png'),
(789, 125, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:215;s:6:"height";i:115;s:4:"file";s:19:"2018/02/cameron.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"cameron-150x115.png";s:5:"width";i:150;s:6:"height";i:115;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(790, 125, '_wp_attachment_image_alt', 'Cameron'),
(791, 126, 'home_about', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(792, 126, '_home_about', 'field_5a7c45f700f27'),
(793, 126, 'home_about_image', '48'),
(794, 126, '_home_about_image', 'field_5a7c4862303eb'),
(795, 126, 'home_hero_image', '49'),
(796, 126, '_home_hero_image', 'field_5a7c4b6f73950'),
(797, 126, 'home_about_heading', 'About Power Equipment Co.'),
(798, 126, '_home_about_heading', 'field_5a7c4ce68b41d'),
(799, 126, 'home_about_content', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(800, 126, '_home_about_content', 'field_5a7c45f700f27'),
(801, 126, 'home_mission_heading', 'Your Energy Systems – Up & Running'),
(802, 126, '_home_mission_heading', 'field_5a7c4e3487b2a'),
(803, 126, 'home_mission_content', 'That''s the primary goal at Power Equipment Company as it has been for more than 85 years. By providing innovative solutions, quality products and service on demand, we have taken the guess work out of your systems'' performance so that you can rest easy.'),
(804, 126, '_home_mission_content', 'field_5a7c4e49ccfc3'),
(805, 126, 'home_companies_heading', 'Manufacturing With the Best in the Business'),
(806, 126, '_home_companies_heading', 'field_5a7c51273a92e'),
(807, 126, 'home_hero_heading', 'Leader In Power Systems'),
(808, 126, '_home_hero_heading', 'field_5a7c5ec8b187c'),
(809, 126, 'location_1_url', 'https://goo.gl/maps/ZeAvuQc4Stu'),
(810, 126, '_location_1_url', 'field_5a7c51b0e5423'),
(811, 126, 'location_one_phone', '901-327-8261'),
(812, 126, '_location_one_phone', 'field_5a7c5351e5425'),
(813, 126, 'company_logo_1', '47'),
(814, 126, '_company_logo_1', 'field_5a81735be5837'),
(815, 126, 'company_logo_2', '51'),
(816, 126, '_company_logo_2', 'field_5a817396e5838'),
(817, 126, 'company_logo_3', '45'),
(818, 126, '_company_logo_3', 'field_5a8175477f92f'),
(819, 126, 'company_logo_4', '52'),
(820, 126, '_company_logo_4', 'field_5a817b3d2228d'),
(821, 126, 'company_logo_5', '123'),
(822, 126, '_company_logo_5', 'field_5a817575af8fd'),
(823, 126, 'company_logo_6', '125'),
(824, 126, '_company_logo_6', 'field_5a817575af8fc'),
(825, 126, 'company_logo_7', '114'),
(826, 126, '_company_logo_7', 'field_5a817573af8fb'),
(827, 126, 'company_logo_8', '121'),
(828, 126, '_company_logo_8', 'field_5a817571af8fa'),
(829, 6, 'company_1_logo', '47'),
(830, 6, '_company_1_logo', 'field_5a81735be5837'),
(831, 6, 'company_2_logo', '45'),
(832, 6, '_company_2_logo', 'field_5a817396e5838'),
(833, 6, 'company_3_logo', '51'),
(834, 6, '_company_3_logo', 'field_5a8175477f92f'),
(835, 6, 'company_4_logo', '52'),
(836, 6, '_company_4_logo', 'field_5a817b3d2228d'),
(837, 6, 'company_5_logo', '123'),
(838, 6, '_company_5_logo', 'field_5a817575af8fd'),
(839, 6, 'company_6_logo', '114'),
(840, 6, '_company_6_logo', 'field_5a817575af8fc'),
(841, 6, 'company_7_logo', '121'),
(842, 6, '_company_7_logo', 'field_5a817573af8fb'),
(843, 6, 'company_8_logo', '125'),
(844, 6, '_company_8_logo', 'field_5a817571af8fa'),
(845, 126, 'company_1_logo', ''),
(846, 126, '_company_1_logo', 'field_5a81735be5837'),
(847, 126, 'company_2_logo', ''),
(848, 126, '_company_2_logo', 'field_5a817396e5838'),
(849, 126, 'company_3_logo', ''),
(850, 126, '_company_3_logo', 'field_5a8175477f92f'),
(851, 126, 'company_4_logo', ''),
(852, 126, '_company_4_logo', 'field_5a817b3d2228d'),
(853, 126, 'company_5_logo', ''),
(854, 126, '_company_5_logo', 'field_5a817575af8fd'),
(855, 126, 'company_6_logo', ''),
(856, 126, '_company_6_logo', 'field_5a817575af8fc'),
(857, 126, 'company_7_logo', ''),
(858, 126, '_company_7_logo', 'field_5a817573af8fb'),
(859, 126, 'company_8_logo', ''),
(860, 126, '_company_8_logo', 'field_5a817571af8fa'),
(861, 6, 'company_1_url', 'http://www.cleaverbrooks.com/'),
(862, 6, '_company_1_url', 'field_5a817f46b9295'),
(863, 6, 'company_2_url', 'https://www.armstronginternational.com/'),
(864, 6, '_company_2_url', 'field_5a817f5eb9296'),
(865, 6, 'company_3_url', 'http://www.vikingpump.com/'),
(866, 6, '_company_3_url', 'field_5a817f7cb9297'),
(867, 6, 'company_4_url', 'http://www.gardnerdenver.com/en'),
(868, 6, '_company_4_url', 'field_5a817f8ab9298'),
(869, 6, 'company_5_url', 'http://www.muellerindustries.com/'),
(870, 6, '_company_5_url', 'field_5a817f9cb9299'),
(871, 6, 'company_6_url', 'http://parkerboiler.com/'),
(872, 6, '_company_6_url', 'field_5a817fabb929a'),
(873, 6, 'company_7_url', 'http://www.pumpsebara.com/'),
(874, 6, '_company_7_url', 'field_5a817fb6b929b'),
(875, 6, 'company_8_url', 'http://cameron.slb.com/'),
(876, 6, '_company_8_url', 'field_5a817fc2b929c'),
(877, 135, 'home_about', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(878, 135, '_home_about', 'field_5a7c45f700f27'),
(879, 135, 'home_about_image', '48'),
(880, 135, '_home_about_image', 'field_5a7c4862303eb'),
(881, 135, 'home_hero_image', '49'),
(882, 135, '_home_hero_image', 'field_5a7c4b6f73950'),
(883, 135, 'home_about_heading', 'About Power Equipment Co.'),
(884, 135, '_home_about_heading', 'field_5a7c4ce68b41d'),
(885, 135, 'home_about_content', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(886, 135, '_home_about_content', 'field_5a7c45f700f27'),
(887, 135, 'home_mission_heading', 'Your Energy Systems – Up & Running'),
(888, 135, '_home_mission_heading', 'field_5a7c4e3487b2a'),
(889, 135, 'home_mission_content', 'That''s the primary goal at Power Equipment Company as it has been for more than 85 years. By providing innovative solutions, quality products and service on demand, we have taken the guess work out of your systems'' performance so that you can rest easy.'),
(890, 135, '_home_mission_content', 'field_5a7c4e49ccfc3'),
(891, 135, 'home_companies_heading', 'Manufacturing With the Best in the Business'),
(892, 135, '_home_companies_heading', 'field_5a7c51273a92e'),
(893, 135, 'home_hero_heading', 'Leader In Power Systems'),
(894, 135, '_home_hero_heading', 'field_5a7c5ec8b187c'),
(895, 135, 'location_1_url', 'https://goo.gl/maps/ZeAvuQc4Stu'),
(896, 135, '_location_1_url', 'field_5a7c51b0e5423'),
(897, 135, 'location_one_phone', '901-327-8261'),
(898, 135, '_location_one_phone', 'field_5a7c5351e5425'),
(899, 135, 'company_logo_1', '47'),
(900, 135, '_company_logo_1', 'field_5a81735be5837'),
(901, 135, 'company_logo_2', '51'),
(902, 135, '_company_logo_2', 'field_5a817396e5838'),
(903, 135, 'company_logo_3', '45'),
(904, 135, '_company_logo_3', 'field_5a8175477f92f'),
(905, 135, 'company_logo_4', '52'),
(906, 135, '_company_logo_4', 'field_5a817b3d2228d'),
(907, 135, 'company_logo_5', '123'),
(908, 135, '_company_logo_5', 'field_5a817575af8fd'),
(909, 135, 'company_logo_6', '125'),
(910, 135, '_company_logo_6', 'field_5a817575af8fc'),
(911, 135, 'company_logo_7', '114'),
(912, 135, '_company_logo_7', 'field_5a817573af8fb'),
(913, 135, 'company_logo_8', '121'),
(914, 135, '_company_logo_8', 'field_5a817571af8fa'),
(915, 135, 'company_1_logo', '47'),
(916, 135, '_company_1_logo', 'field_5a81735be5837'),
(917, 135, 'company_2_logo', '45'),
(918, 135, '_company_2_logo', 'field_5a817396e5838'),
(919, 135, 'company_3_logo', '51'),
(920, 135, '_company_3_logo', 'field_5a8175477f92f'),
(921, 135, 'company_4_logo', '52'),
(922, 135, '_company_4_logo', 'field_5a817b3d2228d'),
(923, 135, 'company_5_logo', '123'),
(924, 135, '_company_5_logo', 'field_5a817575af8fd'),
(925, 135, 'company_6_logo', '114'),
(926, 135, '_company_6_logo', 'field_5a817575af8fc'),
(927, 135, 'company_7_logo', '121'),
(928, 135, '_company_7_logo', 'field_5a817573af8fb'),
(929, 135, 'company_8_logo', '125'),
(930, 135, '_company_8_logo', 'field_5a817571af8fa'),
(931, 135, 'company_1_url', 'http://www.cleaverbrooks.com/'),
(932, 135, '_company_1_url', 'field_5a817f46b9295'),
(933, 135, 'company_2_url', ''),
(934, 135, '_company_2_url', 'field_5a817f5eb9296'),
(935, 135, 'company_3_url', ''),
(936, 135, '_company_3_url', 'field_5a817f7cb9297'),
(937, 135, 'company_4_url', ''),
(938, 135, '_company_4_url', 'field_5a817f8ab9298'),
(939, 135, 'company_5_url', ''),
(940, 135, '_company_5_url', 'field_5a817f9cb9299'),
(941, 135, 'company_6_url', ''),
(942, 135, '_company_6_url', 'field_5a817fabb929a'),
(943, 135, 'company_7_url', ''),
(944, 135, '_company_7_url', 'field_5a817fb6b929b'),
(945, 135, 'company_8_url', ''),
(946, 135, '_company_8_url', 'field_5a817fc2b929c'),
(947, 136, 'home_about', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(948, 136, '_home_about', 'field_5a7c45f700f27'),
(949, 136, 'home_about_image', '48'),
(950, 136, '_home_about_image', 'field_5a7c4862303eb'),
(951, 136, 'home_hero_image', '49'),
(952, 136, '_home_hero_image', 'field_5a7c4b6f73950'),
(953, 136, 'home_about_heading', 'About Power Equipment Co.'),
(954, 136, '_home_about_heading', 'field_5a7c4ce68b41d'),
(955, 136, 'home_about_content', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(956, 136, '_home_about_content', 'field_5a7c45f700f27'),
(957, 136, 'home_mission_heading', 'Your Energy Systems – Up & Running'),
(958, 136, '_home_mission_heading', 'field_5a7c4e3487b2a'),
(959, 136, 'home_mission_content', 'That''s the primary goal at Power Equipment Company as it has been for more than 85 years. By providing innovative solutions, quality products and service on demand, we have taken the guess work out of your systems'' performance so that you can rest easy.'),
(960, 136, '_home_mission_content', 'field_5a7c4e49ccfc3'),
(961, 136, 'home_companies_heading', 'Manufacturing With the Best in the Business'),
(962, 136, '_home_companies_heading', 'field_5a7c51273a92e'),
(963, 136, 'home_hero_heading', 'Leader In Power Systems'),
(964, 136, '_home_hero_heading', 'field_5a7c5ec8b187c'),
(965, 136, 'location_1_url', 'https://goo.gl/maps/ZeAvuQc4Stu'),
(966, 136, '_location_1_url', 'field_5a7c51b0e5423'),
(967, 136, 'location_one_phone', '901-327-8261'),
(968, 136, '_location_one_phone', 'field_5a7c5351e5425'),
(969, 136, 'company_logo_1', '47'),
(970, 136, '_company_logo_1', 'field_5a81735be5837'),
(971, 136, 'company_logo_2', '51'),
(972, 136, '_company_logo_2', 'field_5a817396e5838'),
(973, 136, 'company_logo_3', '45'),
(974, 136, '_company_logo_3', 'field_5a8175477f92f'),
(975, 136, 'company_logo_4', '52'),
(976, 136, '_company_logo_4', 'field_5a817b3d2228d'),
(977, 136, 'company_logo_5', '123'),
(978, 136, '_company_logo_5', 'field_5a817575af8fd'),
(979, 136, 'company_logo_6', '125'),
(980, 136, '_company_logo_6', 'field_5a817575af8fc'),
(981, 136, 'company_logo_7', '114'),
(982, 136, '_company_logo_7', 'field_5a817573af8fb'),
(983, 136, 'company_logo_8', '121'),
(984, 136, '_company_logo_8', 'field_5a817571af8fa'),
(985, 136, 'company_1_logo', '47'),
(986, 136, '_company_1_logo', 'field_5a81735be5837'),
(987, 136, 'company_2_logo', '45'),
(988, 136, '_company_2_logo', 'field_5a817396e5838'),
(989, 136, 'company_3_logo', '51'),
(990, 136, '_company_3_logo', 'field_5a8175477f92f'),
(991, 136, 'company_4_logo', '52'),
(992, 136, '_company_4_logo', 'field_5a817b3d2228d'),
(993, 136, 'company_5_logo', '123'),
(994, 136, '_company_5_logo', 'field_5a817575af8fd'),
(995, 136, 'company_6_logo', '114'),
(996, 136, '_company_6_logo', 'field_5a817575af8fc'),
(997, 136, 'company_7_logo', '121'),
(998, 136, '_company_7_logo', 'field_5a817573af8fb'),
(999, 136, 'company_8_logo', '125'),
(1000, 136, '_company_8_logo', 'field_5a817571af8fa'),
(1001, 136, 'company_1_url', 'http://www.cleaverbrooks.com/'),
(1002, 136, '_company_1_url', 'field_5a817f46b9295'),
(1003, 136, 'company_2_url', 'https://www.armstronginternational.com/'),
(1004, 136, '_company_2_url', 'field_5a817f5eb9296'),
(1005, 136, 'company_3_url', 'http://www.vikingpump.com/'),
(1006, 136, '_company_3_url', 'field_5a817f7cb9297'),
(1007, 136, 'company_4_url', 'http://www.gardnerdenver.com/en'),
(1008, 136, '_company_4_url', 'field_5a817f8ab9298'),
(1009, 136, 'company_5_url', 'http://www.muellerindustries.com/'),
(1010, 136, '_company_5_url', 'field_5a817f9cb9299'),
(1011, 136, 'company_6_url', 'http://parkerboiler.com/'),
(1012, 136, '_company_6_url', 'field_5a817fabb929a'),
(1013, 136, 'company_7_url', 'http://www.pumpsebara.com/'),
(1014, 136, '_company_7_url', 'field_5a817fb6b929b'),
(1015, 136, 'company_8_url', 'http://cameron.slb.com/'),
(1016, 136, '_company_8_url', 'field_5a817fc2b929c'),
(1017, 139, 'home_about', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(1018, 139, '_home_about', 'field_5a7c45f700f27'),
(1019, 139, 'home_about_image', '48'),
(1020, 139, '_home_about_image', 'field_5a81881327a2d'),
(1021, 139, 'home_hero_image', '49'),
(1022, 139, '_home_hero_image', 'field_5a7c4b6f73950'),
(1023, 139, 'home_about_heading', 'About Power Equipment Co.'),
(1024, 139, '_home_about_heading', 'field_5a81883127a2e'),
(1025, 139, 'home_about_content', 'Power Equipment Company has been offering effective energy solutions since 1927. Our goal is to provide you with the highest quality energy solutions on the market today as well as immediate service. No matter what your needs may be, Power Equipment Company is happy to provide a solution. We currently serve customers in Arkansas, Kentucky, Mississippi, Missouri and Tennessee.'),
(1026, 139, '_home_about_content', 'field_5a81884f27a2f'),
(1027, 139, 'home_mission_heading', 'Your Energy Systems – Up & Running'),
(1028, 139, '_home_mission_heading', 'field_5a7c4e3487b2a'),
(1029, 139, 'home_mission_content', 'That''s the primary goal at Power Equipment Company as it has been for more than 85 years. By providing innovative solutions, quality products and service on demand, we have taken the guess work out of your systems'' performance so that you can rest easy.'),
(1030, 139, '_home_mission_content', 'field_5a7c4e49ccfc3'),
(1031, 139, 'home_companies_heading', 'Manufacturing With the Best in the Business'),
(1032, 139, '_home_companies_heading', 'field_5a7c51273a92e'),
(1033, 139, 'home_hero_heading', 'Leader In Power Systems'),
(1034, 139, '_home_hero_heading', 'field_5a7c5ec8b187c'),
(1035, 139, 'location_1_url', 'https://goo.gl/maps/ZeAvuQc4Stu'),
(1036, 139, '_location_1_url', 'field_5a7c51b0e5423'),
(1037, 139, 'location_one_phone', '901-327-8261'),
(1038, 139, '_location_one_phone', 'field_5a7c5351e5425'),
(1039, 139, 'company_logo_1', '47'),
(1040, 139, '_company_logo_1', 'field_5a81735be5837'),
(1041, 139, 'company_logo_2', '51'),
(1042, 139, '_company_logo_2', 'field_5a817396e5838'),
(1043, 139, 'company_logo_3', '45'),
(1044, 139, '_company_logo_3', 'field_5a8175477f92f'),
(1045, 139, 'company_logo_4', '52'),
(1046, 139, '_company_logo_4', 'field_5a817b3d2228d'),
(1047, 139, 'company_logo_5', '123'),
(1048, 139, '_company_logo_5', 'field_5a817575af8fd'),
(1049, 139, 'company_logo_6', '125'),
(1050, 139, '_company_logo_6', 'field_5a817575af8fc'),
(1051, 139, 'company_logo_7', '114'),
(1052, 139, '_company_logo_7', 'field_5a817573af8fb'),
(1053, 139, 'company_logo_8', '121'),
(1054, 139, '_company_logo_8', 'field_5a817571af8fa'),
(1055, 139, 'company_1_logo', '47'),
(1056, 139, '_company_1_logo', 'field_5a81735be5837'),
(1057, 139, 'company_2_logo', '45'),
(1058, 139, '_company_2_logo', 'field_5a817396e5838'),
(1059, 139, 'company_3_logo', '51'),
(1060, 139, '_company_3_logo', 'field_5a8175477f92f'),
(1061, 139, 'company_4_logo', '52'),
(1062, 139, '_company_4_logo', 'field_5a817b3d2228d'),
(1063, 139, 'company_5_logo', '123'),
(1064, 139, '_company_5_logo', 'field_5a817575af8fd'),
(1065, 139, 'company_6_logo', '114'),
(1066, 139, '_company_6_logo', 'field_5a817575af8fc'),
(1067, 139, 'company_7_logo', '121'),
(1068, 139, '_company_7_logo', 'field_5a817573af8fb'),
(1069, 139, 'company_8_logo', '125'),
(1070, 139, '_company_8_logo', 'field_5a817571af8fa'),
(1071, 139, 'company_1_url', 'http://www.cleaverbrooks.com/'),
(1072, 139, '_company_1_url', 'field_5a817f46b9295'),
(1073, 139, 'company_2_url', 'https://www.armstronginternational.com/'),
(1074, 139, '_company_2_url', 'field_5a817f5eb9296'),
(1075, 139, 'company_3_url', 'http://www.vikingpump.com/'),
(1076, 139, '_company_3_url', 'field_5a817f7cb9297'),
(1077, 139, 'company_4_url', 'http://www.gardnerdenver.com/en'),
(1078, 139, '_company_4_url', 'field_5a817f8ab9298'),
(1079, 139, 'company_5_url', 'http://www.muellerindustries.com/'),
(1080, 139, '_company_5_url', 'field_5a817f9cb9299'),
(1081, 139, 'company_6_url', 'http://parkerboiler.com/'),
(1082, 139, '_company_6_url', 'field_5a817fabb929a'),
(1083, 139, 'company_7_url', 'http://www.pumpsebara.com/'),
(1084, 139, '_company_7_url', 'field_5a817fb6b929b'),
(1085, 139, 'company_8_url', 'http://cameron.slb.com/'),
(1086, 139, '_company_8_url', 'field_5a817fc2b929c'),
(1087, 70, '_wp_trash_meta_status', 'publish'),
(1088, 70, '_wp_trash_meta_time', '1518441656'),
(1089, 70, '_wp_desired_post_slug', 'group_5a7c592a129a9'),
(1090, 71, '_wp_trash_meta_status', 'publish'),
(1091, 71, '_wp_trash_meta_time', '1518441656'),
(1092, 71, '_wp_desired_post_slug', 'field_5a7c51b0e5423'),
(1093, 73, '_wp_trash_meta_status', 'publish'),
(1094, 73, '_wp_trash_meta_time', '1518441656'),
(1095, 73, '_wp_desired_post_slug', 'field_5a7c5351e5425'),
(1096, 143, '_edit_last', '1'),
(1097, 143, '_edit_lock', '1518443334:1'),
(1098, 145, '_wp_attached_file', '2018/02/industrial-banner.jpg'),
(1099, 145, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2400;s:6:"height";i:400;s:4:"file";s:29:"2018/02/industrial-banner.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"industrial-banner-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"industrial-banner-300x50.jpg";s:5:"width";i:300;s:6:"height";i:50;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:29:"industrial-banner-768x128.jpg";s:5:"width";i:768;s:6:"height";i:128;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:30:"industrial-banner-1024x171.jpg";s:5:"width";i:1024;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1100, 16, 'banner', ''),
(1101, 16, '_banner', 'field_5a819be396175'),
(1102, 146, 'banner', '145'),
(1103, 146, '_banner', 'field_5a8194c0b65ef'),
(1104, 147, '_edit_last', '1'),
(1105, 148, '_edit_last', '1'),
(1106, 147, '_edit_lock', '1518443394:1'),
(1107, 148, '_edit_lock', '1518550730:1'),
(1108, 147, '_wp_trash_meta_status', 'publish'),
(1109, 147, '_wp_trash_meta_time', '1518443545'),
(1110, 147, '_wp_desired_post_slug', 'group_5a819bdaefce6'),
(1111, 149, '_wp_trash_meta_status', 'publish'),
(1112, 149, '_wp_trash_meta_time', '1518443545'),
(1113, 149, '_wp_desired_post_slug', 'field_5a819be3eee18'),
(1114, 143, '_wp_trash_meta_status', 'publish'),
(1115, 143, '_wp_trash_meta_time', '1518454117'),
(1116, 143, '_wp_desired_post_slug', 'group_5a8194baabfaf'),
(1117, 144, '_wp_trash_meta_status', 'publish'),
(1118, 144, '_wp_trash_meta_time', '1518454117'),
(1119, 144, '_wp_desired_post_slug', 'field_5a8194c0b65ef'),
(1120, 152, 'banner', '145'),
(1121, 152, '_banner', 'field_5a819be396175'),
(1122, 153, 'banner', '145'),
(1123, 153, '_banner', 'field_5a819be396175'),
(1124, 154, 'banner', '145'),
(1125, 154, '_banner', 'field_5a819be396175'),
(1126, 155, '_wp_attached_file', '2018/02/industrial-banner-h300.jpg'),
(1127, 155, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2400;s:6:"height";i:300;s:4:"file";s:34:"2018/02/industrial-banner-h300.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"industrial-banner-h300-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"industrial-banner-h300-300x38.jpg";s:5:"width";i:300;s:6:"height";i:38;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:33:"industrial-banner-h300-768x96.jpg";s:5:"width";i:768;s:6:"height";i:96;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:35:"industrial-banner-h300-1024x128.jpg";s:5:"width";i:1024;s:6:"height";i:128;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(1128, 156, 'banner', '155'),
(1129, 156, '_banner', 'field_5a819be396175'),
(1130, 16, '_thumbnail_id', '155'),
(1131, 157, 'banner', '35'),
(1132, 157, '_banner', 'field_5a819be396175'),
(1133, 158, 'banner', ''),
(1134, 158, '_banner', 'field_5a819be396175'),
(1135, 155, '_edit_lock', '1518457299:1'),
(1136, 18, '_thumbnail_id', '155'),
(1137, 163, 'banner', ''),
(1138, 163, '_banner', 'field_5a819be396175');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-02-06 06:18:07', '2018-02-06 06:18:07', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2018-02-08 14:36:21', '2018-02-08 14:36:21', '', 0, 'http://localhost:8888/?p=1', 0, 'post', '', 1),
(2, 1, '2018-02-06 06:18:07', '2018-02-06 06:18:07', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost:8888/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2018-02-06 07:55:41', '2018-02-06 07:55:41', '', 0, 'http://localhost:8888/?page_id=2', 0, 'page', '', 0),
(5, 1, '2018-02-06 07:55:41', '2018-02-06 07:55:41', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost:8888/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-02-06 07:55:41', '2018-02-06 07:55:41', '', 2, 'http://localhost:8888/2018/02/06/2-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2018-02-06 07:55:47', '2018-02-06 07:55:47', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-02-12 12:28:35', '2018-02-12 12:28:35', '', 0, 'http://localhost:8888/?page_id=6', 0, 'page', '', 0),
(7, 1, '2018-02-06 07:55:47', '2018-02-06 07:55:47', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-06 07:55:47', '2018-02-06 07:55:47', '', 6, 'http://localhost:8888/2018/02/06/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2018-02-06 07:59:47', '2018-02-06 07:59:47', '', 'lg-logo', '', 'inherit', 'open', 'closed', '', 'lg-logo', '', '', '2018-02-06 07:59:47', '2018-02-06 07:59:47', '', 0, 'http://localhost:8888/wp-content/uploads/2018/02/lg-logo.png', 0, 'attachment', 'image/png', 0),
(9, 1, '2018-02-06 07:59:54', '2018-02-06 07:59:54', '', 'cropped-lg-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-lg-logo-png', '', '', '2018-02-06 07:59:54', '2018-02-06 07:59:54', '', 0, 'http://localhost:8888/wp-content/uploads/2018/02/cropped-lg-logo.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2018-02-06 07:59:56', '2018-02-06 07:59:56', '{\n    "underscores-child::header_image": {\n        "value": "http://localhost:8888/wp-content/uploads/2018/02/cropped-lg-logo.png",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-06 07:59:56"\n    },\n    "underscores-child::header_image_data": {\n        "value": {\n            "url": "http://localhost:8888/wp-content/uploads/2018/02/cropped-lg-logo.png",\n            "thumbnail_url": "http://localhost:8888/wp-content/uploads/2018/02/cropped-lg-logo.png",\n            "timestamp": 1517903994815,\n            "attachment_id": 9,\n            "width": 1000,\n            "height": 250\n        },\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-06 07:59:56"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4edc3379-f0de-434f-a5e9-23424e3f7597', '', '', '2018-02-06 07:59:56', '2018-02-06 07:59:56', '', 0, 'http://localhost:8888/2018/02/06/4edc3379-f0de-434f-a5e9-23424e3f7597/', 0, 'customize_changeset', '', 0),
(11, 1, '2018-02-06 08:01:48', '2018-02-06 08:01:48', '{\n    "underscores-child::header_image": {\n        "value": "remove-header",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-06 08:01:48"\n    },\n    "underscores-child::header_image_data": {\n        "value": "remove-header",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-02-06 08:01:48"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ef543011-4b78-46f6-b0b1-08b5239437ae', '', '', '2018-02-06 08:01:48', '2018-02-06 08:01:48', '', 0, 'http://localhost:8888/2018/02/06/ef543011-4b78-46f6-b0b1-08b5239437ae/', 0, 'customize_changeset', '', 0),
(12, 1, '2018-02-06 08:14:38', '2018-02-06 08:14:38', '', 'Auto Draft', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2018-02-06 08:14:38', '2018-02-06 08:14:38', '', 0, 'http://localhost:8888/?post_type=acf&#038;p=12', 0, 'acf', '', 0),
(14, 1, '2018-02-06 09:55:33', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-06 09:55:33', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=14', 1, 'nav_menu_item', '', 0),
(15, 1, '2018-02-06 09:55:33', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-06 09:55:33', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2018-02-06 09:55:59', '2018-02-06 09:55:59', '<p>Power Equipment Company is able to fill your immediate short-term need for boilers, compressors, pumps as well as the region’s best selection of specialty and used equipment. In the event that your equipment goes down, Power Equipment Company understands that production can''t just stop. The show must go on and we are here to serve you.</p>\r\n\r\n<p>Your needs aren''t 9am-5pm and neither are we; call our 24/7 emergency line (1-800-222-7326) and we will have a truck out to you in no time.</p>\r\n\r\n<p>Power Equipment Company has a full line of ready to go boilers, compressors, pumps and litany of specialty equipment products to keep your power systems up and running. We''re here to find the solution that''s right for you (901) 327-8261.</p>\r\n\r\n<h3>Our Service Does Not Stop There.</h3>\r\n<p>Our knowledgeable customer service team will carry you through the entire process of regaining full plant power. We set up your rental, schedule a service cal to assess your repair needs and respond timely to those needs in order to ensure your facility is not losing valuable production time. With over 75 years of service to Memphis and the Mid-South, we have the reputation to back our promises. With trusted partners like Kellogg and Baptist, we keep Memphis running, guaranteed. </p>', 'Rentals', '', 'publish', 'closed', 'closed', '', 'rentals', '', '', '2018-02-26 02:03:12', '2018-02-26 02:03:12', '', 0, 'http://localhost:8888/?page_id=16', 1, 'page', '', 0),
(17, 1, '2018-02-06 09:55:59', '2018-02-06 09:55:59', '', 'Rentals', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-02-06 09:55:59', '2018-02-06 09:55:59', '', 16, 'http://localhost:8888/2018/02/06/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-02-06 09:56:08', '2018-02-06 09:56:08', 'Power Equipment Company (aka Power Equipment of Memphis) specializes in energy systems and heat generating products, providing the knowledge, products, services and supplies necessary to achieve peak performance in your energy systems. The company offers a variety of boilers, compressors, pumps as well as specialty and used equipment. We also provide a host of services such as equipment rental, preventative maintenance programs, flame safeguard control upgrades, annual inspections, refractory repair/replacement, burner and fuel conversions, steam system surveys and service on demand, all necessary to keep you operating under any condition. Interested in learning more? Give us a call at 901-327-8261.\r\n\r\nA leader in power equipment for over 85 years, we set the highest standard for innovation. We believe in change - in our products and in ourselves. We believe in solutions over sales with a concentration on energy solutions and savings. Our knowledge of the industry, product placement efficiency and friendliness and accessibility are top priorities for our employees. We provide our company representatives, service technicians and engineers ongoing training and certifications to offer the newest measures and methods available. We offer rental and maintenance solutions and specialty and used equipment, all with savings in mind. We offer 24 hour emergency service and fulfill next day shipments for over 50% of all orders placed. We have a long standing history with our manufacturers who are also leaders in the industry - many of whom we are the exclusive territory provider, guaranteeing the best quality products.\r\n\r\nAs a family owned and operated company, we believe that there are a number of key attributes that form our success - our guiding principals, our team and you. Building lasting relationships and sharing them with our employees, brands and customers as well as our community partners, ensures the continued success of our organization’s mission and values.', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2018-02-12 17:58:15', '2018-02-12 17:58:15', '', 0, 'http://localhost:8888/?page_id=18', 2, 'page', '', 0),
(19, 1, '2018-02-06 09:56:08', '2018-02-06 09:56:08', '', 'About', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-02-06 09:56:08', '2018-02-06 09:56:08', '', 18, 'http://localhost:8888/2018/02/06/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-02-06 09:56:23', '2018-02-06 09:56:23', '', 'Equipment', '', 'publish', 'closed', 'closed', '', 'equipment', '', '', '2018-02-06 10:14:58', '2018-02-06 10:14:58', '', 0, 'http://localhost:8888/?page_id=20', 3, 'page', '', 0),
(21, 1, '2018-02-06 09:56:23', '2018-02-06 09:56:23', '', 'Equipment', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2018-02-06 09:56:23', '2018-02-06 09:56:23', '', 20, 'http://localhost:8888/2018/02/06/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-02-06 09:56:33', '2018-02-06 09:56:33', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2018-02-06 10:14:58', '2018-02-06 10:14:58', '', 0, 'http://localhost:8888/?page_id=22', 4, 'page', '', 0),
(23, 1, '2018-02-06 09:56:33', '2018-02-06 09:56:33', '', 'Services', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-02-06 09:56:33', '2018-02-06 09:56:33', '', 22, 'http://localhost:8888/2018/02/06/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-02-06 09:56:41', '2018-02-06 09:56:41', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-02-06 10:14:58', '2018-02-06 10:14:58', '', 0, 'http://localhost:8888/?page_id=24', 5, 'page', '', 0),
(25, 1, '2018-02-06 09:56:41', '2018-02-06 09:56:41', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-02-06 09:56:41', '2018-02-06 09:56:41', '', 24, 'http://localhost:8888/2018/02/06/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2018-02-06 09:56:52', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-02-06 09:56:52', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=26', 1, 'nav_menu_item', '', 0),
(27, 1, '2018-02-06 09:57:26', '2018-02-06 09:57:26', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2018-02-06 09:57:26', '2018-02-06 09:57:26', '', 0, 'http://localhost:8888/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2018-02-06 09:57:26', '2018-02-06 09:57:26', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2018-02-06 09:57:26', '2018-02-06 09:57:26', '', 0, 'http://localhost:8888/?p=28', 2, 'nav_menu_item', '', 0),
(29, 1, '2018-02-06 09:57:26', '2018-02-06 09:57:26', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2018-02-06 09:57:26', '2018-02-06 09:57:26', '', 0, 'http://localhost:8888/?p=29', 3, 'nav_menu_item', '', 0),
(30, 1, '2018-02-06 09:57:26', '2018-02-06 09:57:26', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2018-02-06 09:57:26', '2018-02-06 09:57:26', '', 0, 'http://localhost:8888/?p=30', 4, 'nav_menu_item', '', 0),
(31, 1, '2018-02-06 09:57:26', '2018-02-06 09:57:26', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2018-02-06 09:57:26', '2018-02-06 09:57:26', '', 0, 'http://localhost:8888/?p=31', 5, 'nav_menu_item', '', 0),
(32, 1, '2018-02-06 09:57:26', '2018-02-06 09:57:26', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2018-02-06 09:57:26', '2018-02-06 09:57:26', '', 0, 'http://localhost:8888/?p=32', 6, 'nav_menu_item', '', 0),
(33, 1, '2018-02-06 10:17:24', '2018-02-06 10:17:24', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'favicon', '', '', '2018-02-06 10:17:24', '2018-02-06 10:17:24', '', 0, 'http://localhost:8888/wp-content/uploads/2018/02/favicon.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2018-02-06 10:34:01', '2018-02-06 10:34:01', '', '24-7', '', 'inherit', 'open', 'closed', '', '24-7', '', '', '2018-02-06 10:34:01', '2018-02-06 10:34:01', '', 0, 'http://localhost:8888/wp-content/uploads/2018/02/24-7.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2018-02-06 10:34:01', '2018-02-06 10:34:01', '', 'twp-logo', '', 'inherit', 'open', 'closed', '', 'twp-logo', '', '', '2018-02-12 17:37:42', '2018-02-12 17:37:42', '', 16, 'http://localhost:8888/wp-content/uploads/2018/02/twp-logo.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2018-02-06 11:34:18', '2018-02-06 11:34:18', '', 'search-icon', '', 'inherit', 'open', 'closed', '', 'search-icon', '', '', '2018-02-06 11:34:18', '2018-02-06 11:34:18', '', 0, 'http://localhost:8888/wp-content/uploads/2018/02/search-icon.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2018-02-06 12:12:09', '2018-02-06 12:12:09', '', 'footer-logo', '', 'inherit', 'open', 'closed', '', 'footer-logo', '', '', '2018-02-06 12:12:09', '2018-02-06 12:12:09', '', 0, 'http://localhost:8888/wp-content/uploads/2018/02/footer-logo.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2018-02-06 14:31:37', '2018-02-06 14:31:37', '<p>Test content ya''ll. Test content ya''ll. Test content ya''ll. Test content ya''ll</p>', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-06 14:31:37', '2018-02-06 14:31:37', '', 6, 'http://localhost:8888/2018/02/06/6-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2018-02-06 14:49:28', '2018-02-06 14:49:28', '', 'power-plant', '', 'inherit', 'open', 'closed', '', 'power-plant', '', '', '2018-02-06 14:49:28', '2018-02-06 14:49:28', '', 0, 'http://localhost:8888/wp-content/uploads/2018/02/power-plant.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2018-02-06 14:49:30', '2018-02-06 14:49:30', '', 'vintage-power-eq', '', 'inherit', 'open', 'closed', '', 'vintage-power-eq', '', '', '2018-02-06 14:49:30', '2018-02-06 14:49:30', '', 0, 'http://localhost:8888/wp-content/uploads/2018/02/vintage-power-eq.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2018-02-06 15:59:12', '2018-02-06 15:59:12', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-02-06 15:59:12', '2018-02-06 15:59:12', '', 0, 'http://localhost:8888/?post_type=cycloneslider&#038;p=41', 0, 'cycloneslider', '', 0),
(42, 1, '2018-02-07 02:07:14', '2018-02-07 02:07:14', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-07 02:07:14', '2018-02-07 02:07:14', '', 6, 'http://localhost:8888/2018/02/07/6-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-02-07 02:13:36', '2018-02-07 02:13:36', '', 'twp-ribbon-large', '', 'inherit', 'open', 'closed', '', 'twp-ribbon-large', '', '', '2018-02-07 02:13:36', '2018-02-07 02:13:36', '', 0, 'http://localhost:8888/wp-content/uploads/2018/02/twp-ribbon-large.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2018-02-08 11:46:42', '2018-02-08 11:46:42', '', 'armstrong', '', 'inherit', 'open', 'closed', '', 'armstrong', '', '', '2018-02-12 11:55:08', '2018-02-12 11:55:08', '', 6, 'http://localhost:8888/wp-content/uploads/2018/02/armstrong.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2018-02-08 11:46:43', '2018-02-08 11:46:43', '', 'cleaver-brooks', '', 'inherit', 'open', 'closed', '', 'cleaver-brooks', '', '', '2018-02-12 11:54:48', '2018-02-12 11:54:48', '', 6, 'http://localhost:8888/wp-content/uploads/2018/02/cleaver-brooks.png', 0, 'attachment', 'image/png', 0),
(48, 1, '2018-02-08 11:46:43', '2018-02-08 11:46:43', '', 'Depth of field. Great processing photos.Used professional equipment.', 'Depth of field. Great processing photos.Used professional equipment.', 'inherit', 'open', 'closed', '', 'depth-of-field-great-processing-photos-used-professional-equipment', '', '', '2018-02-08 14:30:18', '2018-02-08 14:30:18', '', 6, 'http://localhost:8888/wp-content/uploads/2018/02/factory-worker.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2018-02-08 11:46:44', '2018-02-08 11:46:44', '', 'industrial', '', 'inherit', 'open', 'closed', '', 'industrial', '', '', '2018-02-08 14:30:18', '2018-02-08 14:30:18', '', 6, 'http://localhost:8888/wp-content/uploads/2018/02/industrial.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2018-02-08 11:46:44', '2018-02-08 11:46:44', '', 'search-icon', '', 'inherit', 'open', 'closed', '', 'search-icon-2', '', '', '2018-02-08 11:46:44', '2018-02-08 11:46:44', '', 0, 'http://localhost:8888/wp-content/uploads/2018/02/search-icon-1.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2018-02-08 11:46:45', '2018-02-08 11:46:45', '', 'viking-pumps', '', 'inherit', 'open', 'closed', '', 'viking-pumps', '', '', '2018-02-12 11:55:16', '2018-02-12 11:55:16', '', 6, 'http://localhost:8888/wp-content/uploads/2018/02/viking-pumps.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2018-02-08 12:40:54', '2018-02-08 12:40:54', '', 'gardner-denver', '', 'inherit', 'open', 'closed', '', 'gardner-denver', '', '', '2018-02-12 11:55:39', '2018-02-12 11:55:39', '', 6, 'http://localhost:8888/wp-content/uploads/2018/02/gardner-denver.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2018-02-08 12:44:53', '2018-02-08 12:44:53', '', 'Home', '', 'publish', 'closed', 'closed', '', 'acf_home', '', '', '2018-02-08 13:31:38', '2018-02-08 13:31:38', '', 0, 'http://localhost:8888/?post_type=acf&#038;p=53', 0, 'acf', '', 0),
(54, 1, '2018-02-08 12:50:43', '2018-02-08 12:50:43', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-autosave-v1', '', '', '2018-02-08 12:50:43', '2018-02-08 12:50:43', '', 6, 'http://localhost:8888/2018/02/08/6-autosave-v1/', 0, 'revision', '', 0),
(55, 1, '2018-02-08 12:51:43', '2018-02-08 12:51:43', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-08 12:51:43', '2018-02-08 12:51:43', '', 6, 'http://localhost:8888/2018/02/08/6-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2018-02-08 12:55:58', '2018-02-08 12:55:58', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-08 12:55:58', '2018-02-08 12:55:58', '', 6, 'http://localhost:8888/2018/02/08/6-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2018-02-08 13:10:21', '2018-02-08 13:10:21', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-08 13:10:21', '2018-02-08 13:10:21', '', 6, 'http://localhost:8888/2018/02/08/6-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2018-02-08 13:14:50', '2018-02-08 13:14:50', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-08 13:14:50', '2018-02-08 13:14:50', '', 6, 'http://localhost:8888/2018/02/08/6-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2018-02-08 13:15:54', '2018-02-08 13:15:54', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-08 13:15:54', '2018-02-08 13:15:54', '', 6, 'http://localhost:8888/2018/02/08/6-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-02-08 13:17:04', '2018-02-08 13:17:04', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-08 13:17:04', '2018-02-08 13:17:04', '', 6, 'http://localhost:8888/2018/02/08/6-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2018-02-08 13:21:31', '2018-02-08 13:21:31', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-08 13:21:31', '2018-02-08 13:21:31', '', 6, 'http://localhost:8888/2018/02/08/6-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-02-08 13:22:44', '2018-02-08 13:22:44', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-08 13:22:44', '2018-02-08 13:22:44', '', 6, 'http://localhost:8888/2018/02/08/6-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2018-02-08 13:32:10', '2018-02-08 13:32:10', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-08 13:32:10', '2018-02-08 13:32:10', '', 6, 'http://localhost:8888/2018/02/08/6-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2018-02-08 13:32:54', '2018-02-08 13:32:54', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-08 13:32:54', '2018-02-08 13:32:54', '', 6, 'http://localhost:8888/2018/02/08/6-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2018-02-08 13:33:06', '2018-02-08 13:33:06', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-08 13:33:06', '2018-02-08 13:33:06', '', 6, 'http://localhost:8888/2018/02/08/6-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2018-02-08 13:47:14', '2018-02-08 13:47:14', '', 'Footer', '', 'publish', 'closed', 'closed', '', 'acf_footer', '', '', '2018-02-08 13:54:36', '2018-02-08 13:54:36', '', 0, 'http://localhost:8888/?post_type=acf&#038;p=66', 0, 'acf', '', 0),
(67, 1, '2018-02-08 13:48:32', '2018-02-08 13:48:32', '', 'Footer', '', 'trash', 'closed', 'closed', '', 'footer__trashed', '', '', '2018-02-08 14:35:53', '2018-02-08 14:35:53', '', 0, 'http://localhost:8888/?page_id=67', 0, 'page', '', 0),
(68, 1, '2018-02-08 13:48:32', '2018-02-08 13:48:32', '', 'Footer', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-02-08 13:48:32', '2018-02-08 13:48:32', '', 67, 'http://localhost:8888/2018/02/08/67-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2018-02-08 13:52:32', '2018-02-08 13:52:32', '', 'Footer', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-02-08 13:52:32', '2018-02-08 13:52:32', '', 67, 'http://localhost:8888/2018/02/08/67-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2018-02-08 14:05:30', '2018-02-08 14:05:30', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:4:"post";s:8:"operator";s:2:"==";s:5:"value";s:2:"90";}}}s:8:"position";s:15:"acf_after_title";s:5:"style";s:8:"seamless";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Footer', 'footer', 'trash', 'closed', 'closed', '', 'group_5a7c592a129a9__trashed', '', '', '2018-02-12 13:20:56', '2018-02-12 13:20:56', '', 0, 'http://localhost:8888/?post_type=acf-field-group&#038;p=70', 0, 'acf-field-group', '', 0),
(71, 1, '2018-02-08 14:05:30', '2018-02-08 14:05:30', 'a:6:{s:4:"type";s:4:"link";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";}', 'Location 1 URL', 'location_one_url', 'trash', 'closed', 'closed', '', 'field_5a7c51b0e5423__trashed', '', '', '2018-02-12 13:20:56', '2018-02-12 13:20:56', '', 70, 'http://localhost:8888/?post_type=acf-field&#038;p=71', 0, 'acf-field', '', 0),
(73, 1, '2018-02-08 14:05:30', '2018-02-08 14:05:30', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Location 1 Phone (numbers and dashes only)', 'location_one_phone', 'trash', 'closed', 'closed', '', 'field_5a7c5351e5425__trashed', '', '', '2018-02-12 13:20:56', '2018-02-12 13:20:56', '', 70, 'http://localhost:8888/?post_type=acf-field&#038;p=73', 1, 'acf-field', '', 0),
(74, 1, '2018-02-08 14:05:30', '2018-02-08 14:05:30', 'a:7:{s:8:"location";a:1:{i:0;a:2:{i:0;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:1:"6";}i:1;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"16";}}}s:8:"position";s:15:"acf_after_title";s:5:"style";s:8:"seamless";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Home', 'home', 'publish', 'closed', 'closed', '', 'group_5a7c592a18417', '', '', '2018-02-26 02:23:31', '2018-02-26 02:23:31', '', 0, 'http://localhost:8888/?post_type=acf-field-group&#038;p=74', 0, 'acf-field-group', '', 0),
(77, 1, '2018-02-08 14:05:30', '2018-02-08 14:05:30', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Home Hero Image', 'home_hero_image', 'publish', 'closed', 'closed', '', 'field_5a7c4b6f73950', '', '', '2018-02-12 12:28:35', '2018-02-12 12:28:35', '', 74, 'http://localhost:8888/?post_type=acf-field&#038;p=77', 0, 'acf-field', '', 0),
(79, 1, '2018-02-08 14:05:30', '2018-02-08 14:05:30', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Home Mission Heading', 'home_mission_heading', 'publish', 'closed', 'closed', '', 'field_5a7c4e3487b2a', '', '', '2018-02-12 12:28:35', '2018-02-12 12:28:35', '', 74, 'http://localhost:8888/?post_type=acf-field&#038;p=79', 4, 'acf-field', '', 0),
(80, 1, '2018-02-08 14:05:30', '2018-02-08 14:05:30', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:2:"br";}', 'Home Mission Content', 'home_mission_content', 'publish', 'closed', 'closed', '', 'field_5a7c4e49ccfc3', '', '', '2018-02-12 12:28:35', '2018-02-12 12:28:35', '', 74, 'http://localhost:8888/?post_type=acf-field&#038;p=80', 5, 'acf-field', '', 0),
(81, 1, '2018-02-08 14:05:30', '2018-02-08 14:05:30', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:7:"Cameron";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Home Companies Heading', 'home_companies_heading', 'publish', 'closed', 'closed', '', 'field_5a7c51273a92e', '', '', '2018-02-12 12:28:35', '2018-02-12 12:28:35', '', 74, 'http://localhost:8888/?post_type=acf-field&#038;p=81', 6, 'acf-field', '', 0),
(82, 1, '2018-02-08 14:12:37', '2018-02-08 14:12:37', '', 'Footer', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-02-08 14:12:37', '2018-02-08 14:12:37', '', 67, 'http://localhost:8888/2018/02/08/67-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2018-02-08 14:20:53', '2018-02-08 14:20:53', '', 'Footer', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-02-08 14:20:53', '2018-02-08 14:20:53', '', 67, 'http://localhost:8888/2018/02/08/67-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-02-08 14:27:42', '2018-02-08 14:27:42', '', 'Footer', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2018-02-08 14:27:42', '2018-02-08 14:27:42', '', 67, 'http://localhost:8888/2018/02/08/67-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2018-02-08 14:30:18', '2018-02-08 14:30:18', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-08 14:30:18', '2018-02-08 14:30:18', '', 6, 'http://localhost:8888/2018/02/08/6-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2018-02-08 14:34:38', '2018-02-08 14:34:38', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-08 14:34:38', '2018-02-08 14:34:38', '', 6, 'http://localhost:8888/2018/02/08/6-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2018-02-08 14:36:21', '2018-02-08 14:36:21', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-02-08 14:36:21', '2018-02-08 14:36:21', '', 1, 'http://localhost:8888/2018/02/08/1-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2018-02-08 14:36:28', '2018-02-08 14:36:28', '', 'Footer', '', 'trash', 'open', 'open', '', 'footer__trashed', '', '', '2018-02-08 15:28:27', '2018-02-08 15:28:27', '', 0, 'http://localhost:8888/?p=90', 0, 'post', '', 0),
(91, 1, '2018-02-08 14:36:28', '2018-02-08 14:36:28', '', 'Footer', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2018-02-08 14:36:28', '2018-02-08 14:36:28', '', 90, 'http://localhost:8888/2018/02/08/90-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2018-02-08 14:37:00', '2018-02-08 14:37:00', '', 'Footer', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2018-02-08 14:37:00', '2018-02-08 14:37:00', '', 90, 'http://localhost:8888/2018/02/08/90-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2018-02-08 14:37:50', '2018-02-08 14:37:50', '', 'Footer', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2018-02-08 14:37:50', '2018-02-08 14:37:50', '', 90, 'http://localhost:8888/2018/02/08/90-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2018-02-08 14:45:06', '2018-02-08 14:45:06', '', 'Footer', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2018-02-08 14:45:06', '2018-02-08 14:45:06', '', 90, 'http://localhost:8888/2018/02/08/90-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2018-02-08 14:49:58', '2018-02-08 14:49:58', '', 'Footer', '', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2018-02-08 14:49:58', '2018-02-08 14:49:58', '', 90, 'http://localhost:8888/2018/02/08/90-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2018-02-12 10:59:57', '2018-02-12 10:59:57', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Company 1 Logo', 'company_1_logo', 'publish', 'closed', 'closed', '', 'field_5a81735be5837', '', '', '2018-02-12 12:28:35', '2018-02-12 12:28:35', '', 74, 'http://localhost:8888/?post_type=acf-field&#038;p=96', 7, 'acf-field', '', 0),
(97, 1, '2018-02-12 10:59:57', '2018-02-12 10:59:57', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Company 2 Logo', 'company_2_logo', 'publish', 'closed', 'closed', '', 'field_5a817396e5838', '', '', '2018-02-12 12:28:35', '2018-02-12 12:28:35', '', 74, 'http://localhost:8888/?post_type=acf-field&#038;p=97', 9, 'acf-field', '', 0),
(98, 1, '2018-02-12 11:03:17', '2018-02-12 11:03:17', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-12 11:03:17', '2018-02-12 11:03:17', '', 6, 'http://localhost:8888/2018/02/12/6-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2018-02-12 11:07:25', '2018-02-12 11:07:25', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:17:"conditional_logic";a:1:{i:0;a:1:{i:0;a:3:{s:5:"field";s:0:"";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}}}', 'Company 3 Logo', 'company_3_logo', 'publish', 'closed', 'closed', '', 'field_5a8175477f92f', '', '', '2018-02-12 12:28:35', '2018-02-12 12:28:35', '', 74, 'http://localhost:8888/?post_type=acf-field&#038;p=99', 11, 'acf-field', '', 0),
(101, 1, '2018-02-12 11:08:27', '2018-02-12 11:08:27', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Company 5 Logo', 'company_5_logo', 'publish', 'closed', 'closed', '', 'field_5a817575af8fd', '', '', '2018-02-12 12:28:35', '2018-02-12 12:28:35', '', 74, 'http://localhost:8888/?post_type=acf-field&#038;p=101', 15, 'acf-field', '', 0),
(102, 1, '2018-02-12 11:08:27', '2018-02-12 11:08:27', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Company 6 Logo', 'company_6_logo', 'publish', 'closed', 'closed', '', 'field_5a817575af8fc', '', '', '2018-02-12 12:28:35', '2018-02-12 12:28:35', '', 74, 'http://localhost:8888/?post_type=acf-field&#038;p=102', 17, 'acf-field', '', 0),
(103, 1, '2018-02-12 11:08:27', '2018-02-12 11:08:27', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Company 7 Logo', 'company_7_logo', 'publish', 'closed', 'closed', '', 'field_5a817573af8fb', '', '', '2018-02-12 12:28:35', '2018-02-12 12:28:35', '', 74, 'http://localhost:8888/?post_type=acf-field&#038;p=103', 19, 'acf-field', '', 0),
(104, 1, '2018-02-12 11:08:27', '2018-02-12 11:08:27', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Company 8 Logo', 'company_8_logo', 'publish', 'closed', 'closed', '', 'field_5a817571af8fa', '', '', '2018-02-12 12:28:35', '2018-02-12 12:28:35', '', 74, 'http://localhost:8888/?post_type=acf-field&#038;p=104', 21, 'acf-field', '', 0),
(109, 1, '2018-02-12 11:18:51', '2018-02-12 11:18:51', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-12 11:18:51', '2018-02-12 11:18:51', '', 6, 'http://localhost:8888/2018/02/12/6-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2018-02-12 11:23:31', '2018-02-12 11:23:31', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-12 11:23:31', '2018-02-12 11:23:31', '', 6, 'http://localhost:8888/2018/02/12/6-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2018-02-12 11:25:33', '2018-02-12 11:25:33', '', 'parker-boiler', '', 'inherit', 'open', 'closed', '', 'parker-boiler', '', '', '2018-02-12 11:56:04', '2018-02-12 11:56:04', '', 6, 'http://localhost:8888/wp-content/uploads/2018/02/parker-boiler.png', 0, 'attachment', 'image/png', 0),
(115, 1, '2018-02-12 11:26:26', '2018-02-12 11:26:26', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-12 11:26:26', '2018-02-12 11:26:26', '', 6, 'http://localhost:8888/2018/02/12/6-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2018-02-12 11:29:27', '2018-02-12 11:29:27', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-12 11:29:27', '2018-02-12 11:29:27', '', 6, 'http://localhost:8888/2018/02/12/6-revision-v1/', 0, 'revision', '', 0),
(120, 1, '2018-02-12 11:32:29', '2018-02-12 11:32:29', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Company 4 Logo', 'company_4_logo', 'publish', 'closed', 'closed', '', 'field_5a817b3d2228d', '', '', '2018-02-12 12:28:35', '2018-02-12 12:28:35', '', 74, 'http://localhost:8888/?post_type=acf-field&#038;p=120', 13, 'acf-field', '', 0),
(121, 1, '2018-02-12 11:34:21', '2018-02-12 11:34:21', '', 'ebara', '', 'inherit', 'open', 'closed', '', 'ebara', '', '', '2018-02-12 11:34:28', '2018-02-12 11:34:28', '', 6, 'http://localhost:8888/wp-content/uploads/2018/02/ebara.png', 0, 'attachment', 'image/png', 0),
(122, 1, '2018-02-12 11:34:31', '2018-02-12 11:34:31', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-12 11:34:31', '2018-02-12 11:34:31', '', 6, 'http://localhost:8888/2018/02/12/6-revision-v1/', 0, 'revision', '', 0),
(123, 1, '2018-02-12 11:37:10', '2018-02-12 11:37:10', '', 'Print', '', 'inherit', 'open', 'closed', '', 'print', '', '', '2018-02-12 11:55:56', '2018-02-12 11:55:56', '', 6, 'http://localhost:8888/wp-content/uploads/2018/02/mueller.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2018-02-12 11:37:31', '2018-02-12 11:37:31', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-12 11:37:31', '2018-02-12 11:37:31', '', 6, 'http://localhost:8888/2018/02/12/6-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2018-02-12 11:43:00', '2018-02-12 11:43:00', '', 'cameron', '', 'inherit', 'open', 'closed', '', 'cameron', '', '', '2018-02-12 11:56:17', '2018-02-12 11:56:17', '', 6, 'http://localhost:8888/wp-content/uploads/2018/02/cameron.png', 0, 'attachment', 'image/png', 0),
(126, 1, '2018-02-12 11:43:08', '2018-02-12 11:43:08', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-12 11:43:08', '2018-02-12 11:43:08', '', 6, 'http://localhost:8888/2018/02/12/6-revision-v1/', 0, 'revision', '', 0),
(127, 1, '2018-02-12 11:51:42', '2018-02-12 11:51:42', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Company 1 URL', 'company_1_url', 'publish', 'closed', 'closed', '', 'field_5a817f46b9295', '', '', '2018-02-12 12:28:35', '2018-02-12 12:28:35', '', 74, 'http://localhost:8888/?post_type=acf-field&#038;p=127', 8, 'acf-field', '', 0),
(128, 1, '2018-02-12 11:51:42', '2018-02-12 11:51:42', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Company 2 URL', 'company_2_url', 'publish', 'closed', 'closed', '', 'field_5a817f5eb9296', '', '', '2018-02-12 12:28:35', '2018-02-12 12:28:35', '', 74, 'http://localhost:8888/?post_type=acf-field&#038;p=128', 10, 'acf-field', '', 0),
(129, 1, '2018-02-12 11:51:42', '2018-02-12 11:51:42', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Company 3 URL', 'company_3_url', 'publish', 'closed', 'closed', '', 'field_5a817f7cb9297', '', '', '2018-02-12 12:28:35', '2018-02-12 12:28:35', '', 74, 'http://localhost:8888/?post_type=acf-field&#038;p=129', 12, 'acf-field', '', 0),
(130, 1, '2018-02-12 11:51:42', '2018-02-12 11:51:42', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Company 4 URL', 'company_4_url', 'publish', 'closed', 'closed', '', 'field_5a817f8ab9298', '', '', '2018-02-12 12:28:35', '2018-02-12 12:28:35', '', 74, 'http://localhost:8888/?post_type=acf-field&#038;p=130', 14, 'acf-field', '', 0),
(131, 1, '2018-02-12 11:51:42', '2018-02-12 11:51:42', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Company 5 URL', 'company_5_url', 'publish', 'closed', 'closed', '', 'field_5a817f9cb9299', '', '', '2018-02-12 12:28:35', '2018-02-12 12:28:35', '', 74, 'http://localhost:8888/?post_type=acf-field&#038;p=131', 16, 'acf-field', '', 0),
(132, 1, '2018-02-12 11:51:42', '2018-02-12 11:51:42', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Company 6 URL', 'company_6_url', 'publish', 'closed', 'closed', '', 'field_5a817fabb929a', '', '', '2018-02-12 12:28:35', '2018-02-12 12:28:35', '', 74, 'http://localhost:8888/?post_type=acf-field&#038;p=132', 18, 'acf-field', '', 0),
(133, 1, '2018-02-12 11:51:42', '2018-02-12 11:51:42', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Company 7 URL', 'company_7_url', 'publish', 'closed', 'closed', '', 'field_5a817fb6b929b', '', '', '2018-02-12 12:28:35', '2018-02-12 12:28:35', '', 74, 'http://localhost:8888/?post_type=acf-field&#038;p=133', 20, 'acf-field', '', 0),
(134, 1, '2018-02-12 11:51:42', '2018-02-12 11:51:42', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Company 8 URL', 'company_8_url', 'publish', 'closed', 'closed', '', 'field_5a817fc2b929c', '', '', '2018-02-12 12:28:35', '2018-02-12 12:28:35', '', 74, 'http://localhost:8888/?post_type=acf-field&#038;p=134', 22, 'acf-field', '', 0),
(135, 1, '2018-02-12 11:56:21', '2018-02-12 11:56:21', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-12 11:56:21', '2018-02-12 11:56:21', '', 6, 'http://localhost:8888/2018/02/12/6-revision-v1/', 0, 'revision', '', 0),
(136, 1, '2018-02-12 12:01:06', '2018-02-12 12:01:06', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-12 12:01:06', '2018-02-12 12:01:06', '', 6, 'http://localhost:8888/2018/02/12/6-revision-v1/', 0, 'revision', '', 0),
(137, 1, '2018-02-12 12:22:20', '2018-02-12 12:22:20', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-12 12:22:20', '2018-02-12 12:22:20', '', 6, 'http://localhost:8888/2018/02/12/6-revision-v1/', 0, 'revision', '', 0),
(138, 1, '2018-02-12 12:22:25', '2018-02-12 12:22:25', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-12 12:22:25', '2018-02-12 12:22:25', '', 6, 'http://localhost:8888/2018/02/12/6-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2018-02-12 12:22:37', '2018-02-12 12:22:37', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-02-12 12:22:37', '2018-02-12 12:22:37', '', 6, 'http://localhost:8888/2018/02/12/6-revision-v1/', 0, 'revision', '', 0),
(140, 1, '2018-02-12 12:28:23', '2018-02-12 12:28:23', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Home About Image', 'home_about_image', 'publish', 'closed', 'closed', '', 'field_5a81881327a2d', '', '', '2018-02-12 12:28:35', '2018-02-12 12:28:35', '', 74, 'http://localhost:8888/?post_type=acf-field&#038;p=140', 1, 'acf-field', '', 0),
(141, 1, '2018-02-12 12:28:23', '2018-02-12 12:28:23', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Home About Heading', 'home_about_heading', 'publish', 'closed', 'closed', '', 'field_5a81883127a2e', '', '', '2018-02-12 12:28:35', '2018-02-12 12:28:35', '', 74, 'http://localhost:8888/?post_type=acf-field&#038;p=141', 2, 'acf-field', '', 0),
(142, 1, '2018-02-12 12:28:23', '2018-02-12 12:28:23', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:2:"br";}', 'Home About Content', 'home_about_content', 'publish', 'closed', 'closed', '', 'field_5a81884f27a2f', '', '', '2018-02-12 12:28:35', '2018-02-12 12:28:35', '', 74, 'http://localhost:8888/?post_type=acf-field&#038;p=142', 3, 'acf-field', '', 0),
(143, 1, '2018-02-12 13:21:27', '2018-02-12 13:21:27', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"16";}}}s:8:"position";s:15:"acf_after_title";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Rentals', 'rentals', 'trash', 'closed', 'closed', '', 'group_5a8194baabfaf__trashed', '', '', '2018-02-12 16:48:37', '2018-02-12 16:48:37', '', 0, 'http://localhost:8888/?post_type=acf-field-group&#038;p=143', 0, 'acf-field-group', '', 0),
(144, 1, '2018-02-12 13:21:27', '2018-02-12 13:21:27', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'banner', 'banner', 'trash', 'closed', 'closed', '', 'field_5a8194c0b65ef__trashed', '', '', '2018-02-12 16:48:37', '2018-02-12 16:48:37', '', 143, 'http://localhost:8888/?post_type=acf-field&#038;p=144', 0, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(145, 1, '2018-02-12 13:25:48', '2018-02-12 13:25:48', '', 'industrial-banner', '', 'inherit', 'open', 'closed', '', 'industrial-banner', '', '', '2018-02-12 13:25:48', '2018-02-12 13:25:48', '', 16, 'http://localhost:8888/wp-content/uploads/2018/02/industrial-banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(146, 1, '2018-02-12 13:26:07', '2018-02-12 13:26:07', '', 'Rentals', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-02-12 13:26:07', '2018-02-12 13:26:07', '', 16, 'http://localhost:8888/2018/02/12/16-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2018-02-12 13:51:55', '2018-02-12 13:51:55', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"18";}}}s:8:"position";s:15:"acf_after_title";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'About', 'about', 'trash', 'closed', 'closed', '', 'group_5a819bdaefce6__trashed', '', '', '2018-02-12 13:52:25', '2018-02-12 13:52:25', '', 0, 'http://localhost:8888/?post_type=acf-field-group&#038;p=147', 0, 'acf-field-group', '', 0),
(148, 1, '2018-02-12 13:51:55', '2018-02-12 13:51:55', 'a:7:{s:8:"location";a:2:{i:0;a:1:{i:0;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"16";}}i:1;a:1:{i:0;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"16";}}}s:8:"position";s:15:"acf_after_title";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:1:{i:0;s:9:"revisions";}s:11:"description";s:0:"";}', 'Rentals', 'rentals', 'publish', 'closed', 'closed', '', 'group_5a819bdc19433', '', '', '2018-02-12 17:58:15', '2018-02-12 17:58:15', '', 0, 'http://localhost:8888/?post_type=acf-field-group&#038;p=148', 0, 'acf-field-group', '', 0),
(149, 1, '2018-02-12 13:51:55', '2018-02-12 13:51:55', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'banner', 'banner', 'trash', 'closed', 'closed', '', 'field_5a819be3eee18__trashed', '', '', '2018-02-12 13:52:25', '2018-02-12 13:52:25', '', 147, 'http://localhost:8888/?post_type=acf-field&#038;p=149', 0, 'acf-field', '', 0),
(152, 1, '2018-02-12 16:48:57', '2018-02-12 16:48:57', 'Power Equipment Company is able to fill your immediate short-term need for boilers, compressors, pumps as well as the region’s best selection of specialty and used equipment. In the event that your equipment goes down, Power Equipment Company understands that production can''t just stop. The show must go on and we are here to serve you. ', 'Rentals', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-02-12 16:48:57', '2018-02-12 16:48:57', '', 16, 'http://localhost:8888/2018/02/12/16-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2018-02-12 17:03:24', '2018-02-12 17:03:24', 'Power Equipment Company is able to fill your immediate short-term need for boilers, compressors, pumps as well as the region’s best selection of specialty and used equipment. In the event that your equipment goes down, Power Equipment Company understands that production can''t just stop. The show must go on and we are here to serve you.\r\n\r\nYour needs aren''t 9am-5pm and neither are we; call our 24/7 emergency line (1-800-222-7326) and we will have a truck out to you in no time.', 'Rentals', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-02-12 17:03:24', '2018-02-12 17:03:24', '', 16, 'http://localhost:8888/2018/02/12/16-revision-v1/', 0, 'revision', '', 0),
(154, 1, '2018-02-12 17:07:55', '2018-02-12 17:07:55', 'Power Equipment Company is able to fill your immediate short-term need for boilers, compressors, pumps as well as the region’s best selection of specialty and used equipment. In the event that your equipment goes down, Power Equipment Company understands that production can''t just stop. The show must go on and we are here to serve you.\r\n\r\nYour needs aren''t 9am-5pm and neither are we; call our 24/7 emergency line (1-800-222-7326) and we will have a truck out to you in no time.\r\n\r\nPower Equipment Company has a full line of ready to go boilers, compressors, pumps and litany of specialty equipment products to keep your power systems up and running. We''re here to find the solution that''s right for you (901) 327-8261.', 'Rentals', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-02-12 17:07:55', '2018-02-12 17:07:55', '', 16, 'http://localhost:8888/2018/02/12/16-revision-v1/', 0, 'revision', '', 0),
(155, 1, '2018-02-12 17:18:50', '2018-02-12 17:18:50', '', 'industrial-banner-h300', '', 'inherit', 'open', 'closed', '', 'industrial-banner-h300', '', '', '2018-02-12 17:18:53', '2018-02-12 17:18:53', '', 16, 'http://localhost:8888/wp-content/uploads/2018/02/industrial-banner-h300.jpg', 0, 'attachment', 'image/jpeg', 0),
(156, 1, '2018-02-12 17:18:54', '2018-02-12 17:18:54', 'Power Equipment Company is able to fill your immediate short-term need for boilers, compressors, pumps as well as the region’s best selection of specialty and used equipment. In the event that your equipment goes down, Power Equipment Company understands that production can''t just stop. The show must go on and we are here to serve you.\r\n\r\nYour needs aren''t 9am-5pm and neither are we; call our 24/7 emergency line (1-800-222-7326) and we will have a truck out to you in no time.\r\n\r\nPower Equipment Company has a full line of ready to go boilers, compressors, pumps and litany of specialty equipment products to keep your power systems up and running. We''re here to find the solution that''s right for you (901) 327-8261.', 'Rentals', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-02-12 17:18:54', '2018-02-12 17:18:54', '', 16, 'http://localhost:8888/2018/02/12/16-revision-v1/', 0, 'revision', '', 0),
(157, 1, '2018-02-12 17:37:42', '2018-02-12 17:37:42', 'Power Equipment Company is able to fill your immediate short-term need for boilers, compressors, pumps as well as the region’s best selection of specialty and used equipment. In the event that your equipment goes down, Power Equipment Company understands that production can''t just stop. The show must go on and we are here to serve you.\r\n\r\nYour needs aren''t 9am-5pm and neither are we; call our 24/7 emergency line (1-800-222-7326) and we will have a truck out to you in no time.\r\n\r\nPower Equipment Company has a full line of ready to go boilers, compressors, pumps and litany of specialty equipment products to keep your power systems up and running. We''re here to find the solution that''s right for you (901) 327-8261.', 'Rentals', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-02-12 17:37:42', '2018-02-12 17:37:42', '', 16, 'http://localhost:8888/2018/02/12/16-revision-v1/', 0, 'revision', '', 0),
(158, 1, '2018-02-12 17:39:47', '2018-02-12 17:39:47', 'Power Equipment Company is able to fill your immediate short-term need for boilers, compressors, pumps as well as the region’s best selection of specialty and used equipment. In the event that your equipment goes down, Power Equipment Company understands that production can''t just stop. The show must go on and we are here to serve you.\r\n\r\nYour needs aren''t 9am-5pm and neither are we; call our 24/7 emergency line (1-800-222-7326) and we will have a truck out to you in no time.\r\n\r\nPower Equipment Company has a full line of ready to go boilers, compressors, pumps and litany of specialty equipment products to keep your power systems up and running. We''re here to find the solution that''s right for you (901) 327-8261.', 'Rentals', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-02-12 17:39:47', '2018-02-12 17:39:47', '', 16, 'http://localhost:8888/2018/02/12/16-revision-v1/', 0, 'revision', '', 0),
(159, 1, '2018-02-12 17:58:15', '2018-02-12 17:58:15', 'Power Equipment Company (aka Power Equipment of Memphis) specializes in energy systems and heat generating products, providing the knowledge, products, services and supplies necessary to achieve peak performance in your energy systems. The company offers a variety of boilers, compressors, pumps as well as specialty and used equipment. We also provide a host of services such as equipment rental, preventative maintenance programs, flame safeguard control upgrades, annual inspections, refractory repair/replacement, burner and fuel conversions, steam system surveys and service on demand, all necessary to keep you operating under any condition. Interested in learning more? Give us a call at 901-327-8261.\r\n\r\nA leader in power equipment for over 85 years, we set the highest standard for innovation. We believe in change - in our products and in ourselves. We believe in solutions over sales with a concentration on energy solutions and savings. Our knowledge of the industry, product placement efficiency and friendliness and accessibility are top priorities for our employees. We provide our company representatives, service technicians and engineers ongoing training and certifications to offer the newest measures and methods available. We offer rental and maintenance solutions and specialty and used equipment, all with savings in mind. We offer 24 hour emergency service and fulfill next day shipments for over 50% of all orders placed. We have a long standing history with our manufacturers who are also leaders in the industry - many of whom we are the exclusive territory provider, guaranteeing the best quality products.\r\n\r\nAs a family owned and operated company, we believe that there are a number of key attributes that form our success - our guiding principals, our team and you. Building lasting relationships and sharing them with our employees, brands and customers as well as our community partners, ensures the continued success of our organization’s mission and values.', 'About', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2018-02-12 17:58:15', '2018-02-12 17:58:15', '', 18, 'http://localhost:8888/2018/02/12/18-revision-v1/', 0, 'revision', '', 0),
(161, 1, '2018-02-26 02:00:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-02-26 02:00:30', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/?p=161', 0, 'post', '', 0),
(162, 1, '2018-02-26 02:01:41', '2018-02-26 02:01:41', '<p>Power Equipment Company is able to fill your immediate short-term need for boilers, compressors, pumps as well as the region’s best selection of specialty and used equipment. In the event that your equipment goes down, Power Equipment Company understands that production can''t just stop. The show must go on and we are here to serve you.</p>\n\n<p>Your needs aren''t 9am-5pm and neither are we; call our 24/7 emergency line (1-800-222-7326) and we will have a truck out to you in no time.</p>\n\n<p>Power Equipment Company has a full line of ready to go boilers, compressors, pumps and litany of specialty equipment products to keep your power systems up and running. We''re here to find the solution that''s right for you (901) 327-8261.</p>\n\n<h3></h3>', 'Rentals', '', 'inherit', 'closed', 'closed', '', '16-autosave-v1', '', '', '2018-02-26 02:01:41', '2018-02-26 02:01:41', '', 16, 'http://localhost:8888/2018/02/26/16-autosave-v1/', 0, 'revision', '', 0),
(163, 1, '2018-02-26 02:03:12', '2018-02-26 02:03:12', '<p>Power Equipment Company is able to fill your immediate short-term need for boilers, compressors, pumps as well as the region’s best selection of specialty and used equipment. In the event that your equipment goes down, Power Equipment Company understands that production can''t just stop. The show must go on and we are here to serve you.</p>\r\n\r\n<p>Your needs aren''t 9am-5pm and neither are we; call our 24/7 emergency line (1-800-222-7326) and we will have a truck out to you in no time.</p>\r\n\r\n<p>Power Equipment Company has a full line of ready to go boilers, compressors, pumps and litany of specialty equipment products to keep your power systems up and running. We''re here to find the solution that''s right for you (901) 327-8261.</p>\r\n\r\n<h3>Our Service Does Not Stop There.</h3>\r\n<p>Our knowledgeable customer service team will carry you through the entire process of regaining full plant power. We set up your rental, schedule a service cal to assess your repair needs and respond timely to those needs in order to ensure your facility is not losing valuable production time. With over 75 years of service to Memphis and the Mid-South, we have the reputation to back our promises. With trusted partners like Kellogg and Baptist, we keep Memphis running, guaranteed. </p>', 'Rentals', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-02-26 02:03:12', '2018-02-26 02:03:12', '', 16, 'http://localhost:8888/2018/02/26/16-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Nav', 'main-nav', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(27, 2, 0),
(28, 2, 0),
(29, 2, 0),
(30, 2, 0),
(31, 2, 0),
(32, 2, 0),
(90, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
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
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:"7f857ea94296983e0a03a53921f8be8181a59c0a275377e0c7456cb0b6a08f74";a:4:{s:10:"expiration";i:1520820029;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.167 Safari/537.36";s:5:"login";i:1519610429;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '161'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(19, 1, 'closedpostboxes_page', 'a:1:{i:0;s:14:"tsf-inpost-box";}'),
(20, 1, 'metaboxhidden_page', 'a:5:{i:0;s:23:"acf-group_5a7c592a129a9";i:1;s:16:"commentstatusdiv";i:2;s:11:"commentsdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(22, 1, 'wp_user-settings-time', '1519610587'),
(24, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(25, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(26, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(27, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:"slugdiv";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BorQRItBb/j9Ly/w3QVVLWi40KWllD1', 'admin', 'chris@chrisstack.co', '', '2018-02-06 06:18:07', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `target_post_id` bigint(20) unsigned NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_yoast_seo_meta`
--

CREATE TABLE `wp_yoast_seo_meta` (
  `object_id` bigint(20) unsigned NOT NULL,
  `internal_link_count` int(10) unsigned DEFAULT NULL,
  `incoming_link_count` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_yoast_seo_meta`
--

INSERT INTO `wp_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(6, 0, 0),
(16, 0, 0),
(18, 0, 0),
(20, 0, 0),
(22, 0, 0),
(24, 0, 0),
(43, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Indexes for table `wp_yoast_seo_meta`
--
ALTER TABLE `wp_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=481;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1139;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=164;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
