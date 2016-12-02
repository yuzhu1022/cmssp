-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-11-22 10:40:14
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
-- 表的结构 `cmssp_channel`
--

CREATE TABLE `cmssp_channel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pic` varchar(45) COMMENT '图片地址',
  `effect` text COMMENT '经脉主治',
  `visc` varchar(10) COMMENT '经脉所属',
  `name` varchar(45) DEFAULT NULL COMMENT '经脉名称',
  `time` varchar(45) DEFAULT NULL COMMENT '24小时制时间',
  `shichen` varchar(45) DEFAULT NULL COMMENT '古时',
  `ext_data` text COMMENT 'json data here'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cmssp_channel`
--
ALTER TABLE `cmssp_channel`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `cmssp_channel`
--
ALTER TABLE `cmssp_channel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
