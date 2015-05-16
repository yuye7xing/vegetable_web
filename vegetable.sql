-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2015-05-13 09:18:59
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vegetable`
--

-- --------------------------------------------------------

--
-- 表的结构 `collect`
--

CREATE TABLE IF NOT EXISTS `collect` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `collect`
--

INSERT INTO `collect` (`c_id`, `u_id`, `s_id`) VALUES
(2, 1, 1),
(3, 1, 2),
(4, 1, 3);

-- --------------------------------------------------------

--
-- 表的结构 `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `o_id` int(20) NOT NULL AUTO_INCREMENT,
  `o_money` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `o_time` datetime NOT NULL,
  `u_ID` int(10) NOT NULL,
  `S_ID` int(10) NOT NULL,
  PRIMARY KEY (`o_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- 转存表中的数据 `order`
--

INSERT INTO `order` (`o_id`, `o_money`, `o_time`, `u_ID`, `S_ID`) VALUES
(1, '1', '2015-04-25 12:15:20', 1, 1),
(2, '12.5', '2015-04-25 01:10:10', 1, 2),
(43, '2.0', '2015-04-29 12:59:20', 2, 1),
(44, '3.0', '2015-05-10 01:24:42', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `order_detail`
--

CREATE TABLE IF NOT EXISTS `order_detail` (
  `od_ID` int(10) NOT NULL AUTO_INCREMENT,
  `o_id` int(20) NOT NULL,
  `ve_name_1` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ve_num_1` int(10) NOT NULL DEFAULT '0',
  `ve_name_2` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ve_num_2` int(10) NOT NULL DEFAULT '0',
  `ve_name_3` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ve_num_3` int(10) NOT NULL DEFAULT '0',
  `ve_name_4` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ve_num_4` int(10) NOT NULL DEFAULT '0',
  `ve_name_5` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ve_num_5` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`od_ID`),
  UNIQUE KEY `od_ID` (`od_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- 转存表中的数据 `order_detail`
--

INSERT INTO `order_detail` (`od_ID`, `o_id`, `ve_name_1`, `ve_num_1`, `ve_name_2`, `ve_num_2`, `ve_name_3`, `ve_num_3`, `ve_name_4`, `ve_num_4`, `ve_name_5`, `ve_num_5`) VALUES
(1, 1, '青菜', 1, '', 0, '', 0, '', 0, '', 0),
(4, 14, '藕', 1, '青菜', 1, '苦瓜', 1, 'zyz', 0, 'zyz', 0),
(5, 15, '傻瓜', 1, '黄瓜', 1, '南瓜', 1, '', 0, '', 0),
(6, 16, '藕', 1, '青菜', 1, '苦瓜', 1, '', 0, '', 0),
(7, 17, '藕', 1, '青菜', 1, '苦瓜', 1, '', 0, '', 0),
(8, 18, '藕', 1, '青菜', 1, '苦瓜', 1, '', 0, '', 0),
(9, 19, '西红柿', 1, '藕', 1, '青菜', 1, '', 0, '', 0),
(10, 20, '藕', 1, '青菜', 1, '', 0, '', 0, '', 0),
(11, 21, '西红柿', 1, '藕', 1, '', 0, '', 0, '', 0),
(12, 22, '藕', 1, '青菜', 1, '', 0, '', 0, '', 0),
(13, 23, '苦瓜', 1, '', 0, '', 0, '', 0, '', 0),
(14, 24, '苦瓜', 1, '', 0, '', 0, '', 0, '', 0),
(15, 25, '青菜', 1, '', 0, '', 0, '', 0, '', 0),
(16, 26, '藕', 1, '青菜', 1, '', 0, '', 0, '', 0),
(17, 27, '藕', 1, '青菜', 1, '苦瓜', 1, '', 0, '', 0),
(18, 28, '藕', 1, '青菜', 1, '', 0, '', 0, '', 0),
(19, 29, '藕', 1, '青菜', 1, '', 0, '', 0, '', 0),
(20, 30, '藕', 1, '青菜', 1, '', 0, '', 0, '', 0),
(21, 31, '藕', 1, '青菜', 1, '', 0, '', 0, '', 0),
(22, 32, '藕', 1, '', 0, '', 0, '', 0, '', 0),
(23, 33, '藕', 1, '', 0, '', 0, '', 0, '', 0),
(24, 34, '藕', 1, '', 0, '', 0, '', 0, '', 0),
(25, 35, '青菜', 1, '', 0, '', 0, '', 0, '', 0),
(26, 36, '青菜', 1, '', 0, '', 0, '', 0, '', 0),
(27, 37, '西红柿', 1, '', 0, '', 0, '', 0, '', 0),
(28, 38, '藕', 1, '青菜', 1, '', 0, '', 0, '', 0),
(29, 39, '藕', 1, '青菜', 1, '', 0, '', 0, '', 0),
(30, 40, '酸瓜', 1, '', 0, '', 0, '', 0, '', 0),
(31, 41, '', 0, '', 0, '', 0, '', 0, '', 0),
(32, 42, '西红柿', 2, '', 0, '', 0, '', 0, '', 0),
(33, 43, '西红柿', 1, '藕', 1, '', 0, '', 0, '', 0),
(34, 44, '西红柿', 1, '藕', 1, '青菜', 1, '', 0, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `seller`
--

CREATE TABLE IF NOT EXISTS `seller` (
  `S_ID` int(10) NOT NULL AUTO_INCREMENT,
  `S_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `S_URL` varchar(20) NOT NULL DEFAULT '0.gif',
  PRIMARY KEY (`S_ID`),
  UNIQUE KEY `S_ID` (`S_ID`),
  UNIQUE KEY `S_name` (`S_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `seller`
--

INSERT INTO `seller` (`S_ID`, `S_name`, `S_URL`) VALUES
(1, '菜市场1号', '1.gif'),
(2, '菜市场2号', '2.gif'),
(3, '菜市场3号', '3.gif'),
(4, '菜市场4号', '4.gif'),
(5, '菜市场5号', '5.gif'),
(6, '菜市场6号', '0.gif'),
(7, '菜市场7号', '0.gif'),
(8, '菜市场8号', '0.gif'),
(10, '菜市场9号', '0.gif');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `u_ID` int(11) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `u_passwo` varchar(20) NOT NULL,
  PRIMARY KEY (`u_ID`),
  UNIQUE KEY `ID` (`u_ID`),
  KEY `ID_2` (`u_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`u_ID`, `u_name`, `u_passwo`) VALUES
(1, 'zyz', 'zyz'),
(2, 'zyz2', 'zyz2'),
(3, '张三', 'ass');

-- --------------------------------------------------------

--
-- 表的结构 `vegetable`
--

CREATE TABLE IF NOT EXISTS `vegetable` (
  `v_ID` int(10) NOT NULL AUTO_INCREMENT,
  `v_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `S_ID` int(11) NOT NULL,
  `v_money` double NOT NULL,
  `URL` varchar(30) NOT NULL DEFAULT 'notfound.gif',
  PRIMARY KEY (`v_ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `vegetable`
--

INSERT INTO `vegetable` (`v_ID`, `v_name`, `S_ID`, `v_money`, `URL`) VALUES
(1, '西红柿', 1, 1, '1.gif'),
(2, '西红柿', 2, 1, '2.gif'),
(3, '藕', 2, 1, '3.gif'),
(4, '藕', 1, 1, '5.gif'),
(5, '青菜', 1, 1, '6.gif'),
(6, '青菜', 2, 1, '7.gif'),
(7, '苦瓜', 1, 1.5, '7.gif'),
(8, '甜瓜', 1, 1.5, '6.gif'),
(9, '酸瓜', 1, 1.5, '2.gif'),
(10, '傻瓜', 1, 1.5, '3.gif'),
(11, '黄瓜', 1, 1.5, '1.gif'),
(12, '西瓜', 1, 1.5, '8.gif'),
(13, '南瓜', 1, 1.5, 'notfound.gif');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
