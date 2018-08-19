/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.6.23-log : Database - soa-trade
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`soa-trade` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `soa-trade`;

/*Table structure for table `trade` */

DROP TABLE IF EXISTS `trade`;

CREATE TABLE `trade` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'IID',
  `order_id` int(10) NOT NULL COMMENT '订单ID',
  `user_id` int(10) NOT NULL COMMENT '用户ID',
  `price` int(10) NOT NULL COMMENT '支付价',
  `pay_status` tinyint(4) NOT NULL COMMENT '1 未付款 2 付款中 3 付款失败 4 付款完成',
  `pay_type` tinyint(4) NOT NULL COMMENT '支付类型:1-支付宝支付，2-网银在线，3-银联，4-微信支付',
  `gateway_pay_num` varchar(30) DEFAULT NULL COMMENT '网关支付流水号',
  `gateway_pay_time` datetime DEFAULT NULL COMMENT '网关支付时间',
  `gateway_pay_price` int(10) NOT NULL DEFAULT '0' COMMENT '网关实际支付金额',
  `deleted` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '删除标志，默认0不删除，1删除',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='交易';

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
