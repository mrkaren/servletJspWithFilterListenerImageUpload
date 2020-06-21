/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 5.6.45-log : Database - todo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`todo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin */;

/*Table structure for table `todo` */

CREATE TABLE `todo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `deadline` datetime DEFAULT NULL,
  `status` enum('TODO','IN_PROGRESS','FINISHED') COLLATE utf8mb4_bin NOT NULL DEFAULT 'TODO',
  `user_id` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `todo_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

/*Data for the table `todo` */

insert  into `todo`(`id`,`title`,`deadline`,`status`,`user_id`,`created_date`) values 
(1,'todo1','2020-06-11 15:03:01','IN_PROGRESS',1,'2020-06-10 15:03:15'),
(3,'asdf','2020-06-11 00:00:00','TODO',1,'2020-06-10 15:17:57'),
(4,'xcvb','2020-06-20 00:00:00','TODO',1,'2020-06-10 15:18:05'),
(5,'xcvbxcvb','2020-06-26 00:00:00','TODO',1,'2020-06-10 15:18:40'),
(6,'zxcv','2020-06-11 00:00:00','TODO',1,'2020-06-10 15:19:36'),
(7,'anham ban','2020-06-20 00:00:00','TODO',1,'2020-06-20 21:34:51');

/*Table structure for table `user` */

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `picture_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`surname`,`email`,`password`,`picture_url`) values 
(1,'asdf','asdf','asdf','asdf',NULL),
(8,'qwer','qwer','qwer','qwer','1592680295982avatar.png');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
