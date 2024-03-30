-- MySQL dump 10.13  Distrib 5.7.26, for Win64 (x86_64)
--
-- Host: localhost    Database: xiaomiMall
-- ------------------------------------------------------
-- Server version	5.7.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `area` text NOT NULL,
  `name` text NOT NULL,
  `deatailad` varchar(255) NOT NULL,
  `phoneprefix` smallint(255) NOT NULL,
  `phone` text NOT NULL,
  `tag` text NOT NULL,
  `defaultad` smallint(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,3,'福建省 厦门市 思明区','王五','湖滨西路9号大西洋海景城',86,'166****3872','',1),(2,5,'河南省 信阳市 浉河区','孙七','信阳市长安路666号信阳师范学院 ',83,'156****5297','公司',1),(3,1,'四川省 成都市 武侯区','张三','武侯区髙升桥路16号新世纪装饰广场',852,'188****9666','',0),(4,1,'贵州省 安顺市 平坝区','张三1','贵发小区公共服务站自家驿站签收邮政韵达极兔申通圆通',86,'177****0058','家',1),(5,2,'广东省 汕尾市 海丰县','李四','海城镇新园66号佳园小区',86,'185****6945','公司',0),(6,2,'河北省 邢台市 柏乡县','李四1','王家庄乡路口馒头房对面名字电话随便',853,'159****6633','',1),(7,2,'江西省 上饶市 广丰区','李四2','丰溪街道南屏路水南超市后面快递站',86,'134****1514','',0),(10,4,'河南省 信阳市 浉河区','赵六','信阳市长安路666号信阳师范学院 ',82,'187****7925','家',0);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `userid` int(255) NOT NULL,
  `productid` int(255) NOT NULL,
  `args` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `count` int(255) NOT NULL,
  `ttprice` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` text,
  `arguments` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'手机','CPU型号,运行内存,机身内存,充电功率'),(2,'热门家电','商品产地,容量,适用人数,功能'),(3,'电视影音','商品产地,屏幕尺寸,分辨率,刷屏率'),(4,'保护套','工艺,材质,风格,款式'),(5,'充电器','商品产地,接口数,快充协议,主流功率');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorites` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `userid` int(255) NOT NULL,
  `productid` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (1,5,33),(2,6,22),(3,3,54),(4,6,66),(5,2,60),(6,1,23),(7,2,36),(8,1,33);
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(255) NOT NULL,
  `userid` int(255) NOT NULL,
  `productid` int(255) NOT NULL,
  `addressid` int(255) NOT NULL,
  `args` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `count` int(255) NOT NULL,
  `ttprice` float NOT NULL,
  `delivery` text NOT NULL,
  `remark` varchar(255) NOT NULL,
  `createtime` varchar(255) NOT NULL,
  `status` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'202309071455lisiphone2023083106',2,7,5,'星空黑,8GB+256GB,官方标配',5999.99,2,12000,'快递配送','放快递驿站放快递驿站放快递驿站放快递驿站放快递驿站放快递驿站','202309071455',0),(2,'202309071502zhangsanhotapp2023090523',1,24,4,'星空黑,8GB+256GB,6期免息',666.66,5,3333.3,'快递配送','周日配送周日配送周日配送周日配送周日配送周日配送周日配送周日配送周日配送周日配送周日配送','202309071502',2),(3,'202309071507sunqiphone2023083110',5,11,2,'清风紫,8GB+256GB,官方标配',2098,1,2098,'到店自取','','202309071507',1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `oprice` float DEFAULT NULL,
  `price` float DEFAULT NULL,
  `image` text,
  `category` char(255) DEFAULT NULL,
  `banner` varchar(255) NOT NULL,
  `brand` text NOT NULL,
  `idnumber` varchar(255) NOT NULL,
  `detailsarg` varchar(255) NOT NULL,
  `argsname` varchar(11) NOT NULL,
  `argsvalue` varchar(255) NOT NULL,
  `argsassemblyvalue` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2,'Redmi K60至尊版手机官方旗舰店红米k60至尊版官网正品红米k60ultra小米k60新品上市',2999.99,2699.99,'static/uploads/products/20230831/pro1.jpg','手机','static/uploads/products/20230831/pro1.jpg','小米','phone2023083101','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(3,'Redmi K60手机红米k60E红米小米手机小米官方旗舰店官网redmik60骁龙8+游戏至尊版新NFC',2988.88,2388.88,'static/uploads/products/20230831/pro2.jpg','手机','static/uploads/products/20230831/pro2.jpg','小米','phone2023083102','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(4,'Redmi红米Note12 Turbo手机note12turbo小米官方旗舰店5G新款官网正品哈利波特',1999.99,1799.99,'static/uploads/products/20230831/pro3.jpg','手机','static/uploads/products/20230831/pro3.jpg','小米','phone2023083103','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(5,'Xiaomi Civi 3新品手机小米Civi3官方旗舰店官网正品新款拍照智能小米Civi系列',2699.88,2499.88,'static/uploads/products/20230831/pro4.jpg','手机','static/uploads/products/20230831/pro4.jpg','小米','phone2023083104','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(6,'小米11青春版 5G手机轻薄小米官方旗舰店官网同款10正品全网通红米K40 XIAOMI分期',2039,2029,'static/uploads/products/20230831/pro5.jpg','手机','static/uploads/products/20230831/pro5.jpg','小米','phone2023083105','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(7,'Redmi K50 天玑8100 2K屏幕智能游戏5g红米手机小米k50红米k50新品红米40',2059.99,2029.99,'static/uploads/products/20230831/pro6.jpg','手机','static/uploads/products/20230831/pro6.jpg','小米','phone2023083106','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(8,'小米10青春版5G手机50倍潜望式变焦小米官方旗舰店小米手机xiaomi小米10青春',2399.99,2299.99,'static/uploads/products/20230831/pro7.jpg','手机','static/uploads/products/20230831/pro7.jpg','小米','phone2023083107','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(9,'MIUI/小米 10全网通现货5G手机官方正品旗舰至尊版新品10S ',3199,3099,'static/uploads/products/20230831/pro8.jpg','手机','static/uploads/products/20230831/pro8.jpg','小米','phone2023083108','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(10,'Xiaomi/小米Civi 2 手机小米官方旗舰店智能游戏拍照徕卡小米civi2官网正品5g',2399,2199,'static/uploads/products/20230831/pro9.jpg','手机','static/uploads/products/20230831/pro9.jpg','小米','phone2023083109','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(11,'官网正品MIUI/小米12turbo 16+1024GB全网通5G旗舰手机智能官方专卖店红米note12turbo',2198,2098,'static/uploads/products/20230831/pro10.jpg','手机','static/uploads/products/20230831/pro10.jpg','小米','phone2023083110','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(12,'MIUI/小米 Xiaomi 12X 新5G手机12官方旗舰店官网正品骁龙870',2758.88,2588.88,'static/uploads/products/20230831/pro11.jpg','手机','static/uploads/products/20230831/pro11.jpg','小米','phone2023083111','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(13,'MIUI/小米 11 Ultra至尊版5G曲面屏骁龙888拍照手机11pro促销',2628,2588,'static/uploads/products/20230831/pro12.jpg','手机','static/uploads/products/20230831/pro12.jpg','小米','phone2023083112','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(14,'红米K40S 骁龙870芯片官方旗舰店Redmi K40S拍照游戏电竞全新正品官网新款小米智能手机',2199.99,1999.99,'static/uploads/products/20230831/pro13.jpg','手机','static/uploads/products/20230831/pro13.jpg','小米','phone2023083113','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(15,'小米/红米Redmi Note12 Pro极速版新品手机骁龙778G旗舰小米官方旗舰店官网官方正品智能',1999.88,1879.88,'static/uploads/products/20230831/pro14.jpg','手机','static/uploads/products/20230831/pro14.jpg','小米','phone2023083114','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(16,'Note 9 pro红米本安防爆智能手机化工厂石油库天然气工业医药专用5G全网通工业巡检加油站石油支持NFC小米',2099.99,1999.99,'static/uploads/products/20230831/pro15.jpg','手机','static/uploads/products/20230831/pro15.jpg','小米','phone2023083115','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(17,'MIUI/小米 Xiaomi 12 Pro骁龙8Gen1正品小米12S Ultra 5G手机12X ',3959.88,3859.88,'static/uploads/products/20230831/pro16.jpg','手机','static/uploads/products/20230831/pro16.jpg','小米','phone2023083116','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(18,'红米 Redmi K40 Pro 骁龙888屏智能游戏拍照学生5g手机小米官方旗舰红米k40pro小米',2099.99,1999.99,'static/uploads/products/20230831/pro17.jpg','手机','static/uploads/products/20230831/pro17.jpg','小米','phone2023083117','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(19,'Xiaomi Civi2小米civi2手机游戏拍照红米官方旗舰店官网正品情人节好礼 2067',2149.88,2049.88,'static/uploads/products/20230831/pro18.jpg','手机','static/uploads/products/20230831/pro18.jpg','小米','phone2023083118','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(20,'【全新未拆封未激活 官方质保一年】Redmi/红米 K30Pro 5G骁龙865变焦版液冷散热游戏智能手机经典升降式镜头',2599.88,2579.88,'static/uploads/products/20230831/pro19.jpg','手机','static/uploads/products/20230831/pro19.jpg','小米','phone2023083119','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(21,'MIUI/小米 Xiaomi 13 5G手机全网通官方正品 13 Pro 新款直屏2K屏 ',2918,2818,'static/uploads/products/20230831/pro20.jpg','手机','static/uploads/products/20230831/pro20.jpg','小米','phone2023083120','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(22,'3L米家电饭煲C1 蒸煮一机多用 24小时智能预约 电饭煲',151.99,145.99,'static/uploads/products/20230905/pro21.png','热门家电','static/uploads/products/20230905/pro21.png','小米','phone2023083121','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(23,'米家智能IH电饭煲3L 多功能大容量电磁加热智能预约电饭锅',499,349,'static/uploads/products/20230905/pro22.jpg','热门家电','static/uploads/products/20230905/pro22.jpg','小米','hotapp2023090522','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(24,'米家电饭煲C1 4L 蒸煮一机多用 24小时智能预约 电饭煲',199.99,169.99,'static/uploads/products/20230905/pro23.jpg','热门家电','static/uploads/products/20230905/pro23.jpg','小米','hotapp2023090523','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(25,'米家智能IH电饭煲4L 多功能大容量电磁加热智能预约电饭锅',599.88,439.88,'static/uploads/products/20230905/pro24.jpg','热门家电','static/uploads/products/20230905/pro24.jpg','小米','hotapp2023090524','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(26,'客厅吊灯2023年新款现代简约大气主灯米家智能设计师卧室流行灯具',219.99,199.99,'static/uploads/products/20230905/pro25.jpg','热门家电','static/uploads/products/20230905/pro25.jpg','小米','hotapp2023090525','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(27,'米家智能客厅灯现代简约大气2023年新款轻奢卧室吸顶灯具全屋套餐',33.88,29.88,'static/uploads/products/20230905/pro26.jpg','热门家电','static/uploads/products/20230905/pro26.jpg','小米','hotapp2023090526','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(28,'米家智能护眼led客厅灯吸顶灯现代简约卧室餐厅全屋灯具套餐',128,57,'static/uploads/products/20230905/pro27.jpg','热门家电','static/uploads/products/20230905/pro27.jpg','小米','hotapp2023090527','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(29,'客厅吊灯2023年新款现代简约大气主灯米家智能设计师卧室流行灯具',1488.88,709.88,'static/uploads/products/20230905/pro28.jpg','热门家电','static/uploads/products/20230905/pro28.jpg','小米','hotapp2023090528','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(30,'小米家用燃气灶S1天然气灶液化气双用大火力4.5kw灶台式家用炉具',1199.99,999.99,'static/uploads/products/20230905/pro29.jpg','热门家电','static/uploads/products/20230905/pro29.jpg','小米','hotapp2023090529','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(31,'小米洗衣机全自动滚筒直驱变频洗烘一体机空气洗家用钛金灰10公斤',2199.88,1199.88,'static/uploads/products/20230905/pro30.jpg','热门家电','static/uploads/products/20230905/pro30.jpg','小米','hotapp2023090530','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(32,'43英寸电视金属全面屏双频wifi大存储智能教育电视机',1599.99,1099.99,'static/uploads/products/20230905/pro31.jpg','电视影音','static/uploads/products/20230905/pro31.jpg','小米','hotapp2023090531','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(33,'58英寸液晶电视4K超高清EA58金属全面屏远场语音控制',1899.88,1799.88,'static/uploads/products/20230905/pro32.jpg','电视影音','static/uploads/products/20230905/pro32.jpg','小米','tv2023090532','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(34,'43英寸小米电视家用金属全面屏双频wifi智能平板教育电视机EA',1099,989,'static/uploads/products/20230905/pro33.jpg','电视影音','static/uploads/products/20230905/pro33.jpg','小米','tv2023090533','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(35,'Redmi 电视70英寸金属全面屏4k超高清四核处理器丰富色彩立体声',2699.99,2549.99,'static/uploads/products/20230905/pro34.jpg','电视影音','static/uploads/products/20230905/pro34.jpg','小米','tv2023090534','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(36,'电视Apro43英寸4K金属全面屏远场语音43英寸护眼液晶平板',1599.88,1399.88,'static/uploads/products/20230905/pro35.jpg','电视影音','static/uploads/products/20230905/pro35.jpg','小米','tv2023090535','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(37,'【性价比】Redmi电视机家用液晶32/43/50/55/65/70/75英寸全面屏',1899.99,1599.99,'static/uploads/products/20230905/pro36.jpg','电视影音','static/uploads/products/20230905/pro36.jpg','小米','tv2023090536','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(38,'电视RedmiX86超大屏86寸MEMC运动补偿金属全面屏智能游戏电视',5299.98,5199.98,'static/uploads/products/20230905/pro37.jpg','电视影音','static/uploads/products/20230905/pro37.jpg','小米','tv2023090537','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(39,'50英寸金属全面屏4K超高清智能互联平板电视机ES50',2599.98,2499.98,'static/uploads/products/20230905/pro38.jpg','电视影音','static/uploads/products/20230905/pro38.jpg','小米','tv2023090538','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(40,'MAX86英寸超大巨幕4K超高清HDR内置小爱运动补偿Redmi',6699.99,5999.99,'static/uploads/products/20230905/pro39.jpg','电视影音','static/uploads/products/20230905/pro39.jpg','小米','tv2023090539','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(41,'70英寸金属全面屏远场语音4K超高清液晶智能教育电视机四核处理器',2899.98,2699.98,'static/uploads/products/20230905/pro40.jpg','电视影音','static/uploads/products/20230905/pro40.jpg','小米','tv2023090540','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(61,'适用于小米Civi3手机壳摩纹内置磁吸磨砂新款全包防摔保护套男',37.24,32.24,'static/uploads/products/20230905/pro50.jpg','保护套','static/uploads/products/20230905/pro60.jpg','小米','protect2023090560','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(60,'小米8se手机壳小米8lite探索版保护套青春版防摔屏幕指纹全包软壳',55,14.5,'static/uploads/products/20230905/pro49.jpg','保护套','static/uploads/products/20230905/pro59.jpg','小米','protect2023090559','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(59,'小米MIXFold手机壳5G折叠屏电镀玻璃彩绘防摔硬壳轻奢时尚保护套',118,103,'static/uploads/products/20230905/pro48.jpg','保护套','static/uploads/products/20230905/pro58.jpg','小米','protect2023090558','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(58,'小米12/11/11pro/10/9se手机壳CIVI硅胶套软小米12pro保护套mix4',49,19.9,'static/uploads/products/20230905/pro47.jpg','保护套','static/uploads/products/20230905/pro57.jpg','小米','protect2023090557','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(57,'小米红米K60Pro手机壳红米K50Pro/K40Pro镜头全包防摔保护套',58,18.5,'static/uploads/products/20230905/pro46.jpg','保护套','static/uploads/products/20230905/pro56.jpg','小米','protect2023090556','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(56,'小米红米note9pro/note10pro手机壳液态直边保护套防摔',50,14.5,'static/uploads/products/20230905/pro45.jpg','保护套','static/uploads/products/20230905/pro55.jpg','小米','protect2023090555','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(55,'适用于小米civi3手机壳创意电镀枫叶全包防摔软硅胶保护套带挂绳',31.36,26.36,'static/uploads/products/20230905/pro44.jpg','保护套','static/uploads/products/20230905/pro54.jpg','小米','protect2023090554','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(54,'小米红米K60Pro手机壳K50Pro红米k40Pro镜头全包超薄保护套',58,19.5,'static/uploads/products/20230905/pro43.jpg','保护套','static/uploads/products/20230905/pro53.jpg','小米','protect2023090553','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(53,'小米12pro手机壳小米13pro中国风小米12Sultra镜头11pro保护套',50,16.9,'static/uploads/products/20230905/pro42.jpg','保护套','static/uploads/products/20230905/pro52.jpg','小米','protect2023090552','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(52,'【2件起售】10 至尊纪念版 皮革保护壳',69.99,29.99,'static/uploads/products/20230905/pro41.jpg','保护套','static/uploads/products/20230905/pro51.jpg','小米','protect2023090551','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(62,'Type-c快充数据线66W适用华为小米三星手机充电线mate40p充电器',49.99,19.99,'static/uploads/products/20230905/pro51.jpg','充电器','static/uploads/products/20230905/pro61.jpg','小米','charger2023090561','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(63,'2条装Type-c数据线1.5米5A充电器线华为小米vivooppo手机超级快充',29.8,15.8,'static/uploads/products/20230905/pro52.jpg','充电器','static/uploads/products/20230905/pro62.jpg','小米','charger2023090562','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(64,'2条装Type-c数据线1.5米5A充电器线华为小米vivooppo手机超级快充',29.88,24.88,'static/uploads/products/20230905/pro53.jpg','充电器','static/uploads/products/20230905/pro63.jpg','小米','charger2023090563','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(65,'充电器安卓快充2A手机通用USB单头双口适用苹果vivo华为oppo小米',39.9,17.9,'static/uploads/products/20230905/pro54.jpg','充电器','static/uploads/products/20230905/pro64.jpg','小米','charger2023090564','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(66,'oppo vivo充电器头数据线快充多口套装适用苹果华为小米',129.88,35.88,'static/uploads/products/20230905/pro55.jpg','充电器','static/uploads/products/20230905/pro65.jpg','小米','charger2023090565','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(67,'充电器5V2AUSB充电头插头5V1A快充数据线适用苹果安卓电源适配器',58.65,24.68,'static/uploads/products/20230905/pro56.jpg','充电器','static/uploads/products/20230905/pro66.jpg','小米','charger2023090566','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(68,'Type-c数据线5A充电器线华为小米vivoOPPO手机超级快充',99.9,27.9,'static/uploads/products/20230905/pro57.jpg','充电器','static/uploads/products/20230905/pro67.jpg','小米','charger2023090567','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(69,'安卓数据线快充手机充电器线适用OPPO华为荣耀Type-C小米vivo',18.9,9.9,'static/uploads/products/20230905/pro58.jpg','充电器','static/uploads/products/20230905/pro68.jpg','小米','charger2023090568','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(70,'【2件起售】Type-c数据线1米 6A超级快充66w华为小米充电器线mate40/30/20',16.9,9.9,'static/uploads/products/20230905/pro59.jpg','充电器','static/uploads/products/20230905/pro69.jpg','小米','charger2023090569','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg'),(71,'无线充电器桌面底座充电板适用于苹果iPhone华为小米三星安卓耳机',239.88,59.88,'static/uploads/products/20230905/pro60.jpg','充电器','static/uploads/products/20230905/pro70.jpg','小米','charger2023090570','[骁龙8 Gen2;12GB;512GB;120-150W]','颜色;内存;套餐类型','静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息','星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `username` char(255) DEFAULT NULL,
  `pwd` char(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'zhangsan','123456'),(2,'lisi','654321'),(3,'wangwu','546231'),(4,'zhaoliu','zhaoliu123'),(5,'sunqi','sunqi321'),(7,'zhouba','zhouba456');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-11 17:23:55
