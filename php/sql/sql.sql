-- MySQL dump 10.13  Distrib 5.6.37, for Linux (x86_64)
--
-- Host: localhost    Database: soyuanba
-- ------------------------------------------------------
-- Server version	5.6.37-log

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
-- Table structure for table `a_app_daili2`
--

DROP TABLE IF EXISTS `a_app_daili2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_app_daili2` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(1) NOT NULL COMMENT '权限',
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creattime` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `sqmnum` varchar(50) DEFAULT NULL,
  `fromid` int(11) DEFAULT NULL,
  `sqmtotalnum` int(11) DEFAULT NULL,
  `sqmsolenum` int(11) DEFAULT NULL,
  `last_login_time` int(11) DEFAULT NULL,
  `last_login_ip` varchar(20) DEFAULT NULL,
  `login_count` int(11) DEFAULT '0',
  `ad` text,
  `domain` varchar(100) DEFAULT NULL,
  `durl` varchar(100) NOT NULL,
  `durl1` varchar(100) NOT NULL,
  `durl2` varchar(100) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_app_daili2`
--

LOCK TABLES `a_app_daili2` WRITE;
/*!40000 ALTER TABLE `a_app_daili2` DISABLE KEYS */;
/*!40000 ALTER TABLE `a_app_daili2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_app_dailicode2`
--

DROP TABLE IF EXISTS `a_app_dailicode2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_app_dailicode2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dailiid` int(11) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `creattime` int(11) DEFAULT NULL,
  `soletime` varchar(13) DEFAULT NULL,
  `gqtime` varchar(13) NOT NULL DEFAULT '0',
  `tian` varchar(50) NOT NULL,
  `state` int(11) DEFAULT NULL,
  `udid` varchar(500) NOT NULL,
  `allstate` int(11) DEFAULT '0',
  `mark` varchar(100) DEFAULT NULL,
  `zijistate` int(11) DEFAULT '0',
  `zijitime` int(11) DEFAULT NULL,
  `zijiudid` varchar(120) DEFAULT NULL,
  `updatetime` int(11) NOT NULL,
  `wssqauth` int(11) DEFAULT '0',
  `wssqtime` int(11) DEFAULT NULL,
  `wssqudid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_app_dailicode2`
--

LOCK TABLES `a_app_dailicode2` WRITE;
/*!40000 ALTER TABLE `a_app_dailicode2` DISABLE KEYS */;
/*!40000 ALTER TABLE `a_app_dailicode2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_app_dailicode3`
--

DROP TABLE IF EXISTS `a_app_dailicode3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_app_dailicode3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `udid` varchar(50) DEFAULT NULL,
  `stime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_app_dailicode3`
--

LOCK TABLES `a_app_dailicode3` WRITE;
/*!40000 ALTER TABLE `a_app_dailicode3` DISABLE KEYS */;
/*!40000 ALTER TABLE `a_app_dailicode3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_app_failed_login2`
--

DROP TABLE IF EXISTS `a_app_failed_login2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_app_failed_login2` (
  `ip` varchar(100) NOT NULL DEFAULT '' COMMENT '登录错误IP',
  `count` varchar(100) NOT NULL DEFAULT '0' COMMENT '登录错误次数',
  `lastupdate` varchar(100) NOT NULL DEFAULT '0' COMMENT '错误最后时间',
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户登录错误记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_app_failed_login2`
--

LOCK TABLES `a_app_failed_login2` WRITE;
/*!40000 ALTER TABLE `a_app_failed_login2` DISABLE KEYS */;
/*!40000 ALTER TABLE `a_app_failed_login2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_app_lognew2`
--

DROP TABLE IF EXISTS `a_app_lognew2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_app_lognew2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `forwhat` varchar(255) DEFAULT NULL,
  `biandong` int(11) DEFAULT NULL,
  `shengyu` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_app_lognew2`
--

LOCK TABLES `a_app_lognew2` WRITE;
/*!40000 ALTER TABLE `a_app_lognew2` DISABLE KEYS */;
/*!40000 ALTER TABLE `a_app_lognew2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_app_mrdurl`
--

DROP TABLE IF EXISTS `a_app_mrdurl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_app_mrdurl` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `durl1` varchar(100) DEFAULT NULL,
  `durl2` varchar(100) DEFAULT NULL,
  `durl3` varchar(100) DEFAULT NULL,
  `durl4` varchar(100) DEFAULT NULL,
  `yjh` varchar(100) NOT NULL DEFAULT '0' COMMENT '已激活码数',
  `yft` varchar(100) NOT NULL DEFAULT '0' COMMENT '已封停码数',
  `ycz` varchar(100) NOT NULL DEFAULT '0' COMMENT '已重置码数',
  `yhx` varchar(100) NOT NULL DEFAULT '0' COMMENT '已换新码数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_app_mrdurl`
--

LOCK TABLES `a_app_mrdurl` WRITE;
/*!40000 ALTER TABLE `a_app_mrdurl` DISABLE KEYS */;
/*!40000 ALTER TABLE `a_app_mrdurl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `duan_url`
--

DROP TABLE IF EXISTS `duan_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `duan_url` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `duan` varchar(100) NOT NULL,
  `chang` varchar(10000) NOT NULL,
  `fwcs` int(25) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duan_url`
--

LOCK TABLES `duan_url` WRITE;
/*!40000 ALTER TABLE `duan_url` DISABLE KEYS */;
/*!40000 ALTER TABLE `duan_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_ad`
--

DROP TABLE IF EXISTS `jz_ad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_ad` (
  `ad_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '广告id',
  `ad_name` varchar(255) NOT NULL COMMENT '广告名称',
  `ad_content` text COMMENT '广告内容',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  PRIMARY KEY (`ad_id`),
  KEY `ad_name` (`ad_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_ad`
--

LOCK TABLES `jz_ad` WRITE;
/*!40000 ALTER TABLE `jz_ad` DISABLE KEYS */;
/*!40000 ALTER TABLE `jz_ad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_all_record`
--

DROP TABLE IF EXISTS `jz_all_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_all_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商城用户注册登录表',
  `user_id` int(11) DEFAULT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '' COMMENT '登录账号',
  `UG_type` varchar(60) DEFAULT '' COMMENT '奖金分类',
  `UG_integral` decimal(15,4) DEFAULT '0.0000' COMMENT '当前账户种子币余额',
  `number` varchar(255) DEFAULT '0.0000' COMMENT '当前帐户金币余额',
  `create_time` datetime DEFAULT NULL COMMENT '结算时间',
  `UG_allGet` decimal(20,0) DEFAULT NULL COMMENT '用户密码',
  `UG_balance` decimal(20,0) DEFAULT NULL COMMENT '当前账户余额',
  `UG_regIP` varchar(30) DEFAULT '',
  `wallet` varchar(100) DEFAULT '' COMMENT '分红类型',
  `notice` text COMMENT '金币获取说明',
  `UG_othraccount` varchar(60) DEFAULT NULL COMMENT '推荐帐号/开单帐号',
  `yb` decimal(15,4) DEFAULT '0.0000',
  `ybhe` decimal(15,4) DEFAULT NULL,
  `zsb` decimal(15,4) DEFAULT NULL,
  `zsbhe` decimal(15,4) DEFAULT NULL,
  `yb1` decimal(15,4) DEFAULT NULL,
  `zsb1` decimal(15,4) DEFAULT NULL,
  `varid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=337 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_all_record`
--

LOCK TABLES `jz_all_record` WRITE;
/*!40000 ALTER TABLE `jz_all_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `jz_all_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_asset`
--

DROP TABLE IF EXISTS `jz_asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_asset` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户 id',
  `key` varchar(50) NOT NULL COMMENT '资源 key',
  `filename` varchar(50) DEFAULT NULL COMMENT '文件名',
  `filesize` int(11) DEFAULT NULL COMMENT '文件大小,单位Byte',
  `filepath` varchar(200) NOT NULL COMMENT '文件路径，相对于 upload 目录，可以为 url',
  `uploadtime` int(11) NOT NULL COMMENT '上传时间',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1：可用，0：删除，不可用',
  `meta` text COMMENT '其它详细信息，JSON格式',
  `suffix` varchar(50) DEFAULT NULL COMMENT '文件后缀名，不包括点',
  `download_times` int(11) NOT NULL DEFAULT '0' COMMENT '下载次数',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_asset`
--

LOCK TABLES `jz_asset` WRITE;
/*!40000 ALTER TABLE `jz_asset` DISABLE KEYS */;
/*!40000 ALTER TABLE `jz_asset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_auth_access`
--

DROP TABLE IF EXISTS `jz_auth_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_auth_access` (
  `role_id` mediumint(8) unsigned NOT NULL COMMENT '角色',
  `rule_name` varchar(255) NOT NULL COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) DEFAULT NULL COMMENT '权限规则分类，请加应用前缀,如admin_',
  KEY `role_id` (`role_id`),
  KEY `rule_name` (`rule_name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_auth_access`
--

LOCK TABLES `jz_auth_access` WRITE;
/*!40000 ALTER TABLE `jz_auth_access` DISABLE KEYS */;
INSERT INTO `jz_auth_access` VALUES (4,'admin/content/default','admin_url'),(4,'comment/commentadmin/index','admin_url'),(4,'comment/commentadmin/delete','admin_url'),(4,'comment/commentadmin/check','admin_url'),(4,'portal/adminpost/index','admin_url'),(4,'portal/adminpost/listorders','admin_url'),(4,'portal/adminpost/top','admin_url'),(4,'portal/adminpost/recommend','admin_url'),(4,'portal/adminpost/move','admin_url'),(4,'portal/adminpost/check','admin_url'),(4,'portal/adminpost/delete','admin_url'),(4,'portal/adminpost/edit','admin_url'),(4,'portal/adminpost/edit_post','admin_url'),(4,'portal/adminpost/add','admin_url'),(4,'portal/adminpost/add_post','admin_url'),(4,'portal/adminpost/copy','admin_url'),(4,'portal/adminterm/index','admin_url'),(4,'portal/adminterm/listorders','admin_url'),(4,'portal/adminterm/delete','admin_url'),(4,'portal/adminterm/edit','admin_url'),(4,'portal/adminterm/edit_post','admin_url'),(4,'portal/adminterm/add','admin_url'),(4,'portal/adminterm/add_post','admin_url'),(4,'portal/adminpage/index','admin_url'),(4,'portal/adminpage/listorders','admin_url'),(4,'portal/adminpage/delete','admin_url'),(4,'portal/adminpage/edit','admin_url'),(4,'portal/adminpage/edit_post','admin_url'),(4,'portal/adminpage/add','admin_url'),(4,'portal/adminpage/add_post','admin_url'),(4,'admin/recycle/default','admin_url'),(4,'portal/adminpost/recyclebin','admin_url'),(4,'portal/adminpost/restore','admin_url'),(4,'portal/adminpost/clean','admin_url'),(4,'portal/adminpage/recyclebin','admin_url'),(4,'portal/adminpage/clean','admin_url'),(4,'portal/adminpage/restore','admin_url'),(4,'portal/adminpost/aid','admin_url'),(4,'admin/extension/default','admin_url'),(4,'admin/plugin/index','admin_url'),(4,'admin/plugin/toggle','admin_url'),(4,'admin/plugin/setting','admin_url'),(4,'admin/plugin/setting_post','admin_url'),(4,'admin/plugin/install','admin_url'),(4,'admin/plugin/uninstall','admin_url'),(4,'admin/plugin/update','admin_url'),(4,'admin/slide/default','admin_url'),(4,'admin/slide/index','admin_url'),(4,'admin/slide/listorders','admin_url'),(4,'admin/slide/toggle','admin_url'),(4,'admin/slide/delete','admin_url'),(4,'admin/slide/edit','admin_url'),(4,'admin/slide/edit_post','admin_url'),(4,'admin/slide/add','admin_url'),(4,'admin/slide/add_post','admin_url'),(4,'admin/slide/ban','admin_url'),(4,'admin/slide/cancelban','admin_url'),(4,'admin/slidecat/index','admin_url'),(4,'admin/slidecat/delete','admin_url'),(4,'admin/slidecat/edit','admin_url'),(4,'admin/slidecat/edit_post','admin_url'),(4,'admin/slidecat/add','admin_url'),(4,'admin/slidecat/add_post','admin_url'),(4,'admin/ad/index','admin_url'),(4,'admin/ad/toggle','admin_url'),(4,'admin/ad/delete','admin_url'),(4,'admin/ad/edit','admin_url'),(4,'admin/ad/edit_post','admin_url'),(4,'admin/ad/add','admin_url'),(4,'admin/ad/add_post','admin_url'),(4,'admin/link/index','admin_url'),(4,'admin/link/listorders','admin_url'),(4,'admin/link/toggle','admin_url'),(4,'admin/link/delete','admin_url'),(4,'admin/link/edit','admin_url'),(4,'admin/link/edit_post','admin_url'),(4,'admin/link/add','admin_url'),(4,'admin/link/add_post','admin_url'),(4,'api/oauthadmin/setting','admin_url'),(4,'api/oauthadmin/setting_post','admin_url'),(3,'portal/adminbonus/default','admin_url'),(3,'portal/adminbonus/bonusset','admin_url'),(3,'portal/adminbonus/extractset','admin_url'),(3,'portal/adminuser/default22','admin_url'),(3,'portal/adminuser/makepdb','admin_url'),(3,'portal/adminuser/pdb','admin_url'),(5,'api/guestbookadmin/yes','admin_url'),(5,'api/guestbookadmin/delete','admin_url'),(5,'api/guestbookadmin/index','admin_url'),(5,'api/guestbookadmin/default','admin_url'),(5,'portal/adminuser/turntable','admin_url'),(5,'portal/adminuser/editmoney','admin_url'),(5,'portal/adminuser/relationship','admin_url'),(5,'portal/adminuser/index','admin_url'),(5,'portal/adminuser/default','admin_url'),(5,'portal/adminpost/aid','admin_url'),(5,'portal/adminpage/restore','admin_url'),(5,'portal/adminpage/clean','admin_url'),(5,'portal/adminpage/recyclebin','admin_url'),(5,'portal/adminpost/clean','admin_url'),(5,'portal/adminpost/restore','admin_url'),(5,'admin/recycle/default','admin_url'),(5,'portal/adminpost/recyclebin','admin_url'),(5,'portal/adminpage/add_post','admin_url'),(5,'portal/adminpage/add','admin_url'),(5,'portal/adminpage/edit_post','admin_url'),(5,'portal/adminpage/edit','admin_url'),(5,'portal/adminpage/delete','admin_url'),(5,'portal/adminpage/listorders','admin_url'),(5,'portal/adminpage/index','admin_url'),(5,'portal/adminterm/add_post','admin_url'),(5,'portal/adminterm/add','admin_url'),(5,'portal/adminterm/edit_post','admin_url'),(5,'portal/adminterm/edit','admin_url'),(5,'portal/adminterm/delete','admin_url'),(5,'portal/adminterm/listorders','admin_url'),(5,'portal/adminterm/index','admin_url'),(5,'portal/adminpost/copy','admin_url'),(5,'portal/adminpost/add','admin_url'),(5,'portal/adminpost/add_post','admin_url'),(5,'portal/adminpost/edit_post','admin_url'),(5,'portal/adminpost/edit','admin_url'),(5,'portal/adminpost/delete','admin_url'),(5,'portal/adminpost/check','admin_url'),(5,'portal/adminpost/move','admin_url'),(5,'portal/adminpost/recommend','admin_url'),(5,'portal/adminpost/listorders','admin_url'),(5,'portal/adminpost/top','admin_url'),(5,'portal/adminpost/index','admin_url'),(5,'comment/commentadmin/check','admin_url'),(5,'comment/commentadmin/delete','admin_url'),(5,'comment/commentadmin/index','admin_url'),(5,'admin/content/default','admin_url');
/*!40000 ALTER TABLE `jz_auth_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_auth_rule`
--

DROP TABLE IF EXISTS `jz_auth_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '规则所属module',
  `type` varchar(30) NOT NULL DEFAULT '1' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(255) DEFAULT NULL COMMENT '额外url参数',
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '规则中文描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `condition` varchar(300) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  KEY `module` (`module`,`status`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=228 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_auth_rule`
--

LOCK TABLES `jz_auth_rule` WRITE;
/*!40000 ALTER TABLE `jz_auth_rule` DISABLE KEYS */;
INSERT INTO `jz_auth_rule` VALUES (1,'Admin','admin_url','admin/content/default','','文章管理',1,''),(2,'Api','admin_url','api/guestbookadmin/index','','未处理留言',1,''),(3,'Api','admin_url','api/guestbookadmin/delete','','删除网站留言',1,''),(4,'Comment','admin_url','comment/commentadmin/index','','评论管理',1,''),(5,'Comment','admin_url','comment/commentadmin/delete','','删除评论',1,''),(6,'Comment','admin_url','comment/commentadmin/check','','评论审核',1,''),(7,'Portal','admin_url','portal/adminpost/index','','新闻公告',1,''),(8,'Portal','admin_url','portal/adminpost/listorders','','文章排序',1,''),(9,'Portal','admin_url','portal/adminpost/top','','文章置顶',1,''),(10,'Portal','admin_url','portal/adminpost/recommend','','文章推荐',1,''),(11,'Portal','admin_url','portal/adminpost/move','','批量移动',1,''),(12,'Portal','admin_url','portal/adminpost/check','','文章审核',1,''),(13,'Portal','admin_url','portal/adminpost/delete','','删除文章',1,''),(14,'Portal','admin_url','portal/adminpost/edit','','编辑文章',1,''),(15,'Portal','admin_url','portal/adminpost/edit_post','','提交编辑',1,''),(16,'Portal','admin_url','portal/adminpost/add','','添加文章',1,''),(17,'Portal','admin_url','portal/adminpost/add_post','','提交添加',1,''),(18,'Portal','admin_url','portal/adminterm/index','','分类管理',1,''),(19,'Portal','admin_url','portal/adminterm/listorders','','文章分类排序',1,''),(20,'Portal','admin_url','portal/adminterm/delete','','删除分类',1,''),(21,'Portal','admin_url','portal/adminterm/edit','','编辑分类',1,''),(22,'Portal','admin_url','portal/adminterm/edit_post','','提交编辑',1,''),(23,'Portal','admin_url','portal/adminterm/add','','添加分类',1,''),(24,'Portal','admin_url','portal/adminterm/add_post','','提交添加',1,''),(25,'Portal','admin_url','portal/adminpage/index','','页面管理',1,''),(26,'Portal','admin_url','portal/adminpage/listorders','','页面排序',1,''),(27,'Portal','admin_url','portal/adminpage/delete','','删除页面',1,''),(28,'Portal','admin_url','portal/adminpage/edit','','编辑页面',1,''),(29,'Portal','admin_url','portal/adminpage/edit_post','','提交编辑',1,''),(30,'Portal','admin_url','portal/adminpage/add','','添加页面',1,''),(31,'Portal','admin_url','portal/adminpage/add_post','','提交添加',1,''),(32,'Admin','admin_url','admin/recycle/default','','回收站',1,''),(33,'Portal','admin_url','portal/adminpost/recyclebin','','文章回收',1,''),(34,'Portal','admin_url','portal/adminpost/restore','','文章还原',1,''),(35,'Portal','admin_url','portal/adminpost/clean','','彻底删除',1,''),(36,'Portal','admin_url','portal/adminpage/recyclebin','','页面回收',1,''),(37,'Portal','admin_url','portal/adminpage/clean','','彻底删除',1,''),(38,'Portal','admin_url','portal/adminpage/restore','','页面还原',1,''),(39,'Admin','admin_url','admin/extension/default','','扩展工具',1,''),(40,'Admin','admin_url','admin/backup/default','','备份管理',1,''),(41,'Admin','admin_url','admin/backup/restore','','数据还原',1,''),(42,'Admin','admin_url','admin/backup/index','','数据备份',1,''),(43,'Admin','admin_url','admin/backup/index_post','','提交数据备份',1,''),(44,'Admin','admin_url','admin/backup/download','','下载备份',1,''),(45,'Admin','admin_url','admin/backup/del_backup','','删除备份',1,''),(46,'Admin','admin_url','admin/backup/import','','数据备份导入',1,''),(47,'Admin','admin_url','admin/plugin/index','','插件管理',1,''),(48,'Admin','admin_url','admin/plugin/toggle','','插件启用切换',1,''),(49,'Admin','admin_url','admin/plugin/setting','','插件设置',1,''),(50,'Admin','admin_url','admin/plugin/setting_post','','插件设置提交',1,''),(51,'Admin','admin_url','admin/plugin/install','','插件安装',1,''),(52,'Admin','admin_url','admin/plugin/uninstall','','插件卸载',1,''),(53,'Admin','admin_url','admin/slide/default','','幻灯片',1,''),(54,'Admin','admin_url','admin/slide/index','','幻灯片管理',1,''),(55,'Admin','admin_url','admin/slide/listorders','','幻灯片排序',1,''),(56,'Admin','admin_url','admin/slide/toggle','','幻灯片显示切换',1,''),(57,'Admin','admin_url','admin/slide/delete','','删除幻灯片',1,''),(58,'Admin','admin_url','admin/slide/edit','','编辑幻灯片',1,''),(59,'Admin','admin_url','admin/slide/edit_post','','提交编辑',1,''),(60,'Admin','admin_url','admin/slide/add','','添加幻灯片',1,''),(61,'Admin','admin_url','admin/slide/add_post','','提交添加',1,''),(62,'Admin','admin_url','admin/slidecat/index','','幻灯片分类',1,''),(63,'Admin','admin_url','admin/slidecat/delete','','删除分类',1,''),(64,'Admin','admin_url','admin/slidecat/edit','','编辑分类',1,''),(65,'Admin','admin_url','admin/slidecat/edit_post','','提交编辑',1,''),(66,'Admin','admin_url','admin/slidecat/add','','添加分类',1,''),(67,'Admin','admin_url','admin/slidecat/add_post','','提交添加',1,''),(68,'Admin','admin_url','admin/ad/index','','网站广告',1,''),(69,'Admin','admin_url','admin/ad/toggle','','广告显示切换',1,''),(70,'Admin','admin_url','admin/ad/delete','','删除广告',1,''),(71,'Admin','admin_url','admin/ad/edit','','编辑广告',1,''),(72,'Admin','admin_url','admin/ad/edit_post','','提交编辑',1,''),(73,'Admin','admin_url','admin/ad/add','','添加广告',1,''),(74,'Admin','admin_url','admin/ad/add_post','','提交添加',1,''),(75,'Admin','admin_url','admin/link/index','','友情链接',1,''),(76,'Admin','admin_url','admin/link/listorders','','友情链接排序',1,''),(77,'Admin','admin_url','admin/link/toggle','','友链显示切换',1,''),(78,'Admin','admin_url','admin/link/delete','','删除友情链接',1,''),(79,'Admin','admin_url','admin/link/edit','','编辑友情链接',1,''),(80,'Admin','admin_url','admin/link/edit_post','','提交编辑',1,''),(81,'Admin','admin_url','admin/link/add','','添加友情链接',1,''),(82,'Admin','admin_url','admin/link/add_post','','提交添加',1,''),(83,'Api','admin_url','api/oauthadmin/setting','','第三方登陆',1,''),(84,'Api','admin_url','api/oauthadmin/setting_post','','提交设置',1,''),(85,'Admin','admin_url','admin/menu/default','','菜单管理',1,''),(86,'Admin','admin_url','admin/navcat/default1','','前台菜单',1,''),(87,'Admin','admin_url','admin/nav/index','','菜单管理',1,''),(88,'Admin','admin_url','admin/nav/listorders','','前台导航排序',1,''),(89,'Admin','admin_url','admin/nav/delete','','删除菜单',1,''),(90,'Admin','admin_url','admin/nav/edit','','编辑菜单',1,''),(91,'Admin','admin_url','admin/nav/edit_post','','提交编辑',1,''),(92,'Admin','admin_url','admin/nav/add','','添加菜单',1,''),(93,'Admin','admin_url','admin/nav/add_post','','提交添加',1,''),(94,'Admin','admin_url','admin/navcat/index','','菜单分类',1,''),(95,'Admin','admin_url','admin/navcat/delete','','删除分类',1,''),(96,'Admin','admin_url','admin/navcat/edit','','编辑分类',1,''),(97,'Admin','admin_url','admin/navcat/edit_post','','提交编辑',1,''),(98,'Admin','admin_url','admin/navcat/add','','添加分类',1,''),(99,'Admin','admin_url','admin/navcat/add_post','','提交添加',1,''),(100,'Admin','admin_url','admin/menu/index','','后台菜单',1,''),(101,'Admin','admin_url','admin/menu/add','','添加菜单',1,''),(102,'Admin','admin_url','admin/menu/add_post','','提交添加',1,''),(103,'Admin','admin_url','admin/menu/listorders','','后台菜单排序',1,''),(104,'Admin','admin_url','admin/menu/export_menu','','菜单备份',1,''),(105,'Admin','admin_url','admin/menu/edit','','编辑菜单',1,''),(106,'Admin','admin_url','admin/menu/edit_post','','提交编辑',1,''),(107,'Admin','admin_url','admin/menu/delete','','删除菜单',1,''),(108,'Admin','admin_url','admin/menu/lists','','所有菜单',1,''),(109,'Admin','admin_url','admin/setting/default','','设置',1,''),(110,'Admin','admin_url','admin/setting/userdefault','','个人信息',1,''),(111,'Admin','admin_url','admin/user/userinfo','','修改信息',1,''),(112,'Admin','admin_url','admin/user/userinfo_post','','修改信息提交',1,''),(113,'Admin','admin_url','admin/setting/password','','修改密码',1,''),(114,'Admin','admin_url','admin/setting/password_post','','提交修改',1,''),(115,'Admin','admin_url','admin/setting/site','','网站信息',1,''),(116,'Admin','admin_url','admin/setting/site_post','','提交修改',1,''),(117,'Admin','admin_url','admin/route/index','','路由列表',1,''),(118,'Admin','admin_url','admin/route/add','','路由添加',1,''),(119,'Admin','admin_url','admin/route/add_post','','路由添加提交',1,''),(120,'Admin','admin_url','admin/route/edit','','路由编辑',1,''),(121,'Admin','admin_url','admin/route/edit_post','','路由编辑提交',1,''),(122,'Admin','admin_url','admin/route/delete','','路由删除',1,''),(123,'Admin','admin_url','admin/route/ban','','路由禁止',1,''),(124,'Admin','admin_url','admin/route/open','','路由启用',1,''),(125,'Admin','admin_url','admin/route/listorders','','路由排序',1,''),(126,'Admin','admin_url','admin/mailer/default','','邮箱配置',1,''),(127,'Admin','admin_url','admin/mailer/index','','SMTP配置',1,''),(128,'Admin','admin_url','admin/mailer/index_post','','提交配置',1,''),(129,'Admin','admin_url','admin/mailer/active','','注册邮件模板',1,''),(130,'Admin','admin_url','admin/mailer/active_post','','提交模板',1,''),(131,'Admin','admin_url','admin/setting/clearcache','','清除缓存',1,''),(132,'User','admin_url','user/indexadmin/default','','用户管理',1,''),(133,'User','admin_url','user/indexadmin/default1','','用户组',1,''),(134,'User','admin_url','user/indexadmin/index','','本站用户',1,''),(135,'User','admin_url','user/indexadmin/ban','','拉黑会员',1,''),(136,'User','admin_url','user/indexadmin/cancelban','','启用会员',1,''),(137,'User','admin_url','user/oauthadmin/index','','第三方用户',1,''),(138,'User','admin_url','user/oauthadmin/delete','','第三方用户解绑',1,''),(139,'User','admin_url','user/indexadmin/default3','','管理组',1,''),(140,'Admin','admin_url','admin/rbac/index','','角色管理',1,''),(141,'Admin','admin_url','admin/rbac/member','','成员管理',1,''),(142,'Admin','admin_url','admin/rbac/authorize','','权限设置',1,''),(143,'Admin','admin_url','admin/rbac/authorize_post','','提交设置',1,''),(144,'Admin','admin_url','admin/rbac/roleedit','','编辑角色',1,''),(145,'Admin','admin_url','admin/rbac/roleedit_post','','提交编辑',1,''),(146,'Admin','admin_url','admin/rbac/roledelete','','删除角色',1,''),(147,'Admin','admin_url','admin/rbac/roleadd','','添加角色',1,''),(148,'Admin','admin_url','admin/rbac/roleadd_post','','提交添加',1,''),(149,'Admin','admin_url','admin/user/index','','管理员',1,''),(150,'Admin','admin_url','admin/user/delete','','删除管理员',1,''),(151,'Admin','admin_url','admin/user/edit','','管理员编辑',1,''),(152,'Admin','admin_url','admin/user/edit_post','','编辑提交',1,''),(153,'Admin','admin_url','admin/user/add','','管理员添加',1,''),(154,'Admin','admin_url','admin/user/add_post','','添加提交',1,''),(155,'Admin','admin_url','admin/plugin/update','','插件更新',1,''),(156,'Admin','admin_url','admin/storage/index','','文件存储',1,''),(157,'Admin','admin_url','admin/storage/setting_post','','文件存储设置提交',1,''),(158,'Admin','admin_url','admin/slide/ban','','禁用幻灯片',1,''),(159,'Admin','admin_url','admin/slide/cancelban','','启用幻灯片',1,''),(160,'Admin','admin_url','admin/user/ban','','禁用管理员',1,''),(161,'Admin','admin_url','admin/user/cancelban','','启用管理员',1,''),(162,'Demo','admin_url','demo/adminindex/index','','',1,''),(163,'Demo','admin_url','demo/adminindex/last','','',1,''),(166,'Admin','admin_url','admin/mailer/test','','测试邮件',1,''),(167,'Admin','admin_url','admin/setting/upload','','上传设置',1,''),(168,'Admin','admin_url','admin/setting/upload_post','','上传设置提交',1,''),(169,'Portal','admin_url','portal/adminpost/copy','','文章批量复制',1,''),(170,'Admin','admin_url','admin/menu/backup_menu','','备份菜单',1,''),(171,'Admin','admin_url','admin/menu/export_menu_lang','','导出后台菜单多语言包',1,''),(172,'Admin','admin_url','admin/menu/restore_menu','','还原菜单',1,''),(173,'Admin','admin_url','admin/menu/getactions','','导入新菜单',1,''),(174,'Portal','admin_url','portal/adminpost/aid',NULL,'援助公告',1,''),(175,'Api','admin_url','api/guestbookadmin/default',NULL,'留言管理',1,''),(176,'Api','admin_url','api/guestbookadmin/yes',NULL,'已处理留言',1,''),(177,'Portal','admin_url','portal/adminbonus/default',NULL,'系统设置',1,''),(178,'Portal','admin_url','portal/adminbonus/bonusset',NULL,'变量设置',1,''),(179,'Portal','admin_url','portal/adminbonus/extractset',NULL,'提现设置',1,''),(180,'Portal','admin_url','portal/adminorder/default',NULL,'匹配系统',1,''),(181,'Portal','admin_url','portal/adminorder/providehelp',NULL,'提供帮助',1,''),(182,'Portal','admin_url','portal/adminorder/gethelp',NULL,'接受帮助',1,''),(183,'Portal','admin_url','portal/adminorder/providesplit',NULL,'提供拆分',1,''),(184,'Portal','admin_url','portal/adminorder/getsplit',NULL,'接受拆分',1,''),(185,'Portal','admin_url','portal/adminorder/trading',NULL,'交易中的订单',1,''),(186,'Portal','admin_url','portal/adminorder/tradesuccess',NULL,'交易完成的订单',1,''),(187,'Portal','admin_url','portal/adminorder/timeoutpay',NULL,'超时未打款',1,''),(188,'Portal','admin_url','portal/adminorder/timeoutgathering',NULL,'超时未收款',1,''),(189,'Portal','admin_url','portal/adminorder/complainorder',NULL,'投诉订单管理',1,''),(190,'Portal','admin_url','portal/adminuser/code',NULL,'加时卡管理',1,''),(191,'Portal','admin_url','portal/adminuser/makeactivationcode',NULL,'生成加时卡',1,''),(192,'Portal','admin_url','portal/adminuser/activationcode',NULL,'加时卡列表',1,''),(193,'Portal','admin_url','portal/adminuser/default',NULL,'会员管理',1,''),(194,'Portal','admin_url','portal/adminuser/default333',NULL,'会员管理22',1,''),(195,'Portal','admin_url','portal/adminuser/index',NULL,'所有会员',1,''),(196,'Portal','admin_url','portal/adminuser/editmoney',NULL,'房卡操作',1,''),(197,'Portal','admin_url','portal/adminuser/relationship',NULL,'会员关系网',1,''),(198,'Portal','admin_url','portal/adminuser/default22',NULL,'加时卡管理',1,''),(199,'Portal','admin_url','portal/adminuser/turntable',NULL,'幸运大转盘',1,''),(200,'Portal','admin_url','portal/adminplan/index',NULL,'计划管理',1,''),(201,'Portal','admin_url','portal/adminorder/index',NULL,'计划列表',1,''),(202,'Protal','admin_url','protal/adminorder/addplan',NULL,'添加计划',1,''),(203,'Portal','admin_url','portal/adminorder/dd',NULL,'计划管理',1,''),(204,'Portal','admin_url','portal/adminorder/defaultd',NULL,'计划管理',1,''),(205,'Controller','admin_url','controller/adminorder/index',NULL,'Portal',1,''),(206,'Portal','admin_url','portal/adminorder/addplan',NULL,'添加计划',1,''),(207,'Portal','admin_url','portal/adminorder/addoption',NULL,'选项管理',1,''),(208,'Portal','admin_url','portal/adminorder/menuorder',NULL,'选项管理',1,''),(209,'Portal','admin_url','portal/adminbonus/portal/adminbonus/default',NULL,'系统设置',1,''),(210,'Portal','admin_url','portal/adminserver/index',NULL,'服务器管理',1,''),(211,'Portal','admin_url','portal/adminpost/download',NULL,'下载单页',1,''),(212,'Portal','admin_url','portal/adminpage/download',NULL,'下载单页',1,''),(213,'Portal','admin_url','portal/adminyouxi/default',NULL,'游戏管理',1,''),(214,'Portal','admin_url','portal/adminyouxi/typeone',NULL,'游戏种类',1,''),(215,'Portal','admin_url','portal/adminyouxi/typetwo',NULL,'游戏玩法',1,''),(216,'Portal','admin_url','portal/adminyouxi/typeonelist',NULL,'游戏种类',1,''),(217,'Portal','admin_url','portal/adminyouxi/typetwolist',NULL,'游戏玩法',1,''),(218,'Portal','admin_url','portal/adminyouxi/gamelist',NULL,'游戏种类',1,''),(219,'Portal','admin_url','portal/adminyouxi/rulelise',NULL,'游戏玩法',1,''),(220,'Portal','admin_url','portal/adminyouxi/rulelist',NULL,'游戏玩法',1,''),(221,'Portal','admin_url','portal/adminbonus/bhbonus',NULL,'未知',1,''),(222,'Portal','admin_url','portal/adminbonus/bonuspost',NULL,'未知',1,''),(223,'Portal','admin_url','portal/adminbonus/extractpost',NULL,'未知',1,''),(224,'Portal','admin_url','portal/adminmachine/index',NULL,'机器人管理',1,''),(225,'Portal','admin_url','portal/adminuseragent/index',NULL,'代理管理',1,''),(226,'Portal','admin_url','portal/adminmachine/joinroom',NULL,'',1,''),(227,'Portal','admin_url','portal/adminmachine/add',NULL,'',1,'');
/*!40000 ALTER TABLE `jz_auth_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_comments`
--

DROP TABLE IF EXISTS `jz_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_table` varchar(100) NOT NULL COMMENT '评论内容所在表，不带表前缀',
  `post_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论内容 id',
  `url` varchar(255) DEFAULT NULL COMMENT '原文地址',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '发表评论的用户id',
  `to_uid` int(11) NOT NULL DEFAULT '0' COMMENT '被评论的用户id',
  `full_name` varchar(50) DEFAULT NULL COMMENT '评论者昵称',
  `email` varchar(255) DEFAULT NULL COMMENT '评论者邮箱',
  `createtime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '评论时间',
  `content` text NOT NULL COMMENT '评论内容',
  `type` smallint(1) NOT NULL DEFAULT '1' COMMENT '评论类型；1实名评论',
  `parentid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '被回复的评论id',
  `path` varchar(500) DEFAULT NULL,
  `status` smallint(1) NOT NULL DEFAULT '1' COMMENT '状态，1已审核，0未审核',
  PRIMARY KEY (`id`),
  KEY `comment_post_ID` (`post_id`),
  KEY `comment_approved_date_gmt` (`status`),
  KEY `comment_parent` (`parentid`),
  KEY `table_id_status` (`post_table`,`post_id`,`status`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_comments`
--

LOCK TABLES `jz_comments` WRITE;
/*!40000 ALTER TABLE `jz_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `jz_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_common_action_log`
--

DROP TABLE IF EXISTS `jz_common_action_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_common_action_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` bigint(20) DEFAULT '0' COMMENT '用户id',
  `object` varchar(100) DEFAULT NULL COMMENT '访问对象的id,格式：不带前缀的表名+id;如posts1表示xx_posts表里id为1的记录',
  `action` varchar(50) DEFAULT NULL COMMENT '操作名称；格式规定为：应用名+控制器+操作名；也可自己定义格式只要不发生冲突且惟一；',
  `count` int(11) DEFAULT '0' COMMENT '访问次数',
  `last_time` int(11) DEFAULT '0' COMMENT '最后访问的时间戳',
  `ip` varchar(15) DEFAULT NULL COMMENT '访问者最后访问ip',
  PRIMARY KEY (`id`),
  KEY `user_object_action` (`user`,`object`,`action`),
  KEY `user_object_action_ip` (`user`,`object`,`action`,`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_common_action_log`
--

LOCK TABLES `jz_common_action_log` WRITE;
/*!40000 ALTER TABLE `jz_common_action_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `jz_common_action_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_dj_room`
--

DROP TABLE IF EXISTS `jz_dj_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_dj_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room` int(11) NOT NULL,
  `js` int(11) NOT NULL,
  `djxx` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_dj_room`
--

LOCK TABLES `jz_dj_room` WRITE;
/*!40000 ALTER TABLE `jz_dj_room` DISABLE KEYS */;
/*!40000 ALTER TABLE `jz_dj_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_fk_bag`
--

DROP TABLE IF EXISTS `jz_fk_bag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_fk_bag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `send_id` int(11) NOT NULL,
  `get_id` int(11) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `add_time` varchar(50) CHARACTER SET utf8 NOT NULL,
  `end_time` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `mis` varchar(50) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_fk_bag`
--

LOCK TABLES `jz_fk_bag` WRITE;
/*!40000 ALTER TABLE `jz_fk_bag` DISABLE KEYS */;
/*!40000 ALTER TABLE `jz_fk_bag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_game`
--

DROP TABLE IF EXISTS `jz_game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_game` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8 NOT NULL,
  `zt` int(11) NOT NULL,
  `img` text CHARACTER SET utf8 NOT NULL,
  `type` enum('beast','daoyou') NOT NULL DEFAULT 'beast',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_game`
--

LOCK TABLES `jz_game` WRITE;
/*!40000 ALTER TABLE `jz_game` DISABLE KEYS */;
INSERT INTO `jz_game` VALUES (1,'六人斗牛',1,'portal/20171010/59dc6886bc732.png','beast',999),(2,'九人斗牛',1,'portal/20171010/59dc6878138b1.png','beast',888),(3,'三公',2,'portal/20171010/59dc686788be8.png','beast',0),(4,'九人三公',1,'portal/20171010/59dc5e9af062e.jpg','beast',300),(5,'炸金花',1,'portal/20171010/59dc6841ab5f3.png','beast',800),(6,'二八杠',1,'portal/20171010/59dc6831bd75c.png','beast',150),(7,'广东麻将',2,'portal/20171010/59dc682038671.png','beast',0),(8,'斗地主',2,'portal/20171010/59dc680f18e9d.png','beast',0),(9,'斗公牛',2,'portal/20171010/59dc67fbb8cca.png','beast',0),(10,'十二人斗牛',1,'portal/20171019/59e80c2def2e8.png','beast',803),(11,'青龙大厅',2,'','beast',0),(12,'123',2,'','beast',0),(13,'123',2,'','beast',0),(14,'九人斗牛八倍',1,'','beast',802),(15,'十人牛牛',2,'','beast',0),(16,'九人炸金花',1,'','beast',801),(17,'12人吉祥三公',1,'portal/20171227/5a43546f7fef9.png','beast',200),(18,'十人牌九',1,'portal/20180109/5a54d30a7c1aa.jpg','daoyou',0),(19,'十人牛牛',1,'','daoyou',0),(20,'八人大牌九',1,'','daoyou',0),(21,'十人鱼虾蟹',1,'','daoyou',0),(22,'六人牌九',1,'','daoyou',0),(23,'六人牛牛',1,'','daoyou',0),(24,'广东麻将',1,'','daoyou',0),(25,'十人德州扑克',1,'','daoyou',0),(26,'12人鱼虾蟹',1,'','beast',700),(27,'牌九',1,'','beast',599),(29,'跑得快',1,'','beast',0),(30,'21点',1,'','beast',0);
/*!40000 ALTER TABLE `jz_game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_guestbook`
--

DROP TABLE IF EXISTS `jz_guestbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_guestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '前台提交信息，留言、申请等',
  `MA_type` varchar(30) DEFAULT '' COMMENT '数据类型',
  `title` varchar(60) DEFAULT '' COMMENT '留言主题',
  `create_time` datetime DEFAULT NULL COMMENT '提交时间',
  `MA_replyTime` datetime DEFAULT NULL COMMENT '回复时间',
  `MA_dataID` int(11) DEFAULT '0' COMMENT '与其它表关联ID',
  `MA_userID` int(11) DEFAULT '0' COMMENT '与用户表关联ID',
  `user_login` varchar(50) DEFAULT '' COMMENT '留言用户名，管理列表显示',
  `MA_contact` text COMMENT '联系方式',
  `MA_userInfo` text COMMENT '用户其它相关信息',
  `MA_subIP` varchar(50) DEFAULT NULL COMMENT '信息提交IP',
  `type` text COMMENT '其它信息',
  `msg` text COMMENT '用户留言内容',
  `reply` text COMMENT '管理员回复内容',
  `MA_status` smallint(1) DEFAULT '0' COMMENT '审核状态',
  `status` int(8) NOT NULL DEFAULT '0',
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `MA_dataID` (`MA_dataID`),
  KEY `MA_ID` (`id`),
  KEY `MA_userID` (`MA_userID`)
) ENGINE=MyISAM AUTO_INCREMENT=231 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_guestbook`
--

LOCK TABLES `jz_guestbook` WRITE;
/*!40000 ALTER TABLE `jz_guestbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `jz_guestbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_links`
--

DROP TABLE IF EXISTS `jz_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL COMMENT '友情链接地址',
  `link_name` varchar(255) NOT NULL COMMENT '友情链接名称',
  `link_image` varchar(255) DEFAULT NULL COMMENT '友情链接图标',
  `link_target` varchar(25) NOT NULL DEFAULT '_blank' COMMENT '友情链接打开方式',
  `link_description` text NOT NULL COMMENT '友情链接描述',
  `link_status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  `link_rating` int(11) NOT NULL DEFAULT '0' COMMENT '友情链接评级',
  `link_rel` varchar(255) DEFAULT NULL COMMENT '链接与网站的关系',
  `listorder` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_status`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_links`
--

LOCK TABLES `jz_links` WRITE;
/*!40000 ALTER TABLE `jz_links` DISABLE KEYS */;
INSERT INTO `jz_links` VALUES (1,'http://www.thinkcmf.com','ThinkCMF','','_blank','',1,0,'',0);
/*!40000 ALTER TABLE `jz_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_list`
--

DROP TABLE IF EXISTS `jz_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `agent` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `daycard` int(10) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`agent`,`time`) USING BTREE,
  KEY `from_uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户代理表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_list`
--

LOCK TABLES `jz_list` WRITE;
/*!40000 ALTER TABLE `jz_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `jz_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_menu`
--

DROP TABLE IF EXISTS `jz_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_menu` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` smallint(6) unsigned NOT NULL DEFAULT '0',
  `app` varchar(30) NOT NULL DEFAULT '' COMMENT '应用名称app',
  `model` varchar(30) NOT NULL DEFAULT '' COMMENT '控制器',
  `action` varchar(50) NOT NULL DEFAULT '' COMMENT '操作名称',
  `data` varchar(50) NOT NULL DEFAULT '' COMMENT '额外参数',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '菜单类型  1：权限认证+菜单；0：只作为菜单',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态，1显示，0不显示',
  `name` varchar(5000) NOT NULL COMMENT '菜单名称',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序ID',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `parentid` (`parentid`),
  KEY `model` (`model`)
) ENGINE=MyISAM AUTO_INCREMENT=236 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_menu`
--

LOCK TABLES `jz_menu` WRITE;
/*!40000 ALTER TABLE `jz_menu` DISABLE KEYS */;
INSERT INTO `jz_menu` VALUES (1,0,'Admin','Content','default','',0,0,'文章管理','th','',30),(4,1,'Comment','Commentadmin','index','',1,0,'评论管理','','',0),(5,4,'Comment','Commentadmin','delete','',1,0,'删除评论','','',0),(6,4,'Comment','Commentadmin','check','',1,0,'评论审核','','',0),(7,1,'Portal','AdminPost','index','',1,0,'新闻公告','','',1),(8,7,'Portal','AdminPost','listorders','',1,0,'文章排序','','',0),(9,7,'Portal','AdminPost','top','',1,0,'文章置顶','','',0),(10,7,'Portal','AdminPost','recommend','',1,0,'文章推荐','','',0),(11,7,'Portal','AdminPost','move','',1,0,'批量移动','','',1000),(12,7,'Portal','AdminPost','check','',1,0,'文章审核','','',1000),(13,7,'Portal','AdminPost','delete','',1,0,'删除文章','','',1000),(14,7,'Portal','AdminPost','edit','',1,0,'编辑文章','','',1000),(15,14,'Portal','AdminPost','edit_post','',1,0,'提交编辑','','',0),(16,7,'Portal','AdminPost','add','',1,0,'添加文章','','',1000),(17,16,'Portal','AdminPost','add_post','',1,0,'提交添加','','',0),(18,1,'Portal','AdminTerm','index','',0,0,'分类管理','','',2),(19,18,'Portal','AdminTerm','listorders','',1,0,'文章分类排序','','',0),(20,18,'Portal','AdminTerm','delete','',1,0,'删除分类','','',1000),(21,18,'Portal','AdminTerm','edit','',1,0,'编辑分类','','',1000),(22,21,'Portal','AdminTerm','edit_post','',1,0,'提交编辑','','',0),(23,18,'Portal','AdminTerm','add','',1,1,'添加分类','','',1000),(24,23,'Portal','AdminTerm','add_post','',1,1,'提交添加','','',0),(25,1,'Portal','AdminPage','index','',1,0,'页面管理','','',3),(26,25,'Portal','AdminPage','listorders','',1,0,'页面排序','','',0),(27,25,'Portal','AdminPage','delete','',1,0,'删除页面','','',1000),(28,25,'Portal','AdminPage','edit','',1,0,'编辑页面','','',1000),(29,28,'Portal','AdminPage','edit_post','',1,0,'提交编辑','','',0),(30,25,'Portal','AdminPage','add','',1,1,'添加页面','','',1000),(31,30,'Portal','AdminPage','add_post','',1,0,'提交添加','','',0),(32,1,'Admin','Recycle','default','',1,0,'回收站','','',4),(33,32,'Portal','AdminPost','recyclebin','',1,1,'文章回收','','',0),(34,33,'Portal','AdminPost','restore','',1,0,'文章还原','','',1000),(35,33,'Portal','AdminPost','clean','',1,0,'彻底删除','','',1000),(36,32,'Portal','AdminPage','recyclebin','',1,0,'页面回收','','',1),(37,36,'Portal','AdminPage','clean','',1,0,'彻底删除','','',1000),(38,36,'Portal','AdminPage','restore','',1,0,'页面还原','','',1000),(39,0,'Admin','Extension','default','',0,0,'扩展工具','cloud','',40),(40,0,'Admin','Backup','default','',1,0,'备份管理','database','',3),(41,40,'Admin','Backup','restore','',1,1,'数据还原','','',0),(42,40,'Admin','Backup','index','',1,1,'数据备份','','',0),(43,42,'Admin','Backup','index_post','',1,0,'提交数据备份','','',0),(44,40,'Admin','Backup','download','',1,0,'下载备份','','',1000),(45,40,'Admin','Backup','del_backup','',1,0,'删除备份','','',1000),(46,40,'Admin','Backup','import','',1,0,'数据备份导入','','',1000),(47,39,'Admin','Plugin','index','',1,1,'插件管理','','',0),(48,47,'Admin','Plugin','toggle','',1,0,'插件启用切换','','',0),(49,47,'Admin','Plugin','setting','',1,0,'插件设置','','',0),(50,49,'Admin','Plugin','setting_post','',1,0,'插件设置提交','','',0),(51,47,'Admin','Plugin','install','',1,1,'插件安装','','',0),(52,47,'Admin','Plugin','uninstall','',1,0,'插件卸载','','',0),(53,39,'Admin','Slide','default','',1,1,'幻灯片','','',1),(54,53,'Admin','Slide','index','',1,1,'幻灯片管理','','',0),(55,54,'Admin','Slide','listorders','',1,0,'幻灯片排序','','',0),(56,54,'Admin','Slide','toggle','',1,0,'幻灯片显示切换','','',0),(57,54,'Admin','Slide','delete','',1,0,'删除幻灯片','','',1000),(58,54,'Admin','Slide','edit','',1,0,'编辑幻灯片','','',1000),(59,58,'Admin','Slide','edit_post','',1,0,'提交编辑','','',0),(60,54,'Admin','Slide','add','',1,0,'添加幻灯片','','',1000),(61,60,'Admin','Slide','add_post','',1,0,'提交添加','','',0),(62,53,'Admin','Slidecat','index','',1,1,'幻灯片分类','','',0),(63,62,'Admin','Slidecat','delete','',1,0,'删除分类','','',1000),(64,62,'Admin','Slidecat','edit','',1,0,'编辑分类','','',1000),(65,64,'Admin','Slidecat','edit_post','',1,0,'提交编辑','','',0),(66,62,'Admin','Slidecat','add','',1,0,'添加分类','','',1000),(67,66,'Admin','Slidecat','add_post','',1,0,'提交添加','','',0),(68,39,'Admin','Ad','index','',1,1,'网站广告','','',2),(69,68,'Admin','Ad','toggle','',1,0,'广告显示切换','','',0),(70,68,'Admin','Ad','delete','',1,0,'删除广告','','',1000),(71,68,'Admin','Ad','edit','',1,0,'编辑广告','','',1000),(72,71,'Admin','Ad','edit_post','',1,0,'提交编辑','','',0),(73,68,'Admin','Ad','add','',1,0,'添加广告','','',1000),(74,73,'Admin','Ad','add_post','',1,0,'提交添加','','',0),(75,39,'Admin','Link','index','',0,1,'友情链接','','',3),(76,75,'Admin','Link','listorders','',1,0,'友情链接排序','','',0),(77,75,'Admin','Link','toggle','',1,0,'友链显示切换','','',0),(78,75,'Admin','Link','delete','',1,0,'删除友情链接','','',1000),(79,75,'Admin','Link','edit','',1,0,'编辑友情链接','','',1000),(80,79,'Admin','Link','edit_post','',1,0,'提交编辑','','',0),(81,75,'Admin','Link','add','',1,0,'添加友情链接','','',1000),(82,81,'Admin','Link','add_post','',1,0,'提交添加','','',0),(83,39,'Api','Oauthadmin','setting','',1,1,'第三方登陆','leaf','',4),(84,83,'Api','Oauthadmin','setting_post','',1,0,'提交设置','','',0),(85,0,'Admin','Menu','default','',1,1,'菜单管理','list','',20),(86,85,'Admin','Navcat','default1','',1,1,'前台菜单','','',0),(87,86,'Admin','Nav','index','',1,1,'菜单管理','','',0),(88,87,'Admin','Nav','listorders','',1,0,'前台导航排序','','',0),(89,87,'Admin','Nav','delete','',1,0,'删除菜单','','',1000),(90,87,'Admin','Nav','edit','',1,0,'编辑菜单','','',1000),(91,90,'Admin','Nav','edit_post','',1,0,'提交编辑','','',0),(92,87,'Admin','Nav','add','',1,0,'添加菜单','','',1000),(93,92,'Admin','Nav','add_post','',1,0,'提交添加','','',0),(94,86,'Admin','Navcat','index','',1,1,'菜单分类','','',0),(95,94,'Admin','Navcat','delete','',1,0,'删除分类','','',1000),(96,94,'Admin','Navcat','edit','',1,0,'编辑分类','','',1000),(97,96,'Admin','Navcat','edit_post','',1,0,'提交编辑','','',0),(98,94,'Admin','Navcat','add','',1,0,'添加分类','','',1000),(99,98,'Admin','Navcat','add_post','',1,0,'提交添加','','',0),(100,85,'Admin','Menu','index','',1,1,'后台菜单','','',0),(101,100,'Admin','Menu','add','',1,1,'添加菜单','','',0),(102,101,'Admin','Menu','add_post','',1,0,'提交添加','','',0),(103,100,'Admin','Menu','listorders','',1,0,'后台菜单排序','','',0),(104,100,'Admin','Menu','export_menu','',1,0,'菜单备份','','',1000),(105,100,'Admin','Menu','edit','',1,0,'编辑菜单','','',1000),(106,105,'Admin','Menu','edit_post','',1,0,'提交编辑','','',0),(107,100,'Admin','Menu','delete','',1,0,'删除菜单','','',1000),(108,100,'Admin','Menu','lists','',1,0,'所有菜单','','',1000),(109,0,'Admin','Setting','default','',0,1,'设置','cogs','',0),(110,109,'Admin','Setting','userdefault','',0,1,'个人信息','','',0),(111,110,'Admin','User','userinfo','',1,1,'修改信息','','',0),(112,111,'Admin','User','userinfo_post','',1,0,'修改信息提交','','',0),(113,110,'Admin','Setting','password','',1,1,'修改密码','','',0),(114,113,'Admin','Setting','password_post','',1,1,'提交修改','','',0),(115,109,'Admin','Setting','site','',1,1,'网站信息','','',0),(116,115,'Admin','Setting','site_post','',1,0,'提交修改','','',0),(117,115,'Admin','Route','index','',1,0,'路由列表','','',0),(118,115,'Admin','Route','add','',1,0,'路由添加','','',0),(119,118,'Admin','Route','add_post','',1,0,'路由添加提交','','',0),(120,115,'Admin','Route','edit','',1,0,'路由编辑','','',0),(121,120,'Admin','Route','edit_post','',1,0,'路由编辑提交','','',0),(122,115,'Admin','Route','delete','',1,0,'路由删除','','',0),(123,115,'Admin','Route','ban','',1,0,'路由禁止','','',0),(124,115,'Admin','Route','open','',1,0,'路由启用','','',0),(125,115,'Admin','Route','listorders','',1,0,'路由排序','','',0),(126,109,'Admin','Mailer','default','',1,0,'邮箱配置','','',0),(127,126,'Admin','Mailer','index','',1,1,'SMTP配置','','',0),(128,127,'Admin','Mailer','index_post','',1,0,'提交配置','','',0),(129,126,'Admin','Mailer','active','',1,1,'注册邮件模板','','',0),(130,129,'Admin','Mailer','active_post','',1,0,'提交模板','','',0),(131,109,'Admin','Setting','clearcache','',1,0,'清除缓存','','',1),(132,0,'User','Indexadmin','default','',1,1,'用户管理','group','',10),(133,132,'User','Indexadmin','default1','',1,1,'用户组','','',0),(134,133,'User','Indexadmin','index','',1,1,'本站用户','leaf','',0),(135,134,'User','Indexadmin','ban','',1,0,'拉黑会员','','',0),(136,134,'User','Indexadmin','cancelban','',1,0,'启用会员','','',0),(137,133,'User','Oauthadmin','index','',1,1,'第三方用户','leaf','',0),(138,137,'User','Oauthadmin','delete','',1,0,'第三方用户解绑','','',0),(139,109,'User','Indexadmin','default3','',1,1,'管理组','tty','',0),(140,139,'Admin','Rbac','index','',1,0,'角色管理','','',0),(141,140,'Admin','Rbac','member','',1,1,'成员管理','','',1000),(142,140,'Admin','Rbac','authorize','',1,0,'权限设置','','',1000),(143,142,'Admin','Rbac','authorize_post','',1,0,'提交设置','','',0),(144,140,'Admin','Rbac','roleedit','',1,0,'编辑角色','','',1000),(145,144,'Admin','Rbac','roleedit_post','',1,0,'提交编辑','','',0),(146,140,'Admin','Rbac','roledelete','',1,1,'删除角色','','',1000),(147,140,'Admin','Rbac','roleadd','',1,1,'添加角色','','',1000),(148,147,'Admin','Rbac','roleadd_post','',1,0,'提交添加','','',0),(149,139,'Admin','User','index','',1,1,'管理员','','',0),(150,149,'Admin','User','delete','',1,0,'删除管理员','','',1000),(151,149,'Admin','User','edit','',1,1,'管理员编辑','','',1000),(152,151,'Admin','User','edit_post','',1,0,'编辑提交','','',0),(153,149,'Admin','User','add','',1,0,'管理员添加','','',1000),(154,153,'Admin','User','add_post','',1,0,'添加提交','','',0),(155,47,'Admin','Plugin','update','',1,0,'插件更新','','',0),(156,109,'Admin','Storage','index','',1,0,'文件存储','','',0),(157,156,'Admin','Storage','setting_post','',1,0,'文件存储设置提交','','',0),(158,54,'Admin','Slide','ban','',1,0,'禁用幻灯片','','',0),(159,54,'Admin','Slide','cancelban','',1,0,'启用幻灯片','','',0),(160,149,'Admin','User','ban','',1,0,'禁用管理员','','',0),(161,149,'Admin','User','cancelban','',1,1,'启用管理员','','',0),(166,127,'Admin','Mailer','test','',1,0,'测试邮件','','',0),(167,109,'Admin','Setting','upload','',1,0,'上传设置','','',0),(168,167,'Admin','Setting','upload_post','',1,0,'上传设置提交','','',0),(169,7,'Portal','AdminPost','copy','',1,0,'文章批量复制','','',0),(174,100,'Admin','Menu','backup_menu','',1,0,'备份菜单','','',0),(175,100,'Admin','Menu','export_menu_lang','',1,0,'导出后台菜单多语言包','','',0),(176,100,'Admin','Menu','restore_menu','',1,0,'还原菜单','','',0),(177,100,'Admin','Menu','getactions','',1,0,'导入新菜单','','',0),(187,1,'Portal','AdminPost','aid','',1,0,'援助公告','','',0),(188,0,'Portal','AdminUser','default','',1,1,'会员管理','group','',0),(189,188,'Portal','AdminUser','index','',1,1,'所有会员','','',0),(190,188,'Portal','AdminUser','editMoney','',1,1,'房卡操作','','',0),(191,188,'Portal','AdminUser','relationship','',1,0,'会员关系网','','',0),(221,0,'Portal','AdminBonus','default','',1,1,'系统设置','plug','',255),(222,221,'Portal','AdminBonus','bonusSet','',1,1,'变量设置','','',0),(223,221,'Portal','AdminServer','index','',1,1,'服务器管理','','',0),(224,1,'Portal','AdminPage','download','id=1',1,1,'下载单页','','',0),(225,0,'Portal','AdminYouxi','default','',1,1,'游戏管理','futbol-o','',0),(226,225,'Portal','AdminYouxi','GameList','',1,1,'游戏种类','','',0),(227,225,'Portal','AdminYouxi','RuleList','',1,1,'游戏玩法','','',0),(228,221,'Portal','AdminBonus','extractSet','',1,1,'微信设置','','',0),(232,188,'Portal','AdminMachine','index','',1,1,'机器人管理','','',0);
/*!40000 ALTER TABLE `jz_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_nav`
--

DROP TABLE IF EXISTS `jz_nav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL COMMENT '导航分类 id',
  `parentid` int(11) NOT NULL COMMENT '导航父 id',
  `label` varchar(255) NOT NULL COMMENT '导航标题',
  `target` varchar(50) DEFAULT NULL COMMENT '打开方式',
  `href` varchar(255) NOT NULL COMMENT '导航链接',
  `icon` varchar(255) NOT NULL COMMENT '导航图标',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  `listorder` int(6) DEFAULT '0' COMMENT '排序',
  `path` varchar(255) NOT NULL DEFAULT '0' COMMENT '层级关系',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_nav`
--

LOCK TABLES `jz_nav` WRITE;
/*!40000 ALTER TABLE `jz_nav` DISABLE KEYS */;
INSERT INTO `jz_nav` VALUES (1,1,0,'首页','','home','',1,0,'0-1'),(2,1,0,'列表演示','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"1\";}}','',1,0,'0-2'),(3,1,0,'瀑布流','','a:2:{s:6:\"action\";s:17:\"Portal/List/index\";s:5:\"param\";a:1:{s:2:\"id\";s:1:\"2\";}}','',1,0,'0-3');
/*!40000 ALTER TABLE `jz_nav` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_nav_cat`
--

DROP TABLE IF EXISTS `jz_nav_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_nav_cat` (
  `navcid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '导航分类名',
  `active` int(1) NOT NULL DEFAULT '1' COMMENT '是否为主菜单，1是，0不是',
  `remark` text COMMENT '备注',
  PRIMARY KEY (`navcid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_nav_cat`
--

LOCK TABLES `jz_nav_cat` WRITE;
/*!40000 ALTER TABLE `jz_nav_cat` DISABLE KEYS */;
INSERT INTO `jz_nav_cat` VALUES (1,'主导航',1,'主导航');
/*!40000 ALTER TABLE `jz_nav_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_oauth_user`
--

DROP TABLE IF EXISTS `jz_oauth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_oauth_user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `from` varchar(20) NOT NULL COMMENT '用户来源key',
  `name` varchar(30) NOT NULL COMMENT '第三方昵称',
  `head_img` varchar(200) NOT NULL COMMENT '头像',
  `uid` int(20) NOT NULL COMMENT '关联的本站用户id',
  `create_time` datetime NOT NULL COMMENT '绑定时间',
  `last_login_time` datetime NOT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(16) NOT NULL COMMENT '最后登录ip',
  `login_times` int(6) NOT NULL COMMENT '登录次数',
  `status` tinyint(2) NOT NULL,
  `access_token` varchar(512) NOT NULL,
  `expires_date` int(11) NOT NULL COMMENT 'access_token过期时间',
  `openid` varchar(40) NOT NULL COMMENT '第三方用户id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_oauth_user`
--

LOCK TABLES `jz_oauth_user` WRITE;
/*!40000 ALTER TABLE `jz_oauth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `jz_oauth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_options`
--

DROP TABLE IF EXISTS `jz_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL COMMENT '配置名',
  `option_value` longtext NOT NULL COMMENT '配置值',
  `autoload` int(2) NOT NULL DEFAULT '1' COMMENT '是否自动加载',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_options`
--

LOCK TABLES `jz_options` WRITE;
/*!40000 ALTER TABLE `jz_options` DISABLE KEYS */;
INSERT INTO `jz_options` VALUES (1,'member_email_active','{\"title\":\"ThinkCMF\\u90ae\\u4ef6\\u6fc0\\u6d3b\\u901a\\u77e5.\",\"template\":\"<p>\\u672c\\u90ae\\u4ef6\\u6765\\u81ea<a href=\\\"http:\\/\\/www.thinkcmf.com\\\">ThinkCMF<\\/a><br\\/><br\\/>&nbsp; &nbsp;<strong>---------------<strong style=\\\"white-space: normal;\\\">---<\\/strong><\\/strong><br\\/>&nbsp; &nbsp;<strong>\\u5e10\\u53f7\\u6fc0\\u6d3b\\u8bf4\\u660e<\\/strong><br\\/>&nbsp; &nbsp;<strong>---------------<strong style=\\\"white-space: normal;\\\">---<\\/strong><\\/strong><br\\/><br\\/>&nbsp; &nbsp; \\u5c0a\\u656c\\u7684<span style=\\\"FONT-SIZE: 16px; FONT-FAMILY: Arial; COLOR: rgb(51,51,51); LINE-HEIGHT: 18px; BACKGROUND-COLOR: rgb(255,255,255)\\\">#username#\\uff0c\\u60a8\\u597d\\u3002<\\/span>\\u5982\\u679c\\u60a8\\u662fThinkCMF\\u7684\\u65b0\\u7528\\u6237\\uff0c\\u6216\\u5728\\u4fee\\u6539\\u60a8\\u7684\\u6ce8\\u518cEmail\\u65f6\\u4f7f\\u7528\\u4e86\\u672c\\u5730\\u5740\\uff0c\\u6211\\u4eec\\u9700\\u8981\\u5bf9\\u60a8\\u7684\\u5730\\u5740\\u6709\\u6548\\u6027\\u8fdb\\u884c\\u9a8c\\u8bc1\\u4ee5\\u907f\\u514d\\u5783\\u573e\\u90ae\\u4ef6\\u6216\\u5730\\u5740\\u88ab\\u6ee5\\u7528\\u3002<br\\/>&nbsp; &nbsp; \\u60a8\\u53ea\\u9700\\u70b9\\u51fb\\u4e0b\\u9762\\u7684\\u94fe\\u63a5\\u5373\\u53ef\\u6fc0\\u6d3b\\u60a8\\u7684\\u5e10\\u53f7\\uff1a<br\\/>&nbsp; &nbsp; <a title=\\\"\\\" href=\\\"http:\\/\\/#link#\\\" target=\\\"_self\\\">http:\\/\\/#link#<\\/a><br\\/>&nbsp; &nbsp; (\\u5982\\u679c\\u4e0a\\u9762\\u4e0d\\u662f\\u94fe\\u63a5\\u5f62\\u5f0f\\uff0c\\u8bf7\\u5c06\\u8be5\\u5730\\u5740\\u624b\\u5de5\\u7c98\\u8d34\\u5230\\u6d4f\\u89c8\\u5668\\u5730\\u5740\\u680f\\u518d\\u8bbf\\u95ee)<br\\/>&nbsp; &nbsp; \\u611f\\u8c22\\u60a8\\u7684\\u8bbf\\u95ee\\uff0c\\u795d\\u60a8\\u4f7f\\u7528\\u6109\\u5feb\\uff01<br\\/><br\\/>&nbsp; &nbsp; \\u6b64\\u81f4<br\\/>&nbsp; &nbsp; ThinkCMF \\u7ba1\\u7406\\u56e2\\u961f.<\\/p>\"}',1),(2,'site_options','{\"site_name\":\"668\\u6e90\\u7801\\u7f51\\u4e0b\\u8f7d\\uff1awww.668yuanma.com\",\"site_admin_url_password\":\"\",\"site_tpl\":\"wdfms\",\"site_adminstyle\":\"bluesky\",\"site_icp\":\"\",\"site_admin_email\":\"admin@jiazhou.com\",\"site_tongji\":\"\",\"site_copyright\":\"668\\u6e90\\u7801\\u7f51\\u4e0b\\u8f7d\\uff1awww.668yuanma.com\",\"site_seo_title\":\"668\\u6e90\\u7801\\u7f51\\u4e0b\\u8f7d\\uff1awww.668yuanma.com\",\"site_seo_keywords\":\"668\\u6e90\\u7801\\u7f51\\u4e0b\\u8f7d\\uff1awww.668yuanma.com\",\"site_seo_description\":\"668\\u6e90\\u7801\\u7f51\\u4e0b\\u8f7d\\uff1awww.668yuanma.com\",\"urlmode\":\"1\",\"html_suffix\":\"\",\"comment_time_interval\":\"60\"}',1),(3,'cmf_settings','{\"banned_usernames\":\"\"}',1),(4,'cdn_settings','{\"cdn_static_root\":\"\"}',1),(10,'aid','',1),(11,'extract','{\"weixin_appid\":\"wx72b4e89421b13340\",\"weixin_key\":\"dfbb26ca885383ec407e4255ca6ecc98\",\"access_token\":\"17_QdAf0XfQEUmJ33wb8Zl8po6eUbjwf-ZjTrQ9WYbf4pWUCAqqVk1yJDxSP2X5enRVnTtIWjM9A1n5iJCeEEeSnFKXyRY8PrLvN-ayU3cuS1nNZRGsIGAG2dTYCbgINBvULjPOnFBR7zr65MBwCEYiADAMOI\",\"access_token_time\":\"1539042149\",\"jsapi_ticket\":\"HoagFKDcsGMVCIY2vOjf9nu3Fayx473UjUqI8yupqcY_O9PTurdKMbDXiX5nd6fqF9-hNwdJWB_QBxYfVtZDsA\",\"jsapi_ticket_time\":\"1539020635\",\"skin_name\":\"index-\\u767d\\u864e,nvwa-\\u5973\\u5a32,baihu-\\u767d\\u864e,qinglong-\\u9752\\u9f99,zhuque-\\u6731\\u96c0,xuanwu-\\u7384\\u6b66,qilin-\\u9e92\\u9e9f,dasheng-\\u5927\\u5723,dasheng2-\\u8054\\u5408,dasheng3-\\u98de\\u9e70,dasheng4-518,11-\\u9e92\\u9e9f,26-\\u9752\\u9f99,25-\\u767d\\u864e,16-\\u6731\\u96c0,31-\\u7384\\u6b66,22-\\u8054\\u5408,40-\\u5973\\u5a32,38-\\u76d8\\u53e4,46-\\u51e4\\u51f0,45-\\u4e5d\\u5c3e,41-\\u7965\\u4e91,42-\\u9f99\\u73e0,39-\\u9f99\\u9a6c,43-\\u7cbe\\u536b,47-\\u795e\\u9f99,48-\\u8f69\\u8f95\"}',1),(12,'bonus','{\"zxonline\":0,\"zronline\":0,\"jronline\":0,\"gxtime\":\"2017-09-16 16:48:48\",\"ggbody\":\"\\u6e90\\u7801\\u793e\\u533awww.cxnd.com\",\"sfgg\":\"1\",\"gj_ggtitle\":\"\\u6e90\\u7801\\u793e\\u533awww.cxnd.com\",\"gj_ggbody\":\"\\u56e2\\u961f\\u7248\\u4e3a\\u514d\\u8d39\\u63d0\\u4f9b\\uff0c\\u5982\\u679c\\u79c1\\u4e0b\\u4e70\\u4f1a\\u5458\\u8d26\\u53f7\\u7684\\uff0c\\u5956\\u52b1\\u4e3e\\u62a5\\u8005\\uff0c\\u5c01\\u56e2\\u961f\\u7ba1\\u7406\\u8d26\\u53f7\\u3002\",\"ggtitle\":\"\\u6e90\\u7801\\u793e\\u533awww.cxnd.com\",\"sfts\":0,\"ipmax\":\"1\",\"url\":\"www.cxnd.com\",\"xzhs\":\"21\",\"sj\":\"1\",\"tsxx\":\"\",\"blts\":\"3\",\"thumb\":\"\",\"img\":\"portal\\/20170629\\/5954f029c37bb.jpg\",\"qq\":\"0\",\"\":null}',1);
/*!40000 ALTER TABLE `jz_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_order_guestbook`
--

DROP TABLE IF EXISTS `jz_order_guestbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_order_guestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(14) DEFAULT NULL,
  `user_login` varchar(14) DEFAULT NULL,
  `msg` text,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=360 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_order_guestbook`
--

LOCK TABLES `jz_order_guestbook` WRITE;
/*!40000 ALTER TABLE `jz_order_guestbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `jz_order_guestbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_plugins`
--

DROP TABLE IF EXISTS `jz_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_plugins` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(50) NOT NULL COMMENT '插件名，英文',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '插件名称',
  `description` text COMMENT '插件描述',
  `type` tinyint(2) DEFAULT '0' COMMENT '插件类型, 1:网站；8;微信',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态；1开启；',
  `config` text COMMENT '插件配置',
  `hooks` varchar(255) DEFAULT NULL COMMENT '实现的钩子;以“，”分隔',
  `has_admin` tinyint(2) DEFAULT '0' COMMENT '插件是否有后台管理界面',
  `author` varchar(50) DEFAULT '' COMMENT '插件作者',
  `version` varchar(20) DEFAULT '' COMMENT '插件版本号',
  `createtime` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '插件安装时间',
  `listorder` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_plugins`
--

LOCK TABLES `jz_plugins` WRITE;
/*!40000 ALTER TABLE `jz_plugins` DISABLE KEYS */;
/*!40000 ALTER TABLE `jz_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_posts`
--

DROP TABLE IF EXISTS `jz_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned DEFAULT '0' COMMENT '发表者id',
  `post_keywords` varchar(150) NOT NULL COMMENT 'seo keywords',
  `post_source` varchar(150) DEFAULT NULL COMMENT '转载文章的来源',
  `post_date` datetime DEFAULT '2000-01-01 00:00:00' COMMENT 'post创建日期，永久不变，一般不显示给用户',
  `post_content` longtext COMMENT 'post内容',
  `post_title` text COMMENT 'post标题',
  `post_excerpt` text COMMENT 'post摘要',
  `post_status` int(2) DEFAULT '1' COMMENT 'post状态，1已审核，0未审核,3删除',
  `comment_status` int(2) DEFAULT '1' COMMENT '评论状态，1允许，0不允许',
  `post_modified` datetime DEFAULT '2000-01-01 00:00:00' COMMENT 'post更新时间，可在前台修改，显示给用户',
  `post_content_filtered` longtext,
  `post_parent` bigint(20) unsigned DEFAULT '0' COMMENT 'post的父级post id,表示post层级关系',
  `post_type` int(2) DEFAULT '1' COMMENT 'post类型，1文章,2页面',
  `post_mime_type` varchar(100) DEFAULT '',
  `comment_count` bigint(20) DEFAULT '0',
  `smeta` text COMMENT 'post的扩展字段，保存相关扩展属性，如缩略图；格式为json',
  `post_hits` int(11) DEFAULT '0' COMMENT 'post点击数，查看数',
  `post_like` int(11) DEFAULT '0' COMMENT 'post赞数',
  `istop` tinyint(1) NOT NULL DEFAULT '0' COMMENT '置顶 1置顶； 0不置顶',
  `recommended` tinyint(1) NOT NULL DEFAULT '0' COMMENT '推荐 1推荐 0不推荐',
  PRIMARY KEY (`id`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`id`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `post_date` (`post_date`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_posts`
--

LOCK TABLES `jz_posts` WRITE;
/*!40000 ALTER TABLE `jz_posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `jz_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_qun`
--

DROP TABLE IF EXISTS `jz_qun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_qun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `open` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `zt` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_qun`
--

LOCK TABLES `jz_qun` WRITE;
/*!40000 ALTER TABLE `jz_qun` DISABLE KEYS */;
/*!40000 ALTER TABLE `jz_qun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_role`
--

DROP TABLE IF EXISTS `jz_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '角色名称',
  `pid` smallint(6) DEFAULT NULL COMMENT '父角色ID',
  `status` tinyint(1) unsigned DEFAULT NULL COMMENT '状态',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `listorder` int(3) NOT NULL DEFAULT '0' COMMENT '排序字段',
  PRIMARY KEY (`id`),
  KEY `parentId` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_role`
--

LOCK TABLES `jz_role` WRITE;
/*!40000 ALTER TABLE `jz_role` DISABLE KEYS */;
INSERT INTO `jz_role` VALUES (1,'超级管理员',0,1,'拥有网站最高管理员权限！',1329633709,1329633709,0),(5,'客服',NULL,1,'',1480831157,0,0);
/*!40000 ALTER TABLE `jz_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_role_user`
--

DROP TABLE IF EXISTS `jz_role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_role_user` (
  `role_id` int(11) unsigned DEFAULT '0' COMMENT '角色 id',
  `user_id` int(11) DEFAULT '0' COMMENT '用户id',
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_role_user`
--

LOCK TABLES `jz_role_user` WRITE;
/*!40000 ALTER TABLE `jz_role_user` DISABLE KEYS */;
INSERT INTO `jz_role_user` VALUES (5,30),(1,30);
/*!40000 ALTER TABLE `jz_role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_room`
--

DROP TABLE IF EXISTS `jz_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `dk` int(11) NOT NULL,
  `rule` text CHARACTER SET utf8 NOT NULL,
  `user` text CHARACTER SET utf8,
  `time` int(11) NOT NULL,
  `online` int(11) NOT NULL,
  `zt` int(11) NOT NULL,
  `zjs` int(11) NOT NULL DEFAULT '0',
  `js` int(11) NOT NULL DEFAULT '0',
  `fk` int(11) NOT NULL,
  `uid` int(11) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `overxx` text,
  `roomid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_room`
--

LOCK TABLES `jz_room` WRITE;
/*!40000 ALTER TABLE `jz_room` DISABLE KEYS */;
/*!40000 ALTER TABLE `jz_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_route`
--

DROP TABLE IF EXISTS `jz_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_route` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `full_url` varchar(255) DEFAULT NULL COMMENT '完整url， 如：portal/list/index?id=1',
  `url` varchar(255) DEFAULT NULL COMMENT '实际显示的url',
  `listorder` int(5) DEFAULT '0' COMMENT '排序，优先级，越小优先级越高',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态，1：启用 ;0：不启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_route`
--

LOCK TABLES `jz_route` WRITE;
/*!40000 ALTER TABLE `jz_route` DISABLE KEYS */;
/*!40000 ALTER TABLE `jz_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_rule`
--

DROP TABLE IF EXISTS `jz_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_rule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `df` text CHARACTER SET utf8 COMMENT '底分',
  `gz` text CHARACTER SET utf8 COMMENT '单选规则',
  `gz2` text CHARACTER SET utf8 COMMENT '多选规则',
  `px` text CHARACTER SET utf8 COMMENT '牌型',
  `js` text CHARACTER SET utf8 COMMENT '局数',
  `sz` text CHARACTER SET utf8 COMMENT '上庄',
  `cm` text CHARACTER SET utf8 COMMENT '筹码',
  `sx` text CHARACTER SET utf8 COMMENT '上限',
  `zm` text CHARACTER SET utf8 COMMENT '抓马',
  `gp` text CHARACTER SET utf8 COMMENT '鬼牌',
  `gd` text CHARACTER SET utf8 COMMENT '锅底',
  `zd` text CHARACTER SET utf8 NOT NULL COMMENT '最大下注',
  `type` int(11) NOT NULL DEFAULT '0',
  `zt` int(11) NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL DEFAULT '0',
  `bp` text CHARACTER SET utf8 COMMENT '比牌',
  `kp` text CHARACTER SET utf8 COMMENT '看牌',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_rule`
--

LOCK TABLES `jz_rule` WRITE;
/*!40000 ALTER TABLE `jz_rule` DISABLE KEYS */;
INSERT INTO `jz_rule` VALUES (1,'牛牛上庄','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','四花牛(4倍),五花牛(5倍),顺子牛(6倍),同花牛(6倍),葫芦牛(6倍),炸弹牛(6倍),同花顺牛(7倍),五小牛(8倍)','10局X1房卡,20局X2房卡','','','','','','','',1,1,1,NULL,NULL),(2,'固定庄家','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','四花牛(4倍),五花牛(5倍),顺子牛(6倍),同花牛(6倍),葫芦牛(6倍),炸弹牛(6倍),同花顺牛(7倍),五小牛(8倍)','10局X1房卡,20局X2房卡','无,100,300,500','','','','','','',1,1,0,NULL,NULL),(3,'自由抢庄','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','四花牛(4倍),五花牛(5倍),顺子牛(6倍),同花牛(6倍),葫芦牛(6倍),炸弹牛(6倍),同花顺牛(7倍),五小牛(8倍)','10局X1房卡,20局X2房卡','','','','','','','',1,1,0,NULL,NULL),(4,'明牌抢庄','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','四花牛(4倍),五花牛(5倍),顺子牛(6倍),同花牛(6倍),葫芦牛(6倍),炸弹牛(6倍),同花顺牛(7倍),五小牛(8倍)','10局X1房卡,20局X2房卡','','','','','','','',1,1,0,NULL,NULL),(5,'通比牛牛','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','四花牛(4倍),五花牛(5倍),顺子牛(6倍),同花牛(6倍),葫芦牛(6倍),炸弹牛(6倍),同花顺牛(7倍),五小牛(8倍)','10局X1房卡,20局X2房卡','','','','','','','',1,1,0,NULL,NULL),(6,'牛牛上庄','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','四花牛(4倍),五花牛(5倍),顺子牛(6倍),同花牛(6倍),葫芦牛(6倍),炸弹牛(6倍),同花顺牛(7倍),五小牛(8倍)','12局X2房卡,24局X4房卡','','','','','','','',2,1,0,NULL,NULL),(7,'固定庄家','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','四花牛(4倍),五花牛(5倍),顺子牛(6倍),同花牛(6倍),葫芦牛(6倍),炸弹牛(6倍),同花顺牛(7倍),五小牛(8倍)','12局X2房卡,24局X4房卡','无,300,500,1000','','','','','','',2,1,0,NULL,NULL),(8,'自由抢庄','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','四花牛(4倍),五花牛(5倍),顺子牛(6倍),同花牛(6倍),葫芦牛(6倍),炸弹牛(6倍),同花顺牛(7倍),五小牛(8倍)','12局X2房卡,24局X4房卡','','','','','','','',2,1,0,NULL,NULL),(9,'明牌抢庄','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','四花牛(4倍),五花牛(5倍),顺子牛(6倍),同花牛(6倍),葫芦牛(6倍),炸弹牛(6倍),同花顺牛(7倍),五小牛(8倍)','12局X2房卡,24局X4房卡','','','','','','','',2,1,0,NULL,NULL),(10,'通比牛牛','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','四花牛(4倍),五花牛(5倍),顺子牛(6倍),同花牛(6倍),葫芦牛(6倍),炸弹牛(6倍),同花顺牛(7倍),五小牛(8倍)','12局X2房卡,24局X4房卡','','','','','','','',2,1,0,NULL,NULL),(11,'自由抢庄','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','','天公X10-雷公X7-地公X5,暴玖X9','','10局X1房卡,20局X2房卡','','','','','','','',3,1,0,NULL,NULL),(12,'经典三公','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','','天公X10-雷公X7-地公X5,暴玖X9','','10局X1房卡,20局X2房卡','','','','','','','',3,1,0,NULL,NULL),(13,'自由抢庄','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','','天公X10-雷公X7-地公X5,暴玖X9','','12局X2房卡,24局X4房卡','','','','','','','',4,1,0,NULL,NULL),(14,'经典三公','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','','天公X10-雷公X7-地公X5,暴玖X9','','12局X2房卡,24局X4房卡','','','','','','','',4,1,0,NULL,NULL),(15,'明牌抢庄','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','','天公X10-雷公X7-地公X5,暴玖X9','','12局X2房卡,24局X4房卡','','','','','','','',4,1,0,NULL,NULL),(16,' ','4,8,10,16,20,40','','','','10局X1房卡,20局X2房卡','','2/4-4/8-8/16-10/20,2/4-5/10-10/20-20/40,5/10-10/20-20/40-40/80','无,500,1000,2000','','','','',5,1,0,'无,>=100分,>=300分,>=500分','无,>=100分,>=300分,>=500分'),(17,'自由抢庄','','无二八杠,二八杠2倍,二八杠3倍','','','4局X1房卡,8局X2房卡','','10-20-30-50,20-30-50-80,30-50-80-100','','','','','',6,1,0,NULL,NULL),(18,'固定庄家','','无二八杠,二八杠2倍,二八杠3倍','','','4局X1张房卡,8局X2张房卡','500分,1000分,1500分,无限制','','','','','','',6,1,0,NULL,NULL),(19,'广东麻将','','','抢杠全包,杠爆全包','','8局X1张房卡,16局X2张房卡','','','','不跑马,2匹,4匹,6匹,8匹,爆炸马','无鬼牌,翻牌当鬼,红中当鬼','','',7,1,0,NULL,NULL),(20,'斗地主','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','轮流问地主,随机问地主','','','6局X1张房卡,12局X2张房卡','','','','','','','',8,1,0,NULL,NULL),(21,'斗公牛','','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','银花牛(5倍),五牛花(6倍),炸弹牛(7倍),五小牛(8倍)','','','','','','','100,200,300','',9,1,0,NULL,NULL),(22,'明牌抢庄','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','四花牛(4倍),五花牛(5倍),顺子牛(6倍),同花牛(6倍),葫芦牛(6倍),炸弹牛(6倍),同花顺牛(7倍),五小牛(8倍)','12局X2房卡,24局X4房卡','','','','','','','',10,1,1,NULL,NULL),(23,'通比牛牛','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','四花牛(4倍),五花牛(5倍),顺子牛(6倍),同花牛(6倍),葫芦牛(6倍),炸弹牛(6倍),同花顺牛(7倍),五小牛(8倍)','12局X2房卡,24局X4房卡','','','','','','','',14,1,0,NULL,NULL),(24,'明牌抢庄','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','四花牛(4倍),五花牛(5倍),顺子牛(6倍),同花牛(6倍),葫芦牛(6倍),炸弹牛(6倍),同花顺牛(7倍),五小牛(8倍)','12局X2房卡,24局X4房卡','','','','','','','',14,1,0,NULL,NULL),(25,'自由抢庄','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','四花牛(4倍),五花牛(5倍),顺子牛(6倍),同花牛(6倍),葫芦牛(6倍),炸弹牛(6倍),同花顺牛(7倍),五小牛(8倍)','12局X2房卡,24局X4房卡','','','','','','','',14,1,0,NULL,NULL),(26,'固定庄家','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','四花牛(4倍),五花牛(5倍),顺子牛(6倍),同花牛(6倍),葫芦牛(6倍),炸弹牛(6倍),同花顺牛(7倍),五小牛(8倍)','12局X2房卡,24局X4房卡','无,300,500,1000','','','','','','',14,1,0,NULL,NULL),(27,'牛牛上庄','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','四花牛(4倍),五花牛(5倍),顺子牛(6倍),同花牛(6倍),葫芦牛(6倍),炸弹牛(6倍),同花顺牛(7倍),五小牛(8倍)','12局X2房卡,24局X4房卡','','','','','','','',14,1,0,NULL,NULL),(28,'牛牛上庄','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','五牛花（5倍）,炸弹牛（6倍）,五小牛（8倍）','12局X2房卡,24局X4房卡','无,300,500,1000','','','','','','',15,1,7,NULL,NULL),(29,'固定庄家','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','五牛花（5倍）,炸弹牛（6倍）,五小牛（8倍）','12局X2房卡,24局X4房卡','','','','','','','',15,1,0,NULL,NULL),(30,'自由抢庄','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','五牛花（5倍）,炸弹牛（6倍）,五小牛（8倍）','12局X2房卡,24局X4房卡','','','','','','','',15,1,8,NULL,NULL),(31,'明牌抢庄','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','五牛花（5倍）,炸弹牛（6倍）,五小牛（8倍）','12局X2房卡,24局X4房卡','','','','','','','',15,1,10,NULL,NULL),(32,'通比牛牛','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','五牛花（5倍）,炸弹牛（6倍）,五小牛（8倍）','12局X2房卡,24局X4房卡','','','','','','','',15,1,9,NULL,NULL),(33,' ','4,8,10,16,20,40','','','','12局X2房卡,24局X4房卡','','2/4-4/8-8/16-10/20,2/4-5/10-10/20-20/40,5/10-10/20-20/40-40/80','无,500,1000,2000','','','','',16,1,0,'无,>=100分,>=300分,>=500分','无,>=100分,>=300分,>=500分'),(34,'明牌抢庄','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','','暴玖X9','','12局X3房卡,24局X6房卡','','','','','','','',17,1,0,NULL,NULL),(35,'明牌抢庄','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','至尊(8倍)，双天、双地、双人(6倍)， 其他对子(5倍)，天王、地王(4倍)， 天杠、地杠(3倍)，九点(2倍)，    八点(2倍), 至尊(10倍)，双天、双地、双人(8倍)， 其他对子(6倍)，天王、地王(5倍)， 天杠、地杠(4倍)，九点(3倍)， 八点(2倍)','','丁三牌及二四牌可以互换使用','12局{card}x3,24局{card}x6','','','','','','','',18,1,0,NULL,NULL),(36,'固定庄家','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','至尊(8倍)，双天、双地、双人(6倍)， 其他对子(5倍)，天王、地王(4倍)， 天杠、地杠(3倍)，九点(2倍)， 八点(2倍), 至尊(10倍)，双天、双地、双人(8倍)， 其他对子(6倍)，天王、地王(5倍)， 天杠、地杠(4倍)，九点(3倍)， 八点(2倍)','','丁三牌及二四牌可以互换使用','12局{card}x3,24局{card}x6','','','','','','','',18,1,0,NULL,NULL),(37,'明牌抢庄','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','顺子牛（5倍）,五牛花（5倍）,同花牛（6倍）,葫芦牛（7倍）,炸弹牛（8倍）,五小牛（8倍）,同花顺（10倍）','','12局X2房卡,24局X4房卡','','','','','','','',19,1,0,NULL,NULL),(38,'自由抢庄','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','3个相同3倍，2个相同2倍,3个相同5倍，2个相同3倍  3~10为小，11~18为大','','','12局X3房卡,24局X6房卡','','','','','','','5分,10分,20分,50分',21,1,0,NULL,NULL),(39,'固定庄家','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','3个相同3倍，2个相同2倍,3个相同5倍，2个相同3倍  3~10为小，11~18为大','','','12局x3房卡,24局x6房卡','','','','','','','5分,10分,20分,50分',21,1,0,NULL,NULL),(40,'明牌抢庄','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','每人四张牌，分为大小两组，分别与庄家对牌，全胜全败  为胜负，一胜一败为和局','','丁三牌及二四牌可以互换使用','12局X3房卡,24局X6房卡','','','','','','','',20,1,0,NULL,NULL),(41,'固定庄家','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','每人四张牌，分为大小两组，分别与庄家对牌，全胜全败  为胜负，一胜一败为和局','','丁三牌及二四牌可以互换使用','12局X3房卡,24局X6房卡','','','','','','','',20,1,0,NULL,NULL),(42,'明牌抢庄','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','至尊（8倍），双天、双地、双人（6倍），其他对子（5倍），天王、地王（4倍），天杠、地杠（3倍），九点（2倍），八点（2倍）,至尊（10倍），双天、双地、双人（8倍），其他对子（6倍），天王、地王（5倍），天杠、地杠（4倍），九点（3倍），八点（2倍）','','丁三牌及二四牌可以互换使用','10局X2房卡,20局X4房','','','','','','','',22,1,0,NULL,NULL),(43,'固定庄家','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','至尊（8倍），双天、双地、双人（6倍），其他对子（5倍），天王、地王（4倍），天杠、地杠（3倍），九点（2倍），八点（2倍）,至尊（10倍），双天、双地、双人（8倍），其他对子（6倍），天王、地王（5倍），天杠、地杠（4倍），九点（3倍），八点（2倍）','','丁三牌及二四牌可以互换使用','10局X2房卡,20局X4房','','','','','','','',22,1,0,NULL,NULL),(44,'明牌抢庄','1分,2分,3分,4分,5分,10分,30分,50分,100分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','顺子牛（5倍）,五牛花（5倍）,同花牛（6倍）,葫芦牛（7倍）,炸弹牛（8倍）,五小牛（8倍）,同花顺（10倍）','10局X1房卡,20局X2房卡','','','','','','','',23,1,0,NULL,NULL),(45,'','','三个相同5倍，两个相同3倍','','','12局X3房卡,24局X6房卡','','5，10，20，50,10，20，50，100','100,300,500','','','','',26,1,0,NULL,NULL),(46,'明牌抢庄','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','至尊10倍，双天双地双人8倍，对子6倍，天王地王5倍，天杠地杠天高九地高九4倍，九点3倍，八点2倍','','丁三牌及二四牌可以互换使用','12局X2房卡,24局X4房卡','','','','','','','',27,1,0,NULL,NULL),(47,'固定庄家','1分,2分,3分,4分,5分,6分,7分,8分,9分,10分,11分,12分,13分,14分,15分,16分,17分,18分,19分,20分,21分,22分,23分,24分,25分,26分,27分,28分,29分,30分,31分,32分,33分,34分,35分,36分,37分,38分,39分,40分,41分,42分,43分,44分,45分,46分,47分,48分,49分,50分,51分,52分,53分,54分,55分,56分,57分,58分,59分,60分,61分,62分,63分,64分,65分,66分,67分,68分,69分,70分,71分,72分,73分,74分,75分,76分,77分,78分,79分,80分,81分,82分,83分,84分,85分,86分,87分,88分,89分,90分,91分,92分,93分,94分,95分,96分,97分,98分,99分,100分','至尊10倍，双天双地双人8倍，对子6倍，天王地王5倍，天杠地杠天高九地高九4倍，九点3倍，八点2倍','','丁三牌及二四牌可以互换使用','12局X2房卡,24局X4房卡','','','','','','','',27,1,0,NULL,NULL),(48,'','','','','','12局X2张房卡,24局X4张房卡','','10/20/50/100,20/50/100/200','','','','','',34,1,0,NULL,NULL),(50,'','1,3,5,10,20','','','','6局X1房卡,12局X2房卡','','','','5张,10张','','','',30,1,0,NULL,NULL),(51,'','','','100分以下不能比牌,闷牌-全场禁止比牌,首轮禁止看牌','五花牛,炸弹牛,五小牛','','','2/4-4/8-8/16-10/20,2/4-5/10-10/20-20/40','无,500,1000,2000','','','','',31,1,0,NULL,NULL),(52,'明牌抢庄','1分,2分,3分,4分,5分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','四花牛(4倍),五花牛(5倍),顺子牛(6倍),炸弹牛(6倍),葫芦牛(6倍),炸弹牛(8倍),同花顺牛(8倍),五小牛(10倍)','12局X2房卡,24局X4房卡','','','','','','','',32,1,0,NULL,NULL),(53,'','4分,10分,20分,40分,100分,200分','闷牌-全场禁止比牌','','','10局X2张房卡,20局X4张房卡','','2/4,4/8,8/16,10/20,2/4,5/10,10/20,20/40,4/8,10/20,20/40,40/80','','','','','',35,1,0,NULL,NULL),(54,'','4分,10分,20分,40分,100分,200分','闷牌-全场禁止比牌','','','10局X2张房卡,20局X4张房卡','','2/4,4/8,8/16,10/20,2/4,5/10,10/20,20/40,4/8,10/20,20/40,40/80','','','','','',36,1,0,NULL,NULL),(55,'','4分,10分,20分,40分,100分,200分','闷牌-全场禁止比牌','','','10局X2张房卡,20局X4张房卡','','2/4,4/8,8/16,10/20,2/4,5/10,10/20,20/40,4/8,10/20,20/40,40/80','','','','','',39,1,0,NULL,NULL),(56,'明牌抢庄','1,2,3,4,5','暴玖x9大三公x9小三公x7三公x5九点x4八点x3七点x2散牌x1豹子x6同花顺x5金花x4顺子x3对子x2散牌x1','','','12局X2房卡,24局X4房卡','','','','','','','',37,1,0,NULL,NULL),(57,'','','','天公，雷公，地公     ,暴玖','','12局X2房卡,24局X4房卡','','300,500,1000','','','','','',38,1,0,NULL,NULL);
/*!40000 ALTER TABLE `jz_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_rulee`
--

DROP TABLE IF EXISTS `jz_rulee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_rulee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `df` text CHARACTER SET utf8 COMMENT '底分',
  `gz` text CHARACTER SET utf8 COMMENT '单选规则',
  `gz2` text CHARACTER SET utf8 COMMENT '多选规则',
  `px` text CHARACTER SET utf8 COMMENT '牌型',
  `js` text CHARACTER SET utf8 COMMENT '局数',
  `sz` text CHARACTER SET utf8 COMMENT '上庄',
  `cm` text CHARACTER SET utf8 COMMENT '筹码',
  `sx` text CHARACTER SET utf8 COMMENT '上限',
  `zm` text CHARACTER SET utf8 COMMENT '抓马',
  `gp` text CHARACTER SET utf8 COMMENT '鬼牌',
  `gd` text CHARACTER SET utf8 COMMENT '锅底',
  `zd` text CHARACTER SET utf8 NOT NULL COMMENT '最大下注',
  `bz` text CHARACTER SET utf8,
  `ms` text CHARACTER SET utf8 COMMENT '模式',
  `type` int(11) NOT NULL DEFAULT '0',
  `zt` int(11) NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_rulee`
--

LOCK TABLES `jz_rulee` WRITE;
/*!40000 ALTER TABLE `jz_rulee` DISABLE KEYS */;
INSERT INTO `jz_rulee` VALUES (1,'牛牛上庄','1分,2分,3分,4分,5分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','五牛花(5倍),炸弹牛(6倍),五小牛(8倍)','10局X1房卡,20局X2房卡','','','','','','','','','',1,1,1),(2,'固定庄家','1分,2分,3分,4分,5分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','五牛花(5倍),炸弹牛(6倍),五小牛(8倍)','10局X1房卡,20局X2房卡','无,100,300,500','','','','','','','',NULL,1,1,0),(3,'自由抢庄','1分,2分,3分,4分,5分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','五牛花(5倍),炸弹牛(6倍),五小牛(8倍)','10局X1房卡,20局X2房卡','','','','','','','','',NULL,1,1,0),(4,'明牌抢庄','1分,2分,3分,4分,5分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','五牛花(5倍),炸弹牛(6倍),五小牛(8倍)','10局X1房卡,20局X2房卡','','','','','','','','',NULL,1,1,0),(5,'通比牛牛','5分,10分,20分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','五牛花(5倍),炸弹牛(6倍),五小牛(8倍)','10局X1房卡,20局X2房卡','','','','','','','','',NULL,1,1,0),(6,'牛牛上庄','1分,2分,3分,4分,5分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','五牛花(5倍),炸弹牛(6倍),五小牛(8倍)','12局X2房卡,24局X4房卡','','','','','','','','',NULL,2,1,0),(7,'固定庄家','1分,2分,3分,4分,5分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','五牛花(5倍),炸弹牛(6倍),五小牛(8倍)','12局X2房卡,24局X4房卡','无,300,500,1000','','','','','','','',NULL,2,1,0),(8,'自由抢庄','1分,2分,3分,4分,5分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','五牛花(5倍),炸弹牛(6倍),五小牛(8倍)','12局X2房卡,24局X4房卡','','','','','','','','',NULL,2,1,0),(9,'明牌抢庄','1分,2分,3分,4分,5分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','五牛花(5倍),炸弹牛(6倍),五小牛(8倍)','12局X2房卡,24局X4房卡','','','','','','','','',NULL,2,1,0),(10,'通比牛牛','5分,10分,20分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','五牛花(5倍),炸弹牛(6倍),五小牛(8倍)','12局X2房卡,24局X4房卡','','','','','','','','春节活动，开房免费！神兽给大家拜年啦',NULL,2,1,0),(11,'自由抢庄','1分,3分,5分','','天公X10-雷公X7-地公X5,暴玖X9','','10局,20局','','','','','','','','春节活动，开房免费！神兽给大家拜年啦',NULL,3,1,0),(12,'经典三公','1分,3分,5分','','天公X10-雷公X7-地公X5,暴玖X9','','10局,20局','','','','','','','','春节活动，开房免费！神兽给大家拜年啦',NULL,3,1,0),(13,'自由抢庄','1分,2分,3分,4分,5分','','天公X10-雷公X7-地公X5,暴玖X9','','10局,20局','','','','','','','','春节活动，开房免费！神兽给大家拜年啦',NULL,4,1,0),(14,'经典三公','1分,2分,3分,4分,5分','','天公X10-雷公X7-地公X5,暴玖X9','','10局,20局','','','','','','','','春节活动，开房免费！神兽给大家拜年啦',NULL,4,1,0),(15,'明牌抢庄','1分,2分,3分,4分,5分','','暴玖X9','','10局,20局','','','','','','','','春节活动，开房免费！神兽给大家拜年啦',NULL,17,1,0),(16,' ','','','100分以下不能比牌,闷牌-全场禁止比牌','','10局X1张房卡,20局X2张房卡','','2/4-4/8-8/16-10/20,2/4-5/10-10/20-20/40','无,500,1000,2000','','','','','',NULL,5,1,0),(17,'自由抢庄','','无二八杠','','','4局,8局','','10-20-30-50,20-30-50-80,30-50-80-100','','','','','','春节活动，开房免费！神兽给大家拜年啦',NULL,6,1,0),(18,'固定庄家','','无二八杠','','','4局,8局','500分,1000分,1500分,无限制','','','','','','','',NULL,6,1,0),(19,'广东麻将','','','抢杠全包,杠爆全包','','8局,16局','','','','不跑马,2匹,4匹,6匹,8匹,爆炸马','无鬼牌,翻牌当鬼,红中当鬼','','','春节活动，开房免费！神兽给大家拜年啦',NULL,7,1,0),(20,'斗地主','1分,5分,10分','轮流问地主,随机问地主','','','6局,12局','','','','','','','','春节活动，开房免费！神兽给大家拜年啦',NULL,8,1,0),(21,'斗公牛','','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','银花牛(5倍),五牛花(6倍),炸弹牛(7倍),五小牛(8倍)','','','','','','','100,200,300','','',NULL,9,1,0),(22,'明牌抢庄','1分,2分,3分,4分,5分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','五牛花(5倍),炸弹牛(6倍),五小牛(8倍)','12局X2房卡,24局X4房卡','','','','','','','','',NULL,10,1,1),(23,'通比牛牛','5分,10分,20分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','五牛花(5倍),炸弹牛(6倍),五小牛(8倍)','12局X2房卡,24局X4房卡','','','','','','','','',NULL,14,1,0),(24,'明牌抢庄','1分,2分,3分,4分,5分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','五牛花(5倍),炸弹牛(6倍),五小牛(8倍)','12局X2房卡,24局X4房卡','','','','','','','','',NULL,14,1,0),(25,'自由抢庄','1分,2分,3分,4分,5分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','五牛花(5倍),炸弹牛(6倍),五小牛(8倍)','12局X2房卡,24局X4房卡','','','','','','','','',NULL,14,1,0),(26,'固定庄家','1分,2分,3分,4分,5分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','五牛花(5倍),炸弹牛(6倍),五小牛(8倍)','12局X2房卡,24局X4房卡','无,300,500,1000','','','','','','','',NULL,14,1,0),(27,'牛牛上庄','1分,2分,3分,4分,5分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','五牛花(5倍),炸弹牛(6倍),五小牛(8倍)','12局X2房卡,24局X4房卡','','','','','','','','',NULL,14,1,0),(28,'牛牛上庄','1分,2分,3分,4分,5分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','五牛花（5倍）,炸弹牛（6倍）,五小牛（8倍）','12局X2房卡,24局X4房卡','无,300,500,1000','','','','','','','',NULL,15,1,7),(29,'固定庄家','1分,2分,3分,4分,5分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','五牛花（5倍）,炸弹牛（6倍）,五小牛（8倍）','12局X2房卡,24局X4房卡','','','','','','','','',NULL,15,1,0),(30,'自由抢庄','1分,2分,3分,4分,5分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','五牛花（5倍）,炸弹牛（6倍）,五小牛（8倍）','12局X2房卡,24局X4房卡','','','','','','','','',NULL,15,1,8),(31,'明牌抢庄','1分,2分,3分,4分,5分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','五牛花（5倍）,炸弹牛（6倍）,五小牛（8倍）','12局X2房卡,24局X4房卡','','','','','','','','',NULL,15,1,10),(32,'通比牛牛','5分,10分,20分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','五牛花（5倍）,炸弹牛（6倍）,五小牛（8倍）','12局X2房卡,24局X4房卡','','','','','','','','',NULL,15,1,9),(33,' ','','','100分以下不能比牌,闷牌-全场禁止比牌','','12局X2张房卡,24局X4张房卡','','2/4-4/8-8/16-10/20,2/4-5/10-10/20-20/40','无,500,1000,2000','','','','','',NULL,16,1,0),(34,'明牌抢庄','1分,2分,3分,4分,5分','','天公X10-雷公X7-地公X5,暴玖X9','','12局,24局','','','','','','','','春节活动，开房免费！神兽给大家拜年啦',NULL,4,1,0),(35,'明牌抢庄','1分,2分,3分,5分','至尊(8倍)，双天、双地、双人(6倍)， 其他对子(5倍)，天王、地王(4倍)， 天杠、地杠(3倍)，九点(2倍)，    八点(2倍), 至尊(10倍)，双天、双地、双人(8倍)， 其他对子(6倍)，天王、地王(5倍)， 天杠、地杠(4倍)，九点(3倍)， 八点(2倍)','','丁三牌及二四牌可以互换使用','12局{card}x3,24局{card}x6','','','','','','','','',NULL,18,1,0),(36,'固定庄家','1分,2分,3分,5分','至尊(8倍)，双天、双地、双人(6倍)， 其他对子(5倍)，天王、地王(4倍)， 天杠、地杠(3倍)，九点(2倍)， 八点(2倍), 至尊(10倍)，双天、双地、双人(8倍)， 其他对子(6倍)，天王、地王(5倍)， 天杠、地杠(4倍)，九点(3倍)， 八点(2倍)','','丁三牌及二四牌可以互换使用','12局{card}x3,24局{card}x6','','','','','','','','',NULL,18,1,0),(37,'明牌抢庄','1分,2分,3分,4分,5分,10分,30分,50分,100分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','顺子牛（5倍）,五牛花（5倍）,同花牛（6倍）,葫芦牛（7倍）,炸弹牛（8倍）,五小牛（8倍）,同花顺（10倍）','','12局X2房卡,24局X4房卡','','','','','','','','',NULL,33,1,0),(38,'自由抢庄','1分,2分,3分,4分,5分','3个相同3倍，2个相同2倍,3个相同5倍，2个相同3倍  3~10为小，11~18为大','','','12局X3房卡,24局X6房卡','','','','','','','5分,10分,20分,50分','',NULL,21,1,0),(40,'明牌抢庄','1分,3分,5分,10分,20分,30分,40分,50分','每人四张牌，分为大小两组，分别与庄家对牌，全胜全败  为胜负，一胜一败为和局','','丁三牌及二四牌可以互换使用','12局X3房卡,24局X6房卡','','','','','','','','',NULL,20,1,0),(41,'固定庄家','1分,3分,5分,10分,20分,30分,40分,50分','每人四张牌，分为大小两组，分别与庄家对牌，全胜全败  为胜负，一胜一败为和局','','丁三牌及二四牌可以互换使用','12局X3房卡,24局X6房卡','','','','','','','','',NULL,20,1,0),(42,'明牌抢庄','1分,2分,3分,4分,5分','至尊（8倍），双天、双地、双人（6倍），其他对子（5倍），天王、地王（4倍），天杠、地杠（3倍），九点（2倍），八点（2倍）,至尊（10倍），双天、双地、双人（8倍），其他对子（6倍），天王、地王（5倍），天杠、地杠（4倍），九点（3倍），八点（2倍）','','丁三牌及二四牌可以互换使用','10局X2房卡,20局X4房','','','','','','','','',NULL,24,1,0),(43,'固定庄家','1分,2分,3分,4分,5分','至尊（8倍），双天、双地、双人（6倍），其他对子（5倍），天王、地王（4倍），天杠、地杠（3倍），九点（2倍），八点（2倍）,至尊（10倍），双天、双地、双人（8倍），其他对子（6倍），天王、地王（5倍），天杠、地杠（4倍），九点（3倍），八点（2倍）','','丁三牌及二四牌可以互换使用','10局X2房卡,20局X4房','','','','','','','','',NULL,24,1,0),(44,'明牌抢庄','1分,2分,3分,4分,5分,10分,30分,50分,100分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','顺子牛（5倍）,五牛花（5倍）,同花牛（6倍）,葫芦牛（7倍）,炸弹牛（8倍）,五小牛（8倍）,同花顺（10倍）','10局X1房卡,20局X2房卡','','','','','','','','',NULL,23,1,0),(45,'','','三个相同5倍，两个相同3倍','','','12局,24局','','5，10，20，50,10，20，50，100','100,300,500','','','','5分,10分,20分,50分','春节活动，开房免费！神兽给大家拜年啦！',NULL,26,1,0),(46,'明牌抢庄','1分,2分,3分,4分,5分','至尊10倍，双天双地双人8倍，对子6倍，天王地王5倍，天杠地杠天高九地高九4倍，九点3倍，八点2倍','','丁三牌及二四牌可以互换使用','12局,24局','','','','','','','','春节活动，开房免费！神兽给大家拜年啦',NULL,27,1,0),(47,'固定庄家','1分,2分,3分,4分,5分','至尊10倍，双天双地双人8倍，对子6倍，天王地王5倍，天杠地杠天高九地高九4倍，九点3倍，八点2倍','','丁三牌及二四牌可以互换使用','12局,24局','','','','','','','','春节活动，开房免费！神兽给大家拜年啦',NULL,27,1,0),(48,'通比牛牛','5分,10分,20分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','五牛花(5倍),炸弹牛(6倍),五小牛(8倍)','12局X2房卡,24局X4房卡','','','','','','','','',NULL,13,1,0),(49,'通比牛牛','5分,10分,20分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','五牛花(5倍),炸弹牛(6倍),五小牛(8倍)','12局X2房卡,24局X4房卡','','','','','','','','','模式:明牌抢庄',12,1,0),(50,'明牌抢庄','1分,2分,3分,5分','至尊(8倍)，双天、双地、双人(6倍)， 其他对子(5倍)，天王、地王(4倍)， 天杠、地杠(3倍)，九点(2倍)，    八点(2倍), 至尊(10倍)，双天、双地、双人(8倍)， 其他对子(6倍)，天王、地王(5倍)， 天杠、地杠(4倍)，九点(3倍)， 八点(2倍)','','丁三牌及二四牌可以互换使用','12局{card}x3,24局{card}x6','','','','','','','','',NULL,22,1,0),(51,'固定庄家','1分,2分,3分,4分,5分','3个相同3倍，2个相同2倍,3个相同5倍，2个相同3倍  3~10为小，11~18为大','','','12局X3房卡,24局X6房卡','','','','','','','5分,10分,20分,50分','',NULL,21,1,0),(52,'明牌抢庄','1分,2分,3分,4分,5分,10分,30分,50分,100分','牛牛X3牛九X2牛八X2,牛牛X4牛九X3牛八X2牛七X2','','顺子牛（5倍）,五牛花（5倍）,同花牛（6倍）,葫芦牛（7倍）,炸弹牛（8倍）,五小牛（8倍）,同花顺（10倍）','12局X2房卡,24局X4房卡','','','','','','','','',NULL,19,1,0);
/*!40000 ALTER TABLE `jz_rulee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_server`
--

DROP TABLE IF EXISTS `jz_server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_server` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `zt` int(11) NOT NULL DEFAULT '0',
  `dk` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0',
  `title` text,
  `type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_server`
--

LOCK TABLES `jz_server` WRITE;
/*!40000 ALTER TABLE `jz_server` DISABLE KEYS */;
INSERT INTO `jz_server` VALUES (1,0,1,7451,0,'8002',0),(2,0,1,7452,0,'9人牛牛1',2),(5,0,1,7453,0,'6人斗牛1',1),(6,0,1,7454,0,'炸金花',5),(8,0,1,7455,0,'12',10),(9,0,1,7456,0,'三公',3),(10,0,1,7457,0,'9人牛牛8倍',14),(11,0,1,7458,0,'九人三公',4),(13,0,0,7459,0,'10人斗牛',15),(14,0,0,7460,0,'二八杠',6),(17,0,1,7461,0,'九人炸金花',16),(18,0,1,7462,0,'	12人吉祥三公',17),(22,0,1,7463,0,'五兽12人鱼虾蟹',26),(23,0,1,7464,0,'五兽9人牌九',27);
/*!40000 ALTER TABLE `jz_server` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_slide`
--

DROP TABLE IF EXISTS `jz_slide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_slide` (
  `slide_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slide_cid` int(11) NOT NULL COMMENT '幻灯片分类 id',
  `slide_name` varchar(255) NOT NULL COMMENT '幻灯片名称',
  `slide_pic` varchar(255) DEFAULT NULL COMMENT '幻灯片图片',
  `slide_url` varchar(255) DEFAULT NULL COMMENT '幻灯片链接',
  `slide_des` varchar(255) DEFAULT NULL COMMENT '幻灯片描述',
  `slide_content` text COMMENT '幻灯片内容',
  `slide_status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  `listorder` int(10) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`slide_id`),
  KEY `slide_cid` (`slide_cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_slide`
--

LOCK TABLES `jz_slide` WRITE;
/*!40000 ALTER TABLE `jz_slide` DISABLE KEYS */;
/*!40000 ALTER TABLE `jz_slide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_slide_cat`
--

DROP TABLE IF EXISTS `jz_slide_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_slide_cat` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL COMMENT '幻灯片分类',
  `cat_idname` varchar(255) NOT NULL COMMENT '幻灯片分类标识',
  `cat_remark` text COMMENT '分类备注',
  `cat_status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1显示，0不显示',
  PRIMARY KEY (`cid`),
  KEY `cat_idname` (`cat_idname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_slide_cat`
--

LOCK TABLES `jz_slide_cat` WRITE;
/*!40000 ALTER TABLE `jz_slide_cat` DISABLE KEYS */;
/*!40000 ALTER TABLE `jz_slide_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_term_relationships`
--

DROP TABLE IF EXISTS `jz_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_term_relationships` (
  `tid` bigint(20) NOT NULL AUTO_INCREMENT,
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'posts表里文章id',
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `listorder` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1发布，0不发布',
  PRIMARY KEY (`tid`),
  KEY `term_taxonomy_id` (`term_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_term_relationships`
--

LOCK TABLES `jz_term_relationships` WRITE;
/*!40000 ALTER TABLE `jz_term_relationships` DISABLE KEYS */;
INSERT INTO `jz_term_relationships` VALUES (1,1,1,0,1),(2,2,1,0,1),(3,3,1,0,1);
/*!40000 ALTER TABLE `jz_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_terms`
--

DROP TABLE IF EXISTS `jz_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `name` varchar(200) DEFAULT NULL COMMENT '分类名称',
  `slug` varchar(200) DEFAULT '',
  `taxonomy` varchar(32) DEFAULT NULL COMMENT '分类类型',
  `description` longtext COMMENT '分类描述',
  `parent` bigint(20) unsigned DEFAULT '0' COMMENT '分类父id',
  `count` bigint(20) DEFAULT '0' COMMENT '分类文章数',
  `path` varchar(500) DEFAULT NULL COMMENT '分类层级关系路径',
  `seo_title` varchar(500) DEFAULT NULL,
  `seo_keywords` varchar(500) DEFAULT NULL,
  `seo_description` varchar(500) DEFAULT NULL,
  `list_tpl` varchar(50) DEFAULT NULL COMMENT '分类列表模板',
  `one_tpl` varchar(50) DEFAULT NULL COMMENT '分类文章页模板',
  `listorder` int(5) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` int(2) NOT NULL DEFAULT '1' COMMENT '状态，1发布，0不发布',
  PRIMARY KEY (`term_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_terms`
--

LOCK TABLES `jz_terms` WRITE;
/*!40000 ALTER TABLE `jz_terms` DISABLE KEYS */;
INSERT INTO `jz_terms` VALUES (1,'新闻公告','','article','',0,0,'0-1','','','','list','article',0,1);
/*!40000 ALTER TABLE `jz_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_user`
--

DROP TABLE IF EXISTS `jz_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_user` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `nickname` text COLLATE utf8mb4_bin,
  `mobile` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL,
  `password` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `is_grade` int(1) NOT NULL DEFAULT '0' COMMENT '0:普通会员  1:高级会员',
  `fk` int(11) NOT NULL DEFAULT '0' COMMENT '房卡',
  `gailv` int(11) NOT NULL DEFAULT '0' COMMENT '输赢概率',
  `create_time` datetime NOT NULL COMMENT '注册时间 ',
  `last_time` datetime NOT NULL,
  `status` int(10) NOT NULL DEFAULT '0' COMMENT '账号状态: 0正常，1被封，2限制登录',
  `disable_notice` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '操作记录',
  `last_login_ip` varchar(60) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '最后一次登录ip',
  `reg_ip` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `money` int(11) NOT NULL DEFAULT '0',
  `img` mediumtext COLLATE utf8mb4_bin NOT NULL,
  `nickname_base64` text COLLATE utf8mb4_bin NOT NULL,
  `token` mediumtext COLLATE utf8mb4_bin,
  `level` int(11) NOT NULL DEFAULT '0',
  `sfgl` int(11) NOT NULL DEFAULT '0',
  `openid` mediumtext COLLATE utf8mb4_bin,
  `daycard` int(10) unsigned NOT NULL DEFAULT '0',
  `sex` int(11) NOT NULL DEFAULT '1',
  `hyid` int(11) NOT NULL DEFAULT '0',
  `history_select` varchar(2048) COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2316949 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_user`
--

LOCK TABLES `jz_user` WRITE;
/*!40000 ALTER TABLE `jz_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `jz_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_user_room`
--

DROP TABLE IF EXISTS `jz_user_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_user_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `room` int(11) NOT NULL,
  `overtime` int(11) NOT NULL,
  `jifen` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_user_room`
--

LOCK TABLES `jz_user_room` WRITE;
/*!40000 ALTER TABLE `jz_user_room` DISABLE KEYS */;
/*!40000 ALTER TABLE `jz_user_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_user_zdcard`
--

DROP TABLE IF EXISTS `jz_user_zdcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_user_zdcard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_complete` tinyint(1) NOT NULL DEFAULT '0',
  `uid` int(10) unsigned NOT NULL,
  `type` varchar(8) NOT NULL DEFAULT 'JH',
  `cards` varchar(1024) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`is_complete`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COMMENT='指定用户发牌表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_user_zdcard`
--

LOCK TABLES `jz_user_zdcard` WRITE;
/*!40000 ALTER TABLE `jz_user_zdcard` DISABLE KEYS */;
INSERT INTO `jz_user_zdcard` VALUES (1,1,0,'JH','','2018-06-08 09:00:07'),(2,1,1347026,'JH','A1,A2,C2','2018-06-08 09:00:09'),(3,1,24,'JH','A1,A2,A3,A4,A5','2018-08-14 13:01:04'),(4,1,24,'JH','A10,A12,B10,B12,C10','2018-08-14 13:08:31'),(5,1,24,'JH','A1,A2,A3,A4,B5','2018-08-14 13:09:10'),(6,1,24,'JH','A1,B1,C1,C2,D2','2018-08-14 13:09:37'),(7,1,24,'JH','A11,B11,C9,C11,D11','2018-08-14 13:10:10'),(8,1,24,'JH','A11,A12,A13,B12,C11','2018-08-14 13:10:49'),(9,1,24,'JH','A11,A12,B8,B11,B12','2018-08-14 13:11:10'),(10,1,24,'JH','A1,A5,B5,C5,D5','2018-08-14 13:11:49'),(11,1,87,'JH','A1,A2,A3,A4,A5','2018-08-15 03:51:38'),(12,1,87,'JH','A11,A12,A13,B11,B12','2018-08-15 03:53:50'),(13,1,87,'JH','A10,B10,C10,D10,D11','2018-08-15 03:54:08'),(14,1,87,'JH','A4,A9,B9,C9,D9','2018-08-15 03:54:26'),(15,1,87,'JH','C10,C11,D10,D11,D12','2018-08-15 03:54:42'),(16,1,87,'JH','C1,D2,D4,D5,D7','2018-08-15 03:54:59'),(17,1,87,'JH','A4,A5,B3,C2,D1','2018-08-15 03:55:16'),(18,1,87,'JH','D9,D10,D11,D12,D13','2018-08-15 03:55:36'),(19,1,87,'JH','D6,D7,D8,D9,D10','2018-08-15 03:56:00'),(20,1,87,'JH','A1,A2,B1,C1,D1','2018-08-15 03:57:15'),(21,1,87,'JH','B1,B2,B3,B4,B5','2018-08-15 03:58:07'),(22,1,87,'JH','C2,C3,C4,C5,D1','2018-08-15 03:59:28'),(23,1,87,'JH','A9,B9,C7,C9,D9','2018-08-15 03:59:50'),(24,1,87,'JH','A11,A12,A13,B11,B12','2018-08-15 04:00:10'),(25,1,87,'JH','B1,C1,C2,D1','2018-08-15 04:00:40'),(26,1,87,'JH','C1,C2,D1,D2,D3','2018-08-15 04:01:03'),(27,1,87,'JH','A10,B9,C7,C11,C12','2018-08-15 04:01:24'),(32,1,888888,'JH','A13,B13,C13,D13','2018-09-02 17:33:56'),(33,1,888888,'JH','A1,B1,C1,D1','2018-09-02 17:45:48'),(35,1,888888,'JH','C12,C13,D11,D12,D13','2018-09-02 17:51:57'),(36,1,888888,'JH','D1,D2,D3,D4,D5','2018-09-02 18:02:07'),(37,1,888888,'JH','A1,A2,B1,C1,D1','2018-09-02 18:05:31'),(38,1,888888,'JH','A12,A13,B13,C13,D13','2018-09-02 18:06:20'),(39,1,888888,'JH','A13,B13,C13,D12,D13','2018-09-02 18:15:45'),(40,1,888888,'JH','A13,B13,C13,D12','2018-09-02 18:19:22'),(41,1,888888,'JH','D1,D2,D3,D4,D5','2018-09-02 18:20:00'),(42,1,888888,'JH','A5,A10,B5,C5,D5','2018-09-02 18:32:21');
/*!40000 ALTER TABLE `jz_user_zdcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_usermachine`
--

DROP TABLE IF EXISTS `jz_usermachine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_usermachine` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL,
  `room` int(10) unsigned NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='机器人表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_usermachine`
--

LOCK TABLES `jz_usermachine` WRITE;
/*!40000 ALTER TABLE `jz_usermachine` DISABLE KEYS */;
/*!40000 ALTER TABLE `jz_usermachine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jz_users`
--

DROP TABLE IF EXISTS `jz_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jz_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) NOT NULL DEFAULT '' COMMENT '登录密码；sp_password加密',
  `user_nicename` varchar(50) NOT NULL DEFAULT '' COMMENT '用户美名',
  `user_email` varchar(100) NOT NULL DEFAULT '' COMMENT '登录邮箱',
  `user_url` varchar(100) NOT NULL DEFAULT '' COMMENT '用户个人网站',
  `avatar` varchar(255) DEFAULT NULL COMMENT '用户头像，相对于upload/avatar目录',
  `sex` smallint(1) DEFAULT '0' COMMENT '性别；0：保密，1：男；2：女',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `signature` varchar(255) DEFAULT NULL COMMENT '个性签名',
  `last_login_ip` varchar(16) DEFAULT NULL COMMENT '最后登录ip',
  `last_login_time` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '最后登录时间',
  `create_time` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '注册时间',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '' COMMENT '激活码',
  `user_status` int(11) NOT NULL DEFAULT '1' COMMENT '用户状态 0：禁用； 1：正常 ；2：未验证',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '用户积分',
  `user_type` smallint(1) DEFAULT '1' COMMENT '用户类型，1:admin ;2:会员',
  `coin` int(11) NOT NULL DEFAULT '0' COMMENT '金币',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  PRIMARY KEY (`id`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jz_users`
--

LOCK TABLES `jz_users` WRITE;
/*!40000 ALTER TABLE `jz_users` DISABLE KEYS */;
INSERT INTO `jz_users` VALUES (1,'admin','###f9546283607525a85de935933fbb871a','668源码网','jb@bb.bb','',NULL,0,NULL,'下载：668yuanma.com','221.13.214.14','2019-04-02 17:39:11','2017-11-17 22:13:47','',1,0,1,0,'');
/*!40000 ALTER TABLE `jz_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-02 18:05:24
