/*
SQLyog Community Edition- MySQL GUI v7.01 
MySQL - 5.5.5-10.4.28-MariaDB : Database - auto_asg_construction
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`auto_asg_construction` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `auto_asg_construction`;

/*Table structure for table `addproperty` */

DROP TABLE IF EXISTS `addproperty`;

CREATE TABLE `addproperty` (
  `property_id` int(100) NOT NULL AUTO_INCREMENT,
  `property_image` varchar(100) NOT NULL,
  `property_name` varchar(100) NOT NULL,
  `property_address` varchar(100) NOT NULL,
  `property_area` varchar(100) NOT NULL,
  `materials` varchar(100) NOT NULL,
  `maaterial_address` varchar(100) NOT NULL,
  `prise` varchar(100) NOT NULL,
  `property_document` varchar(100) NOT NULL,
  `property_add_lat` varchar(100) NOT NULL,
  `property_add_long` varchar(100) NOT NULL,
  `material_add_lat` varchar(100) NOT NULL,
  `material_add_long` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `ownername` varchar(100) NOT NULL,
  `owner_mob_no` varchar(100) NOT NULL,
  UNIQUE KEY `property_id` (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `addproperty` */

insert  into `addproperty`(`property_id`,`property_image`,`property_name`,`property_address`,`property_area`,`materials`,`maaterial_address`,`prise`,`property_document`,`property_add_lat`,`property_add_long`,`material_add_lat`,`material_add_long`,`status`,`ownername`,`owner_mob_no`) values (11,'static/propertyimage/property-1.jpg','shantivan','delhi','123*34 sq ft','steel ,alloy','delhi','1','static/propertydocument/WAD_PRACTICAL_NO.3.pdf','28.6273928','77.1716954','28.6273928','77.1716954','Under Verification','gaurav','8805533056'),(12,'static/propertyimage/property-2.jpg','Kalptaru','nashik','100*3000 sq ft','ciment,alumium,loha ','nashik','1','static/propertydocument/BALL_BEARING.pdf','20.0112475','73.7902364','20.0112475','73.7902364','Under Verification','gaurav','8805533056'),(13,'static/propertyimage/property-6.jpg','wadhwa','pune','200*300 sq ft','steel,alloy,aluminium,ciement','pune','1','static/propertydocument/ANGULAR.pdf','18.521428','73.8544541','18.521428','73.8544541','Under Verification','sahil','7208532799'),(14,'static/propertyimage/property-2.jpg','anandvan','agra','2333 sq ft','steel,alloy','agra','10000','static/propertydocument/WAD_PRACTICAL_NO.3.pdf','27.1752554','78.0098161','27.1752554','78.0098161','Under Verification','sahil','7208532799');

/*Table structure for table `adminregister` */

DROP TABLE IF EXISTS `adminregister`;

CREATE TABLE `adminregister` (
  `admin_id` int(100) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_address` varchar(100) NOT NULL,
  `admin_mobno` varchar(100) NOT NULL,
  `admin_password` varchar(100) NOT NULL,
  `admin_cpassword` varchar(100) NOT NULL,
  UNIQUE KEY `admin_id` (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `adminregister` */

insert  into `adminregister`(`admin_id`,`admin_name`,`admin_email`,`admin_address`,`admin_mobno`,`admin_password`,`admin_cpassword`) values (3,'admin','admin@gmail.com','sanpada','3444444444','admin','admin'),(4,'tanvi','tanvi@gmail.com','www','234444444','ww','ee'),(5,'we','salvikishori96@gmail.com','B-21, Room No -9 , Ganesh Krupa Society , Sanpada','+919372914050','er','re');

/*Table structure for table `builderregister` */

DROP TABLE IF EXISTS `builderregister`;

CREATE TABLE `builderregister` (
  `builder_id` int(100) NOT NULL AUTO_INCREMENT,
  `builder_name` varchar(100) NOT NULL,
  `builder_email` varchar(100) NOT NULL,
  `builder_address` varchar(100) NOT NULL,
  `builder_mobno` varchar(100) NOT NULL,
  `builder_password` varchar(100) NOT NULL,
  `builder_cpassword` varchar(100) NOT NULL,
  UNIQUE KEY `builder_id` (`builder_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `builderregister` */

insert  into `builderregister`(`builder_id`,`builder_name`,`builder_email`,`builder_address`,`builder_mobno`,`builder_password`,`builder_cpassword`) values (8,'pranav','salvikishori96@gmail.com','kurla','9819203032','pranav','pranav'),(9,'kishori','salvikishori96@gmail.com','dadar','9372914050','kishori','kishori');

/*Table structure for table `paymentfrombuilder` */

DROP TABLE IF EXISTS `paymentfrombuilder`;

CREATE TABLE `paymentfrombuilder` (
  `propertyname` varchar(100) NOT NULL,
  `propertyaddress` varchar(100) NOT NULL,
  `propertyprice` varchar(100) NOT NULL,
  `ownernuber` varchar(100) NOT NULL,
  `buildernumber` varchar(100) NOT NULL,
  `messages` varchar(100) NOT NULL,
  `finalstatus` varchar(100) NOT NULL,
  `transactionid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `paymentfrombuilder` */

insert  into `paymentfrombuilder`(`propertyname`,`propertyaddress`,`propertyprice`,`ownernuber`,`buildernumber`,`messages`,`finalstatus`,`transactionid`) values ('shantivan','delhi','1','8805533056','9819203032','this property is legal Now you can buy','property buy from builder','txn_3OqU8q2eZvKYlo2C0PNE1mZb'),('Kalptaru','nashik','1','8805533056','9372914050','this property is legal Now you can buy','property buy from builder','txn_3OqUEs2eZvKYlo2C09zJ7Q53'),('anandvan','agra','10000','7208532799','9819203032','this property is legal Now you can buy','property buy from builder','txn_3OrbLo2eZvKYlo2C1TiMs2gK');

/*Table structure for table `propertystatusbyadmin` */

DROP TABLE IF EXISTS `propertystatusbyadmin`;

CREATE TABLE `propertystatusbyadmin` (
  `propertyname` varchar(100) NOT NULL,
  `propertyadd` varchar(100) NOT NULL,
  `propertyprice` varchar(100) NOT NULL,
  `ownernumber` varchar(100) NOT NULL,
  `buildernumber` varchar(100) NOT NULL,
  `propertydocument` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `propertystatusbyadmin` */

insert  into `propertystatusbyadmin`(`propertyname`,`propertyadd`,`propertyprice`,`ownernumber`,`buildernumber`,`propertydocument`,`message`) values ('wadhwa','pune','1','7208532799','9372914050','static/propertydocument/ANGULAR.pdf','this property is illegal  you can not buy');

/*Table structure for table `userregister` */

DROP TABLE IF EXISTS `userregister`;

CREATE TABLE `userregister` (
  `user_id` int(100) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_address` varchar(100) NOT NULL,
  `user_mobno` varchar(100) NOT NULL,
  `user_pass` varchar(100) NOT NULL,
  `user_cpass` varchar(100) NOT NULL,
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `userregister` */

insert  into `userregister`(`user_id`,`user_name`,`user_email`,`user_address`,`user_mobno`,`user_pass`,`user_cpass`) values (3,'viha','viha@gmail.com','nagpur','234545454','viha','viha');

/*Table structure for table `vendorregister` */

DROP TABLE IF EXISTS `vendorregister`;

CREATE TABLE `vendorregister` (
  `vendor_id` int(100) NOT NULL AUTO_INCREMENT,
  `vendor_name` varchar(100) NOT NULL,
  `vendor_email` varchar(100) NOT NULL,
  `vendor_address` varchar(100) NOT NULL,
  `vendor_mobnoo` varchar(100) NOT NULL,
  `vendor_password` varchar(100) NOT NULL,
  `vendor_cpassword` varchar(100) NOT NULL,
  UNIQUE KEY `vendor_id` (`vendor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `vendorregister` */

insert  into `vendorregister`(`vendor_id`,`vendor_name`,`vendor_email`,`vendor_address`,`vendor_mobnoo`,`vendor_password`,`vendor_cpassword`) values (9,'gaurav','patilgaurav1918@gmail.com','thane','8805533056','gaurav','gaurav'),(10,'sahil','salvikishori96@gmail.com','vashi','7208532799','sahil','sahil');

/*Table structure for table `verifypropforadmin` */

DROP TABLE IF EXISTS `verifypropforadmin`;

CREATE TABLE `verifypropforadmin` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `property_image` varchar(100) NOT NULL,
  `property_name` varchar(100) NOT NULL,
  `property_address` varchar(100) NOT NULL,
  `property_area` varchar(100) NOT NULL,
  `materials` varchar(100) NOT NULL,
  `prise` varchar(100) NOT NULL,
  `property_document` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `ownername` varchar(100) NOT NULL,
  `owner_mob_no` varchar(100) NOT NULL,
  `builder_name` varchar(100) NOT NULL,
  `builder_mob_no` varchar(100) NOT NULL,
  `builder_email` varchar(100) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `verifypropforadmin` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
