-- MySQL dump 10.13  Distrib 5.7.11, for Linux (i686)
--
-- Host: localhost    Database: exercise
-- ------------------------------------------------------
-- Server version       5.7.11

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
-- Table structure for table `battle_record`
--
use exercise;
DROP TABLE IF EXISTS `battle_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `battle_record` (
  `battle_record_numb` int(11) NOT NULL AUTO_INCREMENT COMMENT '�ε���',
  `user_numb` int(11) NOT NULL COMMENT 'ȸ�� ��ȣ',
  `fuser_numb` int(11) NOT NULL COMMENT 'ģ�� ȸ�� ��ȣ',
  `start_date` date NOT NULL COMMENT '���� ��¥',
  `end_date` date NOT NULL COMMENT '���� ��¥',
  `result` tinyint(4) NOT NULL COMMENT '���',

  PRIMARY KEY (`battle_record_numb`,`user_numb`,`fuser_numb`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `battle_record`
--

LOCK TABLES `battle_record` WRITE;
/*!40000 ALTER TABLE `battle_record` DISABLE KEYS */;
INSERT INTO `battle_record` VALUES (11,4,3,'2016-04-21','2016-04-24',3),(12,3,4,'2016-04-21','2016-04-24',3),(13,2,1,'2016-04-23','2016-04-25',1),(14,1,2,'2016-04-23','2016-04-25',2);
/*!40000 ALTER TABLE `battle_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `article_numb` int(11) NOT NULL AUTO_INCREMENT COMMENT '�ε���',
  `user_numb` int(11) DEFAULT NULL,
  `board_category` int(11) NOT NULL COMMENT 'ī�װ�',
  `title` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT '�� ����',
  `content` mediumtext COLLATE utf8_unicode_ci NOT NULL COMMENT '�� ����',
  PRIMARY KEY (`article_numb`),
  KEY `user_numb` (`user_numb`),
  CONSTRAINT `board_ibfk_1` FOREIGN KEY (`user_numb`) REFERENCES `user` (`user_numb`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;

INSERT INTO `board` VALUES (17,1,1,'�������� ���̾�Ʈ ����!!!!',''),(18,2,2,'����� Ű��� ������ � ��� �ؾ��ϳ���?',''),(19,3,1,'���� �� ���ǻ���',''),(20,4,2,'�ФФ� �����ּ���','');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `challenge_complete_list`
--

DROP TABLE IF EXISTS `challenge_complete_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `challenge_complete_list` (
  `challenge_numb` int(11) NOT NULL COMMENT '���� ���� ��ȣ',
  `user_numb` int(11) NOT NULL COMMENT 'ȸ�� ��ȣ',
  `clear_date` date NOT NULL COMMENT '�Ϸ� ��¥',
  PRIMARY KEY (`challenge_numb`,`user_numb`),
  KEY `user_numb` (`user_numb`),
  CONSTRAINT `challenge_complete_list_ibfk_1` FOREIGN KEY (`challenge_numb`) REFERENCES `challenge_list` (`challenge_numb`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `challenge_complete_list_ibfk_2` FOREIGN KEY (`user_numb`) REFERENCES `user` (`user_numb`) ON DELETE NO ACTION ON UPDATE NO ACTION

) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `challenge_complete_list`
--

LOCK TABLES `challenge_complete_list` WRITE;
/*!40000 ALTER TABLE `challenge_complete_list` DISABLE KEYS */;
INSERT INTO `challenge_complete_list` VALUES (1,2,'2016-04-20'),(2,1,'2016-04-23'),(2,2,'2016-05-24'),(3,2,'2016-05-26'),(3,3,'2016-04-21'),(4,4,'2016-04-22');
/*!40000 ALTER TABLE `challenge_complete_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `challenge_list`
--

DROP TABLE IF EXISTS `challenge_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `challenge_list` (
  `challenge_numb` int(11) NOT NULL COMMENT '���� ���� ��ȣ',
  `challenge_title` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT '���� ���� ����',
  `challenge_condition` mediumtext COLLATE utf8_unicode_ci NOT NULL COMMENT '���� ���� ����',
  PRIMARY KEY (`challenge_numb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `challenge_list`
--

LOCK TABLES `challenge_list` WRITE;
/*!40000 ALTER TABLE `challenge_list` DISABLE KEYS */;
INSERT INTO `challenge_list` VALUES (1,'',''),(2,'',''),(3,'',''),(4,'','');
/*!40000 ALTER TABLE `challenge_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `check_point`
--

DROP TABLE IF EXISTS `check_point`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `check_point` (
  `check_point_index` int(11) NOT NULL AUTO_INCREMENT,
  `point_numb` int(11) DEFAULT NULL,
  `exercise_numb` int(11) DEFAULT NULL,
  `position_check` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`check_point_index`),
  KEY `check_point___fk` (`exercise_numb`),
  CONSTRAINT `check_point___fk` FOREIGN KEY (`exercise_numb`) REFERENCES `exercise_info` (`exercise_numb`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `check_point`
--

LOCK TABLES `check_point` WRITE;
/*!40000 ALTER TABLE `check_point` DISABLE KEYS */;

INSERT INTO `check_point` VALUES (1,0,2,'���� �Ȳ�ġ�� ������ ���Խ��ϴ�.'),(2,1,2,'������ �Ȳ�ġ�� ������ ���Խ��ϴ�.'),(3,2,2,'���� �ո��� ������ ���Խ��ϴ�.'),(4,3,2,'������ �ո��� ������ ���Խ��ϴ�.'),(5,0,3,'���� �Ȳ�ġ�� ������ ���Խ��ϴ�.'),(6,1,3,'������ �Ȳ�ġ�� ������ ���Խ��ϴ�.'),(7,2,3,'���� �ո��� ������ ���Խ��ϴ�.'),(8,3,3,'������ �ո��� ������ ���Խ��ϴ�.'),(9,4,1,'������ �ʹ� ������ ���Խ��ϴ�.'),(10,6,1,'�ٸ��� �ʹ� ���Ƚ��ϴ�.'),(11,5,1,'��ü�� �ʹ� �������ϴ�.'),(12,0,2,'���� ���� �Ǽ� �߽��ϴ�.'),(13,1,2,'������ ���� �Ǽ� �߽��ϴ�.'),(14,0,3,'���� ���� �Ǽ� �߽��ϴ�.'),(15,1,3,'������ ���� �Ǽ� �߽��ϴ�.');

/*!40000 ALTER TABLE `check_point` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercise_info`
--

DROP TABLE IF EXISTS `exercise_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exercise_info` (
  `exercise_numb` int(11) NOT NULL AUTO_INCREMENT COMMENT '� ��ȣ',
  `exercise_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT '� �̸�',
  `exercise_info` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `exercise_point_numb` int(11) NOT NULL COMMENT '� ���� ��ȣ',
  `kinematic_coefficient` float DEFAULT NULL,
  PRIMARY KEY (`exercise_numb`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercise_info`
--

LOCK TABLES `exercise_info` WRITE;
/*!40000 ALTER TABLE `exercise_info` DISABLE KEYS */;

INSERT INTO `exercise_info` VALUES (1,'����Ʈ','����ư�� ��ü� �߿����� ���� �������� ���� �Һ��ϴ� ��̶� ü���� ���ҿ��� ȿ���� ū ��Դϴ�.\r\n�� �ߴ޵� ����� ������ �б��� �������� ��ɷ��� �վ�� ���� �ٽ��� ��ҷ� �ۿ��մϴ�. \r\n����Ʈ �Ʒ��� ���� ��ü �ٷ� �ߴ��� �����̰�, ��������� �ߴ��ϸ鼭 �ռ��� �׽��佺�׷� �к� ȿ���� ���� �� �ֽ��ϴ�.\r\n�㸮�� �ھ� ������ ���� �¸�� �ߴ޿��� ������ �Ǹ� ������ ������� �ڱص� �ֹǷ� ���� ��̶�� �����ϼŵ� �����մϴ�.',2,1.84),(2,'���� ��� ������','���� ��� �������� ������ �ǽ��ϴ� ������� ������ ����� �ٺ����� ���� ���� ������ �����ǰ�\r\n�ֺ��� �پ��� �������� ��ȭ�ο� ���� �ɷ°� ���� ���� �ɷ��� �ߴ޽�ų �� �ִ� � �Դϴ�.\r\n���� ������ �а�, � ȿ���� Ȯ���� ��ŭ �ڼ��� �������� ���� �߿������� �ǹǷ� �ڼ��� ��Ʈ���� ������ ���ſ� �߷��� ������� ����, ���� �߷��� �̿��ϼž� �մϴ�.',1,2.1),(3,'���̵� ���ͷ� ������','���̵� ���ͷ� ������� �ﰢ���� ������ ���� �� �ִ� \r\n�ܰ��� � �� ���� �ﰢ���� �ߴ޽�Ű�� ���� ��Դϴ�.\r\n������ ���۰� �޸� �ڱؽ�Ű�� ������ ������ ������ �� �ְ�, \r\n��ǥ ���� ���࿡ ������ �� �ִٴ� ������ �ֽ��ϴ�.\r\n���� ���׿� �����ϴ� �ټ������� �ڱ��ϱ� ���� ���߷�, ��ݺ����� \r\n�ǽ����ִ°� �����ϴ�.',1,2.2),(4,'����','������ ��б� ų����� �Ҹ��� ��̸�, ������ �� ����Ʈ�� ����µ� �־� �����մϴ�.\r\n������ �ܼ��� ������ �ߴ޽�Ű�� ȿ�� �Ӹ� �ƴ϶� �پ��� ������ ���� �ɷ�, ���� ���� �ɷ�,\r\n��Ű���� �ߴ޿��� ȿ������ ��Դϴ�. �׸��� ������ �ٸ��� �Ų����� �ʽø� �츱�� �ְ�,\r\n������ �츱 �� �ְ� ���� �� �ִ� � ����Դϴ�.',2,1.83);

/*!40000 ALTER TABLE `exercise_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercise_movie_info`
--

DROP TABLE IF EXISTS `exercise_movie_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exercise_movie_info` (
  `exercise_numb` int(11) NOT NULL COMMENT '� ��ȣ',
  `movie_order` int(11) NOT NULL COMMENT '������ ����',
  `movie_path` mediumtext COLLATE utf8_unicode_ci NOT NULL COMMENT '������ ���',
  PRIMARY KEY (`exercise_numb`,`movie_order`),
  CONSTRAINT `exercise_movie_info_ibfk_1` FOREIGN KEY (`exercise_numb`) REFERENCES `exercise_info` (`exercise_numb`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercise_movie_info`
--

LOCK TABLES `exercise_movie_info` WRITE;
/*!40000 ALTER TABLE `exercise_movie_info` DISABLE KEYS */;
INSERT INTO `exercise_movie_info` VALUES (1,1,'/public/video/exercise/squt.mp4'),(2,2,'/public/video/exercise/dumbel.mp4'),(3,3,'/public/video/exercise/side.mp4'),(4,4,'/public/video/exercise/lunge.mp4');
/*!40000 ALTER TABLE `exercise_movie_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercise_order`
--

DROP TABLE IF EXISTS `exercise_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exercise_order` (
  `routine_list_index` int(11) NOT NULL,
  `numb_set_index` int(11) NOT NULL,
  `exercise_order` int(11) NOT NULL,
  PRIMARY KEY (`routine_list_index`,`numb_set_index`),
  CONSTRAINT `exercise_order_ibfk_1` FOREIGN KEY (`routine_list_index`) REFERENCES `routine_list` (`routine_list_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercise_order`
--

LOCK TABLES `exercise_order` WRITE;
/*!40000 ALTER TABLE `exercise_order` DISABLE KEYS */;
INSERT INTO `exercise_order` VALUES (1,2,2),(1,3,1),(2,1,2),(2,2,1),(2,3,3),(3,2,2),(3,4,1),(4,2,1),(4,3,2),(5,2,1),(5,3,2),(5,4,3),(6,1,1),(6,3,2),(6,5,3),(7,1,2),(7,5,1),(8,6,1),(8,7,2);
/*!40000 ALTER TABLE `exercise_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercise_point`
--

DROP TABLE IF EXISTS `exercise_point`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exercise_point` (
  `exercise_point_numb` int(11) NOT NULL AUTO_INCREMENT COMMENT '� ���� ��ȣ',
  `exercise_point_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT '� ���� �̸�',
  PRIMARY KEY (`exercise_point_numb`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercise_point`
--

LOCK TABLES `exercise_point` WRITE;
/*!40000 ALTER TABLE `exercise_point` DISABLE KEYS */;
INSERT INTO `exercise_point` VALUES (0,'�����'),(1,'���');
/*!40000 ALTER TABLE `exercise_point` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercise_record`
--

DROP TABLE IF EXISTS `exercise_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exercise_record` (
  `ex_record_numb` int(11) NOT NULL AUTO_INCREMENT,
  `user_numb` int(11) NOT NULL COMMENT 'ȸ����ȣ',
  `exercise_numb` int(11) NOT NULL COMMENT '���ȣ',
  `target_count` int(11) NOT NULL COMMENT '��ǥ � Ƚ��',
  `clear_count` int(11) NOT NULL COMMENT '���� � Ƚ��',
  `exercise_date` date NOT NULL COMMENT '� ��¥',
  PRIMARY KEY (`ex_record_numb`,`user_numb`,`exercise_numb`),
  KEY `exercise_numb` (`exercise_numb`),
  KEY `user_numb` (`user_numb`),
  CONSTRAINT `exercise_record_ibfk_1` FOREIGN KEY (`user_numb`) REFERENCES `user` (`user_numb`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `exercise_record_ibfk_2` FOREIGN KEY (`exercise_numb`) REFERENCES `exercise_info` (`exercise_numb`) ON DELETE NO ACTION ON UPDATE NO ACTION

) ENGINE=InnoDB AUTO_INCREMENT=443 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercise_record`
--

LOCK TABLES `exercise_record` WRITE;
/*!40000 ALTER TABLE `exercise_record` DISABLE KEYS */;

INSERT INTO `exercise_record` VALUES (48,2,3,30,5,'2016-05-29'),(49,2,2,30,5,'2016-05-29'),(50,2,2,30,5,'2016-05-31'),(51,2,3,30,5,'2016-05-31'),(58,2,2,30,5,'2016-05-30'),(59,2,1,20,5,'2016-05-30'),(60,2,3,30,5,'2016-05-30'),
(223,2,2,10,0,'2016-06-24'),(224,2,3,6,0,'2016-06-24'),(251,2,2,30,30,'2016-06-15'),(254,2,3,30,30,'2016-06-15'),(298,2,2,30,0,'2016-07-20'),(299,2,2,30,0,'2016-07-22'),(300,2,2,30,0,'2016-07-18'),(301,2,3,30,0,'2016-07-20'),
(302,2,3,30,0,'2016-07-22'),(303,2,3,30,0,'2016-07-18'),(304,2,2,30,0,'2016-07-26'),(305,2,2,30,0,'2016-07-28'),(306,2,3,30,0,'2016-07-26'),(307,2,3,30,0,'2016-07-28'),(308,2,2,30,0,'2016-07-11'),(309,2,2,30,0,'2016-07-13'),
(310,2,3,30,0,'2016-07-11'),(311,2,3,30,0,'2016-07-13'),(312,2,2,30,0,'2016-07-06'),(313,2,2,30,0,'2016-07-08'),(314,2,3,30,0,'2016-07-06'),(315,2,3,30,0,'2016-07-08'),(316,2,4,40,0,'2016-07-06'),(317,2,4,40,0,'2016-07-08'),
(318,2,2,30,0,'2016-07-29'),(319,2,2,30,0,'2016-07-27'),(320,2,3,30,0,'2016-07-29'),(321,2,3,30,0,'2016-07-27'),(322,2,2,30,0,'2016-07-01'),(323,2,2,30,0,'2016-07-07'),(324,2,3,30,0,'2016-07-01'),(325,2,3,30,0,'2016-07-07'),
(326,2,2,30,0,'2016-07-04'),(327,2,2,30,0,'2016-07-14'),(328,2,2,30,0,'2016-07-19'),(329,2,3,30,0,'2016-07-04'),(330,2,3,30,0,'2016-07-14'),(331,2,3,30,0,'2016-07-19'),(332,2,4,40,0,'2016-07-04'),(333,2,4,40,0,'2016-07-14'),
(334,2,4,40,0,'2016-07-19'),(335,2,2,30,0,'2016-08-11'),(336,2,2,30,0,'2016-08-10'),(337,2,2,30,0,'2016-08-12'),(338,2,3,30,0,'2016-08-11'),(339,2,3,30,0,'2016-08-10'),
(340,2,3,30,0,'2016-08-12'),(341,2,2,30,0,'2016-07-21'),(342,2,2,30,0,'2016-07-15'),(343,2,3,30,0,'2016-07-21'),(344,2,3,30,0,'2016-07-15'),(345,2,3,30,0,'2016-08-15'),(346,3,2,30,1,'2016-08-17'),(347,3,3,30,0,'2016-08-19'),
(348,2,2,30,0,'2016-08-15'),(349,3,2,30,0,'2016-08-17'),
(350,3,2,30,0,'2016-08-19'),(351,3,2,30,0,'2016-08-22'),(352,3,2,30,0,'2016-08-24'),(353,3,2,30,20,'2016-05-26'),(354,3,3,30,0,'2016-08-22'),(355,3,3,30,0,'2016-08-24'),(356,3,3,30,20,'2016-05-26'),
(362,2,2,10,10,'2016-06-05'),(364,2,3,6,6,'2016-06-05'),(372,2,2,30,30,'2016-06-08'),(373,2,2,30,30,'2016-06-10'),(375,2,3,30,25,'2016-06-08'),(376,2,3,30,31,'2016-06-10'),(378,2,4,40,33,'2016-06-08'),
(379,2,4,40,38,'2016-06-10'),(396,3,2,30,10,'2016-06-12'),(397,3,3,30,10,'2016-06-12'),(398,2,2,10,10,'2016-06-12'),(399,2,3,6,6,'2016-06-12'),(410,2,2,10,0,'2016-06-18'),(411,2,3,6,0,'2016-06-18'),(412,2,3,30,0,'2016-06-19'),
(413,2,2,30,0,'2016-06-19'),(414,2,4,45,0,'2016-06-20'),(415,2,1,20,0,'2016-06-20'),(416,2,2,30,0,'2016-06-21'),(417,2,3,30,0,'2016-06-21'),
(418,2,2,30,20,'2016-06-07'),(419,2,2,30,5,'2016-06-09'),(420,2,2,30,30,'2016-06-11'),(421,2,3,30,30,'2016-06-07'),
(422,2,3,30,10,'2016-06-09'),(423,2,3,30,30,'2016-06-11'),(424,2,2,10,2,'2016-06-14'),
(425,2,2,10,5,'2016-06-16'),(426,2,2,10,0,'2016-06-18'),(427,2,3,6,3,'2016-06-14'),(428,2,3,6,6,'2016-06-16'),(429,2,3,6,0,'2016-06-18'),
(430,2,3,30,0,'2016-06-20'),(431,2,2,30,0,'2016-06-20'),(432,2,3,6,6,'2016-06-17'),(433,2,2,10,10,'2016-06-17'),(434,2,1,20,0,'2016-06-19'),
(435,2,3,30,0,'2016-06-19'),(436,2,4,45,0,'2016-06-19'),(437,2,2,30,0,'2016-06-30'),(438,2,1,20,0,'2016-06-30'),(439,2,3,30,0,'2016-06-30'),
(440,2,1,20,0,'2016-06-21'),(441,2,3,30,0,'2016-06-21'),(442,2,4,45,0,'2016-06-21');
/*!40000 ALTER TABLE `exercise_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exercise_repeat_numb`
--

DROP TABLE IF EXISTS `exercise_repeat_numb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exercise_repeat_numb` (
  `numb_set_index` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Ƚ�� ���� �ε���',
  `exercise_numb` int(11) NOT NULL COMMENT '� ��ȣ',
  `number_of_set` int(11) NOT NULL COMMENT '��Ʈ ��',
  `number_of_count` int(11) NOT NULL COMMENT '1��Ʈ �� Ƚ��',
  PRIMARY KEY (`numb_set_index`,`exercise_numb`),
  KEY `exercise_numb` (`exercise_numb`),
  CONSTRAINT `exercise_repeat_numb_ibfk_1` FOREIGN KEY (`exercise_numb`) REFERENCES `exercise_info` (`exercise_numb`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercise_repeat_numb`
--

LOCK TABLES `exercise_repeat_numb` WRITE;
/*!40000 ALTER TABLE `exercise_repeat_numb` DISABLE KEYS */;
INSERT INTO `exercise_repeat_numb` VALUES (1,1,2,10),(2,2,3,10),(3,3,3,10),(4,4,2,20),(5,4,3,15),(6,2,2,5),(7,3,2,3);
/*!40000 ALTER TABLE `exercise_repeat_numb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friends` (
  `f_index` int(11) NOT NULL AUTO_INCREMENT COMMENT '�ε���',
  `user_numb` int(11) NOT NULL COMMENT 'ȸ�� ��ȣ',
  `fuser_numb` int(11) NOT NULL COMMENT 'ģ�� ȸ�� ��ȣ',
  PRIMARY KEY (`f_index`,`user_numb`),
  KEY `user_numb` (`user_numb`),
  CONSTRAINT `friends_ibfk_1` FOREIGN KEY (`user_numb`) REFERENCES `user` (`user_numb`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends`
--

LOCK TABLES `friends` WRITE;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
INSERT INTO `friends` VALUES (13,1,2),(14,2,1),(15,3,4),(16,4,3);
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pic`
--

DROP TABLE IF EXISTS `pic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pic` (
  `pic_numb` int(11) NOT NULL AUTO_INCREMENT COMMENT '�ε���',
  `user_numb` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ȸ�� ��ȣ',
  `pic_path` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT '���� ���',
  `shoot_date` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT '�Կ� ��¥',
  PRIMARY KEY (`pic_numb`,`user_numb`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pic`
--

LOCK TABLES `pic` WRITE;
/*!40000 ALTER TABLE `pic` DISABLE KEYS */;
INSERT INTO `pic` VALUES (11,'1','pic_path 1','2016-04-24'),(12,'2','pic_path 2','2016-04-25'),(13,'3','pic_path 3','2016-04-23'),(14,'4','pic_path 4','2016-04-22');
/*!40000 ALTER TABLE `pic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rank`
--

DROP TABLE IF EXISTS `rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rank` (
  `exercise_numb` int(11) NOT NULL COMMENT '� ��ȣ',
  `user_numb` int(11) NOT NULL COMMENT 'ȸ����ȣ',
  `rank` int(11) NOT NULL COMMENT '��ŷ',
  PRIMARY KEY (`exercise_numb`,`user_numb`),
  KEY `user_numb` (`user_numb`),
  CONSTRAINT `rank_ibfk_1` FOREIGN KEY (`exercise_numb`) REFERENCES `exercise_info` (`exercise_numb`),
  CONSTRAINT `rank_ibfk_2` FOREIGN KEY (`user_numb`) REFERENCES `user` (`user_numb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rank`
--

LOCK TABLES `rank` WRITE;
/*!40000 ALTER TABLE `rank` DISABLE KEYS */;
INSERT INTO `rank` VALUES (1,1,20),(2,2,17),(3,3,5);
/*!40000 ALTER TABLE `rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routine_info`
--

DROP TABLE IF EXISTS `routine_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `routine_info` (
  `routine_list_index` int(11) NOT NULL AUTO_INCREMENT COMMENT '��ƾ ����Ʈ �ε���',
  `diffculty` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT '���̵�',
  `routine_category` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ī�װ�',
  PRIMARY KEY (`routine_list_index`),
  CONSTRAINT `routine_info_ibfk_1` FOREIGN KEY (`routine_list_index`) REFERENCES `routine_list` (`routine_list_index`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routine_info`
--

LOCK TABLES `routine_info` WRITE;
/*!40000 ALTER TABLE `routine_info` DISABLE KEYS */;

INSERT INTO `routine_info` VALUES (1,'��','���'),(2,'��','�����'),(3,'��','���'),(4,'��','���'),(5,'��','�����'),(6,'��','�����'),(7,'��','���'),(8,'��','���');
/*!40000 ALTER TABLE `routine_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routine_list`
--

DROP TABLE IF EXISTS `routine_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `routine_list` (
  `routine_list_index` int(11) NOT NULL AUTO_INCREMENT COMMENT '��ƾ ����Ʈ �ε���',
  `routine_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT '��ƾ �̸�',
  PRIMARY KEY (`routine_list_index`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routine_list`
--

LOCK TABLES `routine_list` WRITE;
/*!40000 ALTER TABLE `routine_list` DISABLE KEYS */;

INSERT INTO `routine_list` VALUES (1,'���(�����)'),(2,'�����(�ʽ���)'),(3,'���(�ʽ���)'),(4,'���(�߱���)'),(5,'�����(�߱���)'),(6,'�����(�����)'),(7,'���(�����2)'),(8,'���(�׽�Ʈ)');
/*!40000 ALTER TABLE `routine_list` ENABLE KEYS */;
UNLOCK TABLES;

--

-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_numb` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ȸ�� ��ȣ',
  `id` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT '���̵�',
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '��й�ȣ',
  `mail` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT '�̸���',
  `nick` varchar(45) COLLATE utf8_unicode_ci NOT NULL COMMENT '�г���',
  `height` int(11) DEFAULT NULL COMMENT 'Ű',
  `level` int(11) NOT NULL DEFAULT '1' COMMENT '����',
  `pic` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_numb`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` VALUES (1,'gustjd15','1234','gustjd15@naver.com','YGgood',180,99,NULL),(2,'kim','1234','kim11@gmail.com','HONGgyu',168,2,'2.jpg'),(3,'bae','1234','pae41@hanmail.com','PAEPAE',170,3,'3.jpg'),
(4,'bak','1234','back23@naver.com','bakadayo',158,1,NULL),(5,'test','test','test@test.com','tester',180,2,NULL),(6,'kimtaeyoon','qmffn112','hongkyunkim@naver.com','������¯����',163,1,NULL),
(7,'kingtaeyoon','qmffn112','hongkyunkim@naver.com','TaeYoonBaby',176,1,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_position_record`
--

DROP TABLE IF EXISTS `user_position_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_position_record` (
  `user_numb` int(11) NOT NULL COMMENT 'ȸ�� ��ȣ',
  `position_count` int(11) NOT NULL COMMENT 'ī��Ʈ',
  `position_check_date` date NOT NULL COMMENT '��� ��¥',
  `check_point_index` int(11) DEFAULT NULL,
  `position_record_index` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`position_record_index`),
  KEY `user_numb` (`user_numb`),
  KEY `user_position_record___fk` (`check_point_index`),
  CONSTRAINT `user_position_record___fk` FOREIGN KEY (`check_point_index`) REFERENCES `check_point` (`check_point_index`),
  CONSTRAINT `user_position_record_ibfk_1` FOREIGN KEY (`user_numb`) REFERENCES `user` (`user_numb`)
) ENGINE=InnoDB AUTO_INCREMENT=489 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_position_record`
--

LOCK TABLES `user_position_record` WRITE;
/*!40000 ALTER TABLE `user_position_record` DISABLE KEYS */;

INSERT INTO `user_position_record` VALUES (2,6,'2016-05-29',1,1),(2,6,'2016-05-29',2,2),(2,3,'2016-05-30',9,3),(2,3,'2016-05-30',11,4),(2,6,'2016-05-30',3,5),(2,6,'2016-05-31',3,6),
(2,6,'2016-05-31',4,7),(2,3,'2016-05-29',5,8),(2,6,'2016-05-30',4,9),(3,1,'2016-05-26',1,168),(3,0,'2016-05-26',2,169),(3,1,'2016-05-26',3,170),
(3,1,'2016-05-26',4,171),(3,1,'2016-05-26',5,172),(3,0,'2016-05-26',6,173),(3,0,'2016-05-26',7,174),(3,0,'2016-05-26',8,175),
(2,1,'2016-06-15',1,176),(2,0,'2016-06-15',2,177),(2,0,'2016-06-15',3,178),(2,0,'2016-06-15',4,179),(2,1,'2016-06-15',5,180),
(2,0,'2016-06-15',6,181),(2,0,'2016-06-15',7,182),(2,0,'2016-06-15',8,183),(2,1,'2016-06-16',1,184),(2,0,'2016-06-16',2,185),
(2,1,'2016-06-16',3,186),(2,0,'2016-06-16',4,187),(2,1,'2016-06-16',5,188),(2,3,'2016-06-16',12,189),(2,2,'2016-06-16',13,190),
(2,0,'0000-00-00',4,191),(2,1,'0000-00-00',1,204),(2,0,'0000-00-00',2,205),(2,0,'0000-00-00',3,206),(2,0,'0000-00-00',4,207),(2,1,'0000-00-00',1,208),
(2,0,'0000-00-00',2,209),(2,1,'0000-00-00',3,210),(2,0,'0000-00-00',4,211),(2,1,'2016-06-14',1,212),(2,1,'2016-06-14',2,213),(2,0,'2016-06-14',3,214),
(2,0,'2016-06-14',4,215),(2,0,'2016-06-14',5,216),(2,0,'2016-06-14',6,217),(2,0,'2016-06-14',7,218),(2,0,'2016-06-14',8,219),(2,0,'0000-00-00',5,220),(2,0,'2016-06-16',6,221),
(2,0,'2016-06-16',7,222),(2,0,'2016-06-16',8,223),(2,0,'0000-00-00',5,224),(2,0,'0000-00-00',6,225),(2,0,'0000-00-00',7,226),(2,0,'0000-00-00',8,227),
(2,0,'0000-00-00',5,228),(2,0,'0000-00-00',6,229),(2,0,'0000-00-00',7,230),(2,0,'0000-00-00',8,231),(2,0,'0000-00-00',5,232),(2,0,'0000-00-00',6,233),
(2,0,'0000-00-00',7,234),(2,0,'0000-00-00',8,235),(2,0,'0000-00-00',1,236),(2,0,'0000-00-00',2,237),(2,0,'0000-00-00',3,238),
(2,0,'0000-00-00',4,239),(2,0,'0000-00-00',1,240),(2,0,'0000-00-00',2,241),(2,0,'0000-00-00',3,242),(2,0,'0000-00-00',4,243),(2,0,'0000-00-00',1,244),
(2,0,'0000-00-00',2,245),(2,0,'0000-00-00',3,246),(2,0,'0000-00-00',4,247),(2,0,'0000-00-00',1,248),(2,1,'0000-00-00',2,249),(2,0,'0000-00-00',3,250),
(2,1,'0000-00-00',4,251),(2,0,'0000-00-00',1,252),(2,0,'0000-00-00',2,253),(2,0,'0000-00-00',3,254),(2,0,'0000-00-00',4,255),(2,0,'0000-00-00',1,256),
(2,0,'0000-00-00',2,257),(2,0,'0000-00-00',3,258),(2,0,'0000-00-00',4,259),(2,0,'0000-00-00',1,260),(2,0,'0000-00-00',2,261),(2,0,'0000-00-00',3,262),
(2,0,'0000-00-00',4,263),(2,0,'0000-00-00',1,264),(2,1,'0000-00-00',2,265),(2,0,'0000-00-00',3,266),(2,1,'0000-00-00',4,267),(2,1,'0000-00-00',1,268),
(2,1,'0000-00-00',2,269),(2,1,'0000-00-00',3,270),(2,1,'0000-00-00',4,271),(2,0,'0000-00-00',1,272),(2,1,'0000-00-00',2,273),(2,0,'0000-00-00',3,274),
(2,0,'0000-00-00',4,275),(2,0,'0000-00-00',1,276),(2,1,'0000-00-00',2,277),(2,0,'0000-00-00',3,278),(2,0,'0000-00-00',4,279),(2,0,'0000-00-00',1,280),
(2,1,'0000-00-00',2,281),(2,0,'0000-00-00',3,282),(2,0,'0000-00-00',4,283),(2,0,'0000-00-00',1,284),(2,1,'0000-00-00',2,285),(2,0,'0000-00-00',3,286),
(2,0,'0000-00-00',4,287),(2,0,'0000-00-00',5,288),(2,0,'0000-00-00',6,289),(2,0,'0000-00-00',7,290),(2,0,'0000-00-00',8,291),(2,0,'0000-00-00',5,292),
(2,0,'0000-00-00',6,293),(2,0,'0000-00-00',7,294),(2,0,'0000-00-00',8,295),(2,0,'0000-00-00',5,296),(2,0,'0000-00-00',6,297),(2,0,'0000-00-00',7,298),
(2,0,'0000-00-00',8,299),(2,0,'0000-00-00',5,300),(2,0,'0000-00-00',6,301),(2,0,'0000-00-00',7,302),(2,0,'0000-00-00',8,303),(2,0,'0000-00-00',5,304),
(2,0,'0000-00-00',6,305),(2,0,'0000-00-00',7,306),(2,0,'0000-00-00',8,307),(2,1,'2016-06-02',1,308),(2,0,'2016-06-02',2,309),(2,0,'2016-06-02',3,310),
(2,0,'2016-06-02',4,311),(3,1,'2016-06-12',1,312),(3,1,'2016-06-12',2,313),(3,2,'2016-06-12',3,314),(3,0,'2016-06-12',4,315),(3,2,'2016-06-12',5,316),
(3,0,'2016-06-12',6,317),(3,1,'2016-06-12',7,318),(3,0,'2016-06-12',8,319),(3,1,'2016-06-13',1,320),(3,2,'2016-06-13',2,321),(3,3,'2016-06-13',3,322),
(3,4,'2016-06-13',4,323),(3,5,'2016-06-13',5,324),(3,0,'2016-06-13',6,325),(3,2,'2016-06-13',7,326),(2,0,'0000-00-00',1,375),(2,0,'0000-00-00',2,376),
(2,0,'0000-00-00',3,377),(2,0,'0000-00-00',4,378),(2,0,'0000-00-00',12,379),(2,0,'0000-00-00',13,380),(2,0,'0000-00-00',1,381),(2,0,'0000-00-00',2,382),
(2,0,'0000-00-00',3,383),(2,0,'0000-00-00',4,384),(2,0,'0000-00-00',12,385),(2,0,'0000-00-00',13,386),(2,0,'0000-00-00',1,387),(2,0,'0000-00-00',2,388),
(2,0,'0000-00-00',3,389),(2,0,'0000-00-00',4,390),(2,0,'0000-00-00',12,391),(2,0,'0000-00-00',13,392),(2,0,'0000-00-00',1,393),(2,0,'0000-00-00',2,394),(2,0,'0000-00-00',3,395),(2,0,'0000-00-00',4,396),
(2,0,'0000-00-00',12,397),(2,0,'0000-00-00',13,398),(2,1,'0000-00-00',1,399),(2,0,'0000-00-00',2,400),(2,1,'0000-00-00',3,401),(2,0,'0000-00-00',4,402),(2,0,'0000-00-00',12,403),(2,0,'0000-00-00',13,404),
(2,1,'0000-00-00',1,405),(2,0,'0000-00-00',2,406),(2,0,'0000-00-00',3,407),(2,0,'0000-00-00',4,408),(2,0,'0000-00-00',12,409),(2,0,'0000-00-00',13,410),(2,1,'0000-00-00',1,411),(2,0,'0000-00-00',2,412),
(2,0,'0000-00-00',3,413),(2,0,'0000-00-00',4,414),(2,0,'0000-00-00',12,415),(2,0,'0000-00-00',13,416),(2,0,'0000-00-00',1,417),(2,0,'0000-00-00',2,418),(2,0,'0000-00-00',3,419),
(2,1,'0000-00-00',4,420),(2,0,'0000-00-00',12,421),(2,0,'0000-00-00',13,422),(2,1,'0000-00-00',1,423),(2,0,'0000-00-00',2,424),(2,1,'0000-00-00',3,425),(2,0,'0000-00-00',4,426),
(2,0,'0000-00-00',12,427),(2,0,'0000-00-00',13,428),(2,0,'0000-00-00',1,429),(2,0,'0000-00-00',2,430),(2,0,'0000-00-00',3,431),(2,0,'0000-00-00',4,432),(2,0,'0000-00-00',12,433),
(2,0,'0000-00-00',13,434),(2,0,'0000-00-00',5,435),(2,0,'0000-00-00',6,436),(2,0,'0000-00-00',7,437),(2,0,'0000-00-00',8,438),(2,0,'0000-00-00',14,439),(2,0,'0000-00-00',15,440),
(2,1,'0000-00-00',5,441),(2,1,'0000-00-00',6,442),(2,1,'0000-00-00',7,443),(2,1,'0000-00-00',8,444),(2,0,'0000-00-00',14,445),(2,0,'0000-00-00',15,446),(2,0,'0000-00-00',5,447),
(2,0,'0000-00-00',6,448),(2,0,'0000-00-00',7,449),(2,1,'0000-00-00',8,450),(2,0,'0000-00-00',14,451),(2,0,'0000-00-00',15,452),(2,0,'0000-00-00',5,453),(2,1,'0000-00-00',6,454),
(2,0,'0000-00-00',7,455),(2,1,'0000-00-00',8,456),(2,0,'0000-00-00',14,457),(2,0,'0000-00-00',15,458),(2,1,'0000-00-00',5,459),(2,1,'0000-00-00',6,460),(2,1,'0000-00-00',7,461),
(2,1,'0000-00-00',8,462),(2,0,'0000-00-00',14,463),(2,0,'0000-00-00',15,464),(2,0,'0000-00-00',5,465),(2,0,'0000-00-00',6,466),(2,0,'0000-00-00',7,467),(2,0,'0000-00-00',8,468),
(2,0,'0000-00-00',14,469),(2,0,'0000-00-00',15,470),(2,0,'0000-00-00',1,471),(2,0,'0000-00-00',2,472),(2,0,'0000-00-00',3,473),(2,0,'0000-00-00',4,474),(2,0,'0000-00-00',12,475),
(2,0,'0000-00-00',13,476),(2,4,'2016-06-17',1,477),(2,8,'2016-06-17',2,478),(2,6,'2016-06-17',3,479),(2,5,'2016-06-17',4,480),(2,1,'2016-06-17',12,481),(2,1,'2016-06-17',13,482),
(2,7,'2016-06-17',5,483),(2,8,'2016-06-17',6,484),(2,8,'2016-06-17',7,485),(2,8,'2016-06-17',8,486),(2,6,'2016-06-17',14,487),(2,4,'2016-06-17',15,488);
/*!40000 ALTER TABLE `user_position_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_routine_info`
--

DROP TABLE IF EXISTS `user_routine_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_routine_info` (
  `routine_list_numb` int(11) NOT NULL AUTO_INCREMENT,
  `user_numb` int(11) DEFAULT NULL,
  `routine_list_index` int(11) DEFAULT NULL,
  `routine_date` date DEFAULT NULL,
  PRIMARY KEY (`routine_list_numb`),
  KEY `user_routine_info___fk` (`user_numb`),
  CONSTRAINT `user_routine_info___fk` FOREIGN KEY (`user_numb`) REFERENCES `user` (`user_numb`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_routine_info`
--

LOCK TABLES `user_routine_info` WRITE;
/*!40000 ALTER TABLE `user_routine_info` DISABLE KEYS */;

INSERT INTO `user_routine_info` VALUES (1,2,1,'2016-05-29'),(2,2,2,'2016-05-30'),(66,2,4,'2016-05-31'),(83,2,8,'2016-06-24'),(92,2,4,'2016-06-15'),(111,2,4,'2016-07-20'),(112,2,4,'2016-07-22'),(113,2,4,'2016-07-18'),
(114,2,4,'2016-07-26'),(115,2,4,'2016-07-28'),(116,2,4,'2016-07-11'),(117,2,4,'2016-07-13'),(118,2,5,'2016-07-06'),(119,2,5,'2016-07-08'),(120,2,4,'2016-07-29'),(121,2,4,'2016-07-27'),
(122,2,4,'2016-07-01'),(123,2,4,'2016-07-07'),(128,2,5,'2016-07-04'),(129,2,5,'2016-07-14'),(130,2,5,'2016-07-19'),(131,2,4,'2016-08-11'),(132,2,4,'2016-08-10'),(133,2,4,'2016-08-12'),(134,2,4,'2016-07-21'),
(135,2,4,'2016-07-15'),(136,2,1,'2016-08-15'),(137,3,1,'2016-08-17'),(138,3,1,'2016-08-19'),(139,3,4,'2016-08-22'),(140,3,4,'2016-08-24'),(141,3,4,'2016-05-26'),(145,2,8,'2016-06-05'),(150,3,5,'2016-06-06'),
(151,3,5,'2016-06-08'),(152,3,5,'2016-06-10'),(159,3,4,'2016-06-15'),(160,3,4,'2016-06-17'),(161,3,4,'2016-06-12'),(165,2,8,'2016-06-12'),(167,3,6,'2016-06-16'),(169,3,8,'2016-06-18'),(170,3,1,'2016-06-19'),
(171,3,7,'2016-06-20'),(172,3,4,'2016-06-21'),(173,2,4,'2016-06-07'),(174,2,4,'2016-06-09'),(175,2,4,'2016-06-11'),(176,2,8,'2016-06-14'),(177,2,8,'2016-06-16'),(178,2,8,'2016-06-18'),(179,2,1,'2016-06-20'),
(180,2,8,'2016-06-17'),(181,2,6,'2016-06-19'),(182,2,2,'2016-06-30'),(183,2,6,'2016-06-21');

/*!40000 ALTER TABLE `user_routine_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weight`
--

DROP TABLE IF EXISTS `weight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weight` (
  `user_numb` int(11) NOT NULL COMMENT 'ȸ����ȣ',
  `date` date NOT NULL COMMENT '��� ��¥',
  `weight` int(11) NOT NULL COMMENT '������',
  PRIMARY KEY (`user_numb`,`date`),
  CONSTRAINT `weight_ibfk_1` FOREIGN KEY (`user_numb`) REFERENCES `user` (`user_numb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weight`
--


LOCK TABLES `weight` WRITE;
/*!40000 ALTER TABLE `weight` DISABLE KEYS */;
INSERT INTO `weight` VALUES (2,'2016-04-19',67),(2,'2016-05-20',60),(2,'2016-05-26',58),(2,'2016-05-27',56),(2,'2016-05-30',57),(2,'2016-05-31',55),(2,'2016-06-06',60),(3,'2016-04-04',66),(3,'2016-04-15',65),(3,'2016-04-23',48);
/*!40000 ALTER TABLE `weight` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-19 13:47:15
