-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: web_application
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.30-MariaDB

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
-- Table structure for table `action`
--

DROP TABLE IF EXISTS `action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `action` (
  `id_action` int(11) NOT NULL AUTO_INCREMENT,
  `action_type` varchar(200) NOT NULL,
  PRIMARY KEY (`id_action`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action`
--

LOCK TABLES `action` WRITE;
/*!40000 ALTER TABLE `action` DISABLE KEYS */;
INSERT INTO `action` VALUES (1,'login'),(2,'doRegister'),(3,'register'),(4,'lookPost'),(5,'searchTopic'),(6,'deletePost'),(7,'editPost');
/*!40000 ALTER TABLE `action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog` (
  `id_blog` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `description` text NOT NULL,
  `share_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_blog`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id_comment` int(11) NOT NULL AUTO_INCREMENT,
  `message` text NOT NULL,
  `adding_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `id_user` int(11) NOT NULL,
  `id_blog` int(11) NOT NULL,
  PRIMARY KEY (`id_comment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=240 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'AFGHANISTAN','Afghanistan'),(2,'ALBANIA','Albania'),(3,'ALGERIA','Algeria'),(4,'AMERICAN SAMOA','American Samoa'),(5,'ANDORRA','Andorra'),(6,'ANGOLA','Angola'),(7,'ANGUILLA','Anguilla'),(8,'ANTARCTICA','Antarctica'),(9,'ANTIGUA AND BARBUDA','Antigua and Barbuda'),(10,'ARGENTINA','Argentina'),(11,'ARMENIA','Armenia'),(12,'ARUBA','Aruba'),(13,'AUSTRALIA','Australia'),(14,'AUSTRIA','Austria'),(15,'AZERBAIJAN','Azerbaijan'),(16,'BAHAMAS','Bahamas'),(17,'BAHRAIN','Bahrain'),(18,'BANGLADESH','Bangladesh'),(19,'BARBADOS','Barbados'),(20,'BELARUS','Belarus'),(21,'BELGIUM','Belgium'),(22,'BELIZE','Belize'),(23,'BENIN','Benin'),(24,'BERMUDA','Bermuda'),(25,'BHUTAN','Bhutan'),(26,'BOLIVIA','Bolivia'),(27,'BOSNIA AND HERZEGOVINA','Bosnia and Herzegovina'),(28,'BOTSWANA','Botswana'),(29,'BOUVET ISLAND','Bouvet Island'),(30,'BRAZIL','Brazil'),(31,'BRITISH INDIAN OCEAN TERRITORY','British Indian Ocean Territory'),(32,'BRUNEI DARUSSALAM','Brunei Darussalam'),(33,'BULGARIA','Bulgaria'),(34,'BURKINA FASO','Burkina Faso'),(35,'BURUNDI','Burundi'),(36,'CAMBODIA','Cambodia'),(37,'CAMEROON','Cameroon'),(38,'CANADA','Canada'),(39,'CAPE VERDE','Cape Verde'),(40,'CAYMAN ISLANDS','Cayman Islands'),(41,'CENTRAL AFRICAN REPUBLIC','Central African Republic'),(42,'CHAD','Chad'),(43,'CHILE','Chile'),(44,'CHINA','China'),(45,'CHRISTMAS ISLAND','Christmas Island'),(46,'COCOS (KEELING) ISLANDS','Cocos (Keeling) Islands'),(47,'COLOMBIA','Colombia'),(48,'COMOROS','Comoros'),(49,'CONGO','Congo'),(50,'CONGO, THE DEMOCRATIC REPUBLIC OF THE','Congo, the Democratic Republic of the'),(51,'COOK ISLANDS','Cook Islands'),(52,'COSTA RICA','Costa Rica'),(53,'COTE D\'IVOIRE','Cote D\'Ivoire'),(54,'CROATIA','Croatia'),(55,'CUBA','Cuba'),(56,'CYPRUS','Cyprus'),(57,'CZECH REPUBLIC','Czech Republic'),(58,'DENMARK','Denmark'),(59,'DJIBOUTI','Djibouti'),(60,'DOMINICA','Dominica'),(61,'DOMINICAN REPUBLIC','Dominican Republic'),(62,'ECUADOR','Ecuador'),(63,'EGYPT','Egypt'),(64,'EL SALVADOR','El Salvador'),(65,'EQUATORIAL GUINEA','Equatorial Guinea'),(66,'ERITREA','Eritrea'),(67,'ESTONIA','Estonia'),(68,'ETHIOPIA','Ethiopia'),(69,'FALKLAND ISLANDS (MALVINAS)','Falkland Islands (Malvinas)'),(70,'FAROE ISLANDS','Faroe Islands'),(71,'FIJI','Fiji'),(72,'FINLAND','Finland'),(73,'FRANCE','France'),(74,'FRENCH GUIANA','French Guiana'),(75,'FRENCH POLYNESIA','French Polynesia'),(76,'FRENCH SOUTHERN TERRITORIES','French Southern Territories'),(77,'GABON','Gabon'),(78,'GAMBIA','Gambia'),(79,'GEORGIA','Georgia'),(80,'GERMANY','Germany'),(81,'GHANA','Ghana'),(82,'GIBRALTAR','Gibraltar'),(83,'GREECE','Greece'),(84,'GREENLAND','Greenland'),(85,'GRENADA','Grenada'),(86,'GUADELOUPE','Guadeloupe'),(87,'GUAM','Guam'),(88,'GUATEMALA','Guatemala'),(89,'GUINEA','Guinea'),(90,'GUINEA-BISSAU','Guinea-Bissau'),(91,'GUYANA','Guyana'),(92,'HAITI','Haiti'),(93,'HEARD ISLAND AND MCDONALD ISLANDS','Heard Island and Mcdonald Islands'),(94,'HOLY SEE (VATICAN CITY STATE)','Holy See (Vatican City State)'),(95,'HONDURAS','Honduras'),(96,'HONG KONG','Hong Kong'),(97,'HUNGARY','Hungary'),(98,'ICELAND','Iceland'),(99,'INDIA','India'),(100,'INDONESIA','Indonesia'),(101,'IRAN, ISLAMIC REPUBLIC OF','Iran, Islamic Republic of'),(102,'IRAQ','Iraq'),(103,'IRELAND','Ireland'),(104,'ISRAEL','Israel'),(105,'ITALY','Italy'),(106,'JAMAICA','Jamaica'),(107,'JAPAN','Japan'),(108,'JORDAN','Jordan'),(109,'KAZAKHSTAN','Kazakhstan'),(110,'KENYA','Kenya'),(111,'KIRIBATI','Kiribati'),(112,'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF','Korea, Democratic People\'s Republic of'),(113,'KOREA, REPUBLIC OF','Korea, Republic of'),(114,'KUWAIT','Kuwait'),(115,'KYRGYZSTAN','Kyrgyzstan'),(116,'LAO PEOPLE\'S DEMOCRATIC REPUBLIC','Lao People\'s Democratic Republic'),(117,'LATVIA','Latvia'),(118,'LEBANON','Lebanon'),(119,'LESOTHO','Lesotho'),(120,'LIBERIA','Liberia'),(121,'LIBYAN ARAB JAMAHIRIYA','Libyan Arab Jamahiriya'),(122,'LIECHTENSTEIN','Liechtenstein'),(123,'LITHUANIA','Lithuania'),(124,'LUXEMBOURG','Luxembourg'),(125,'MACAO','Macao'),(126,'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF','Macedonia, the Former Yugoslav Republic of'),(127,'MADAGASCAR','Madagascar'),(128,'MALAWI','Malawi'),(129,'MALAYSIA','Malaysia'),(130,'MALDIVES','Maldives'),(131,'MALI','Mali'),(132,'MALTA','Malta'),(133,'MARSHALL ISLANDS','Marshall Islands'),(134,'MARTINIQUE','Martinique'),(135,'MAURITANIA','Mauritania'),(136,'MAURITIUS','Mauritius'),(137,'MAYOTTE','Mayotte'),(138,'MEXICO','Mexico'),(139,'MICRONESIA, FEDERATED STATES OF','Micronesia, Federated States of'),(140,'MOLDOVA, REPUBLIC OF','Moldova, Republic of'),(141,'MONACO','Monaco'),(142,'MONGOLIA','Mongolia'),(143,'MONTSERRAT','Montserrat'),(144,'MOROCCO','Morocco'),(145,'MOZAMBIQUE','Mozambique'),(146,'MYANMAR','Myanmar'),(147,'NAMIBIA','Namibia'),(148,'NAURU','Nauru'),(149,'NEPAL','Nepal'),(150,'NETHERLANDS','Netherlands'),(151,'NETHERLANDS ANTILLES','Netherlands Antilles'),(152,'NEW CALEDONIA','New Caledonia'),(153,'NEW ZEALAND','New Zealand'),(154,'NICARAGUA','Nicaragua'),(155,'NIGER','Niger'),(156,'NIGERIA','Nigeria'),(157,'NIUE','Niue'),(158,'NORFOLK ISLAND','Norfolk Island'),(159,'NORTHERN MARIANA ISLANDS','Northern Mariana Islands'),(160,'NORWAY','Norway'),(161,'OMAN','Oman'),(162,'PAKISTAN','Pakistan'),(163,'PALAU','Palau'),(164,'PALESTINIAN TERRITORY, OCCUPIED','Palestinian Territory, Occupied'),(165,'PANAMA','Panama'),(166,'PAPUA NEW GUINEA','Papua New Guinea'),(167,'PARAGUAY','Paraguay'),(168,'PERU','Peru'),(169,'PHILIPPINES','Philippines'),(170,'PITCAIRN','Pitcairn'),(171,'POLAND','Poland'),(172,'PORTUGAL','Portugal'),(173,'PUERTO RICO','Puerto Rico'),(174,'QATAR','Qatar'),(175,'REUNION','Reunion'),(176,'ROMANIA','Romania'),(177,'RUSSIAN FEDERATION','Russian Federation'),(178,'RWANDA','Rwanda'),(179,'SAINT HELENA','Saint Helena'),(180,'SAINT KITTS AND NEVIS','Saint Kitts and Nevis'),(181,'SAINT LUCIA','Saint Lucia'),(182,'SAINT PIERRE AND MIQUELON','Saint Pierre and Miquelon'),(183,'SAINT VINCENT AND THE GRENADINES','Saint Vincent and the Grenadines'),(184,'SAMOA','Samoa'),(185,'SAN MARINO','San Marino'),(186,'SAO TOME AND PRINCIPE','Sao Tome and Principe'),(187,'SAUDI ARABIA','Saudi Arabia'),(188,'SENEGAL','Senegal'),(189,'SERBIA AND MONTENEGRO','Serbia and Montenegro'),(190,'SEYCHELLES','Seychelles'),(191,'SIERRA LEONE','Sierra Leone'),(192,'SINGAPORE','Singapore'),(193,'SLOVAKIA','Slovakia'),(194,'SLOVENIA','Slovenia'),(195,'SOLOMON ISLANDS','Solomon Islands'),(196,'SOMALIA','Somalia'),(197,'SOUTH AFRICA','South Africa'),(198,'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS','South Georgia and the South Sandwich Islands'),(199,'SPAIN','Spain'),(200,'SRI LANKA','Sri Lanka'),(201,'SUDAN','Sudan'),(202,'SURINAME','Suriname'),(203,'SVALBARD AND JAN MAYEN','Svalbard and Jan Mayen'),(204,'SWAZILAND','Swaziland'),(205,'SWEDEN','Sweden'),(206,'SWITZERLAND','Switzerland'),(207,'SYRIAN ARAB REPUBLIC','Syrian Arab Republic'),(208,'TAIWAN, PROVINCE OF CHINA','Taiwan, Province of China'),(209,'TAJIKISTAN','Tajikistan'),(210,'TANZANIA, UNITED REPUBLIC OF','Tanzania, United Republic of'),(211,'THAILAND','Thailand'),(212,'TIMOR-LESTE','Timor-Leste'),(213,'TOGO','Togo'),(214,'TOKELAU','Tokelau'),(215,'TONGA','Tonga'),(216,'TRINIDAD AND TOBAGO','Trinidad and Tobago'),(217,'TUNISIA','Tunisia'),(218,'TURKEY','Turkey'),(219,'TURKMENISTAN','Turkmenistan'),(220,'TURKS AND CAICOS ISLANDS','Turks and Caicos Islands'),(221,'TUVALU','Tuvalu'),(222,'UGANDA','Uganda'),(223,'UKRAINE','Ukraine'),(224,'UNITED ARAB EMIRATES','United Arab Emirates'),(225,'UNITED KINGDOM','United Kingdom'),(226,'UNITED STATES','United States'),(227,'UNITED STATES MINOR OUTLYING ISLANDS','United States Minor Outlying Islands'),(228,'URUGUAY','Uruguay'),(229,'UZBEKISTAN','Uzbekistan'),(230,'VANUATU','Vanuatu'),(231,'VENEZUELA','Venezuela'),(232,'VIET NAM','Viet Nam'),(233,'VIRGIN ISLANDS, BRITISH','Virgin Islands, British'),(234,'VIRGIN ISLANDS, U.S.','Virgin Islands, U.s.'),(235,'WALLIS AND FUTUNA','Wallis and Futuna'),(236,'WESTERN SAHARA','Western Sahara'),(237,'YEMEN','Yemen'),(238,'ZAMBIA','Zambia'),(239,'ZIMBABWE','Zimbabwe');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `information`
--

DROP TABLE IF EXISTS `information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `information` (
  `id_info` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(20) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `id_country` int(11) NOT NULL,
  `city` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_info`),
  KEY `fk_info_id_country_idx` (`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `information`
--

LOCK TABLES `information` WRITE;
/*!40000 ALTER TABLE `information` DISABLE KEYS */;
/*!40000 ALTER TABLE `information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id_role` int(11) NOT NULL AUTO_INCREMENT,
  `role_type` varchar(20) NOT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_MANAGER'),(3,'ROLE_UNAUTH');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_action`
--

DROP TABLE IF EXISTS `role_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_action` (
  `id_role_action` int(11) NOT NULL AUTO_INCREMENT,
  `id_role` int(11) NOT NULL,
  `id_action` int(11) NOT NULL,
  PRIMARY KEY (`id_role_action`),
  KEY `id_role` (`id_role`),
  KEY `id_action` (`id_action`),
  CONSTRAINT `role_action_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`),
  CONSTRAINT `role_action_ibfk_2` FOREIGN KEY (`id_action`) REFERENCES `action` (`id_action`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_action`
--

LOCK TABLES `role_action` WRITE;
/*!40000 ALTER TABLE `role_action` DISABLE KEYS */;
INSERT INTO `role_action` VALUES (2,3,1),(3,3,2),(4,3,3),(5,3,4),(6,3,5);
/*!40000 ALTER TABLE `role_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL,
  `id_role` int(11) DEFAULT NULL,
  `id_info` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  KEY `fk_user_id_role_idx` (`id_role`),
  KEY `fk_user_id_info_idx` (`id_info`),
  CONSTRAINT `fk_user_id_info` FOREIGN KEY (`id_info`) REFERENCES `information` (`id_info`),
  CONSTRAINT `fk_user_id_role` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'sdfdsf','sdfsdf','123','2c2ca19b-126d-42e9-8daf-44953dc49eae','2',3,NULL),(2,'asd','asd','123','5ed6895f-37e1-4f29-acd4-853c6964c861','2',3,NULL);
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

-- Dump completed on 2018-10-21 11:42:22
