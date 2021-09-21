/*
SQLyog Community Edition- MySQL GUI v8.04 
MySQL - 5.0.37-community-nt : Database - sparks
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`sparks` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `sparks`;

/*Table structure for table `customers` */

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `Name` varchar(30) default NULL,
  `Email_ID` varchar(50) default NULL,
  `Current_Balance` decimal(10,0) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `customers` */

insert  into `customers`(`Name`,`Email_ID`,`Current_Balance`) values ('Dheeraj','dheeraj@gmail.com','96000'),('Demo User 01','demouser01@gmail.com','15101'),('Demo User 02','demouser02@gmail.com','12000'),('Demo User 03','demouser03@gmail.com','11000'),('Demo User 04','demouser04@gmail.com','10000'),('Demo User 05','demo05@gmail.com','9000'),('New User','newuser@gmail.com','5000');

/*Table structure for table `transactions` */

DROP TABLE IF EXISTS `transactions`;

CREATE TABLE `transactions` (
  `Sender's acc.` varchar(50) default NULL,
  `Receiver's acc.` varchar(50) default NULL,
  `Amount` int(11) default NULL,
  `Date` date default NULL,
  `Time` time default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `transactions` */

insert  into `transactions`(`Sender's acc.`,`Receiver's acc.`,`Amount`,`Date`,`Time`) values ('dheeraj@gmail.com','demo05@gmail.com',4000,'2021-09-20','00:24:00'),('dheeraj@gmail.com','demouser01@gmail.com',101,'2021-09-20','01:02:44'),('dheeraj@gmail.com','newuser@gmail.com',4000,'2021-09-20','23:14:34');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
