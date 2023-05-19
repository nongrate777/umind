-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               8.0.28 - MySQL Community Server - GPL
-- Операционная система:         Win64
-- HeidiSQL Версия:              11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица wp-infra.wp_aiowps_debug_log
CREATE TABLE IF NOT EXISTS `wp_aiowps_debug_log` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `level` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Дамп данных таблицы wp-infra.wp_aiowps_debug_log: ~0 rows (приблизительно)
DELETE FROM `wp_aiowps_debug_log`;
/*!40000 ALTER TABLE `wp_aiowps_debug_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_aiowps_debug_log` ENABLE KEYS */;

-- Дамп структуры для таблица wp-infra.wp_aiowps_events
CREATE TABLE IF NOT EXISTS `wp_aiowps_events` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `event_type` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `event_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `ip_or_host` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `referer_info` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `country_code` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `event_data` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Дамп данных таблицы wp-infra.wp_aiowps_events: ~0 rows (приблизительно)
DELETE FROM `wp_aiowps_events`;
/*!40000 ALTER TABLE `wp_aiowps_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_aiowps_events` ENABLE KEYS */;

-- Дамп структуры для таблица wp-infra.wp_aiowps_failed_logins
CREATE TABLE IF NOT EXISTS `wp_aiowps_failed_logins` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `failed_login_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `login_attempt_ip` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `failed_login_date` (`failed_login_date`),
  KEY `login_attempt_ip` (`login_attempt_ip`),
  KEY `failed_login_date_and_login_attempt_ip` (`failed_login_date`,`login_attempt_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Дамп данных таблицы wp-infra.wp_aiowps_failed_logins: ~0 rows (приблизительно)
DELETE FROM `wp_aiowps_failed_logins`;
/*!40000 ALTER TABLE `wp_aiowps_failed_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_aiowps_failed_logins` ENABLE KEYS */;

-- Дамп структуры для таблица wp-infra.wp_aiowps_global_meta
CREATE TABLE IF NOT EXISTS `wp_aiowps_global_meta` (
  `meta_id` bigint NOT NULL AUTO_INCREMENT,
  `date_time` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `meta_key1` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_key2` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_key3` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_key4` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_key5` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value1` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value2` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value3` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value4` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value5` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Дамп данных таблицы wp-infra.wp_aiowps_global_meta: ~0 rows (приблизительно)
DELETE FROM `wp_aiowps_global_meta`;
/*!40000 ALTER TABLE `wp_aiowps_global_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_aiowps_global_meta` ENABLE KEYS */;

-- Дамп структуры для таблица wp-infra.wp_aiowps_login_activity
CREATE TABLE IF NOT EXISTS `wp_aiowps_login_activity` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `login_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `logout_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `login_ip` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `login_country` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `browser_type` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Дамп данных таблицы wp-infra.wp_aiowps_login_activity: ~0 rows (приблизительно)
DELETE FROM `wp_aiowps_login_activity`;
/*!40000 ALTER TABLE `wp_aiowps_login_activity` DISABLE KEYS */;
INSERT INTO `wp_aiowps_login_activity` (`id`, `user_id`, `user_login`, `login_date`, `logout_date`, `login_ip`, `login_country`, `browser_type`) VALUES
	(1, 1, 'admin', '2022-10-09 08:16:48', '1000-10-10 10:00:00', '178.172.189.14', '', '');
/*!40000 ALTER TABLE `wp_aiowps_login_activity` ENABLE KEYS */;

-- Дамп структуры для таблица wp-infra.wp_aiowps_login_lockdown
CREATE TABLE IF NOT EXISTS `wp_aiowps_login_lockdown` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lockdown_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `release_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `failed_login_ip` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `lock_reason` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `unlock_key` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `is_lockout_email_sent` tinyint(1) NOT NULL DEFAULT '1',
  `backtrace_log` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `failed_login_ip` (`failed_login_ip`),
  KEY `is_lockout_email_sent` (`is_lockout_email_sent`),
  KEY `unlock_key` (`unlock_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Дамп данных таблицы wp-infra.wp_aiowps_login_lockdown: ~0 rows (приблизительно)
DELETE FROM `wp_aiowps_login_lockdown`;
/*!40000 ALTER TABLE `wp_aiowps_login_lockdown` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_aiowps_login_lockdown` ENABLE KEYS */;

-- Дамп структуры для таблица wp-infra.wp_aiowps_permanent_block
CREATE TABLE IF NOT EXISTS `wp_aiowps_permanent_block` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `blocked_ip` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `block_reason` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `country_origin` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `blocked_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `unblock` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `blocked_ip` (`blocked_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Дамп данных таблицы wp-infra.wp_aiowps_permanent_block: ~0 rows (приблизительно)
DELETE FROM `wp_aiowps_permanent_block`;
/*!40000 ALTER TABLE `wp_aiowps_permanent_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_aiowps_permanent_block` ENABLE KEYS */;

-- Дамп структуры для таблица wp-infra.wp_commentmeta
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Дамп данных таблицы wp-infra.wp_commentmeta: ~0 rows (приблизительно)
DELETE FROM `wp_commentmeta`;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;

-- Дамп структуры для таблица wp-infra.wp_comments
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Дамп данных таблицы wp-infra.wp_comments: ~0 rows (приблизительно)
DELETE FROM `wp_comments`;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;

-- Дамп структуры для таблица wp-infra.wp_links
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint unsigned NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Дамп данных таблицы wp-infra.wp_links: ~0 rows (приблизительно)
DELETE FROM `wp_links`;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;

-- Дамп структуры для таблица wp-infra.wp_options
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=663 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Дамп данных таблицы wp-infra.wp_options: ~186 rows (приблизительно)
DELETE FROM `wp_options`;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
	(1, 'siteurl', 'https://wp-infra.test', 'yes'),
	(2, 'home', 'https://wp-infra.test', 'yes'),
	(3, 'blogname', 'Clean Theme', 'yes'),
	(4, 'blogdescription', '', 'yes'),
	(5, 'users_can_register', '0', 'yes'),
	(6, 'admin_email', 'nikolay.raikevich@aventus.work', 'yes'),
	(7, 'start_of_week', '1', 'yes'),
	(8, 'use_balanceTags', '0', 'yes'),
	(9, 'use_smilies', '1', 'yes'),
	(10, 'require_name_email', '1', 'yes'),
	(11, 'comments_notify', '', 'yes'),
	(12, 'posts_per_rss', '10', 'yes'),
	(13, 'rss_use_excerpt', '0', 'yes'),
	(14, 'mailserver_url', 'mail.example.com', 'yes'),
	(15, 'mailserver_login', 'login@example.com', 'yes'),
	(16, 'mailserver_pass', 'password', 'yes'),
	(17, 'mailserver_port', '110', 'yes'),
	(18, 'default_category', '1', 'yes'),
	(19, 'default_comment_status', '', 'yes'),
	(20, 'default_ping_status', 'open', 'yes'),
	(21, 'default_pingback_flag', '', 'yes'),
	(22, 'posts_per_page', '10', 'yes'),
	(23, 'date_format', 'd.m.Y', 'yes'),
	(24, 'time_format', 'H:i', 'yes'),
	(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
	(26, 'comment_moderation', '', 'yes'),
	(27, 'moderation_notify', '', 'yes'),
	(28, 'permalink_structure', '/%postname%/', 'yes'),
	(29, 'rewrite_rules', 'a:98:{s:38:"^yoast-index-now-([a-zA-Z0-9-]+)\\.txt$";s:41:"index.php?yoast_index_now_key=$matches[1]";s:19:"sitemap_index\\.xml$";s:19:"index.php?sitemap=1";s:31:"([^/]+?)-sitemap([0-9]+)?\\.xml$";s:51:"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]";s:24:"([a-z]+)?-?sitemap\\.xsl$";s:39:"index.php?yoast-sitemap-xsl=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:17:"^wp-sitemap\\.xml$";s:23:"index.php?sitemap=index";s:17:"^wp-sitemap\\.xsl$";s:36:"index.php?sitemap-stylesheet=sitemap";s:23:"^wp-sitemap-index\\.xsl$";s:34:"index.php?sitemap-stylesheet=index";s:48:"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$";s:75:"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]";s:34:"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$";s:47:"index.php?sitemap=$matches[1]&paged=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:13:"favicon\\.ico$";s:19:"index.php?favicon=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=8&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
	(30, 'hack_file', '0', 'yes'),
	(31, 'blog_charset', 'UTF-8', 'yes'),
	(32, 'moderation_keys', '', 'no'),
	(33, 'active_plugins', 'a:5:{i:0;s:31:"query-monitor/query-monitor.php";i:1;s:34:"advanced-custom-fields-pro/acf.php";i:2;s:51:"all-in-one-wp-security-and-firewall/wp-security.php";i:3;s:39:"wp-migrate-db-pro/wp-migrate-db-pro.php";i:4;s:21:"wp-sweep/wp-sweep.php";}', 'yes'),
	(34, 'category_base', '', 'yes'),
	(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
	(36, 'comment_max_links', '2', 'yes'),
	(37, 'gmt_offset', '3', 'yes'),
	(38, 'default_email_category', '1', 'yes'),
	(39, 'recently_edited', '', 'no'),
	(40, 'template', 'clean', 'yes'),
	(41, 'stylesheet', 'clean', 'yes'),
	(42, 'comment_registration', '', 'yes'),
	(43, 'html_type', 'text/html', 'yes'),
	(44, 'use_trackback', '0', 'yes'),
	(45, 'default_role', 'subscriber', 'yes'),
	(46, 'db_version', '53496', 'yes'),
	(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
	(48, 'upload_path', '', 'yes'),
	(49, 'blog_public', '0', 'yes'),
	(50, 'default_link_category', '2', 'yes'),
	(51, 'show_on_front', 'page', 'yes'),
	(52, 'tag_base', '', 'yes'),
	(53, 'show_avatars', '', 'yes'),
	(54, 'avatar_rating', 'G', 'yes'),
	(55, 'upload_url_path', '', 'yes'),
	(56, 'thumbnail_size_w', '150', 'yes'),
	(57, 'thumbnail_size_h', '150', 'yes'),
	(58, 'thumbnail_crop', '', 'yes'),
	(59, 'medium_size_w', '300', 'yes'),
	(60, 'medium_size_h', '300', 'yes'),
	(61, 'avatar_default', 'mystery', 'yes'),
	(62, 'large_size_w', '1024', 'yes'),
	(63, 'large_size_h', '1024', 'yes'),
	(64, 'image_default_link_type', '', 'yes'),
	(65, 'image_default_size', '', 'yes'),
	(66, 'image_default_align', '', 'yes'),
	(67, 'close_comments_for_old_posts', '', 'yes'),
	(68, 'close_comments_days_old', '14', 'yes'),
	(69, 'thread_comments', '1', 'yes'),
	(70, 'thread_comments_depth', '5', 'yes'),
	(71, 'page_comments', '', 'yes'),
	(72, 'comments_per_page', '50', 'yes'),
	(73, 'default_comments_page', 'newest', 'yes'),
	(74, 'comment_order', 'asc', 'yes'),
	(75, 'sticky_posts', 'a:0:{}', 'yes'),
	(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
	(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
	(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
	(79, 'uninstall_plugins', 'a:2:{s:24:"wordpress-seo/wp-seo.php";s:14:"__return_false";s:51:"all-in-one-wp-security-and-firewall/wp-security.php";a:2:{i:0;s:15:"AIO_WP_Security";i:1;s:17:"uninstall_handler";}}', 'no'),
	(80, 'timezone_string', '', 'yes'),
	(81, 'page_for_posts', '0', 'yes'),
	(82, 'page_on_front', '8', 'yes'),
	(83, 'default_post_format', '0', 'yes'),
	(84, 'link_manager_enabled', '0', 'yes'),
	(85, 'finished_splitting_shared_terms', '1', 'yes'),
	(86, 'site_icon', '0', 'yes'),
	(87, 'medium_large_size_w', '0', 'yes'),
	(88, 'medium_large_size_h', '0', 'yes'),
	(89, 'wp_page_for_privacy_policy', '3', 'yes'),
	(90, 'show_comments_cookies_opt_in', '1', 'yes'),
	(91, 'admin_email_lifespan', '1680589787', 'yes'),
	(92, 'disallowed_keys', '', 'no'),
	(93, 'comment_previously_approved', '', 'yes'),
	(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
	(95, 'auto_update_core_dev', 'enabled', 'yes'),
	(96, 'auto_update_core_minor', 'enabled', 'yes'),
	(97, 'auto_update_core_major', 'enabled', 'yes'),
	(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
	(99, 'initial_db_version', '53496', 'yes'),
	(100, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
	(101, 'fresh_site', '0', 'yes'),
	(102, 'WPLANG', 'ru_RU', 'yes'),
	(103, 'user_count', '1', 'no'),
	(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:"content";s:19:"<!-- wp:search /-->";}i:3;a:1:{s:7:"content";s:167:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Свежие записи</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->";}i:4;a:1:{s:7:"content";s:247:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Свежие комментарии</h2><!-- /wp:heading --><!-- wp:latest-comments {"displayAvatar":false,"displayDate":false,"displayExcerpt":false} /--></div><!-- /wp:group -->";}i:5;a:1:{s:7:"content";s:150:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Архивы</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->";}i:6;a:1:{s:7:"content";s:154:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Рубрики</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->";}s:12:"_multiwidget";i:1;}', 'yes'),
	(105, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:5:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";i:3;s:7:"block-5";i:4;s:7:"block-6";}s:13:"array_version";i:3;}', 'yes'),
	(106, 'cron', 'a:12:{i:1665472472;a:1:{s:26:"aios_15_minutes_cron_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:21:"aios-every-15-minutes";s:4:"args";a:0:{}s:8:"interval";i:900;}}}i:1665473389;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1665474272;a:1:{s:24:"aiowps_hourly_cron_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1665481472;a:1:{s:23:"aiowps_daily_cron_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1665512989;a:4:{s:18:"wp_https_detection";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1665512996;a:1:{s:21:"wp_update_user_counts";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1665556189;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1665556196;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1665556197;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1665556262;a:1:{s:13:"wpseo-reindex";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1665728989;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}s:7:"version";i:2;}', 'yes'),
	(107, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(108, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(109, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(110, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(111, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(112, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(113, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(114, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(115, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(116, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(117, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(118, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
	(120, 'recovery_keys', 'a:0:{}', 'yes'),
	(123, 'https_detection_errors', 'a:1:{s:23:"ssl_verification_failed";a:1:{i:0;s:38:"Проверка SSL неудачна.";}}', 'yes'),
	(141, 'recently_activated', 'a:2:{s:24:"wordpress-seo/wp-seo.php";i:1665139403;s:40:"wordpress-seo-premium/wp-seo-premium.php";i:1665139403;}', 'yes'),
	(152, 'can_compress_scripts', '1', 'no'),
	(159, 'finished_updating_comment_type', '1', 'yes'),
	(160, 'yoast_premium_as_an_addon_installer', 'completed', 'yes'),
	(161, 'yoast_migrations_free', 'a:1:{s:7:"version";s:6:"19.7.2";}', 'yes'),
	(162, 'wpseo', 'a:96:{s:8:"tracking";b:0;s:22:"license_server_version";b:0;s:15:"ms_defaults_set";b:0;s:40:"ignore_search_engines_discouraged_notice";b:1;s:19:"indexing_first_time";b:1;s:16:"indexing_started";b:0;s:15:"indexing_reason";s:23:"home_url_option_changed";s:29:"indexables_indexing_completed";b:1;s:13:"index_now_key";s:100:"fpdEMDsYFJUfp8dxLw9N97oqPJkfCTlE0MCNzVVSTWrXxoxXAX7Qy7mJANzoF62vdtvMYnhu2ZDJaMbRoAEulNCL-X3VCWCg2jBB";s:7:"version";s:6:"19.7.2";s:16:"previous_version";s:4:"19.7";s:20:"disableadvanced_meta";b:1;s:30:"enable_headless_rest_endpoints";b:1;s:17:"ryte_indexability";b:0;s:11:"baiduverify";s:0:"";s:12:"googleverify";s:0:"";s:8:"msverify";s:0:"";s:12:"yandexverify";s:0:"";s:9:"site_type";s:0:"";s:20:"has_multiple_authors";s:0:"";s:16:"environment_type";s:0:"";s:23:"content_analysis_active";b:1;s:23:"keyword_analysis_active";b:1;s:34:"inclusive_language_analysis_active";b:0;s:21:"enable_admin_bar_menu";b:1;s:26:"enable_cornerstone_content";b:1;s:18:"enable_xml_sitemap";b:1;s:24:"enable_text_link_counter";b:1;s:16:"enable_index_now";b:1;s:22:"show_onboarding_notice";b:1;s:18:"first_activated_on";i:1665037862;s:13:"myyoast-oauth";b:0;s:26:"semrush_integration_active";b:1;s:14:"semrush_tokens";a:0:{}s:20:"semrush_country_code";s:2:"us";s:19:"permalink_structure";s:12:"/%postname%/";s:8:"home_url";s:21:"https://wp-infra.test";s:18:"dynamic_permalinks";b:0;s:17:"category_base_url";s:0:"";s:12:"tag_base_url";s:0:"";s:21:"custom_taxonomy_slugs";a:0:{}s:29:"enable_enhanced_slack_sharing";b:1;s:25:"zapier_integration_active";b:0;s:19:"zapier_subscription";a:0:{}s:14:"zapier_api_key";s:32:"bgzHU1kwEa41h4Vg2eo0d7zYCi8PnEoe";s:23:"enable_metabox_insights";b:1;s:23:"enable_link_suggestions";b:1;s:26:"algolia_integration_active";b:0;s:14:"import_cursors";a:0:{}s:13:"workouts_data";a:1:{s:13:"configuration";a:1:{s:13:"finishedSteps";a:0:{}}}s:28:"configuration_finished_steps";a:0:{}s:36:"dismiss_configuration_workout_notice";b:0;s:34:"dismiss_premium_deactivated_notice";b:0;s:19:"importing_completed";a:5:{s:30:"aioseo_custom_archive_settings";b:1;s:31:"aioseo_default_archive_settings";b:1;s:23:"aioseo_general_settings";b:1;s:32:"aioseo_posttype_default_settings";b:1;s:24:"aioseo_taxonomy_settings";b:1;}s:26:"wincher_integration_active";b:1;s:14:"wincher_tokens";a:0:{}s:36:"wincher_automatically_add_keyphrases";b:0;s:18:"wincher_website_id";s:0:"";s:28:"wordproof_integration_active";b:0;s:29:"wordproof_integration_changed";b:0;s:18:"first_time_install";b:1;s:34:"should_redirect_after_install_free";b:0;s:34:"activation_redirect_timestamp_free";i:1665037935;s:18:"remove_feed_global";b:0;s:27:"remove_feed_global_comments";b:0;s:25:"remove_feed_post_comments";b:0;s:19:"remove_feed_authors";b:0;s:22:"remove_feed_categories";b:0;s:16:"remove_feed_tags";b:0;s:29:"remove_feed_custom_taxonomies";b:0;s:22:"remove_feed_post_types";b:0;s:18:"remove_feed_search";b:0;s:21:"remove_atom_rdf_feeds";b:0;s:17:"remove_shortlinks";b:0;s:21:"remove_rest_api_links";b:0;s:20:"remove_rsd_wlw_links";b:0;s:19:"remove_oembed_links";b:0;s:16:"remove_generator";b:0;s:20:"remove_emoji_scripts";b:0;s:24:"remove_powered_by_header";b:0;s:22:"remove_pingback_header";b:0;s:28:"clean_campaign_tracking_urls";b:0;s:16:"clean_permalinks";b:0;s:32:"clean_permalinks_extra_variables";s:0:"";s:14:"search_cleanup";b:0;s:20:"search_cleanup_emoji";b:0;s:23:"search_cleanup_patterns";b:0;s:22:"search_character_limit";i:50;s:20:"deny_search_crawling";b:0;s:21:"deny_wp_json_crawling";b:0;s:29:"least_readability_ignore_list";a:0:{}s:27:"least_seo_score_ignore_list";a:0:{}s:23:"most_linked_ignore_list";a:0:{}s:24:"least_linked_ignore_list";a:0:{}s:28:"indexables_page_reading_list";a:5:{i:0;b:0;i:1;b:0;i:2;b:0;i:3;b:0;i:4;b:0;}s:25:"indexables_overview_state";s:21:"dashboard-not-visited";}', 'yes'),
	(163, 'wpseo_titles', 'a:106:{s:17:"forcerewritetitle";b:0;s:9:"separator";s:7:"sc-dash";s:16:"title-home-wpseo";s:42:"%%sitename%% %%page%% %%sep%% %%sitedesc%%";s:18:"title-author-wpseo";s:41:"%%name%%, Author at %%sitename%% %%page%%";s:19:"title-archive-wpseo";s:38:"%%date%% %%page%% %%sep%% %%sitename%%";s:18:"title-search-wpseo";s:63:"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%";s:15:"title-404-wpseo";s:35:"Page not found %%sep%% %%sitename%%";s:25:"social-title-author-wpseo";s:8:"%%name%%";s:26:"social-title-archive-wpseo";s:8:"%%date%%";s:31:"social-description-author-wpseo";s:0:"";s:32:"social-description-archive-wpseo";s:0:"";s:29:"social-image-url-author-wpseo";s:0:"";s:30:"social-image-url-archive-wpseo";s:0:"";s:28:"social-image-id-author-wpseo";i:0;s:29:"social-image-id-archive-wpseo";i:0;s:19:"metadesc-home-wpseo";s:0:"";s:21:"metadesc-author-wpseo";s:0:"";s:22:"metadesc-archive-wpseo";s:0:"";s:9:"rssbefore";s:0:"";s:8:"rssafter";s:53:"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.";s:20:"noindex-author-wpseo";b:0;s:28:"noindex-author-noposts-wpseo";b:1;s:21:"noindex-archive-wpseo";b:1;s:14:"disable-author";b:0;s:12:"disable-date";b:0;s:19:"disable-post_format";b:0;s:18:"disable-attachment";b:1;s:20:"breadcrumbs-404crumb";s:25:"Error 404: Page not found";s:29:"breadcrumbs-display-blog-page";b:1;s:20:"breadcrumbs-boldlast";b:0;s:25:"breadcrumbs-archiveprefix";s:12:"Archives for";s:18:"breadcrumbs-enable";b:1;s:16:"breadcrumbs-home";s:4:"Home";s:18:"breadcrumbs-prefix";s:0:"";s:24:"breadcrumbs-searchprefix";s:16:"You searched for";s:15:"breadcrumbs-sep";s:7:"&raquo;";s:12:"website_name";s:0:"";s:11:"person_name";s:0:"";s:11:"person_logo";s:0:"";s:22:"alternate_website_name";s:0:"";s:12:"company_logo";s:0:"";s:12:"company_name";s:0:"";s:17:"company_or_person";s:7:"company";s:25:"company_or_person_user_id";b:0;s:17:"stripcategorybase";b:0;s:26:"open_graph_frontpage_title";s:12:"%%sitename%%";s:25:"open_graph_frontpage_desc";s:0:"";s:26:"open_graph_frontpage_image";s:0:"";s:10:"title-post";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-post";s:0:"";s:12:"noindex-post";b:0;s:23:"display-metabox-pt-post";b:1;s:23:"post_types-post-maintax";i:0;s:21:"schema-page-type-post";s:7:"WebPage";s:24:"schema-article-type-post";s:7:"Article";s:17:"social-title-post";s:9:"%%title%%";s:23:"social-description-post";s:0:"";s:21:"social-image-url-post";s:0:"";s:20:"social-image-id-post";i:0;s:10:"title-page";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-page";s:0:"";s:12:"noindex-page";b:0;s:23:"display-metabox-pt-page";b:1;s:23:"post_types-page-maintax";i:0;s:21:"schema-page-type-page";s:7:"WebPage";s:24:"schema-article-type-page";s:4:"None";s:17:"social-title-page";s:9:"%%title%%";s:23:"social-description-page";s:0:"";s:21:"social-image-url-page";s:0:"";s:20:"social-image-id-page";i:0;s:16:"title-attachment";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:19:"metadesc-attachment";s:0:"";s:18:"noindex-attachment";b:0;s:29:"display-metabox-pt-attachment";b:1;s:29:"post_types-attachment-maintax";i:0;s:27:"schema-page-type-attachment";s:7:"WebPage";s:30:"schema-article-type-attachment";s:4:"None";s:18:"title-tax-category";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-category";s:0:"";s:28:"display-metabox-tax-category";b:1;s:20:"noindex-tax-category";b:0;s:25:"social-title-tax-category";s:23:"%%term_title%% Archives";s:31:"social-description-tax-category";s:0:"";s:29:"social-image-url-tax-category";s:0:"";s:28:"social-image-id-tax-category";i:0;s:18:"title-tax-post_tag";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-post_tag";s:0:"";s:28:"display-metabox-tax-post_tag";b:1;s:20:"noindex-tax-post_tag";b:0;s:25:"social-title-tax-post_tag";s:23:"%%term_title%% Archives";s:31:"social-description-tax-post_tag";s:0:"";s:29:"social-image-url-tax-post_tag";s:0:"";s:28:"social-image-id-tax-post_tag";i:0;s:21:"title-tax-post_format";s:53:"%%term_title%% Archives %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-post_format";s:0:"";s:31:"display-metabox-tax-post_format";b:1;s:23:"noindex-tax-post_format";b:1;s:28:"social-title-tax-post_format";s:23:"%%term_title%% Archives";s:34:"social-description-tax-post_format";s:0:"";s:32:"social-image-url-tax-post_format";s:0:"";s:31:"social-image-id-tax-post_format";i:0;s:14:"person_logo_id";i:0;s:15:"company_logo_id";i:0;s:17:"company_logo_meta";b:0;s:16:"person_logo_meta";b:0;s:29:"open_graph_frontpage_image_id";i:0;}', 'yes'),
	(164, 'wpseo_social', 'a:19:{s:13:"facebook_site";s:0:"";s:13:"instagram_url";s:0:"";s:12:"linkedin_url";s:0:"";s:11:"myspace_url";s:0:"";s:16:"og_default_image";s:0:"";s:19:"og_default_image_id";s:0:"";s:18:"og_frontpage_title";s:0:"";s:17:"og_frontpage_desc";s:0:"";s:18:"og_frontpage_image";s:0:"";s:21:"og_frontpage_image_id";s:0:"";s:9:"opengraph";b:1;s:13:"pinterest_url";s:0:"";s:15:"pinterestverify";s:0:"";s:7:"twitter";b:1;s:12:"twitter_site";s:0:"";s:17:"twitter_card_type";s:19:"summary_large_image";s:11:"youtube_url";s:0:"";s:13:"wikipedia_url";s:0:"";s:17:"other_social_urls";a:0:{}}', 'yes'),
	(165, 'yoast_migrations_premium', 'a:1:{s:7:"version";s:4:"19.3";}', 'yes'),
	(166, 'wpseo_premium', 'a:4:{s:34:"prominent_words_indexing_completed";b:0;s:8:"workouts";a:2:{s:11:"cornerstone";a:3:{s:13:"finishedSteps";a:0:{}s:16:"indexablesByStep";a:5:{s:8:"addLinks";a:0:{}s:10:"checkLinks";a:0:{}s:18:"chooseCornerstones";a:0:{}s:8:"improved";a:0:{}s:7:"skipped";a:0:{}}s:8:"priority";i:20;}s:8:"orphaned";a:3:{s:13:"finishedSteps";a:0:{}s:16:"indexablesByStep";a:7:{s:13:"improveRemove";a:1:{i:0;s:1:"5";}s:6:"update";a:0:{}s:8:"addLinks";a:0:{}s:7:"removed";a:0:{}s:9:"noindexed";a:0:{}s:8:"improved";a:0:{}s:7:"skipped";a:0:{}}s:8:"priority";i:30;}}s:29:"should_redirect_after_install";b:0;s:29:"activation_redirect_timestamp";i:1665037870;}', 'yes'),
	(167, 'wpmdb_settings', 'a:14:{s:3:"key";s:40:"KqRSn6xIg8S5/4RE94fCNArnFmkBOLPAEQ1Istzn";s:10:"allow_pull";b:0;s:10:"allow_push";b:0;s:8:"profiles";a:0:{}s:7:"licence";s:0:"";s:10:"verify_ssl";b:0;s:17:"whitelist_plugins";a:0:{}s:11:"max_request";i:1048576;s:22:"delay_between_requests";i:0;s:18:"prog_tables_hidden";b:1;s:21:"pause_before_finalize";b:0;s:14:"allow_tracking";N;s:26:"high_performance_transfers";b:0;s:18:"compatibility_mode";b:0;}', 'no'),
	(169, 'wp_migrate_addon_schema', '1', 'yes'),
	(170, 'wpseo_current_version', '16', 'no'),
	(171, 'wpseo_premium_version', '19.3', 'yes'),
	(172, 'wpseo-premium-redirects-export-plain', 'a:0:{}', 'yes'),
	(173, 'wpseo-premium-redirects-export-regex', 'a:0:{}', 'yes'),
	(178, 'acf_version', '6.0.2', 'yes'),
	(179, 'wpmdb_saved_profiles', '', 'no'),
	(180, 'wpmdb_recent_migrations', '', 'no'),
	(181, 'wpmdb_migration_options', '', 'no'),
	(182, 'wpmdb_migration_state', '', 'no'),
	(183, 'wpmdb_remote_response', '', 'no'),
	(184, 'wpmdb_remote_migration_state', '', 'no'),
	(185, 'wpmdb_schema_version', '3.6', 'no'),
	(223, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3MjoiWXpNMU5qSTVOREUzT0RFNVlUbGtORFEyTlRjek9HSmxaRE0xTVRkbVpXRXhaalJtTURVd05XUTNPRGs1T1ROaU9EQTVNbVF5IjtzOjM6InVybCI7czoyMToiaHR0cHM6Ly93cC1pbmZyYS50ZXN0Ijt9', 'yes'),
	(300, 'new_admin_email', 'nikolay.raikevich@aventus.work', 'yes'),
	(319, 'theme_mods_twentytwentytwo', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1665039430;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";}s:9:"sidebar-2";a:2:{i:0;s:7:"block-5";i:1;s:7:"block-6";}}}}', 'yes'),
	(320, 'current_theme', 'Clean Theme', 'yes'),
	(321, 'theme_mods_clean', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;}', 'yes'),
	(322, 'theme_switched', '', 'yes'),
	(323, 'wpseo_redirect', 'a:2:{s:20:"disable_php_redirect";s:3:"off";s:13:"separate_file";s:3:"off";}', 'yes'),
	(326, 'recovery_mode_email_last_sent', '1665305559', 'yes'),
	(338, 'aio_wp_security_configs', 'a:102:{s:19:"aiowps_enable_debug";s:0:"";s:36:"aiowps_enable_php_backtrace_in_email";s:0:"";s:36:"aiowps_remove_wp_generator_meta_info";s:0:"";s:25:"aiowps_prevent_hotlinking";s:0:"";s:28:"aiowps_enable_login_lockdown";s:0:"";s:28:"aiowps_allow_unlock_requests";s:1:"1";s:25:"aiowps_max_login_attempts";s:1:"3";s:24:"aiowps_retry_time_period";s:1:"5";s:26:"aiowps_lockout_time_length";s:1:"5";s:30:"aiowps_max_lockout_time_length";s:2:"60";s:28:"aiowps_set_generic_login_msg";s:0:"";s:26:"aiowps_enable_email_notify";s:0:"";s:20:"aiowps_email_address";s:30:"nikolay.raikevich@aventus.work";s:27:"aiowps_enable_forced_logout";s:0:"";s:25:"aiowps_logout_time_period";s:2:"60";s:39:"aiowps_enable_invalid_username_lockdown";s:0:"";s:43:"aiowps_instantly_lockout_specific_usernames";a:0:{}s:32:"aiowps_unlock_request_secret_key";s:20:"mlvff39bh5rra2pz3kq2";s:35:"aiowps_lockdown_enable_whitelisting";s:0:"";s:36:"aiowps_lockdown_allowed_ip_addresses";s:0:"";s:26:"aiowps_enable_whitelisting";s:0:"";s:27:"aiowps_allowed_ip_addresses";s:0:"";s:27:"aiowps_enable_login_captcha";s:0:"";s:34:"aiowps_enable_custom_login_captcha";s:0:"";s:31:"aiowps_enable_woo_login_captcha";s:0:"";s:34:"aiowps_enable_woo_register_captcha";s:0:"";s:38:"aiowps_enable_woo_lostpassword_captcha";s:0:"";s:25:"aiowps_captcha_secret_key";s:20:"unvm2ombj59l23dja1q0";s:42:"aiowps_enable_manual_registration_approval";s:0:"";s:39:"aiowps_enable_registration_page_captcha";s:0:"";s:35:"aiowps_enable_registration_honeypot";s:0:"";s:27:"aiowps_enable_random_prefix";s:0:"";s:31:"aiowps_enable_automated_backups";s:0:"";s:26:"aiowps_db_backup_frequency";s:1:"4";s:25:"aiowps_db_backup_interval";s:1:"2";s:26:"aiowps_backup_files_stored";s:1:"2";s:32:"aiowps_send_backup_email_address";s:0:"";s:27:"aiowps_backup_email_address";s:30:"nikolay.raikevich@aventus.work";s:27:"aiowps_disable_file_editing";s:0:"";s:37:"aiowps_prevent_default_wp_file_access";s:0:"";s:22:"aiowps_system_log_file";s:9:"error_log";s:26:"aiowps_enable_blacklisting";s:0:"";s:26:"aiowps_banned_ip_addresses";s:0:"";s:28:"aiowps_enable_basic_firewall";s:0:"";s:27:"aiowps_max_file_upload_size";s:2:"10";s:31:"aiowps_enable_pingback_firewall";s:0:"";s:38:"aiowps_disable_xmlrpc_pingback_methods";s:0:"";s:34:"aiowps_block_debug_log_file_access";s:0:"";s:26:"aiowps_disable_index_views";s:0:"";s:30:"aiowps_disable_trace_and_track";s:0:"";s:28:"aiowps_forbid_proxy_comments";s:0:"";s:29:"aiowps_deny_bad_query_strings";s:0:"";s:34:"aiowps_advanced_char_string_filter";s:0:"";s:25:"aiowps_enable_5g_firewall";s:0:"";s:25:"aiowps_enable_6g_firewall";s:0:"";s:26:"aiowps_enable_custom_rules";s:0:"";s:32:"aiowps_place_custom_rules_at_top";s:0:"";s:19:"aiowps_custom_rules";s:0:"";s:25:"aiowps_enable_404_logging";s:0:"";s:28:"aiowps_enable_404_IP_lockout";s:0:"";s:30:"aiowps_404_lockout_time_length";s:2:"60";s:28:"aiowps_404_lock_redirect_url";s:16:"http://127.0.0.1";s:31:"aiowps_enable_rename_login_page";s:1:"1";s:28:"aiowps_enable_login_honeypot";s:0:"";s:35:"aiowps_disable_application_password";s:1:"1";s:43:"aiowps_enable_brute_force_attack_prevention";s:0:"";s:30:"aiowps_brute_force_secret_word";s:0:"";s:24:"aiowps_cookie_brute_test";s:0:"";s:44:"aiowps_cookie_based_brute_force_redirect_url";s:16:"http://127.0.0.1";s:59:"aiowps_brute_force_attack_prevention_pw_protected_exception";s:0:"";s:51:"aiowps_brute_force_attack_prevention_ajax_exception";s:0:"";s:19:"aiowps_site_lockout";s:0:"";s:23:"aiowps_site_lockout_msg";s:0:"";s:30:"aiowps_enable_spambot_blocking";s:0:"";s:29:"aiowps_enable_comment_captcha";s:0:"";s:31:"aiowps_enable_autoblock_spam_ip";s:0:"";s:33:"aiowps_spam_ip_min_comments_block";s:0:"";s:33:"aiowps_enable_bp_register_captcha";s:0:"";s:35:"aiowps_enable_bbp_new_topic_captcha";s:0:"";s:33:"aiowps_enable_trash_spam_comments";s:0:"";s:37:"aiowps_trash_spam_comments_after_days";s:2:"14";s:32:"aiowps_enable_automated_fcd_scan";s:0:"";s:25:"aiowps_fcd_scan_frequency";s:1:"4";s:24:"aiowps_fcd_scan_interval";s:1:"2";s:28:"aiowps_fcd_exclude_filetypes";s:0:"";s:24:"aiowps_fcd_exclude_files";s:0:"";s:26:"aiowps_send_fcd_scan_email";s:0:"";s:29:"aiowps_fcd_scan_email_address";s:30:"nikolay.raikevich@aventus.work";s:27:"aiowps_fcds_change_detected";b:0;s:22:"aiowps_copy_protection";s:0:"";s:40:"aiowps_prevent_site_display_inside_frame";s:0:"";s:32:"aiowps_prevent_users_enumeration";s:0:"";s:42:"aiowps_disallow_unauthorized_rest_requests";s:0:"";s:25:"aiowps_recaptcha_site_key";s:0:"";s:27:"aiowps_recaptcha_secret_key";s:0:"";s:24:"aiowps_default_recaptcha";s:0:"";s:36:"aiowps_on_uninstall_delete_db_tables";s:1:"1";s:34:"aiowps_on_uninstall_delete_configs";s:1:"1";s:12:"installed-at";i:1665049472;s:25:"aiowps_ip_retrieve_method";i:0;s:22:"aiowps_login_page_slug";s:5:"clean";s:21:"aios_firewall_dismiss";b:1;}', 'yes'),
	(339, 'aiowpsec_db_version', '1.9.6', 'yes'),
	(343, 'updraft_lock_aios_15_minutes_cron_event', '0', 'no'),
	(344, 'simba_tfa_priv_key_format', '1', 'no'),
	(399, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
	(497, 'options_button', '', 'no'),
	(498, '_options_button', 'field_634286dad5989', 'no'),
	(499, 'options_copyright', '', 'no'),
	(500, '_options_copyright', 'field_634287bb7d0ed', 'no'),
	(501, 'options_header_button', 'Кнопка', 'no'),
	(502, '_options_header_button', 'field_6342885487cee', 'no'),
	(503, 'options_header', '', 'no'),
	(504, '_options_header', 'field_6342884687ced', 'no'),
	(505, 'options_footer_copyright', 'Лицензия АРРФР на осуществление микрофинансовой деятельности № 02.21.0065.M. от 05.04.2021года', 'no'),
	(506, '_options_footer_copyright', 'field_6342887c87cf0', 'no'),
	(507, 'options_footer', '', 'no'),
	(508, '_options_footer', 'field_6342887387cef', 'no'),
	(550, '_site_transient_wpmdb_disabled_legacy_addons', '1', 'no'),
	(553, '_site_transient_wpmdb_available_addons_per_user_1', 'a:4:{s:29:"wp-migrate-db-pro-media-files";i:2351;s:21:"wp-migrate-db-pro-cli";i:3948;s:33:"wp-migrate-db-pro-multisite-tools";i:7999;s:36:"wp-migrate-db-pro-theme-plugin-files";i:36287;}', 'no'),
	(559, '_transient_timeout_acf_plugin_updates', '1665555181', 'no'),
	(560, '_transient_acf_plugin_updates', 'a:4:{s:7:"plugins";a:0:{}s:10:"expiration";i:172800;s:6:"status";i:1;s:7:"checked";a:1:{s:34:"advanced-custom-fields-pro/acf.php";s:5:"6.0.2";}}', 'no'),
	(639, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
	(640, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
	(648, '_transient_timeout_users_online', '1665473653', 'no'),
	(649, '_transient_users_online', 'a:1:{i:0;a:4:{s:7:"user_id";i:1;s:13:"last_activity";i:1665482653;s:10:"ip_address";s:14:"178.172.189.14";s:7:"blog_id";b:0;}}', 'no'),
	(652, '_site_transient_timeout_theme_roots', '1665471796', 'no'),
	(653, '_site_transient_theme_roots', 'a:1:{s:5:"clean";s:7:"/themes";}', 'no'),
	(654, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-6.0.2.zip";s:6:"locale";s:5:"ru_RU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/ru_RU/wordpress-6.0.2.zip";s:10:"no_content";s:0:"";s:11:"new_bundled";s:0:"";s:7:"partial";s:0:"";s:8:"rollback";s:0:"";}s:7:"current";s:5:"6.0.2";s:7:"version";s:5:"6.0.2";s:11:"php_version";s:6:"5.6.20";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.9";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1665469998;s:15:"version_checked";s:5:"6.0.2";s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:4:"core";s:4:"slug";s:7:"default";s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"6.0.2";s:7:"updated";s:19:"2022-10-10 06:20:08";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/6.0.2/ru_RU.zip";s:10:"autoupdate";b:1;}}}', 'no'),
	(655, '_site_transient_update_themes', 'O:8:"stdClass":5:{s:12:"last_checked";i:1665469998;s:7:"checked";a:1:{s:5:"clean";s:1:"1";}s:8:"response";a:0:{}s:9:"no_update";a:0:{}s:12:"translations";a:0:{}}', 'no'),
	(656, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1665469999;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:5:{s:51:"all-in-one-wp-security-and-firewall/wp-security.php";O:8:"stdClass":10:{s:2:"id";s:49:"w.org/plugins/all-in-one-wp-security-and-firewall";s:4:"slug";s:35:"all-in-one-wp-security-and-firewall";s:6:"plugin";s:51:"all-in-one-wp-security-and-firewall/wp-security.php";s:11:"new_version";s:5:"5.0.9";s:3:"url";s:66:"https://wordpress.org/plugins/all-in-one-wp-security-and-firewall/";s:7:"package";s:84:"https://downloads.wordpress.org/plugin/all-in-one-wp-security-and-firewall.5.0.9.zip";s:5:"icons";a:1:{s:2:"1x";s:88:"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/icon-128x128.png?rev=1232826";}s:7:"banners";a:2:{s:2:"2x";s:91:"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/banner-1544x500.png?rev=1914011";s:2:"1x";s:90:"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/banner-772x250.png?rev=1914013";}s:11:"banners_rtl";a:0:{}s:8:"requires";s:3:"5.0";}s:31:"query-monitor/query-monitor.php";O:8:"stdClass":10:{s:2:"id";s:27:"w.org/plugins/query-monitor";s:4:"slug";s:13:"query-monitor";s:6:"plugin";s:31:"query-monitor/query-monitor.php";s:11:"new_version";s:6:"3.10.1";s:3:"url";s:44:"https://wordpress.org/plugins/query-monitor/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/query-monitor.3.10.1.zip";s:5:"icons";a:3:{s:2:"2x";s:66:"https://ps.w.org/query-monitor/assets/icon-256x256.png?rev=2301273";s:2:"1x";s:58:"https://ps.w.org/query-monitor/assets/icon.svg?rev=2056073";s:3:"svg";s:58:"https://ps.w.org/query-monitor/assets/icon.svg?rev=2056073";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/query-monitor/assets/banner-1544x500.png?rev=2457098";s:2:"1x";s:68:"https://ps.w.org/query-monitor/assets/banner-772x250.png?rev=2457098";}s:11:"banners_rtl";a:0:{}s:8:"requires";s:3:"3.7";}s:21:"wp-sweep/wp-sweep.php";O:8:"stdClass":10:{s:2:"id";s:22:"w.org/plugins/wp-sweep";s:4:"slug";s:8:"wp-sweep";s:6:"plugin";s:21:"wp-sweep/wp-sweep.php";s:11:"new_version";s:5:"1.1.5";s:3:"url";s:39:"https://wordpress.org/plugins/wp-sweep/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/wp-sweep.1.1.5.zip";s:5:"icons";a:2:{s:2:"1x";s:53:"https://ps.w.org/wp-sweep/assets/icon.svg?rev=1098912";s:3:"svg";s:53:"https://ps.w.org/wp-sweep/assets/icon.svg?rev=1098912";}s:7:"banners";a:2:{s:2:"2x";s:64:"https://ps.w.org/wp-sweep/assets/banner-1544x500.jpg?rev=1098912";s:2:"1x";s:63:"https://ps.w.org/wp-sweep/assets/banner-772x250.jpg?rev=1098912";}s:11:"banners_rtl";a:0:{}s:8:"requires";s:3:"4.6";}s:47:"wp-security-audit-log/wp-security-audit-log.php";O:8:"stdClass":10:{s:2:"id";s:35:"w.org/plugins/wp-security-audit-log";s:4:"slug";s:21:"wp-security-audit-log";s:6:"plugin";s:47:"wp-security-audit-log/wp-security-audit-log.php";s:11:"new_version";s:7:"4.4.2.1";s:3:"url";s:52:"https://wordpress.org/plugins/wp-security-audit-log/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/wp-security-audit-log.4.4.2.1.zip";s:5:"icons";a:1:{s:2:"1x";s:74:"https://ps.w.org/wp-security-audit-log/assets/icon-128x128.png?rev=1805537";}s:7:"banners";a:1:{s:2:"1x";s:76:"https://ps.w.org/wp-security-audit-log/assets/banner-772x250.jpg?rev=2327238";}s:11:"banners_rtl";a:0:{}s:8:"requires";s:3:"5.0";}s:24:"wordpress-seo/wp-seo.php";O:8:"stdClass":10:{s:2:"id";s:27:"w.org/plugins/wordpress-seo";s:4:"slug";s:13:"wordpress-seo";s:6:"plugin";s:24:"wordpress-seo/wp-seo.php";s:11:"new_version";s:6:"19.7.2";s:3:"url";s:44:"https://wordpress.org/plugins/wordpress-seo/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/wordpress-seo.19.7.2.zip";s:5:"icons";a:3:{s:2:"2x";s:66:"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=2643727";s:2:"1x";s:58:"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699";s:3:"svg";s:58:"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=2363699";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=2643727";s:2:"1x";s:68:"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=2643727";}s:11:"banners_rtl";a:2:{s:2:"2x";s:73:"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=2643727";s:2:"1x";s:72:"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=2643727";}s:8:"requires";s:3:"5.9";}}s:7:"checked";a:8:{s:34:"advanced-custom-fields-pro/acf.php";s:5:"6.0.2";s:51:"all-in-one-wp-security-and-firewall/wp-security.php";s:5:"5.0.9";s:31:"query-monitor/query-monitor.php";s:6:"3.10.1";s:21:"wp-sweep/wp-sweep.php";s:5:"1.1.5";s:47:"wp-security-audit-log/wp-security-audit-log.php";s:7:"4.4.2.1";s:39:"wp-migrate-db-pro/wp-migrate-db-pro.php";s:5:"2.4.0";s:24:"wordpress-seo/wp-seo.php";s:6:"19.7.2";s:40:"wordpress-seo-premium/wp-seo-premium.php";s:4:"19.3";}}', 'no'),
	(658, '_transient_timeout_react_data_ru', '1665475274', 'no'),
	(659, '_transient_react_data_ru', 'a:2:{s:6:"header";a:2:{s:6:"button";s:12:"Кнопка";s:4:"menu";a:3:{i:0;a:2:{s:5:"title";s:14:"Главная";s:3:"url";s:22:"https://wp-infra.test/";}i:1;a:2:{s:5:"title";s:4:"Jira";s:3:"url";s:47:"https://jira.aventus.work/secure/Dashboard.jspa";}i:2;a:2:{s:5:"title";s:13:"FrontEnd Docs";s:3:"url";s:56:"https://confluence.aventus.work/display/WD/FrontEnd+Docs";}}}s:6:"footer";a:1:{s:9:"copyright";s:157:"Лицензия АРРФР на осуществление микрофинансовой деятельности № 02.21.0065.M. от 05.04.2021года";}}', 'no'),
	(660, '_site_transient_timeout_wpmdb_upgrade_data', '1665514534', 'no'),
	(661, '_site_transient_wpmdb_upgrade_data', 'a:5:{s:17:"wp-migrate-db-pro";a:4:{s:7:"version";s:5:"2.4.0";s:6:"tested";s:5:"6.0.2";s:8:"icon_url";s:60:"https://deliciousbrains.com/assets/images/icons/mdb/icon.svg";s:12:"requires_php";s:3:"5.6";}s:29:"wp-migrate-db-pro-media-files";a:4:{s:7:"version";s:5:"2.1.0";s:6:"tested";s:3:"5.8";s:8:"icon_url";s:60:"https://deliciousbrains.com/assets/images/icons/mdb/icon.svg";s:12:"requires_php";s:3:"5.6";}s:21:"wp-migrate-db-pro-cli";a:4:{s:7:"version";s:5:"1.6.0";s:6:"tested";s:3:"5.8";s:8:"icon_url";s:60:"https://deliciousbrains.com/assets/images/icons/mdb/icon.svg";s:12:"requires_php";s:3:"5.6";}s:33:"wp-migrate-db-pro-multisite-tools";a:4:{s:7:"version";s:5:"1.4.1";s:6:"tested";s:3:"5.8";s:8:"icon_url";s:60:"https://deliciousbrains.com/assets/images/icons/mdb/icon.svg";s:12:"requires_php";s:3:"5.6";}s:36:"wp-migrate-db-pro-theme-plugin-files";a:4:{s:7:"version";s:5:"1.2.0";s:6:"tested";s:3:"5.8";s:8:"icon_url";s:60:"https://deliciousbrains.com/assets/images/icons/mdb/icon.svg";s:12:"requires_php";s:3:"5.6";}}', 'no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;

-- Дамп структуры для таблица wp-infra.wp_postmeta
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Дамп данных таблицы wp-infra.wp_postmeta: ~42 rows (приблизительно)
DELETE FROM `wp_postmeta`;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
	(13, 8, '_edit_lock', '1665471853:1'),
	(14, 8, '_edit_last', '1'),
	(15, 8, '_yoast_wpseo_focuskeywords', '[]'),
	(16, 8, '_yoast_wpseo_keywordsynonyms', '[""]'),
	(17, 8, '_yoast_wpseo_estimated-reading-time-minutes', '0'),
	(18, 8, '_yoast_wpseo_wordproof_timestamp', ''),
	(22, 12, '_menu_item_type', 'post_type'),
	(23, 12, '_menu_item_menu_item_parent', '0'),
	(24, 12, '_menu_item_object_id', '8'),
	(25, 12, '_menu_item_object', 'page'),
	(26, 12, '_menu_item_target', ''),
	(27, 12, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(28, 12, '_menu_item_xfn', ''),
	(29, 12, '_menu_item_url', ''),
	(31, 13, '_menu_item_type', 'custom'),
	(32, 13, '_menu_item_menu_item_parent', '0'),
	(33, 13, '_menu_item_object_id', '13'),
	(34, 13, '_menu_item_object', 'custom'),
	(35, 13, '_menu_item_target', ''),
	(36, 13, '_menu_item_classes', 'a:1:{i:0;s:12:"custom_class";}'),
	(37, 13, '_menu_item_xfn', ''),
	(38, 13, '_menu_item_url', 'https://jira.aventus.work/secure/Dashboard.jspa'),
	(40, 14, '_menu_item_type', 'custom'),
	(41, 14, '_menu_item_menu_item_parent', '0'),
	(42, 14, '_menu_item_object_id', '14'),
	(43, 14, '_menu_item_object', 'custom'),
	(44, 14, '_menu_item_target', ''),
	(45, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
	(46, 14, '_menu_item_xfn', ''),
	(47, 14, '_menu_item_url', 'https://confluence.aventus.work/display/WD/FrontEnd+Docs'),
	(49, 16, '_edit_last', '1'),
	(50, 16, '_edit_lock', '1665382527:1'),
	(51, 28, '_edit_last', '1'),
	(52, 28, '_edit_lock', '1665309061:1'),
	(53, 34, '_wp_attached_file', '2022/10/banner.jpg'),
	(54, 34, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:814;s:4:"file";s:18:"2022/10/banner.jpg";s:8:"filesize";i:114011;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:18:"banner-300x127.jpg";s:5:"width";i:300;s:6:"height";i:127;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6154;}s:5:"large";a:5:{s:4:"file";s:19:"banner-1024x434.jpg";s:5:"width";i:1024;s:6:"height";i:434;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:36324;}s:9:"thumbnail";a:5:{s:4:"file";s:17:"banner-150x64.jpg";s:5:"width";i:150;s:6:"height";i:64;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:2498;}s:9:"1536x1536";a:5:{s:4:"file";s:19:"banner-1536x651.jpg";s:5:"width";i:1536;s:6:"height";i:651;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:64764;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(55, 36, '_edit_last', '1'),
	(56, 36, '_edit_lock', '1665314881:1'),
	(57, 46, '_wp_attached_file', '2022/10/image-29.jpg'),
	(58, 46, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:635;s:6:"height";i:475;s:4:"file";s:20:"2022/10/image-29.jpg";s:8:"filesize";i:135854;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:20:"image-29-300x224.jpg";s:5:"width";i:300;s:6:"height";i:224;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:10517;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"image-29-150x112.jpg";s:5:"width";i:150;s:6:"height";i:112;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:3982;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
	(59, 47, '_wp_attached_file', '2022/10/image-30.jpg'),
	(60, 47, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:635;s:6:"height";i:238;s:4:"file";s:20:"2022/10/image-30.jpg";s:8:"filesize";i:103599;s:5:"sizes";a:2:{s:6:"medium";a:5:{s:4:"file";s:20:"image-30-300x112.jpg";s:5:"width";i:300;s:6:"height";i:112;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6719;}s:9:"thumbnail";a:5:{s:4:"file";s:19:"image-30-150x56.jpg";s:5:"width";i:150;s:6:"height";i:56;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:2609;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;

-- Дамп структуры для таблица wp-infra.wp_posts
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Дамп данных таблицы wp-infra.wp_posts: ~24 rows (приблизительно)
DELETE FROM `wp_posts`;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
	(8, 1, '2022-10-06 09:37:53', '2022-10-06 06:37:53', '<!-- wp:acf/banner-block {"name":"acf/banner-block","data":{"image":34,"_image":"field_63428e349991d","title":"Заголовок баннера","_title":"field_63428e4a9991e","description":"Описание баннера в одну или несколько строк","_description":"field_63428e509991f"},"align":"full","mode":"edit"} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:acf/accordion-block {"name":"acf/accordion-block","data":{"title":"Вопросы и ответы","_title":"field_63429a9bb6216","accordion_0_question":"Как взять микрокредит?","_accordion_0_question":"field_63429a5e9ece4","accordion_0_answer":"\\u003cp\\u003eДля новых клиентов оформление онлайн-микрокредита в Credit365 состоит из трех шагов:\\u003c/p\\u003e\\r\\n\\u003cp\\u003eВыберите срок и сумму микрокредита с помощью кредитного калькулятора и нажмите кнопку «Получить деньги».\\u003c/p\\u003e\\r\\n\\u003cp\\u003eЗарегистрируйтесь и заполните короткую анкету, укажите платежную информацию, чтобы мы могли отправить вам деньги. Для этого добавьте ваш 20-значный номер IBAN-счета банковской карты любого банка РК. Этот этап очень важен при подаче заявки и является гарантом того, что именно вы хотите получить микрокредит, а не мошенник, который завладел вашими паспортными данными.\\u003c/p\\u003e\\r\\n\\u003cp\\u003eДождитесь решения по заявке, затем подпишите индивидуальную часть договора через SMS-код и получите деньги на ваш IBAN-счёт.\\u003c/p\\u003e\\r\\n\\u003cp\\u003eЗарегистрированным клиентам, которые ранее пользовались нашим сервисом, будет достаточно в личном кабинете выбрать необходимую сумму и срок микрокредита.\\u003c/p\\u003e\\r\\n\\u003cp\\u003eВесь процесс получения денег займет не более 2 минут.\\u003c/p\\u003e\\r\\n\\u003cp\\u003eВремя оформления первого микрокредита варьируется между 5-10 минутами.\\u003c/p\\u003e","_accordion_0_answer":"field_63429a699ece5","accordion_1_question":"Где можно получить микрокредит?","_accordion_1_question":"field_63429a5e9ece4","accordion_1_answer":"Микрокредит в Credit365 можно получить в любом населенном пункте Казахстана, не выходя из дома. Нужны только удостоверение личности, действующий номер телефона, доступ в интернет и 20-значный номер IBAN-счета банковской карты любого банка РК.","_accordion_1_answer":"field_63429a699ece5","accordion_2_question":"Как найти IBAN в мобильных приложениях банков?","_accordion_2_question":"field_63429a5e9ece4","accordion_2_answer":"\\u003cp\\u003eKaspi.kz\\u003c/p\\u003e\\r\\n\\u003cp\\u003e\\u003cimg class=\\u0022alignnone size-full wp-image-46\\u0022 src=\\u0022https://wp-infra.test/wp-content/uploads/2022/10/image-29.jpg\\u0022 alt=\\u0022\\u0022 width=\\u0022635\\u0022 height=\\u0022475\\u0022 /\\u003e\\u003c/p\\u003e\\r\\n\\u003cp\\u003eHalyk Bank\\u003c/p\\u003e\\r\\n\\u003cp\\u003e\\u003cimg class=\\u0022alignnone size-full wp-image-47\\u0022 src=\\u0022https://wp-infra.test/wp-content/uploads/2022/10/image-30.jpg\\u0022 alt=\\u0022\\u0022 width=\\u0022635\\u0022 height=\\u0022238\\u0022 /\\u003e\\u003c/p\\u003e","_accordion_2_answer":"field_63429a699ece5","accordion":3,"_accordion":"field_63429a4c9ece3"},"mode":"edit"} /-->', 'Главная', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f', '', '', '2022-10-09 13:43:41', '2022-10-09 10:43:41', '', 0, 'https://wp-infra.test/?page_id=8', 0, 'page', '', 0),
	(12, 1, '2022-10-07 12:54:24', '2022-10-07 09:38:25', ' ', '', '', 'publish', 'closed', 'closed', '', '12', '', '', '2022-10-07 12:54:24', '2022-10-07 09:54:24', '', 0, 'https://wp-infra.test/?p=12', 1, 'nav_menu_item', '', 0),
	(13, 1, '2022-10-07 12:54:24', '2022-10-07 09:38:25', '', 'Jira', '', 'publish', 'closed', 'closed', '', 'jira', '', '', '2022-10-07 12:54:24', '2022-10-07 09:54:24', '', 0, 'https://wp-infra.test/?p=13', 2, 'nav_menu_item', '', 0),
	(14, 1, '2022-10-07 12:54:24', '2022-10-07 09:38:25', '', 'FrontEnd Docs', '', 'publish', 'closed', 'closed', '', 'frontend-docs', '', '', '2022-10-07 12:54:24', '2022-10-07 09:54:24', '', 0, 'https://wp-infra.test/?p=14', 3, 'nav_menu_item', '', 0),
	(16, 1, '2022-10-09 11:31:58', '2022-10-09 08:31:58', 'a:8:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:12:"options_page";s:8:"operator";s:2:"==";s:5:"value";s:14:"general-fields";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";s:12:"show_in_rest";i:0;}', 'Общие поля', '%d0%be%d0%b1%d1%89%d0%b8%d0%b5-%d0%bf%d0%be%d0%bb%d1%8f', 'publish', 'closed', 'closed', '', 'group_6342867b4010c', '', '', '2022-10-09 11:38:39', '2022-10-09 08:38:39', '', 0, 'https://wp-infra.test/?post_type=acf-field-group&#038;p=16', 0, 'acf-field-group', '', 0),
	(17, 1, '2022-10-09 11:31:58', '2022-10-09 08:31:58', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:4:"left";s:8:"endpoint";i:0;}', 'Header', '', 'publish', 'closed', 'closed', '', 'field_6342867bd5988', '', '', '2022-10-09 11:36:31', '2022-10-09 08:36:31', '', 16, 'https://wp-infra.test/?post_type=acf-field&#038;p=17', 0, 'acf-field', '', 0),
	(20, 1, '2022-10-09 11:35:30', '2022-10-09 08:35:30', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:4:"left";s:8:"endpoint";i:0;}', 'Footer', '', 'publish', 'closed', 'closed', '', 'field_634287a77d0ec', '', '', '2022-10-09 11:38:39', '2022-10-09 08:38:39', '', 16, 'https://wp-infra.test/?post_type=acf-field&#038;p=20', 2, 'acf-field', '', 0),
	(22, 1, '2022-10-09 11:38:39', '2022-10-09 08:38:39', 'a:7:{s:4:"type";s:5:"group";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:5:"block";s:10:"sub_fields";a:0:{}}', 'Header', 'header', 'publish', 'closed', 'closed', '', 'field_6342884687ced', '', '', '2022-10-09 11:38:39', '2022-10-09 08:38:39', '', 16, 'https://wp-infra.test/?post_type=acf-field&p=22', 1, 'acf-field', '', 0),
	(23, 1, '2022-10-09 11:38:39', '2022-10-09 08:38:39', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Button', 'button', 'publish', 'closed', 'closed', '', 'field_6342885487cee', '', '', '2022-10-09 11:38:39', '2022-10-09 08:38:39', '', 22, 'https://wp-infra.test/?post_type=acf-field&p=23', 0, 'acf-field', '', 0),
	(24, 1, '2022-10-09 11:38:39', '2022-10-09 08:38:39', 'a:7:{s:4:"type";s:5:"group";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:5:"block";s:10:"sub_fields";a:0:{}}', 'Footer', 'footer', 'publish', 'closed', 'closed', '', 'field_6342887387cef', '', '', '2022-10-09 11:38:39', '2022-10-09 08:38:39', '', 16, 'https://wp-infra.test/?post_type=acf-field&p=24', 3, 'acf-field', '', 0),
	(25, 1, '2022-10-09 11:38:39', '2022-10-09 08:38:39', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";i:3;s:11:"placeholder";s:0:"";s:9:"new_lines";s:0:"";}', 'Copyright', 'copyright', 'publish', 'closed', 'closed', '', 'field_6342887c87cf0', '', '', '2022-10-09 11:38:39', '2022-10-09 08:38:39', '', 24, 'https://wp-infra.test/?post_type=acf-field&p=25', 0, 'acf-field', '', 0),
	(26, 1, '2022-10-09 11:52:23', '2022-10-09 08:52:23', '{"version": 2, "isGlobalStylesUserThemeJSON": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-clean', '', '', '2022-10-09 11:52:23', '2022-10-09 08:52:23', '', 0, 'https://wp-infra.test/wp-global-styles-clean/', 0, 'wp_global_styles', '', 0),
	(28, 1, '2022-10-09 12:03:22', '2022-10-09 09:03:22', 'a:8:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:5:"block";s:8:"operator";s:2:"==";s:5:"value";s:16:"acf/banner-block";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";s:12:"show_in_rest";i:0;}', 'Banner Block', 'banner-block', 'publish', 'closed', 'closed', '', 'group_63428e33c301a', '', '', '2022-10-09 12:03:22', '2022-10-09 09:03:22', '', 0, 'https://wp-infra.test/?post_type=acf-field-group&#038;p=28', 0, 'acf-field-group', '', 0),
	(29, 1, '2022-10-09 12:03:22', '2022-10-09 09:03:22', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:12:"preview_size";s:6:"medium";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_63428e349991d', '', '', '2022-10-09 12:03:22', '2022-10-09 09:03:22', '', 28, 'https://wp-infra.test/?post_type=acf-field&p=29', 0, 'acf-field', '', 0),
	(30, 1, '2022-10-09 12:03:22', '2022-10-09 09:03:22', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_63428e4a9991e', '', '', '2022-10-09 12:03:22', '2022-10-09 09:03:22', '', 28, 'https://wp-infra.test/?post_type=acf-field&p=30', 1, 'acf-field', '', 0),
	(31, 1, '2022-10-09 12:03:22', '2022-10-09 09:03:22', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_63428e509991f', '', '', '2022-10-09 12:03:22', '2022-10-09 09:03:22', '', 28, 'https://wp-infra.test/?post_type=acf-field&p=31', 2, 'acf-field', '', 0),
	(34, 1, '2022-10-09 12:44:59', '2022-10-09 09:44:59', '', 'banner', '', 'inherit', '', 'closed', '', 'banner', '', '', '2022-10-09 12:44:59', '2022-10-09 09:44:59', '', 8, 'https://wp-infra.test/wp-content/uploads/2022/10/banner.jpg', 0, 'attachment', 'image/jpeg', 0),
	(36, 1, '2022-10-09 12:54:00', '2022-10-09 09:54:00', 'a:8:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:5:"block";s:8:"operator";s:2:"==";s:5:"value";s:19:"acf/accordion-block";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";s:12:"show_in_rest";i:0;}', 'Accordion Block', 'accordion-block', 'publish', 'closed', 'closed', '', 'group_63429a1707670', '', '', '2022-10-09 13:12:10', '2022-10-09 10:12:10', '', 0, 'https://wp-infra.test/?post_type=acf-field-group&#038;p=36', 0, 'acf-field-group', '', 0),
	(38, 1, '2022-10-09 12:55:30', '2022-10-09 09:55:30', 'a:12:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:6:"layout";s:5:"table";s:10:"pagination";i:0;s:3:"min";s:0:"";s:3:"max";s:0:"";s:9:"collapsed";s:0:"";s:12:"button_label";s:16:"Добавить";s:13:"rows_per_page";i:20;}', 'FAQ', 'accordion', 'publish', 'closed', 'closed', '', 'field_63429a4c9ece3', '', '', '2022-10-09 12:56:15', '2022-10-09 09:56:15', '', 36, 'https://wp-infra.test/?post_type=acf-field&#038;p=38', 1, 'acf-field', '', 0),
	(39, 1, '2022-10-09 12:55:30', '2022-10-09 09:55:30', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"35";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Question', 'question', 'publish', 'closed', 'closed', '', 'field_63429a5e9ece4', '', '', '2022-10-09 12:57:09', '2022-10-09 09:57:09', '', 38, 'https://wp-infra.test/?post_type=acf-field&#038;p=39', 0, 'acf-field', '', 0),
	(40, 1, '2022-10-09 12:55:30', '2022-10-09 09:55:30', 'a:10:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:2:"65";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:5:"delay";i:0;s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;}', 'Answer', 'answer', 'publish', 'closed', 'closed', '', 'field_63429a699ece5', '', '', '2022-10-09 13:12:10', '2022-10-09 10:12:10', '', 38, 'https://wp-infra.test/?post_type=acf-field&#038;p=40', 1, 'acf-field', '', 0),
	(41, 1, '2022-10-09 12:56:15', '2022-10-09 09:56:15', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_63429a9bb6216', '', '', '2022-10-09 12:56:15', '2022-10-09 09:56:15', '', 36, 'https://wp-infra.test/?post_type=acf-field&p=41', 0, 'acf-field', '', 0),
	(46, 1, '2022-10-09 13:34:21', '2022-10-09 10:34:21', '', 'image-29', '', 'inherit', '', 'closed', '', 'image-29', '', '', '2022-10-09 13:34:21', '2022-10-09 10:34:21', '', 8, 'https://wp-infra.test/wp-content/uploads/2022/10/image-29.jpg', 0, 'attachment', 'image/jpeg', 0),
	(47, 1, '2022-10-09 13:35:11', '2022-10-09 10:35:11', '', 'image-30', '', 'inherit', '', 'closed', '', 'image-30', '', '', '2022-10-09 13:35:11', '2022-10-09 10:35:11', '', 8, 'https://wp-infra.test/wp-content/uploads/2022/10/image-30.jpg', 0, 'attachment', 'image/jpeg', 0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;

-- Дамп структуры для таблица wp-infra.wp_termmeta
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Дамп данных таблицы wp-infra.wp_termmeta: ~0 rows (приблизительно)
DELETE FROM `wp_termmeta`;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;

-- Дамп структуры для таблица wp-infra.wp_terms
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Дамп данных таблицы wp-infra.wp_terms: ~3 rows (приблизительно)
DELETE FROM `wp_terms`;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
	(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
	(2, 'Header menu', 'header-menu', 0),
	(3, 'clean', 'clean', 0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;

-- Дамп структуры для таблица wp-infra.wp_term_relationships
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint unsigned NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Дамп данных таблицы wp-infra.wp_term_relationships: ~3 rows (приблизительно)
DELETE FROM `wp_term_relationships`;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
	(12, 2, 0),
	(13, 2, 0),
	(14, 2, 0),
	(26, 3, 0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;

-- Дамп структуры для таблица wp-infra.wp_term_taxonomy
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint unsigned NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Дамп данных таблицы wp-infra.wp_term_taxonomy: ~3 rows (приблизительно)
DELETE FROM `wp_term_taxonomy`;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
	(1, 1, 'category', '', 0, 0),
	(2, 2, 'nav_menu', '', 0, 3),
	(3, 3, 'wp_theme', '', 0, 1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;

-- Дамп структуры для таблица wp-infra.wp_usermeta
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Дамп данных таблицы wp-infra.wp_usermeta: ~27 rows (приблизительно)
DELETE FROM `wp_usermeta`;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
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
	(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
	(13, 1, 'wp_user_level', '10'),
	(14, 1, 'dismissed_wp_pointers', ''),
	(15, 1, 'show_welcome_panel', '1'),
	(16, 1, 'session_tokens', 'a:1:{s:64:"d399f1e1731a694b806aa41aa2a1e93220000c0cd480b5b89308cf7e86951a8d";a:4:{s:10:"expiration";i:1665476208;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36";s:5:"login";i:1665303408;}}'),
	(17, 1, 'wp_dashboard_quick_press_last_post_id', '15'),
	(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
	(21, 1, 'wp_wpseo-dismiss-yoast-seo-premium', 'seen'),
	(23, 1, 'wp_i18nModuleTranslationAssistance', 'seen'),
	(24, 1, 'closedpostboxes_page', 'a:1:{i:0;s:10:"wpseo_meta";}'),
	(25, 1, 'metaboxhidden_page', 'a:0:{}'),
	(26, 1, '_yoast_wpseo_profile_updated', '1665039431'),
	(28, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:15:"title-attribute";i:2;s:3:"xfn";i:3;s:11:"description";}'),
	(29, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
	(32, 1, 'aiowps_last_login_time', '2022-10-09 08:16:48'),
	(33, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&imgsize=full'),
	(34, 1, 'wp_user-settings-time', '1665315020'),
	(35, 1, 'nav_menu_recently_edited', '2');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;

-- Дамп структуры для таблица wp-infra.wp_users
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Дамп данных таблицы wp-infra.wp_users: ~0 rows (приблизительно)
DELETE FROM `wp_users`;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
	(1, 'admin', '$P$BTFv.oMXNV95zkW6cgx8RSTTRXLQUB1', 'admin', 'nikolay.raikevich@aventus.work', 'https://wp-infra.test', '2022-10-06 06:29:47', '', 0, 'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;

-- Дамп структуры для таблица wp-infra.wp_yoast_indexable
CREATE TABLE IF NOT EXISTS `wp_yoast_indexable` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `permalink` longtext COLLATE utf8mb4_unicode_520_ci,
  `permalink_hash` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `object_id` bigint DEFAULT NULL,
  `object_type` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `object_sub_type` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `author_id` bigint DEFAULT NULL,
  `post_parent` bigint DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_520_ci,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `breadcrumb_title` text COLLATE utf8mb4_unicode_520_ci,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_protected` tinyint(1) DEFAULT '0',
  `has_public_posts` tinyint(1) DEFAULT NULL,
  `number_of_pages` int unsigned DEFAULT NULL,
  `canonical` longtext COLLATE utf8mb4_unicode_520_ci,
  `primary_focus_keyword` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `primary_focus_keyword_score` int DEFAULT NULL,
  `readability_score` int DEFAULT NULL,
  `is_cornerstone` tinyint(1) DEFAULT '0',
  `is_robots_noindex` tinyint(1) DEFAULT '0',
  `is_robots_nofollow` tinyint(1) DEFAULT '0',
  `is_robots_noarchive` tinyint(1) DEFAULT '0',
  `is_robots_noimageindex` tinyint(1) DEFAULT '0',
  `is_robots_nosnippet` tinyint(1) DEFAULT '0',
  `twitter_title` text COLLATE utf8mb4_unicode_520_ci,
  `twitter_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `twitter_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_title` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_description` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image` longtext COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_id` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `open_graph_image_source` text COLLATE utf8mb4_unicode_520_ci,
  `open_graph_image_meta` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `link_count` int DEFAULT NULL,
  `incoming_link_count` int DEFAULT NULL,
  `prominent_words_version` int unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint NOT NULL DEFAULT '1',
  `language` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `region` varchar(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_page_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schema_article_type` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `has_ancestors` tinyint(1) DEFAULT '0',
  `estimated_reading_time_minutes` int DEFAULT NULL,
  `version` int DEFAULT '1',
  `object_last_modified` datetime DEFAULT NULL,
  `object_published_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_type_and_sub_type` (`object_type`,`object_sub_type`),
  KEY `object_id_and_type` (`object_id`,`object_type`),
  KEY `permalink_hash_and_object_type` (`permalink_hash`,`object_type`),
  KEY `subpages` (`post_parent`,`object_type`,`post_status`,`object_id`),
  KEY `prominent_words` (`prominent_words_version`,`object_type`,`object_sub_type`,`post_status`),
  KEY `published_sitemap_index` (`object_published_at`,`is_robots_noindex`,`object_type`,`object_sub_type`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Дамп данных таблицы wp-infra.wp_yoast_indexable: ~7 rows (приблизительно)
DELETE FROM `wp_yoast_indexable`;
/*!40000 ALTER TABLE `wp_yoast_indexable` DISABLE KEYS */;
INSERT INTO `wp_yoast_indexable` (`id`, `permalink`, `permalink_hash`, `object_id`, `object_type`, `object_sub_type`, `author_id`, `post_parent`, `title`, `description`, `breadcrumb_title`, `post_status`, `is_public`, `is_protected`, `has_public_posts`, `number_of_pages`, `canonical`, `primary_focus_keyword`, `primary_focus_keyword_score`, `readability_score`, `is_cornerstone`, `is_robots_noindex`, `is_robots_nofollow`, `is_robots_noarchive`, `is_robots_noimageindex`, `is_robots_nosnippet`, `twitter_title`, `twitter_image`, `twitter_description`, `twitter_image_id`, `twitter_image_source`, `open_graph_title`, `open_graph_description`, `open_graph_image`, `open_graph_image_id`, `open_graph_image_source`, `open_graph_image_meta`, `link_count`, `incoming_link_count`, `prominent_words_version`, `created_at`, `updated_at`, `blog_id`, `language`, `region`, `schema_page_type`, `schema_article_type`, `has_ancestors`, `estimated_reading_time_minutes`, `version`, `object_last_modified`, `object_published_at`) VALUES
	(3, NULL, NULL, 1, 'term', 'category', NULL, NULL, NULL, NULL, 'Без рубрики', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-10-06 06:31:10', '2022-10-06 09:31:11', 1, NULL, NULL, NULL, NULL, 0, NULL, 0, '2022-10-06 06:29:47', '2022-10-06 06:29:47'),
	(4, 'https://wp-infra.test/author/admin/', '35:80565e86e75996746ad187d2a319201d', 1, 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, 'https://secure.gravatar.com/avatar/0e07e8782d48ea8aea4914d33a36cd80?s=500&d=mm&r=g', NULL, NULL, 'gravatar-image', NULL, NULL, 'https://secure.gravatar.com/avatar/0e07e8782d48ea8aea4914d33a36cd80?s=500&d=mm&r=g', NULL, 'gravatar-image', NULL, NULL, NULL, NULL, '2022-10-06 06:36:56', '2022-10-07 09:54:24', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-10-07 09:54:24', '2022-10-06 06:37:53'),
	(5, NULL, NULL, 8, 'post', 'page', 1, 0, NULL, NULL, 'Главная', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-10-06 06:37:53', '2022-10-06 09:39:09', 1, NULL, NULL, NULL, NULL, 0, 0, 0, '2022-10-06 06:37:54', '2022-10-06 06:37:53'),
	(6, 'https://wp-infra.test/', '22:a0b7932d8bacd4a3f9a70f72d601e34d', NULL, 'home-page', NULL, NULL, NULL, '%%sitename%% %%page%% %%sep%% %%sitedesc%%', '', 'Home', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, '%%sitename%%', '', '', '0', NULL, NULL, NULL, NULL, NULL, '2022-10-06 06:38:19', '2022-10-07 09:54:24', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-10-07 09:54:24', NULL),
	(7, 'https://wp-infra.test/12/', '25:6975714096d87f824a2cca7297d529eb', 12, 'post', 'nav_menu_item', 1, 0, NULL, NULL, '', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-10-07 09:38:25', '2022-10-07 09:54:24', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-10-07 09:54:24', '2022-10-07 09:38:25'),
	(8, 'https://wp-infra.test/jira/', '27:5faa4d46068c0e38b8ebbd569b9117a1', 13, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'Jira', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-10-07 09:38:25', '2022-10-07 09:54:24', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-10-07 09:54:24', '2022-10-07 09:38:25'),
	(9, 'https://wp-infra.test/frontend-docs/', '36:7204524f991439c5e1f9070b7135d18d', 14, 'post', 'nav_menu_item', 1, 0, NULL, NULL, 'FrontEnd Docs', 'publish', NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, '2022-10-07 09:38:25', '2022-10-07 09:54:24', 1, NULL, NULL, NULL, NULL, 0, NULL, 2, '2022-10-07 09:54:24', '2022-10-07 09:38:25');
/*!40000 ALTER TABLE `wp_yoast_indexable` ENABLE KEYS */;

-- Дамп структуры для таблица wp-infra.wp_yoast_indexable_hierarchy
CREATE TABLE IF NOT EXISTS `wp_yoast_indexable_hierarchy` (
  `indexable_id` int unsigned NOT NULL,
  `ancestor_id` int unsigned NOT NULL,
  `depth` int unsigned DEFAULT NULL,
  `blog_id` bigint NOT NULL DEFAULT '1',
  PRIMARY KEY (`indexable_id`,`ancestor_id`),
  KEY `indexable_id` (`indexable_id`),
  KEY `ancestor_id` (`ancestor_id`),
  KEY `depth` (`depth`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Дамп данных таблицы wp-infra.wp_yoast_indexable_hierarchy: ~7 rows (приблизительно)
DELETE FROM `wp_yoast_indexable_hierarchy`;
/*!40000 ALTER TABLE `wp_yoast_indexable_hierarchy` DISABLE KEYS */;
INSERT INTO `wp_yoast_indexable_hierarchy` (`indexable_id`, `ancestor_id`, `depth`, `blog_id`) VALUES
	(3, 0, 0, 1),
	(4, 0, 0, 1),
	(5, 0, 0, 1),
	(6, 0, 0, 1),
	(7, 0, 0, 1),
	(8, 0, 0, 1),
	(9, 0, 0, 1);
/*!40000 ALTER TABLE `wp_yoast_indexable_hierarchy` ENABLE KEYS */;

-- Дамп структуры для таблица wp-infra.wp_yoast_migrations
CREATE TABLE IF NOT EXISTS `wp_yoast_migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `version` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `wp_yoast_migrations_version` (`version`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Дамп данных таблицы wp-infra.wp_yoast_migrations: ~25 rows (приблизительно)
DELETE FROM `wp_yoast_migrations`;
/*!40000 ALTER TABLE `wp_yoast_migrations` DISABLE KEYS */;
INSERT INTO `wp_yoast_migrations` (`id`, `version`) VALUES
	(1, '20171228151840'),
	(2, '20171228151841'),
	(3, '20190529075038'),
	(24, '20190715101200'),
	(4, '20191011111109'),
	(5, '20200408101900'),
	(6, '20200420073606'),
	(7, '20200428123747'),
	(8, '20200428194858'),
	(9, '20200429105310'),
	(10, '20200430075614'),
	(11, '20200430150130'),
	(12, '20200507054848'),
	(13, '20200513133401'),
	(14, '20200609154515'),
	(15, '20200616130143'),
	(16, '20200617122511'),
	(17, '20200702141921'),
	(18, '20200728095334'),
	(19, '20201202144329'),
	(20, '20201216124002'),
	(21, '20201216141134'),
	(22, '20210817092415'),
	(25, '20210827093024'),
	(23, '20211020091404');
/*!40000 ALTER TABLE `wp_yoast_migrations` ENABLE KEYS */;

-- Дамп структуры для таблица wp-infra.wp_yoast_primary_term
CREATE TABLE IF NOT EXISTS `wp_yoast_primary_term` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint DEFAULT NULL,
  `term_id` bigint DEFAULT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `blog_id` bigint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `post_taxonomy` (`post_id`,`taxonomy`),
  KEY `post_term` (`post_id`,`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- Дамп данных таблицы wp-infra.wp_yoast_primary_term: ~0 rows (приблизительно)
DELETE FROM `wp_yoast_primary_term`;
/*!40000 ALTER TABLE `wp_yoast_primary_term` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_yoast_primary_term` ENABLE KEYS */;

-- Дамп структуры для таблица wp-infra.wp_yoast_prominent_words
CREATE TABLE IF NOT EXISTS `wp_yoast_prominent_words` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `stem` varchar(191) DEFAULT NULL,
  `indexable_id` int unsigned DEFAULT NULL,
  `weight` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stem` (`stem`),
  KEY `indexable_id` (`indexable_id`),
  KEY `indexable_id_and_stem` (`indexable_id`,`stem`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Дамп данных таблицы wp-infra.wp_yoast_prominent_words: ~0 rows (приблизительно)
DELETE FROM `wp_yoast_prominent_words`;
/*!40000 ALTER TABLE `wp_yoast_prominent_words` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_yoast_prominent_words` ENABLE KEYS */;

-- Дамп структуры для таблица wp-infra.wp_yoast_seo_links
CREATE TABLE IF NOT EXISTS `wp_yoast_seo_links` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `post_id` bigint unsigned DEFAULT NULL,
  `target_post_id` bigint unsigned DEFAULT NULL,
  `type` varchar(8) DEFAULT NULL,
  `indexable_id` int unsigned DEFAULT NULL,
  `target_indexable_id` int unsigned DEFAULT NULL,
  `height` int unsigned DEFAULT NULL,
  `width` int unsigned DEFAULT NULL,
  `size` int unsigned DEFAULT NULL,
  `language` varchar(32) DEFAULT NULL,
  `region` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`),
  KEY `indexable_link_direction` (`indexable_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- Дамп данных таблицы wp-infra.wp_yoast_seo_links: ~0 rows (приблизительно)
DELETE FROM `wp_yoast_seo_links`;
/*!40000 ALTER TABLE `wp_yoast_seo_links` DISABLE KEYS */;
INSERT INTO `wp_yoast_seo_links` (`id`, `url`, `post_id`, `target_post_id`, `type`, `indexable_id`, `target_indexable_id`, `height`, `width`, `size`, `language`, `region`) VALUES
	(1, 'https://wp-infra.test/wp-admin/', 2, NULL, 'internal', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `wp_yoast_seo_links` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
