-- phpMyAdmin SQL Dump
-- version 2.8.0.1
-- http://www.phpmyadmin.net
-- 
-- Host: custsql-ipg44.eigbox.net
-- Generation Time: Aug 21, 2019 at 12:19 PM
-- Server version: 5.6.41
-- PHP Version: 4.4.9
-- 
-- Database: `shopping`
-- 
DROP DATABASE `shopping`;
CREATE DATABASE `shopping` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `shopping`;

-- --------------------------------------------------------

-- 
-- Table structure for table `checkout`
-- 

DROP TABLE IF EXISTS `checkout`;
CREATE TABLE IF NOT EXISTS `checkout` (
  `chk_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `chk_item` int(11) NOT NULL,
  `chk_qty` int(11) NOT NULL,
  `chk_ref` text NOT NULL,
  `chk_timing` datetime NOT NULL,
  PRIMARY KEY (`chk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 AUTO_INCREMENT=104 ;

-- 
-- Dumping data for table `checkout`
-- 

INSERT INTO `checkout` (`chk_id`, `u_id`, `chk_item`, `chk_qty`, `chk_ref`, `chk_timing`) VALUES (89, 8, 20, 1, '2017-12-19 05:26:58_1883316600', '2017-12-19 05:26:58');
INSERT INTO `checkout` (`chk_id`, `u_id`, `chk_item`, `chk_qty`, `chk_ref`, `chk_timing`) VALUES (103, 3, 23, 1, '2018-05-10 04:37:18_1652462962', '2018-05-10 04:37:18');

-- --------------------------------------------------------

-- 
-- Table structure for table `item_cat`
-- 

DROP TABLE IF EXISTS `item_cat`;
CREATE TABLE IF NOT EXISTS `item_cat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` text NOT NULL,
  `cat_slug` text NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

-- 
-- Dumping data for table `item_cat`
-- 

INSERT INTO `item_cat` (`cat_id`, `cat_name`, `cat_slug`) VALUES (9, 'Watches', 'Watches');
INSERT INTO `item_cat` (`cat_id`, `cat_name`, `cat_slug`) VALUES (10, 'T-Shirts', 'T-Shirts');
INSERT INTO `item_cat` (`cat_id`, `cat_name`, `cat_slug`) VALUES (11, 'Trousers', 'Trousers');

-- --------------------------------------------------------

-- 
-- Table structure for table `items`
-- 

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_cat` int(11) NOT NULL,
  `item_title` text NOT NULL,
  `item_description` text NOT NULL,
  `item_qyt` int(11) NOT NULL,
  `item_cost` int(11) NOT NULL,
  `item_price` int(11) NOT NULL,
  `item_image` text NOT NULL,
  `item_discount` int(11) NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

-- 
-- Dumping data for table `items`
-- 

INSERT INTO `items` (`item_id`, `item_cat`, `item_title`, `item_description`, `item_qyt`, `item_cost`, `item_price`, `item_image`, `item_discount`) VALUES (17, 9, 'Watches Casio', '				<div class="pp-desc-detail">\r\n					<p>This is a very beautiful watch. its purely made on metal.You can buy this watch by click on the buy button.</p>\r\n					<ul>\r\n						<li>It is Beautiful</li>\r\n						<li>Made of Metal</li>\r\n						<li>An orijinal and branded quality</li>\r\n						<li>Free Shipping overall the country</li>\r\n						<li>Pay Securely via <b>CASH ON DELIVERY</b> method</li>\r\n					</ul>\r\n				</div>', 50, 500, 450, 'images/products/product3.jpg', 50);
INSERT INTO `items` (`item_id`, `item_cat`, `item_title`, `item_description`, `item_qyt`, `item_cost`, `item_price`, `item_image`, `item_discount`) VALUES (18, 9, 'watches suunto', '				<div class="pp-desc-detail">\r\n					<p>This is a very beautiful watch. its purely made on metal.You can buy this watch by click on the buy button.</p>\r\n					<ul>\r\n						<li>It is Beautiful</li>\r\n						<li>Made of Metal</li>\r\n						<li>An orijinal and branded quality</li>\r\n						<li>Free Shipping overall the country</li>\r\n						<li>Pay Securely via <b>CASH ON DELIVERY</b> method</li>\r\n					</ul>\r\n				</div>', 120, 680, 700, 'images/products/product4.jpg', 20);
INSERT INTO `items` (`item_id`, `item_cat`, `item_title`, `item_description`, `item_qyt`, `item_cost`, `item_price`, `item_image`, `item_discount`) VALUES (19, 9, 'watches citizen', '				<div class="pp-desc-detail">\r\n					<p>This is a very beautiful watch. its purely made on metal.You can buy this watch by click on the buy button.</p>\r\n					<ul>\r\n						<li>It is Beautiful</li>\r\n						<li>Made of Metal</li>\r\n						<li>An orijinal and branded quality</li>\r\n						<li>Free Shipping overall the country</li>\r\n						<li>Pay Securely via <b>CASH ON DELIVERY</b> method</li>\r\n					</ul>\r\n				</div>', 210, 670, 570, 'images/products/product2.jpg', 100);
INSERT INTO `items` (`item_id`, `item_cat`, `item_title`, `item_description`, `item_qyt`, `item_cost`, `item_price`, `item_image`, `item_discount`) VALUES (20, 10, 'T-Shirts', '				<div class="pp-desc-detail">\r\n					<p>This is a very beautiful shirt. its purely made on cotton.You can buy this shirt by click on the buy button.</p>\r\n					<ul>\r\n						<li>It is Beautiful</li>\r\n						<li>Made of cotton</li>\r\n						<li>An orijinal and branded quality</li>\r\n						<li>Free Shipping overall the country</li>\r\n						<li>Pay Securely via <b>CASH ON DELIVERY</b> method</li>\r\n					</ul>\r\n				</div>', 60, 320, 300, 'images/products/img_men1.jpg', 20);
INSERT INTO `items` (`item_id`, `item_cat`, `item_title`, `item_description`, `item_qyt`, `item_cost`, `item_price`, `item_image`, `item_discount`) VALUES (21, 10, 'T-Shirt Silk', '				<div class="pp-desc-detail">\r\n					<p>This is a very beautiful shirt. its purely made on silk.You can buy this shirt by click on the buy button.</p>\r\n					<ul>\r\n						<li>It is Beautiful</li>\r\n						<li>Made of silk</li>\r\n						<li>An orijinal and branded quality</li>\r\n						<li>Free Shipping overall the country</li>\r\n						<li>Pay Securely via <b>CASH ON DELIVERY</b> method</li>\r\n					</ul>\r\n				</div>', 90, 500, 450, 'images/products/img_men2.jpg', 50);
INSERT INTO `items` (`item_id`, `item_cat`, `item_title`, `item_description`, `item_qyt`, `item_cost`, `item_price`, `item_image`, `item_discount`) VALUES (22, 11, 'Trouser cotton', '				<div class="pp-desc-detail">\r\n					<p>This is a very beautiful trouser. its purely made on cotton.You can buy this trouser by click on the buy button.</p>\r\n					<ul>\r\n						<li>It is Beautiful</li>\r\n						<li>Made of cottob</li>\r\n						<li>An orijinal and branded quality</li>\r\n						<li>Free Shipping overall the country</li>\r\n						<li>Pay Securely via <b>CASH ON DELIVERY</b> method</li>\r\n					</ul>\r\n				</div>', 90, 670, 600, 'images/products/img_men3.jpg', 70);
INSERT INTO `items` (`item_id`, `item_cat`, `item_title`, `item_description`, `item_qyt`, `item_cost`, `item_price`, `item_image`, `item_discount`) VALUES (23, 11, 'Trouser silk', '				<div class="pp-desc-detail">\r\n					<p>This is a very beautiful trouser. its purely made on silk.You can buy this trouser by click on the buy button.</p>\r\n					<ul>\r\n						<li>It is Beautiful</li>\r\n						<li>Made of silk</li>\r\n						<li>An orijinal and branded quality</li>\r\n						<li>Free Shipping overall the country</li>\r\n						<li>Pay Securely via <b>CASH ON DELIVERY</b> method</li>\r\n					</ul>\r\n				</div>', 40, 500, 400, 'images/products/img_men4.jpg', 100);

-- --------------------------------------------------------

-- 
-- Table structure for table `order_info`
-- 

DROP TABLE IF EXISTS `order_info`;
CREATE TABLE IF NOT EXISTS `order_info` (
  `u_id` int(11) NOT NULL,
  `chk_id` int(11) NOT NULL,
  `chk_ref` text NOT NULL,
  `chk_item` int(11) NOT NULL,
  `chk_qty` int(11) NOT NULL,
  `order_date` date NOT NULL,
  PRIMARY KEY (`u_id`,`chk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `order_info`
-- 

INSERT INTO `order_info` (`u_id`, `chk_id`, `chk_ref`, `chk_item`, `chk_qty`, `order_date`) VALUES (3, 72, '2017-12-19 02:28:11_1405780696', 18, 5, '2017-12-19');
INSERT INTO `order_info` (`u_id`, `chk_id`, `chk_ref`, `chk_item`, `chk_qty`, `order_date`) VALUES (3, 73, '2017-12-19 02:28:11_1405780696', 23, 5, '2017-12-19');
INSERT INTO `order_info` (`u_id`, `chk_id`, `chk_ref`, `chk_item`, `chk_qty`, `order_date`) VALUES (3, 74, '2017-12-19 02:28:11_1405780696', 18, 2, '2017-12-19');
INSERT INTO `order_info` (`u_id`, `chk_id`, `chk_ref`, `chk_item`, `chk_qty`, `order_date`) VALUES (3, 75, '2017-12-19 02:28:11_1405780696', 20, 2, '2017-12-19');
INSERT INTO `order_info` (`u_id`, `chk_id`, `chk_ref`, `chk_item`, `chk_qty`, `order_date`) VALUES (3, 76, '2017-12-19 02:28:11_1405780696', 22, 2, '2017-12-19');
INSERT INTO `order_info` (`u_id`, `chk_id`, `chk_ref`, `chk_item`, `chk_qty`, `order_date`) VALUES (3, 77, '2017-12-19 02:56:09_222754954', 19, 1, '2017-12-19');
INSERT INTO `order_info` (`u_id`, `chk_id`, `chk_ref`, `chk_item`, `chk_qty`, `order_date`) VALUES (3, 78, '2017-12-19 03:20:35_458388267', 23, 50, '2017-12-19');
INSERT INTO `order_info` (`u_id`, `chk_id`, `chk_ref`, `chk_item`, `chk_qty`, `order_date`) VALUES (3, 86, '2017-12-19 05:25:07_465059250', 18, 13, '2017-12-19');
INSERT INTO `order_info` (`u_id`, `chk_id`, `chk_ref`, `chk_item`, `chk_qty`, `order_date`) VALUES (3, 87, '2017-12-19 05:25:07_465059250', 17, 20, '2017-12-19');
INSERT INTO `order_info` (`u_id`, `chk_id`, `chk_ref`, `chk_item`, `chk_qty`, `order_date`) VALUES (3, 88, '2017-12-19 05:25:07_465059250', 21, 5, '2017-12-19');
INSERT INTO `order_info` (`u_id`, `chk_id`, `chk_ref`, `chk_item`, `chk_qty`, `order_date`) VALUES (3, 95, '2018-03-24 07:18:13_190523696', 17, 12, '2018-03-24');
INSERT INTO `order_info` (`u_id`, `chk_id`, `chk_ref`, `chk_item`, `chk_qty`, `order_date`) VALUES (3, 96, '2018-03-24 07:18:13_190523696', 23, 4, '2018-03-24');
INSERT INTO `order_info` (`u_id`, `chk_id`, `chk_ref`, `chk_item`, `chk_qty`, `order_date`) VALUES (3, 97, '2018-03-24 07:18:13_190523696', 21, 3, '2018-03-24');
INSERT INTO `order_info` (`u_id`, `chk_id`, `chk_ref`, `chk_item`, `chk_qty`, `order_date`) VALUES (3, 98, '2018-03-24 07:18:13_190523696', 18, 1, '2018-03-24');
INSERT INTO `order_info` (`u_id`, `chk_id`, `chk_ref`, `chk_item`, `chk_qty`, `order_date`) VALUES (3, 99, '2018-05-10 01:58:34_13294181', 19, 3, '2018-05-10');
INSERT INTO `order_info` (`u_id`, `chk_id`, `chk_ref`, `chk_item`, `chk_qty`, `order_date`) VALUES (3, 100, '2018-05-10 01:58:34_13294181', 17, 4, '2018-05-10');
INSERT INTO `order_info` (`u_id`, `chk_id`, `chk_ref`, `chk_item`, `chk_qty`, `order_date`) VALUES (3, 101, '2018-05-10 04:37:18_1652462962', 23, 8, '2018-05-10');
INSERT INTO `order_info` (`u_id`, `chk_id`, `chk_ref`, `chk_item`, `chk_qty`, `order_date`) VALUES (3, 102, '2018-05-10 04:37:18_1652462962', 22, 4, '2018-05-10');
INSERT INTO `order_info` (`u_id`, `chk_id`, `chk_ref`, `chk_item`, `chk_qty`, `order_date`) VALUES (3, 104, '2018-05-11 06:24:26_821069179', 18, 9, '2018-05-11');
INSERT INTO `order_info` (`u_id`, `chk_id`, `chk_ref`, `chk_item`, `chk_qty`, `order_date`) VALUES (6, 79, '2017-12-19 04:40:44_1427069488', 20, 3, '2017-12-19');
INSERT INTO `order_info` (`u_id`, `chk_id`, `chk_ref`, `chk_item`, `chk_qty`, `order_date`) VALUES (6, 80, '2017-12-19 04:40:44_1427069488', 17, 5, '2017-12-19');
INSERT INTO `order_info` (`u_id`, `chk_id`, `chk_ref`, `chk_item`, `chk_qty`, `order_date`) VALUES (6, 81, '2017-12-19 04:40:44_1427069488', 23, 1, '2017-12-19');
INSERT INTO `order_info` (`u_id`, `chk_id`, `chk_ref`, `chk_item`, `chk_qty`, `order_date`) VALUES (6, 82, '2017-12-19 04:50:37_795506508', 17, 6, '2017-12-19');
INSERT INTO `order_info` (`u_id`, `chk_id`, `chk_ref`, `chk_item`, `chk_qty`, `order_date`) VALUES (6, 83, '2017-12-19 04:50:37_795506508', 21, 4, '2017-12-19');
INSERT INTO `order_info` (`u_id`, `chk_id`, `chk_ref`, `chk_item`, `chk_qty`, `order_date`) VALUES (6, 84, '2017-12-19 04:50:37_795506508', 19, 17, '2017-12-19');
INSERT INTO `order_info` (`u_id`, `chk_id`, `chk_ref`, `chk_item`, `chk_qty`, `order_date`) VALUES (6, 85, '2017-12-19 04:50:37_795506508', 21, 5, '2017-12-19');
INSERT INTO `order_info` (`u_id`, `chk_id`, `chk_ref`, `chk_item`, `chk_qty`, `order_date`) VALUES (8, 90, '2017-12-19 05:27:26_2121823268', 18, 86, '2017-12-19');
INSERT INTO `order_info` (`u_id`, `chk_id`, `chk_ref`, `chk_item`, `chk_qty`, `order_date`) VALUES (8, 91, '2017-12-19 05:27:26_2121823268', 17, 21, '2017-12-19');
INSERT INTO `order_info` (`u_id`, `chk_id`, `chk_ref`, `chk_item`, `chk_qty`, `order_date`) VALUES (9, 92, '2017-12-19 05:38:49_1723188417', 17, 8, '2017-12-19');
INSERT INTO `order_info` (`u_id`, `chk_id`, `chk_ref`, `chk_item`, `chk_qty`, `order_date`) VALUES (9, 93, '2017-12-19 05:38:49_1723188417', 21, 9, '2017-12-19');
INSERT INTO `order_info` (`u_id`, `chk_id`, `chk_ref`, `chk_item`, `chk_qty`, `order_date`) VALUES (9, 94, '2017-12-19 05:38:49_1723188417', 23, 1, '2017-12-19');

-- --------------------------------------------------------

-- 
-- Table structure for table `users`
-- 

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_name` text NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `address` text NOT NULL,
  `password` text NOT NULL,
  `contact_number` text NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

-- 
-- Dumping data for table `users`
-- 

INSERT INTO `users` (`u_id`, `login_name`, `name`, `email`, `address`, `password`, `contact_number`, `create_date`) VALUES (3, 'songlun', 'TANG SING LUN', 'cokelight@gmail.com', '', '123456', '66966379', '2017-12-19 23:56:24');
INSERT INTO `users` (`u_id`, `login_name`, `name`, `email`, `address`, `password`, `contact_number`, `create_date`) VALUES (6, 'cokelight', 'Tang Sing Lun', 'cokelight@gmail.com', 'Rm2409 ,Mui Yuen Hse,chuk Yuen\nNorth Estate,Wong Tai Sin', '123456', '66966379', '2017-12-20 00:33:38');
INSERT INTO `users` (`u_id`, `login_name`, `name`, `email`, `address`, `password`, `contact_number`, `create_date`) VALUES (7, 'cokelight@gmail.com', 'Tang Sing Lun', 'cokelight@gmail.com', 'Rm2409 ,Mui Yuen Hse,chuk Yuen\nNorth Estate,Wong Tai Sin', '123456', '66966379', '2017-12-20 00:40:29');
INSERT INTO `users` (`u_id`, `login_name`, `name`, `email`, `address`, `password`, `contact_number`, `create_date`) VALUES (8, 'Tom', 'Chan Tai Man', 'tom@tom.com', 'shatin fo tan', '66966379', '66966379', '2017-12-19 12:26:48');
INSERT INTO `users` (`u_id`, `login_name`, `name`, `email`, `address`, `password`, `contact_number`, `create_date`) VALUES (9, 'singlun', 'Tang Sing Lun', 'cokelight@gmail.com', 'Rm2409 ,Mui Yuen Hse,chuk Yuen\nNorth Estate,Wong Tai Sin', '66966379', '66966379', '2017-12-19 12:38:16');
INSERT INTO `users` (`u_id`, `login_name`, `name`, `email`, `address`, `password`, `contact_number`, `create_date`) VALUES (10, 'songlun', 'User A', 'cokelight@gmail.com', 'Rm2409 ,Mui Yuen Hse,chuk Yuen\nNorth Estate,Wong Tai Sin', '123456', '66966379', '2018-03-24 03:18:03');
