-- MySQL dump 10.13  Distrib 5.1.53, for Win32 (ia32)
--
-- Host: localhost    Database: mln
-- ------------------------------------------------------
-- Server version	5.1.53-community

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
-- Table structure for table `about`
--

DROP TABLE IF EXISTS `about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `title` varchar(20) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about`
--

LOCK TABLES `about` WRITE;
/*!40000 ALTER TABLE `about` DISABLE KEYS */;
INSERT INTO `about` VALUES (1,'公司简介','公司简介'),(2,'组织结构','组织结构'),(3,'资质证书','资质证书'),(4,'企业文化','企业文化');
/*!40000 ALTER TABLE `about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `applicant`
--

DROP TABLE IF EXISTS `applicant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applicant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jobs_id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `birthday` varchar(40) DEFAULT NULL,
  `graduate` varchar(100) DEFAULT NULL,
  `education` varchar(100) DEFAULT NULL,
  `specialty` varchar(80) DEFAULT NULL,
  `hometown` varchar(100) DEFAULT NULL,
  `education_experience` text,
  `work_experience` text,
  `phone` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `dex_jobs` (`jobs_id`),
  CONSTRAINT `fk_jobs` FOREIGN KEY (`jobs_id`) REFERENCES `jobs` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applicant`
--

LOCK TABLES `applicant` WRITE;
/*!40000 ALTER TABLE `applicant` DISABLE KEYS */;
INSERT INTO `applicant` VALUES (1,1,'111','1','1988-5-5','北京林业大学','本科','林业','湘西','2000年4月  广东河源中学','2003年 广东联通实习','010-28383838','test@mm.com','yunnan','2013-05-07 10:46:53'),(2,3,'test','2','1988-5-5','北京林业大学','本科','林业','湘西','abcd','edddd','010-28383838','1379429007@qq.com','圆明园西路2号中国农业大学西校区','2013-05-07 11:01:15'),(3,1,'111','1','1988-5-5','','','','','','','18301416306','yjzmln@yahoo.cn','','2013-05-07 11:07:07'),(4,1,'111','1','1988-5-5','','','','','','','18301416306','yjzmln@yahoo.cn','工','2013-05-07 11:07:48'),(5,2,'经莹','1','1999-2-3','','','','','','','13001205562','geekksun@163.com','','2013-05-07 11:08:23'),(6,2,'22','1','1986-5-6','','','','','','','13001205562','1379429007@qq.com','','2013-05-07 11:19:02'),(7,1,'test','1','1111','','','','3333','','','444','555','','2013-05-09 08:48:53'),(8,1,'test','1','1111','','','','3333','','','444','555','','2013-05-09 09:04:30'),(9,1,'test','1','1111','','aadsfasf','','3333','','','444','555','','2013-05-09 09:04:37'),(10,1,'23423','1','','','','','','','','','','','2013-05-09 09:29:43'),(11,1,'1111','1','','','','','','','','','','','2013-05-09 09:49:56'),(12,1,'23423','1','','','','','','','','','','','2013-05-09 09:51:18'),(13,1,'1234','1','1988-5-4','中国农大','本科','农学','河北','本 科','工人','13001205562','yjzmln@yahoo.cn','北京','2013-05-09 10:11:47');
/*!40000 ALTER TABLE `applicant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases`
--

DROP TABLE IF EXISTS `cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases` (
  `id` int(11) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `content` text,
  `category_id` varchar(10) DEFAULT NULL,
  `img_path` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases`
--

LOCK TABLES `cases` WRITE;
/*!40000 ALTER TABLE `cases` DISABLE KEYS */;
INSERT INTO `cases` VALUES (1,'北华',1,'test1 test1 test1\r\n和和呵呵  \r\n哈哈哈哈\r\nmysql 数据库','1',NULL),(2,'大华',2,'test case test case','2',NULL),(3,'克丽珑',2,'kelon kelon','2',NULL);
/*!40000 ALTER TABLE `cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `download`
--

DROP TABLE IF EXISTS `download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `download` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `content` text,
  `category_id` char(1) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `download`
--

LOCK TABLES `download` WRITE;
/*!40000 ALTER TABLE `download` DISABLE KEYS */;
INSERT INTO `download` VALUES (1,'hello','test','1',NULL),(2,'hey','test2','2',NULL),(3,'kitty','test3','3',NULL),(4,'kuby','test4','1',NULL),(5,'daddy','test5','2',NULL);
/*!40000 ALTER TABLE `download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `title` varchar(40) DEFAULT NULL,
  `age_low` int(11) DEFAULT NULL,
  `age_up` int(11) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `education` varchar(200) DEFAULT NULL,
  `vacancy` int(11) DEFAULT NULL,
  `requirement` varchar(400) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,'业务员',20,35,'1','初中以上',1,'业务员 业务员','2013-05-06 09:13:38'),(2,'CEO',20,35,'0','初中以上',1,'工作经验3年以上','2013-05-06 09:20:14'),(3,'项目经理',20,35,'2','初中以上',1,'要求一年以上公司管理经验','2013-05-06 09:20:31');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,'test','test1','112233','','');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(70) DEFAULT NULL,
  `summary` text,
  `content` text,
  `category_no` varchar(10) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `idx_category_no` (`category_no`),
  CONSTRAINT `fk_news` FOREIGN KEY (`category_no`) REFERENCES `news_category` (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (0,'公司新闻二','公司新闻二','公司新闻二','1','2013-04-26 08:54:27'),(1,'公司新闻一','公司新闻一公司新闻一','公司新闻一公司新闻公司新闻一公司新闻公司新闻一公司新闻','1','2013-04-26 08:54:34'),(2,'公司新闻三','公司新闻三','公司新闻三','1','2013-04-26 08:54:45'),(3,'行业新闻一','行业新闻一','行业新闻一','2','2013-04-26 09:03:23'),(4,'行业新闻二','行业新闻二','行业新闻二','2','2013-04-26 09:10:08'),(5,'行业新闻三','行业新闻三','行业新闻三','2','2013-04-26 09:21:38');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_category`
--

DROP TABLE IF EXISTS `news_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_category` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(40) DEFAULT NULL,
  `number` varchar(10) DEFAULT NULL COMMENT '1:company;2:industry;3:technical',
  PRIMARY KEY (`id`),
  KEY `dex_no` (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_category`
--

LOCK TABLES `news_category` WRITE;
/*!40000 ALTER TABLE `news_category` DISABLE KEYS */;
INSERT INTO `news_category` VALUES (1,'公司新闻','1'),(2,'行业新闻','2');
/*!40000 ALTER TABLE `news_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL COMMENT '名字',
  `number` varchar(255) NOT NULL COMMENT '编号',
  `bull_number` varchar(255) NOT NULL COMMENT '公牛号',
  `en_name` varchar(255) DEFAULT NULL COMMENT '英文名称',
  `tpi` varchar(255) DEFAULT NULL COMMENT '总育总值TPI',
  `lnm` varchar(255) DEFAULT NULL COMMENT '终身效益指数',
  `milk_production` int(11) DEFAULT NULL COMMENT '女儿305天产奶量(kg)',
  `milk_life` int(11) DEFAULT NULL COMMENT '产奶寿命',
  `description` text,
  `category_id` varchar(10) DEFAULT NULL,
  `img_path` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (0,'冻精2','100','dj001','bull100','1250','123',1300,580,'test11111','1',NULL,NULL),(1,'冻精1','102','is001','bull001','1200','122',1220,566,'teststestsetsetsetest','1',NULL,NULL),(2,'胚胎tes2','202','is002','embryo001',NULL,NULL,NULL,NULL,NULL,'2',NULL,NULL),(3,'冻精3','101','is002','bull101','1300','113',1370,632,'iiiiiiii','1',NULL,NULL),(4,'冻精4','104','is004','bull004','1400','124',1400,680,'iiiiiiooo1','1',NULL,NULL),(5,'dg001','005','jg005','bull005','1400','115',1500,880,'testooo','1',NULL,NULL),(6,'dg002','006','jg005','bull005','1400','115',1500,880,'testooo','1',NULL,NULL),(7,'dg003','006','jg005','bull005','1400','115',1500,880,'testooo','1',NULL,NULL),(8,'dg004','006','jg005','bull005','1400','115',1500,880,'testooo','1',NULL,NULL),(9,'dg005','006','jg005','bull005','1400','115',1500,880,'testooo','1',NULL,NULL),(10,'dg006','006','jg005','bull005','1400','115',1500,880,'testooo','1',NULL,NULL),(11,'dg007','011','jg005','bull005','1400','115',1500,880,'testooo','1',NULL,NULL),(12,'dg008','011','jg005','bull005','1400','115',1500,880,'testooo','1',NULL,NULL),(13,'dg008','011','jg005','bull005','1400','115',1500,880,'testooo','2',NULL,NULL),(14,'dg008','011','jg005','bull005','1400','115',1500,880,'testooo','2',NULL,NULL),(15,'dg0010','011','jg005','bull005','1400','115',1500,880,'testooo','2',NULL,NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_category` (
  `id` varchar(10) NOT NULL DEFAULT '',
  `name` varchar(30) DEFAULT NULL,
  `pid` varchar(255) NOT NULL COMMENT '种类父ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES ('1','冻精','0'),('11','国产常规冻精','1'),('12','进口常规冻精','1'),('13','国产性控冻精','1'),('14','进口性控冻精','1'),('2','胚胎','0'),('21','国产常规胚胎','2'),('22','进口常规胚胎','2'),('23','国产性控胚胎','2'),('24','进口性控胚胎','2');
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL DEFAULT '0',
  `userName` varchar(255) NOT NULL COMMENT '用户名',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `realName` varchar(255) DEFAULT '' COMMENT '名字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-05-14 19:30:43
