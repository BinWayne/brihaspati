-- MySQL dump 10.13  Distrib 5.1.35, for pc-linux-gnu (i686)
--
-- Host: localhost    Database: brihaspati
-- ------------------------------------------------------
-- Server version	4.0.27-standard
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ASSIGNMENT`
--

DROP TABLE IF EXISTS `ASSIGNMENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ASSIGNMENT` (
  `ASSIGN_ID` varchar(32) NOT NULL default '',
  `GROUP_NAME` varchar(99) NOT NULL default '',
  `TOPIC_NAME` varchar(255) NOT NULL default '',
  `CUR_DATE` datetime NOT NULL default '0000-00-00 00:00:00',
  `DUE_DATE` datetime NOT NULL default '0000-00-00 00:00:00',
  `PER_DATE` datetime NOT NULL default '0000-00-00 00:00:00',
  `GRADE` int(3) NOT NULL default '0',
  PRIMARY KEY  (`ASSIGN_ID`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ASSIGNMENT`
--

LOCK TABLES `ASSIGNMENT` WRITE;
/*!40000 ALTER TABLE `ASSIGNMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `ASSIGNMENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ATTENDENCE_SEET`
--

DROP TABLE IF EXISTS `ATTENDENCE_SEET`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ATTENDENCE_SEET` (
  `ID` int(11) NOT NULL default '0',
  `USER_ID` int(11) NOT NULL default '0',
  `LOGIN_DATE` datetime NOT NULL default '0000-00-00 00:00:00',
  `IPADDRESS` varchar(16) default NULL,
  PRIMARY KEY  (`ID`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ATTENDENCE_SEET`
--

LOCK TABLES `ATTENDENCE_SEET` WRITE;
/*!40000 ALTER TABLE `ATTENDENCE_SEET` DISABLE KEYS */;
/*!40000 ALTER TABLE `ATTENDENCE_SEET` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CAL_INFORMATION`
--

DROP TABLE IF EXISTS `CAL_INFORMATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CAL_INFORMATION` (
  `INFO_ID` int(11) NOT NULL default '0',
  `USER_ID` int(11) NOT NULL default '0',
  `GROUP_ID` int(11) NOT NULL default '0',
  `P_DATE` datetime NOT NULL default '0000-00-00 00:00:00',
  `DETAIL_INFORMATION` longblob,
  `START_TIME` time NOT NULL default '00:00:00',
  `END_TIME` time NOT NULL default '00:00:00',
  `EXPIRY` int(11) NOT NULL default '0',
  `EXPIRY_DATE` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`INFO_ID`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CAL_INFORMATION`
--

LOCK TABLES `CAL_INFORMATION` WRITE;
/*!40000 ALTER TABLE `CAL_INFORMATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `CAL_INFORMATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COURSES`
--

DROP TABLE IF EXISTS `COURSES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COURSES` (
  `GROUP_NAME` varchar(99) NOT NULL default '',
  `CNAME` varchar(255) default NULL,
  `GROUP_ALIAS` varchar(99) NOT NULL default '',
  `DEPT` varchar(255) default NULL,
  `DESCRIPTION` varchar(255) default NULL,
  `ACTIVE` tinyint(4) NOT NULL default '0',
  `CREATIONDATE` datetime default NULL,
  `LASTMODIFIED` datetime default NULL,
  `LASTACCESS` datetime default NULL,
  `QUOTA` decimal(10,0) NOT NULL default '100',
  PRIMARY KEY  (`GROUP_NAME`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COURSES`
--

LOCK TABLES `COURSES` WRITE;
/*!40000 ALTER TABLE `COURSES` DISABLE KEYS */;
/*!40000 ALTER TABLE `COURSES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DB_RECEIVE`
--

DROP TABLE IF EXISTS `DB_RECEIVE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DB_RECEIVE` (
  `MSG_ID` int(11) NOT NULL default '0',
  `RECEIVER_ID` int(11) NOT NULL default '0',
  `GROUP_ID` int(11) NOT NULL default '0',
  `READ_FLAG` int(11) default NULL,
  PRIMARY KEY  (`MSG_ID`,`RECEIVER_ID`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DB_RECEIVE`
--

LOCK TABLES `DB_RECEIVE` WRITE;
/*!40000 ALTER TABLE `DB_RECEIVE` DISABLE KEYS */;
/*!40000 ALTER TABLE `DB_RECEIVE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DB_SEND`
--

DROP TABLE IF EXISTS `DB_SEND`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DB_SEND` (
  `MSG_ID` int(11) NOT NULL default '0',
  `REPLY_ID` int(11) NOT NULL default '0',
  `MSG_SUBJECT` varchar(255) default NULL,
  `USER_ID` int(11) default NULL,
  `GROUP_ID` int(11) default NULL,
  `POST_TIME` datetime default NULL,
  `EXPIRY` int(11) NOT NULL default '0',
  `EXPIRY_DATE` datetime NOT NULL default '0000-00-00 00:00:00',
  `PERMISSION` int(1) default NULL,
  `GRPMGMT_TYPE` varchar(255) default NULL,
  PRIMARY KEY  (`MSG_ID`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DB_SEND`
--

LOCK TABLES `DB_SEND` WRITE;
/*!40000 ALTER TABLE `DB_SEND` DISABLE KEYS */;
/*!40000 ALTER TABLE `DB_SEND` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GLOSSARY`
--

DROP TABLE IF EXISTS `GLOSSARY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GLOSSARY` (
  `WORD_ID` int(11) NOT NULL default '0',
  `WORD` varchar(40) NOT NULL default '',
  `USER_ID` int(11) default NULL,
  `DEFINITION` longblob,
  PRIMARY KEY  (`WORD_ID`,`WORD`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GLOSSARY`
--

LOCK TABLES `GLOSSARY` WRITE;
/*!40000 ALTER TABLE `GLOSSARY` DISABLE KEYS */;
/*!40000 ALTER TABLE `GLOSSARY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GLOSSARY_ALIAS`
--

DROP TABLE IF EXISTS `GLOSSARY_ALIAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GLOSSARY_ALIAS` (
  `ALIAS_ID` int(11) NOT NULL default '0',
  `WORD_ALIAS` varchar(40) default NULL,
  `WORD_ID` int(11) default NULL,
  PRIMARY KEY  (`ALIAS_ID`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GLOSSARY_ALIAS`
--

LOCK TABLES `GLOSSARY_ALIAS` WRITE;
/*!40000 ALTER TABLE `GLOSSARY_ALIAS` DISABLE KEYS */;
/*!40000 ALTER TABLE `GLOSSARY_ALIAS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HINT_QUESTION`
--

DROP TABLE IF EXISTS `HINT_QUESTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HINT_QUESTION` (
  `QUESTION_ID` int(11) NOT NULL default '0',
  `QUESTION_NAME` varchar(255) default NULL,
  PRIMARY KEY  (`QUESTION_ID`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HINT_QUESTION`
--

LOCK TABLES `HINT_QUESTION` WRITE;
/*!40000 ALTER TABLE `HINT_QUESTION` DISABLE KEYS */;
INSERT INTO `HINT_QUESTION` VALUES (1,'What is your pet\'s name?'),(2,'What was the name of your first school?'),(3,'Who was your child hero?'),(4,'What is your favorite past time?'),(5,'What is your all time favorite sports team?'),(6,'What is your father\'s middle name?'),(7,'What is your high school mascot?'),(8,'What was your first bike or car?'),(9,'Where did you first meet your girlfriend/boyfriend?'),(10,'What is your favorite food?');
/*!40000 ALTER TABLE `HINT_QUESTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ID_TABLE`
--

DROP TABLE IF EXISTS `ID_TABLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ID_TABLE` (
  `ID_TABLE_ID` int(11) NOT NULL default '0',
  `TABLE_NAME` varchar(255) NOT NULL default '',
  `NEXT_ID` int(11) default NULL,
  `QUANTITY` int(11) default NULL,
  PRIMARY KEY  (`ID_TABLE_ID`),
  UNIQUE KEY `TABLE_NAME` (`TABLE_NAME`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ID_TABLE`
--

LOCK TABLES `ID_TABLE` WRITE;
/*!40000 ALTER TABLE `ID_TABLE` DISABLE KEYS */;
INSERT INTO `ID_TABLE` VALUES (2101,'TURBINE_PERMISSION',1000,10),(2102,'TURBINE_ROLE',1000,10),(2103,'TURBINE_GROUP',1000,10),(2104,'TURBINE_ROLE_PERMISSION',1000,10),(2105,'TURBINE_USER',1000,10),(2106,'TURBINE_USER_GROUP_ROLE',1000,10),(2107,'TURBINE_SCHEDULED_JOB',1000,10),(1101,'NOTE',1000,10),(1102,'RDF',1000,10),(1103,'COURSES',1000,10),(1104,'CAL_INFORMATION',1000,10),(1105,'DB_SEND',1000,10),(1106,'DB_RECEIVE',1000,10),(1107,'GLOSSARY',1000,10),(1108,'GLOSSARY_ALIAS',1000,10),(1109,'HINT_QUESTION',1000,10),(1110,'MAIL_SEND',1000,10),(1111,'MAIL_RECEIVE',1000,10),(1112,'NEWS',1000,10),(1113,'NOTICE_SEND',1000,10),(1114,'NOTICE_RECEIVE',1000,10),(1115,'SYSTEM_CLEANTIME',1000,10),(1116,'TASK',1000,10),(1117,'USAGE_DETAILS',1020,10),(1118,'USER_CONFIGURATION',1000,10),(1119,'REMOTE_COURSES',1000,10),(1120,'PROXY_USER',1000,10),(1121,'SURVEY_QUESTION',1000,10),(1122,'SURVEY_STUDENT',1000,10),(1123,'SURVEY_RESULT',1000,10),(1124,'QUIZ',1000,10),(1125,'ATTENDENCE_SEET',1000,10),(1126,'ASSIGNMENT',1000,10),(1127,'LECTURE',1000,10),(1128,'SessionAddress',1000,10),(1129,'RESEARCH_REPOSITORY',1000,10),(1130,'INSTITUTE_ADMIN_REGISTRATION',1000,10),(101,'events',1000,10),(102,'table_id',1020,10),(103,'fac_info',1000,10),(104,'faculty_course',1000,10),(105,'course_info',1000,10),(106,'batch',1000,10),(107,'batch_course',1000,10),(108,'venue',1000,10);
/*!40000 ALTER TABLE `ID_TABLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INSTITUTE_ADMIN_REGISTRATION`
--

DROP TABLE IF EXISTS `INSTITUTE_ADMIN_REGISTRATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `INSTITUTE_ADMIN_REGISTRATION` (
  `INSTITUTE_ID` int(11) NOT NULL default '0',
  `INSTITUTE_NAME` varchar(255) NOT NULL default '',
  `INSTIUTE_ADDRESS` varchar(255) NOT NULL default '',
  `CITY` varchar(255) NOT NULL default '',
  `PINCODE` int(11) NOT NULL default '0',
  `STATE` varchar(255) NOT NULL default '',
  `LANDLINE_NO` int(255) NOT NULL default '0',
  `INSTITUTE_DOMAIN` varchar(255) NOT NULL default '',
  `TYPE_OF_INSTITUTION` varchar(255) default NULL,
  `AFFILIATION` varchar(255) default NULL,
  `INSTITUTE_WEBSITE` varchar(255) default NULL,
  `ADMIN_FNAME` varchar(255) NOT NULL default '',
  `ADMIN_LNAME` varchar(255) NOT NULL default '',
  `ADMIN_EMAIL` varchar(255) NOT NULL default '',
  `ADMIN_DESIGNATION` varchar(255) NOT NULL default '',
  `ADMIN_UNAME` varchar(32) NOT NULL default '',
  `ADMIN_PASSWORD` varchar(32) NOT NULL default '',
  `INSTITUTE_STATUS` int(1) NOT NULL default '0',
  PRIMARY KEY  (`INSTITUTE_ID`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INSTITUTE_ADMIN_REGISTRATION`
--

LOCK TABLES `INSTITUTE_ADMIN_REGISTRATION` WRITE;
/*!40000 ALTER TABLE `INSTITUTE_ADMIN_REGISTRATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `INSTITUTE_ADMIN_REGISTRATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LECTURE`
--

DROP TABLE IF EXISTS `LECTURE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LECTURE` (
  `LECTUREID` int(11) NOT NULL default '0',
  `GROUP_NAME` varchar(255) NOT NULL default '',
  `LECTURENAME` varchar(255) NOT NULL default '',
  `LECTUREINFO` varchar(255) NOT NULL default '',
  `URLNAME` varchar(255) default NULL,
  `PHONENO` varchar(255) default NULL,
  `FORVIDEO` varchar(255) default NULL,
  `FORAUDIO` varchar(255) default NULL,
  `FORWHITEBOARD` varchar(255) default NULL,
  `SESSIONDATE` datetime NOT NULL default '0000-00-00 00:00:00',
  `SESSIONTIME` varchar(255) NOT NULL default '',
  `DURATION` varchar(255) default NULL,
  `REPEATLEC` varchar(255) default NULL,
  `FORTIME` varchar(255) default NULL,
  PRIMARY KEY  (`LECTUREID`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LECTURE`
--

LOCK TABLES `LECTURE` WRITE;
/*!40000 ALTER TABLE `LECTURE` DISABLE KEYS */;
/*!40000 ALTER TABLE `LECTURE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MAIL_RECEIVE`
--

DROP TABLE IF EXISTS `MAIL_RECEIVE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MAIL_RECEIVE` (
  `MAIL_ID` int(11) NOT NULL default '0',
  `RECEIVER_ID` int(11) NOT NULL default '0',
  `MAIL_READFLAG` int(11) default NULL,
  `MAIL_TYPE` int(11) default NULL,
  PRIMARY KEY  (`MAIL_ID`,`RECEIVER_ID`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MAIL_RECEIVE`
--

LOCK TABLES `MAIL_RECEIVE` WRITE;
/*!40000 ALTER TABLE `MAIL_RECEIVE` DISABLE KEYS */;
/*!40000 ALTER TABLE `MAIL_RECEIVE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MAIL_SEND`
--

DROP TABLE IF EXISTS `MAIL_SEND`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MAIL_SEND` (
  `MAIL_ID` int(11) NOT NULL default '0',
  `SENDER_ID` int(11) default NULL,
  `MAIL_SUBJECT` varchar(255) default NULL,
  `REPLY_STATUS` int(11) default NULL,
  `POST_TIME` datetime default NULL,
  PRIMARY KEY  (`MAIL_ID`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MAIL_SEND`
--

LOCK TABLES `MAIL_SEND` WRITE;
/*!40000 ALTER TABLE `MAIL_SEND` DISABLE KEYS */;
/*!40000 ALTER TABLE `MAIL_SEND` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NEWS`
--

DROP TABLE IF EXISTS `NEWS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NEWS` (
  `NEWS_ID` int(11) NOT NULL default '0',
  `GROUP_ID` int(11) default NULL,
  `USER_ID` int(11) default NULL,
  `NEWS_TITLE` varchar(255) default NULL,
  `NEWS_DESCRIPTION` longblob,
  `PUBLISH_DATE` datetime NOT NULL default '0000-00-00 00:00:00',
  `EXPIRY` int(11) NOT NULL default '0',
  `EXPIRY_DATE` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`NEWS_ID`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NEWS`
--

LOCK TABLES `NEWS` WRITE;
/*!40000 ALTER TABLE `NEWS` DISABLE KEYS */;
/*!40000 ALTER TABLE `NEWS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NOTE`
--

DROP TABLE IF EXISTS `NOTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NOTE` (
  `NOTE_ID` int(11) NOT NULL default '0',
  `POSTED_BY` varchar(255) default NULL,
  `DATE_POSTED` datetime default NULL,
  `NOTE` varchar(255) default NULL,
  PRIMARY KEY  (`NOTE_ID`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NOTE`
--

LOCK TABLES `NOTE` WRITE;
/*!40000 ALTER TABLE `NOTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `NOTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NOTICE_RECEIVE`
--

DROP TABLE IF EXISTS `NOTICE_RECEIVE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NOTICE_RECEIVE` (
  `NOTICE_ID` int(11) NOT NULL default '0',
  `RECEIVER_ID` int(11) NOT NULL default '0',
  `GROUP_ID` int(11) NOT NULL default '0',
  `READ_FLAG` int(11) default NULL,
  PRIMARY KEY  (`NOTICE_ID`,`RECEIVER_ID`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NOTICE_RECEIVE`
--

LOCK TABLES `NOTICE_RECEIVE` WRITE;
/*!40000 ALTER TABLE `NOTICE_RECEIVE` DISABLE KEYS */;
/*!40000 ALTER TABLE `NOTICE_RECEIVE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NOTICE_SEND`
--

DROP TABLE IF EXISTS `NOTICE_SEND`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NOTICE_SEND` (
  `NOTICE_ID` int(11) NOT NULL default '0',
  `NOTICE_SUBJECT` varchar(255) default NULL,
  `USER_ID` int(11) default NULL,
  `GROUP_ID` int(11) default NULL,
  `ROLE_ID` int(11) default NULL,
  `POST_TIME` datetime default NULL,
  `EXPIRY` int(11) NOT NULL default '0',
  `EXPIRY_DATE` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`NOTICE_ID`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NOTICE_SEND`
--

LOCK TABLES `NOTICE_SEND` WRITE;
/*!40000 ALTER TABLE `NOTICE_SEND` DISABLE KEYS */;
/*!40000 ALTER TABLE `NOTICE_SEND` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROXY_USER`
--

DROP TABLE IF EXISTS `PROXY_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PROXY_USER` (
  `USERNAME` varchar(32) NOT NULL default '',
  `PASSWORD` varchar(32) NOT NULL default '',
  `IPADDRESS` varchar(32) NOT NULL default '',
  `LECTURE_ID` int(32) NOT NULL default '0',
  `PORT_NO` int(11) NOT NULL default '0',
  PRIMARY KEY  (`USERNAME`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROXY_USER`
--

LOCK TABLES `PROXY_USER` WRITE;
/*!40000 ALTER TABLE `PROXY_USER` DISABLE KEYS */;
/*!40000 ALTER TABLE `PROXY_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUIZ`
--

DROP TABLE IF EXISTS `QUIZ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUIZ` (
  `ID` int(11) NOT NULL default '0',
  `QUIZ_ID` varchar(255) NOT NULL default '',
  `USER_ID` varchar(255) NOT NULL default '',
  `CID` varchar(255) default NULL,
  `QUIZ_TITLE` varchar(255) NOT NULL default '',
  `START_TIME` time NOT NULL default '00:00:00',
  `END_TIME` time NOT NULL default '00:00:00',
  `POST_DATE` datetime NOT NULL default '0000-00-00 00:00:00',
  `MAX_MARKS` int(3) default NULL,
  `EXPIRY_DATE` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`ID`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUIZ`
--

LOCK TABLES `QUIZ` WRITE;
/*!40000 ALTER TABLE `QUIZ` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUIZ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RDF`
--

DROP TABLE IF EXISTS `RDF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RDF` (
  `RDF_ID` int(11) NOT NULL default '0',
  `TITLE` varchar(255) default NULL,
  `BODY` varchar(255) default NULL,
  `URL` varchar(255) default NULL,
  `AUTHOR` varchar(255) default NULL,
  `DEPT` varchar(255) default NULL,
  PRIMARY KEY  (`RDF_ID`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RDF`
--

LOCK TABLES `RDF` WRITE;
/*!40000 ALTER TABLE `RDF` DISABLE KEYS */;
/*!40000 ALTER TABLE `RDF` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `REMOTE_COURSES`
--

DROP TABLE IF EXISTS `REMOTE_COURSES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `REMOTE_COURSES` (
  `SR_NO` int(11) NOT NULL default '0',
  `LOCAL_COURSE_ID` varchar(50) default NULL,
  `REMOTE_COURSE_ID` varchar(50) default NULL,
  `COURSE_SELLER` varchar(50) default NULL,
  `COURSE_PURCHASER` varchar(50) default NULL,
  `INSTITUTE_IP` varchar(15) default NULL,
  `INSTITUTE_NAME` varchar(50) default NULL,
  `EXPIRY_DATE` datetime default NULL,
  `STATUS` int(1) default NULL,
  `SECRET_KEY` varchar(100) default NULL,
  PRIMARY KEY  (`SR_NO`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REMOTE_COURSES`
--

LOCK TABLES `REMOTE_COURSES` WRITE;
/*!40000 ALTER TABLE `REMOTE_COURSES` DISABLE KEYS */;
/*!40000 ALTER TABLE `REMOTE_COURSES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RESEARCH_REPOSITORY`
--

DROP TABLE IF EXISTS `RESEARCH_REPOSITORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RESEARCH_REPOSITORY` (
  `SUBJECT_ID` int(11) NOT NULL default '0',
  `REPLY_ID` int(11) NOT NULL default '0',
  `SUBJECT` varchar(255) default NULL,
  `REPLIES` int(11) default NULL,
  `USER_ID` int(11) default NULL,
  `REPO_NAME` varchar(255) default NULL,
  `POST_TIME` datetime default NULL,
  `EXPIRY` int(11) NOT NULL default '0',
  `EXPIRY_DATE` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`SUBJECT_ID`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESEARCH_REPOSITORY`
--

LOCK TABLES `RESEARCH_REPOSITORY` WRITE;
/*!40000 ALTER TABLE `RESEARCH_REPOSITORY` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESEARCH_REPOSITORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SURVEY_QUESTION`
--

DROP TABLE IF EXISTS `SURVEY_QUESTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SURVEY_QUESTION` (
  `SURVEY_ID` int(11) NOT NULL default '0',
  `INST_ID` int(11) NOT NULL default '0',
  `CID` varchar(25) default NULL,
  `QUES1` varchar(50) default NULL,
  `QUES2` varchar(50) default NULL,
  `QUES3` varchar(50) default NULL,
  `QUES4` varchar(50) default NULL,
  `QUES5` varchar(50) default NULL,
  `PDATE` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`SURVEY_ID`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SURVEY_QUESTION`
--

LOCK TABLES `SURVEY_QUESTION` WRITE;
/*!40000 ALTER TABLE `SURVEY_QUESTION` DISABLE KEYS */;
/*!40000 ALTER TABLE `SURVEY_QUESTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SURVEY_RESULT`
--

DROP TABLE IF EXISTS `SURVEY_RESULT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SURVEY_RESULT` (
  `RESULT_ID` int(11) NOT NULL default '0',
  `SURVEY_ID` int(11) NOT NULL default '0',
  `CID` varchar(25) default NULL,
  `NUM_STU_ATTD` int(11) default NULL,
  `TOTALMARKS_PER` int(11) default NULL,
  `GRADE` varchar(25) default NULL,
  PRIMARY KEY  (`RESULT_ID`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SURVEY_RESULT`
--

LOCK TABLES `SURVEY_RESULT` WRITE;
/*!40000 ALTER TABLE `SURVEY_RESULT` DISABLE KEYS */;
/*!40000 ALTER TABLE `SURVEY_RESULT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SURVEY_STUDENT`
--

DROP TABLE IF EXISTS `SURVEY_STUDENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SURVEY_STUDENT` (
  `SURVEYST_ID` int(11) NOT NULL default '0',
  `SURVEY_ID` int(11) NOT NULL default '0',
  `INST_ID` int(11) NOT NULL default '0',
  `CID` varchar(25) default NULL,
  `STU_ID` varchar(25) default NULL,
  `QUES1` int(2) default NULL,
  `QUES2` int(2) default NULL,
  `QUES3` int(2) default NULL,
  `QUES4` int(2) default NULL,
  `QUES5` int(2) default NULL,
  `TOTALMARKS` int(11) default NULL,
  PRIMARY KEY  (`SURVEYST_ID`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SURVEY_STUDENT`
--

LOCK TABLES `SURVEY_STUDENT` WRITE;
/*!40000 ALTER TABLE `SURVEY_STUDENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `SURVEY_STUDENT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SYSTEM_CLEANTIME`
--

DROP TABLE IF EXISTS `SYSTEM_CLEANTIME`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SYSTEM_CLEANTIME` (
  `ID` int(11) NOT NULL default '0',
  `CLEAN_DATE` datetime default NULL,
  PRIMARY KEY  (`ID`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SYSTEM_CLEANTIME`
--

LOCK TABLES `SYSTEM_CLEANTIME` WRITE;
/*!40000 ALTER TABLE `SYSTEM_CLEANTIME` DISABLE KEYS */;
INSERT INTO `SYSTEM_CLEANTIME` VALUES (1,'2010-10-06 00:00:00');
/*!40000 ALTER TABLE `SYSTEM_CLEANTIME` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SessionAddress`
--

DROP TABLE IF EXISTS `SessionAddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SessionAddress` (
  `SerialNo` int(11) NOT NULL default '0',
  `MulticastAddress` varchar(255) default NULL,
  `Flag` int(11) default NULL,
  PRIMARY KEY  (`SerialNo`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SessionAddress`
--

LOCK TABLES `SessionAddress` WRITE;
/*!40000 ALTER TABLE `SessionAddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `SessionAddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TASK`
--

DROP TABLE IF EXISTS `TASK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TASK` (
  `TASK_ID` int(11) NOT NULL default '0',
  `USER_ID` int(11) NOT NULL default '0',
  `TITLE` varchar(100) default NULL,
  `STATUS` int(1) default NULL,
  `START_DATE` datetime NOT NULL default '0000-00-00 00:00:00',
  `END_DATE` datetime NOT NULL default '0000-00-00 00:00:00',
  `EXPIRY` int(11) NOT NULL default '0',
  `EXPIRY_DATE` datetime NOT NULL default '0000-00-00 00:00:00',
  `DUE_DAYS` int(11) NOT NULL default '0',
  `DUE_DATE` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`TASK_ID`,`START_DATE`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TASK`
--

LOCK TABLES `TASK` WRITE;
/*!40000 ALTER TABLE `TASK` DISABLE KEYS */;
/*!40000 ALTER TABLE `TASK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TURBINE_GROUP`
--

DROP TABLE IF EXISTS `TURBINE_GROUP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TURBINE_GROUP` (
  `GROUP_ID` int(11) NOT NULL default '0',
  `GROUP_NAME` varchar(99) NOT NULL default '',
  `OBJECTDATA` mediumblob,
  PRIMARY KEY  (`GROUP_ID`),
  UNIQUE KEY `GROUP_NAME` (`GROUP_NAME`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TURBINE_GROUP`
--

LOCK TABLES `TURBINE_GROUP` WRITE;
/*!40000 ALTER TABLE `TURBINE_GROUP` DISABLE KEYS */;
INSERT INTO `TURBINE_GROUP` VALUES (1,'global',NULL),(2,'author',NULL),(3,'institute_admin',NULL);
/*!40000 ALTER TABLE `TURBINE_GROUP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TURBINE_PERMISSION`
--

DROP TABLE IF EXISTS `TURBINE_PERMISSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TURBINE_PERMISSION` (
  `PERMISSION_ID` int(11) NOT NULL default '0',
  `PERMISSION_NAME` varchar(99) NOT NULL default '',
  `OBJECTDATA` mediumblob,
  PRIMARY KEY  (`PERMISSION_ID`),
  UNIQUE KEY `PERMISSION_NAME` (`PERMISSION_NAME`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TURBINE_PERMISSION`
--

LOCK TABLES `TURBINE_PERMISSION` WRITE;
/*!40000 ALTER TABLE `TURBINE_PERMISSION` DISABLE KEYS */;
INSERT INTO `TURBINE_PERMISSION` VALUES (1,'admin_users',NULL),(2,'read',NULL),(3,'write',NULL),(4,'update_user',NULL),(5,'add_user',NULL),(6,'delete_user',NULL),(7,'add',NULL),(8,'update',NULL),(9,'delete',NULL),(10,'traverse',NULL),(11,'backup',NULL),(12,'restore',NULL);
/*!40000 ALTER TABLE `TURBINE_PERMISSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TURBINE_ROLE`
--

DROP TABLE IF EXISTS `TURBINE_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TURBINE_ROLE` (
  `ROLE_ID` int(11) NOT NULL default '0',
  `ROLE_NAME` varchar(99) NOT NULL default '',
  `OBJECTDATA` mediumblob,
  PRIMARY KEY  (`ROLE_ID`),
  UNIQUE KEY `ROLE_NAME` (`ROLE_NAME`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TURBINE_ROLE`
--

LOCK TABLES `TURBINE_ROLE` WRITE;
/*!40000 ALTER TABLE `TURBINE_ROLE` DISABLE KEYS */;
INSERT INTO `TURBINE_ROLE` VALUES (1,'turbine_root',NULL),(2,'instructor',NULL),(3,'student',NULL),(4,'group_admin',NULL),(5,'author',NULL),(6,'user',NULL),(7,'institute_admin',NULL);
/*!40000 ALTER TABLE `TURBINE_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TURBINE_ROLE_PERMISSION`
--

DROP TABLE IF EXISTS `TURBINE_ROLE_PERMISSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TURBINE_ROLE_PERMISSION` (
  `ROLE_ID` int(11) NOT NULL default '0',
  `PERMISSION_ID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`ROLE_ID`,`PERMISSION_ID`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TURBINE_ROLE_PERMISSION`
--

LOCK TABLES `TURBINE_ROLE_PERMISSION` WRITE;
/*!40000 ALTER TABLE `TURBINE_ROLE_PERMISSION` DISABLE KEYS */;
INSERT INTO `TURBINE_ROLE_PERMISSION` VALUES (1,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12),(3,2),(3,7),(3,8),(3,9),(4,1),(6,2),(6,10);
/*!40000 ALTER TABLE `TURBINE_ROLE_PERMISSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TURBINE_SCHEDULED_JOB`
--

DROP TABLE IF EXISTS `TURBINE_SCHEDULED_JOB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TURBINE_SCHEDULED_JOB` (
  `JOB_ID` int(11) NOT NULL default '0',
  `SECOND` int(11) NOT NULL default '-1',
  `MINUTE` int(11) NOT NULL default '-1',
  `HOUR` int(11) NOT NULL default '-1',
  `WEEK_DAY` int(11) NOT NULL default '-1',
  `DAY_OF_MONTH` int(11) NOT NULL default '-1',
  `TASK` varchar(99) NOT NULL default '',
  `EMAIL` varchar(99) default NULL,
  `PROPERTY` mediumblob,
  PRIMARY KEY  (`JOB_ID`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TURBINE_SCHEDULED_JOB`
--

LOCK TABLES `TURBINE_SCHEDULED_JOB` WRITE;
/*!40000 ALTER TABLE `TURBINE_SCHEDULED_JOB` DISABLE KEYS */;
/*!40000 ALTER TABLE `TURBINE_SCHEDULED_JOB` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TURBINE_USER`
--

DROP TABLE IF EXISTS `TURBINE_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TURBINE_USER` (
  `USER_ID` int(11) NOT NULL default '0',
  `LOGIN_NAME` varchar(32) NOT NULL default '',
  `PASSWORD_VALUE` varchar(32) NOT NULL default '',
  `FIRST_NAME` varchar(99) NOT NULL default '',
  `LAST_NAME` varchar(99) NOT NULL default '',
  `EMAIL` varchar(99) default NULL,
  `CONFIRM_VALUE` varchar(99) default NULL,
  `MODIFIED` timestamp(14) NOT NULL,
  `CREATED` timestamp(14) NOT NULL default '20100120000000',
  `LAST_LOGIN` timestamp(14) NOT NULL default '20100120000000',
  `OBJECTDATA` mediumblob,
  `QUOTA` decimal(10,0) NOT NULL default '100',
  `USER_LANG` varchar(32) NOT NULL default 'english',
  PRIMARY KEY  (`USER_ID`),
  UNIQUE KEY `LOGIN_NAME` (`LOGIN_NAME`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TURBINE_USER`
--

LOCK TABLES `TURBINE_USER` WRITE;
/*!40000 ALTER TABLE `TURBINE_USER` DISABLE KEYS */;
INSERT INTO `TURBINE_USER` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3','turbine','turbine',NULL,NULL,20101006192753,20100120000000,20100120000000,NULL,'100','english'),(0,'guest','084e0343a0486ff05530df6c705c8bb4','guest','',NULL,NULL,20101006202252,20100120000000,20101006202252,'¨Ì\0sr\0java.util.Hashtableª%!J‰∏\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0_access_countersr\0java.lang.Integer‚†§˜Åá8\0I\0valuexr\0java.lang.NumberÜ¨ïî‡ã\0\0xp\0\0\0#x','100','english');
/*!40000 ALTER TABLE `TURBINE_USER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TURBINE_USER_GROUP_ROLE`
--

DROP TABLE IF EXISTS `TURBINE_USER_GROUP_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TURBINE_USER_GROUP_ROLE` (
  `USER_ID` int(11) NOT NULL default '0',
  `GROUP_ID` int(11) NOT NULL default '0',
  `ROLE_ID` int(11) NOT NULL default '0',
  PRIMARY KEY  (`USER_ID`,`GROUP_ID`,`ROLE_ID`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TURBINE_USER_GROUP_ROLE`
--

LOCK TABLES `TURBINE_USER_GROUP_ROLE` WRITE;
/*!40000 ALTER TABLE `TURBINE_USER_GROUP_ROLE` DISABLE KEYS */;
INSERT INTO `TURBINE_USER_GROUP_ROLE` VALUES (1,1,1);
/*!40000 ALTER TABLE `TURBINE_USER_GROUP_ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USAGE_DETAILS`
--

DROP TABLE IF EXISTS `USAGE_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USAGE_DETAILS` (
  `ENTRY_ID` int(11) NOT NULL default '0',
  `USER_ID` int(11) NOT NULL default '0',
  `LOGIN_TIME` datetime default NULL,
  `LOGOUT_TIME` datetime default NULL,
  PRIMARY KEY  (`ENTRY_ID`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USAGE_DETAILS`
--

LOCK TABLES `USAGE_DETAILS` WRITE;
/*!40000 ALTER TABLE `USAGE_DETAILS` DISABLE KEYS */;
INSERT INTO `USAGE_DETAILS` VALUES (1166,0,'2010-10-06 19:32:59','2010-10-06 19:46:41'),(1000,0,'2010-10-06 19:41:47','2010-10-06 19:41:47'),(1001,0,'2010-10-06 19:46:45','2010-10-06 19:46:45'),(1002,0,'2010-10-06 19:46:53','2010-10-06 19:46:53');
/*!40000 ALTER TABLE `USAGE_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER_CONFIGURATION`
--

DROP TABLE IF EXISTS `USER_CONFIGURATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER_CONFIGURATION` (
  `USER_ID` int(11) NOT NULL default '0',
  `QUESTION_ID` int(2) default '0',
  `ANSWER` varchar(50) default NULL,
  `LIST_CONFIGURATION` int(2) default '10',
  `PHOTO` varchar(50) default NULL,
  `TASK_CONFIGURATION` int(2) default '7',
  PRIMARY KEY  (`USER_ID`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_CONFIGURATION`
--

LOCK TABLES `USER_CONFIGURATION` WRITE;
/*!40000 ALTER TABLE `USER_CONFIGURATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_CONFIGURATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch`
--

DROP TABLE IF EXISTS `batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batch` (
  `batch_code` varchar(10) NOT NULL default '',
  `strength` int(11) default NULL,
  `batch_name` varchar(255) default NULL
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch`
--

LOCK TABLES `batch` WRITE;
/*!40000 ALTER TABLE `batch` DISABLE KEYS */;
INSERT INTO `batch` VALUES ('B1',23,'CS II'),('B2',48,'EC II'),('B3',63,'CS III'),('B4',56,'EC III'),('B5',75,'CS IV'),('B6',44,'CSI IV'),('B7',36,'EC IV'),('B8',74,'ECW IV'),('B9',23,'CSI V'),('B10',85,'ECW V'),('B11',45,'IT I'),('B12',73,'CSM I'),('B13',64,'SDVT I'),('B14',73,'RFME I'),('B15',23,'CAG I'),('B16',87,'IT II'),('B17',73,'CSM II'),('B18',23,'RFME II'),('B19',84,'SDVT II'),('B20',41,'CAG II');
/*!40000 ALTER TABLE `batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch_course`
--

DROP TABLE IF EXISTS `batch_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `batch_course` (
  `course_code` varchar(10) NOT NULL default '',
  `batch_code` varchar(10) NOT NULL default ''
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_course`
--

LOCK TABLES `batch_course` WRITE;
/*!40000 ALTER TABLE `batch_course` DISABLE KEYS */;
INSERT INTO `batch_course` VALUES ('EC-201','B1'),('EC-202','B1'),('EC-203','B1'),('EC-204','B1'),('EC-205','B1'),('EC-206','B1'),('EC-201','B2'),('EC-202','B2'),('EC-203','B2'),('EC-204','B2'),('EC-205','B2'),('EC-207','B2'),('EC-308','B3'),('EC-309','B3'),('EC-310','B3'),('EC-311','B3'),('EC-312','B3'),('EC-313','B3'),('EC-308','B4'),('EC-309','B4'),('EC-310','B4'),('EC-314','B4'),('EC-315','B4'),('EC-316','B4'),('EC-417','B5'),('EC-418','B5'),('EC-419','B5'),('EC-420','B5'),('EC-421','B5'),('EC-417','B6'),('EC-418','B6'),('EC-422','B6'),('EC-423','B6'),('EC-424','B6'),('EC-425','B7'),('EC-426','B7'),('EC-427','B7'),('EC-428','B7'),('EC-429','B7'),('EC-425','B8'),('EC-426','B8'),('EC-430','B8'),('EC-431','B8'),('EC-432','B8'),('EC-651','B9'),('EC-533','B9'),('EC-651','B10'),('EC-534','B10'),('EC-535','B11'),('EC-536','B11'),('EC-537','B11'),('EC-538','B11'),('EC-535','B12'),('EC-539','B12'),('EC-540','B12'),('EC-541','B12'),('EC-535','B13'),('EC-542','B13'),('EC-543','B13'),('EC-544','B13'),('EC-535','B14'),('EC-545','B14'),('EC-546','B14'),('EC-547','B14'),('EC-535','B15'),('EC-548','B15'),('EC-549','B15'),('EC-550','B15'),('EC-651','B16'),('EC-651','B17'),('EC-651','B18'),('EC-652','B19'),('EC-653','B20');
/*!40000 ALTER TABLE `batch_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `course_code` varchar(10) NOT NULL default '',
  `course_type` char(3) NOT NULL default '',
  `events_per_week` int(11) default NULL,
  `duration` int(11) default NULL,
  `computer` int(11) default NULL,
  `projector` int(11) default NULL,
  `venue_code` varchar(10) default NULL,
  `scheduled` int(11) default NULL
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES ('EC-201','P',1,3,0,0,'',0),('EC-202','P',1,3,0,0,'',0),('EC-203','L',4,1,0,0,'',0),('EC-204','L',3,1,0,0,'',0),('EC-204','T',1,1,0,0,'',0),('EC-205','L',3,1,0,0,'',0),('EC-205','T',1,1,0,0,'',0),('EC-205','P',1,2,0,0,'',0),('EC-206','L',3,1,0,0,'',0),('EC-206','T',1,1,0,0,'',0),('EC-207','L',3,1,0,0,'',0),('EC-207','T',1,1,0,0,'',0),('EC-308','P',1,3,0,0,'',0),('EC-309','L',3,1,0,0,'',0),('EC-309','T',1,1,0,0,'',0),('EC-310','L',3,1,0,0,'',0),('EC-310','T',1,1,0,0,'',0),('EC-311','P',1,3,0,0,'',0),('EC-312','L',3,1,0,0,'',0),('EC-312','T',1,1,0,0,'',0),('EC-312','P',1,2,0,0,'',0),('EC-313','L',3,1,0,0,'',0),('EC-313','T',1,1,0,0,'',0),('EC-313','P',1,2,0,0,'',0),('EC-314','P',1,3,0,0,'',0),('EC-315','L',4,1,0,0,'',0),('EC-316','L',4,1,0,0,'',0),('EC-417','P',1,3,0,0,'',0),('EC-418','L',3,1,0,0,'',0),('EC-418','T',1,1,0,0,'',0),('EC-419','P',1,3,0,0,'',0),('EC-420','L',3,1,0,0,'',0),('EC-420','T',1,1,0,0,'',0),('EC-420','P',1,2,0,0,'',0),('EC-421','L',4,1,0,0,'',0),('EC-422','P',1,3,0,0,'',0),('EC-423','L',3,1,0,0,'',0),('EC-423','T',1,1,0,0,'',0),('EC-424','L',3,1,0,0,'',0),('EC-424','T',1,1,0,0,'',0),('EC-424','P',1,2,0,0,'',0),('EC-425','P',1,3,0,0,'',0),('EC-426','L',4,1,0,0,'',0),('EC-427','P',1,3,0,0,'',0),('EC-428','L',3,1,0,0,'',0),('EC-428','T',1,1,0,0,'',0),('EC-429','L',3,1,0,0,'',0),('EC-429','T',1,1,0,0,'',0),('EC-429','P',1,2,0,0,'',0),('EC-430','P',1,3,0,0,'',0),('EC-431','L',4,1,0,0,'',0),('EC-432','L',3,1,0,0,'',0),('EC-432','T',1,1,0,0,'',0),('EC-533','P',1,3,0,0,'',0),('EC-534','P',1,3,0,0,'',0),('EC-535','L',3,1,0,0,'',0),('EC-535','T',1,1,0,0,'',0),('EC-536','P',1,3,0,0,'',0),('EC-537','L',3,1,0,0,'',0),('EC-537','T',1,1,0,0,'',0),('EC-537','P',1,2,0,0,'',0),('EC-538','L',4,1,0,0,'',0),('EC-539','P',1,3,0,0,'',0),('EC-540','L',3,1,0,0,'',0),('EC-540','T',1,1,0,0,'',0),('EC-541','L',3,1,0,0,'',0),('EC-541','T',1,1,0,0,'',0),('EC-541','P',1,1,0,0,'',0),('EC-542','P',1,3,0,0,'',0),('EC-543','L',4,1,0,0,'',0),('EC-544','L',3,1,0,0,'',0),('EC-544','T',1,1,0,0,'',0),('EC-545','P',1,3,0,0,'',0),('EC-546','L',4,1,0,0,'',0),('EC-547','L',3,1,0,0,'',0),('EC-547','T',1,1,0,0,'',0),('EC-548','P',1,3,0,0,'',0),('EC-549','L',3,1,0,0,'',0),('EC-549','T',1,1,0,0,'',0),('EC-549','P',1,2,0,0,'',0),('EC-550','L',3,1,0,0,'',0),('EC-550','T',1,1,0,0,'',0),('EC-651','L',3,1,0,0,'',0),('EC-651','T',1,1,0,0,'',0),('EC-651','P',1,2,0,0,'',0),('EC-652','L',4,1,0,0,'',0),('EC-653','L',4,1,0,0,'',0),('EC-101','L',4,1,0,0,'',1),('EC-102','L',3,1,0,0,'',1),('EC-102','T',1,1,0,0,'',1),('EC-103','L',3,1,0,0,'',1),('EC-103','T',1,1,0,0,'',1),('EC-103','P',1,2,0,0,'',1),('EC-104','L',3,1,0,0,'',1),('EC-104','T',1,1,0,0,'',1),('EC-105','L',3,1,0,0,'',1);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_info`
--

DROP TABLE IF EXISTS `course_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course_info` (
  `course_code` varchar(10) NOT NULL default '',
  `course_type` char(3) NOT NULL default '',
  `events_per_week` int(11) default NULL,
  `duration` int(11) default NULL,
  `computer` int(11) default NULL,
  `projector` int(11) default NULL,
  `venue_code` varchar(10) default NULL,
  `scheduled` int(11) default NULL
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_info`
--

LOCK TABLES `course_info` WRITE;
/*!40000 ALTER TABLE `course_info` DISABLE KEYS */;
INSERT INTO `course_info` VALUES ('EC-201','P',1,3,0,0,'',0),('EC-202','P',1,3,0,0,'',0),('EC-203','L',4,1,0,0,'',0),('EC-204','L',3,1,0,0,'',0),('EC-204','T',1,1,0,0,'',0),('EC-205','L',3,1,0,0,'',0),('EC-205','T',1,1,0,0,'',0),('EC-205','P',1,2,0,0,'',0),('EC-206','L',3,1,0,0,'',0),('EC-206','T',1,1,0,0,'',0),('EC-207','L',3,1,0,0,'',0),('EC-207','T',1,1,0,0,'',0),('EC-308','P',1,3,0,0,'',0),('EC-309','L',3,1,0,0,'',0),('EC-309','T',1,1,0,0,'',0),('EC-310','L',3,1,0,0,'',0),('EC-310','T',1,1,0,0,'',0),('EC-311','P',1,3,0,0,'',0),('EC-312','L',3,1,0,0,'',0),('EC-312','T',1,1,0,0,'',0),('EC-312','P',1,2,0,0,'',0),('EC-313','L',3,1,0,0,'',0),('EC-313','T',1,1,0,0,'',0),('EC-313','P',1,2,0,0,'',0),('EC-314','P',1,3,0,0,'',0),('EC-315','L',4,1,0,0,'',0),('EC-316','L',4,1,0,0,'',0),('EC-417','P',1,3,0,0,'',0),('EC-418','L',3,1,0,0,'',0),('EC-418','T',1,1,0,0,'',0),('EC-419','P',1,3,0,0,'',0),('EC-420','L',3,1,0,0,'',0),('EC-420','T',1,1,0,0,'',0),('EC-420','P',1,2,0,0,'',0),('EC-421','L',4,1,0,0,'',0),('EC-422','P',1,3,0,0,'',0),('EC-423','L',3,1,0,0,'',0),('EC-423','T',1,1,0,0,'',0),('EC-424','L',3,1,0,0,'',0),('EC-424','T',1,1,0,0,'',0),('EC-424','P',1,2,0,0,'',0),('EC-425','P',1,3,0,0,'',0),('EC-426','L',4,1,0,0,'',0),('EC-427','P',1,3,0,0,'',0),('EC-428','L',3,1,0,0,'',0),('EC-428','T',1,1,0,0,'',0),('EC-429','L',3,1,0,0,'',0),('EC-429','T',1,1,0,0,'',0),('EC-429','P',1,2,0,0,'',0),('EC-430','P',1,3,0,0,'',0),('EC-431','L',4,1,0,0,'',0),('EC-432','L',3,1,0,0,'',0),('EC-432','T',1,1,0,0,'',0),('EC-533','P',1,3,0,0,'',0),('EC-534','P',1,3,0,0,'',0),('EC-535','L',3,1,0,0,'',0),('EC-535','T',1,1,0,0,'',0),('EC-536','P',1,3,0,0,'',0),('EC-537','L',3,1,0,0,'',0),('EC-537','T',1,1,0,0,'',0),('EC-537','P',1,2,0,0,'',0),('EC-538','L',4,1,0,0,'',0),('EC-539','P',1,3,0,0,'',0),('EC-540','L',3,1,0,0,'',0),('EC-540','T',1,1,0,0,'',0),('EC-541','L',3,1,0,0,'',0),('EC-541','T',1,1,0,0,'',0),('EC-541','P',1,1,0,0,'',0),('EC-542','P',1,3,0,0,'',0),('EC-543','L',4,1,0,0,'',0),('EC-544','L',3,1,0,0,'',0),('EC-544','T',1,1,0,0,'',0),('EC-545','P',1,3,0,0,'',0),('EC-546','L',4,1,0,0,'',0),('EC-547','L',3,1,0,0,'',0),('EC-547','T',1,1,0,0,'',0),('EC-548','P',1,3,0,0,'',0),('EC-549','L',3,1,0,0,'',0),('EC-549','T',1,1,0,0,'',0),('EC-549','P',1,2,0,0,'',0),('EC-550','L',3,1,0,0,'',0),('EC-550','T',1,1,0,0,'',0),('EC-651','L',3,1,0,0,'',0),('EC-651','T',1,1,0,0,'',0),('EC-651','P',1,2,0,0,'',0),('EC-652','L',4,1,0,0,'',0),('EC-653','L',4,1,0,0,'',0),('EC-101','L',4,1,0,0,'',1),('EC-102','L',3,1,0,0,'',1),('EC-102','T',1,1,0,0,'',1),('EC-103','L',3,1,0,0,'',1),('EC-103','T',1,1,0,0,'',1),('EC-103','P',1,2,0,0,'',1),('EC-104','L',3,1,0,0,'',1),('EC-104','T',1,1,0,0,'',1),('EC-105','L',3,1,0,0,'',1);
/*!40000 ALTER TABLE `course_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `event` longblob
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fac_info`
--

DROP TABLE IF EXISTS `fac_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fac_info` (
  `fac_id` int(11) default NULL,
  `name` varchar(255) NOT NULL default '',
  `department` varchar(255) NOT NULL default '',
  `institute` varchar(255) NOT NULL default '',
  `id` varchar(10) NOT NULL default ''
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fac_info`
--

LOCK TABLES `fac_info` WRITE;
/*!40000 ALTER TABLE `fac_info` DISABLE KEYS */;
INSERT INTO `fac_info` VALUES (0,'Padam kumar','EC','IITR','PK'),(0,'Manoj Mishra','EC','IITR','MM'),(0,'Kumkum Garg','EC','IITR','KKG'),(0,'Kuldeep Singh','EC','IITR','KDS'),(0,'Durga Toshniwal','EC','IITR','DT'),(0,'S. P. Yadav','EC','IITR','SPY'),(0,'S N Sinha','EC','IITR','SNS'),(0,'R C Joshi','EC','IITR','RCJ'),(0,'Rajdeep Niyogi','EC','IITR','RN'),(0,'Arun Kumar','EC','IITR','AK'),(0,'A K Sarje','EC','IITR','AKS'),(0,'Vinod Kumar','EC','IITR','VK'),(0,'N P Padhy','EC','IITR','NPP'),(0,'R S Anand','EC','IITR','RSA'),(0,'Pramod Agarwal','EC','IITR','PA'),(0,'D K Mehra','EC','IITR','DKM'),(0,'A K Saxena','EC','IITR','AKX'),(0,'S Mukharjee','EC','IITR','SM'),(0,'Debasish  Gosh','EC','IITR','DG'),(0,'H O Gupta','EC','IITR','HOG'),(0,'M J Nigam','EC','IITR','MJN'),(0,'Vikas Mohanti','EC','IITR','VM'),(0,'Anjali Sardana','EC','IITR','AS'),(0,'Babita Sinha','EC','IITR','BS');
/*!40000 ALTER TABLE `fac_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty_course`
--

DROP TABLE IF EXISTS `faculty_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faculty_course` (
  `course_code` varchar(10) NOT NULL default '',
  `faculty_id` varchar(10) NOT NULL default ''
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty_course`
--

LOCK TABLES `faculty_course` WRITE;
/*!40000 ALTER TABLE `faculty_course` DISABLE KEYS */;
INSERT INTO `faculty_course` VALUES ('EC-201','PK'),('EC-430','PK'),('EC-425','PK'),('EC-202','MM'),('EC-431','MM'),('EC-426','MM'),('EC-203','KKG'),('EC-432','KKG'),('EC-427','KKG'),('EC-204','KDS'),('EC-533','KDS'),('EC-428','KDS'),('EC-205','DT'),('EC-534','DT'),('EC-429','DT'),('EC-206','SPY'),('EC-535','SPY'),('EC-550','SPY'),('EC-207','SNS'),('EC-536','SNS'),('EC-651','SNS'),('EC-308','RCJ'),('EC-537','RCJ'),('EC-652','RCJ'),('EC-309','RN'),('EC-538','RN'),('EC-653','RN'),('EC-310','AK'),('EC-539','AK'),('EC-548','AK'),('EC-311','AKS'),('EC-540','AKS'),('EC-549','AKS'),('EC-312','VK'),('EC-541','VK'),('EC-313','NPP'),('EC-542','NPP'),('EC-314','RSA'),('EC-543','RSA'),('EC-315','PA'),('EC-544','PA'),('EC-316','DKM'),('EC-545','DKM'),('EC-417','AKX'),('EC-546','AKX'),('EC-418','SM'),('EC-547','SM'),('EC-419','DG'),('EC-101','DG'),('EC-420','HOG'),('EC-102','HOG'),('EC-421','MJN'),('EC-103','MJN'),('EC-422','VM'),('EC-104','VM'),('EC-423','AS'),('EC-105','AS'),('EC-424','BS');
/*!40000 ALTER TABLE `faculty_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_id`
--

DROP TABLE IF EXISTS `table_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_id` (
  `id` int(11) NOT NULL default '0',
  `path` varchar(255) default NULL,
  `user` varchar(255) default NULL,
  `department` varchar(255) default NULL,
  `date` datetime default NULL,
  PRIMARY KEY  (`id`)
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_id`
--

LOCK TABLES `table_id` WRITE;
/*!40000 ALTER TABLE `table_id` DISABLE KEYS */;
INSERT INTO `table_id` VALUES (1143,'/home/gen/brihaspati/tdk-2.3_01/webapps/brihaspati2/reports/guest/Computer Science~CSE/6-9-2010 19:37:21/report~6-9-2010 19:37:28','guest','Computer Science~CSE','2010-10-06 19:37:31'),(1000,'/home/gen/brihaspati/tdk-2.3_01/webapps/brihaspati2/reports/guest/Computer Science~CSE/6-9-2010 19:37:21/report~6-9-2010 19:52:1','guest','Computer Science~CSE','2010-10-06 19:52:05');
/*!40000 ALTER TABLE `table_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venue`
--

DROP TABLE IF EXISTS `venue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venue` (
  `code` varchar(10) NOT NULL default '',
  `capacity` int(11) NOT NULL default '0',
  `ncomputers` int(11) default NULL,
  `projector` int(11) default NULL,
  `type` int(11) default NULL
) TYPE=MyISAM;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venue`
--

LOCK TABLES `venue` WRITE;
/*!40000 ALTER TABLE `venue` DISABLE KEYS */;
INSERT INTO `venue` VALUES ('w-201',300,1,0,2),('w-202',300,1,0,2),('w-203',300,1,0,2),('w-204',300,1,0,2),('w-205',300,1,0,2),('w-206',300,1,0,2),('Audi',300,1,1,1),('S-301',300,1,1,1),('S-302',300,1,1,1),('S-303',300,1,1,1),('S-304',300,1,1,1),('S-305',300,1,1,1),('S-306',300,1,1,1),('S-307',300,1,1,1),('S-308',300,1,1,1),('S-309',300,1,1,1);
/*!40000 ALTER TABLE `venue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-10-08 14:16:48
