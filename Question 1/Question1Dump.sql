CREATE DATABASE  IF NOT EXISTS `salesinformationsystem` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `salesinformationsystem`;
-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: salesinformationsystem
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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `clients` (
  `client_ID` int(11) NOT NULL AUTO_INCREMENT,
  `client_name` varchar(45) NOT NULL,
  `client_address` varchar(45) NOT NULL,
  `client_salesmanID` int(11) NOT NULL,
  `client_state` varchar(45) NOT NULL,
  `client_zip` varchar(45) NOT NULL,
  `client_city` varchar(45) NOT NULL,
  `client_balance` decimal(10,2) NOT NULL,
  PRIMARY KEY (`client_ID`),
  KEY `client_salesmanID_idx` (`client_salesmanID`),
  CONSTRAINT `client_salesmanID` FOREIGN KEY (`client_salesmanID`) REFERENCES `salesmen` (`salesman_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (100,'Walmart','1234 Walmart Dr.',1001,'WI','30655','Mumford',0.00),(101,'Old Navy','456 Old Navy St.',1005,'AZ','68164','Little Rock',513.56),(102,'Sears','678 Sears Ln.',1002,'GA','51496','Atlanta',1681.48),(103,'Office Co.','789 Office Cir.',1002,'CA','32196','San Francisco',6.25),(104,'Dunder Mifflin','890 Dunder Pl.',1004,'OR','65841','Tezpur',485.51),(105,'Coca Cola','1324 Coke St.',1001,'GA','54981','Atlanta',846.00);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `product_ID` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(45) NOT NULL,
  `product_manufacture_price` decimal(8,2) NOT NULL,
  `product_manufacturer` varchar(45) NOT NULL,
  `product_description` text,
  `new_price` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`product_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Tape',2.00,'Office Depot','High Quality general office tape.',NULL),(2,'Scissors',5.00,'Office Max','PRecise cutting Scissors',NULL),(3,'Paper',0.25,'Target','5x8.5 white copy paper',NULL),(4,'Staples',0.10,'Office Depot','standard staples for staplet',NULL),(5,'Stapler',3.00,'Office Max','premium quality stapler with 15+ page strength',NULL),(6,'Printer',3000.00,'Xerox','Standard max volume Xerox printer',NULL),(7,'CD Player',400.00,'Sony','Standard HDD1034 and DVDRW technology',NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sales` (
  `sale_ID` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `sale_order_date` datetime NOT NULL,
  `sales_clientID` int(10) NOT NULL,
  `sales_productID` int(11) NOT NULL,
  `sales_quantity` int(11) NOT NULL,
  `sales_new_product_rate` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`sale_ID`),
  KEY `sales_clientID_idx` (`sales_clientID`),
  KEY `sales_productID_idx` (`sales_productID`),
  CONSTRAINT `sales_clientID` FOREIGN KEY (`sales_clientID`) REFERENCES `clients` (`client_id`),
  CONSTRAINT `sales_productID` FOREIGN KEY (`sales_productID`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (0000000001,'2019-07-12 00:00:00',100,1,20,0),(0000000002,'2018-05-22 00:00:00',102,2,415,0),(0000000003,'2018-05-11 00:00:00',105,4,21,0),(0000000004,'2019-08-20 00:00:00',103,5,51,0),(0000000005,'2019-08-19 00:00:00',103,1,54,0),(0000000006,'2019-08-18 00:00:00',103,2,68,0),(0000000007,'2019-08-17 00:00:00',102,4,18,0),(0000000009,'2019-08-15 00:00:00',100,1,46,0),(0000000010,'2019-08-14 00:00:00',105,2,64,0),(0000000011,'2019-08-13 00:00:00',104,1,15,0),(0000000012,'2019-08-12 00:00:00',104,5,10,0),(0000000013,'2019-08-11 00:00:00',102,2,20,0),(0000000014,'2019-08-10 00:00:00',103,3,30,0),(0000000015,'2019-08-09 00:00:00',105,1,45,0),(0000000016,'2019-08-08 00:00:00',102,5,56,0),(0000000017,'2019-08-07 00:00:00',103,4,54,0),(0000000018,'2019-08-06 00:00:00',104,4,545,0),(0000000019,'2019-08-05 00:00:00',103,2,132,0),(0000000020,'2019-08-04 00:00:00',102,1,1,0);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesmen`
--

DROP TABLE IF EXISTS `salesmen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `salesmen` (
  `salesman_ID` int(11) NOT NULL AUTO_INCREMENT,
  `salesman_name` varchar(30) NOT NULL,
  `salesman_address` varchar(45) DEFAULT NULL,
  `salesman_city` varchar(45) DEFAULT NULL,
  `salesman_pin_code` varchar(45) DEFAULT NULL,
  `salesman_state` varchar(45) DEFAULT NULL,
  `salesman_salary` decimal(8,2) DEFAULT NULL,
  `salesman_order_quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`salesman_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1006 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesmen`
--

LOCK TABLES `salesmen` WRITE;
/*!40000 ALTER TABLE `salesmen` DISABLE KEYS */;
INSERT INTO `salesmen` VALUES (1001,'Dwight','Dwight Ln.','Atlanta','30035','GA',60000.00,NULL),(1002,'Pam','Pam Dr.','New York','31250','NY',75000.00,NULL),(1003,'Jim','Pam Dr.','New York','38462','NY',75000.00,NULL),(1004,'Teddy','Teddy Rd.','Los Angeles','22028','CA',55000.00,NULL),(1005,'Kevin','Kevin St.','Miami','38951','FL',60000.00,NULL);
/*!40000 ALTER TABLE `salesmen` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-26  1:14:24
