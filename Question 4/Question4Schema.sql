CREATE DATABASE  IF NOT EXISTS `bankdb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bankdb`;
-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: bankdb
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `account` (
  `account_id` int(11) NOT NULL,
  `account_type` varchar(45) NOT NULL,
  `account_creation_date` date NOT NULL,
  `account_balance` decimal(10,0) NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'savings','1999-10-15',5135),(2,'savings','2008-07-22',368514),(3,'savings','2017-04-02',843),(4,'fixed','2019-04-02',51358),(5,'monthly','2019-10-15',546),(6,'savings','2018-11-17',516),(7,'monthly','2019-07-22',6385),(8,'savings','2019-07-22',513),(9,'monthly','2018-04-02',3514),(10,'savings','2019-10-15',35184),(11,'monthly','2018-11-17',351),(12,'savings','2017-10-15',38548),(13,'monthly','2008-05-22',3581),(14,'savings','2019-04-02',3854),(15,'savings','2017-11-17',384),(16,'monthly','2019-10-15',5843),(17,'savings','2017-11-17',35814),(18,'monthly','2018-11-17',844),(19,'savings','2017-04-02',584),(20,'monthly','2017-10-15',843);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `client` (
  `client_id` int(11) NOT NULL,
  `client_name` varchar(45) NOT NULL,
  `client_address` varchar(45) NOT NULL,
  `client_age` int(11) NOT NULL,
  `client_phone_num` varchar(45) NOT NULL,
  `client_email` varchar(45) NOT NULL,
  `client_account` int(11) NOT NULL,
  PRIMARY KEY (`client_id`),
  KEY `fk_client_account_idx` (`client_account`),
  CONSTRAINT `fk_client_account` FOREIGN KEY (`client_account`) REFERENCES `account` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Aditya','9830 Mayfair Court',25,'404-789-6747','Aditya@gmail.com',1),(2,'Alex','5 Wintergreen Avenue ',15,'546-615-5445','Alex@gmail.com',2),(3,'Ben','76 Valley Farms Ave.',85,'354-684-6518','Ben@gmail.com',3),(4,'Mark','9151 North Monroe Ave.',24,'351-651-6516','Mark@gmail.com',4),(5,'Hari','26 Williams St. ',65,'651-651-6541','Hari@gmail.com',5),(6,'Karissa','679 Augusta Lane ',21,'812-183-5615','Karissa@gmail.com',6),(7,'Cameron','152 Strawberry St. ',23,'183-584-1335','Cameron@gmail.com',7),(8,'Daniel','518 Depot Lane ',25,'185-651-3513','Daniel@gmail.com',8),(9,'Zair','988 Annadale Ave. ',28,'266-162-1354','Zair@gmail.com',9),(10,'Rahib','9777 Poor House Rd. ',31,'138-984-3183','Rahib@gmail.com',10),(11,'Tom','2 Hill Field Dr. ',38,'135-483-3874','Tom@gmail.com',11),(12,'Luis','27 Atlantic St. ',30,'123-135-4683','Luis@gmail.com',12),(13,'Jose','7681 Lookout Street ',50,'415-435-3518','Jose@gmail.com',13),(14,'Pedro','9 Ridgewood St. ',61,'115-143-4386','Pedro@gmail.com',14),(15,'Phil','137 Academy Drive',21,'135-796-4684','Phil@gmail.com',15),(16,'Sarah','7359 County Dr. ',22,'468-358-6348','Sarah@gmail.com',16),(17,'Betty','75 Griffin Street ',34,'486-438-6384','Betty@gmail.com',17),(18,'Tina','304 West Pierce Ave. ',25,'346-483-4322','Tina@gmail.com',18),(19,'Patricia','736 Military Court ',75,'153-483-2355','Patricia@gmail.com',19),(20,'Mandy','5 Circle St. ',18,'153-477-4788','Mandy@gmail.com',20);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan`
--

DROP TABLE IF EXISTS `loan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `loan` (
  `loan_id` int(11) NOT NULL,
  `loan_amount` decimal(10,0) NOT NULL,
  `loan_date` date NOT NULL,
  `loan_account` int(11) NOT NULL,
  PRIMARY KEY (`loan_id`),
  KEY `fk_loan_account_idx` (`loan_account`),
  CONSTRAINT `fk_loan_account` FOREIGN KEY (`loan_account`) REFERENCES `account` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan`
--

LOCK TABLES `loan` WRITE;
/*!40000 ALTER TABLE `loan` DISABLE KEYS */;
INSERT INTO `loan` VALUES (1,500,'1999-10-15',5),(2,500,'2018-07-22',7),(3,100,'1999-10-15',10),(4,750,'2017-04-02',6),(5,600,'2019-04-02',11),(6,1000,'2017-04-02',1),(7,1500,'1999-10-15',19),(8,400,'2018-07-22',17),(9,650,'2019-04-02',11),(10,500,'2018-07-22',13),(11,55000,'2019-08-23',5);
/*!40000 ALTER TABLE `loan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL,
  `transaction_type` varchar(45) NOT NULL,
  `transaction_date` varchar(15) NOT NULL,
  `transaction_account` int(11) NOT NULL,
  `transaction_amount` decimal(10,0) NOT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `fk_transaction_account_idx` (`transaction_account`),
  CONSTRAINT `fk_transaction_account` FOREIGN KEY (`transaction_account`) REFERENCES `account` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1,'Deposit','20-Jan-08',1,50000),(2,'Withdraw','20-Jan-08',5,20000),(3,'Deposit','12-Apr-08',6,160000),(4,'Deposit','15-Jun-08',7,250000),(5,'Deposit','1-Mar-08',1,130000),(6,'Withdraw','12-Apr-08',3,458000),(7,'Deposit','31-Jul-08',12,3628000),(8,'Deposit','15-Jun-08',14,154823),(9,'Withdraw','20-Jan-08',5,875642),(10,'Deposit','12-Apr-08',17,852365),(11,'Withdraw','15-Jun-08',19,516457),(12,'Deposit','1-Mar-08',10,152645),(13,'Deposit','12-Apr-08',11,254265),(14,'Withdraw','31-Jul-08',8,652365),(15,'Deposit','15-Jun-08',9,485745),(16,'Deposit','15-Jun-08',10,1238543),(17,'Withdraw','28-Aug-08',11,653513),(18,'Deposit','20-Jan-08',14,20542),(19,'Deposit','21-Dec-08',15,30123),(20,'Withdraw','15-Feb-08',17,62453),(21,'Deposit','28-Aug-08',11,2513546),(22,'Deposit','28-Aug-08',5,95362),(23,'Deposit','28-Aug-08',3,200230),(24,'Withdraw','29-Aug-08',4,12032),(25,'Deposit','15-Jun-08',7,25026),(26,'Deposit','31-Jul-08',7,42135),(27,'Withdraw','28-Aug-08',5,589654),(28,'Deposit','28-Aug-08',8,23654),(29,'Withdraw','28-Aug-08',10,36523),(30,'Withdraw','28-Aug-08',11,752654),(31,'Deposit','31-Jul-08',18,236521),(32,'Withdraw','15-Jun-08',19,32012),(33,'Deposit','29-Aug-08',14,45752),(34,'Deposit','31-Jul-08',16,365420),(35,'Withdraw','15-Jun-08',17,251025),(36,'Deposit','28-Aug-08',11,120325),(37,'Withdraw','28-Aug-08',10,75643),(38,'Withdraw','31-Jul-08',8,62354),(39,'Withdraw','15-Jun-08',4,250125),(40,'Deposit','28-Aug-08',6,45235),(41,'Withdraw','28-Aug-08',10,125324),(42,'Deposit','31-Jul-08',11,25032),(43,'Withdraw','28-Aug-08',17,85650),(44,'Deposit','24-Jun-08',16,2542303),(45,'Withdraw','28-Aug-08',14,1542853),(46,'Deposit','29-Aug-08',10,6584235),(47,'Withdraw','29-Aug-08',9,56235),(48,'Deposit','28-Aug-08',8,254852),(49,'Withdraw','28-Aug-08',9,62357),(50,'Deposit','31-Jul-08',4,85000);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-25 11:38:26
