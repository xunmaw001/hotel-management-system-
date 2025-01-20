-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot173pp
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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/springboot173pp/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springboot173pp/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springboot173pp/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusskefangxinxi`
--

DROP TABLE IF EXISTS `discusskefangxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusskefangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='客房信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusskefangxinxi`
--

LOCK TABLES `discusskefangxinxi` WRITE;
/*!40000 ALTER TABLE `discusskefangxinxi` DISABLE KEYS */;
INSERT INTO `discusskefangxinxi` VALUES (111,'2021-03-08 17:33:19',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-03-08 17:33:19',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-03-08 17:33:19',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-03-08 17:33:19',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-03-08 17:33:19',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-03-08 17:33:19',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusskefangxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuwufeiyong`
--

DROP TABLE IF EXISTS `fuwufeiyong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fuwufeiyong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `fangjianhao` varchar(200) DEFAULT NULL COMMENT '房间号',
  `fuwuxiangmu` varchar(200) DEFAULT NULL COMMENT '服务项目',
  `fuwufeiyong` varchar(200) DEFAULT NULL COMMENT '服务费用',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  `beizhu` longtext COMMENT '备注',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='服务费用';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuwufeiyong`
--

LOCK TABLES `fuwufeiyong` WRITE;
/*!40000 ALTER TABLE `fuwufeiyong` DISABLE KEYS */;
INSERT INTO `fuwufeiyong` VALUES (71,'2021-03-08 17:33:19','用户账号1','用户姓名1','房间号1','服务项目1','服务费用1','2021-03-09 01:33:19','备注1','未支付'),(72,'2021-03-08 17:33:19','用户账号2','用户姓名2','房间号2','服务项目2','服务费用2','2021-03-09 01:33:19','备注2','未支付'),(73,'2021-03-08 17:33:19','用户账号3','用户姓名3','房间号3','服务项目3','服务费用3','2021-03-09 01:33:19','备注3','未支付'),(74,'2021-03-08 17:33:19','用户账号4','用户姓名4','房间号4','服务项目4','服务费用4','2021-03-09 01:33:19','备注4','未支付'),(75,'2021-03-08 17:33:19','用户账号5','用户姓名5','房间号5','服务项目5','服务费用5','2021-03-09 01:33:19','备注5','未支付'),(76,'2021-03-08 17:33:19','用户账号6','用户姓名6','房间号6','服务项目6','服务费用6','2021-03-09 01:33:19','备注6','未支付');
/*!40000 ALTER TABLE `fuwufeiyong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kefangfuwu`
--

DROP TABLE IF EXISTS `kefangfuwu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kefangfuwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuwuxiangmu` varchar(200) DEFAULT NULL COMMENT '服务项目',
  `fuwufeiyong` varchar(200) DEFAULT NULL COMMENT '服务费用',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `shijianduan` varchar(200) DEFAULT NULL COMMENT '时间段',
  `fuwuxiangqing` longtext COMMENT '服务详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='客房服务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kefangfuwu`
--

LOCK TABLES `kefangfuwu` WRITE;
/*!40000 ALTER TABLE `kefangfuwu` DISABLE KEYS */;
INSERT INTO `kefangfuwu` VALUES (31,'2021-03-08 17:33:19','服务项目1','服务费用1','http://localhost:8080/springboot173pp/upload/kefangfuwu_fengmian1.jpg','时间段1','服务详情1'),(32,'2021-03-08 17:33:19','服务项目2','服务费用2','http://localhost:8080/springboot173pp/upload/kefangfuwu_fengmian2.jpg','时间段2','服务详情2'),(33,'2021-03-08 17:33:19','服务项目3','服务费用3','http://localhost:8080/springboot173pp/upload/kefangfuwu_fengmian3.jpg','时间段3','服务详情3'),(34,'2021-03-08 17:33:19','服务项目4','服务费用4','http://localhost:8080/springboot173pp/upload/kefangfuwu_fengmian4.jpg','时间段4','服务详情4'),(35,'2021-03-08 17:33:19','服务项目5','服务费用5','http://localhost:8080/springboot173pp/upload/kefangfuwu_fengmian5.jpg','时间段5','服务详情5'),(36,'2021-03-08 17:33:19','服务项目6','服务费用6','http://localhost:8080/springboot173pp/upload/kefangfuwu_fengmian6.jpg','时间段6','服务详情6');
/*!40000 ALTER TABLE `kefangfuwu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kefangleixing`
--

DROP TABLE IF EXISTS `kefangleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kefangleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kefangleixing` varchar(200) NOT NULL COMMENT '客房类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kefangleixing` (`kefangleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='客房类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kefangleixing`
--

LOCK TABLES `kefangleixing` WRITE;
/*!40000 ALTER TABLE `kefangleixing` DISABLE KEYS */;
INSERT INTO `kefangleixing` VALUES (21,'2021-03-08 17:33:19','客房类型1'),(22,'2021-03-08 17:33:19','客房类型2'),(23,'2021-03-08 17:33:19','客房类型3'),(24,'2021-03-08 17:33:19','客房类型4'),(25,'2021-03-08 17:33:19','客房类型5'),(26,'2021-03-08 17:33:19','客房类型6');
/*!40000 ALTER TABLE `kefangleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kefangxinxi`
--

DROP TABLE IF EXISTS `kefangxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kefangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kefangmingcheng` varchar(200) NOT NULL COMMENT '客房名称',
  `kefangleixing` varchar(200) NOT NULL COMMENT '客房类型',
  `kefangtupian` varchar(200) NOT NULL COMMENT '客房图片',
  `kefangjiage` int(11) NOT NULL COMMENT '客房价格',
  `kefangsheshi` longtext COMMENT '客房设施',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `jiudianmingcheng` varchar(200) DEFAULT NULL COMMENT '酒店名称',
  `jiudiandizhi` varchar(200) DEFAULT NULL COMMENT '酒店地址',
  `kefangjieshao` longtext COMMENT '客房介绍',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='客房信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kefangxinxi`
--

LOCK TABLES `kefangxinxi` WRITE;
/*!40000 ALTER TABLE `kefangxinxi` DISABLE KEYS */;
INSERT INTO `kefangxinxi` VALUES (41,'2021-03-08 17:33:19','客房名称1','客房类型1','http://localhost:8080/springboot173pp/upload/kefangxinxi_kefangtupian1.jpg',1,'客房设施1','数量1','酒店名称1','酒店地址1','客房介绍1',1),(42,'2021-03-08 17:33:19','客房名称2','客房类型2','http://localhost:8080/springboot173pp/upload/kefangxinxi_kefangtupian2.jpg',2,'客房设施2','数量2','酒店名称2','酒店地址2','客房介绍2',2),(43,'2021-03-08 17:33:19','客房名称3','客房类型3','http://localhost:8080/springboot173pp/upload/kefangxinxi_kefangtupian3.jpg',3,'客房设施3','数量3','酒店名称3','酒店地址3','客房介绍3',3),(44,'2021-03-08 17:33:19','客房名称4','客房类型4','http://localhost:8080/springboot173pp/upload/kefangxinxi_kefangtupian4.jpg',4,'客房设施4','数量4','酒店名称4','酒店地址4','客房介绍4',4),(45,'2021-03-08 17:33:19','客房名称5','客房类型5','http://localhost:8080/springboot173pp/upload/kefangxinxi_kefangtupian5.jpg',5,'客房设施5','数量5','酒店名称5','酒店地址5','客房介绍5',5),(46,'2021-03-08 17:33:19','客房名称6','客房类型6','http://localhost:8080/springboot173pp/upload/kefangxinxi_kefangtupian6.jpg',6,'客房设施6','数量6','酒店名称6','酒店地址6','客房介绍6',6);
/*!40000 ALTER TABLE `kefangxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kefangyuding`
--

DROP TABLE IF EXISTS `kefangyuding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kefangyuding` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yudingbianhao` varchar(200) DEFAULT NULL COMMENT '预订编号',
  `kefangmingcheng` varchar(200) DEFAULT NULL COMMENT '客房名称',
  `kefangleixing` varchar(200) DEFAULT NULL COMMENT '客房类型',
  `kefangtupian` varchar(200) DEFAULT NULL COMMENT '客房图片',
  `jiudianmingcheng` varchar(200) DEFAULT NULL COMMENT '酒店名称',
  `jiudiandizhi` varchar(200) DEFAULT NULL COMMENT '酒店地址',
  `kefangjiage` int(11) DEFAULT NULL COMMENT '客房价格',
  `shuliang` int(11) NOT NULL COMMENT '数量',
  `zongjiage` int(11) DEFAULT NULL COMMENT '总价格',
  `ruzhurenshu` int(11) NOT NULL COMMENT '入住人数',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `beizhu` longtext COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yudingbianhao` (`yudingbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='客房预订';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kefangyuding`
--

LOCK TABLES `kefangyuding` WRITE;
/*!40000 ALTER TABLE `kefangyuding` DISABLE KEYS */;
INSERT INTO `kefangyuding` VALUES (51,'2021-03-08 17:33:19','预订编号1','客房名称1','客房类型1','http://localhost:8080/springboot173pp/upload/kefangyuding_kefangtupian1.jpg','酒店名称1','酒店地址1',1,1,1,1,'2021-03-09 01:33:19','用户账号1','用户姓名1','联系电话1','备注1','是','','未支付'),(52,'2021-03-08 17:33:19','预订编号2','客房名称2','客房类型2','http://localhost:8080/springboot173pp/upload/kefangyuding_kefangtupian2.jpg','酒店名称2','酒店地址2',2,2,2,2,'2021-03-09 01:33:19','用户账号2','用户姓名2','联系电话2','备注2','是','','未支付'),(53,'2021-03-08 17:33:19','预订编号3','客房名称3','客房类型3','http://localhost:8080/springboot173pp/upload/kefangyuding_kefangtupian3.jpg','酒店名称3','酒店地址3',3,3,3,3,'2021-03-09 01:33:19','用户账号3','用户姓名3','联系电话3','备注3','是','','未支付'),(54,'2021-03-08 17:33:19','预订编号4','客房名称4','客房类型4','http://localhost:8080/springboot173pp/upload/kefangyuding_kefangtupian4.jpg','酒店名称4','酒店地址4',4,4,4,4,'2021-03-09 01:33:19','用户账号4','用户姓名4','联系电话4','备注4','是','','未支付'),(55,'2021-03-08 17:33:19','预订编号5','客房名称5','客房类型5','http://localhost:8080/springboot173pp/upload/kefangyuding_kefangtupian5.jpg','酒店名称5','酒店地址5',5,5,5,5,'2021-03-09 01:33:19','用户账号5','用户姓名5','联系电话5','备注5','是','','未支付'),(56,'2021-03-08 17:33:19','预订编号6','客房名称6','客房类型6','http://localhost:8080/springboot173pp/upload/kefangyuding_kefangtupian6.jpg','酒店名称6','酒店地址6',6,6,6,6,'2021-03-09 01:33:19','用户账号6','用户姓名6','联系电话6','备注6','是','','未支付');
/*!40000 ALTER TABLE `kefangyuding` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='酒店公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2021-03-08 17:33:19','标题1','简介1','http://localhost:8080/springboot173pp/upload/news_picture1.jpg','内容1'),(102,'2021-03-08 17:33:19','标题2','简介2','http://localhost:8080/springboot173pp/upload/news_picture2.jpg','内容2'),(103,'2021-03-08 17:33:19','标题3','简介3','http://localhost:8080/springboot173pp/upload/news_picture3.jpg','内容3'),(104,'2021-03-08 17:33:19','标题4','简介4','http://localhost:8080/springboot173pp/upload/news_picture4.jpg','内容4'),(105,'2021-03-08 17:33:19','标题5','简介5','http://localhost:8080/springboot173pp/upload/news_picture5.jpg','内容5'),(106,'2021-03-08 17:33:19','标题6','简介6','http://localhost:8080/springboot173pp/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruzhudengji`
--

DROP TABLE IF EXISTS `ruzhudengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ruzhudengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yudingbianhao` varchar(200) DEFAULT NULL COMMENT '预订编号',
  `kefangmingcheng` varchar(200) DEFAULT NULL COMMENT '客房名称',
  `kefangleixing` varchar(200) DEFAULT NULL COMMENT '客房类型',
  `fangjianhao` varchar(200) DEFAULT NULL COMMENT '房间号',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dengjishijian` datetime DEFAULT NULL COMMENT '登记时间',
  `yajin` varchar(200) DEFAULT NULL COMMENT '押金',
  `beizhu` longtext COMMENT '备注',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='入住登记';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruzhudengji`
--

LOCK TABLES `ruzhudengji` WRITE;
/*!40000 ALTER TABLE `ruzhudengji` DISABLE KEYS */;
INSERT INTO `ruzhudengji` VALUES (61,'2021-03-08 17:33:19','预订编号1','客房名称1','客房类型1','房间号1','用户账号1','用户姓名1','联系电话1','2021-03-09 01:33:19','押金1','备注1','未支付'),(62,'2021-03-08 17:33:19','预订编号2','客房名称2','客房类型2','房间号2','用户账号2','用户姓名2','联系电话2','2021-03-09 01:33:19','押金2','备注2','未支付'),(63,'2021-03-08 17:33:19','预订编号3','客房名称3','客房类型3','房间号3','用户账号3','用户姓名3','联系电话3','2021-03-09 01:33:19','押金3','备注3','未支付'),(64,'2021-03-08 17:33:19','预订编号4','客房名称4','客房类型4','房间号4','用户账号4','用户姓名4','联系电话4','2021-03-09 01:33:19','押金4','备注4','未支付'),(65,'2021-03-08 17:33:19','预订编号5','客房名称5','客房类型5','房间号5','用户账号5','用户姓名5','联系电话5','2021-03-09 01:33:19','押金5','备注5','未支付'),(66,'2021-03-08 17:33:19','预订编号6','客房名称6','客房类型6','房间号6','用户账号6','用户姓名6','联系电话6','2021-03-09 01:33:19','押金6','备注6','未支付');
/*!40000 ALTER TABLE `ruzhudengji` ENABLE KEYS */;
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
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','zrd98bpzbmb2jnwjg73a64tuvabp010j','2021-03-08 17:35:16','2021-03-08 18:35:17');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tuifangdengji`
--

DROP TABLE IF EXISTS `tuifangdengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tuifangdengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yudingbianhao` varchar(200) DEFAULT NULL COMMENT '预订编号',
  `kefangmingcheng` varchar(200) DEFAULT NULL COMMENT '客房名称',
  `kefangleixing` varchar(200) DEFAULT NULL COMMENT '客房类型',
  `fangjianhao` varchar(200) DEFAULT NULL COMMENT '房间号',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `tuifangshijian` datetime DEFAULT NULL COMMENT '退房时间',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='退房登记';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tuifangdengji`
--

LOCK TABLES `tuifangdengji` WRITE;
/*!40000 ALTER TABLE `tuifangdengji` DISABLE KEYS */;
INSERT INTO `tuifangdengji` VALUES (81,'2021-03-08 17:33:19','预订编号1','客房名称1','客房类型1','房间号1','用户账号1','用户姓名1','联系电话1','2021-03-09 01:33:19','备注1'),(82,'2021-03-08 17:33:19','预订编号2','客房名称2','客房类型2','房间号2','用户账号2','用户姓名2','联系电话2','2021-03-09 01:33:19','备注2'),(83,'2021-03-08 17:33:19','预订编号3','客房名称3','客房类型3','房间号3','用户账号3','用户姓名3','联系电话3','2021-03-09 01:33:19','备注3'),(84,'2021-03-08 17:33:19','预订编号4','客房名称4','客房类型4','房间号4','用户账号4','用户姓名4','联系电话4','2021-03-09 01:33:19','备注4'),(85,'2021-03-08 17:33:19','预订编号5','客房名称5','客房类型5','房间号5','用户账号5','用户姓名5','联系电话5','2021-03-09 01:33:19','备注5'),(86,'2021-03-08 17:33:19','预订编号6','客房名称6','客房类型6','房间号6','用户账号6','用户姓名6','联系电话6','2021-03-09 01:33:19','备注6');
/*!40000 ALTER TABLE `tuifangdengji` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-08 17:33:19');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-08 17:33:19','用户1','用户姓名1','123456','男',1,'13823888881','773890001@qq.com'),(12,'2021-03-08 17:33:19','用户2','用户姓名2','123456','男',2,'13823888882','773890002@qq.com'),(13,'2021-03-08 17:33:19','用户3','用户姓名3','123456','男',3,'13823888883','773890003@qq.com'),(14,'2021-03-08 17:33:19','用户4','用户姓名4','123456','男',4,'13823888884','773890004@qq.com'),(15,'2021-03-08 17:33:19','用户5','用户姓名5','123456','男',5,'13823888885','773890005@qq.com'),(16,'2021-03-08 17:33:19','用户6','用户姓名6','123456','男',6,'13823888886','773890006@qq.com');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-14 11:02:17
