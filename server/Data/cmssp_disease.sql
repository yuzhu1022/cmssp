-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-11-22 10:23:02
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
-- 表的结构 `cmssp_disease`
--

CREATE TABLE `cmssp_disease` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag` varchar(200) DEFAULT NULL COMMENT '标签',
  `cateId` int(11) DEFAULT '0' COMMENT '分类ID',
  `name` varchar(45) DEFAULT NULL COMMENT '症状名称',
  `symptom` text COMMENT '症状描述',
  `cure` text COMMENT '症状治疗',
  `material` text COMMENT '症状药方',
  `ext_data` text COMMENT 'json data here'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cmssp_disease`
--

INSERT INTO `cmssp_disease` (`id`, `tag`, `cateId`, `name`, `symptom`, `cure`, `material`, `ext_data`) VALUES
(1, '感冒', 1, '感冒', '出汗受风/受凉 等 导致  头疼、发热、汗出、恶风 等症状', '解肌 保胃气 补津液 热则凉之 凉则温之', '桂枝汤 麻黄汤 葛根汤 银翘散 桑菊饮 麻杏甘石汤 等', NULL),
(2, '长期低烧', 1, '长期低烧', '持续两周以上阵发性发热38°以下，或寒热如疟状', '脾阴虚 肾阴虚 包括器质性疾病导致的低热、功能性低热，常用甘温除热 养阴清热 用于气虚发热或阴虚发热，除此之外，还有肝郁、血瘀、湿热相蒸、阴虚血瘀、血虚等等', '脾阴虚用四君子汤加山药 肾阴虚用六味地黄汤加都气丸加柴芍桂', NULL),
(3, '肝郁', 1, '肝郁', '恶心，虚汗，反胃等症状', '疏肝解郁  酸敛补肝法治肝郁', '大小柴胡汤', NULL),
(4, '结石', 1, '结石', '尿道结石-尿频尿痛；肾结石：阵发性剧烈疼痛', '湿热熏蒸形成结石 利尿消石 除湿热', '金钱草 鸡内金 海金沙', NULL),
(5, '便秘', 1, '便秘', '便秘 or 便溏', '便秘-脾阴虚  便溏-脾阳虚', '脾阴虚-麻仁滋脾丸 脾阳虚-', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cmssp_disease`
--
ALTER TABLE `cmssp_disease`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `cmssp_disease`
--
ALTER TABLE `cmssp_disease`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
