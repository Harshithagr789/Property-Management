-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: propertyinvestment12
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(255) DEFAULT NULL,
  `admin_password` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'shiva','null','active'),(2,'shivaa','null2','active'),(3,'shiva2','null3','active'),(4,'siri','password123','active'),(6,'akash','akash','active'),(7,'siva krishna','password143','active'),(8,'siva krishna','password143','active'),(9,'siva krishna','password143','active'),(10,'siva krishna','password143','active'),(11,'siva krishna','password143','active'),(12,'siva krishna','password143','active'),(13,'siva krishna','password143','active'),(14,'siva krishna','password143','active'),(15,'siva krishna','password143','active'),(16,'siva krishna','password143','active'),(17,'siva krishna','password143','active'),(18,'siva krishna','password143','active'),(19,'mrudula','btsforever','active');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `e_mail` varchar(255) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `phone_no` bigint DEFAULT NULL,
  `customer_location_id` int DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `customer_location_id` (`customer_location_id`),
  CONSTRAINT `customer_location_id` FOREIGN KEY (`customer_location_id`) REFERENCES `customer_location` (`customer_location_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKboqiw0h8m9n0bdmde8tke7jhq` FOREIGN KEY (`customer_location_id`) REFERENCES `customer_location` (`customer_location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'siva10082001@gmail.com','sai',6362182565,1,'null'),(2,'akashgowda0902@gmail.com','akash',6362182145,2,'null'),(3,'sivasai@gmail.com','sai',6362182145,6,'null'),(4,'shireeshar07@gmail.com','siri',6362182145,5,'null'),(5,'siva1@gmail.com','siva',6362182145,7,'null'),(6,'kskr@gmail.com','kskr',8500616826,8,'null'),(7,'thara123@gmail.com','Thara devi',919381081925,9,'null'),(8,'Siva1001@gmail.com','Samudrala Datta siva sai',919381081925,10,'null'),(9,'Siva100@gmail.com','Samudrala Datta siva sai',919381081925,11,'null'),(10,'sivasai@gmail.com','Samudrala Datta siva sai',9381081925,12,'null'),(11,'siva19@gmail.com','Samudrala Datta siva sai',9381081925,13,'null'),(12,'siva@gmail.com','siri',6362182145,14,NULL),(13,'siva@gmail.com','siri',6362182145,15,NULL),(14,'ruchitha@gmail.com','Ruchitha',8989898989,16,'ruchitha'),(15,'hegde@gmail.com','Mrudula Hegde',9876543210,17,'bts'),(16,'man@gmail.com','manaswinee',7654335688,18,'man@gmail.com'),(17,'harshi@gmail.com','harshitha',9876543213,19,'harsh'),(18,'shaik@gmail.com','shaik',8765432356,20,'dubai');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_location`
--

DROP TABLE IF EXISTS `customer_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_location` (
  `customer_location_id` int NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`customer_location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_location`
--

LOCK TABLES `customer_location` WRITE;
/*!40000 ALTER TABLE `customer_location` DISABLE KEYS */;
INSERT INTO `customer_location` VALUES (1,'bangalore','india','560066','karnataka','5th cross'),(2,'bangalore','india','560066','karnataka','5th cross'),(3,'bangalore','india','560066','karnataka','5th cross'),(4,'bangalore','india','560066','karnataka','5th cross'),(5,'bangalore','india','560066','karnataka','5th cross'),(6,'bangalore','india','560066','karnataka','5th cross'),(7,'bangalore','india','560066','karnataka','5th cross'),(8,'Nandyal','India','518145','Andhra Pradesh','Akkampalle'),(9,'Kadapa','India','516002','Andhra Pradesh','41/1221 cooperative colony'),(10,'Kadapa','India','516002','Andhra Pradesh','41/1221 cooperative colony'),(11,'Kadapa','India','516002','Andhra Pradesh','41/1221 cooperative colony'),(12,'Kadapa','India','516002','Andhra Pradesh','41/1221 cooperative colony'),(13,'Kadapa','India','516002','Andhra Pradesh','41/1221 cooperative colony'),(14,'bangalore','india','560066','karnataka','5th cross'),(15,'bangalore','india','560066','karnataka','5th cross'),(16,'Solan','India','103505','HImachal Pradesh','Housing board 2'),(17,'Seoul','South Korea','100021','Seoul','Myeongdong 1'),(18,'bangalore','India','562114','Karnataka','Vivekananda Nagar'),(19,'bangalore','India','562114','Karnataka','Vivekananda Nagar'),(20,'bangalore','India','562114','Karnataka','mv extension');
/*!40000 ALTER TABLE `customer_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `properties` (
  `property_id` int NOT NULL AUTO_INCREMENT,
  `area` double DEFAULT NULL,
  `last_modeifedon` datetime DEFAULT NULL,
  `property_name` varchar(255) DEFAULT NULL,
  `remaining_units` int DEFAULT NULL,
  `share_cost_per_unit` double DEFAULT NULL,
  `starting_date` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total_cost` double DEFAULT NULL,
  `total_no_units` int DEFAULT NULL,
  `property_location_id` int DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `blocked_units` int DEFAULT NULL,
  `yield_value` double DEFAULT NULL,
  `map_url` longtext,
  PRIMARY KEY (`property_id`),
  KEY `property_loc_id` (`property_location_id`),
  CONSTRAINT `FK6iyfi7l0yt3pgtb1o61v6fryg` FOREIGN KEY (`property_location_id`) REFERENCES `property_location` (`property_loc_id`),
  CONSTRAINT `property_loc_id` FOREIGN KEY (`property_location_id`) REFERENCES `property_location` (`property_loc_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties`
--

LOCK TABLES `properties` WRITE;
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` VALUES (1,22,'2023-04-14 00:12:03','SBR',25,7800,'2023-04-14 00:12:03','active',750000000,25,1,'https://propmedia1.propertyshare.in/website/property/Mm1rMWthZHN1V0x3ejlWQlN5TmJCUT09/media-v2/images/listingbanner/540x420/1631124574-lodha-ithink-mumbai-1.jpg',3,0,'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3887.272574936134!2d77.7624529!3d13.0183064!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae0fa247a5edb5%3A0x8a51afb8da37cde4!2z4LKO4LK44LON4oCM4LKs4LK_4LKG4LKw4LONIOCyl-CzjeCysOCzguCyquCzjQ!5e0!3m2!1skn!2sin!4v1742971369245!5m2!1skn!2sin'),(3,52277,'2023-04-14 00:15:35','The Pavilion III',23,340000,'2023-05-04 05:30:00','active',85000000,25,3,'https://propmedia2.propertyshare.in/website/property/YXgrbVI5NXJabk9IbFNHbkIzRmlqQT09/media-v2/images/listingbanner/540x420/1601270012-the-pavilion-iii-bangalore-1.jpg',51,6,'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3925531.7235367554!2d72.68751170390117!3d16.090012863764105!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae13ff7cdc0e95%3A0x8569b186ba338855!2sThe%20Pavilion%20by%20SJR%20PrimeCorp!5e0!3m2!1sen!2sin!4v1743588631103!5m2!1sen!2sin'),(4,96950,'2023-04-19 12:34:36','Mindspace Park',140,406250,'2023-05-04 05:30:00','active',65000000,160,5,'https://propmedia1.propertyshare.in/website/property/Tk0xN01tTytJWmYxYUp5NWhYa1VnUT09/media-v2/images/listingbanner/540x420/1598784607-mindspace-business-park-hyderabad-1.jpg',1,7,'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3925776.5545697254!2d73.09807505478948!3d16.077619521816082!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bcb93e0c3619651%3A0x9965cd1406455a0f!2sMind%20Space%20IT%20Park!5e0!3m2!1sen!2sin!4v1743508024047!5m2!1sen!2sin'),(5,32277,'2023-04-19 14:23:30','IBC Knowledge Park ',250,320000,'2023-05-04 05:30:00','active',80000000,250,2,'https://propmedia1.propertyshare.in/website/property/NlNSVjFwQUdNR3pzQkF1ZGJ3Q0krdz09/media-v2/images/listingbanner/540x420/1578665086-ibc-knowledge-park-bangalore-1.jpg',0,8,'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3888.612808530505!2d77.60030207454602!3d12.932589015733416!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae15ade8c3b8ff%3A0xf602691f8963c9cc!2sIBC%20Knowledge%20Park!5e0!3m2!1sen!2sin!4v1743588703001!5m2!1sen!2sin'),(7,41583,'2023-04-19 15:30:50','Two Inverkip Stree',170,416667,'2023-05-04 05:30:00','active',75000000,180,10,'https://s0.geograph.org.uk/geophotos/05/14/04/5140409_4621e5bf.jpg',0,6,'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2236.238157350261!2d-4.867037023581789!3d55.91057077982877!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4889bac3c73369b9%3A0xd2fad2c43e2a44a4!2sSainsbury&#39;s!5e0!3m2!1sen!2sin!4v1743588877741!5m2!1sen!2sin'),(8,8944,'2023-04-19 15:32:10','Sky Vista ',195,325000,'2023-05-04 05:30:00','active',65000000,200,7,'https://propmedia1.propertyshare.in/website/property/T0o0SnBBdG5SNVlzNnJtUjNyMFRUZz09/media-v2/images/listingbanner/540x420/1578542226-sky-vista-pune-1.jpg',0,8,'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3782.1211700935987!2d73.90580327465327!3d18.56857516770722!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2c131ed5b54a7%3A0xad718b8b2c93d36d!2sSky%20Vista!5e0!3m2!1sen!2sin!4v1743589067151!5m2!1sen!2sin'),(9,1950,'2023-04-19 15:36:57','Umiya Business Bay I ',150,300000,'2023-05-04 05:30:00','active',45000000,150,8,'https://propmedia2.propertyshare.in/website/property/bXN0L0xhOVF3eW5YYXNmVTlyTDVRZz09/media-v2/images/listingbanner/540x420/1578542243-umiya-business-bay-i-bangalore-1.jpg',0,7.5,'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d60531.570026553694!2d73.81046307964581!3d18.51881647842854!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2c04d2e551403%3A0x421f6cdcc9be5071!2sPune%2C%20Maharashtra%20411001!5e0!3m2!1sen!2sin!4v1743590462999!5m2!1sen!2sin'),(10,10988,'2023-04-19 15:49:59','Seawoods  Central II ',600,450000,'2023-05-04 05:30:00','active',90000000,600,9,'https://propmedia2.propertyshare.in/website/property/R1o2VVcvd3pydkhyUDlZVHJHMVowZz09/media-v2/images/listingbanner/540x420/1578542219-seawoods-grand-central-ii-mumbai-1.jpg',0,6,'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3771.9622896322194!2d73.01580042466387!3d19.021383303685855!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7b74fc13382d7%3A0xdb7806e89e4034ae!2sSeawoods%20Grand%20Central%20Condominium%20Tower%20II!5e0!3m2!1sen!2sin!4v1743589292494!5m2!1sen!2sin'),(11,84152,'2023-04-25 16:44:50','Embassy Tech Square',95,200000,'2023-05-04 05:30:00','active',30000000,150,12,'https://propmedia1.propertyshare.in/website/property/d3Joby9VTnlncndkZit1ZlAxQ2ZMdz09/media-v2/images/listingbanner/540x420/1638176089-embassy-tech-square-bangalore-1.jpg',0,7,'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3888.55846360736!2d77.69099137454607!3d12.936075615657257!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae13ae77e4c055%3A0xa4c4103567754afc!2sEmbassy%20Tech%20Square%2C%20Kaverappa%20Layout%2C%20Kadubeesanahalli%2C%20Kadabeesanahalli%2C%20Bengaluru%2C%20Karnataka%20560103!5e0!3m2!1sen!2sin!4v1743589473253!5m2!1sen!2sin'),(12,85757,'2023-04-25 18:33:04','Walton Summit ',500,350000,'2023-05-04 05:30:00','active',70000000,500,13,'https://propmedia2.propertyshare.in/website/property/T29DcmkzY1BtREQvTnlYVnl6cnZCdz09/media-v2/images/listingbanner/540x420/1663762252-preston-uk-united-kingdom-1.jpg',0,7,'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3942391.171928936!2d75.29672976872389!3d15.2136381711463!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae3ce554acc5db%3A0x56516cc20e14149!2sPreston%20India%20Pvt%20Ltd!5e0!3m2!1sen!2sin!4v1743590529298!5m2!1sen!2sin'),(13,171402,'2023-05-04 11:32:24','Prestige Tech Platinas',200,117284,'2023-05-04 05:30:00','active',23456778,200,14,'https://propmedia1.propertyshare.in/website/property/T0o1b0NhdHFzeGQ2QThraUttbFdPQT09/media-v2/images/listingbanner/540x420/1676978529-prestige-tech-platina-bangalore-1.jpg',0,9.4,'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3888.4377219883672!2d77.69326797454615!3d12.943818715487863!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae13b26af6ecc7%3A0x8e8d6f4f7363dfb7!2sPrestige%20Tech%20Platina!5e0!3m2!1sen!2sin!4v1743589793825!5m2!1sen!2sin'),(14,35802,'2023-05-05 06:28:10','SBR Horizan',250,200000,'2023-05-13 05:30:00','active',85000000,250,15,'https://www.gbdarchitects.com/wp-content/uploads/2013/09/Kiln-Apartments-1.jpg',0,8,'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3887.2752837164003!2d77.76047557454734!3d13.01813371385746!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae0e348341a975%3A0x411cb66612198cd7!2sSBR%20Horizon!5e0!3m2!1sen!2sin!4v1743589861226!5m2!1sen!2sin'),(15,9000,'2023-05-05 06:33:17','SBR Nest',250,980000,'2023-05-05 05:30:00','active',95000000,250,16,'https://files.propertywala.com/photos/62/J771189883.elevation.21755746l.jpg',0,6,'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3888.5713614255346!2d77.5582700745461!3d12.935248215675314!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae3e276cd58d53%3A0x49663528e3d6b257!2sVidyapeeta%20Circle!5e0!3m2!1sen!2sin!4v1743589963667!5m2!1sen!2sin'),(16,85757,'2023-05-05 06:37:11','SBR Towers',140,416600,'2023-05-05 05:30:00','active',30000000,150,17,'https://propmedia1.propertyshare.in/website/property/d3Joby9VTnlncndkZit1ZlAxQ2ZMdz09/media-v2/images/listingbanner/540x420/1638176089-embassy-tech-square-bangalore-1.jpg',0,5.8,'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3888.5713614255346!2d77.5582700745461!3d12.935248215675314!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae3e276cd58d53%3A0x49663528e3d6b257!2sVidyapeeta%20Circle!5e0!3m2!1sen!2sin!4v1743589963667!5m2!1sen!2sin'),(17,35802,'2023-05-05 15:17:28','SBR Pevilion',190,200000,'2023-05-06 05:30:00','active',23456778,200,18,'https://propmedia1.propertyshare.in/website/property/YnlWOFlqaU1EbmRNayswTkR3SWY4dz09/media-v2/images/listingbanner/540x420/1622016030-whitefield-tech-park-bangalore-1.jpg',0,7,'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3888.5713614255346!2d77.5582700745461!3d12.935248215675314!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bae3e276cd58d53%3A0x49663528e3d6b257!2sVidyapeeta%20Circle!5e0!3m2!1sen!2sin!4v1743589963667!5m2!1sen!2sin'),(19,300,'2025-05-05 14:49:53','Hilliview',4000,15000,'2025-05-05 05:30:00','active',9000000,4000,19,'https://eycrk5cno2n.exactdn.com/wp-content/uploads/2022/02/The-Importance-of-High-Quality-Real-Estate-Photos-v3.jpg',0,0,NULL);
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_admin`
--

DROP TABLE IF EXISTS `property_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_admin` (
  `property_id` int NOT NULL,
  `admin_id` int NOT NULL,
  KEY `FKf40ugqes2l10pm0i1ab7q6k9h` (`admin_id`),
  KEY `FKl9g4fcuk6hsay98rh9c0twtvb` (`property_id`),
  CONSTRAINT `admin_id_fk` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`) ON UPDATE CASCADE,
  CONSTRAINT `FKf40ugqes2l10pm0i1ab7q6k9h` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`),
  CONSTRAINT `FKl9g4fcuk6hsay98rh9c0twtvb` FOREIGN KEY (`property_id`) REFERENCES `properties` (`property_id`),
  CONSTRAINT `property_id_fk` FOREIGN KEY (`property_id`) REFERENCES `properties` (`property_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_admin`
--

LOCK TABLES `property_admin` WRITE;
/*!40000 ALTER TABLE `property_admin` DISABLE KEYS */;
INSERT INTO `property_admin` VALUES (9,1),(15,1),(12,4),(19,4),(14,4),(13,4),(5,4),(10,4),(4,1),(3,1);
/*!40000 ALTER TABLE `property_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_location`
--

DROP TABLE IF EXISTS `property_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_location` (
  `property_loc_id` int NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`property_loc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_location`
--

LOCK TABLES `property_location` WRITE;
/*!40000 ALTER TABLE `property_location` DISABLE KEYS */;
INSERT INTO `property_location` VALUES (1,'Raichur','india',584133,'karnataka','7th cross'),(2,'Banglore','India',560070,'Karnataka','Bannerghatta Road'),(3,'Hyderabad','India',560070,'Karnataka','Outer Ring Road'),(4,'Hyderabad','india',516002,'ts','kkr'),(5,'Hyderabad','India',500001,'Telangana','HITEC City'),(7,'Pune','India',411001,'Maharastra','Viman Nagar'),(8,'Hyderabad','India',560070,'Karnataka','Outer Ring Road'),(9,'Mumbai','India',400080,'Maharastra','Navi Mumbai'),(10,'Pune','India',411001,'Karnataka','Greennock'),(12,'Banglore','India',560070,'Karnataka','Outer Ring Road'),(13,'Hyderabad','India',560070,'Karnataka','Preston '),(14,'Banglore','India',560070,'Karnataka','6th cross'),(15,'Banglore','India',560070,'AndhraPradesh','Vidyapeet circle'),(16,'Banglore','India',560070,'AndhraPradesh','Vidyapeet circle'),(17,'Hyderabad','India',560070,'AndhraPradesh','Vidyapeet circle'),(18,'Banglore','India',560070,'AndhraPradesh','Vidyapeet circle'),(19,'Bangalore','India',560061,'Karnataka','The tropical Gardens');
/*!40000 ALTER TABLE `property_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_order`
--

DROP TABLE IF EXISTS `property_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_order` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `no_units` int DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `order_price` double DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `property_id` int DEFAULT NULL,
  `order_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  KEY `property_id` (`property_id`),
  CONSTRAINT `customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON UPDATE CASCADE,
  CONSTRAINT `FK2xdcf1hqkiyxy5fy5o3uji8n3` FOREIGN KEY (`property_id`) REFERENCES `properties` (`property_id`),
  CONSTRAINT `FKgbyr7kbk17mac789x7m2wcbfe` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `property_id` FOREIGN KEY (`property_id`) REFERENCES `properties` (`property_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_order`
--

LOCK TABLES `property_order` WRITE;
/*!40000 ALTER TABLE `property_order` DISABLE KEYS */;
INSERT INTO `property_order` VALUES (1,7,'2025-02-14 10:14:27',232678.8,4,3,'completed'),(2,7,'2025-02-18 10:14:53',232678.8,4,3,'completed'),(3,7,'2025-03-13 10:18:39',232678.8,4,3,'completed'),(4,9,'2025-03-19 10:33:09',2000000,4,14,'approved'),(5,2,'2025-03-19 16:50:58',15600,4,1,'approved'),(6,5,'2025-04-08 15:47:19',1700000,14,3,'approved'),(7,10,'2025-04-09 11:23:50',78000,14,1,'approved'),(8,10,'2025-04-10 12:04:11',78000,15,1,'approved'),(142,1,'2025-05-28 21:40:54',406250,15,4,'pending'),(143,10,'2025-05-29 14:38:59',3400000,15,3,'pending');
/*!40000 ALTER TABLE `property_order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-14 13:13:12
