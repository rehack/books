/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.5.53 : Database - zsl_books
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zsl_books` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zsl_books`;

/*Table structure for table `zsl_customer_debts` */

DROP TABLE IF EXISTS `zsl_customer_debts`;

CREATE TABLE `zsl_customer_debts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT '欠款人id',
  `goods_id` int(10) unsigned NOT NULL COMMENT '货物id',
  `debts_money` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '欠款金额',
  `payback_money` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '还款金额',
  `happen_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '交易时间',
  `comment` varchar(250) DEFAULT NULL COMMENT '备注',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `zsl_customer_debts` */

insert  into `zsl_customer_debts`(`id`,`cid`,`goods_id`,`debts_money`,`payback_money`,`happen_time`,`comment`,`create_time`,`update_time`) values (1,1,2,'600.00','0.00',1530806400,'w',1530862461,1530862461),(2,1,0,'0.00','100.00',1530892800,'3',1530862500,1530862500);

/*Table structure for table `zsl_customer_info` */

DROP TABLE IF EXISTS `zsl_customer_info`;

CREATE TABLE `zsl_customer_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL COMMENT '姓名',
  `phone` varchar(11) NOT NULL COMMENT '电话',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `zsl_customer_info` */

insert  into `zsl_customer_info`(`id`,`name`,`phone`,`create_time`,`update_time`) values (1,'aa','',1530862461,1530862461);

/*Table structure for table `zsl_goods` */

DROP TABLE IF EXISTS `zsl_goods`;

CREATE TABLE `zsl_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(50) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `zsl_goods` */

insert  into `zsl_goods`(`id`,`goods_name`,`create_time`,`update_time`) values (1,'A',1530699478,1530699478),(2,'B',1530699483,1530699483),(3,'C',1530782166,1530782166);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;