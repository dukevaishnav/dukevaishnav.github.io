/*
SQLyog Enterprise - MySQL GUI v7.02 
MySQL - 5.0.67-community-nt : Database - online_magazine
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`online_magazine` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `online_magazine`;

/*Table structure for table `important_values` */

DROP TABLE IF EXISTS `important_values`;

CREATE TABLE `important_values` (
  `last_saved` varchar(20) default '15',
  `last_index` varchar(20) default '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `important_values` */

insert  into `important_values`(`last_saved`,`last_index`) values ('5','2');

/*Table structure for table `logindetails` */

DROP TABLE IF EXISTS `logindetails`;

CREATE TABLE `logindetails` (
  `first_name` varchar(16) default NULL,
  `last_name` varchar(16) default NULL,
  `mobile_no` varchar(20) NOT NULL,
  `password` varchar(20) default NULL,
  `id` int(4) NOT NULL auto_increment,
  PRIMARY KEY  (`mobile_no`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `logindetails` */

insert  into `logindetails`(`first_name`,`last_name`,`mobile_no`,`password`,`id`) values ('tommy','singh','12345678','tommy',3),('viraj','vaishnav','5556','viraj',4),('dukeee','vaishnav','7073413832','dukesh',2),('duke','vaishnav','9351881545','duke',1),('weoajsoi','owi','nsofo','l',5);

/*Table structure for table `main_page` */

DROP TABLE IF EXISTS `main_page`;

CREATE TABLE `main_page` (
  `important_notice` varchar(700) default NULL,
  `campus_news` varchar(700) default NULL,
  `thought` varchar(800) default NULL,
  `articles` varchar(800) default NULL,
  `other_id` int(3) NOT NULL auto_increment,
  UNIQUE KEY `other_id` (`other_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `main_page` */

insert  into `main_page`(`important_notice`,`campus_news`,`thought`,`articles`,`other_id`) values ('hkhkh','jhfrttyu','quote7.jpg','quote1.jpg',0),('no dues and refund will be given to hostel leaving student\'s','administration planning to reduce the college fees','quote1.jpg','image2.png',1),('All 4th year student\'s requested to collect their record books as soon as possible','infosys expected next month','quote2.jpg','image4.png',2),('compulsory to come in uniform on 28the july 2017','inaugration of IBM testing lab on 26th july 2017','quote5.jpg','image5.png',3),('IIT kharagpur invites for its techfest(details on college notice board)','NBA license of mechanical branch renewed','quote4.jpg','image6.jpg',4),('update your phone no. or address at reception(if it has changed)  ','alumni meet planned on 28th june,this month!!!','quote3.jpeg','image1.png',5),('last date of college fees submission for 3rd year is 27th july 2017','preeti goswami of PCE(ECE) placed at samayak tech. at package of 10 lacs/annum ','quote6.jpg','image3.png',6);

/*Table structure for table `student_details` */

DROP TABLE IF EXISTS `student_details`;

CREATE TABLE `student_details` (
  `student_name` varchar(40) default NULL,
  `mobile_no` varchar(20) NOT NULL,
  `year` varchar(5) default NULL,
  `branch` varchar(20) default NULL,
  `section` varchar(5) default NULL,
  `stars` int(11) default '100',
  PRIMARY KEY  (`mobile_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `student_details` */

insert  into `student_details`(`student_name`,`mobile_no`,`year`,`branch`,`section`,`stars`) values ('sarita bajaj','121200200','1','cs','f',100),('vaibhav sharma','1234234','1','cs','a',2),('anurag bisht','123978930','1','eic','d',100),('varun dubey','228976970','2','cs','c',100),('anupam','2347893234','1','eic','a',0),('ram prasad','2379823488','1','me','f',100),('pallavi sharma','348986099','1','ee','b',100),('vikas choudhary','369863902','1','civ','e',100),('jailalita bishnoi','38594345','1','me','a',100),('piyush sikka','455875757','1','cs','a',100),('amrita arora','589579983','1','it','b',100),('arun malhotra','6493729856','1','civ','d',100),('vipul d. shah','8088368712','1','eic','e',100),('duke vaishnav','88877734343','3','civ','d',8),('aniket singh sisodiya','8970654','1','cs','b',100),('charan tyagi','942076779','1','it','c',100);

/*Table structure for table `usertype_details` */

DROP TABLE IF EXISTS `usertype_details`;

CREATE TABLE `usertype_details` (
  `mobile_no` varchar(20) NOT NULL,
  `usertype` varchar(9) default NULL,
  PRIMARY KEY  (`mobile_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `usertype_details` */

insert  into `usertype_details`(`mobile_no`,`usertype`) values ('12345678','faculty'),('555','admin'),('7073413832','admin'),('8884','faculty'),('9351881545','admin');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
