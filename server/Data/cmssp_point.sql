-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-11-22 10:35:06
-- 服务器版本： 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cmssp`
--

-- --------------------------------------------------------

--
-- 表的结构 `cmssp_point`
--

CREATE TABLE `cmssp_point` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag` varchar(200) DEFAULT NULL COMMENT '穴位主治标签',
  `pic` varchar(200) DEFAULT NULL COMMENT '图片地址',
  `channelId` int(11) DEFAULT '0' COMMENT '分类ID 13经 7脉',
  `name` varchar(45) DEFAULT NULL COMMENT '穴位名称',
  `tone` varchar(45) DEFAULT NULL COMMENT '穴位拼音',
  `effect` text COMMENT '穴位按摩主治',
  `locate` text COMMENT '穴位定位',
  `expr` text COMMENT '经验取穴',
  `ext_data` text COMMENT 'json data here'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cmssp_point`
--
ALTER TABLE `cmssp_point`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `cmssp_point`
--
ALTER TABLE `cmssp_point`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
