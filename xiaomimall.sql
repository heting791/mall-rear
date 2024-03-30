-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2023-11-30 11:05:09
-- 服务器版本： 5.7.26
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `xiaomimall`
--

-- --------------------------------------------------------

--
-- 表的结构 `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `area` text NOT NULL,
  `name` text NOT NULL,
  `deatailad` varchar(255) NOT NULL,
  `phoneprefix` smallint(255) NOT NULL,
  `phone` text NOT NULL,
  `tag` text NOT NULL,
  `defaultad` smallint(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `address`
--

INSERT INTO `address` (`id`, `userid`, `area`, `name`, `deatailad`, `phoneprefix`, `phone`, `tag`, `defaultad`) VALUES
(1, 3, '福建省 厦门市 思明区', '王五', '湖滨西路9号大西洋海景城', 86, '166****3872', '', 1),
(2, 5, '河南省 信阳市 浉河区', '孙七', '信阳市长安路666号信阳师范学院 ', 83, '156****5297', '公司', 1),
(3, 1, '四川省 成都市 武侯区', '张三', '武侯区髙升桥路16号新世纪装饰广场', 852, '18866999666', '家', 1),
(4, 1, '贵州省 安顺市 平坝区', '张三1', '贵发小区公共服务站自家驿站签收邮政韵达极兔申通圆通', 86, '17766550058', '家', 0),
(17, 2, '广东省 汕尾市 海丰县', '李四', '海城镇新园66号佳园小区', 86, '18522776945', '公司', 0),
(7, 2, '江西省 上饶市 广丰区', '李四2', '丰溪街道南屏路水南超市后面快递站', 86, '13466881514', '', 1),
(11, 1, '河南省 平顶山市 平顶山高新技术产业开发区', '张三2', '详细地址详细地址详细地址详细地址详细地址详细地址', 86, '13655669988', '公司', 0),
(15, 2, '河南省 平顶山市 平顶山高新技术产业开发区', '李四3', 'NNNNNNNNNNNNNNNNNN', 86, '15699885666', '', 0),
(16, 2, '江西省 南昌市 西湖区', '李四1', '王家庄乡路口馒头房对面名字电话随便', 886, '15966226633', '家', 0),
(19, 1, '河北省 秦皇岛市 青龙满族自治县', '张三3', '详细地址详细地址详细地址详细地址详细地址详细地址', 86, '15899966555', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `cart`
--

CREATE TABLE `cart` (
  `id` int(255) NOT NULL,
  `userid` int(255) NOT NULL,
  `productid` int(255) NOT NULL,
  `args` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `count` int(255) NOT NULL,
  `ttprice` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cart`
--

INSERT INTO `cart` (`id`, `userid`, `productid`, `args`, `price`, `count`, `ttprice`) VALUES
(1, 2, 21, '星空黑,8GB+512GB,官方标配', 2818, 4, 11272),
(2, 1, 33, '星空黑,8GB+256GB,官方标配', 1899.88, 5, 9499.4),
(3, 5, 55, '星空黑,8GB+256GB,官方标配', 26.36, 10, 263.6),
(4, 2, 66, '星空黑,8GB+256GB,6期免息', 333.33, 2, 666.66),
(5, 3, 15, '清风紫,8GB+256GB,官方标配', 1999.99, 1, 1999.99),
(23, 1, 17, '星空黑,12GB+256GB,官方标配', 3859.88, 1, 3859.88),
(22, 1, 15, '静海蓝,12GB+256GB,6期免息', 1879.88, 3, 5639.64),
(12, 2, 8, '静海蓝,12GB+256GB,6期免息', 2299.99, 4, 9199.96),
(16, 2, 5, '静海蓝,8GB+256GB,官方标配', 2499.88, 1, 2499.88),
(21, 2, 10, '星空黑,8GB+256GB,官方标配', 5999.99, 1, 5999.99),
(24, 1, 22, '白色,2L,2-3人', 145.99, 4, 583.96);

-- --------------------------------------------------------

--
-- 表的结构 `category`
--

CREATE TABLE `category` (
  `id` int(255) NOT NULL,
  `name` text,
  `arguments` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `category`
--

INSERT INTO `category` (`id`, `name`, `arguments`) VALUES
(1, '手机', 'CPU型号,运行内存,机身内存,充电功率'),
(2, '热门家电', '商品产地,容量,适用人数,功能'),
(3, '电视影音', '商品产地,屏幕尺寸,分辨率,刷屏率'),
(4, '保护套', '工艺,材质,风格,款式'),
(5, '充电器', '商品产地,接口数,快充协议,主流功率');

-- --------------------------------------------------------

--
-- 表的结构 `favorites`
--

CREATE TABLE `favorites` (
  `id` int(255) NOT NULL,
  `userid` int(255) NOT NULL,
  `productid` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `favorites`
--

INSERT INTO `favorites` (`id`, `userid`, `productid`) VALUES
(1, 5, 33),
(2, 6, 22),
(18, 2, 4),
(4, 6, 66),
(5, 2, 60),
(26, 1, 3),
(28, 1, 5),
(30, 1, 26),
(35, 1, 10),
(23, 1, 6),
(34, 1, 30);

-- --------------------------------------------------------

--
-- 表的结构 `orders`
--

CREATE TABLE `orders` (
  `id` int(255) NOT NULL,
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
  `status` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `orders`
--

INSERT INTO `orders` (`id`, `orderid`, `userid`, `productid`, `addressid`, `args`, `price`, `count`, `ttprice`, `delivery`, `remark`, `createtime`, `status`) VALUES
(1, '202310071512lisiphone2023083120', 2, 21, 0, '星空黑,8GB+512GB,官方标配', 2818, 4, 11272, '快递配送', '', '1696662761115', 0),
(2, '202310071512lisicharger2023090565', 2, 66, 0, '星空黑,8GB+256GB,12期免息', 333.33, 4, 1333.32, '快递配送', '', '1696662761119', 0),
(3, '202311071050zhangsanphone2023083108', 1, 9, 0, '星空黑,8GB+256GB,官方标配', 5999.99, 4, 24000, '快递配送', '', '1699325436907', 0),
(4, '202311071100zhangsanphone2023083112', 1, 13, 3, '清风紫,8GB+256GB,官方标配', 2588, 5, 12940, '到店自取1', '好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好好', '1699326000241', 1),
(5, '202311071708zhangsanphone2023083112', 1, 13, 4, '清风紫,8GB+256GB,官方标配', 2588, 5, 12940, '快递配送', '哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈11111111', '1699348139010', 1),
(6, '202311161522lisiphone2023083111', 2, 12, 0, '星空黑,8GB+128GB,6期免息', 666.66, 1, 666.66, '快递配送', '', '1700119350003', 0),
(7, '202311211717lisicharger2023090565', 2, 66, 0, '星空黑,8GB+256GB,6期免息', 333.33, 2, 666.66, '快递配送', '', '1700558257673', 0),
(8, '202311211717lisiphone2023083104', 2, 5, 0, '清风紫,12GB+256GB,官方标配', 2499.88, 5, 12499.4, '快递配送', '', '1700558257676', 0),
(9, '202311221352lisiphone2023083120', 2, 21, 0, '星空黑,8GB+512GB,官方标配', 2818, 4, 11272, '快递配送', '', '1700632355152', 0),
(37, '202311271706zhangsanphone2023083121', 1, 22, 0, '白色,2L,2-3人', 145.99, 4, 583.96, '快递配送', '', '1701075982495', 0),
(36, '202311271706zhangsanphone2023083114', 1, 15, 0, '静海蓝,12GB+256GB,6期免息', 1879.88, 3, 5639.64, '快递配送', '', '1701075982492', 0),
(35, '202311271706zhangsanphone2023083116', 1, 17, 0, '星空黑,12GB+256GB,官方标配', 3859.88, 1, 3859.88, '快递配送', '', '1701075982488', 0),
(25, '202311221414lisiphone2023083120', 2, 21, 17, '星空黑,8GB+512GB,官方标配', 2818, 4, 11272, '快递配送', 'dddddddddddddddd', '1700633647151', 1),
(26, '202311221414lisicharger2023090565', 2, 66, 17, '星空黑,8GB+256GB,6期免息', 333.33, 2, 666.66, '快递配送1', '', '1700633647154', 3),
(27, '202311221414lisiphone2023083107', 2, 8, 17, '静海蓝,12GB+256GB,6期免息', 2299.99, 4, 9199.96, '快递配送', 'gggggggggg', '1700633647156', 1);

-- --------------------------------------------------------

--
-- 表的结构 `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` text,
  `oprice` float DEFAULT NULL,
  `price` float DEFAULT NULL,
  `image` text,
  `category` char(255) DEFAULT NULL,
  `banner` varchar(255) NOT NULL,
  `brand` text NOT NULL,
  `idnumber` varchar(255) NOT NULL,
  `detailsarg` varchar(255) NOT NULL,
  `argsname` varchar(255) NOT NULL,
  `argsvalue` varchar(255) NOT NULL,
  `argsassemblyvalue` varchar(1000) NOT NULL,
  `favuser` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `products`
--

INSERT INTO `products` (`id`, `title`, `oprice`, `price`, `image`, `category`, `banner`, `brand`, `idnumber`, `detailsarg`, `argsname`, `argsvalue`, `argsassemblyvalue`, `favuser`) VALUES
(2, 'Redmi K60至尊版手机官方旗舰店红米k60至尊版官网正品红米k60ultra小米k60新品上市', 2999.99, 2699.99, 'static/uploads/products/20230831/pro1.jpg', '手机', 'static/uploads/products/20230831/pro1.jpg', '小米', 'phone2023083101', '[骁龙8 Gen2;12GB;512GB;120-150W]', '颜色;内存;套餐类型', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(3, 'Redmi K60手机红米k60E红米小米手机小米官方旗舰店官网redmik60骁龙8+游戏至尊版新NFC', 2988.88, 2388.88, 'static/uploads/products/20230831/pro2.jpg', '手机', 'static/uploads/products/20230831/pro2.jpg', '小米', 'phone2023083102', '[骁龙8 Gen2;12GB;512GB;120-150W]', '颜色;内存;套餐类型', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', '1;'),
(4, 'Redmi红米Note12 Turbo手机note12turbo小米官方旗舰店5G新款官网正品哈利波特', 1999.99, 1799.99, 'static/uploads/products/20230831/pro3.jpg', '手机', 'static/uploads/products/20230831/pro3.jpg', '小米', 'phone2023083103', '[骁龙8 Gen2;12GB;512GB;120-150W]', '颜色;内存;套餐类型', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', '2;'),
(5, 'Xiaomi Civi 3新品手机小米Civi3官方旗舰店官网正品新款拍照智能小米Civi系列', 2699.88, 2499.88, 'static/uploads/products/20230831/pro4.jpg', '手机', 'static/uploads/products/20230831/pro4.jpg', '小米', 'phone2023083104', '[骁龙8 Gen2;12GB;512GB;120-150W]', '颜色;内存;套餐类型', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', '1;'),
(6, '小米11青春版 5G手机轻薄小米官方旗舰店官网同款10正品全网通红米K40 XIAOMI分期', 2039, 2029, 'static/uploads/products/20230831/pro5.jpg', '手机', 'static/uploads/products/20230831/pro5.jpg', '小米', 'phone2023083105', '[骁龙8 Gen2;12GB;512GB;120-150W]', '颜色;内存;套餐类型', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', '1;'),
(7, 'Redmi K50 天玑8100 2K屏幕智能游戏5g红米手机小米k50红米k50新品红米40', 2059.99, 2029.99, 'static/uploads/products/20230831/pro6.jpg', '手机', 'static/uploads/products/20230831/pro6.jpg', '小米', 'phone2023083106', '[骁龙8 Gen2;12GB;512GB;120-150W]', '颜色;内存;套餐类型', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(8, '小米10青春版5G手机50倍潜望式变焦小米官方旗舰店小米手机xiaomi小米10青春', 2399.99, 2299.99, 'static/uploads/products/20230831/pro7.jpg', '手机', 'static/uploads/products/20230831/pro7.jpg', '小米', 'phone2023083107', '[骁龙8 Gen2;12GB;512GB;120-150W]', '颜色;内存;套餐类型', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(9, 'MIUI/小米 10全网通现货5G手机官方正品旗舰至尊版新品10S ', 3199, 3099, 'static/uploads/products/20230831/pro8.jpg', '手机', 'static/uploads/products/20230831/pro8.jpg', '小米', 'phone2023083108', '[骁龙8 Gen2;12GB;512GB;120-150W]', '颜色;内存;套餐类型', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(10, 'Xiaomi/小米Civi 2 手机小米官方旗舰店智能游戏拍照徕卡小米civi2官网正品5g', 2399, 2199, 'static/uploads/products/20230831/pro9.jpg', '手机', 'static/uploads/products/20230831/pro9.jpg', '小米', 'phone2023083109', '[骁龙8 Gen2;12GB;512GB;120-150W]', '颜色;内存;套餐类型', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', '1;'),
(11, '官网正品MIUI/小米12turbo 16+1024GB全网通5G旗舰手机智能官方专卖店红米note12turbo', 2198, 2098, 'static/uploads/products/20230831/pro10.jpg', '手机', 'static/uploads/products/20230831/pro10.jpg', '小米', 'phone2023083110', '[骁龙8 Gen2;12GB;512GB;120-150W]', '颜色;内存;套餐类型', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(12, 'MIUI/小米 Xiaomi 12X 新5G手机12官方旗舰店官网正品骁龙870', 2758.88, 2588.88, 'static/uploads/products/20230831/pro11.jpg', '手机', 'static/uploads/products/20230831/pro11.jpg', '小米', 'phone2023083111', '[骁龙8 Gen2;12GB;512GB;120-150W]', '颜色;内存;套餐类型', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(13, 'MIUI/小米 11 Ultra至尊版5G曲面屏骁龙888拍照手机11pro促销', 2628, 2588, 'static/uploads/products/20230831/pro12.jpg', '手机', 'static/uploads/products/20230831/pro12.jpg', '小米', 'phone2023083112', '[骁龙8 Gen2;12GB;512GB;120-150W]', '颜色;内存;套餐类型', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(14, '红米K40S 骁龙870芯片官方旗舰店Redmi K40S拍照游戏电竞全新正品官网新款小米智能手机', 2199.99, 1999.99, 'static/uploads/products/20230831/pro13.jpg', '手机', 'static/uploads/products/20230831/pro13.jpg', '小米', 'phone2023083113', '[骁龙8 Gen2;12GB;512GB;120-150W]', '颜色;内存;套餐类型', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(15, '小米/红米Redmi Note12 Pro极速版新品手机骁龙778G旗舰小米官方旗舰店官网官方正品智能', 1999.88, 1879.88, 'static/uploads/products/20230831/pro14.jpg', '手机', 'static/uploads/products/20230831/pro14.jpg', '小米', 'phone2023083114', '[骁龙8 Gen2;12GB;512GB;120-150W]', '颜色;内存;套餐类型', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(16, 'Note 9 pro红米本安防爆智能手机化工厂石油库天然气工业医药专用5G全网通工业巡检加油站石油支持NFC小米', 2099.99, 1999.99, 'static/uploads/products/20230831/pro15.jpg', '手机', 'static/uploads/products/20230831/pro15.jpg', '小米', 'phone2023083115', '[骁龙8 Gen2;12GB;512GB;120-150W]', '颜色;内存;套餐类型', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(17, 'MIUI/小米 Xiaomi 12 Pro骁龙8Gen1正品小米12S Ultra 5G手机12X ', 3959.88, 3859.88, 'static/uploads/products/20230831/pro16.jpg', '手机', 'static/uploads/products/20230831/pro16.jpg', '小米', 'phone2023083116', '[骁龙8 Gen2;12GB;512GB;120-150W]', '颜色;内存;套餐类型', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(18, '红米 Redmi K40 Pro 骁龙888屏智能游戏拍照学生5g手机小米官方旗舰红米k40pro小米', 2099.99, 1999.99, 'static/uploads/products/20230831/pro17.jpg', '手机', 'static/uploads/products/20230831/pro17.jpg', '小米', 'phone2023083117', '[骁龙8 Gen2;12GB;512GB;120-150W]', '颜色;内存;套餐类型', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(19, 'Xiaomi Civi2小米civi2手机游戏拍照红米官方旗舰店官网正品情人节好礼 2067', 2149.88, 2049.88, 'static/uploads/products/20230831/pro18.jpg', '手机', 'static/uploads/products/20230831/pro18.jpg', '小米', 'phone2023083118', '[骁龙8 Gen2;12GB;512GB;120-150W]', '颜色;内存;套餐类型', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(20, '【全新未拆封未激活 官方质保一年】Redmi/红米 K30Pro 5G骁龙865变焦版液冷散热游戏智能手机经典升降式镜头', 2599.88, 2579.88, 'static/uploads/products/20230831/pro19.jpg', '手机', 'static/uploads/products/20230831/pro19.jpg', '小米', 'phone2023083119', '[骁龙8 Gen2;12GB;512GB;120-150W]', '颜色;内存;套餐类型', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(21, 'MIUI/小米 Xiaomi 13 5G手机全网通官方正品 13 Pro 新款直屏2K屏 ', 2918, 2818, 'static/uploads/products/20230831/pro20.jpg', '手机', 'static/uploads/products/20230831/pro20.jpg', '小米', 'phone2023083120', '[骁龙8 Gen2;12GB;512GB;120-150W]', '颜色;内存;套餐类型', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(22, '3L米家电饭煲C1 蒸煮一机多用 24小时智能预约 电饭煲', 151.99, 145.99, 'static/uploads/products/20230905/pro21.png', '热门家电', 'static/uploads/products/20230905/pro21.png', '小米', 'phone2023083121', '[骁龙8 Gen2;12GB;512GB;120-150W]', '颜色;容量;适用人数', '黑色,白色,粉色;1L,2L,2.5L;1-2人,2-3人,3-5人', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', '6;'),
(23, '米家智能IH电饭煲3L 多功能大容量电磁加热智能预约电饭锅', 499, 349, 'static/uploads/products/20230905/pro22.jpg', '热门家电', 'static/uploads/products/20230905/pro22.jpg', '小米', 'hotapp2023090522', '[骁龙8 Gen2;12GB;512GB;120-150W]', '颜色;容量;适用人数', '黑色,白色,粉色;1L,2L,2.5L;1-2人,2-3人,3-5人', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(24, '米家电饭煲C1 4L 蒸煮一机多用 24小时智能预约 电饭煲', 199.99, 169.99, 'static/uploads/products/20230905/pro23.jpg', '热门家电', 'static/uploads/products/20230905/pro23.jpg', '小米', 'hotapp2023090523', '[骁龙8 Gen2;12GB;512GB;120-150W]', '颜色;容量;适用人数', '黑色,白色,粉色;1L,2L,2.5L;1-2人,2-3人,3-5人', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(25, '米家智能IH电饭煲4L 多功能大容量电磁加热智能预约电饭锅', 599.88, 439.88, 'static/uploads/products/20230905/pro24.jpg', '热门家电', 'static/uploads/products/20230905/pro24.jpg', '小米', 'hotapp2023090524', '[骁龙8 Gen2;12GB;512GB;120-150W]', '颜色;容量;适用人数', '黑色,白色,粉色;1L,2L,2.5L;1-2人,2-3人,3-5人', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(26, '客厅吊灯2023年新款现代简约大气主灯米家智能设计师卧室流行灯具', 219.99, 199.99, 'static/uploads/products/20230905/pro25.jpg', '热门家电', 'static/uploads/products/20230905/pro25.jpg', '小米', 'hotapp2023090525', '[骁龙8 Gen2;12GB;512GB;120-150W]', '颜色;容量;适用人数', '黑色,白色,粉色;1L,2L,2.5L;1-2人,2-3人,3-5人', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', '1;'),
(27, '米家智能客厅灯现代简约大气2023年新款轻奢卧室吸顶灯具全屋套餐', 33.88, 29.88, 'static/uploads/products/20230905/pro26.jpg', '热门家电', 'static/uploads/products/20230905/pro26.jpg', '小米', 'hotapp2023090526', '[骁龙8 Gen2;12GB;512GB;120-150W]', '颜色;容量;适用人数', '黑色,白色,粉色;1L,2L,2.5L;1-2人,2-3人,3-5人', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(28, '米家智能护眼led客厅灯吸顶灯现代简约卧室餐厅全屋灯具套餐', 128, 57, 'static/uploads/products/20230905/pro27.jpg', '热门家电', 'static/uploads/products/20230905/pro27.jpg', '小米', 'hotapp2023090527', '[骁龙8 Gen2;12GB;512GB;120-150W]', '颜色;容量;适用人数', '黑色,白色,粉色;1L,2L,2.5L;1-2人,2-3人,3-5人', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(29, '客厅吊灯2023年新款现代简约大气主灯米家智能设计师卧室流行灯具', 1488.88, 709.88, 'static/uploads/products/20230905/pro28.jpg', '热门家电', 'static/uploads/products/20230905/pro28.jpg', '小米', 'hotapp2023090528', '[骁龙8 Gen2;12GB;512GB;120-150W]', '颜色;容量;适用人数', '黑色,白色,粉色;1L,2L,2.5L;1-2人,2-3人,3-5人', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(30, '小米家用燃气灶S1天然气灶液化气双用大火力4.5kw灶台式家用炉具', 1199.99, 999.99, 'static/uploads/products/20230905/pro29.jpg', '热门家电', 'static/uploads/products/20230905/pro29.jpg', '小米', 'hotapp2023090529', '[骁龙8 Gen2;12GB;512GB;120-150W]', '颜色;容量;适用人数', '黑色,白色,粉色;1L,2L,2.5L;1-2人,2-3人,3-5人', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', '1;'),
(31, '小米洗衣机全自动滚筒直驱变频洗烘一体机空气洗家用钛金灰10公斤', 2199.88, 1199.88, 'static/uploads/products/20230905/pro30.jpg', '热门家电', 'static/uploads/products/20230905/pro30.jpg', '小米', 'hotapp2023090530', '[骁龙8 Gen2;12GB;512GB;120-150W]', '颜色;容量;适用人数', '黑色,白色,粉色;1L,2L,2.5L;1-2人,2-3人,3-5人', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(32, '43英寸电视金属全面屏双频wifi大存储智能教育电视机', 1599.99, 1099.99, 'static/uploads/products/20230905/pro31.jpg', '电视影音', 'static/uploads/products/20230905/pro31.jpg', '小米', 'hotapp2023090531', '[骁龙8 Gen2;12GB;512GB;120-150W]', '尺寸;版本;颜色', '98英寸,85英寸,75英寸,65英寸,55英寸;旗舰爆款新品,2023高亮量子点爆款,144Hz真高刷电视,高色域巨幕游戏电视;白色,黑色', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(33, '58英寸液晶电视4K超高清EA58金属全面屏远场语音控制', 1899.88, 1799.88, 'static/uploads/products/20230905/pro32.jpg', '电视影音', 'static/uploads/products/20230905/pro32.jpg', '小米', 'tv2023090532', '[骁龙8 Gen2;12GB;512GB;120-150W]', '尺寸;版本;颜色', '98英寸,85英寸,75英寸,65英寸,55英寸;旗舰爆款新品,2023高亮量子点爆款,144Hz真高刷电视,高色域巨幕游戏电视;白色,黑色', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', '5;'),
(34, '43英寸小米电视家用金属全面屏双频wifi智能平板教育电视机EA', 1099, 989, 'static/uploads/products/20230905/pro33.jpg', '电视影音', 'static/uploads/products/20230905/pro33.jpg', '小米', 'tv2023090533', '[骁龙8 Gen2;12GB;512GB;120-150W]', '尺寸;版本;颜色', '98英寸,85英寸,75英寸,65英寸,55英寸;旗舰爆款新品,2023高亮量子点爆款,144Hz真高刷电视,高色域巨幕游戏电视;白色,黑色', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(35, 'Redmi 电视70英寸金属全面屏4k超高清四核处理器丰富色彩立体声', 2699.99, 2549.99, 'static/uploads/products/20230905/pro34.jpg', '电视影音', 'static/uploads/products/20230905/pro34.jpg', '小米', 'tv2023090534', '[骁龙8 Gen2;12GB;512GB;120-150W]', '尺寸;版本;颜色', '98英寸,85英寸,75英寸,65英寸,55英寸;旗舰爆款新品,2023高亮量子点爆款,144Hz真高刷电视,高色域巨幕游戏电视;白色,黑色', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(36, '电视Apro43英寸4K金属全面屏远场语音43英寸护眼液晶平板', 1599.88, 1399.88, 'static/uploads/products/20230905/pro35.jpg', '电视影音', 'static/uploads/products/20230905/pro35.jpg', '小米', 'tv2023090535', '[骁龙8 Gen2;12GB;512GB;120-150W]', '尺寸;版本;颜色', '98英寸,85英寸,75英寸,65英寸,55英寸;旗舰爆款新品,2023高亮量子点爆款,144Hz真高刷电视,高色域巨幕游戏电视;白色,黑色', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(37, '【性价比】Redmi电视机家用液晶32/43/50/55/65/70/75英寸全面屏', 1899.99, 1599.99, 'static/uploads/products/20230905/pro36.jpg', '电视影音', 'static/uploads/products/20230905/pro36.jpg', '小米', 'tv2023090536', '[骁龙8 Gen2;12GB;512GB;120-150W]', '尺寸;版本;颜色', '98英寸,85英寸,75英寸,65英寸,55英寸;旗舰爆款新品,2023高亮量子点爆款,144Hz真高刷电视,高色域巨幕游戏电视;白色,黑色', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(38, '电视RedmiX86超大屏86寸MEMC运动补偿金属全面屏智能游戏电视', 5299.98, 5199.98, 'static/uploads/products/20230905/pro37.jpg', '电视影音', 'static/uploads/products/20230905/pro37.jpg', '小米', 'tv2023090537', '[骁龙8 Gen2;12GB;512GB;120-150W]', '尺寸;版本;颜色', '98英寸,85英寸,75英寸,65英寸,55英寸;旗舰爆款新品,2023高亮量子点爆款,144Hz真高刷电视,高色域巨幕游戏电视;白色,黑色', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(39, '50英寸金属全面屏4K超高清智能互联平板电视机ES50', 2599.98, 2499.98, 'static/uploads/products/20230905/pro38.jpg', '电视影音', 'static/uploads/products/20230905/pro38.jpg', '小米', 'tv2023090538', '[骁龙8 Gen2;12GB;512GB;120-150W]', '尺寸;版本;颜色', '98英寸,85英寸,75英寸,65英寸,55英寸;旗舰爆款新品,2023高亮量子点爆款,144Hz真高刷电视,高色域巨幕游戏电视;白色,黑色', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(40, 'MAX86英寸超大巨幕4K超高清HDR内置小爱运动补偿Redmi', 6699.99, 5999.99, 'static/uploads/products/20230905/pro39.jpg', '电视影音', 'static/uploads/products/20230905/pro39.jpg', '小米', 'tv2023090539', '[骁龙8 Gen2;12GB;512GB;120-150W]', '尺寸;版本;颜色', '98英寸,85英寸,75英寸,65英寸,55英寸;旗舰爆款新品,2023高亮量子点爆款,144Hz真高刷电视,高色域巨幕游戏电视;白色,黑色', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(41, '70英寸金属全面屏远场语音4K超高清液晶智能教育电视机四核处理器', 2899.98, 2699.98, 'static/uploads/products/20230905/pro40.jpg', '电视影音', 'static/uploads/products/20230905/pro40.jpg', '小米', 'tv2023090540', '[骁龙8 Gen2;12GB;512GB;120-150W]', '尺寸;版本;颜色', '98英寸,85英寸,75英寸,65英寸,55英寸;旗舰爆款新品,2023高亮量子点爆款,144Hz真高刷电视,高色域巨幕游戏电视;白色,黑色', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(61, '适用于小米Civi3手机壳摩纹内置磁吸磨砂新款全包防摔保护套男', 37.24, 32.24, 'static/uploads/products/20230905/pro50.jpg', '保护套', 'static/uploads/products/20230905/pro60.jpg', '小米', 'protect2023090560', '[骁龙8 Gen2;12GB;512GB;120-150W]', '型号;颜色', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(60, '小米8se手机壳小米8lite探索版保护套青春版防摔屏幕指纹全包软壳', 55, 14.5, 'static/uploads/products/20230905/pro49.jpg', '保护套', 'static/uploads/products/20230905/pro59.jpg', '小米', 'protect2023090559', '[骁龙8 Gen2;12GB;512GB;120-150W]', '型号;颜色', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', '2;'),
(59, '小米MIXFold手机壳5G折叠屏电镀玻璃彩绘防摔硬壳轻奢时尚保护套', 118, 103, 'static/uploads/products/20230905/pro48.jpg', '保护套', 'static/uploads/products/20230905/pro58.jpg', '小米', 'protect2023090558', '[骁龙8 Gen2;12GB;512GB;120-150W]', '型号;颜色', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(58, '小米12/11/11pro/10/9se手机壳CIVI硅胶套软小米12pro保护套mix4', 49, 19.9, 'static/uploads/products/20230905/pro47.jpg', '保护套', 'static/uploads/products/20230905/pro57.jpg', '小米', 'protect2023090557', '[骁龙8 Gen2;12GB;512GB;120-150W]', '型号;颜色', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(57, '小米红米K60Pro手机壳红米K50Pro/K40Pro镜头全包防摔保护套', 58, 18.5, 'static/uploads/products/20230905/pro46.jpg', '保护套', 'static/uploads/products/20230905/pro56.jpg', '小米', 'protect2023090556', '[骁龙8 Gen2;12GB;512GB;120-150W]', '型号;颜色', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(56, '小米红米note9pro/note10pro手机壳液态直边保护套防摔', 50, 14.5, 'static/uploads/products/20230905/pro45.jpg', '保护套', 'static/uploads/products/20230905/pro55.jpg', '小米', 'protect2023090555', '[骁龙8 Gen2;12GB;512GB;120-150W]', '型号;颜色', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(55, '适用于小米civi3手机壳创意电镀枫叶全包防摔软硅胶保护套带挂绳', 31.36, 26.36, 'static/uploads/products/20230905/pro44.jpg', '保护套', 'static/uploads/products/20230905/pro54.jpg', '小米', 'protect2023090554', '[骁龙8 Gen2;12GB;512GB;120-150W]', '型号;颜色', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(54, '小米红米K60Pro手机壳K50Pro红米k40Pro镜头全包超薄保护套', 58, 19.5, 'static/uploads/products/20230905/pro43.jpg', '保护套', 'static/uploads/products/20230905/pro53.jpg', '小米', 'protect2023090553', '[骁龙8 Gen2;12GB;512GB;120-150W]', '型号;颜色', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', '3;'),
(53, '小米12pro手机壳小米13pro中国风小米12Sultra镜头11pro保护套', 50, 16.9, 'static/uploads/products/20230905/pro42.jpg', '保护套', 'static/uploads/products/20230905/pro52.jpg', '小米', 'protect2023090552', '[骁龙8 Gen2;12GB;512GB;120-150W]', '型号;颜色', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(52, '【2件起售】10 至尊纪念版 皮革保护壳', 69.99, 29.99, 'static/uploads/products/20230905/pro41.jpg', '保护套', 'static/uploads/products/20230905/pro51.jpg', '小米', 'protect2023090551', '[骁龙8 Gen2;12GB;512GB;120-150W]', '型号;颜色', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(62, 'Type-c快充数据线66W适用华为小米三星手机充电线mate40p充电器', 49.99, 19.99, 'static/uploads/products/20230905/pro51.jpg', '充电器', 'static/uploads/products/20230905/pro61.jpg', '小米', 'charger2023090561', '[骁龙8 Gen2;12GB;512GB;120-150W]', '主流功率;颜色;充电方式', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(63, '2条装Type-c数据线1.5米5A充电器线华为小米vivooppo手机超级快充', 29.8, 15.8, 'static/uploads/products/20230905/pro52.jpg', '充电器', 'static/uploads/products/20230905/pro62.jpg', '小米', 'charger2023090562', '[骁龙8 Gen2;12GB;512GB;120-150W]', '主流功率;颜色;充电方式', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(64, '2条装Type-c数据线1.5米5A充电器线华为小米vivooppo手机超级快充', 29.88, 24.88, 'static/uploads/products/20230905/pro53.jpg', '充电器', 'static/uploads/products/20230905/pro63.jpg', '小米', 'charger2023090563', '[骁龙8 Gen2;12GB;512GB;120-150W]', '主流功率;颜色;充电方式', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(65, '充电器安卓快充2A手机通用USB单头双口适用苹果vivo华为oppo小米', 39.9, 17.9, 'static/uploads/products/20230905/pro54.jpg', '充电器', 'static/uploads/products/20230905/pro64.jpg', '小米', 'charger2023090564', '[骁龙8 Gen2;12GB;512GB;120-150W]', '主流功率;颜色;充电方式', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(66, 'oppo vivo充电器头数据线快充多口套装适用苹果华为小米', 129.88, 35.88, 'static/uploads/products/20230905/pro55.jpg', '充电器', 'static/uploads/products/20230905/pro65.jpg', '小米', 'charger2023090565', '[骁龙8 Gen2;12GB;512GB;120-150W]', '主流功率;颜色;充电方式', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', '6;'),
(67, '充电器5V2AUSB充电头插头5V1A快充数据线适用苹果安卓电源适配器', 58.65, 24.68, 'static/uploads/products/20230905/pro56.jpg', '充电器', 'static/uploads/products/20230905/pro66.jpg', '小米', 'charger2023090566', '[骁龙8 Gen2;12GB;512GB;120-150W]', '主流功率;颜色;充电方式', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(68, 'Type-c数据线5A充电器线华为小米vivoOPPO手机超级快充', 99.9, 27.9, 'static/uploads/products/20230905/pro57.jpg', '充电器', 'static/uploads/products/20230905/pro67.jpg', '小米', 'charger2023090567', '[骁龙8 Gen2;12GB;512GB;120-150W]', '主流功率;颜色;充电方式', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(69, '安卓数据线快充手机充电器线适用OPPO华为荣耀Type-C小米vivo', 18.9, 9.9, 'static/uploads/products/20230905/pro58.jpg', '充电器', 'static/uploads/products/20230905/pro68.jpg', '小米', 'charger2023090568', '[骁龙8 Gen2;12GB;512GB;120-150W]', '主流功率;颜色;充电方式', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(70, '【2件起售】Type-c数据线1米 6A超级快充66w华为小米充电器线mate40/30/20', 16.9, 9.9, 'static/uploads/products/20230905/pro59.jpg', '充电器', 'static/uploads/products/20230905/pro69.jpg', '小米', 'charger2023090569', '[骁龙8 Gen2;12GB;512GB;120-150W]', '主流功率;颜色;充电方式', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(71, '无线充电器桌面底座充电板适用于苹果iPhone华为小米三星安卓耳机', 239.88, 59.88, 'static/uploads/products/20230905/pro60.jpg', '充电器', 'static/uploads/products/20230905/pro70.jpg', '小米', 'charger2023090570', '[骁龙8 Gen2;12GB;512GB;120-150W]', '主流功率;颜色;充电方式', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', ''),
(73, '小米红米K60Pro手机壳红米K50Pro/K40Pro镜头全包防摔保护套', 58, 18.5, 'static/uploads/products/20230905/pro46.jpg', '保护套', 'static/uploads/products/20230905/pro56.jpg', '小米', 'protect2023090556', '[骁龙8 Gen2;12GB;512GB;120-150W]', '型号;颜色', '静海蓝,星空黑,清风紫;8GB+128GB,8GB+256GB,8GB+512GB,12GB+128GB,12GB+256GB;官方标配,6期免息,12期免息', '星空黑,8GB+256GB,官方标配,5999.99,static/uploads/products/20230831/pro10.jpg;星空黑,12GB+128GB,官方标配,6999.99,static/uploads/products/20230831/pro7.jpg;星空黑,8GB+256GB,6期免息,666.66,static/uploads/products/20230905/pro30.jpg;星空黑,8GB+256GB,12期免息,333.33,static/uploads/products/20230905/pro40.jpg', '');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `username` char(255) DEFAULT NULL,
  `pwd` char(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `pwd`) VALUES
(1, 'zhangsan', '123456'),
(2, 'lisi', '654321'),
(3, 'wangwu', '546231'),
(4, 'zhaoliu', 'zhaoliu123'),
(5, 'sunqi', 'sunqi321'),
(7, 'zhouba', 'zhouba456'),
(37, 'zhangsan6', 'zhangsan6123'),
(10, 'zhangsan1', '123456'),
(12, 'lisi1', '654321'),
(39, 'lisi2', 'lisi2123'),
(14, 'wangwu1', 'wangwu123'),
(16, 'zhaoliu1', 'zhaoliu123'),
(40, 'zhangsan12', 'zs123456'),
(18, 'hhhhhh', 'hhhhhhhh123'),
(38, 'hhhhjj', 'hhhhjj123'),
(20, 'kkkkk', 'kkkkk321'),
(27, 'hhhhh', 'hhhhh123'),
(22, 'ooooo', 'ooooo123'),
(41, 'zhangsan123', 'zs123456'),
(42, 'zhangsan', '123456');

--
-- 转储表的索引
--

--
-- 表的索引 `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- 使用表AUTO_INCREMENT `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- 使用表AUTO_INCREMENT `category`
--
ALTER TABLE `category`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- 使用表AUTO_INCREMENT `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- 使用表AUTO_INCREMENT `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
