-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: rrgdkj
-- ------------------------------------------------------
-- Server version	5.7.17

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
-- Table structure for table `t_components_company`
--

DROP TABLE IF EXISTS `t_components_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_components_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addr` varchar(255) DEFAULT NULL,
  `disabled` tinyint(1) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_components_company`
--

LOCK TABLES `t_components_company` WRITE;
/*!40000 ALTER TABLE `t_components_company` DISABLE KEYS */;
INSERT INTO `t_components_company` VALUES (1,'江苏淮安',0,'354591802@qq.com','hPLDw4hozJ3wlJrtHPvY.png','江苏冉冉光电科技有限公司','13584301858');
/*!40000 ALTER TABLE `t_components_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_funder`
--

DROP TABLE IF EXISTS `t_funder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_funder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_funder`
--

LOCK TABLES `t_funder` WRITE;
/*!40000 ALTER TABLE `t_funder` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_funder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_news`
--

DROP TABLE IF EXISTS `t_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `context` text,
  `disabled` tinyint(1) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_news`
--

LOCK TABLES `t_news` WRITE;
/*!40000 ALTER TABLE `t_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_privilege`
--

DROP TABLE IF EXISTS `t_privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_privilege` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_privilege`
--

LOCK TABLES `t_privilege` WRITE;
/*!40000 ALTER TABLE `t_privilege` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_privilege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_role`
--

DROP TABLE IF EXISTS `t_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role`
--

LOCK TABLES `t_role` WRITE;
/*!40000 ALTER TABLE `t_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_role_privilege`
--

DROP TABLE IF EXISTS `t_role_privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_role_privilege` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `privi_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tqmw6w41obekkhxyhrcuxop7m` (`privi_id`),
  KEY `FK_ca8d4wtnphgofaiwswcsuchcw` (`role_id`),
  CONSTRAINT `FK_ca8d4wtnphgofaiwswcsuchcw` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`),
  CONSTRAINT `FK_tqmw6w41obekkhxyhrcuxop7m` FOREIGN KEY (`privi_id`) REFERENCES `t_privilege` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role_privilege`
--

LOCK TABLES `t_role_privilege` WRITE;
/*!40000 ALTER TABLE `t_role_privilege` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_role_privilege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_succeed_casus`
--

DROP TABLE IF EXISTS `t_succeed_casus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_succeed_casus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addr` varchar(255) DEFAULT NULL,
  `disabled` tinyint(1) NOT NULL,
  `end_time` date DEFAULT NULL,
  `predict_money` varchar(255) DEFAULT NULL,
  `photos` varchar(255) DEFAULT NULL,
  `reality_money` varchar(255) DEFAULT NULL,
  `start_time` date DEFAULT NULL,
  `component_company_id` int(11) DEFAULT NULL,
  `funder_id` int(11) DEFAULT NULL,
  `work_unit` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_sgy2xhyi9axc0fiw6713u8uh0` (`component_company_id`),
  KEY `FK_7cg3te8yjt5wi6djv0l1wb9yv` (`funder_id`),
  KEY `FK_1prv6y84158mlq9xwxh4j4bgw` (`work_unit`),
  CONSTRAINT `FK_1prv6y84158mlq9xwxh4j4bgw` FOREIGN KEY (`work_unit`) REFERENCES `t_work_unit` (`id`),
  CONSTRAINT `FK_7cg3te8yjt5wi6djv0l1wb9yv` FOREIGN KEY (`funder_id`) REFERENCES `t_funder` (`id`),
  CONSTRAINT `FK_sgy2xhyi9axc0fiw6713u8uh0` FOREIGN KEY (`component_company_id`) REFERENCES `t_components_company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_succeed_casus`
--

LOCK TABLES `t_succeed_casus` WRITE;
/*!40000 ALTER TABLE `t_succeed_casus` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_succeed_casus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login_log` varchar(255) DEFAULT NULL,
  `operate_log` varchar(255) DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (1,NULL,NULL,NULL,NULL,'63a9f0ea7bb98050796b649e85481845',NULL,'root');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user_role`
--

DROP TABLE IF EXISTS `t_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_4uvv76e86ms8ru0kk9s01d3s2` (`role_id`),
  KEY `FK_kefwen29p9h9ilvry31mgyc94` (`user_id`),
  CONSTRAINT `FK_4uvv76e86ms8ru0kk9s01d3s2` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`),
  CONSTRAINT `FK_kefwen29p9h9ilvry31mgyc94` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_role`
--

LOCK TABLES `t_user_role` WRITE;
/*!40000 ALTER TABLE `t_user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_work_unit`
--

DROP TABLE IF EXISTS `t_work_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_work_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addr` varchar(255) DEFAULT NULL,
  `disabled` tinyint(1) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_work_unit`
--

LOCK TABLES `t_work_unit` WRITE;
/*!40000 ALTER TABLE `t_work_unit` DISABLE KEYS */;
INSERT INTO `t_work_unit` VALUES (1,'江苏淮安',0,'354591802@qq.com','冉冉光电','13584301858');
/*!40000 ALTER TABLE `t_work_unit` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-29 16:01:42
