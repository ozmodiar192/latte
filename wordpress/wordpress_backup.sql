-- MySQL dump 10.11
--
-- Host: localhost    Database: wordpress
-- ------------------------------------------------------
-- Server version	5.0.96-0ubuntu3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL auto_increment,
  `comment_id` bigint(20) unsigned NOT NULL default '0',
  `meta_key` varchar(255) default NULL,
  `meta_value` longtext,
  PRIMARY KEY  (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL auto_increment,
  `comment_post_ID` bigint(20) unsigned NOT NULL default '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL default '',
  `comment_author_url` varchar(200) NOT NULL default '',
  `comment_author_IP` varchar(100) NOT NULL default '',
  `comment_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL default '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL default '0',
  `comment_approved` varchar(20) NOT NULL default '1',
  `comment_agent` varchar(255) NOT NULL default '',
  `comment_type` varchar(20) NOT NULL default '',
  `comment_parent` bigint(20) unsigned NOT NULL default '0',
  `user_id` bigint(20) unsigned NOT NULL default '0',
  PRIMARY KEY  (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL auto_increment,
  `link_url` varchar(255) NOT NULL default '',
  `link_name` varchar(255) NOT NULL default '',
  `link_image` varchar(255) NOT NULL default '',
  `link_target` varchar(25) NOT NULL default '',
  `link_category` bigint(20) NOT NULL default '0',
  `link_description` varchar(255) NOT NULL default '',
  `link_visible` varchar(20) NOT NULL default 'Y',
  `link_owner` bigint(20) unsigned NOT NULL default '1',
  `link_rating` int(11) NOT NULL default '0',
  `link_updated` datetime NOT NULL default '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL default '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`link_id`),
  KEY `link_category` (`link_category`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL auto_increment,
  `option_name` varchar(64) NOT NULL default '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL default 'yes',
  PRIMARY KEY  (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=278 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://www.lattedonatte.com','yes'),(2,'blogname','Latte Donatte','yes'),(3,'blogdescription','','yes'),(4,'users_can_register','','yes'),(5,'admin_email','mattdherrick@gmail.com','yes'),(6,'start_of_week','1','yes'),(7,'use_balanceTags','','yes'),(8,'use_smilies','1','yes'),(9,'require_name_email','','yes'),(10,'comments_notify','','yes'),(11,'posts_per_rss','110','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','3','yes'),(19,'default_comment_status','closed','yes'),(20,'default_ping_status','closed','yes'),(21,'default_pingback_flag','','yes'),(22,'default_post_edit_rows','10','yes'),(23,'posts_per_page','1','yes'),(25,'date_format','F j, Y','yes'),(26,'time_format','g:i a','yes'),(27,'links_updated_date_format','F j, Y g:i a','yes'),(28,'links_recently_updated_prepend','<em>','yes'),(29,'links_recently_updated_append','</em>','yes'),(30,'links_recently_updated_time','120','yes'),(31,'comment_moderation','','yes'),(32,'moderation_notify','','yes'),(33,'permalink_structure','','yes'),(34,'gzipcompression','1','yes'),(35,'hack_file','0','yes'),(36,'blog_charset','UTF-8','yes'),(37,'moderation_keys','','no'),(38,'active_plugins','a:0:{}','yes'),(39,'home','http://www.lattedonatte.com','yes'),(40,'category_base','','yes'),(41,'ping_sites','http://rpc.pingomatic.com/','yes'),(42,'advanced_edit','0','yes'),(43,'comment_max_links','2','yes'),(44,'gmt_offset','-4','yes'),(45,'default_email_category','1','yes'),(46,'recently_edited','a:5:{i:0;s:65:\"/usr/share/wordpress/wp-content/themes/d5-business-line/style.css\";i:1;s:33:\"wp-content/themes/latte/style.css\";i:2;s:35:\"wp-content/themes/latte/sidebar.php\";i:3;s:32:\"wp-content/themes/latte/page.php\";i:4;s:38:\"wp-content/themes/latte/searchform.php\";}','no'),(48,'template','d5-business-line','yes'),(49,'stylesheet','d5-business-line','yes'),(50,'comment_whitelist','','yes'),(52,'blacklist_keys','','no'),(53,'comment_registration','','yes'),(55,'html_type','text/html','yes'),(56,'use_trackback','0','yes'),(57,'default_role','subscriber','yes'),(58,'db_version','21707','yes'),(59,'uploads_use_yearmonth_folders','1','yes'),(60,'upload_path','wp-content/uploads','yes'),(62,'blog_public','1','yes'),(63,'default_link_category','2','yes'),(64,'show_on_front','posts','yes'),(65,'tag_base','','yes'),(66,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:9:\"add_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(68,'widget_categories','a:4:{s:6:\"number\";i:1;i:1;b:0;i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(76,'sidebars_widgets','a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:2:{i:0;s:8:\"search-2\";i:1;s:7:\"pages-2\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-2\";}s:9:\"sidebar-3\";a:0:{}s:9:\"sidebar-4\";a:0:{}s:9:\"sidebar-5\";a:0:{}s:9:\"sidebar-6\";a:0:{}s:13:\"array_version\";i:3;}','yes'),(82,'cron','a:7:{i:1349882927;a:1:{s:8:\"do_pings\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1349882951;a:1:{s:8:\"do_pings\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1349883411;a:1:{s:8:\"do_pings\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1350573133;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1350573167;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1350582094;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes'),(89,'_transient_doing_cron','1357501479.8295390605926513671875','yes'),(87,'page_on_front','0','yes'),(88,'page_for_posts','0','yes'),(86,'category_children','a:0:{}','yes'),(90,'show_avatars','1','yes'),(91,'avatar_rating','G','yes'),(92,'upload_url_path','','yes'),(93,'thumbnail_size_w','150','yes'),(94,'thumbnail_size_h','150','yes'),(95,'thumbnail_crop','1','yes'),(96,'medium_size_w','300','yes'),(97,'medium_size_h','300','yes'),(98,'avatar_default','mystery','yes'),(99,'enable_app','1','yes'),(100,'enable_xmlrpc','1','yes'),(101,'large_size_w','1024','yes'),(102,'large_size_h','1024','yes'),(103,'image_default_link_type','file','yes'),(104,'image_default_size','','yes'),(105,'image_default_align','','yes'),(106,'close_comments_for_old_posts','0','yes'),(107,'close_comments_days_old','14','yes'),(108,'thread_comments','1','yes'),(109,'thread_comments_depth','5','yes'),(110,'page_comments','0','yes'),(111,'comments_per_page','50','yes'),(112,'default_comments_page','newest','yes'),(113,'comment_order','asc','yes'),(114,'sticky_posts','a:0:{}','yes'),(115,'widget_text','a:2:{i:2;a:3:{s:5:\"title\";s:13:\"Latte Donatte\";s:4:\"text\";s:90:\"Find us at 501 East Main Street  Watertown, WI 53094\r\nor give us a call at (920) 206-7080!\";s:6:\"filter\";b:0;}s:12:\"_multiwidget\";i:1;}','yes'),(116,'widget_rss','a:0:{}','yes'),(117,'uninstall_plugins','a:0:{}','no'),(118,'timezone_string','','yes'),(119,'embed_autourls','1','yes'),(120,'embed_size_w','','yes'),(121,'embed_size_h','600','yes'),(122,'default_post_format','0','yes'),(123,'initial_db_version','6124','yes'),(124,'db_upgraded','','yes'),(125,'_transient_random_seed','d8cd69c5e1793a967f344b97b40644bd','yes'),(126,'auth_key','29[Z4h6$F,X]@,N,eHUByLc4I4fhK&P8XjIK:_Pv>x_g_fLHtsL,k;*{,$CJeA[!','yes'),(127,'auth_salt','>b{Q=@@(>A:u[<ARh*l40?f7ampQ&_IDI;1M@@Fae]ikgKKBzA<+tUP#z>lMw#yD','yes'),(128,'logged_in_key','>ca;/~?- `R 8&R p&k8zDHd11;flD8CJ)FC66+LNW:d2~2<pJc3<7}6lCArgTwT','yes'),(129,'logged_in_salt','6Uh!<;`fut6 54Ju&sHOYLbc|Cuf)CCqZ@V{f)<1Ln[;b8Sdqa!GS).<yD;U~3zf','yes'),(130,'_site_transient_update_core','O:8:\"stdClass\":3:{s:7:\"updates\";a:0:{}s:15:\"version_checked\";s:5:\"3.4.2\";s:12:\"last_checked\";i:1357498962;}','yes'),(131,'_site_transient_update_plugins','O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1357499373;}','yes'),(260,'_site_transient_timeout_theme_roots','1357500802','yes'),(261,'_site_transient_theme_roots','a:3:{s:16:\"d5-business-line\";s:7:\"/themes\";s:12:\"twentyeleven\";s:7:\"/themes\";s:9:\"twentyten\";s:7:\"/themes\";}','yes'),(134,'_site_transient_update_themes','O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1357499002;}','yes'),(135,'dashboard_widget_options','a:4:{s:25:\"dashboard_recent_comments\";a:1:{s:5:\"items\";i:5;}s:24:\"dashboard_incoming_links\";a:5:{s:4:\"home\";s:27:\"http://www.lattedonatte.com\";s:4:\"link\";s:103:\"http://blogsearch.google.com/blogsearch?scoring=d&partner=wordpress&q=link:http://www.lattedonatte.com/\";s:3:\"url\";s:136:\"http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://www.lattedonatte.com/\";s:5:\"items\";i:10;s:9:\"show_date\";b:0;}s:17:\"dashboard_primary\";a:7:{s:4:\"link\";s:26:\"http://wordpress.org/news/\";s:3:\"url\";s:31:\"http://wordpress.org/news/feed/\";s:5:\"title\";s:14:\"WordPress Blog\";s:5:\"items\";i:2;s:12:\"show_summary\";i:1;s:11:\"show_author\";i:0;s:9:\"show_date\";i:1;}s:19:\"dashboard_secondary\";a:7:{s:4:\"link\";s:28:\"http://planet.wordpress.org/\";s:3:\"url\";s:33:\"http://planet.wordpress.org/feed/\";s:5:\"title\";s:20:\"Other WordPress News\";s:5:\"items\";i:5;s:12:\"show_summary\";i:0;s:11:\"show_author\";i:0;s:9:\"show_date\";i:0;}}','yes'),(136,'nonce_key','bch4`ZOT~/(E)rKw^+.*{~g}R6xPT-(Xe|S|IpXf&_U4be@3#POq(x 9)R-Ok+@q','yes'),(137,'nonce_salt','/30.<<u [mS7<P+5c+B5YPL&Ksm24?t-MCQ>NeEL7&{h,U%!;8QqmJZrR.A!fPU^','yes'),(138,'can_compress_scripts','1','yes'),(268,'_transient_timeout_dash_de3249c4736ad3bd2cd29147c4a0d43e','1357542267','no'),(269,'_transient_dash_de3249c4736ad3bd2cd29147c4a0d43e','','no'),(262,'_transient_timeout_dash_20494a3d90a6669585674ed0eb8dcd8f','1357542246','no'),(263,'_transient_dash_20494a3d90a6669585674ed0eb8dcd8f','<p><strong>RSS Error</strong>: WP HTTP Error: Could not open handle for fopen() to http://blogsearch.google.com/blogsearch_feeds?scoring=d&ie=utf-8&num=10&output=rss&partner=wordpress&q=link:http://www.lattedonatte.com/</p>','no'),(264,'_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51','1357542246','no'),(265,'_transient_dash_4077549d03da2e451c8b5f002294ff51','<div class=\"rss-widget\"><p><strong>RSS Error</strong>: WP HTTP Error: Could not open handle for fopen() to http://wordpress.org/news/feed/</p></div>','no'),(221,'_transient_timeout_plugin_slugs','1357585793','no'),(222,'_transient_plugin_slugs','a:2:{i:0;s:19:\"akismet/akismet.php\";i:1;s:9:\"hello.php\";}','no'),(266,'_transient_timeout_dash_aa95765b5cc111c56d5993d476b1c2f0','1357542247','no'),(149,'theme_mods_default','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1350573317;s:4:\"data\";a:0:{}}}','yes'),(150,'current_theme','D5 Business Line','yes'),(151,'theme_mods_twentyeleven','a:2:{i:0;b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1350573392;s:4:\"data\";a:0:{}}}','yes'),(152,'theme_switched','','yes'),(225,'_site_transient_timeout_wporg_theme_feature_list','1357457058','yes'),(226,'_site_transient_wporg_theme_feature_list','a:0:{}','yes'),(155,'theme_mods_d5-business-line','a:8:{i:0;b:0;s:16:\"background_color\";s:6:\"BAA378\";s:16:\"background_image\";s:0:\"\";s:17:\"background_repeat\";s:6:\"repeat\";s:21:\"background_position_x\";s:4:\"left\";s:21:\"background_attachment\";s:5:\"fixed\";s:12:\"header_image\";s:73:\"http://www.lattedonatte.com/wp-content/uploads/2012/10/cropped-banner.png\";s:17:\"header_image_data\";O:8:\"stdClass\":5:{s:13:\"attachment_id\";i:19;s:3:\"url\";s:73:\"http://www.lattedonatte.com/wp-content/uploads/2012/10/cropped-banner.png\";s:13:\"thumbnail_url\";s:73:\"http://www.lattedonatte.com/wp-content/uploads/2012/10/cropped-banner.png\";s:6:\"height\";i:90;s:5:\"width\";i:300;}}','yes'),(156,'optionsframework','a:2:{s:2:\"id\";s:14:\"d5businessline\";s:12:\"knownoptions\";a:1:{i:0;s:14:\"d5businessline\";}}','yes'),(157,'d5businessline','a:25:{s:12:\"banner-image\";s:70:\"http://www.lattedonatte.com/wp-content/uploads/2012/10/new_ldcover.jpg\";s:12:\"heading_text\";s:73:\"Latte Donatte - 501 East Main Street Watertown, WI 53094 - (920) 206-7080\";s:15:\"featured-image1\";s:71:\"http://www.lattedonatte.com/wp-content/uploads/2012/10/sm_coffeecup.jpg\";s:15:\"featured-title1\";s:9:\"Visit us!\";s:21:\"featured-description1\";s:49:\"Enjoy our relaxing atmosphere and friendly staff.\";s:14:\"featured-link1\";s:39:\"http://www.lattedonatte.com/?page_id=53\";s:15:\"featured-image2\";s:67:\"http://www.lattedonatte.com/wp-content/uploads/2012/10/sm_cup23.jpg\";s:15:\"featured-title2\";s:8:\"Specials\";s:21:\"featured-description2\";s:38:\"Great seasonal drinks, all year round.\";s:14:\"featured-link2\";s:39:\"http://www.lattedonatte.com/?page_id=58\";s:15:\"featured-image3\";s:69:\"http://www.lattedonatte.com/wp-content/uploads/2012/10/cupofbeans.jpg\";s:15:\"featured-title3\";s:8:\"Our Menu\";s:21:\"featured-description3\";s:72:\"Try a delicious coffee beverage, smoothie, or something from our bakery.\";s:14:\"featured-link3\";s:39:\"http://www.lattedonatte.com/?page_id=56\";s:15:\"featured-image4\";s:76:\"http://www.lattedonatte.com/wp-content/uploads/2012/10/scoop_coffeebeans.jpg\";s:15:\"featured-title4\";s:4:\"News\";s:21:\"featured-description4\";s:38:\"The latest happenings at Latte Donatte\";s:14:\"featured-link4\";s:39:\"http://www.lattedonatte.com/?page_id=60\";s:16:\"bottom-quotation\";s:189:\"A leaf fluttered in through the window this morning, as if supported by the rays of the sun, a bird settled on the fire escape, joy in the task of coffee, joy accompanied me as I walked. \r\n\";s:5:\"lpost\";b:0;s:13:\"facebook-link\";s:56:\"https://www.facebook.com/pages/Latte-Donatte/48874062337\";s:12:\"twitter-link\";s:0:\"\";s:12:\"youtube-link\";s:0:\"\";s:7:\"li-link\";s:0:\"\";s:9:\"blog-link\";s:0:\"\";}','yes'),(229,'recently_activated','a:0:{}','yes'),(267,'_transient_dash_aa95765b5cc111c56d5993d476b1c2f0','<div class=\"rss-widget\"><p><strong>RSS Error</strong>: WP HTTP Error: Could not open handle for fopen() to http://planet.wordpress.org/feed/</p></div>','no'),(168,'widget_pages','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:6:\"sortby\";s:10:\"post_title\";s:7:\"exclude\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(169,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:6:\"Search\";}s:12:\"_multiwidget\";i:1;}','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL auto_increment,
  `post_id` bigint(20) unsigned NOT NULL default '0',
  `meta_key` varchar(255) default NULL,
  `meta_value` longtext,
  PRIMARY KEY  (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,3,'_encloseme','1'),(2,4,'_encloseme','1'),(3,5,'_encloseme','1'),(4,12,'_wp_attached_file','2012/10/1063812400.jpg'),(5,12,'_wp_attachment_metadata','a:6:{s:5:\"width\";s:3:\"900\";s:6:\"height\";s:3:\"300\";s:14:\"hwstring_small\";s:23:\"height=\'42\' width=\'128\'\";s:4:\"file\";s:22:\"2012/10/1063812400.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:3:{s:4:\"file\";s:22:\"1063812400-150x150.jpg\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";}s:6:\"medium\";a:3:{s:4:\"file\";s:22:\"1063812400-300x100.jpg\";s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"100\";}s:14:\"post-thumbnail\";a:3:{s:4:\"file\";s:22:\"1063812400-150x150.jpg\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";}s:14:\"category-thumb\";a:3:{s:4:\"file\";s:22:\"1063812400-300x100.jpg\";s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"100\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";}}'),(6,13,'_wp_attached_file','2012/10/latte_donatte_sign.jpg'),(7,13,'_wp_attachment_metadata','a:6:{s:5:\"width\";s:3:\"720\";s:6:\"height\";s:3:\"431\";s:14:\"hwstring_small\";s:23:\"height=\'76\' width=\'128\'\";s:4:\"file\";s:30:\"2012/10/latte_donatte_sign.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:3:{s:4:\"file\";s:30:\"latte_donatte_sign-150x150.jpg\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";}s:6:\"medium\";a:3:{s:4:\"file\";s:30:\"latte_donatte_sign-300x179.jpg\";s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"179\";}s:14:\"post-thumbnail\";a:3:{s:4:\"file\";s:30:\"latte_donatte_sign-150x150.jpg\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";}s:14:\"category-thumb\";a:3:{s:4:\"file\";s:30:\"latte_donatte_sign-300x179.jpg\";s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"179\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";}}'),(8,14,'_wp_attached_file','2012/10/lattedonatte_cover.jpg'),(9,14,'_wp_attachment_metadata','a:6:{s:5:\"width\";s:4:\"2048\";s:6:\"height\";s:4:\"1225\";s:14:\"hwstring_small\";s:23:\"height=\'76\' width=\'128\'\";s:4:\"file\";s:30:\"2012/10/lattedonatte_cover.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:3:{s:4:\"file\";s:30:\"lattedonatte_cover-150x150.jpg\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";}s:6:\"medium\";a:3:{s:4:\"file\";s:30:\"lattedonatte_cover-300x179.jpg\";s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"179\";}s:5:\"large\";a:3:{s:4:\"file\";s:31:\"lattedonatte_cover-1024x612.jpg\";s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:3:\"612\";}s:14:\"post-thumbnail\";a:3:{s:4:\"file\";s:30:\"lattedonatte_cover-150x150.jpg\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";}s:14:\"category-thumb\";a:3:{s:4:\"file\";s:30:\"lattedonatte_cover-300x179.jpg\";s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"179\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";}}'),(10,15,'_wp_attached_file','2012/10/lattedonatte_cover_sm.jpg'),(11,15,'_wp_attachment_metadata','a:6:{s:5:\"width\";s:3:\"740\";s:6:\"height\";s:3:\"394\";s:14:\"hwstring_small\";s:23:\"height=\'68\' width=\'128\'\";s:4:\"file\";s:33:\"2012/10/lattedonatte_cover_sm.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:3:{s:4:\"file\";s:33:\"lattedonatte_cover_sm-150x150.jpg\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";}s:6:\"medium\";a:3:{s:4:\"file\";s:33:\"lattedonatte_cover_sm-300x159.jpg\";s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"159\";}s:14:\"post-thumbnail\";a:3:{s:4:\"file\";s:33:\"lattedonatte_cover_sm-150x150.jpg\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";}s:14:\"category-thumb\";a:3:{s:4:\"file\";s:33:\"lattedonatte_cover_sm-300x159.jpg\";s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"159\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";}}'),(12,16,'_wp_attached_file','2012/10/ldfooter.jpg'),(13,16,'_wp_attachment_metadata','a:6:{s:5:\"width\";s:3:\"738\";s:6:\"height\";s:2:\"63\";s:14:\"hwstring_small\";s:23:\"height=\'10\' width=\'128\'\";s:4:\"file\";s:20:\"2012/10/ldfooter.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:3:{s:4:\"file\";s:19:\"ldfooter-150x63.jpg\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:2:\"63\";}s:6:\"medium\";a:3:{s:4:\"file\";s:19:\"ldfooter-300x25.jpg\";s:5:\"width\";s:3:\"300\";s:6:\"height\";s:2:\"25\";}s:14:\"post-thumbnail\";a:3:{s:4:\"file\";s:19:\"ldfooter-150x63.jpg\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:2:\"63\";}s:14:\"category-thumb\";a:3:{s:4:\"file\";s:19:\"ldfooter-300x25.jpg\";s:5:\"width\";s:3:\"300\";s:6:\"height\";s:2:\"25\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";}}'),(14,17,'_wp_attached_file','2012/10/cropped-1063812400.jpg'),(15,17,'_wp_attachment_context','custom-header'),(16,17,'_wp_attachment_metadata','a:6:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:2:\"90\";s:14:\"hwstring_small\";s:23:\"height=\'38\' width=\'128\'\";s:4:\"file\";s:30:\"2012/10/cropped-1063812400.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:3:{s:4:\"file\";s:29:\"cropped-1063812400-150x90.jpg\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:2:\"90\";}s:14:\"post-thumbnail\";a:3:{s:4:\"file\";s:29:\"cropped-1063812400-150x90.jpg\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:2:\"90\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";}}'),(17,17,'_wp_attachment_is_custom_header','d5-business-line'),(18,18,'_wp_attached_file','2012/10/banner.png'),(19,18,'_wp_attachment_metadata','a:6:{s:5:\"width\";s:3:\"900\";s:6:\"height\";s:3:\"300\";s:14:\"hwstring_small\";s:23:\"height=\'42\' width=\'128\'\";s:4:\"file\";s:18:\"2012/10/banner.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:3:{s:4:\"file\";s:18:\"banner-150x150.png\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";}s:6:\"medium\";a:3:{s:4:\"file\";s:18:\"banner-300x100.png\";s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"100\";}s:14:\"post-thumbnail\";a:3:{s:4:\"file\";s:18:\"banner-150x150.png\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";}s:14:\"category-thumb\";a:3:{s:4:\"file\";s:18:\"banner-300x100.png\";s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"100\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";}}'),(20,19,'_wp_attached_file','2012/10/cropped-banner.png'),(21,19,'_wp_attachment_context','custom-header'),(22,19,'_wp_attachment_metadata','a:6:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:2:\"90\";s:14:\"hwstring_small\";s:23:\"height=\'38\' width=\'128\'\";s:4:\"file\";s:26:\"2012/10/cropped-banner.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:3:{s:4:\"file\";s:25:\"cropped-banner-150x90.png\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:2:\"90\";}s:14:\"post-thumbnail\";a:3:{s:4:\"file\";s:25:\"cropped-banner-150x90.png\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:2:\"90\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";}}'),(23,19,'_wp_attachment_is_custom_header','d5-business-line'),(87,66,'_wp_attached_file','2013/01/diving-helmet-1.jpg'),(86,60,'_wp_page_template','default'),(77,53,'_wp_page_template','default'),(76,53,'_edit_lock','1357500682:1'),(75,53,'_edit_last','1'),(33,27,'_wp_attached_file','2012/10/new_ldcover.jpg'),(34,27,'_wp_attachment_metadata','a:6:{s:5:\"width\";s:4:\"1050\";s:6:\"height\";s:3:\"473\";s:14:\"hwstring_small\";s:23:\"height=\'57\' width=\'128\'\";s:4:\"file\";s:23:\"2012/10/new_ldcover.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:3:{s:4:\"file\";s:23:\"new_ldcover-150x150.jpg\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";}s:6:\"medium\";a:3:{s:4:\"file\";s:23:\"new_ldcover-300x135.jpg\";s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"135\";}s:5:\"large\";a:3:{s:4:\"file\";s:24:\"new_ldcover-1024x461.jpg\";s:5:\"width\";s:4:\"1024\";s:6:\"height\";s:3:\"461\";}s:14:\"post-thumbnail\";a:3:{s:4:\"file\";s:23:\"new_ldcover-150x150.jpg\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";}s:14:\"category-thumb\";a:3:{s:4:\"file\";s:23:\"new_ldcover-300x135.jpg\";s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"135\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";}}'),(35,28,'_wp_attached_file','2012/10/cfecndls.jpg'),(36,28,'_wp_attachment_metadata','a:6:{s:5:\"width\";s:3:\"640\";s:6:\"height\";s:3:\"960\";s:14:\"hwstring_small\";s:22:\"height=\'96\' width=\'64\'\";s:4:\"file\";s:20:\"2012/10/cfecndls.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:3:{s:4:\"file\";s:20:\"cfecndls-150x150.jpg\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";}s:6:\"medium\";a:3:{s:4:\"file\";s:20:\"cfecndls-200x300.jpg\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"300\";}s:14:\"post-thumbnail\";a:3:{s:4:\"file\";s:20:\"cfecndls-150x150.jpg\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";}s:14:\"category-thumb\";a:3:{s:4:\"file\";s:20:\"cfecndls-300x450.jpg\";s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"450\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";}}'),(37,29,'_wp_attached_file','2012/10/pkin_latte.jpg'),(38,29,'_wp_attachment_metadata','a:6:{s:5:\"width\";s:3:\"160\";s:6:\"height\";s:3:\"160\";s:14:\"hwstring_small\";s:22:\"height=\'96\' width=\'96\'\";s:4:\"file\";s:22:\"2012/10/pkin_latte.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:3:{s:4:\"file\";s:22:\"pkin_latte-150x150.jpg\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";}s:14:\"post-thumbnail\";a:3:{s:4:\"file\";s:22:\"pkin_latte-150x150.jpg\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";}}'),(39,30,'_wp_attached_file','2012/10/sm_coffeecup.jpg'),(40,30,'_wp_attachment_metadata','a:6:{s:5:\"width\";s:3:\"220\";s:6:\"height\";s:3:\"100\";s:14:\"hwstring_small\";s:23:\"height=\'58\' width=\'128\'\";s:4:\"file\";s:24:\"2012/10/sm_coffeecup.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:3:{s:4:\"file\";s:24:\"sm_coffeecup-150x100.jpg\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"100\";}s:14:\"post-thumbnail\";a:3:{s:4:\"file\";s:24:\"sm_coffeecup-150x100.jpg\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"100\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";}}'),(41,31,'_wp_attached_file','2012/10/sm_cup2.jpg'),(42,31,'_wp_attachment_metadata','a:6:{s:5:\"width\";s:3:\"220\";s:6:\"height\";s:3:\"100\";s:14:\"hwstring_small\";s:23:\"height=\'58\' width=\'128\'\";s:4:\"file\";s:19:\"2012/10/sm_cup2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:3:{s:4:\"file\";s:19:\"sm_cup2-150x100.jpg\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"100\";}s:14:\"post-thumbnail\";a:3:{s:4:\"file\";s:19:\"sm_cup2-150x100.jpg\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"100\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";}}'),(43,32,'_wp_attached_file','2012/10/sm_cup21.jpg'),(44,32,'_wp_attachment_metadata','a:6:{s:5:\"width\";s:3:\"220\";s:6:\"height\";s:3:\"100\";s:14:\"hwstring_small\";s:23:\"height=\'58\' width=\'128\'\";s:4:\"file\";s:20:\"2012/10/sm_cup21.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:3:{s:4:\"file\";s:20:\"sm_cup21-150x100.jpg\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"100\";}s:14:\"post-thumbnail\";a:3:{s:4:\"file\";s:20:\"sm_cup21-150x100.jpg\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"100\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";}}'),(45,33,'_wp_attached_file','2012/10/sm_cup22.jpg'),(46,33,'_wp_attachment_metadata','a:6:{s:5:\"width\";s:3:\"220\";s:6:\"height\";s:3:\"100\";s:14:\"hwstring_small\";s:23:\"height=\'58\' width=\'128\'\";s:4:\"file\";s:20:\"2012/10/sm_cup22.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:3:{s:4:\"file\";s:20:\"sm_cup22-150x100.jpg\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"100\";}s:14:\"post-thumbnail\";a:3:{s:4:\"file\";s:20:\"sm_cup22-150x100.jpg\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"100\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";}}'),(47,34,'_wp_attached_file','2012/10/sm_cup23.jpg'),(48,34,'_wp_attachment_metadata','a:6:{s:5:\"width\";s:3:\"220\";s:6:\"height\";s:3:\"100\";s:14:\"hwstring_small\";s:23:\"height=\'58\' width=\'128\'\";s:4:\"file\";s:20:\"2012/10/sm_cup23.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:3:{s:4:\"file\";s:20:\"sm_cup23-150x100.jpg\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"100\";}s:14:\"post-thumbnail\";a:3:{s:4:\"file\";s:20:\"sm_cup23-150x100.jpg\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"100\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";}}'),(49,35,'_wp_attached_file','2012/10/cupofbeans.jpg'),(50,35,'_wp_attachment_metadata','a:6:{s:5:\"width\";s:3:\"220\";s:6:\"height\";s:3:\"100\";s:14:\"hwstring_small\";s:23:\"height=\'58\' width=\'128\'\";s:4:\"file\";s:22:\"2012/10/cupofbeans.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:3:{s:4:\"file\";s:22:\"cupofbeans-150x100.jpg\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"100\";}s:14:\"post-thumbnail\";a:3:{s:4:\"file\";s:22:\"cupofbeans-150x100.jpg\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"100\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";}}'),(51,36,'_wp_attached_file','2012/10/scoop_coffeebeans.jpg'),(52,36,'_wp_attachment_metadata','a:6:{s:5:\"width\";s:3:\"220\";s:6:\"height\";s:3:\"100\";s:14:\"hwstring_small\";s:23:\"height=\'58\' width=\'128\'\";s:4:\"file\";s:29:\"2012/10/scoop_coffeebeans.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:3:{s:4:\"file\";s:29:\"scoop_coffeebeans-150x100.jpg\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"100\";}s:14:\"post-thumbnail\";a:3:{s:4:\"file\";s:29:\"scoop_coffeebeans-150x100.jpg\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"100\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";}}'),(83,58,'_wp_page_template','default'),(82,58,'_edit_lock','1357450163:1'),(56,4,'_edit_lock','1350672034:1'),(57,5,'_wp_trash_meta_status','publish'),(58,5,'_wp_trash_meta_time','1357446218'),(59,4,'_wp_trash_meta_status','publish'),(60,4,'_wp_trash_meta_time','1357446218'),(61,3,'_wp_trash_meta_status','publish'),(62,3,'_wp_trash_meta_time','1357446218'),(88,66,'_wp_attachment_metadata','a:6:{s:5:\"width\";s:3:\"750\";s:6:\"height\";s:4:\"1050\";s:14:\"hwstring_small\";s:22:\"height=\'96\' width=\'68\'\";s:4:\"file\";s:27:\"2013/01/diving-helmet-1.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:3:{s:4:\"file\";s:27:\"diving-helmet-1-150x150.jpg\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";}s:6:\"medium\";a:3:{s:4:\"file\";s:27:\"diving-helmet-1-214x300.jpg\";s:5:\"width\";s:3:\"214\";s:6:\"height\";s:3:\"300\";}s:5:\"large\";a:3:{s:4:\"file\";s:28:\"diving-helmet-1-731x1024.jpg\";s:5:\"width\";s:3:\"731\";s:6:\"height\";s:4:\"1024\";}s:14:\"post-thumbnail\";a:3:{s:4:\"file\";s:27:\"diving-helmet-1-150x150.jpg\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:3:\"150\";}s:14:\"category-thumb\";a:3:{s:4:\"file\";s:27:\"diving-helmet-1-300x420.jpg\";s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"420\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";}}'),(85,60,'_edit_lock','1357450099:1'),(84,60,'_edit_last','1'),(78,56,'_edit_last','1'),(79,56,'_edit_lock','1357450466:1'),(80,56,'_wp_page_template','default'),(81,58,'_edit_last','1'),(89,69,'_edit_last','1'),(90,69,'_edit_lock','1357501289:1'),(91,69,'_wp_page_template','default');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL auto_increment,
  `post_author` bigint(20) unsigned NOT NULL default '0',
  `post_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_category` int(4) NOT NULL default '0',
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL default 'publish',
  `comment_status` varchar(20) NOT NULL default 'open',
  `ping_status` varchar(20) NOT NULL default 'open',
  `post_password` varchar(20) NOT NULL default '',
  `post_name` varchar(200) NOT NULL default '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL default '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL default '0',
  `guid` varchar(255) NOT NULL default '',
  `menu_order` int(11) NOT NULL default '0',
  `post_type` varchar(20) NOT NULL default 'post',
  `post_mime_type` varchar(100) NOT NULL default '',
  `comment_count` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (5,1,'2012-10-10 11:36:51','2012-10-10 15:36:51','<span style=\"font-family: \'courier new\'; font-size: 13px; line-height: normal\">&lt;a href=\"http://www.somemenu.com/\"&gt;Our current menu&lt;/a&gt;</span>','This is the menu',0,'','trash','closed','closed','','this-is-the-menu','','','2013-01-06 00:23:38','2013-01-06 04:23:38','',0,'http://www.lattedonatte.com/?p=5',0,'post','',0),(3,1,'2012-10-10 11:28:47','2012-10-10 15:28:47','These are our hours:\r\nm-f: 6am to 6pm\r\nSaturday: Whatever\r\nSunday: Closed','Hours',0,'','trash','closed','closed','','hours','','','2013-01-06 00:23:38','2013-01-06 04:23:38','',0,'http://www.lattedonatte.com/?p=3',0,'post','',0),(4,1,'2012-10-10 11:29:11','2012-10-10 15:29:11','Latte Donatte is a place to get coffee and lattes and donattes.','About Us',0,'','trash','closed','closed','','about-us','','','2013-01-06 00:23:38','2013-01-06 04:23:38','',0,'http://www.lattedonatte.com/?p=4',0,'post','',0),(6,1,'2012-10-18 11:14:04','0000-00-00 00:00:00','','Auto Draft',0,'','auto-draft','closed','closed','','','','','2012-10-18 11:14:04','0000-00-00 00:00:00','',0,'http://www.lattedonatte.com/?p=6',0,'post','',0),(7,1,'2012-10-18 11:26:18','0000-00-00 00:00:00','','Banner-image',0,'','draft','closed','closed','','of-banner-image','','','2012-10-18 11:26:18','0000-00-00 00:00:00','',0,'http://www.lattedonatte.com/?post_type=optionsframework&p=7',0,'optionsframework','',0),(8,1,'2012-10-18 11:26:18','0000-00-00 00:00:00','','Featured-image1',0,'','draft','closed','closed','','of-featured-image1','','','2012-10-18 11:26:18','0000-00-00 00:00:00','',0,'http://www.lattedonatte.com/?post_type=optionsframework&p=8',0,'optionsframework','',0),(9,1,'2012-10-18 11:26:18','0000-00-00 00:00:00','','Featured-image2',0,'','draft','closed','closed','','of-featured-image2','','','2012-10-18 11:26:18','0000-00-00 00:00:00','',0,'http://www.lattedonatte.com/?post_type=optionsframework&p=9',0,'optionsframework','',0),(10,1,'2012-10-18 11:26:18','0000-00-00 00:00:00','','Featured-image3',0,'','draft','closed','closed','','of-featured-image3','','','2012-10-18 11:26:18','0000-00-00 00:00:00','',0,'http://www.lattedonatte.com/?post_type=optionsframework&p=10',0,'optionsframework','',0),(11,1,'2012-10-18 11:26:18','0000-00-00 00:00:00','','Featured-image4',0,'','draft','closed','closed','','of-featured-image4','','','2012-10-18 11:26:18','0000-00-00 00:00:00','',0,'http://www.lattedonatte.com/?post_type=optionsframework&p=11',0,'optionsframework','',0),(12,1,'2012-10-18 11:44:31','2012-10-18 15:44:31','','1063812400',0,'','inherit','closed','closed','','1063812400','','','2012-10-18 11:44:31','2012-10-18 15:44:31','',0,'http://www.lattedonatte.com/wp-content/uploads/2012/10/1063812400.jpg',0,'attachment','image/jpeg',0),(13,1,'2012-10-18 11:44:32','2012-10-18 15:44:32','','latte_donatte_sign',0,'','inherit','closed','closed','','latte_donatte_sign','','','2012-10-18 11:44:32','2012-10-18 15:44:32','',0,'http://www.lattedonatte.com/wp-content/uploads/2012/10/latte_donatte_sign.jpg',0,'attachment','image/jpeg',0),(14,1,'2012-10-18 11:44:32','2012-10-18 15:44:32','','lattedonatte_cover',0,'','inherit','closed','closed','','lattedonatte_cover','','','2012-10-18 11:44:32','2012-10-18 15:44:32','',0,'http://www.lattedonatte.com/wp-content/uploads/2012/10/lattedonatte_cover.jpg',0,'attachment','image/jpeg',0),(15,1,'2012-10-18 11:44:33','2012-10-18 15:44:33','','lattedonatte_cover_sm',0,'','inherit','closed','closed','','lattedonatte_cover_sm','','','2012-10-18 11:44:33','2012-10-18 15:44:33','',0,'http://www.lattedonatte.com/wp-content/uploads/2012/10/lattedonatte_cover_sm.jpg',0,'attachment','image/jpeg',0),(16,1,'2012-10-18 11:44:36','2012-10-18 15:44:36','','ldfooter',0,'','inherit','closed','closed','','ldfooter','','','2012-10-18 11:44:36','2012-10-18 15:44:36','',0,'http://www.lattedonatte.com/wp-content/uploads/2012/10/ldfooter.jpg',0,'attachment','image/jpeg',0),(17,1,'2012-10-18 11:45:48','2012-10-18 15:45:48','http://www.lattedonatte.com/wp-content/uploads/2012/10/cropped-1063812400.jpg','cropped-1063812400.jpg',0,'','inherit','closed','closed','','cropped-1063812400-jpg','','','2012-10-18 11:45:48','2012-10-18 15:45:48','',0,'http://www.lattedonatte.com/wp-content/uploads/2012/10/cropped-1063812400.jpg',0,'attachment','image/jpeg',0),(18,1,'2012-10-18 13:03:51','2012-10-18 17:03:51','','banner',0,'','inherit','closed','closed','','banner','','','2012-10-18 13:03:51','2012-10-18 17:03:51','',0,'http://www.lattedonatte.com/wp-content/uploads/2012/10/banner.png',0,'attachment','image/png',0),(19,1,'2012-10-18 13:05:14','2012-10-18 17:05:14','http://www.lattedonatte.com/wp-content/uploads/2012/10/cropped-banner.png','cropped-banner.png',0,'','inherit','closed','closed','','cropped-banner-png','','','2012-10-18 13:05:14','2012-10-18 17:05:14','',0,'http://www.lattedonatte.com/wp-content/uploads/2012/10/cropped-banner.png',0,'attachment','image/png',0),(57,1,'2013-01-06 01:23:46','2013-01-06 05:23:46','','Menu',0,'','inherit','closed','closed','','56-revision','','','2013-01-06 01:23:46','2013-01-06 05:23:46','',56,'http://www.lattedonatte.com/?p=57',0,'revision','',0),(56,1,'2013-01-06 01:29:38','2013-01-06 05:29:38','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Menu',0,'','publish','closed','closed','','menu','','','2013-01-06 01:29:38','2013-01-06 05:29:38','',0,'http://www.lattedonatte.com/?page_id=56',0,'page','',0),(53,1,'2013-01-06 01:12:33','2013-01-06 05:12:33','<a href=\"http://www.lattedonatte.com/wp-content/uploads/2013/01/diving-helmet-1.jpg\"><img class=\"alignnone size-full wp-image-66\" title=\"diving-helmet-1\" src=\"http://www.lattedonatte.com/wp-content/uploads/2013/01/diving-helmet-1.jpg\" alt=\"\" width=\"750\" height=\"1050\" /></a>Latte Donatte is a local coffee shop in Watertown, WI','About Us',0,'','publish','closed','closed','','about-us','','','2013-01-06 15:15:18','2013-01-06 19:15:18','',0,'http://www.lattedonatte.com/?page_id=53',0,'page','',0),(54,1,'2013-01-06 01:11:31','2013-01-06 05:11:31','','About Us',0,'','inherit','closed','closed','','53-revision','','','2013-01-06 01:11:31','2013-01-06 05:11:31','',53,'http://www.lattedonatte.com/53-revision/',0,'revision','',0),(27,1,'2012-10-18 16:32:50','2012-10-18 20:32:50','','new_ldcover',0,'','inherit','closed','closed','','new_ldcover','','','2012-10-18 16:32:50','2012-10-18 20:32:50','',7,'http://www.lattedonatte.com/wp-content/uploads/2012/10/new_ldcover.jpg',0,'attachment','image/jpeg',0),(28,1,'2012-10-18 16:34:36','2012-10-18 20:34:36','','coffee_candles',0,'','inherit','closed','closed','','cfecndls','','','2012-10-18 16:34:36','2012-10-18 20:34:36','',8,'http://www.lattedonatte.com/wp-content/uploads/2012/10/cfecndls.jpg',0,'attachment','image/jpeg',0),(29,1,'2012-10-18 16:38:08','2012-10-18 20:38:08','','Pumpkin Latte',0,'','inherit','closed','closed','','pkin_latte','','','2012-10-18 16:38:08','2012-10-18 20:38:08','',9,'http://www.lattedonatte.com/wp-content/uploads/2012/10/pkin_latte.jpg',0,'attachment','image/jpeg',0),(30,1,'2012-10-18 16:48:03','2012-10-18 20:48:03','','sm_coffeecup',0,'','inherit','closed','closed','','sm_coffeecup','','','2012-10-18 16:48:03','2012-10-18 20:48:03','',8,'http://www.lattedonatte.com/wp-content/uploads/2012/10/sm_coffeecup.jpg',0,'attachment','image/jpeg',0),(31,1,'2012-10-18 16:48:54','2012-10-18 20:48:54','','sm_cup2',0,'','inherit','closed','closed','','sm_cup2','','','2012-10-18 16:48:54','2012-10-18 20:48:54','',9,'http://www.lattedonatte.com/wp-content/uploads/2012/10/sm_cup2.jpg',0,'attachment','image/jpeg',0),(32,1,'2012-10-18 16:48:54','2012-10-18 20:48:54','','sm_cup2',0,'','inherit','closed','closed','','sm_cup2-2','','','2012-10-18 16:48:54','2012-10-18 20:48:54','',9,'http://www.lattedonatte.com/wp-content/uploads/2012/10/sm_cup21.jpg',0,'attachment','image/jpeg',0),(33,1,'2012-10-18 16:49:10','2012-10-18 20:49:10','','sm_cup2',0,'','inherit','closed','closed','','sm_cup2-3','','','2012-10-18 16:49:10','2012-10-18 20:49:10','',9,'http://www.lattedonatte.com/wp-content/uploads/2012/10/sm_cup22.jpg',0,'attachment','image/jpeg',0),(34,1,'2012-10-18 16:50:00','2012-10-18 20:50:00','','sm_cup2',0,'','inherit','closed','closed','','sm_cup2-4','','','2012-10-18 16:50:00','2012-10-18 20:50:00','',9,'http://www.lattedonatte.com/wp-content/uploads/2012/10/sm_cup23.jpg',0,'attachment','image/jpeg',0),(35,1,'2012-10-18 16:53:45','2012-10-18 20:53:45','','cupofbeans',0,'','inherit','closed','closed','','cupofbeans','','','2012-10-18 16:53:45','2012-10-18 20:53:45','',10,'http://www.lattedonatte.com/wp-content/uploads/2012/10/cupofbeans.jpg',0,'attachment','image/jpeg',0),(36,1,'2012-10-18 16:55:48','2012-10-18 20:55:48','','scoop_coffeebeans',0,'','inherit','closed','closed','','scoop_coffeebeans','','','2012-10-18 16:55:48','2012-10-18 20:55:48','',11,'http://www.lattedonatte.com/wp-content/uploads/2012/10/scoop_coffeebeans.jpg',0,'attachment','image/jpeg',0),(38,1,'2012-10-19 14:34:06','0000-00-00 00:00:00','','Auto Draft',0,'','auto-draft','closed','closed','','','','','2012-10-19 14:34:06','0000-00-00 00:00:00','',0,'http://www.lattedonatte.com/?page_id=38',0,'page','',0),(66,1,'2013-01-06 15:14:57','2013-01-06 19:14:57','','diving-helmet-1',0,'','inherit','closed','closed','','diving-helmet-1','','','2013-01-06 15:14:57','2013-01-06 19:14:57','',53,'http://www.lattedonatte.com/wp-content/uploads/2013/01/diving-helmet-1.jpg',0,'attachment','image/jpeg',0),(55,1,'2013-01-06 01:12:33','2013-01-06 05:12:33','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','About Us',0,'','inherit','closed','closed','','53-revision-2','','','2013-01-06 01:12:33','2013-01-06 05:12:33','',53,'http://www.lattedonatte.com/53-revision-2/',0,'revision','',0),(41,1,'2012-10-19 14:43:22','0000-00-00 00:00:00','','Auto Draft',0,'','auto-draft','closed','closed','','','','','2012-10-19 14:43:22','0000-00-00 00:00:00','',0,'http://www.lattedonatte.com/?p=41',0,'post','',0),(43,1,'2012-10-10 11:36:51','2012-10-10 15:36:51','<span style=\"font-family: \'courier new\'; font-size: 13px; line-height: normal\">&lt;a href=\"http://www.somemenu.com/\"&gt;Our current menu&lt;/a&gt;</span>','This is the menu',0,'','inherit','closed','closed','','5-revision','','','2012-10-10 11:36:51','2012-10-10 15:36:51','',5,'http://www.lattedonatte.com/5-revision/',0,'revision','',0),(44,1,'2012-10-10 11:29:11','2012-10-10 15:29:11','Latte Donatte is a place to get coffee and lattes and donattes.','About Us',0,'','inherit','closed','closed','','4-revision','','','2012-10-10 11:29:11','2012-10-10 15:29:11','',4,'http://www.lattedonatte.com/4-revision/',0,'revision','',0),(45,1,'2012-10-10 11:28:47','2012-10-10 15:28:47','These are our hours:\r\nm-f: 6am to 6pm\r\nSaturday: Whatever\r\nSunday: Closed','Hours',0,'','inherit','closed','closed','','3-revision','','','2012-10-10 11:28:47','2012-10-10 15:28:47','',3,'http://www.lattedonatte.com/3-revision/',0,'revision','',0),(67,1,'2013-01-06 15:07:47','2013-01-06 19:07:47','Latte Donatte is a local coffee shop in Watertown, WI','About Us',0,'','inherit','closed','closed','','53-revision-4','','','2013-01-06 15:07:47','2013-01-06 19:07:47','',53,'http://www.lattedonatte.com/?p=67',0,'revision','',0),(68,1,'2013-01-06 15:16:39','2013-01-06 19:16:39','<a href=\"http://www.lattedonatte.com/wp-content/uploads/2013/01/diving-helmet-1.jpg\"><img class=\"alignnone size-full wp-image-66\" title=\"diving-helmet-1\" src=\"http://www.lattedonatte.com/wp-content/uploads/2013/01/diving-helmet-1.jpg\" alt=\"\" width=\"750\" height=\"1050\" /></a>Latte Donatte is a local coffee shop in Watertown, WI','About Us',0,'','inherit','closed','closed','','53-autosave','','','2013-01-06 15:16:39','2013-01-06 19:16:39','',53,'http://www.lattedonatte.com/?p=68',0,'revision','',0),(58,1,'2013-01-06 01:24:42','2013-01-06 05:24:42','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Specials',0,'','publish','closed','closed','','specials','','','2013-01-06 01:24:42','2013-01-06 05:24:42','',0,'http://www.lattedonatte.com/?page_id=58',0,'page','',0),(59,1,'2013-01-06 01:24:32','2013-01-06 05:24:32','','Specials',0,'','inherit','closed','closed','','58-revision','','','2013-01-06 01:24:32','2013-01-06 05:24:32','',58,'http://www.lattedonatte.com/?p=59',0,'revision','',0),(60,1,'2013-01-06 01:25:01','2013-01-06 05:25:01','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','News',0,'','publish','closed','closed','','news','','','2013-01-06 01:25:01','2013-01-06 05:25:01','',0,'http://www.lattedonatte.com/?page_id=60',0,'page','',0),(61,1,'2013-01-06 01:24:46','0000-00-00 00:00:00','','Auto Draft',0,'','auto-draft','closed','closed','','','','','2013-01-06 01:24:46','0000-00-00 00:00:00','',0,'http://www.lattedonatte.com/?page_id=61',0,'page','',0),(62,1,'2013-01-06 01:24:54','2013-01-06 05:24:54','','News',0,'','inherit','closed','closed','','60-revision','','','2013-01-06 01:24:54','2013-01-06 05:24:54','',60,'http://www.lattedonatte.com/?p=62',0,'revision','',0),(63,1,'2013-01-06 01:26:02','2013-01-06 05:26:02','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','News',0,'','inherit','closed','closed','','60-autosave','','','2013-01-06 01:26:02','2013-01-06 05:26:02','',60,'http://www.lattedonatte.com/?p=63',0,'revision','',0),(64,1,'2013-01-06 01:29:26','2013-01-06 05:29:26','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Menu',0,'','inherit','closed','closed','','56-revision-2','','','2013-01-06 01:29:26','2013-01-06 05:29:26','',56,'http://www.lattedonatte.com/?p=64',0,'revision','',0),(65,1,'2013-01-06 01:13:51','2013-01-06 05:13:51','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','About Us',0,'','inherit','closed','closed','','53-revision-3','','','2013-01-06 01:13:51','2013-01-06 05:13:51','',53,'http://www.lattedonatte.com/?p=65',0,'revision','',0),(69,1,'2013-01-06 15:41:29','0000-00-00 00:00:00','test page','test',0,'','draft','closed','closed','','','','','2013-01-06 15:41:29','2013-01-06 19:41:29','',0,'http://www.lattedonatte.com/?page_id=69',0,'page','',0),(70,1,'2013-01-06 15:39:40','2013-01-06 19:39:40','','test',0,'','inherit','closed','closed','','69-revision','','','2013-01-06 15:39:40','2013-01-06 19:39:40','',69,'http://www.lattedonatte.com/?p=70',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL default '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL default '0',
  `term_order` int(11) NOT NULL default '0',
  PRIMARY KEY  (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (3,3,0),(5,3,0),(4,3,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL auto_increment,
  `term_id` bigint(20) unsigned NOT NULL default '0',
  `taxonomy` varchar(32) NOT NULL default '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL default '0',
  `count` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'link_category','',0,0),(3,3,'category','',0,0);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL auto_increment,
  `name` varchar(200) NOT NULL default '',
  `slug` varchar(200) NOT NULL default '',
  `term_group` bigint(10) NOT NULL default '0',
  PRIMARY KEY  (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (2,'Blogroll','blogroll',0),(3,'News','news',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL auto_increment,
  `user_id` bigint(20) unsigned NOT NULL default '0',
  `meta_key` varchar(255) default NULL,
  `meta_value` longtext,
  PRIMARY KEY  (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin'),(2,1,'rich_editing','true'),(3,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(4,1,'wp_user_level','10'),(5,1,'wp_autosave_draft_ids','a:3:{i:-1349882884;i:3;i:-1349882927;i:4;i:-1349883339;i:5;}'),(6,1,'wp_dashboard_quick_press_last_post_id','6'),(7,1,'managenav-menuscolumnshidden','a:4:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),(8,1,'metaboxhidden_nav-menus','a:2:{i:0;s:8:\"add-post\";i:1;s:12:\"add-post_tag\";}'),(9,1,'dismissed_wp_pointers','wp340_choose_image_from_library,wp330_toolbar,wp330_media_uploader'),(10,1,'wp_user-settings','imgsize=full&uploader=1'),(11,1,'wp_user-settings-time','1357499713');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL auto_increment,
  `user_login` varchar(60) NOT NULL default '',
  `user_pass` varchar(64) NOT NULL default '',
  `user_nicename` varchar(50) NOT NULL default '',
  `user_email` varchar(100) NOT NULL default '',
  `user_url` varchar(100) NOT NULL default '',
  `user_registered` datetime NOT NULL default '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL default '',
  `user_status` int(11) NOT NULL default '0',
  `display_name` varchar(250) NOT NULL default '',
  PRIMARY KEY  (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$P$BWPGWLIK0N.zyJpXrpWqVhpUqR50RI/','admin','mattdherrick@gmail.com','http://','2012-09-07 04:29:54','',0,'admin');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-01-11 20:13:55
