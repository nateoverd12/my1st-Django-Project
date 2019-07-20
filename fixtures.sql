-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: db_ch4
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add booking',7,'add_booking'),(26,'Can change booking',7,'change_booking'),(27,'Can delete booking',7,'delete_booking'),(28,'Can view booking',7,'view_booking'),(29,'Can add shows',8,'add_shows'),(30,'Can change shows',8,'change_shows'),(31,'Can delete shows',8,'delete_shows'),(32,'Can view shows',8,'view_shows'),(33,'Can add show',8,'add_show'),(34,'Can change show',8,'change_show'),(35,'Can delete show',8,'delete_show'),(36,'Can view show',8,'view_show');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$150000$LvyMUID8Ky5H$vhU01YF8CJ2461QBhbEcWHBI17VZ+t+3228q1fdOci0=','2019-07-17 07:49:50.917010',1,'adminDjPy','','','admin@django.py',1,1,'2019-07-17 07:49:16.087005');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `circus_booking`
--

DROP TABLE IF EXISTS `circus_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `circus_booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `seats` int(11) NOT NULL,
  `paymentTime` date NOT NULL,
  `address` varchar(150) NOT NULL,
  `city` varchar(60) NOT NULL,
  `country` varchar(50) NOT NULL,
  `show_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `circus_booking_show_id_c4512041_fk_circus_show_id` (`show_id`),
  CONSTRAINT `circus_booking_show_id_c4512041_fk_circus_show_id` FOREIGN KEY (`show_id`) REFERENCES `circus_show` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `circus_booking`
--

LOCK TABLES `circus_booking` WRITE;
/*!40000 ALTER TABLE `circus_booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `circus_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `circus_show`
--

DROP TABLE IF EXISTS `circus_show`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `circus_show` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `city` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `gps_latitude` varchar(30) NOT NULL,
  `gps_longitude` varchar(30) NOT NULL,
  `left_seats` int(11) NOT NULL,
  `total_seats` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2921 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `circus_show`
--

LOCK TABLES `circus_show` WRITE;
/*!40000 ALTER TABLE `circus_show` DISABLE KEYS */;
INSERT INTO `circus_show` VALUES (2848,'Cirque Muller Jacquet S.A.R.L.','Dunkerque','2019-10-06',19.64,'51.0347708','2.3772525',181,181),(2849,'Cirque Lefort','Paris','2020-03-05',11.90,'48.8566969','2.3514616',107,107),(2850,'Cirque Marion','Nancy','2019-08-01',25.50,'48.6937223','6.1834097',179,179),(2851,'Cirque Renault','Nancy','2020-07-03',14.94,'48.6937223','6.1834097',140,140),(2852,'Cirque Didier','Pau','2020-06-24',35.83,'43.2957547','-0.3685668',131,131),(2853,'Cirque Ruiz Bourdon S.A.S.','Annecy','2019-11-30',19.27,'45.88975045','6.135465100226',114,114),(2854,'Cirque Samson','Toulon','2020-03-29',29.20,'43.1257311','5.9304919',193,193),(2855,'Cirque Delmas Bousquet S.A.','Toulouse','2020-05-07',12.85,'43.6044622','1.4442469',126,126),(2856,'Cirque Bouchet S.A.R.L.','Grenoble','2019-10-08',6.14,'45.1875602','5.7357819',121,121),(2857,'Cirque Renault','Annecy','2020-01-10',38.54,'45.88975045','6.135465100226',136,136),(2858,'Cirque Gallet S.A.R.L.','Bordeaux','2019-08-19',10.65,'44.841225','-0.5800364',160,160),(2859,'Cirque Maury','Rouen','2020-04-28',29.29,'49.4404591','1.0939658',109,109),(2860,'Cirque Brunet','Brest','2020-05-15',21.13,'48.3905283','-4.4860088',129,129),(2861,'Cirque Duhamel S.A.','Brest','2019-07-17',31.11,'48.3905283','-4.4860088',154,154),(2862,'Cirque Rodriguez','Béthune','2020-07-10',20.58,'50.5199','2.64781',102,102),(2863,'Cirque Noel Weiss S.A.','Toulouse','2020-04-23',32.88,'43.6044622','1.4442469',177,177),(2864,'Cirque Leveque Clement SARL','Grenoble','2020-06-10',32.78,'45.1875602','5.7357819',171,171),(2865,'Cirque Fontaine et Fils','Nîmes','2020-01-20',26.15,'43.8374249','4.3600687',112,112),(2866,'Cirque Pottier','Avignon','2020-06-30',21.25,'43.98456915','4.885811932798079',184,184),(2867,'Cirque Pierre Godard S.A.S.','Tours','2020-05-22',18.52,'47.3900474','0.6889268',198,198),(2868,'Cirque Garcia','Lens','2019-08-24',23.05,'50.4291723','2.8319805',121,121),(2869,'Cirque Thibault','Montpellier','2019-07-31',28.69,'43.6112422','3.8767337',198,198),(2870,'Cirque Gaudin S.A.','Nantes','2019-10-15',17.51,'47.2186371','-1.5541362',165,165),(2871,'Cirque Lefevre','Tours','2019-12-10',28.22,'47.3900474','0.6889268',172,172),(2872,'Cirque Valette S.A.R.L.','Mulhouse','2019-12-09',14.99,'47.7467','7.3389275',104,104),(2873,'Cirque Noel S.A.','Reims','2019-11-06',7.13,'49.2577886','4.031926',103,103),(2874,'Cirque Munoz','Valenciennes','2019-11-08',35.52,'50.3579317','3.5234846',164,164),(2875,'Cirque Samson','Lens','2019-11-17',26.38,'50.4291723','2.8319805',113,113),(2876,'Cirque Charrier','Amiens','2020-03-11',9.45,'49.8941708','2.2956951',104,104),(2877,'Cirque Moulin','Rouen','2020-03-18',25.05,'49.4404591','1.0939658',165,165),(2878,'Cirque Dijoux','Nancy','2020-07-09',34.21,'48.6937223','6.1834097',184,184),(2879,'Cirque Gautier et Fils','Nancy','2020-04-13',15.84,'48.6937223','6.1834097',147,147),(2880,'Cirque Voisin','Lyon','2019-11-30',34.94,'45.6963425','4.735948029916814',146,146),(2881,'Cirque Colas S.A.S.','Rouen','2020-02-10',5.69,'49.4404591','1.0939658',192,192),(2882,'Cirque Giraud Didier S.A.','Dunkerque','2020-05-18',15.33,'51.0347708','2.3772525',152,152),(2883,'Cirque Jourdan S.A.R.L.','Valenciennes','2020-06-15',23.88,'50.3579317','3.5234846',130,130),(2884,'Cirque Gonzalez','Caen','2019-09-14',22.36,'49.1828008','-0.3690815',171,171),(2885,'Cirque Buisson','Lille','2019-09-09',7.47,'50.6305089','3.0706414',151,151),(2886,'Cirque Hoareau S.A.','Rennes','2020-02-27',27.42,'48.1113387','-1.6800198',194,194),(2887,'Cirque Lamy Guilbert S.A.','Nantes','2020-02-15',27.58,'47.2186371','-1.5541362',125,125),(2888,'Cirque Allain','Nancy','2020-02-06',8.92,'48.6937223','6.1834097',177,177),(2889,'Cirque Royer S.A.','Nantes','2020-01-02',37.86,'47.2186371','-1.5541362',139,139),(2890,'Cirque Guichard Lambert S.A.','Marseille','2020-03-25',29.36,'43.2961743','5.3699525',143,143),(2891,'Cirque Dumont S.A.','Dunkerque','2020-02-08',30.80,'51.0347708','2.3772525',189,189),(2892,'Cirque Paul','Besançon','2019-10-08',14.35,'47.2380222','6.0243622',146,146),(2893,'Cirque Blanchet','Bayonne','2019-09-06',15.93,'43.4933379','-1.475099',189,189),(2894,'Cirque Gillet','Montpellier','2019-08-21',19.53,'43.6112422','3.8767337',116,116),(2895,'Cirque Picard','Nice','2020-06-21',21.55,'43.7009358','7.2683912',135,135),(2896,'Cirque Robert','Lille','2020-01-08',20.58,'50.6305089','3.0706414',117,117),(2897,'Cirque Ramos Valentin SA','Dunkerque','2020-06-17',9.05,'51.0347708','2.3772525',109,109),(2898,'Cirque Pascal SARL','Paris','2019-10-27',32.76,'48.8566969','2.3514616',175,175),(2899,'Cirque Bourdon Guichard S.A.R.L.','Le Havre','2020-04-11',33.12,'49.4938975','0.1079732',179,179),(2900,'Cirque Thibault','Strasbourg','2019-11-15',32.60,'48.584614','7.7507127',142,142),(2901,'Cirque Rodrigues Leclercq S.A.S.','Nantes','2020-06-03',7.96,'47.2186371','-1.5541362',181,181),(2902,'Cirque Guilbert','Valenciennes','2019-09-23',17.40,'50.3579317','3.5234846',115,115),(2903,'Cirque Cousin','Reims','2020-01-10',7.26,'49.2577886','4.031926',109,109),(2904,'Cirque Laurent S.A.S.','Pau','2020-03-14',26.58,'43.2957547','-0.3685668',162,162),(2905,'Cirque Lemoine SA','Montpellier','2019-07-22',22.20,'43.6112422','3.8767337',171,171),(2906,'Cirque Guillot S.A.R.L.','Annecy','2020-02-07',34.86,'45.88975045','6.135465100226',181,181),(2907,'Cirque Blanchard','Marseille','2020-04-09',29.29,'43.2961743','5.3699525',144,144),(2908,'Cirque Roussel SARL','Grenoble','2020-05-30',6.39,'45.1875602','5.7357819',106,106),(2909,'Cirque Caron','Le Havre','2020-02-07',31.07,'49.4938975','0.1079732',175,175),(2910,'Cirque Dijoux','Caen','2019-12-24',15.71,'49.1828008','-0.3690815',118,118),(2911,'Cirque Lefebvre SA','Nice','2020-01-02',18.46,'43.7009358','7.2683912',133,133),(2912,'Cirque Leger','Bordeaux','2020-01-31',23.83,'44.841225','-0.5800364',144,144),(2913,'Cirque Bigot Bousquet et Fils','Brest','2020-05-17',7.54,'48.3905283','-4.4860088',189,189),(2914,'Cirque Leclercq','Rennes','2020-01-21',16.72,'48.1113387','-1.6800198',156,156),(2915,'Cirque Fernandes','Tours','2020-05-17',24.66,'47.3900474','0.6889268',191,191),(2916,'Cirque Mary S.A.','Rouen','2020-05-21',21.20,'49.4404591','1.0939658',167,167),(2917,'Cirque Vidal S.A.S.','Limoges','2020-07-12',23.64,'45.8354243','1.2644847',121,121),(2918,'Cirque Vincent','Dijon','2020-06-08',39.98,'47.3215806','5.0414701',100,100),(2919,'Cirque Giraud','Lyon','2020-06-30',21.46,'45.6963425','4.735948029916814',185,185),(2920,'Cirque Verdier Leroy et Fils','Amiens','2020-06-11',39.25,'49.8941708','2.2956951',147,147);
/*!40000 ALTER TABLE `circus_show` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-07-17 07:53:47.320355','1','Shows object (1)',1,'[{\"added\": {}}]',8,1),(2,'2019-07-17 10:26:29.173338','1','Show object (1)',3,'',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'circus','booking'),(8,'circus','show'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-07-16 15:21:33.580366'),(2,'auth','0001_initial','2019-07-16 15:21:34.001713'),(3,'admin','0001_initial','2019-07-16 15:21:35.440149'),(4,'admin','0002_logentry_remove_auto_add','2019-07-16 15:21:35.761695'),(5,'admin','0003_logentry_add_action_flag_choices','2019-07-16 15:21:35.771695'),(6,'contenttypes','0002_remove_content_type_name','2019-07-16 15:21:35.998774'),(7,'auth','0002_alter_permission_name_max_length','2019-07-16 15:21:36.023924'),(8,'auth','0003_alter_user_email_max_length','2019-07-16 15:21:36.057541'),(9,'auth','0004_alter_user_username_opts','2019-07-16 15:21:36.075412'),(10,'auth','0005_alter_user_last_login_null','2019-07-16 15:21:36.190250'),(11,'auth','0006_require_contenttypes_0002','2019-07-16 15:21:36.199003'),(12,'auth','0007_alter_validators_add_error_messages','2019-07-16 15:21:36.215649'),(13,'auth','0008_alter_user_username_max_length','2019-07-16 15:21:36.237832'),(14,'auth','0009_alter_user_last_name_max_length','2019-07-16 15:21:36.267511'),(15,'auth','0010_alter_group_name_max_length','2019-07-16 15:21:36.292344'),(16,'auth','0011_update_proxy_permissions','2019-07-16 15:21:36.310871'),(17,'sessions','0001_initial','2019-07-16 15:21:36.374247'),(18,'circus','0001_initial','2019-07-17 07:45:52.497416'),(19,'circus','0002_auto_20190717_0756','2019-07-17 07:56:09.480949'),(20,'circus','0003_auto_20190717_1028','2019-07-17 10:28:31.689486'),(21,'circus','0004_auto_20190717_1326','2019-07-17 13:28:08.340150'),(22,'circus','0005_auto_20190717_2104','2019-07-17 21:04:27.506238'),(23,'circus','0006_auto_20190717_2125','2019-07-17 21:25:28.463714');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('72ptrvza4hhul0ifhto12w04gd9kvgdb','M2RlOTkxZmZmMTA5NzIxZjgyZTdkNjdiMzkxYTU2NTRiMjMwOWZhYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5OWVlMDI2N2RhMGFmY2I4NTE5MTViMzVhNDFkY2NmNGU5MDgxZDc0In0=','2019-07-31 07:49:50.926211');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-20 15:12:36
