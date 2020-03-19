-- MySQL dump 10.13  Distrib 8.0.16, for Linux (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2020-02-12 14:42:21','2020-02-12 14:42:21','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=340 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://localhost:10000','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://localhost:10000','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Nivanna Interiors','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:88:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=13&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:31:\"wp-google-maps/wpGoogleMaps.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','theme','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','theme','yes');
INSERT INTO `wp_options` VALUES (42,'comment_whitelist','1','yes');
INSERT INTO `wp_options` VALUES (43,'blacklist_keys','','no');
INSERT INTO `wp_options` VALUES (44,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (45,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (46,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (47,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (48,'db_version','45805','yes');
INSERT INTO `wp_options` VALUES (49,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (50,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (51,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (52,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (53,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (54,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (55,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (56,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (57,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (59,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (60,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (61,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (62,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (63,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (64,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (65,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (67,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (68,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (69,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (70,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (71,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (72,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (73,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (74,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (75,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (76,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (77,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'widget_text','a:3:{i:2;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&mdash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (81,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (82,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (83,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (84,'page_on_front','13','yes');
INSERT INTO `wp_options` VALUES (85,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (86,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (87,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (88,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (90,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (91,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (92,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (93,'admin_email_lifespan','1597070539','yes');
INSERT INTO `wp_options` VALUES (94,'initial_db_version','45805','yes');
INSERT INTO `wp_options` VALUES (95,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (96,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (97,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (98,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:8:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:8:\"search-2\";i:3;s:14:\"recent-posts-2\";i:4;s:17:\"recent-comments-2\";i:5;s:10:\"archives-2\";i:6;s:12:\"categories-2\";i:7;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (103,'cron','a:6:{i:1584556942;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1584585742;a:3:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1584628941;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1584629069;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1584629071;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'nonce_key','Z]v9E5A,]A;sk;M72*8lF]gTngoaNCjX>wP~z$s{$02Vk21IbX/I+0YP];=FXnR!','no');
INSERT INTO `wp_options` VALUES (111,'nonce_salt','sbs<8IY0~fn5I l-Vl?9%]j0^|HkWh*0JHn>_):2#(1m8Ap$q@E+cd%PWi-|gKTf','no');
INSERT INTO `wp_options` VALUES (112,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1584556157;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (117,'theme_mods_twentytwenty','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1581532428;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (118,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (123,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1584556155;s:7:\"checked\";a:1:{s:5:\"theme\";s:0:\"\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (131,'can_compress_scripts','0','no');
INSERT INTO `wp_options` VALUES (156,'current_theme','Nivanna Interiors','yes');
INSERT INTO `wp_options` VALUES (157,'theme_mods_theme','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (158,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (166,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (173,'acf_version','5.8.7','yes');
INSERT INTO `wp_options` VALUES (241,'wpgmza_db_version','8.0.19','yes');
INSERT INTO `wp_options` VALUES (242,'wpgmza_global_settings','{\"wpgmza_google_maps_api_key\":\"\",\"engine\":\"google-maps\",\"google_maps_api_key\":false,\"default_marker_icon\":\"http:\\/\\/localhost:10000\\/wp-content\\/plugins\\/wp-google-maps\\/images\\/spotlight-poi2.png\",\"user_interface_style\":\"legacy\",\"wpgmza_gdpr_default_notice\":\"<p>\\r\\n\\tI agree for my personal data to be processed by <span name=\\\"wpgmza_gdpr_company_name\\\"><\\/span>, for the purpose(s) of <span name=\\\"wpgmza_gdpr_retention_purpose\\\"><\\/span>.\\r\\n<\\/p>\\r\\n\\r\\n<p>\\t\\r\\n\\tI agree for my personal data, provided via map API calls, to be processed by the API provider, for the purposes of geocoding (converting addresses to coordinates), reverse geocoding and\\tgenerating directions.\\r\\n<\\/p>\\r\\n<p>\\r\\n\\tSome visual components of WP Google Maps use 3rd party libraries which are loaded over the network. At present the libraries are Google Maps, Open Street Map, jQuery DataTables and FontAwesome. When loading resources over a network, the 3rd party server will receive your IP address and User Agent string amongst other details. Please refer to the Privacy Policy of the respective libraries for details on how they use data and the process to exercise your rights under the GDPR regulations.\\r\\n<\\/p>\\r\\n<p>\\r\\n\\tWP Google Maps uses jQuery DataTables to display sortable, searchable tables, such as that seen in the Advanced Marker Listing and on the Map Edit Page. jQuery DataTables in certain circumstances uses a cookie to save and later recall the \\\"state\\\" of a given table - that is, the search term, sort column and order and current page. This data is held in local storage and retained until this is cleared manually. No libraries used by WP Google Maps transmit this information.\\r\\n<\\/p>\\r\\n<p>\\r\\n\\tPlease <a href=\\\"https:\\/\\/developers.google.com\\/maps\\/terms\\\">see here<\\/a> and <a href=\\\"https:\\/\\/maps.google.com\\/help\\/terms_maps.html\\\">here<\\/a> for Google\'s terms. Please also see <a href=\\\"https:\\/\\/policies.google.com\\/privacy?hl=en-GB&amp;gl=uk\\\">Google\'s Privacy Policy<\\/a>. We do not send the API provider any personally identifying information, or information that could uniquely identify your device.\\r\\n<\\/p>\\r\\n<p>\\r\\n\\tWhere this notice is displayed in place of a map, agreeing to this notice will store a cookie recording your agreement so you are not prompted again.\\r\\n<\\/p>\",\"wpgmza_gdpr_company_name\":\"Nivanna Interiors\",\"wpgmza_gdpr_retention_purpose\":\"displaying map tiles, geocoding addresses and calculating and display directions.\",\"wpgmza_settings_marker_pull\":\"0\",\"wpgmza_maps_engine\":\"google-maps\",\"wpgmza_maps_engine_dialog_done\":true,\"wpgmza_gdpr_notice_override_text\":\"\",\"wpgmza_settings_map_type\":\"yes\",\"use_fontawesome\":\"4.*\",\"wpgmza_settings_map_open_marker_by\":\"1\",\"wpgmza_custom_css\":\"\",\"wpgmza_custom_js\":\"\",\"wpgmza_settings_user_interface_style\":\"legacy\",\"wpgmza_settings_access_level\":\"manage_options\",\"wpgmza_store_locator_radii\":\"1,5,10,25,50,75,100,150,200,300\"}','yes');
INSERT INTO `wp_options` VALUES (243,'WPGMZA_OTHER_SETTINGS','a:20:{s:26:\"wpgmza_google_maps_api_key\";s:0:\"\";s:6:\"engine\";s:11:\"google-maps\";s:19:\"google_maps_api_key\";b:0;s:19:\"default_marker_icon\";s:82:\"http://localhost:10000/wp-content/plugins/wp-google-maps/images/spotlight-poi2.png\";s:20:\"user_interface_style\";s:6:\"legacy\";s:26:\"wpgmza_gdpr_default_notice\";s:1972:\"<p>\r\n	I agree for my personal data to be processed by <span name=\"wpgmza_gdpr_company_name\"></span>, for the purpose(s) of <span name=\"wpgmza_gdpr_retention_purpose\"></span>.\r\n</p>\r\n\r\n<p>	\r\n	I agree for my personal data, provided via map API calls, to be processed by the API provider, for the purposes of geocoding (converting addresses to coordinates), reverse geocoding and	generating directions.\r\n</p>\r\n<p>\r\n	Some visual components of WP Google Maps use 3rd party libraries which are loaded over the network. At present the libraries are Google Maps, Open Street Map, jQuery DataTables and FontAwesome. When loading resources over a network, the 3rd party server will receive your IP address and User Agent string amongst other details. Please refer to the Privacy Policy of the respective libraries for details on how they use data and the process to exercise your rights under the GDPR regulations.\r\n</p>\r\n<p>\r\n	WP Google Maps uses jQuery DataTables to display sortable, searchable tables, such as that seen in the Advanced Marker Listing and on the Map Edit Page. jQuery DataTables in certain circumstances uses a cookie to save and later recall the \"state\" of a given table - that is, the search term, sort column and order and current page. This data is held in local storage and retained until this is cleared manually. No libraries used by WP Google Maps transmit this information.\r\n</p>\r\n<p>\r\n	Please <a href=\"https://developers.google.com/maps/terms\">see here</a> and <a href=\"https://maps.google.com/help/terms_maps.html\">here</a> for Google\'s terms. Please also see <a href=\"https://policies.google.com/privacy?hl=en-GB&amp;gl=uk\">Google\'s Privacy Policy</a>. We do not send the API provider any personally identifying information, or information that could uniquely identify your device.\r\n</p>\r\n<p>\r\n	Where this notice is displayed in place of a map, agreeing to this notice will store a cookie recording your agreement so you are not prompted again.\r\n</p>\";s:24:\"wpgmza_gdpr_company_name\";s:17:\"Nivanna Interiors\";s:29:\"wpgmza_gdpr_retention_purpose\";s:81:\"displaying map tiles, geocoding addresses and calculating and display directions.\";s:27:\"wpgmza_settings_marker_pull\";s:1:\"0\";s:18:\"wpgmza_maps_engine\";s:11:\"google-maps\";s:30:\"wpgmza_maps_engine_dialog_done\";b:1;s:32:\"wpgmza_gdpr_notice_override_text\";s:0:\"\";s:24:\"wpgmza_settings_map_type\";s:3:\"yes\";s:15:\"use_fontawesome\";s:3:\"4.*\";s:34:\"wpgmza_settings_map_open_marker_by\";s:1:\"1\";s:17:\"wpgmza_custom_css\";s:0:\"\";s:16:\"wpgmza_custom_js\";s:0:\"\";s:36:\"wpgmza_settings_user_interface_style\";s:6:\"legacy\";s:28:\"wpgmza_settings_access_level\";s:14:\"manage_options\";s:26:\"wpgmza_store_locator_radii\";s:31:\"1,5,10,25,50,75,100,150,200,300\";}','yes');
INSERT INTO `wp_options` VALUES (244,'wpgmza_temp_api','AIzaSyDjyYKnTqGG2CAF9nmrfB6zgTBE6oPhMk4','yes');
INSERT INTO `wp_options` VALUES (245,'wpgmza_xml_location','{uploads_dir}/wp-google-maps/','yes');
INSERT INTO `wp_options` VALUES (246,'wpgmza_xml_url','{uploads_url}/wp-google-maps/','yes');
INSERT INTO `wp_options` VALUES (247,'wpgmaps_current_version','8.0.19','yes');
INSERT INTO `wp_options` VALUES (248,'WPGM_V6_FIRST_TIME','1','yes');
INSERT INTO `wp_options` VALUES (249,'widget_wpgmza_map_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (250,'WPGMZA_FIRST_TIME','8.0.19','yes');
INSERT INTO `wp_options` VALUES (251,'wpgmza_stats','a:3:{s:15:\"list_maps_basic\";a:3:{s:5:\"views\";i:3;s:13:\"last_accessed\";s:19:\"2020-02-18 05:48:04\";s:14:\"first_accessed\";s:19:\"2020-02-18 05:24:56\";}s:9:\"dashboard\";a:3:{s:5:\"views\";i:4;s:13:\"last_accessed\";s:19:\"2020-02-18 05:44:09\";s:14:\"first_accessed\";s:19:\"2020-02-18 05:25:04\";}s:14:\"settings_basic\";a:3:{s:5:\"views\";i:3;s:13:\"last_accessed\";s:19:\"2020-02-18 05:52:05\";s:14:\"first_accessed\";s:19:\"2020-02-18 05:40:06\";}}','yes');
INSERT INTO `wp_options` VALUES (252,'wpgmza_google_maps_api_key','','yes');
INSERT INTO `wp_options` VALUES (254,'WPGMZA_SETTINGS','a:10:{s:24:\"map_default_starting_lat\";s:8:\"-4.02025\";s:24:\"map_default_starting_lng\";s:17:\"39.72056999999995\";s:18:\"map_default_height\";s:3:\"100\";s:17:\"map_default_width\";s:3:\"100\";s:16:\"map_default_zoom\";i:18;s:20:\"map_default_max_zoom\";i:1;s:16:\"map_default_type\";i:1;s:21:\"map_default_alignment\";i:2;s:22:\"map_default_width_type\";s:2:\"\\%\";s:23:\"map_default_height_type\";s:2:\"\\%\";}','yes');
INSERT INTO `wp_options` VALUES (336,'_site_transient_timeout_theme_roots','1584557954','no');
INSERT INTO `wp_options` VALUES (337,'_site_transient_theme_roots','a:1:{s:5:\"theme\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (339,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1584556159;s:7:\"checked\";a:1:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.7\";}s:8:\"response\";a:1:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.8\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.2\";s:12:\"requires_php\";s:3:\"5.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=719 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (18,13,'_edit_lock','1582973261:1');
INSERT INTO `wp_postmeta` VALUES (20,15,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (21,15,'_edit_lock','1583001332:1');
INSERT INTO `wp_postmeta` VALUES (22,13,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (23,13,'jumbotron_big_title','Upgrade your home');
INSERT INTO `wp_postmeta` VALUES (24,13,'_jumbotron_big_title','field_5e44522be3253');
INSERT INTO `wp_postmeta` VALUES (25,13,'jumbotron_small_title','Your home should tell the story of who you are, and be a collection of what you love.');
INSERT INTO `wp_postmeta` VALUES (26,13,'_jumbotron_small_title','field_5e445261e3254');
INSERT INTO `wp_postmeta` VALUES (27,13,'jumbotron_button_text','Shop now');
INSERT INTO `wp_postmeta` VALUES (28,13,'_jumbotron_button_text','field_5e4452cce3255');
INSERT INTO `wp_postmeta` VALUES (29,13,'jumbotron_button_link','');
INSERT INTO `wp_postmeta` VALUES (30,13,'_jumbotron_button_link','field_5e4452dce3256');
INSERT INTO `wp_postmeta` VALUES (31,13,'jumbotron','');
INSERT INTO `wp_postmeta` VALUES (32,13,'_jumbotron','field_5e44520ce3252');
INSERT INTO `wp_postmeta` VALUES (33,22,'jumbotron_big_title','The creative professionals your home needs');
INSERT INTO `wp_postmeta` VALUES (34,22,'_jumbotron_big_title','field_5e44522be3253');
INSERT INTO `wp_postmeta` VALUES (35,22,'jumbotron_small_title','Your home should tell the story of who you are, and be a collection of what you love.');
INSERT INTO `wp_postmeta` VALUES (36,22,'_jumbotron_small_title','field_5e445261e3254');
INSERT INTO `wp_postmeta` VALUES (37,22,'jumbotron_button_text','Shop now');
INSERT INTO `wp_postmeta` VALUES (38,22,'_jumbotron_button_text','field_5e4452cce3255');
INSERT INTO `wp_postmeta` VALUES (39,22,'jumbotron_button_link','');
INSERT INTO `wp_postmeta` VALUES (40,22,'_jumbotron_button_link','field_5e4452dce3256');
INSERT INTO `wp_postmeta` VALUES (41,22,'jumbotron','');
INSERT INTO `wp_postmeta` VALUES (42,22,'_jumbotron','field_5e44520ce3252');
INSERT INTO `wp_postmeta` VALUES (43,23,'jumbotron_big_title','Upgrade your home');
INSERT INTO `wp_postmeta` VALUES (44,23,'_jumbotron_big_title','field_5e44522be3253');
INSERT INTO `wp_postmeta` VALUES (45,23,'jumbotron_small_title','Your home should tell the story of who you are, and be a collection of what you love.');
INSERT INTO `wp_postmeta` VALUES (46,23,'_jumbotron_small_title','field_5e445261e3254');
INSERT INTO `wp_postmeta` VALUES (47,23,'jumbotron_button_text','Shop now');
INSERT INTO `wp_postmeta` VALUES (48,23,'_jumbotron_button_text','field_5e4452cce3255');
INSERT INTO `wp_postmeta` VALUES (49,23,'jumbotron_button_link','');
INSERT INTO `wp_postmeta` VALUES (50,23,'_jumbotron_button_link','field_5e4452dce3256');
INSERT INTO `wp_postmeta` VALUES (51,23,'jumbotron','');
INSERT INTO `wp_postmeta` VALUES (52,23,'_jumbotron','field_5e44520ce3252');
INSERT INTO `wp_postmeta` VALUES (53,3,'_edit_lock','1581753941:1');
INSERT INTO `wp_postmeta` VALUES (54,13,'catalogue_header','Catalogue');
INSERT INTO `wp_postmeta` VALUES (55,13,'_catalogue_header','field_5e47a61a51d53');
INSERT INTO `wp_postmeta` VALUES (56,13,'catalogue_header_text','');
INSERT INTO `wp_postmeta` VALUES (57,13,'_catalogue_header_text','field_5e47a66851d55');
INSERT INTO `wp_postmeta` VALUES (58,13,'catalogue_highlight_text','in stocks');
INSERT INTO `wp_postmeta` VALUES (59,13,'_catalogue_highlight_text','field_5e47a73558744');
INSERT INTO `wp_postmeta` VALUES (60,13,'catalogue','');
INSERT INTO `wp_postmeta` VALUES (61,13,'_catalogue','field_5e47a60151d52');
INSERT INTO `wp_postmeta` VALUES (62,28,'jumbotron_big_title','Upgrade your home');
INSERT INTO `wp_postmeta` VALUES (63,28,'_jumbotron_big_title','field_5e44522be3253');
INSERT INTO `wp_postmeta` VALUES (64,28,'jumbotron_small_title','Your home should tell the story of who you are, and be a collection of what you love.');
INSERT INTO `wp_postmeta` VALUES (65,28,'_jumbotron_small_title','field_5e445261e3254');
INSERT INTO `wp_postmeta` VALUES (66,28,'jumbotron_button_text','Shop now');
INSERT INTO `wp_postmeta` VALUES (67,28,'_jumbotron_button_text','field_5e4452cce3255');
INSERT INTO `wp_postmeta` VALUES (68,28,'jumbotron_button_link','');
INSERT INTO `wp_postmeta` VALUES (69,28,'_jumbotron_button_link','field_5e4452dce3256');
INSERT INTO `wp_postmeta` VALUES (70,28,'jumbotron','');
INSERT INTO `wp_postmeta` VALUES (71,28,'_jumbotron','field_5e44520ce3252');
INSERT INTO `wp_postmeta` VALUES (72,28,'catalogue_header','Catalogue');
INSERT INTO `wp_postmeta` VALUES (73,28,'_catalogue_header','field_5e47a61a51d53');
INSERT INTO `wp_postmeta` VALUES (74,28,'catalogue_header_text','Browse through our catalogue section');
INSERT INTO `wp_postmeta` VALUES (75,28,'_catalogue_header_text','field_5e47a66851d55');
INSERT INTO `wp_postmeta` VALUES (76,28,'catalogue_highlight_text','in stock');
INSERT INTO `wp_postmeta` VALUES (77,28,'_catalogue_highlight_text','field_5e47a73558744');
INSERT INTO `wp_postmeta` VALUES (78,28,'catalogue','');
INSERT INTO `wp_postmeta` VALUES (79,28,'_catalogue','field_5e47a60151d52');
INSERT INTO `wp_postmeta` VALUES (80,13,'catalogue_header_text_first_line','Browse through our catalogue section');
INSERT INTO `wp_postmeta` VALUES (81,13,'_catalogue_header_text_first_line','field_5e47a7c1c2ba5');
INSERT INTO `wp_postmeta` VALUES (82,13,'catalogue_header_text_second_line','to see what we have');
INSERT INTO `wp_postmeta` VALUES (83,13,'_catalogue_header_text_second_line','field_5e47a7dac2ba6');
INSERT INTO `wp_postmeta` VALUES (84,31,'jumbotron_big_title','Upgrade your home');
INSERT INTO `wp_postmeta` VALUES (85,31,'_jumbotron_big_title','field_5e44522be3253');
INSERT INTO `wp_postmeta` VALUES (86,31,'jumbotron_small_title','Your home should tell the story of who you are, and be a collection of what you love.');
INSERT INTO `wp_postmeta` VALUES (87,31,'_jumbotron_small_title','field_5e445261e3254');
INSERT INTO `wp_postmeta` VALUES (88,31,'jumbotron_button_text','Shop now');
INSERT INTO `wp_postmeta` VALUES (89,31,'_jumbotron_button_text','field_5e4452cce3255');
INSERT INTO `wp_postmeta` VALUES (90,31,'jumbotron_button_link','');
INSERT INTO `wp_postmeta` VALUES (91,31,'_jumbotron_button_link','field_5e4452dce3256');
INSERT INTO `wp_postmeta` VALUES (92,31,'jumbotron','');
INSERT INTO `wp_postmeta` VALUES (93,31,'_jumbotron','field_5e44520ce3252');
INSERT INTO `wp_postmeta` VALUES (94,31,'catalogue_header','Catalogue');
INSERT INTO `wp_postmeta` VALUES (95,31,'_catalogue_header','field_5e47a61a51d53');
INSERT INTO `wp_postmeta` VALUES (96,31,'catalogue_header_text','');
INSERT INTO `wp_postmeta` VALUES (97,31,'_catalogue_header_text','field_5e47a66851d55');
INSERT INTO `wp_postmeta` VALUES (98,31,'catalogue_highlight_text','in stock');
INSERT INTO `wp_postmeta` VALUES (99,31,'_catalogue_highlight_text','field_5e47a73558744');
INSERT INTO `wp_postmeta` VALUES (100,31,'catalogue','');
INSERT INTO `wp_postmeta` VALUES (101,31,'_catalogue','field_5e47a60151d52');
INSERT INTO `wp_postmeta` VALUES (102,31,'catalogue_header_text_first_line','Browse through our catalogue section');
INSERT INTO `wp_postmeta` VALUES (103,31,'_catalogue_header_text_first_line','field_5e47a7c1c2ba5');
INSERT INTO `wp_postmeta` VALUES (104,31,'catalogue_header_text_second_line','to see what we have');
INSERT INTO `wp_postmeta` VALUES (105,31,'_catalogue_header_text_second_line','field_5e47a7dac2ba6');
INSERT INTO `wp_postmeta` VALUES (106,13,'catalogue_catalogue_header','Catalogue');
INSERT INTO `wp_postmeta` VALUES (107,13,'_catalogue_catalogue_header','field_5e47a61a51d53');
INSERT INTO `wp_postmeta` VALUES (108,13,'catalogue_catalogue_header_text_Catalogue_first_line','Browse through our catalogue section');
INSERT INTO `wp_postmeta` VALUES (109,13,'_catalogue_catalogue_header_text_Catalogue_first_line','field_5e47a7c1c2ba5');
INSERT INTO `wp_postmeta` VALUES (110,13,'catalogue_catalogue_header_text_catalogue_second_line','to see what we have');
INSERT INTO `wp_postmeta` VALUES (111,13,'_catalogue_catalogue_header_text_catalogue_second_line','field_5e47a7dac2ba6');
INSERT INTO `wp_postmeta` VALUES (112,13,'catalogue_catalogue_header_text','');
INSERT INTO `wp_postmeta` VALUES (113,13,'_catalogue_catalogue_header_text','field_5e47a66851d55');
INSERT INTO `wp_postmeta` VALUES (114,32,'jumbotron_big_title','Upgrade your home');
INSERT INTO `wp_postmeta` VALUES (115,32,'_jumbotron_big_title','field_5e44522be3253');
INSERT INTO `wp_postmeta` VALUES (116,32,'jumbotron_small_title','Your home should tell the story of who you are, and be a collection of what you love.');
INSERT INTO `wp_postmeta` VALUES (117,32,'_jumbotron_small_title','field_5e445261e3254');
INSERT INTO `wp_postmeta` VALUES (118,32,'jumbotron_button_text','Shop now');
INSERT INTO `wp_postmeta` VALUES (119,32,'_jumbotron_button_text','field_5e4452cce3255');
INSERT INTO `wp_postmeta` VALUES (120,32,'jumbotron_button_link','');
INSERT INTO `wp_postmeta` VALUES (121,32,'_jumbotron_button_link','field_5e4452dce3256');
INSERT INTO `wp_postmeta` VALUES (122,32,'jumbotron','');
INSERT INTO `wp_postmeta` VALUES (123,32,'_jumbotron','field_5e44520ce3252');
INSERT INTO `wp_postmeta` VALUES (124,32,'catalogue_header','Catalogue');
INSERT INTO `wp_postmeta` VALUES (125,32,'_catalogue_header','field_5e47a61a51d53');
INSERT INTO `wp_postmeta` VALUES (126,32,'catalogue_header_text','');
INSERT INTO `wp_postmeta` VALUES (127,32,'_catalogue_header_text','field_5e47a66851d55');
INSERT INTO `wp_postmeta` VALUES (128,32,'catalogue_highlight_text','in stock');
INSERT INTO `wp_postmeta` VALUES (129,32,'_catalogue_highlight_text','field_5e47a73558744');
INSERT INTO `wp_postmeta` VALUES (130,32,'catalogue','');
INSERT INTO `wp_postmeta` VALUES (131,32,'_catalogue','field_5e47a60151d52');
INSERT INTO `wp_postmeta` VALUES (132,32,'catalogue_header_text_first_line','Browse through our catalogue section');
INSERT INTO `wp_postmeta` VALUES (133,32,'_catalogue_header_text_first_line','field_5e47a7c1c2ba5');
INSERT INTO `wp_postmeta` VALUES (134,32,'catalogue_header_text_second_line','to see what we have');
INSERT INTO `wp_postmeta` VALUES (135,32,'_catalogue_header_text_second_line','field_5e47a7dac2ba6');
INSERT INTO `wp_postmeta` VALUES (136,32,'catalogue_catalogue_header','Catalogue');
INSERT INTO `wp_postmeta` VALUES (137,32,'_catalogue_catalogue_header','field_5e47a61a51d53');
INSERT INTO `wp_postmeta` VALUES (138,32,'catalogue_catalogue_header_text_Catalogue_first_line','Browse through our catalogue section');
INSERT INTO `wp_postmeta` VALUES (139,32,'_catalogue_catalogue_header_text_Catalogue_first_line','field_5e47a7c1c2ba5');
INSERT INTO `wp_postmeta` VALUES (140,32,'catalogue_catalogue_header_text_catalogue_second_line','to see what we have');
INSERT INTO `wp_postmeta` VALUES (141,32,'_catalogue_catalogue_header_text_catalogue_second_line','field_5e47a7dac2ba6');
INSERT INTO `wp_postmeta` VALUES (142,32,'catalogue_catalogue_header_text','');
INSERT INTO `wp_postmeta` VALUES (143,32,'_catalogue_catalogue_header_text','field_5e47a66851d55');
INSERT INTO `wp_postmeta` VALUES (144,33,'jumbotron_big_title','Upgrade your home');
INSERT INTO `wp_postmeta` VALUES (145,33,'_jumbotron_big_title','field_5e44522be3253');
INSERT INTO `wp_postmeta` VALUES (146,33,'jumbotron_small_title','Your home should tell the story of who you are, and be a collection of what you love.');
INSERT INTO `wp_postmeta` VALUES (147,33,'_jumbotron_small_title','field_5e445261e3254');
INSERT INTO `wp_postmeta` VALUES (148,33,'jumbotron_button_text','Shop now');
INSERT INTO `wp_postmeta` VALUES (149,33,'_jumbotron_button_text','field_5e4452cce3255');
INSERT INTO `wp_postmeta` VALUES (150,33,'jumbotron_button_link','');
INSERT INTO `wp_postmeta` VALUES (151,33,'_jumbotron_button_link','field_5e4452dce3256');
INSERT INTO `wp_postmeta` VALUES (152,33,'jumbotron','');
INSERT INTO `wp_postmeta` VALUES (153,33,'_jumbotron','field_5e44520ce3252');
INSERT INTO `wp_postmeta` VALUES (154,33,'catalogue_header','Catalogue');
INSERT INTO `wp_postmeta` VALUES (155,33,'_catalogue_header','field_5e47a61a51d53');
INSERT INTO `wp_postmeta` VALUES (156,33,'catalogue_header_text','');
INSERT INTO `wp_postmeta` VALUES (157,33,'_catalogue_header_text','field_5e47a66851d55');
INSERT INTO `wp_postmeta` VALUES (158,33,'catalogue_highlight_text','in stocks');
INSERT INTO `wp_postmeta` VALUES (159,33,'_catalogue_highlight_text','field_5e47a73558744');
INSERT INTO `wp_postmeta` VALUES (160,33,'catalogue','');
INSERT INTO `wp_postmeta` VALUES (161,33,'_catalogue','field_5e47a60151d52');
INSERT INTO `wp_postmeta` VALUES (162,33,'catalogue_header_text_first_line','Browse through our catalogue section');
INSERT INTO `wp_postmeta` VALUES (163,33,'_catalogue_header_text_first_line','field_5e47a7c1c2ba5');
INSERT INTO `wp_postmeta` VALUES (164,33,'catalogue_header_text_second_line','to see what we have');
INSERT INTO `wp_postmeta` VALUES (165,33,'_catalogue_header_text_second_line','field_5e47a7dac2ba6');
INSERT INTO `wp_postmeta` VALUES (166,33,'catalogue_catalogue_header','Catalogue');
INSERT INTO `wp_postmeta` VALUES (167,33,'_catalogue_catalogue_header','field_5e47a61a51d53');
INSERT INTO `wp_postmeta` VALUES (168,33,'catalogue_catalogue_header_text_Catalogue_first_line','Browse through our catalogue section');
INSERT INTO `wp_postmeta` VALUES (169,33,'_catalogue_catalogue_header_text_Catalogue_first_line','field_5e47a7c1c2ba5');
INSERT INTO `wp_postmeta` VALUES (170,33,'catalogue_catalogue_header_text_catalogue_second_line','to see what we have');
INSERT INTO `wp_postmeta` VALUES (171,33,'_catalogue_catalogue_header_text_catalogue_second_line','field_5e47a7dac2ba6');
INSERT INTO `wp_postmeta` VALUES (172,33,'catalogue_catalogue_header_text','');
INSERT INTO `wp_postmeta` VALUES (173,33,'_catalogue_catalogue_header_text','field_5e47a66851d55');
INSERT INTO `wp_postmeta` VALUES (174,34,'jumbotron_big_title','Upgrade your home');
INSERT INTO `wp_postmeta` VALUES (175,34,'_jumbotron_big_title','field_5e44522be3253');
INSERT INTO `wp_postmeta` VALUES (176,34,'jumbotron_small_title','Your home should tell the story of who you are, and be a collection of what you love.');
INSERT INTO `wp_postmeta` VALUES (177,34,'_jumbotron_small_title','field_5e445261e3254');
INSERT INTO `wp_postmeta` VALUES (178,34,'jumbotron_button_text','Shop now');
INSERT INTO `wp_postmeta` VALUES (179,34,'_jumbotron_button_text','field_5e4452cce3255');
INSERT INTO `wp_postmeta` VALUES (180,34,'jumbotron_button_link','');
INSERT INTO `wp_postmeta` VALUES (181,34,'_jumbotron_button_link','field_5e4452dce3256');
INSERT INTO `wp_postmeta` VALUES (182,34,'jumbotron','');
INSERT INTO `wp_postmeta` VALUES (183,34,'_jumbotron','field_5e44520ce3252');
INSERT INTO `wp_postmeta` VALUES (184,34,'catalogue_header','Catalogue');
INSERT INTO `wp_postmeta` VALUES (185,34,'_catalogue_header','field_5e47a61a51d53');
INSERT INTO `wp_postmeta` VALUES (186,34,'catalogue_header_text','');
INSERT INTO `wp_postmeta` VALUES (187,34,'_catalogue_header_text','field_5e47a66851d55');
INSERT INTO `wp_postmeta` VALUES (188,34,'catalogue_highlight_text','in stocks');
INSERT INTO `wp_postmeta` VALUES (189,34,'_catalogue_highlight_text','field_5e47a73558744');
INSERT INTO `wp_postmeta` VALUES (190,34,'catalogue','');
INSERT INTO `wp_postmeta` VALUES (191,34,'_catalogue','field_5e47a60151d52');
INSERT INTO `wp_postmeta` VALUES (192,34,'catalogue_header_text_first_line','Browse through our catalogue section');
INSERT INTO `wp_postmeta` VALUES (193,34,'_catalogue_header_text_first_line','field_5e47a7c1c2ba5');
INSERT INTO `wp_postmeta` VALUES (194,34,'catalogue_header_text_second_line','to see what we have');
INSERT INTO `wp_postmeta` VALUES (195,34,'_catalogue_header_text_second_line','field_5e47a7dac2ba6');
INSERT INTO `wp_postmeta` VALUES (196,34,'catalogue_catalogue_header','Catalogue');
INSERT INTO `wp_postmeta` VALUES (197,34,'_catalogue_catalogue_header','field_5e47a61a51d53');
INSERT INTO `wp_postmeta` VALUES (198,34,'catalogue_catalogue_header_text_Catalogue_first_line','Browse through our catalogue section');
INSERT INTO `wp_postmeta` VALUES (199,34,'_catalogue_catalogue_header_text_Catalogue_first_line','field_5e47a7c1c2ba5');
INSERT INTO `wp_postmeta` VALUES (200,34,'catalogue_catalogue_header_text_catalogue_second_line','to see what we have');
INSERT INTO `wp_postmeta` VALUES (201,34,'_catalogue_catalogue_header_text_catalogue_second_line','field_5e47a7dac2ba6');
INSERT INTO `wp_postmeta` VALUES (202,34,'catalogue_catalogue_header_text','');
INSERT INTO `wp_postmeta` VALUES (203,34,'_catalogue_catalogue_header_text','field_5e47a66851d55');
INSERT INTO `wp_postmeta` VALUES (204,35,'jumbotron_big_title','Upgrade your home');
INSERT INTO `wp_postmeta` VALUES (205,35,'_jumbotron_big_title','field_5e44522be3253');
INSERT INTO `wp_postmeta` VALUES (206,35,'jumbotron_small_title','Your home should tell the story of who you are, and be a collection of what you love.');
INSERT INTO `wp_postmeta` VALUES (207,35,'_jumbotron_small_title','field_5e445261e3254');
INSERT INTO `wp_postmeta` VALUES (208,35,'jumbotron_button_text','Shop now');
INSERT INTO `wp_postmeta` VALUES (209,35,'_jumbotron_button_text','field_5e4452cce3255');
INSERT INTO `wp_postmeta` VALUES (210,35,'jumbotron_button_link','');
INSERT INTO `wp_postmeta` VALUES (211,35,'_jumbotron_button_link','field_5e4452dce3256');
INSERT INTO `wp_postmeta` VALUES (212,35,'jumbotron','');
INSERT INTO `wp_postmeta` VALUES (213,35,'_jumbotron','field_5e44520ce3252');
INSERT INTO `wp_postmeta` VALUES (214,35,'catalogue_header','Catalogue');
INSERT INTO `wp_postmeta` VALUES (215,35,'_catalogue_header','field_5e47a61a51d53');
INSERT INTO `wp_postmeta` VALUES (216,35,'catalogue_header_text','');
INSERT INTO `wp_postmeta` VALUES (217,35,'_catalogue_header_text','field_5e47a66851d55');
INSERT INTO `wp_postmeta` VALUES (218,35,'catalogue_highlight_text','in stocks');
INSERT INTO `wp_postmeta` VALUES (219,35,'_catalogue_highlight_text','field_5e47a73558744');
INSERT INTO `wp_postmeta` VALUES (220,35,'catalogue','');
INSERT INTO `wp_postmeta` VALUES (221,35,'_catalogue','field_5e47a60151d52');
INSERT INTO `wp_postmeta` VALUES (222,35,'catalogue_header_text_first_line','Browse through our catalogue section');
INSERT INTO `wp_postmeta` VALUES (223,35,'_catalogue_header_text_first_line','field_5e47a7c1c2ba5');
INSERT INTO `wp_postmeta` VALUES (224,35,'catalogue_header_text_second_line','to see what we have');
INSERT INTO `wp_postmeta` VALUES (225,35,'_catalogue_header_text_second_line','field_5e47a7dac2ba6');
INSERT INTO `wp_postmeta` VALUES (226,35,'catalogue_catalogue_header','Catalogue');
INSERT INTO `wp_postmeta` VALUES (227,35,'_catalogue_catalogue_header','field_5e47a61a51d53');
INSERT INTO `wp_postmeta` VALUES (228,35,'catalogue_catalogue_header_text_Catalogue_first_line','Browse through our catalogue section');
INSERT INTO `wp_postmeta` VALUES (229,35,'_catalogue_catalogue_header_text_Catalogue_first_line','field_5e47a7c1c2ba5');
INSERT INTO `wp_postmeta` VALUES (230,35,'catalogue_catalogue_header_text_catalogue_second_line','to see what we have');
INSERT INTO `wp_postmeta` VALUES (231,35,'_catalogue_catalogue_header_text_catalogue_second_line','field_5e47a7dac2ba6');
INSERT INTO `wp_postmeta` VALUES (232,35,'catalogue_catalogue_header_text','');
INSERT INTO `wp_postmeta` VALUES (233,35,'_catalogue_catalogue_header_text','field_5e47a66851d55');
INSERT INTO `wp_postmeta` VALUES (234,36,'jumbotron_big_title','Upgrade your home');
INSERT INTO `wp_postmeta` VALUES (235,36,'_jumbotron_big_title','field_5e44522be3253');
INSERT INTO `wp_postmeta` VALUES (236,36,'jumbotron_small_title','Your home should tell the story of who you are, and be a collection of what you love.');
INSERT INTO `wp_postmeta` VALUES (237,36,'_jumbotron_small_title','field_5e445261e3254');
INSERT INTO `wp_postmeta` VALUES (238,36,'jumbotron_button_text','Shop now');
INSERT INTO `wp_postmeta` VALUES (239,36,'_jumbotron_button_text','field_5e4452cce3255');
INSERT INTO `wp_postmeta` VALUES (240,36,'jumbotron_button_link','');
INSERT INTO `wp_postmeta` VALUES (241,36,'_jumbotron_button_link','field_5e4452dce3256');
INSERT INTO `wp_postmeta` VALUES (242,36,'jumbotron','');
INSERT INTO `wp_postmeta` VALUES (243,36,'_jumbotron','field_5e44520ce3252');
INSERT INTO `wp_postmeta` VALUES (244,36,'catalogue_header','Catalogue');
INSERT INTO `wp_postmeta` VALUES (245,36,'_catalogue_header','field_5e47a61a51d53');
INSERT INTO `wp_postmeta` VALUES (246,36,'catalogue_header_text','');
INSERT INTO `wp_postmeta` VALUES (247,36,'_catalogue_header_text','field_5e47a66851d55');
INSERT INTO `wp_postmeta` VALUES (248,36,'catalogue_highlight_text','in stocks');
INSERT INTO `wp_postmeta` VALUES (249,36,'_catalogue_highlight_text','field_5e47a73558744');
INSERT INTO `wp_postmeta` VALUES (250,36,'catalogue','');
INSERT INTO `wp_postmeta` VALUES (251,36,'_catalogue','field_5e47a60151d52');
INSERT INTO `wp_postmeta` VALUES (252,36,'catalogue_header_text_first_line','Browse through our catalogue section');
INSERT INTO `wp_postmeta` VALUES (253,36,'_catalogue_header_text_first_line','field_5e47a7c1c2ba5');
INSERT INTO `wp_postmeta` VALUES (254,36,'catalogue_header_text_second_line','to see what we have');
INSERT INTO `wp_postmeta` VALUES (255,36,'_catalogue_header_text_second_line','field_5e47a7dac2ba6');
INSERT INTO `wp_postmeta` VALUES (256,36,'catalogue_catalogue_header','Catalogue');
INSERT INTO `wp_postmeta` VALUES (257,36,'_catalogue_catalogue_header','field_5e47a61a51d53');
INSERT INTO `wp_postmeta` VALUES (258,36,'catalogue_catalogue_header_text_Catalogue_first_line','Browse through our catalogue section');
INSERT INTO `wp_postmeta` VALUES (259,36,'_catalogue_catalogue_header_text_Catalogue_first_line','field_5e47a7c1c2ba5');
INSERT INTO `wp_postmeta` VALUES (260,36,'catalogue_catalogue_header_text_catalogue_second_line','to see what we have');
INSERT INTO `wp_postmeta` VALUES (261,36,'_catalogue_catalogue_header_text_catalogue_second_line','field_5e47a7dac2ba6');
INSERT INTO `wp_postmeta` VALUES (262,36,'catalogue_catalogue_header_text','');
INSERT INTO `wp_postmeta` VALUES (263,36,'_catalogue_catalogue_header_text','field_5e47a66851d55');
INSERT INTO `wp_postmeta` VALUES (264,37,'jumbotron_big_title','Upgrade your home');
INSERT INTO `wp_postmeta` VALUES (265,37,'_jumbotron_big_title','field_5e44522be3253');
INSERT INTO `wp_postmeta` VALUES (266,37,'jumbotron_small_title','Your home should tell the story of who you are, and be a collection of what you love.');
INSERT INTO `wp_postmeta` VALUES (267,37,'_jumbotron_small_title','field_5e445261e3254');
INSERT INTO `wp_postmeta` VALUES (268,37,'jumbotron_button_text','Shop now');
INSERT INTO `wp_postmeta` VALUES (269,37,'_jumbotron_button_text','field_5e4452cce3255');
INSERT INTO `wp_postmeta` VALUES (270,37,'jumbotron_button_link','');
INSERT INTO `wp_postmeta` VALUES (271,37,'_jumbotron_button_link','field_5e4452dce3256');
INSERT INTO `wp_postmeta` VALUES (272,37,'jumbotron','');
INSERT INTO `wp_postmeta` VALUES (273,37,'_jumbotron','field_5e44520ce3252');
INSERT INTO `wp_postmeta` VALUES (274,37,'catalogue_header','Catalogue');
INSERT INTO `wp_postmeta` VALUES (275,37,'_catalogue_header','field_5e47a61a51d53');
INSERT INTO `wp_postmeta` VALUES (276,37,'catalogue_header_text','');
INSERT INTO `wp_postmeta` VALUES (277,37,'_catalogue_header_text','field_5e47a66851d55');
INSERT INTO `wp_postmeta` VALUES (278,37,'catalogue_highlight_text','in stocks');
INSERT INTO `wp_postmeta` VALUES (279,37,'_catalogue_highlight_text','field_5e47a73558744');
INSERT INTO `wp_postmeta` VALUES (280,37,'catalogue','');
INSERT INTO `wp_postmeta` VALUES (281,37,'_catalogue','field_5e47a60151d52');
INSERT INTO `wp_postmeta` VALUES (282,37,'catalogue_header_text_first_line','Browse through our catalogue section');
INSERT INTO `wp_postmeta` VALUES (283,37,'_catalogue_header_text_first_line','field_5e47a7c1c2ba5');
INSERT INTO `wp_postmeta` VALUES (284,37,'catalogue_header_text_second_line','to see what we have');
INSERT INTO `wp_postmeta` VALUES (285,37,'_catalogue_header_text_second_line','field_5e47a7dac2ba6');
INSERT INTO `wp_postmeta` VALUES (286,37,'catalogue_catalogue_header','Catalogue');
INSERT INTO `wp_postmeta` VALUES (287,37,'_catalogue_catalogue_header','field_5e47a61a51d53');
INSERT INTO `wp_postmeta` VALUES (288,37,'catalogue_catalogue_header_text_Catalogue_first_line','Browse through our catalogue section');
INSERT INTO `wp_postmeta` VALUES (289,37,'_catalogue_catalogue_header_text_Catalogue_first_line','field_5e47a7c1c2ba5');
INSERT INTO `wp_postmeta` VALUES (290,37,'catalogue_catalogue_header_text_catalogue_second_line','to see what we have');
INSERT INTO `wp_postmeta` VALUES (291,37,'_catalogue_catalogue_header_text_catalogue_second_line','field_5e47a7dac2ba6');
INSERT INTO `wp_postmeta` VALUES (292,37,'catalogue_catalogue_header_text','');
INSERT INTO `wp_postmeta` VALUES (293,37,'_catalogue_catalogue_header_text','field_5e47a66851d55');
INSERT INTO `wp_postmeta` VALUES (294,38,'jumbotron_big_title','Upgrade your home');
INSERT INTO `wp_postmeta` VALUES (295,38,'_jumbotron_big_title','field_5e44522be3253');
INSERT INTO `wp_postmeta` VALUES (296,38,'jumbotron_small_title','Your home should tell the story of who you are, and be a collection of what you love.');
INSERT INTO `wp_postmeta` VALUES (297,38,'_jumbotron_small_title','field_5e445261e3254');
INSERT INTO `wp_postmeta` VALUES (298,38,'jumbotron_button_text','Shop now');
INSERT INTO `wp_postmeta` VALUES (299,38,'_jumbotron_button_text','field_5e4452cce3255');
INSERT INTO `wp_postmeta` VALUES (300,38,'jumbotron_button_link','');
INSERT INTO `wp_postmeta` VALUES (301,38,'_jumbotron_button_link','field_5e4452dce3256');
INSERT INTO `wp_postmeta` VALUES (302,38,'jumbotron','');
INSERT INTO `wp_postmeta` VALUES (303,38,'_jumbotron','field_5e44520ce3252');
INSERT INTO `wp_postmeta` VALUES (304,38,'catalogue_header','Catalogue');
INSERT INTO `wp_postmeta` VALUES (305,38,'_catalogue_header','field_5e47a61a51d53');
INSERT INTO `wp_postmeta` VALUES (306,38,'catalogue_header_text','');
INSERT INTO `wp_postmeta` VALUES (307,38,'_catalogue_header_text','field_5e47a66851d55');
INSERT INTO `wp_postmeta` VALUES (308,38,'catalogue_highlight_text','in stocks');
INSERT INTO `wp_postmeta` VALUES (309,38,'_catalogue_highlight_text','field_5e47a73558744');
INSERT INTO `wp_postmeta` VALUES (310,38,'catalogue','');
INSERT INTO `wp_postmeta` VALUES (311,38,'_catalogue','field_5e47a60151d52');
INSERT INTO `wp_postmeta` VALUES (312,38,'catalogue_header_text_first_line','Browse through our catalogue section');
INSERT INTO `wp_postmeta` VALUES (313,38,'_catalogue_header_text_first_line','field_5e47a7c1c2ba5');
INSERT INTO `wp_postmeta` VALUES (314,38,'catalogue_header_text_second_line','to see what we have');
INSERT INTO `wp_postmeta` VALUES (315,38,'_catalogue_header_text_second_line','field_5e47a7dac2ba6');
INSERT INTO `wp_postmeta` VALUES (316,38,'catalogue_catalogue_header','Catalogue');
INSERT INTO `wp_postmeta` VALUES (317,38,'_catalogue_catalogue_header','field_5e47a61a51d53');
INSERT INTO `wp_postmeta` VALUES (318,38,'catalogue_catalogue_header_text_Catalogue_first_line','Browse through our catalogue section');
INSERT INTO `wp_postmeta` VALUES (319,38,'_catalogue_catalogue_header_text_Catalogue_first_line','field_5e47a7c1c2ba5');
INSERT INTO `wp_postmeta` VALUES (320,38,'catalogue_catalogue_header_text_catalogue_second_line','to see what we have');
INSERT INTO `wp_postmeta` VALUES (321,38,'_catalogue_catalogue_header_text_catalogue_second_line','field_5e47a7dac2ba6');
INSERT INTO `wp_postmeta` VALUES (322,38,'catalogue_catalogue_header_text','');
INSERT INTO `wp_postmeta` VALUES (323,38,'_catalogue_catalogue_header_text','field_5e47a66851d55');
INSERT INTO `wp_postmeta` VALUES (324,2,'_edit_lock','1582004937:1');
INSERT INTO `wp_postmeta` VALUES (325,13,'catalogue_catalogue_header_text_cat_first_line','');
INSERT INTO `wp_postmeta` VALUES (326,13,'_catalogue_catalogue_header_text_cat_first_line','field_5e4aed9ca5fb9');
INSERT INTO `wp_postmeta` VALUES (327,13,'catalogue_catalogue_header_text_cat_second_line','');
INSERT INTO `wp_postmeta` VALUES (328,13,'_catalogue_catalogue_header_text_cat_second_line','field_5e4aef75a9f35');
INSERT INTO `wp_postmeta` VALUES (329,13,'catalogue_catalogue_menu_first','Cushion');
INSERT INTO `wp_postmeta` VALUES (330,13,'_catalogue_catalogue_menu_first','field_5e57591d08565');
INSERT INTO `wp_postmeta` VALUES (331,13,'catalogue_catalogue_menu_second','Curtains');
INSERT INTO `wp_postmeta` VALUES (332,13,'_catalogue_catalogue_menu_second','field_5e57592d08566');
INSERT INTO `wp_postmeta` VALUES (333,13,'catalogue_catalogue_menu_third','Artwork');
INSERT INTO `wp_postmeta` VALUES (334,13,'_catalogue_catalogue_menu_third','field_5e57593408567');
INSERT INTO `wp_postmeta` VALUES (335,13,'catalogue_catalogue_menu_fourth','Bedsheets');
INSERT INTO `wp_postmeta` VALUES (336,13,'_catalogue_catalogue_menu_fourth','field_5e57594008568');
INSERT INTO `wp_postmeta` VALUES (337,13,'catalogue_catalogue_menu','');
INSERT INTO `wp_postmeta` VALUES (338,13,'_catalogue_catalogue_menu','field_5e57590808564');
INSERT INTO `wp_postmeta` VALUES (339,13,'catalogue_cushion_latest_image_1','');
INSERT INTO `wp_postmeta` VALUES (340,13,'_catalogue_cushion_latest_image_1','field_5e5759a20856a');
INSERT INTO `wp_postmeta` VALUES (341,13,'catalogue_cushion_latest_image_2','');
INSERT INTO `wp_postmeta` VALUES (342,13,'_catalogue_cushion_latest_image_2','field_5e5759e90856b');
INSERT INTO `wp_postmeta` VALUES (343,13,'catalogue_cushion_latest_image_3','');
INSERT INTO `wp_postmeta` VALUES (344,13,'_catalogue_cushion_latest_image_3','field_5e5759fa0856c');
INSERT INTO `wp_postmeta` VALUES (345,13,'catalogue_cushion_latest_image_4','');
INSERT INTO `wp_postmeta` VALUES (346,13,'_catalogue_cushion_latest_image_4','field_5e575a0d0856d');
INSERT INTO `wp_postmeta` VALUES (347,13,'catalogue_cushion_latest_image_5','');
INSERT INTO `wp_postmeta` VALUES (348,13,'_catalogue_cushion_latest_image_5','field_5e575a1c0856e');
INSERT INTO `wp_postmeta` VALUES (349,13,'catalogue_cushion_latest_image_6','');
INSERT INTO `wp_postmeta` VALUES (350,13,'_catalogue_cushion_latest_image_6','field_5e575a230856f');
INSERT INTO `wp_postmeta` VALUES (351,13,'catalogue_cushion_latest_image_7','');
INSERT INTO `wp_postmeta` VALUES (352,13,'_catalogue_cushion_latest_image_7','field_5e575a2a08570');
INSERT INTO `wp_postmeta` VALUES (353,13,'catalogue_cushion_latest_image_8','');
INSERT INTO `wp_postmeta` VALUES (354,13,'_catalogue_cushion_latest_image_8','field_5e575a2e08571');
INSERT INTO `wp_postmeta` VALUES (355,13,'catalogue_cushion_latest','');
INSERT INTO `wp_postmeta` VALUES (356,13,'_catalogue_cushion_latest','field_5e57598808569');
INSERT INTO `wp_postmeta` VALUES (357,13,'catalogue_cushion_popular_image_1','');
INSERT INTO `wp_postmeta` VALUES (358,13,'_catalogue_cushion_popular_image_1','field_5e575a8d0858e');
INSERT INTO `wp_postmeta` VALUES (359,13,'catalogue_cushion_popular_image_2','');
INSERT INTO `wp_postmeta` VALUES (360,13,'_catalogue_cushion_popular_image_2','field_5e575a8d0858f');
INSERT INTO `wp_postmeta` VALUES (361,13,'catalogue_cushion_popular_image_3','');
INSERT INTO `wp_postmeta` VALUES (362,13,'_catalogue_cushion_popular_image_3','field_5e575a8d08590');
INSERT INTO `wp_postmeta` VALUES (363,13,'catalogue_cushion_popular_image_4','');
INSERT INTO `wp_postmeta` VALUES (364,13,'_catalogue_cushion_popular_image_4','field_5e575a8d08591');
INSERT INTO `wp_postmeta` VALUES (365,13,'catalogue_cushion_popular_image_5','');
INSERT INTO `wp_postmeta` VALUES (366,13,'_catalogue_cushion_popular_image_5','field_5e575a8d08592');
INSERT INTO `wp_postmeta` VALUES (367,13,'catalogue_cushion_popular_image_6','');
INSERT INTO `wp_postmeta` VALUES (368,13,'_catalogue_cushion_popular_image_6','field_5e575a8d08593');
INSERT INTO `wp_postmeta` VALUES (369,13,'catalogue_cushion_popular_image_7','');
INSERT INTO `wp_postmeta` VALUES (370,13,'_catalogue_cushion_popular_image_7','field_5e575a8d08594');
INSERT INTO `wp_postmeta` VALUES (371,13,'catalogue_cushion_popular_image_8','');
INSERT INTO `wp_postmeta` VALUES (372,13,'_catalogue_cushion_popular_image_8','field_5e575a8d08595');
INSERT INTO `wp_postmeta` VALUES (373,13,'catalogue_cushion_popular','');
INSERT INTO `wp_postmeta` VALUES (374,13,'_catalogue_cushion_popular','field_5e575a8d0858d');
INSERT INTO `wp_postmeta` VALUES (375,13,'catalogue_curtains_latest_image_1','');
INSERT INTO `wp_postmeta` VALUES (376,13,'_catalogue_curtains_latest_image_1','field_5e575a3b08573');
INSERT INTO `wp_postmeta` VALUES (377,13,'catalogue_curtains_latest_image_2','');
INSERT INTO `wp_postmeta` VALUES (378,13,'_catalogue_curtains_latest_image_2','field_5e575a3b08574');
INSERT INTO `wp_postmeta` VALUES (379,13,'catalogue_curtains_latest_image_3','');
INSERT INTO `wp_postmeta` VALUES (380,13,'_catalogue_curtains_latest_image_3','field_5e575a3b08575');
INSERT INTO `wp_postmeta` VALUES (381,13,'catalogue_curtains_latest_image_4','');
INSERT INTO `wp_postmeta` VALUES (382,13,'_catalogue_curtains_latest_image_4','field_5e575a3b08576');
INSERT INTO `wp_postmeta` VALUES (383,13,'catalogue_curtains_latest_image_5','');
INSERT INTO `wp_postmeta` VALUES (384,13,'_catalogue_curtains_latest_image_5','field_5e575a3b08577');
INSERT INTO `wp_postmeta` VALUES (385,13,'catalogue_curtains_latest_image_6','');
INSERT INTO `wp_postmeta` VALUES (386,13,'_catalogue_curtains_latest_image_6','field_5e575a3b08578');
INSERT INTO `wp_postmeta` VALUES (387,13,'catalogue_curtains_latest_image_7','');
INSERT INTO `wp_postmeta` VALUES (388,13,'_catalogue_curtains_latest_image_7','field_5e575a3b08579');
INSERT INTO `wp_postmeta` VALUES (389,13,'catalogue_curtains_latest_image_8','');
INSERT INTO `wp_postmeta` VALUES (390,13,'_catalogue_curtains_latest_image_8','field_5e575a3b0857a');
INSERT INTO `wp_postmeta` VALUES (391,13,'catalogue_curtains_latest','');
INSERT INTO `wp_postmeta` VALUES (392,13,'_catalogue_curtains_latest','field_5e575a3b08572');
INSERT INTO `wp_postmeta` VALUES (393,13,'catalogue_curtains_popular_image_1','');
INSERT INTO `wp_postmeta` VALUES (394,13,'_catalogue_curtains_popular_image_1','field_5e575aae08597');
INSERT INTO `wp_postmeta` VALUES (395,13,'catalogue_curtains_popular_image_2','');
INSERT INTO `wp_postmeta` VALUES (396,13,'_catalogue_curtains_popular_image_2','field_5e575aae08598');
INSERT INTO `wp_postmeta` VALUES (397,13,'catalogue_curtains_popular_image_3','');
INSERT INTO `wp_postmeta` VALUES (398,13,'_catalogue_curtains_popular_image_3','field_5e575aae08599');
INSERT INTO `wp_postmeta` VALUES (399,13,'catalogue_curtains_popular_image_4','');
INSERT INTO `wp_postmeta` VALUES (400,13,'_catalogue_curtains_popular_image_4','field_5e575aae0859a');
INSERT INTO `wp_postmeta` VALUES (401,13,'catalogue_curtains_popular_image_5','');
INSERT INTO `wp_postmeta` VALUES (402,13,'_catalogue_curtains_popular_image_5','field_5e575aae0859b');
INSERT INTO `wp_postmeta` VALUES (403,13,'catalogue_curtains_popular_image_6','');
INSERT INTO `wp_postmeta` VALUES (404,13,'_catalogue_curtains_popular_image_6','field_5e575aae0859c');
INSERT INTO `wp_postmeta` VALUES (405,13,'catalogue_curtains_popular_image_7','');
INSERT INTO `wp_postmeta` VALUES (406,13,'_catalogue_curtains_popular_image_7','field_5e575aae0859d');
INSERT INTO `wp_postmeta` VALUES (407,13,'catalogue_curtains_popular_image_8','');
INSERT INTO `wp_postmeta` VALUES (408,13,'_catalogue_curtains_popular_image_8','field_5e575aae0859e');
INSERT INTO `wp_postmeta` VALUES (409,13,'catalogue_curtains_popular','');
INSERT INTO `wp_postmeta` VALUES (410,13,'_catalogue_curtains_popular','field_5e575aae08596');
INSERT INTO `wp_postmeta` VALUES (411,13,'catalogue_artwork_latest_image_1','');
INSERT INTO `wp_postmeta` VALUES (412,13,'_catalogue_artwork_latest_image_1','field_5e575a5d0857c');
INSERT INTO `wp_postmeta` VALUES (413,13,'catalogue_artwork_latest_image_2','');
INSERT INTO `wp_postmeta` VALUES (414,13,'_catalogue_artwork_latest_image_2','field_5e575a5d0857d');
INSERT INTO `wp_postmeta` VALUES (415,13,'catalogue_artwork_latest_image_3','');
INSERT INTO `wp_postmeta` VALUES (416,13,'_catalogue_artwork_latest_image_3','field_5e575a5d0857e');
INSERT INTO `wp_postmeta` VALUES (417,13,'catalogue_artwork_latest_image_4','');
INSERT INTO `wp_postmeta` VALUES (418,13,'_catalogue_artwork_latest_image_4','field_5e575a5d0857f');
INSERT INTO `wp_postmeta` VALUES (419,13,'catalogue_artwork_latest_image_5','');
INSERT INTO `wp_postmeta` VALUES (420,13,'_catalogue_artwork_latest_image_5','field_5e575a5d08580');
INSERT INTO `wp_postmeta` VALUES (421,13,'catalogue_artwork_latest_image_6','');
INSERT INTO `wp_postmeta` VALUES (422,13,'_catalogue_artwork_latest_image_6','field_5e575a5d08581');
INSERT INTO `wp_postmeta` VALUES (423,13,'catalogue_artwork_latest_image_7','');
INSERT INTO `wp_postmeta` VALUES (424,13,'_catalogue_artwork_latest_image_7','field_5e575a5d08582');
INSERT INTO `wp_postmeta` VALUES (425,13,'catalogue_artwork_latest_image_8','');
INSERT INTO `wp_postmeta` VALUES (426,13,'_catalogue_artwork_latest_image_8','field_5e575a5d08583');
INSERT INTO `wp_postmeta` VALUES (427,13,'catalogue_artwork_latest','');
INSERT INTO `wp_postmeta` VALUES (428,13,'_catalogue_artwork_latest','field_5e575a5d0857b');
INSERT INTO `wp_postmeta` VALUES (429,13,'catalogue_artwork_popular_image_1','');
INSERT INTO `wp_postmeta` VALUES (430,13,'_catalogue_artwork_popular_image_1','field_5e575abe085a0');
INSERT INTO `wp_postmeta` VALUES (431,13,'catalogue_artwork_popular_image_2','');
INSERT INTO `wp_postmeta` VALUES (432,13,'_catalogue_artwork_popular_image_2','field_5e575abe085a1');
INSERT INTO `wp_postmeta` VALUES (433,13,'catalogue_artwork_popular_image_3','');
INSERT INTO `wp_postmeta` VALUES (434,13,'_catalogue_artwork_popular_image_3','field_5e575abe085a2');
INSERT INTO `wp_postmeta` VALUES (435,13,'catalogue_artwork_popular_image_4','');
INSERT INTO `wp_postmeta` VALUES (436,13,'_catalogue_artwork_popular_image_4','field_5e575abe085a3');
INSERT INTO `wp_postmeta` VALUES (437,13,'catalogue_artwork_popular_image_5','');
INSERT INTO `wp_postmeta` VALUES (438,13,'_catalogue_artwork_popular_image_5','field_5e575abe085a4');
INSERT INTO `wp_postmeta` VALUES (439,13,'catalogue_artwork_popular_image_6','');
INSERT INTO `wp_postmeta` VALUES (440,13,'_catalogue_artwork_popular_image_6','field_5e575abe085a5');
INSERT INTO `wp_postmeta` VALUES (441,13,'catalogue_artwork_popular_image_7','');
INSERT INTO `wp_postmeta` VALUES (442,13,'_catalogue_artwork_popular_image_7','field_5e575abe085a6');
INSERT INTO `wp_postmeta` VALUES (443,13,'catalogue_artwork_popular_image_8','');
INSERT INTO `wp_postmeta` VALUES (444,13,'_catalogue_artwork_popular_image_8','field_5e575abe085a7');
INSERT INTO `wp_postmeta` VALUES (445,13,'catalogue_artwork_popular','');
INSERT INTO `wp_postmeta` VALUES (446,13,'_catalogue_artwork_popular','field_5e575abe0859f');
INSERT INTO `wp_postmeta` VALUES (447,13,'catalogue_bedsheets_latest_image_1','');
INSERT INTO `wp_postmeta` VALUES (448,13,'_catalogue_bedsheets_latest_image_1','field_5e575a7208585');
INSERT INTO `wp_postmeta` VALUES (449,13,'catalogue_bedsheets_latest_image_2','');
INSERT INTO `wp_postmeta` VALUES (450,13,'_catalogue_bedsheets_latest_image_2','field_5e575a7208586');
INSERT INTO `wp_postmeta` VALUES (451,13,'catalogue_bedsheets_latest_image_3','');
INSERT INTO `wp_postmeta` VALUES (452,13,'_catalogue_bedsheets_latest_image_3','field_5e575a7208587');
INSERT INTO `wp_postmeta` VALUES (453,13,'catalogue_bedsheets_latest_image_4','');
INSERT INTO `wp_postmeta` VALUES (454,13,'_catalogue_bedsheets_latest_image_4','field_5e575a7208588');
INSERT INTO `wp_postmeta` VALUES (455,13,'catalogue_bedsheets_latest_image_5','');
INSERT INTO `wp_postmeta` VALUES (456,13,'_catalogue_bedsheets_latest_image_5','field_5e575a7208589');
INSERT INTO `wp_postmeta` VALUES (457,13,'catalogue_bedsheets_latest_image_6','');
INSERT INTO `wp_postmeta` VALUES (458,13,'_catalogue_bedsheets_latest_image_6','field_5e575a720858a');
INSERT INTO `wp_postmeta` VALUES (459,13,'catalogue_bedsheets_latest_image_7','');
INSERT INTO `wp_postmeta` VALUES (460,13,'_catalogue_bedsheets_latest_image_7','field_5e575a720858b');
INSERT INTO `wp_postmeta` VALUES (461,13,'catalogue_bedsheets_latest_image_8','');
INSERT INTO `wp_postmeta` VALUES (462,13,'_catalogue_bedsheets_latest_image_8','field_5e575a720858c');
INSERT INTO `wp_postmeta` VALUES (463,13,'catalogue_bedsheets_latest','');
INSERT INTO `wp_postmeta` VALUES (464,13,'_catalogue_bedsheets_latest','field_5e575a7208584');
INSERT INTO `wp_postmeta` VALUES (465,13,'catalogue_bedsheets_popular_image_1','');
INSERT INTO `wp_postmeta` VALUES (466,13,'_catalogue_bedsheets_popular_image_1','field_5e575acd085a9');
INSERT INTO `wp_postmeta` VALUES (467,13,'catalogue_bedsheets_popular_image_2','');
INSERT INTO `wp_postmeta` VALUES (468,13,'_catalogue_bedsheets_popular_image_2','field_5e575acd085aa');
INSERT INTO `wp_postmeta` VALUES (469,13,'catalogue_bedsheets_popular_image_3','');
INSERT INTO `wp_postmeta` VALUES (470,13,'_catalogue_bedsheets_popular_image_3','field_5e575acd085ab');
INSERT INTO `wp_postmeta` VALUES (471,13,'catalogue_bedsheets_popular_image_4','');
INSERT INTO `wp_postmeta` VALUES (472,13,'_catalogue_bedsheets_popular_image_4','field_5e575acd085ac');
INSERT INTO `wp_postmeta` VALUES (473,13,'catalogue_bedsheets_popular_image_5','');
INSERT INTO `wp_postmeta` VALUES (474,13,'_catalogue_bedsheets_popular_image_5','field_5e575acd085ad');
INSERT INTO `wp_postmeta` VALUES (475,13,'catalogue_bedsheets_popular_image_6','');
INSERT INTO `wp_postmeta` VALUES (476,13,'_catalogue_bedsheets_popular_image_6','field_5e575ace085ae');
INSERT INTO `wp_postmeta` VALUES (477,13,'catalogue_bedsheets_popular_image_7','');
INSERT INTO `wp_postmeta` VALUES (478,13,'_catalogue_bedsheets_popular_image_7','field_5e575ace085af');
INSERT INTO `wp_postmeta` VALUES (479,13,'catalogue_bedsheets_popular_image_8','');
INSERT INTO `wp_postmeta` VALUES (480,13,'_catalogue_bedsheets_popular_image_8','field_5e575ace085b0');
INSERT INTO `wp_postmeta` VALUES (481,13,'catalogue_bedsheets_popular','');
INSERT INTO `wp_postmeta` VALUES (482,13,'_catalogue_bedsheets_popular','field_5e575acd085a8');
INSERT INTO `wp_postmeta` VALUES (483,13,'catalogue_see_all','');
INSERT INTO `wp_postmeta` VALUES (484,13,'_catalogue_see_all','field_5e575ade085b1');
INSERT INTO `wp_postmeta` VALUES (485,13,'contact_call_header','Call or whatsapp');
INSERT INTO `wp_postmeta` VALUES (486,13,'_contact_call_header','field_5e575b52085b4');
INSERT INTO `wp_postmeta` VALUES (487,13,'contact_phone_1','0722 461012');
INSERT INTO `wp_postmeta` VALUES (488,13,'_contact_phone_1','field_5e575b92d82c4');
INSERT INTO `wp_postmeta` VALUES (489,13,'contact_phone_2','0733 714380');
INSERT INTO `wp_postmeta` VALUES (490,13,'_contact_phone_2','field_5e575ba0d82c5');
INSERT INTO `wp_postmeta` VALUES (491,13,'contact_location_header','Physical location');
INSERT INTO `wp_postmeta` VALUES (492,13,'_contact_location_header','field_5e575be0d82c6');
INSERT INTO `wp_postmeta` VALUES (493,13,'contact_address_line_1','Ground floor, City Mall');
INSERT INTO `wp_postmeta` VALUES (494,13,'_contact_address_line_1','field_5e575bf1d82c7');
INSERT INTO `wp_postmeta` VALUES (495,13,'contact_address_line_2','Nyali, Mombasa');
INSERT INTO `wp_postmeta` VALUES (496,13,'_contact_address_line_2','field_5e575c0dd82c8');
INSERT INTO `wp_postmeta` VALUES (497,13,'contact','');
INSERT INTO `wp_postmeta` VALUES (498,13,'_contact','field_5e575b39085b3');
INSERT INTO `wp_postmeta` VALUES (499,13,'social_links_instagram','');
INSERT INTO `wp_postmeta` VALUES (500,13,'_social_links_instagram','field_5e575ccfd82ca');
INSERT INTO `wp_postmeta` VALUES (501,13,'social_links_twitter','');
INSERT INTO `wp_postmeta` VALUES (502,13,'_social_links_twitter','field_5e575cf1d82cb');
INSERT INTO `wp_postmeta` VALUES (503,13,'social_links_facebook','https://www.facebook.com/Nivannainteriors2015/');
INSERT INTO `wp_postmeta` VALUES (504,13,'_social_links_facebook','field_5e575d04d82cc');
INSERT INTO `wp_postmeta` VALUES (505,13,'social_links','');
INSERT INTO `wp_postmeta` VALUES (506,13,'_social_links','field_5e575cb7d82c9');
INSERT INTO `wp_postmeta` VALUES (507,133,'jumbotron_big_title','Upgrade your home');
INSERT INTO `wp_postmeta` VALUES (508,133,'_jumbotron_big_title','field_5e44522be3253');
INSERT INTO `wp_postmeta` VALUES (509,133,'jumbotron_small_title','Your home should tell the story of who you are, and be a collection of what you love.');
INSERT INTO `wp_postmeta` VALUES (510,133,'_jumbotron_small_title','field_5e445261e3254');
INSERT INTO `wp_postmeta` VALUES (511,133,'jumbotron_button_text','Shop now');
INSERT INTO `wp_postmeta` VALUES (512,133,'_jumbotron_button_text','field_5e4452cce3255');
INSERT INTO `wp_postmeta` VALUES (513,133,'jumbotron_button_link','');
INSERT INTO `wp_postmeta` VALUES (514,133,'_jumbotron_button_link','field_5e4452dce3256');
INSERT INTO `wp_postmeta` VALUES (515,133,'jumbotron','');
INSERT INTO `wp_postmeta` VALUES (516,133,'_jumbotron','field_5e44520ce3252');
INSERT INTO `wp_postmeta` VALUES (517,133,'catalogue_header','Catalogue');
INSERT INTO `wp_postmeta` VALUES (518,133,'_catalogue_header','field_5e47a61a51d53');
INSERT INTO `wp_postmeta` VALUES (519,133,'catalogue_header_text','');
INSERT INTO `wp_postmeta` VALUES (520,133,'_catalogue_header_text','field_5e47a66851d55');
INSERT INTO `wp_postmeta` VALUES (521,133,'catalogue_highlight_text','in stocks');
INSERT INTO `wp_postmeta` VALUES (522,133,'_catalogue_highlight_text','field_5e47a73558744');
INSERT INTO `wp_postmeta` VALUES (523,133,'catalogue','');
INSERT INTO `wp_postmeta` VALUES (524,133,'_catalogue','field_5e47a60151d52');
INSERT INTO `wp_postmeta` VALUES (525,133,'catalogue_header_text_first_line','Browse through our catalogue section');
INSERT INTO `wp_postmeta` VALUES (526,133,'_catalogue_header_text_first_line','field_5e47a7c1c2ba5');
INSERT INTO `wp_postmeta` VALUES (527,133,'catalogue_header_text_second_line','to see what we have');
INSERT INTO `wp_postmeta` VALUES (528,133,'_catalogue_header_text_second_line','field_5e47a7dac2ba6');
INSERT INTO `wp_postmeta` VALUES (529,133,'catalogue_catalogue_header','Catalogue');
INSERT INTO `wp_postmeta` VALUES (530,133,'_catalogue_catalogue_header','field_5e47a61a51d53');
INSERT INTO `wp_postmeta` VALUES (531,133,'catalogue_catalogue_header_text_Catalogue_first_line','Browse through our catalogue section');
INSERT INTO `wp_postmeta` VALUES (532,133,'_catalogue_catalogue_header_text_Catalogue_first_line','field_5e47a7c1c2ba5');
INSERT INTO `wp_postmeta` VALUES (533,133,'catalogue_catalogue_header_text_catalogue_second_line','to see what we have');
INSERT INTO `wp_postmeta` VALUES (534,133,'_catalogue_catalogue_header_text_catalogue_second_line','field_5e47a7dac2ba6');
INSERT INTO `wp_postmeta` VALUES (535,133,'catalogue_catalogue_header_text','');
INSERT INTO `wp_postmeta` VALUES (536,133,'_catalogue_catalogue_header_text','field_5e47a66851d55');
INSERT INTO `wp_postmeta` VALUES (537,133,'catalogue_catalogue_header_text_cat_first_line','');
INSERT INTO `wp_postmeta` VALUES (538,133,'_catalogue_catalogue_header_text_cat_first_line','field_5e4aed9ca5fb9');
INSERT INTO `wp_postmeta` VALUES (539,133,'catalogue_catalogue_header_text_cat_second_line','');
INSERT INTO `wp_postmeta` VALUES (540,133,'_catalogue_catalogue_header_text_cat_second_line','field_5e4aef75a9f35');
INSERT INTO `wp_postmeta` VALUES (541,133,'catalogue_catalogue_menu_first','Cushion');
INSERT INTO `wp_postmeta` VALUES (542,133,'_catalogue_catalogue_menu_first','field_5e57591d08565');
INSERT INTO `wp_postmeta` VALUES (543,133,'catalogue_catalogue_menu_second','Curtains');
INSERT INTO `wp_postmeta` VALUES (544,133,'_catalogue_catalogue_menu_second','field_5e57592d08566');
INSERT INTO `wp_postmeta` VALUES (545,133,'catalogue_catalogue_menu_third','Artwork');
INSERT INTO `wp_postmeta` VALUES (546,133,'_catalogue_catalogue_menu_third','field_5e57593408567');
INSERT INTO `wp_postmeta` VALUES (547,133,'catalogue_catalogue_menu_fourth','Bedsheets');
INSERT INTO `wp_postmeta` VALUES (548,133,'_catalogue_catalogue_menu_fourth','field_5e57594008568');
INSERT INTO `wp_postmeta` VALUES (549,133,'catalogue_catalogue_menu','');
INSERT INTO `wp_postmeta` VALUES (550,133,'_catalogue_catalogue_menu','field_5e57590808564');
INSERT INTO `wp_postmeta` VALUES (551,133,'catalogue_cushion_latest_image_1','');
INSERT INTO `wp_postmeta` VALUES (552,133,'_catalogue_cushion_latest_image_1','field_5e5759a20856a');
INSERT INTO `wp_postmeta` VALUES (553,133,'catalogue_cushion_latest_image_2','');
INSERT INTO `wp_postmeta` VALUES (554,133,'_catalogue_cushion_latest_image_2','field_5e5759e90856b');
INSERT INTO `wp_postmeta` VALUES (555,133,'catalogue_cushion_latest_image_3','');
INSERT INTO `wp_postmeta` VALUES (556,133,'_catalogue_cushion_latest_image_3','field_5e5759fa0856c');
INSERT INTO `wp_postmeta` VALUES (557,133,'catalogue_cushion_latest_image_4','');
INSERT INTO `wp_postmeta` VALUES (558,133,'_catalogue_cushion_latest_image_4','field_5e575a0d0856d');
INSERT INTO `wp_postmeta` VALUES (559,133,'catalogue_cushion_latest_image_5','');
INSERT INTO `wp_postmeta` VALUES (560,133,'_catalogue_cushion_latest_image_5','field_5e575a1c0856e');
INSERT INTO `wp_postmeta` VALUES (561,133,'catalogue_cushion_latest_image_6','');
INSERT INTO `wp_postmeta` VALUES (562,133,'_catalogue_cushion_latest_image_6','field_5e575a230856f');
INSERT INTO `wp_postmeta` VALUES (563,133,'catalogue_cushion_latest_image_7','');
INSERT INTO `wp_postmeta` VALUES (564,133,'_catalogue_cushion_latest_image_7','field_5e575a2a08570');
INSERT INTO `wp_postmeta` VALUES (565,133,'catalogue_cushion_latest_image_8','');
INSERT INTO `wp_postmeta` VALUES (566,133,'_catalogue_cushion_latest_image_8','field_5e575a2e08571');
INSERT INTO `wp_postmeta` VALUES (567,133,'catalogue_cushion_latest','');
INSERT INTO `wp_postmeta` VALUES (568,133,'_catalogue_cushion_latest','field_5e57598808569');
INSERT INTO `wp_postmeta` VALUES (569,133,'catalogue_cushion_popular_image_1','');
INSERT INTO `wp_postmeta` VALUES (570,133,'_catalogue_cushion_popular_image_1','field_5e575a8d0858e');
INSERT INTO `wp_postmeta` VALUES (571,133,'catalogue_cushion_popular_image_2','');
INSERT INTO `wp_postmeta` VALUES (572,133,'_catalogue_cushion_popular_image_2','field_5e575a8d0858f');
INSERT INTO `wp_postmeta` VALUES (573,133,'catalogue_cushion_popular_image_3','');
INSERT INTO `wp_postmeta` VALUES (574,133,'_catalogue_cushion_popular_image_3','field_5e575a8d08590');
INSERT INTO `wp_postmeta` VALUES (575,133,'catalogue_cushion_popular_image_4','');
INSERT INTO `wp_postmeta` VALUES (576,133,'_catalogue_cushion_popular_image_4','field_5e575a8d08591');
INSERT INTO `wp_postmeta` VALUES (577,133,'catalogue_cushion_popular_image_5','');
INSERT INTO `wp_postmeta` VALUES (578,133,'_catalogue_cushion_popular_image_5','field_5e575a8d08592');
INSERT INTO `wp_postmeta` VALUES (579,133,'catalogue_cushion_popular_image_6','');
INSERT INTO `wp_postmeta` VALUES (580,133,'_catalogue_cushion_popular_image_6','field_5e575a8d08593');
INSERT INTO `wp_postmeta` VALUES (581,133,'catalogue_cushion_popular_image_7','');
INSERT INTO `wp_postmeta` VALUES (582,133,'_catalogue_cushion_popular_image_7','field_5e575a8d08594');
INSERT INTO `wp_postmeta` VALUES (583,133,'catalogue_cushion_popular_image_8','');
INSERT INTO `wp_postmeta` VALUES (584,133,'_catalogue_cushion_popular_image_8','field_5e575a8d08595');
INSERT INTO `wp_postmeta` VALUES (585,133,'catalogue_cushion_popular','');
INSERT INTO `wp_postmeta` VALUES (586,133,'_catalogue_cushion_popular','field_5e575a8d0858d');
INSERT INTO `wp_postmeta` VALUES (587,133,'catalogue_curtains_latest_image_1','');
INSERT INTO `wp_postmeta` VALUES (588,133,'_catalogue_curtains_latest_image_1','field_5e575a3b08573');
INSERT INTO `wp_postmeta` VALUES (589,133,'catalogue_curtains_latest_image_2','');
INSERT INTO `wp_postmeta` VALUES (590,133,'_catalogue_curtains_latest_image_2','field_5e575a3b08574');
INSERT INTO `wp_postmeta` VALUES (591,133,'catalogue_curtains_latest_image_3','');
INSERT INTO `wp_postmeta` VALUES (592,133,'_catalogue_curtains_latest_image_3','field_5e575a3b08575');
INSERT INTO `wp_postmeta` VALUES (593,133,'catalogue_curtains_latest_image_4','');
INSERT INTO `wp_postmeta` VALUES (594,133,'_catalogue_curtains_latest_image_4','field_5e575a3b08576');
INSERT INTO `wp_postmeta` VALUES (595,133,'catalogue_curtains_latest_image_5','');
INSERT INTO `wp_postmeta` VALUES (596,133,'_catalogue_curtains_latest_image_5','field_5e575a3b08577');
INSERT INTO `wp_postmeta` VALUES (597,133,'catalogue_curtains_latest_image_6','');
INSERT INTO `wp_postmeta` VALUES (598,133,'_catalogue_curtains_latest_image_6','field_5e575a3b08578');
INSERT INTO `wp_postmeta` VALUES (599,133,'catalogue_curtains_latest_image_7','');
INSERT INTO `wp_postmeta` VALUES (600,133,'_catalogue_curtains_latest_image_7','field_5e575a3b08579');
INSERT INTO `wp_postmeta` VALUES (601,133,'catalogue_curtains_latest_image_8','');
INSERT INTO `wp_postmeta` VALUES (602,133,'_catalogue_curtains_latest_image_8','field_5e575a3b0857a');
INSERT INTO `wp_postmeta` VALUES (603,133,'catalogue_curtains_latest','');
INSERT INTO `wp_postmeta` VALUES (604,133,'_catalogue_curtains_latest','field_5e575a3b08572');
INSERT INTO `wp_postmeta` VALUES (605,133,'catalogue_curtains_popular_image_1','');
INSERT INTO `wp_postmeta` VALUES (606,133,'_catalogue_curtains_popular_image_1','field_5e575aae08597');
INSERT INTO `wp_postmeta` VALUES (607,133,'catalogue_curtains_popular_image_2','');
INSERT INTO `wp_postmeta` VALUES (608,133,'_catalogue_curtains_popular_image_2','field_5e575aae08598');
INSERT INTO `wp_postmeta` VALUES (609,133,'catalogue_curtains_popular_image_3','');
INSERT INTO `wp_postmeta` VALUES (610,133,'_catalogue_curtains_popular_image_3','field_5e575aae08599');
INSERT INTO `wp_postmeta` VALUES (611,133,'catalogue_curtains_popular_image_4','');
INSERT INTO `wp_postmeta` VALUES (612,133,'_catalogue_curtains_popular_image_4','field_5e575aae0859a');
INSERT INTO `wp_postmeta` VALUES (613,133,'catalogue_curtains_popular_image_5','');
INSERT INTO `wp_postmeta` VALUES (614,133,'_catalogue_curtains_popular_image_5','field_5e575aae0859b');
INSERT INTO `wp_postmeta` VALUES (615,133,'catalogue_curtains_popular_image_6','');
INSERT INTO `wp_postmeta` VALUES (616,133,'_catalogue_curtains_popular_image_6','field_5e575aae0859c');
INSERT INTO `wp_postmeta` VALUES (617,133,'catalogue_curtains_popular_image_7','');
INSERT INTO `wp_postmeta` VALUES (618,133,'_catalogue_curtains_popular_image_7','field_5e575aae0859d');
INSERT INTO `wp_postmeta` VALUES (619,133,'catalogue_curtains_popular_image_8','');
INSERT INTO `wp_postmeta` VALUES (620,133,'_catalogue_curtains_popular_image_8','field_5e575aae0859e');
INSERT INTO `wp_postmeta` VALUES (621,133,'catalogue_curtains_popular','');
INSERT INTO `wp_postmeta` VALUES (622,133,'_catalogue_curtains_popular','field_5e575aae08596');
INSERT INTO `wp_postmeta` VALUES (623,133,'catalogue_artwork_latest_image_1','');
INSERT INTO `wp_postmeta` VALUES (624,133,'_catalogue_artwork_latest_image_1','field_5e575a5d0857c');
INSERT INTO `wp_postmeta` VALUES (625,133,'catalogue_artwork_latest_image_2','');
INSERT INTO `wp_postmeta` VALUES (626,133,'_catalogue_artwork_latest_image_2','field_5e575a5d0857d');
INSERT INTO `wp_postmeta` VALUES (627,133,'catalogue_artwork_latest_image_3','');
INSERT INTO `wp_postmeta` VALUES (628,133,'_catalogue_artwork_latest_image_3','field_5e575a5d0857e');
INSERT INTO `wp_postmeta` VALUES (629,133,'catalogue_artwork_latest_image_4','');
INSERT INTO `wp_postmeta` VALUES (630,133,'_catalogue_artwork_latest_image_4','field_5e575a5d0857f');
INSERT INTO `wp_postmeta` VALUES (631,133,'catalogue_artwork_latest_image_5','');
INSERT INTO `wp_postmeta` VALUES (632,133,'_catalogue_artwork_latest_image_5','field_5e575a5d08580');
INSERT INTO `wp_postmeta` VALUES (633,133,'catalogue_artwork_latest_image_6','');
INSERT INTO `wp_postmeta` VALUES (634,133,'_catalogue_artwork_latest_image_6','field_5e575a5d08581');
INSERT INTO `wp_postmeta` VALUES (635,133,'catalogue_artwork_latest_image_7','');
INSERT INTO `wp_postmeta` VALUES (636,133,'_catalogue_artwork_latest_image_7','field_5e575a5d08582');
INSERT INTO `wp_postmeta` VALUES (637,133,'catalogue_artwork_latest_image_8','');
INSERT INTO `wp_postmeta` VALUES (638,133,'_catalogue_artwork_latest_image_8','field_5e575a5d08583');
INSERT INTO `wp_postmeta` VALUES (639,133,'catalogue_artwork_latest','');
INSERT INTO `wp_postmeta` VALUES (640,133,'_catalogue_artwork_latest','field_5e575a5d0857b');
INSERT INTO `wp_postmeta` VALUES (641,133,'catalogue_artwork_popular_image_1','');
INSERT INTO `wp_postmeta` VALUES (642,133,'_catalogue_artwork_popular_image_1','field_5e575abe085a0');
INSERT INTO `wp_postmeta` VALUES (643,133,'catalogue_artwork_popular_image_2','');
INSERT INTO `wp_postmeta` VALUES (644,133,'_catalogue_artwork_popular_image_2','field_5e575abe085a1');
INSERT INTO `wp_postmeta` VALUES (645,133,'catalogue_artwork_popular_image_3','');
INSERT INTO `wp_postmeta` VALUES (646,133,'_catalogue_artwork_popular_image_3','field_5e575abe085a2');
INSERT INTO `wp_postmeta` VALUES (647,133,'catalogue_artwork_popular_image_4','');
INSERT INTO `wp_postmeta` VALUES (648,133,'_catalogue_artwork_popular_image_4','field_5e575abe085a3');
INSERT INTO `wp_postmeta` VALUES (649,133,'catalogue_artwork_popular_image_5','');
INSERT INTO `wp_postmeta` VALUES (650,133,'_catalogue_artwork_popular_image_5','field_5e575abe085a4');
INSERT INTO `wp_postmeta` VALUES (651,133,'catalogue_artwork_popular_image_6','');
INSERT INTO `wp_postmeta` VALUES (652,133,'_catalogue_artwork_popular_image_6','field_5e575abe085a5');
INSERT INTO `wp_postmeta` VALUES (653,133,'catalogue_artwork_popular_image_7','');
INSERT INTO `wp_postmeta` VALUES (654,133,'_catalogue_artwork_popular_image_7','field_5e575abe085a6');
INSERT INTO `wp_postmeta` VALUES (655,133,'catalogue_artwork_popular_image_8','');
INSERT INTO `wp_postmeta` VALUES (656,133,'_catalogue_artwork_popular_image_8','field_5e575abe085a7');
INSERT INTO `wp_postmeta` VALUES (657,133,'catalogue_artwork_popular','');
INSERT INTO `wp_postmeta` VALUES (658,133,'_catalogue_artwork_popular','field_5e575abe0859f');
INSERT INTO `wp_postmeta` VALUES (659,133,'catalogue_bedsheets_latest_image_1','');
INSERT INTO `wp_postmeta` VALUES (660,133,'_catalogue_bedsheets_latest_image_1','field_5e575a7208585');
INSERT INTO `wp_postmeta` VALUES (661,133,'catalogue_bedsheets_latest_image_2','');
INSERT INTO `wp_postmeta` VALUES (662,133,'_catalogue_bedsheets_latest_image_2','field_5e575a7208586');
INSERT INTO `wp_postmeta` VALUES (663,133,'catalogue_bedsheets_latest_image_3','');
INSERT INTO `wp_postmeta` VALUES (664,133,'_catalogue_bedsheets_latest_image_3','field_5e575a7208587');
INSERT INTO `wp_postmeta` VALUES (665,133,'catalogue_bedsheets_latest_image_4','');
INSERT INTO `wp_postmeta` VALUES (666,133,'_catalogue_bedsheets_latest_image_4','field_5e575a7208588');
INSERT INTO `wp_postmeta` VALUES (667,133,'catalogue_bedsheets_latest_image_5','');
INSERT INTO `wp_postmeta` VALUES (668,133,'_catalogue_bedsheets_latest_image_5','field_5e575a7208589');
INSERT INTO `wp_postmeta` VALUES (669,133,'catalogue_bedsheets_latest_image_6','');
INSERT INTO `wp_postmeta` VALUES (670,133,'_catalogue_bedsheets_latest_image_6','field_5e575a720858a');
INSERT INTO `wp_postmeta` VALUES (671,133,'catalogue_bedsheets_latest_image_7','');
INSERT INTO `wp_postmeta` VALUES (672,133,'_catalogue_bedsheets_latest_image_7','field_5e575a720858b');
INSERT INTO `wp_postmeta` VALUES (673,133,'catalogue_bedsheets_latest_image_8','');
INSERT INTO `wp_postmeta` VALUES (674,133,'_catalogue_bedsheets_latest_image_8','field_5e575a720858c');
INSERT INTO `wp_postmeta` VALUES (675,133,'catalogue_bedsheets_latest','');
INSERT INTO `wp_postmeta` VALUES (676,133,'_catalogue_bedsheets_latest','field_5e575a7208584');
INSERT INTO `wp_postmeta` VALUES (677,133,'catalogue_bedsheets_popular_image_1','');
INSERT INTO `wp_postmeta` VALUES (678,133,'_catalogue_bedsheets_popular_image_1','field_5e575acd085a9');
INSERT INTO `wp_postmeta` VALUES (679,133,'catalogue_bedsheets_popular_image_2','');
INSERT INTO `wp_postmeta` VALUES (680,133,'_catalogue_bedsheets_popular_image_2','field_5e575acd085aa');
INSERT INTO `wp_postmeta` VALUES (681,133,'catalogue_bedsheets_popular_image_3','');
INSERT INTO `wp_postmeta` VALUES (682,133,'_catalogue_bedsheets_popular_image_3','field_5e575acd085ab');
INSERT INTO `wp_postmeta` VALUES (683,133,'catalogue_bedsheets_popular_image_4','');
INSERT INTO `wp_postmeta` VALUES (684,133,'_catalogue_bedsheets_popular_image_4','field_5e575acd085ac');
INSERT INTO `wp_postmeta` VALUES (685,133,'catalogue_bedsheets_popular_image_5','');
INSERT INTO `wp_postmeta` VALUES (686,133,'_catalogue_bedsheets_popular_image_5','field_5e575acd085ad');
INSERT INTO `wp_postmeta` VALUES (687,133,'catalogue_bedsheets_popular_image_6','');
INSERT INTO `wp_postmeta` VALUES (688,133,'_catalogue_bedsheets_popular_image_6','field_5e575ace085ae');
INSERT INTO `wp_postmeta` VALUES (689,133,'catalogue_bedsheets_popular_image_7','');
INSERT INTO `wp_postmeta` VALUES (690,133,'_catalogue_bedsheets_popular_image_7','field_5e575ace085af');
INSERT INTO `wp_postmeta` VALUES (691,133,'catalogue_bedsheets_popular_image_8','');
INSERT INTO `wp_postmeta` VALUES (692,133,'_catalogue_bedsheets_popular_image_8','field_5e575ace085b0');
INSERT INTO `wp_postmeta` VALUES (693,133,'catalogue_bedsheets_popular','');
INSERT INTO `wp_postmeta` VALUES (694,133,'_catalogue_bedsheets_popular','field_5e575acd085a8');
INSERT INTO `wp_postmeta` VALUES (695,133,'catalogue_see_all','');
INSERT INTO `wp_postmeta` VALUES (696,133,'_catalogue_see_all','field_5e575ade085b1');
INSERT INTO `wp_postmeta` VALUES (697,133,'contact_call_header','Call or whatsapp');
INSERT INTO `wp_postmeta` VALUES (698,133,'_contact_call_header','field_5e575b52085b4');
INSERT INTO `wp_postmeta` VALUES (699,133,'contact_phone_1','0722 461012');
INSERT INTO `wp_postmeta` VALUES (700,133,'_contact_phone_1','field_5e575b92d82c4');
INSERT INTO `wp_postmeta` VALUES (701,133,'contact_phone_2','0733 714380');
INSERT INTO `wp_postmeta` VALUES (702,133,'_contact_phone_2','field_5e575ba0d82c5');
INSERT INTO `wp_postmeta` VALUES (703,133,'contact_location_header','Physical location');
INSERT INTO `wp_postmeta` VALUES (704,133,'_contact_location_header','field_5e575be0d82c6');
INSERT INTO `wp_postmeta` VALUES (705,133,'contact_address_line_1','Ground floor, City Mall');
INSERT INTO `wp_postmeta` VALUES (706,133,'_contact_address_line_1','field_5e575bf1d82c7');
INSERT INTO `wp_postmeta` VALUES (707,133,'contact_address_line_2','Nyali, Mombasa');
INSERT INTO `wp_postmeta` VALUES (708,133,'_contact_address_line_2','field_5e575c0dd82c8');
INSERT INTO `wp_postmeta` VALUES (709,133,'contact','');
INSERT INTO `wp_postmeta` VALUES (710,133,'_contact','field_5e575b39085b3');
INSERT INTO `wp_postmeta` VALUES (711,133,'social_links_instagram','');
INSERT INTO `wp_postmeta` VALUES (712,133,'_social_links_instagram','field_5e575ccfd82ca');
INSERT INTO `wp_postmeta` VALUES (713,133,'social_links_twitter','');
INSERT INTO `wp_postmeta` VALUES (714,133,'_social_links_twitter','field_5e575cf1d82cb');
INSERT INTO `wp_postmeta` VALUES (715,133,'social_links_facebook','https://www.facebook.com/Nivannainteriors2015/');
INSERT INTO `wp_postmeta` VALUES (716,133,'_social_links_facebook','field_5e575d04d82cc');
INSERT INTO `wp_postmeta` VALUES (717,133,'social_links','');
INSERT INTO `wp_postmeta` VALUES (718,133,'_social_links','field_5e575cb7d82c9');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2020-02-12 14:42:21','2020-02-12 14:42:21','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2020-02-12 14:42:21','2020-02-12 14:42:21','',0,'http://localhost:10000/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2020-02-12 14:42:21','2020-02-12 14:42:21','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:10000/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2020-02-12 14:42:21','2020-02-12 14:42:21','',0,'http://localhost:10000/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2020-02-12 14:42:21','2020-02-12 14:42:21','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost:10000.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2020-02-12 14:42:21','2020-02-12 14:42:21','',0,'http://localhost:10000/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2020-02-12 18:39:59','2020-02-12 18:39:59','','Home','','publish','closed','closed','','home','','','2020-02-27 06:17:41','2020-02-27 06:17:41','',0,'http://localhost:10000/?page_id=13',0,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2020-02-12 18:39:59','2020-02-12 18:39:59','','Home','','inherit','closed','closed','','13-revision-v1','','','2020-02-12 18:39:59','2020-02-12 18:39:59','',13,'http://localhost:10000/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2020-02-12 19:29:09','2020-02-12 19:29:09','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"page_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"front_page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Homepage','homepage','publish','closed','closed','','group_5e4451820641b','','','2020-02-29 11:03:08','2020-02-29 11:03:08','',0,'http://localhost:10000/?post_type=acf-field-group&#038;p=15',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2020-02-12 19:34:23','2020-02-12 19:34:23','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','Jumbotron','jumbotron','publish','closed','closed','','field_5e44520ce3252','','','2020-02-12 19:34:23','2020-02-12 19:34:23','',15,'http://localhost:10000/?post_type=acf-field&p=17',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2020-02-12 19:34:23','2020-02-12 19:34:23','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Big Title','big_title','publish','closed','closed','','field_5e44522be3253','','','2020-02-12 19:34:23','2020-02-12 19:34:23','',17,'http://localhost:10000/?post_type=acf-field&p=18',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2020-02-12 19:34:23','2020-02-12 19:34:23','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Small TItle','small_title','publish','closed','closed','','field_5e445261e3254','','','2020-02-12 19:34:23','2020-02-12 19:34:23','',17,'http://localhost:10000/?post_type=acf-field&p=19',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2020-02-12 19:34:23','2020-02-12 19:34:23','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Button text','button_text','publish','closed','closed','','field_5e4452cce3255','','','2020-02-12 19:34:23','2020-02-12 19:34:23','',17,'http://localhost:10000/?post_type=acf-field&p=20',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2020-02-12 19:34:23','2020-02-12 19:34:23','a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}','Button link','button_link','publish','closed','closed','','field_5e4452dce3256','','','2020-02-12 19:34:23','2020-02-12 19:34:23','',17,'http://localhost:10000/?post_type=acf-field&p=21',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2020-02-12 19:38:09','2020-02-12 19:38:09','','Home','','inherit','closed','closed','','13-revision-v1','','','2020-02-12 19:38:09','2020-02-12 19:38:09','',13,'http://localhost:10000/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2020-02-12 19:44:42','2020-02-12 19:44:42','','Home','','inherit','closed','closed','','13-revision-v1','','','2020-02-12 19:44:42','2020-02-12 19:44:42','',13,'http://localhost:10000/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2020-02-15 08:06:20','2020-02-15 08:06:20','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','Catalogue','catalogue','publish','closed','closed','','field_5e47a60151d52','','','2020-02-15 08:06:20','2020-02-15 08:06:20','',15,'http://localhost:10000/?post_type=acf-field&p=24',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2020-02-15 08:06:20','2020-02-15 08:06:20','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Catalogue Header','catalogue_header','publish','closed','closed','','field_5e47a61a51d53','','','2020-02-15 08:13:59','2020-02-15 08:13:59','',24,'http://localhost:10000/?post_type=acf-field&#038;p=25',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2020-02-15 08:06:20','2020-02-15 08:06:20','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"70\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','Catalogue Header Text','catalogue_header_text','publish','closed','closed','','field_5e47a66851d55','','','2020-02-17 19:41:30','2020-02-17 19:41:30','',24,'http://localhost:10000/?post_type=acf-field&#038;p=26',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2020-02-15 08:09:58','2020-02-15 08:09:58','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"30\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Highlight Text','highlight_text','publish','closed','closed','','field_5e47a73558744','','','2020-02-15 08:09:58','2020-02-15 08:09:58','',24,'http://localhost:10000/?post_type=acf-field&p=27',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2020-02-15 08:11:03','2020-02-15 08:11:03','','Home','','inherit','closed','closed','','13-revision-v1','','','2020-02-15 08:11:03','2020-02-15 08:11:03','',13,'http://localhost:10000/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2020-02-15 08:12:57','2020-02-15 08:12:57','','Home','','inherit','closed','closed','','13-revision-v1','','','2020-02-15 08:12:57','2020-02-15 08:12:57','',13,'http://localhost:10000/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2020-02-17 19:21:15','2020-02-17 19:21:15','','Home','','inherit','closed','closed','','13-revision-v1','','','2020-02-17 19:21:15','2020-02-17 19:21:15','',13,'http://localhost:10000/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2020-02-17 19:21:31','2020-02-17 19:21:31','','Home','','inherit','closed','closed','','13-revision-v1','','','2020-02-17 19:21:31','2020-02-17 19:21:31','',13,'http://localhost:10000/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2020-02-17 19:21:41','2020-02-17 19:21:41','','Home','','inherit','closed','closed','','13-revision-v1','','','2020-02-17 19:21:41','2020-02-17 19:21:41','',13,'http://localhost:10000/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2020-02-17 19:33:05','2020-02-17 19:33:05','','Home','','inherit','closed','closed','','13-revision-v1','','','2020-02-17 19:33:05','2020-02-17 19:33:05','',13,'http://localhost:10000/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2020-02-17 19:33:38','2020-02-17 19:33:38','','Home','','inherit','closed','closed','','13-revision-v1','','','2020-02-17 19:33:38','2020-02-17 19:33:38','',13,'http://localhost:10000/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2020-02-17 19:34:34','2020-02-17 19:34:34','','Home','','inherit','closed','closed','','13-revision-v1','','','2020-02-17 19:34:34','2020-02-17 19:34:34','',13,'http://localhost:10000/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2020-02-17 19:42:56','2020-02-17 19:42:56','','Home','','inherit','closed','closed','','13-revision-v1','','','2020-02-17 19:42:56','2020-02-17 19:42:56','',13,'http://localhost:10000/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2020-02-17 19:47:57','2020-02-17 19:47:57','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','First Line','cat_first_line','publish','closed','closed','','field_5e4aed9ca5fb9','','','2020-02-17 19:54:53','2020-02-17 19:54:53','',26,'http://localhost:10000/?post_type=acf-field&#038;p=40',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2020-02-17 19:54:53','2020-02-17 19:54:53','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Second Line','cat_second_line','publish','closed','closed','','field_5e4aef75a9f35','','','2020-02-17 19:54:53','2020-02-17 19:54:53','',26,'http://localhost:10000/?post_type=acf-field&p=41',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2020-02-18 05:50:46','2020-02-18 05:50:46','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piÃ±a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:10000/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>[wpgmza id=\"1\"]</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-autosave-v1','','','2020-02-18 05:50:46','2020-02-18 05:50:46','',2,'http://localhost:10000/2-autosave-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2020-02-27 06:02:14','2020-02-27 06:02:14','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','Catalogue Menu','catalogue_menu','publish','closed','closed','','field_5e57590808564','','','2020-02-27 06:02:14','2020-02-27 06:02:14','',24,'http://localhost:10000/?post_type=acf-field&p=44',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2020-02-27 06:02:14','2020-02-27 06:02:14','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','first','first','publish','closed','closed','','field_5e57591d08565','','','2020-02-27 06:02:14','2020-02-27 06:02:14','',44,'http://localhost:10000/?post_type=acf-field&p=45',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2020-02-27 06:02:14','2020-02-27 06:02:14','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','second','second','publish','closed','closed','','field_5e57592d08566','','','2020-02-27 06:02:14','2020-02-27 06:02:14','',44,'http://localhost:10000/?post_type=acf-field&p=46',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2020-02-27 06:02:14','2020-02-27 06:02:14','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','third','third','publish','closed','closed','','field_5e57593408567','','','2020-02-27 06:02:14','2020-02-27 06:02:14','',44,'http://localhost:10000/?post_type=acf-field&p=47',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2020-02-27 06:02:14','2020-02-27 06:02:14','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','fourth','fourth','publish','closed','closed','','field_5e57594008568','','','2020-02-27 06:02:14','2020-02-27 06:02:14','',44,'http://localhost:10000/?post_type=acf-field&p=48',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2020-02-27 06:02:14','2020-02-27 06:02:14','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','Cushion Latest','cushion_latest','publish','closed','closed','','field_5e57598808569','','','2020-02-27 06:02:14','2020-02-27 06:02:14','',24,'http://localhost:10000/?post_type=acf-field&p=49',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2020-02-27 06:02:14','2020-02-27 06:02:14','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 1','image_1','publish','closed','closed','','field_5e5759a20856a','','','2020-02-27 06:02:14','2020-02-27 06:02:14','',49,'http://localhost:10000/?post_type=acf-field&p=50',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2020-02-27 06:02:14','2020-02-27 06:02:14','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 2','image_2','publish','closed','closed','','field_5e5759e90856b','','','2020-02-27 06:02:14','2020-02-27 06:02:14','',49,'http://localhost:10000/?post_type=acf-field&p=51',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2020-02-27 06:02:14','2020-02-27 06:02:14','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 3','image_3','publish','closed','closed','','field_5e5759fa0856c','','','2020-02-27 06:02:14','2020-02-27 06:02:14','',49,'http://localhost:10000/?post_type=acf-field&p=52',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2020-02-27 06:02:14','2020-02-27 06:02:14','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 4','image_4','publish','closed','closed','','field_5e575a0d0856d','','','2020-02-27 06:02:14','2020-02-27 06:02:14','',49,'http://localhost:10000/?post_type=acf-field&p=53',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2020-02-27 06:02:14','2020-02-27 06:02:14','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 5','image_5','publish','closed','closed','','field_5e575a1c0856e','','','2020-02-27 06:02:14','2020-02-27 06:02:14','',49,'http://localhost:10000/?post_type=acf-field&p=54',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2020-02-27 06:02:14','2020-02-27 06:02:14','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 6','image_6','publish','closed','closed','','field_5e575a230856f','','','2020-02-27 06:02:14','2020-02-27 06:02:14','',49,'http://localhost:10000/?post_type=acf-field&p=55',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2020-02-27 06:02:14','2020-02-27 06:02:14','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 7','image_7','publish','closed','closed','','field_5e575a2a08570','','','2020-02-27 06:02:14','2020-02-27 06:02:14','',49,'http://localhost:10000/?post_type=acf-field&p=56',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2020-02-27 06:02:14','2020-02-27 06:02:14','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 8','image_8','publish','closed','closed','','field_5e575a2e08571','','','2020-02-27 06:02:14','2020-02-27 06:02:14','',49,'http://localhost:10000/?post_type=acf-field&p=57',7,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2020-02-27 06:02:14','2020-02-27 06:02:14','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','Cushion Popular','cushion_popular','publish','closed','closed','','field_5e575a8d0858d','','','2020-02-27 06:02:14','2020-02-27 06:02:14','',24,'http://localhost:10000/?post_type=acf-field&p=58',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2020-02-27 06:02:14','2020-02-27 06:02:14','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 1','image_1','publish','closed','closed','','field_5e575a8d0858e','','','2020-02-27 06:02:14','2020-02-27 06:02:14','',58,'http://localhost:10000/?post_type=acf-field&p=59',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2020-02-27 06:02:14','2020-02-27 06:02:14','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 2','image_2','publish','closed','closed','','field_5e575a8d0858f','','','2020-02-27 06:02:14','2020-02-27 06:02:14','',58,'http://localhost:10000/?post_type=acf-field&p=60',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2020-02-27 06:02:14','2020-02-27 06:02:14','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 3','image_3','publish','closed','closed','','field_5e575a8d08590','','','2020-02-27 06:02:14','2020-02-27 06:02:14','',58,'http://localhost:10000/?post_type=acf-field&p=61',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2020-02-27 06:02:14','2020-02-27 06:02:14','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 4','image_4','publish','closed','closed','','field_5e575a8d08591','','','2020-02-27 06:02:14','2020-02-27 06:02:14','',58,'http://localhost:10000/?post_type=acf-field&p=62',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2020-02-27 06:02:14','2020-02-27 06:02:14','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 5','image_5','publish','closed','closed','','field_5e575a8d08592','','','2020-02-27 06:02:14','2020-02-27 06:02:14','',58,'http://localhost:10000/?post_type=acf-field&p=63',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2020-02-27 06:02:14','2020-02-27 06:02:14','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 6','image_6','publish','closed','closed','','field_5e575a8d08593','','','2020-02-27 06:02:14','2020-02-27 06:02:14','',58,'http://localhost:10000/?post_type=acf-field&p=64',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2020-02-27 06:02:14','2020-02-27 06:02:14','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 7','image_7','publish','closed','closed','','field_5e575a8d08594','','','2020-02-27 06:02:14','2020-02-27 06:02:14','',58,'http://localhost:10000/?post_type=acf-field&p=65',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2020-02-27 06:02:14','2020-02-27 06:02:14','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 8','image_8','publish','closed','closed','','field_5e575a8d08595','','','2020-02-27 06:02:14','2020-02-27 06:02:14','',58,'http://localhost:10000/?post_type=acf-field&p=66',7,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2020-02-27 06:02:14','2020-02-27 06:02:14','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','Curtains Latest','curtains_latest','publish','closed','closed','','field_5e575a3b08572','','','2020-02-27 06:02:14','2020-02-27 06:02:14','',24,'http://localhost:10000/?post_type=acf-field&p=67',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2020-02-27 06:02:14','2020-02-27 06:02:14','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 1','image_1','publish','closed','closed','','field_5e575a3b08573','','','2020-02-27 06:02:14','2020-02-27 06:02:14','',67,'http://localhost:10000/?post_type=acf-field&p=68',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2020-02-27 06:02:14','2020-02-27 06:02:14','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 2','image_2','publish','closed','closed','','field_5e575a3b08574','','','2020-02-27 06:02:14','2020-02-27 06:02:14','',67,'http://localhost:10000/?post_type=acf-field&p=69',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2020-02-27 06:02:14','2020-02-27 06:02:14','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 3','image_3','publish','closed','closed','','field_5e575a3b08575','','','2020-02-27 06:02:14','2020-02-27 06:02:14','',67,'http://localhost:10000/?post_type=acf-field&p=70',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2020-02-27 06:02:14','2020-02-27 06:02:14','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 4','image_4','publish','closed','closed','','field_5e575a3b08576','','','2020-02-27 06:02:14','2020-02-27 06:02:14','',67,'http://localhost:10000/?post_type=acf-field&p=71',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2020-02-27 06:02:14','2020-02-27 06:02:14','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 5','image_5','publish','closed','closed','','field_5e575a3b08577','','','2020-02-27 06:02:14','2020-02-27 06:02:14','',67,'http://localhost:10000/?post_type=acf-field&p=72',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2020-02-27 06:02:14','2020-02-27 06:02:14','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 6','image_6','publish','closed','closed','','field_5e575a3b08578','','','2020-02-27 06:02:14','2020-02-27 06:02:14','',67,'http://localhost:10000/?post_type=acf-field&p=73',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2020-02-27 06:02:14','2020-02-27 06:02:14','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 7','image_7','publish','closed','closed','','field_5e575a3b08579','','','2020-02-27 06:02:14','2020-02-27 06:02:14','',67,'http://localhost:10000/?post_type=acf-field&p=74',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2020-02-27 06:02:14','2020-02-27 06:02:14','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 8','image_8','publish','closed','closed','','field_5e575a3b0857a','','','2020-02-27 06:02:14','2020-02-27 06:02:14','',67,'http://localhost:10000/?post_type=acf-field&p=75',7,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2020-02-27 06:02:14','2020-02-27 06:02:14','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','Curtains Popular','curtains_popular','publish','closed','closed','','field_5e575aae08596','','','2020-02-27 06:02:14','2020-02-27 06:02:14','',24,'http://localhost:10000/?post_type=acf-field&p=76',7,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2020-02-27 06:02:14','2020-02-27 06:02:14','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 1','image_1','publish','closed','closed','','field_5e575aae08597','','','2020-02-27 06:02:14','2020-02-27 06:02:14','',76,'http://localhost:10000/?post_type=acf-field&p=77',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2020-02-27 06:02:14','2020-02-27 06:02:14','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 2','image_2','publish','closed','closed','','field_5e575aae08598','','','2020-02-27 06:02:14','2020-02-27 06:02:14','',76,'http://localhost:10000/?post_type=acf-field&p=78',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2020-02-27 06:02:14','2020-02-27 06:02:14','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 3','image_3','publish','closed','closed','','field_5e575aae08599','','','2020-02-27 06:02:14','2020-02-27 06:02:14','',76,'http://localhost:10000/?post_type=acf-field&p=79',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 4','image_4','publish','closed','closed','','field_5e575aae0859a','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',76,'http://localhost:10000/?post_type=acf-field&p=80',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 5','image_5','publish','closed','closed','','field_5e575aae0859b','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',76,'http://localhost:10000/?post_type=acf-field&p=81',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 6','image_6','publish','closed','closed','','field_5e575aae0859c','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',76,'http://localhost:10000/?post_type=acf-field&p=82',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 7','image_7','publish','closed','closed','','field_5e575aae0859d','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',76,'http://localhost:10000/?post_type=acf-field&p=83',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 8','image_8','publish','closed','closed','','field_5e575aae0859e','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',76,'http://localhost:10000/?post_type=acf-field&p=84',7,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','Artwork Latest','artwork_latest','publish','closed','closed','','field_5e575a5d0857b','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',24,'http://localhost:10000/?post_type=acf-field&p=85',8,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 1','image_1','publish','closed','closed','','field_5e575a5d0857c','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',85,'http://localhost:10000/?post_type=acf-field&p=86',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 2','image_2','publish','closed','closed','','field_5e575a5d0857d','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',85,'http://localhost:10000/?post_type=acf-field&p=87',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 3','image_3','publish','closed','closed','','field_5e575a5d0857e','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',85,'http://localhost:10000/?post_type=acf-field&p=88',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 4','image_4','publish','closed','closed','','field_5e575a5d0857f','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',85,'http://localhost:10000/?post_type=acf-field&p=89',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 5','image_5','publish','closed','closed','','field_5e575a5d08580','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',85,'http://localhost:10000/?post_type=acf-field&p=90',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 6','image_6','publish','closed','closed','','field_5e575a5d08581','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',85,'http://localhost:10000/?post_type=acf-field&p=91',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 7','image_7','publish','closed','closed','','field_5e575a5d08582','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',85,'http://localhost:10000/?post_type=acf-field&p=92',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 8','image_8','publish','closed','closed','','field_5e575a5d08583','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',85,'http://localhost:10000/?post_type=acf-field&p=93',7,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','Artwork Popular','artwork_popular','publish','closed','closed','','field_5e575abe0859f','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',24,'http://localhost:10000/?post_type=acf-field&p=94',9,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 1','image_1','publish','closed','closed','','field_5e575abe085a0','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',94,'http://localhost:10000/?post_type=acf-field&p=95',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 2','image_2','publish','closed','closed','','field_5e575abe085a1','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',94,'http://localhost:10000/?post_type=acf-field&p=96',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (97,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 3','image_3','publish','closed','closed','','field_5e575abe085a2','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',94,'http://localhost:10000/?post_type=acf-field&p=97',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 4','image_4','publish','closed','closed','','field_5e575abe085a3','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',94,'http://localhost:10000/?post_type=acf-field&p=98',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 5','image_5','publish','closed','closed','','field_5e575abe085a4','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',94,'http://localhost:10000/?post_type=acf-field&p=99',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (100,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 6','image_6','publish','closed','closed','','field_5e575abe085a5','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',94,'http://localhost:10000/?post_type=acf-field&p=100',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (101,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 7','image_7','publish','closed','closed','','field_5e575abe085a6','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',94,'http://localhost:10000/?post_type=acf-field&p=101',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (102,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 8','image_8','publish','closed','closed','','field_5e575abe085a7','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',94,'http://localhost:10000/?post_type=acf-field&p=102',7,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','Bedsheets Latest','bedsheets_latest','publish','closed','closed','','field_5e575a7208584','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',24,'http://localhost:10000/?post_type=acf-field&p=103',10,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (104,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 1','image_1','publish','closed','closed','','field_5e575a7208585','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',103,'http://localhost:10000/?post_type=acf-field&p=104',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (105,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 2','image_2','publish','closed','closed','','field_5e575a7208586','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',103,'http://localhost:10000/?post_type=acf-field&p=105',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (106,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 3','image_3','publish','closed','closed','','field_5e575a7208587','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',103,'http://localhost:10000/?post_type=acf-field&p=106',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (107,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 4','image_4','publish','closed','closed','','field_5e575a7208588','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',103,'http://localhost:10000/?post_type=acf-field&p=107',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (108,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 5','image_5','publish','closed','closed','','field_5e575a7208589','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',103,'http://localhost:10000/?post_type=acf-field&p=108',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (109,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 6','image_6','publish','closed','closed','','field_5e575a720858a','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',103,'http://localhost:10000/?post_type=acf-field&p=109',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (110,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 7','image_7','publish','closed','closed','','field_5e575a720858b','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',103,'http://localhost:10000/?post_type=acf-field&p=110',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (111,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 8','image_8','publish','closed','closed','','field_5e575a720858c','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',103,'http://localhost:10000/?post_type=acf-field&p=111',7,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (112,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','Bedsheets Popular','bedsheets_popular','publish','closed','closed','','field_5e575acd085a8','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',24,'http://localhost:10000/?post_type=acf-field&p=112',11,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (113,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 1','image_1','publish','closed','closed','','field_5e575acd085a9','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',112,'http://localhost:10000/?post_type=acf-field&p=113',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (114,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 2','image_2','publish','closed','closed','','field_5e575acd085aa','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',112,'http://localhost:10000/?post_type=acf-field&p=114',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (115,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 3','image_3','publish','closed','closed','','field_5e575acd085ab','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',112,'http://localhost:10000/?post_type=acf-field&p=115',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (116,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 4','image_4','publish','closed','closed','','field_5e575acd085ac','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',112,'http://localhost:10000/?post_type=acf-field&p=116',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (117,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 5','image_5','publish','closed','closed','','field_5e575acd085ad','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',112,'http://localhost:10000/?post_type=acf-field&p=117',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (118,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 6','image_6','publish','closed','closed','','field_5e575ace085ae','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',112,'http://localhost:10000/?post_type=acf-field&p=118',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (119,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 7','image_7','publish','closed','closed','','field_5e575ace085af','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',112,'http://localhost:10000/?post_type=acf-field&p=119',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (120,1,'2020-02-27 06:02:15','2020-02-27 06:02:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','image 8','image_8','publish','closed','closed','','field_5e575ace085b0','','','2020-02-27 06:02:15','2020-02-27 06:02:15','',112,'http://localhost:10000/?post_type=acf-field&p=120',7,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (121,1,'2020-02-27 06:02:16','2020-02-27 06:02:16','a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";}','See all','see_all','publish','closed','closed','','field_5e575ade085b1','','','2020-02-27 06:02:16','2020-02-27 06:02:16','',24,'http://localhost:10000/?post_type=acf-field&p=121',12,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (122,1,'2020-02-27 06:02:16','2020-02-27 06:02:16','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','Contact','contact','publish','closed','closed','','field_5e575b39085b3','','','2020-02-27 06:02:16','2020-02-27 06:02:16','',15,'http://localhost:10000/?post_type=acf-field&p=122',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (123,1,'2020-02-27 06:02:16','2020-02-27 06:02:16','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:16:\"Call or whatsapp\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Call header','call_header','publish','closed','closed','','field_5e575b52085b4','','','2020-02-27 06:09:41','2020-02-27 06:09:41','',122,'http://localhost:10000/?post_type=acf-field&#038;p=123',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (124,1,'2020-02-27 06:09:41','2020-02-27 06:09:41','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Phone 1','phone_1','publish','closed','closed','','field_5e575b92d82c4','','','2020-02-27 06:09:41','2020-02-27 06:09:41','',122,'http://localhost:10000/?post_type=acf-field&p=124',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (125,1,'2020-02-27 06:09:41','2020-02-27 06:09:41','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Phone 2','phone_2','publish','closed','closed','','field_5e575ba0d82c5','','','2020-02-27 06:09:41','2020-02-27 06:09:41','',122,'http://localhost:10000/?post_type=acf-field&p=125',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (126,1,'2020-02-27 06:09:41','2020-02-27 06:09:41','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Location header','location_header','publish','closed','closed','','field_5e575be0d82c6','','','2020-02-27 06:09:41','2020-02-27 06:09:41','',122,'http://localhost:10000/?post_type=acf-field&p=126',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (127,1,'2020-02-27 06:09:41','2020-02-27 06:09:41','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Address Line 1','address_line_1','publish','closed','closed','','field_5e575bf1d82c7','','','2020-02-27 06:09:41','2020-02-27 06:09:41','',122,'http://localhost:10000/?post_type=acf-field&p=127',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (128,1,'2020-02-27 06:09:42','2020-02-27 06:09:42','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Address Line 2','address_line_2','publish','closed','closed','','field_5e575c0dd82c8','','','2020-02-27 06:09:42','2020-02-27 06:09:42','',122,'http://localhost:10000/?post_type=acf-field&p=128',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (129,1,'2020-02-27 06:09:42','2020-02-27 06:09:42','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','Social Links','social_links','publish','closed','closed','','field_5e575cb7d82c9','','','2020-02-27 06:09:42','2020-02-27 06:09:42','',15,'http://localhost:10000/?post_type=acf-field&p=129',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (130,1,'2020-02-27 06:09:42','2020-02-27 06:09:42','a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:19:\"Instagram page link\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}','Instagram','instagram','publish','closed','closed','','field_5e575ccfd82ca','','','2020-02-27 06:09:42','2020-02-27 06:09:42','',129,'http://localhost:10000/?post_type=acf-field&p=130',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (131,1,'2020-02-27 06:09:42','2020-02-27 06:09:42','a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:17:\"Twitter page link\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}','Twitter','twitter','publish','closed','closed','','field_5e575cf1d82cb','','','2020-02-27 06:09:42','2020-02-27 06:09:42','',129,'http://localhost:10000/?post_type=acf-field&p=131',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (132,1,'2020-02-27 06:09:42','2020-02-27 06:09:42','a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:18:\"Facebook page link\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}','Facebook','facebook','publish','closed','closed','','field_5e575d04d82cc','','','2020-02-27 06:09:42','2020-02-27 06:09:42','',129,'http://localhost:10000/?post_type=acf-field&p=132',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (133,1,'2020-02-27 06:17:41','2020-02-27 06:17:41','','Home','','inherit','closed','closed','','13-revision-v1','','','2020-02-27 06:17:41','2020-02-27 06:17:41','',13,'http://localhost:10000/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (134,1,'2020-02-29 10:51:11','2020-02-29 10:51:11','a:7:{s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}','Contact Header','contact_header','publish','closed','closed','','field_5e5a41fdd8cf3','','','2020-02-29 10:51:11','2020-02-29 10:51:11','',122,'http://localhost:10000/?post_type=acf-field&p=134',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (135,1,'2020-02-29 10:51:11','2020-02-29 10:51:11','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Header','header','publish','closed','closed','','field_5e5a420ed8cf4','','','2020-02-29 10:51:11','2020-02-29 10:51:11','',134,'http://localhost:10000/?post_type=acf-field&p=135',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (136,1,'2020-02-29 10:51:11','2020-02-29 10:51:11','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','First line','','publish','closed','closed','','field_5e5a4216d8cf5','','','2020-02-29 10:51:11','2020-02-29 10:51:11','',134,'http://localhost:10000/?post_type=acf-field&p=136',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (137,1,'2020-02-29 11:03:08','2020-02-29 11:03:08','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Second Line Highlight','','publish','closed','closed','','field_5e5a44e39cff5','','','2020-02-29 11:03:08','2020-02-29 11:03:08','',26,'http://localhost:10000/?post_type=acf-field&p=137',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (138,1,'2020-02-29 11:03:08','2020-02-29 11:03:08','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','First Line highlight','first_line_highlight','publish','closed','closed','','field_5e5a42369cff2','','','2020-02-29 11:03:08','2020-02-29 11:03:08','',134,'http://localhost:10000/?post_type=acf-field&p=138',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (139,1,'2020-02-29 11:03:08','2020-02-29 11:03:08','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Second Line','second_line','publish','closed','closed','','field_5e5a42479cff3','','','2020-02-29 11:03:08','2020-02-29 11:03:08','',134,'http://localhost:10000/?post_type=acf-field&p=139',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (140,1,'2020-02-29 11:03:08','2020-02-29 11:03:08','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Second Line Highlight','second_line_highlight','publish','closed','closed','','field_5e5a42519cff4','','','2020-02-29 11:03:08','2020-02-29 11:03:08','',134,'http://localhost:10000/?post_type=acf-field&p=140',4,'acf-field','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"e44add5f40e745dac1a8fd14e35ec0c9abb24de3f2828c885469995743efccd2\";a:4:{s:10:\"expiration\";i:1583771333;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36\";s:5:\"login\";i:1582561733;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','43');
INSERT INTO `wp_usermeta` VALUES (18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_user-settings','mfold=o&libraryContent=upload&unfold=1');
INSERT INTO `wp_usermeta` VALUES (20,1,'wp_user-settings-time','1582973401');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$BZu1Cuk9Ao5qeBTX7fUGcfCPMAfUqe.','admin','dev-email@flywheel.local','','2020-02-12 14:42:20','',0,'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza`
--

DROP TABLE IF EXISTS `wp_wpgmza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpgmza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `address` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pic` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link` varchar(2083) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `icon` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lat` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lng` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `anim` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `infoopen` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `category` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `approved` tinyint(1) DEFAULT '1',
  `retina` tinyint(1) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `did` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sticky` tinyint(1) DEFAULT '0',
  `other_data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `latlng` point DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza`
--

LOCK TABLES `wp_wpgmza` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza` DISABLE KEYS */;
INSERT INTO `wp_wpgmza` VALUES (2,1,'Shoprite Nyali City Mall Erf 14407 And 16608 Mainland North Kenya','','','','','-4.020250','39.720570','2','','0','',1,0,0,'',0,'',_binary '\0\0\0\0\0\0\0\Ûù~j¼ÀG=D£;\ÜC@');
/*!40000 ALTER TABLE `wp_wpgmza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza_circles`
--

DROP TABLE IF EXISTS `wp_wpgmza_circles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpgmza_circles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci,
  `center` point DEFAULT NULL,
  `radius` float DEFAULT NULL,
  `color` varchar(16) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `opacity` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza_circles`
--

LOCK TABLES `wp_wpgmza_circles` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza_circles` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpgmza_circles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza_maps`
--

DROP TABLE IF EXISTS `wp_wpgmza_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpgmza_maps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_title` varchar(256) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_width` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_height` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_start_lat` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_start_lng` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_start_location` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_start_zoom` int(10) NOT NULL,
  `default_marker` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` int(10) NOT NULL,
  `alignment` int(10) NOT NULL,
  `directions_enabled` int(10) NOT NULL,
  `styling_enabled` int(10) NOT NULL,
  `styling_json` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `active` int(1) NOT NULL,
  `kml` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bicycle` int(10) NOT NULL,
  `traffic` int(10) NOT NULL,
  `dbox` int(10) NOT NULL,
  `dbox_width` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `listmarkers` int(10) NOT NULL,
  `listmarkers_advanced` int(10) NOT NULL,
  `filterbycat` tinyint(1) NOT NULL,
  `ugm_enabled` int(10) NOT NULL,
  `ugm_category_enabled` tinyint(1) NOT NULL,
  `fusion` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_width_type` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_height_type` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `mass_marker_support` int(10) NOT NULL,
  `ugm_access` int(10) NOT NULL,
  `order_markers_by` int(10) NOT NULL,
  `order_markers_choice` int(10) NOT NULL,
  `show_user_location` int(3) NOT NULL,
  `default_to` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `other_settings` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza_maps`
--

LOCK TABLES `wp_wpgmza_maps` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza_maps` DISABLE KEYS */;
INSERT INTO `wp_wpgmza_maps` VALUES (1,'My first map','100','100','-4.020250','39.720570','-4.02025,39.72056999999995',18,'0',1,2,1,0,'',0,'',2,2,1,'100',0,0,0,0,0,'','\\%','\\%',1,0,1,2,0,'','a:15:{s:21:\"store_locator_enabled\";i:2;s:22:\"store_locator_distance\";i:2;s:28:\"store_locator_default_radius\";i:10;s:31:\"store_locator_not_found_message\";s:52:\"No results found in this location. Please try again.\";s:20:\"store_locator_bounce\";i:1;s:26:\"store_locator_query_string\";s:14:\"ZIP / Address:\";s:29:\"store_locator_default_address\";s:0:\"\";s:29:\"wpgmza_store_locator_restrict\";s:0:\"\";s:19:\"store_locator_style\";s:6:\"modern\";s:33:\"wpgmza_store_locator_radius_style\";s:6:\"modern\";s:12:\"map_max_zoom\";s:1:\"1\";s:15:\"transport_layer\";i:2;s:17:\"wpgmza_theme_data\";s:0:\"\";s:30:\"wpgmza_show_points_of_interest\";i:1;s:17:\"wpgmza_auto_night\";i:0;}');
/*!40000 ALTER TABLE `wp_wpgmza_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza_polygon`
--

DROP TABLE IF EXISTS `wp_wpgmza_polygon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpgmza_polygon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `polydata` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `innerpolydata` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `linecolor` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lineopacity` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fillcolor` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `opacity` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ohfillcolor` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ohlinecolor` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ohopacity` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `polyname` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza_polygon`
--

LOCK TABLES `wp_wpgmza_polygon` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza_polygon` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpgmza_polygon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza_polylines`
--

DROP TABLE IF EXISTS `wp_wpgmza_polylines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpgmza_polylines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `polydata` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `linecolor` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `linethickness` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `opacity` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `polyname` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza_polylines`
--

LOCK TABLES `wp_wpgmza_polylines` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza_polylines` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpgmza_polylines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza_rectangles`
--

DROP TABLE IF EXISTS `wp_wpgmza_rectangles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpgmza_rectangles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci,
  `cornerA` point DEFAULT NULL,
  `cornerB` point DEFAULT NULL,
  `color` varchar(16) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `opacity` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza_rectangles`
--

LOCK TABLES `wp_wpgmza_rectangles` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza_rectangles` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpgmza_rectangles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-18 22:44:24
