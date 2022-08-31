-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm808w6
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='客服咨询';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (101,'2021-04-25 08:45:49',1,1,'提问1','回复1',1),(102,'2021-04-25 08:45:49',2,2,'提问2','回复2',2),(103,'2021-04-25 08:45:49',3,3,'提问3','回复3',3),(104,'2021-04-25 08:45:49',4,4,'提问4','回复4',4),(105,'2021-04-25 08:45:49',5,5,'提问5','回复5',5),(106,'2021-04-25 08:45:49',6,6,'提问6','回复6',6);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm808w6/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm808w6/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm808w6/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussershoushangpin`
--

DROP TABLE IF EXISTS `discussershoushangpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussershoushangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='二手商品评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussershoushangpin`
--

LOCK TABLES `discussershoushangpin` WRITE;
/*!40000 ALTER TABLE `discussershoushangpin` DISABLE KEYS */;
INSERT INTO `discussershoushangpin` VALUES (141,'2021-04-25 08:45:49',1,1,'用户名1','评论内容1','回复内容1'),(142,'2021-04-25 08:45:49',2,2,'用户名2','评论内容2','回复内容2'),(143,'2021-04-25 08:45:49',3,3,'用户名3','评论内容3','回复内容3'),(144,'2021-04-25 08:45:49',4,4,'用户名4','评论内容4','回复内容4'),(145,'2021-04-25 08:45:49',5,5,'用户名5','评论内容5','回复内容5'),(146,'2021-04-25 08:45:49',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussershoushangpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusshuodongxinxi`
--

DROP TABLE IF EXISTS `discusshuodongxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusshuodongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='活动信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusshuodongxinxi`
--

LOCK TABLES `discusshuodongxinxi` WRITE;
/*!40000 ALTER TABLE `discusshuodongxinxi` DISABLE KEYS */;
INSERT INTO `discusshuodongxinxi` VALUES (131,'2021-04-25 08:45:49',1,1,'用户名1','评论内容1','回复内容1'),(132,'2021-04-25 08:45:49',2,2,'用户名2','评论内容2','回复内容2'),(133,'2021-04-25 08:45:49',3,3,'用户名3','评论内容3','回复内容3'),(134,'2021-04-25 08:45:49',4,4,'用户名4','评论内容4','回复内容4'),(135,'2021-04-25 08:45:49',5,5,'用户名5','评论内容5','回复内容5'),(136,'2021-04-25 08:45:49',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusshuodongxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusswanggoupindan`
--

DROP TABLE IF EXISTS `discusswanggoupindan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusswanggoupindan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='网购拼单评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusswanggoupindan`
--

LOCK TABLES `discusswanggoupindan` WRITE;
/*!40000 ALTER TABLE `discusswanggoupindan` DISABLE KEYS */;
INSERT INTO `discusswanggoupindan` VALUES (151,'2021-04-25 08:45:49',1,1,'用户名1','评论内容1','回复内容1'),(152,'2021-04-25 08:45:49',2,2,'用户名2','评论内容2','回复内容2'),(153,'2021-04-25 08:45:49',3,3,'用户名3','评论内容3','回复内容3'),(154,'2021-04-25 08:45:49',4,4,'用户名4','评论内容4','回复内容4'),(155,'2021-04-25 08:45:49',5,5,'用户名5','评论内容5','回复内容5'),(156,'2021-04-25 08:45:49',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusswanggoupindan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ershoushangpin`
--

DROP TABLE IF EXISTS `ershoushangpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ershoushangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleibie` varchar(200) DEFAULT NULL COMMENT '商品类别',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `sunhuaichengdu` varchar(200) DEFAULT NULL COMMENT '损坏程度',
  `qitashuoming` varchar(200) DEFAULT NULL COMMENT '其他说明',
  `yuanjia` float DEFAULT NULL COMMENT '原价',
  `xianjia` float DEFAULT NULL COMMENT '现价',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shangpinjieshao` longtext COMMENT '商品介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='二手商品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ershoushangpin`
--

LOCK TABLES `ershoushangpin` WRITE;
/*!40000 ALTER TABLE `ershoushangpin` DISABLE KEYS */;
INSERT INTO `ershoushangpin` VALUES (51,'2021-04-25 08:45:49','商品名称1','商品类别1','品牌1','全新','其他说明1',1,1,'http://localhost:8080/ssm808w6/upload/ershoushangpin_tupian1.jpg','学号1','姓名1','联系方式1','商品介绍1'),(52,'2021-04-25 08:45:49','商品名称2','商品类别2','品牌2','全新','其他说明2',2,2,'http://localhost:8080/ssm808w6/upload/ershoushangpin_tupian2.jpg','学号2','姓名2','联系方式2','商品介绍2'),(53,'2021-04-25 08:45:49','商品名称3','商品类别3','品牌3','全新','其他说明3',3,3,'http://localhost:8080/ssm808w6/upload/ershoushangpin_tupian3.jpg','学号3','姓名3','联系方式3','商品介绍3'),(54,'2021-04-25 08:45:49','商品名称4','商品类别4','品牌4','全新','其他说明4',4,4,'http://localhost:8080/ssm808w6/upload/ershoushangpin_tupian4.jpg','学号4','姓名4','联系方式4','商品介绍4'),(55,'2021-04-25 08:45:49','商品名称5','商品类别5','品牌5','全新','其他说明5',5,5,'http://localhost:8080/ssm808w6/upload/ershoushangpin_tupian5.jpg','学号5','姓名5','联系方式5','商品介绍5'),(56,'2021-04-25 08:45:49','商品名称6','商品类别6','品牌6','全新','其他说明6',6,6,'http://localhost:8080/ssm808w6/upload/ershoushangpin_tupian6.jpg','学号6','姓名6','联系方式6','商品介绍6');
/*!40000 ALTER TABLE `ershoushangpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fabuershoushangpin`
--

DROP TABLE IF EXISTS `fabuershoushangpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fabuershoushangpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleibie` varchar(200) DEFAULT NULL COMMENT '商品类别',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `sunhuaichengdu` varchar(200) DEFAULT NULL COMMENT '损坏程度',
  `qitashuoming` varchar(200) DEFAULT NULL COMMENT '其他说明',
  `yuanjia` float DEFAULT NULL COMMENT '原价',
  `xianjia` float DEFAULT NULL COMMENT '现价',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shangpinjieshao` longtext COMMENT '商品介绍',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='发布二手商品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabuershoushangpin`
--

LOCK TABLES `fabuershoushangpin` WRITE;
/*!40000 ALTER TABLE `fabuershoushangpin` DISABLE KEYS */;
INSERT INTO `fabuershoushangpin` VALUES (71,'2021-04-25 08:45:49','商品名称1','商品类别1','品牌1','全新','其他说明1',1,1,'http://localhost:8080/ssm808w6/upload/fabuershoushangpin_tupian1.jpg','学号1','姓名1','联系方式1','商品介绍1','是','',1),(72,'2021-04-25 08:45:49','商品名称2','商品类别2','品牌2','全新','其他说明2',2,2,'http://localhost:8080/ssm808w6/upload/fabuershoushangpin_tupian2.jpg','学号2','姓名2','联系方式2','商品介绍2','是','',2),(73,'2021-04-25 08:45:49','商品名称3','商品类别3','品牌3','全新','其他说明3',3,3,'http://localhost:8080/ssm808w6/upload/fabuershoushangpin_tupian3.jpg','学号3','姓名3','联系方式3','商品介绍3','是','',3),(74,'2021-04-25 08:45:49','商品名称4','商品类别4','品牌4','全新','其他说明4',4,4,'http://localhost:8080/ssm808w6/upload/fabuershoushangpin_tupian4.jpg','学号4','姓名4','联系方式4','商品介绍4','是','',4),(75,'2021-04-25 08:45:49','商品名称5','商品类别5','品牌5','全新','其他说明5',5,5,'http://localhost:8080/ssm808w6/upload/fabuershoushangpin_tupian5.jpg','学号5','姓名5','联系方式5','商品介绍5','是','',5),(76,'2021-04-25 08:45:49','商品名称6','商品类别6','品牌6','全新','其他说明6',6,6,'http://localhost:8080/ssm808w6/upload/fabuershoushangpin_tupian6.jpg','学号6','姓名6','联系方式6','商品介绍6','是','',6);
/*!40000 ALTER TABLE `fabuershoushangpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqiwanggoupindan`
--

DROP TABLE IF EXISTS `faqiwanggoupindan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faqiwanggoupindan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleibie` varchar(200) DEFAULT NULL COMMENT '商品类别',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `yuanjia` float DEFAULT NULL COMMENT '原价',
  `zhehoujia` float DEFAULT NULL COMMENT '折后价',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shangpinjieshao` longtext COMMENT '商品介绍',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='发起网购拼单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqiwanggoupindan`
--

LOCK TABLES `faqiwanggoupindan` WRITE;
/*!40000 ALTER TABLE `faqiwanggoupindan` DISABLE KEYS */;
INSERT INTO `faqiwanggoupindan` VALUES (91,'2021-04-25 08:45:49','商品名称1','商品类别1','品牌1',1,1,'http://localhost:8080/ssm808w6/upload/faqiwanggoupindan_tupian1.jpg','学号1','姓名1','联系方式1','商品介绍1','是','',1),(92,'2021-04-25 08:45:49','商品名称2','商品类别2','品牌2',2,2,'http://localhost:8080/ssm808w6/upload/faqiwanggoupindan_tupian2.jpg','学号2','姓名2','联系方式2','商品介绍2','是','',2),(93,'2021-04-25 08:45:49','商品名称3','商品类别3','品牌3',3,3,'http://localhost:8080/ssm808w6/upload/faqiwanggoupindan_tupian3.jpg','学号3','姓名3','联系方式3','商品介绍3','是','',3),(94,'2021-04-25 08:45:49','商品名称4','商品类别4','品牌4',4,4,'http://localhost:8080/ssm808w6/upload/faqiwanggoupindan_tupian4.jpg','学号4','姓名4','联系方式4','商品介绍4','是','',4),(95,'2021-04-25 08:45:49','商品名称5','商品类别5','品牌5',5,5,'http://localhost:8080/ssm808w6/upload/faqiwanggoupindan_tupian5.jpg','学号5','姓名5','联系方式5','商品介绍5','是','',5),(96,'2021-04-25 08:45:49','商品名称6','商品类别6','品牌6',6,6,'http://localhost:8080/ssm808w6/upload/faqiwanggoupindan_tupian6.jpg','学号6','姓名6','联系方式6','商品介绍6','是','',6);
/*!40000 ALTER TABLE `faqiwanggoupindan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongfenlei`
--

DROP TABLE IF EXISTS `huodongfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huodongfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongleibie` varchar(200) DEFAULT NULL COMMENT '活动类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='活动分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongfenlei`
--

LOCK TABLES `huodongfenlei` WRITE;
/*!40000 ALTER TABLE `huodongfenlei` DISABLE KEYS */;
INSERT INTO `huodongfenlei` VALUES (31,'2021-04-25 08:45:49','活动类别1'),(32,'2021-04-25 08:45:49','活动类别2'),(33,'2021-04-25 08:45:49','活动类别3'),(34,'2021-04-25 08:45:49','活动类别4'),(35,'2021-04-25 08:45:49','活动类别5'),(36,'2021-04-25 08:45:49','活动类别6');
/*!40000 ALTER TABLE `huodongfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongshenqing`
--

DROP TABLE IF EXISTS `huodongshenqing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huodongshenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `huodongleibie` varchar(200) DEFAULT NULL COMMENT '活动类别',
  `jubanshijian` datetime DEFAULT NULL COMMENT '举办时间',
  `jubandidian` varchar(200) DEFAULT NULL COMMENT '举办地点',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `huodongneirong` longtext COMMENT '活动内容',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='活动申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongshenqing`
--

LOCK TABLES `huodongshenqing` WRITE;
/*!40000 ALTER TABLE `huodongshenqing` DISABLE KEYS */;
INSERT INTO `huodongshenqing` VALUES (41,'2021-04-25 08:45:49','活动名称1','活动类别1','2021-04-25 16:45:49','举办地点1','学号1','姓名1','联系方式1','http://localhost:8080/ssm808w6/upload/huodongshenqing_fengmian1.jpg','活动内容1','是','',1),(42,'2021-04-25 08:45:49','活动名称2','活动类别2','2021-04-25 16:45:49','举办地点2','学号2','姓名2','联系方式2','http://localhost:8080/ssm808w6/upload/huodongshenqing_fengmian2.jpg','活动内容2','是','',2),(43,'2021-04-25 08:45:49','活动名称3','活动类别3','2021-04-25 16:45:49','举办地点3','学号3','姓名3','联系方式3','http://localhost:8080/ssm808w6/upload/huodongshenqing_fengmian3.jpg','活动内容3','是','',3),(44,'2021-04-25 08:45:49','活动名称4','活动类别4','2021-04-25 16:45:49','举办地点4','学号4','姓名4','联系方式4','http://localhost:8080/ssm808w6/upload/huodongshenqing_fengmian4.jpg','活动内容4','是','',4),(45,'2021-04-25 08:45:49','活动名称5','活动类别5','2021-04-25 16:45:49','举办地点5','学号5','姓名5','联系方式5','http://localhost:8080/ssm808w6/upload/huodongshenqing_fengmian5.jpg','活动内容5','是','',5),(46,'2021-04-25 08:45:49','活动名称6','活动类别6','2021-04-25 16:45:49','举办地点6','学号6','姓名6','联系方式6','http://localhost:8080/ssm808w6/upload/huodongshenqing_fengmian6.jpg','活动内容6','是','',6);
/*!40000 ALTER TABLE `huodongshenqing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huodongxinxi`
--

DROP TABLE IF EXISTS `huodongxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huodongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huodongmingcheng` varchar(200) DEFAULT NULL COMMENT '活动名称',
  `huodongleibie` varchar(200) DEFAULT NULL COMMENT '活动类别',
  `jubanshijian` datetime DEFAULT NULL COMMENT '举办时间',
  `jubandidian` varchar(200) DEFAULT NULL COMMENT '举办地点',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `huodongneirong` longtext COMMENT '活动内容',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='活动信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huodongxinxi`
--

LOCK TABLES `huodongxinxi` WRITE;
/*!40000 ALTER TABLE `huodongxinxi` DISABLE KEYS */;
INSERT INTO `huodongxinxi` VALUES (21,'2021-04-25 08:45:49','活动名称1','活动类别1','2021-04-25 16:45:49','举办地点1','学号1','姓名1','联系方式1','http://localhost:8080/ssm808w6/upload/huodongxinxi_fengmian1.jpg','活动内容1',1,1,'2021-04-25 16:45:49'),(22,'2021-04-25 08:45:49','活动名称2','活动类别2','2021-04-25 16:45:49','举办地点2','学号2','姓名2','联系方式2','http://localhost:8080/ssm808w6/upload/huodongxinxi_fengmian2.jpg','活动内容2',2,2,'2021-04-25 16:45:49'),(23,'2021-04-25 08:45:49','活动名称3','活动类别3','2021-04-25 16:45:49','举办地点3','学号3','姓名3','联系方式3','http://localhost:8080/ssm808w6/upload/huodongxinxi_fengmian3.jpg','活动内容3',3,3,'2021-04-25 16:45:49'),(24,'2021-04-25 08:45:49','活动名称4','活动类别4','2021-04-25 16:45:49','举办地点4','学号4','姓名4','联系方式4','http://localhost:8080/ssm808w6/upload/huodongxinxi_fengmian4.jpg','活动内容4',4,4,'2021-04-25 16:45:49'),(25,'2021-04-25 08:45:49','活动名称5','活动类别5','2021-04-25 16:45:49','举办地点5','学号5','姓名5','联系方式5','http://localhost:8080/ssm808w6/upload/huodongxinxi_fengmian5.jpg','活动内容5',5,5,'2021-04-25 16:45:49'),(26,'2021-04-25 08:45:49','活动名称6','活动类别6','2021-04-25 16:45:49','举办地点6','学号6','姓名6','联系方式6','http://localhost:8080/ssm808w6/upload/huodongxinxi_fengmian6.jpg','活动内容6',6,6,'2021-04-25 16:45:49');
/*!40000 ALTER TABLE `huodongxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='校园资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (121,'2021-04-25 08:45:49','标题1','简介1','http://localhost:8080/ssm808w6/upload/news_picture1.jpg','内容1'),(122,'2021-04-25 08:45:49','标题2','简介2','http://localhost:8080/ssm808w6/upload/news_picture2.jpg','内容2'),(123,'2021-04-25 08:45:49','标题3','简介3','http://localhost:8080/ssm808w6/upload/news_picture3.jpg','内容3'),(124,'2021-04-25 08:45:49','标题4','简介4','http://localhost:8080/ssm808w6/upload/news_picture4.jpg','内容4'),(125,'2021-04-25 08:45:49','标题5','简介5','http://localhost:8080/ssm808w6/upload/news_picture5.jpg','内容5'),(126,'2021-04-25 08:45:49','标题6','简介6','http://localhost:8080/ssm808w6/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinfenlei`
--

DROP TABLE IF EXISTS `shangpinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinleibie` varchar(200) DEFAULT NULL COMMENT '商品类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='商品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinfenlei`
--

LOCK TABLES `shangpinfenlei` WRITE;
/*!40000 ALTER TABLE `shangpinfenlei` DISABLE KEYS */;
INSERT INTO `shangpinfenlei` VALUES (61,'2021-04-25 08:45:49','商品类别1'),(62,'2021-04-25 08:45:49','商品类别2'),(63,'2021-04-25 08:45:49','商品类别3'),(64,'2021-04-25 08:45:49','商品类别4'),(65,'2021-04-25 08:45:49','商品类别5'),(66,'2021-04-25 08:45:49','商品类别6');
/*!40000 ALTER TABLE `shangpinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'学生1','xuesheng','学生','vkwr6mhwxnms8tfj0w1lrk4gedqaw6rf','2021-04-25 08:48:36','2021-04-25 09:48:37');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-04-25 08:45:49');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wanggoupindan`
--

DROP TABLE IF EXISTS `wanggoupindan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wanggoupindan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleibie` varchar(200) DEFAULT NULL COMMENT '商品类别',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `yuanjia` float DEFAULT NULL COMMENT '原价',
  `pindanzhehoujia` float DEFAULT NULL COMMENT '拼单折后价',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shangpinjieshao` longtext COMMENT '商品介绍',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='网购拼单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wanggoupindan`
--

LOCK TABLES `wanggoupindan` WRITE;
/*!40000 ALTER TABLE `wanggoupindan` DISABLE KEYS */;
INSERT INTO `wanggoupindan` VALUES (81,'2021-04-25 08:45:49','商品名称1','商品类别1','品牌1','http://localhost:8080/ssm808w6/upload/wanggoupindan_tupian1.jpg',1,1,'学号1','姓名1','联系方式1','商品介绍1'),(82,'2021-04-25 08:45:49','商品名称2','商品类别2','品牌2','http://localhost:8080/ssm808w6/upload/wanggoupindan_tupian2.jpg',2,2,'学号2','姓名2','联系方式2','商品介绍2'),(83,'2021-04-25 08:45:49','商品名称3','商品类别3','品牌3','http://localhost:8080/ssm808w6/upload/wanggoupindan_tupian3.jpg',3,3,'学号3','姓名3','联系方式3','商品介绍3'),(84,'2021-04-25 08:45:49','商品名称4','商品类别4','品牌4','http://localhost:8080/ssm808w6/upload/wanggoupindan_tupian4.jpg',4,4,'学号4','姓名4','联系方式4','商品介绍4'),(85,'2021-04-25 08:45:49','商品名称5','商品类别5','品牌5','http://localhost:8080/ssm808w6/upload/wanggoupindan_tupian5.jpg',5,5,'学号5','姓名5','联系方式5','商品介绍5'),(86,'2021-04-25 08:45:49','商品名称6','商品类别6','品牌6','http://localhost:8080/ssm808w6/upload/wanggoupindan_tupian6.jpg',6,6,'学号6','姓名6','联系方式6','商品介绍6');
/*!40000 ALTER TABLE `wanggoupindan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) NOT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `gerenmiaoshu` longtext COMMENT '个人描述',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2021-04-25 08:45:49','学生1','123456','姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssm808w6/upload/xuesheng_zhaopian1.jpg','个人描述1'),(12,'2021-04-25 08:45:49','学生2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssm808w6/upload/xuesheng_zhaopian2.jpg','个人描述2'),(13,'2021-04-25 08:45:49','学生3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssm808w6/upload/xuesheng_zhaopian3.jpg','个人描述3'),(14,'2021-04-25 08:45:49','学生4','123456','姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssm808w6/upload/xuesheng_zhaopian4.jpg','个人描述4'),(15,'2021-04-25 08:45:49','学生5','123456','姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssm808w6/upload/xuesheng_zhaopian5.jpg','个人描述5'),(16,'2021-04-25 08:45:49','学生6','123456','姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssm808w6/upload/xuesheng_zhaopian6.jpg','个人描述6');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-29  9:42:59
