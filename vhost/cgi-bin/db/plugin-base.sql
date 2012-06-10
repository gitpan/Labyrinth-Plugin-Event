-- MySQL dump 10.13  Distrib 5.1.41, for debian-linux-gnu (i486)
--
-- Host: localhost    Database: demo
-- ------------------------------------------------------
-- Server version	5.1.41-3ubuntu12.7

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
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `eventid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `eventtypeid` int(10) DEFAULT NULL,
  `folderid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `imageid` int(10) unsigned NOT NULL DEFAULT '0',
  `align` int(10) unsigned NOT NULL DEFAULT '1',
  `eventdate` varchar(255) DEFAULT NULL,
  `eventtime` varchar(255) DEFAULT NULL,
  `listdate` int(11) DEFAULT '0',
  `venueid` int(10) unsigned NOT NULL DEFAULT '0',
  `body` blob,
  `links` blob,
  `extralink` varchar(255) DEFAULT NULL,
  `publish` int(4) DEFAULT NULL,
  `sponsorid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`eventid`),
  KEY `IXTYPE` (`eventtypeid`),
  KEY `IXFOLDER` (`folderid`),
  KEY `IXDATE` (`listdate`),
  KEY `IXVENUE` (`venueid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

INSERT INTO `events` VALUES (1,1,1,'Test Conference',1,1,1,'1-3 January 2011','all day',1293840000,1,'<p>This is a test','web links here',NULL,3,1);


--
-- Table structure for table `eventtypes`
--

DROP TABLE IF EXISTS `eventtypes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `eventtypes` (
  `eventtypeid` int(10) unsigned NOT NULL auto_increment,
  `eventtype`	varchar(255) NOT NULL default '',
  `talks`	tinyint(1) DEFAULT '0',
  PRIMARY KEY  (`eventtypeid`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `eventtypes`
--

INSERT INTO `eventtypes` VALUES (1,'Conference',1);
INSERT INTO `eventtypes` VALUES (2,'Workshop',1);
INSERT INTO `eventtypes` VALUES (3,'Hackathon',1);
INSERT INTO `eventtypes` VALUES (4,'User Group',1);
INSERT INTO `eventtypes` VALUES (5,'Social Meeting',0);
INSERT INTO `eventtypes` VALUES (6,'Technical Meeting',1);
INSERT INTO `eventtypes` VALUES (7,'Special',1);

--
-- Table structure for table `sponsors`
--

DROP TABLE IF EXISTS `sponsors`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `sponsors` (
  `sponsorid`	int(10) unsigned NOT NULL auto_increment,
  `sponsor`	varchar(255) NOT NULL default '',
  `sponsorlink`	varchar(255) default NULL,
  PRIMARY KEY  (`sponsorid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `sponsors`
--

INSERT INTO `sponsors` VALUES (1,'Miss Barbell Productions','http://www.missbarbell.co.uk');

--
-- Table structure for table `techtalks`
--

DROP TABLE IF EXISTS `techtalks`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `techtalks` (
  `talkid`	int(10) unsigned NOT NULL auto_increment,
  `userid`	int(10) unsigned NOT NULL default '0',
  `eventid`	int(10) unsigned NOT NULL default '0',
  `guest`	int(2) default '0',
  `talktitle`	varchar(255) default NULL,
  `abstract`	blob,
  `resource`	blob,
  PRIMARY KEY  (`talkid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `techtalks`
--

INSERT INTO `techtalks` VALUES (1,1,1,1,'Title To Be Confirmed','<p>Abstract Here</p>','<p>No Resources</p>');

--
-- Table structure for table `venues`
--

DROP TABLE IF EXISTS `venues`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `venues` (
  `venueid`	int(10) unsigned NOT NULL auto_increment,
  `venue`	varchar(255) default NULL,
  `venuelink`	varchar(255) default NULL,
  `address`	varchar(255) default NULL,
  `addresslink` varchar(255) default NULL,
  `info`	blob,
  PRIMARY KEY  (`venueid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` VALUES (1,'To Be Confirmed','','More details soon','','');

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-11-20 11:58:37
