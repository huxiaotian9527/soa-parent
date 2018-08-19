/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.6.23-log : Database - soa-product
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`soa-product` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `soa-product`;

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '产品名称',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '产品状态：0待审，1上架，2下架，3停售，4测试',
  `price` int(10) NOT NULL COMMENT '产品价格 单位分',
  `detail` text COMMENT '产品详情',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '删除标志，默认0不删除，1删除',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='产品信息';

/*Data for the table `product` */

insert  into `product`(`id`,`name`,`status`,`price`,`detail`,`deleted`,`create_time`,`update_time`) values (1,'衣服',1,10000,'衣服真漂亮',0,'2016-02-03 09:08:12','2016-02-03 09:09:06'),(2,'鞋子',1,5000,'鞋子真好看',0,'2016-02-03 09:08:53','2016-02-03 09:08:53');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
