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


INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,1,'尺泽穴','chĭ zé xué','俱活血之妙。中医讲治风先治血，血行风自灭。中医认为各种过敏多多少少都与“风”有关。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,1,'列缺穴','liè quē xué','宣肺解表，通经活络，通调任脉。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,1,'少商穴','shào shāng xué','解表清热，通利咽喉，苏厥开窍。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,1,'太渊穴','tài yuān xué','散化肺经地部水湿，向天部输送肺气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,1,'鱼际穴','yú jì xué','清宣肺气，清热利咽。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,1,'侠白穴','xiá bái xué','宣肺、宁心、宽胸、和胃。



',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,1,'中府穴','zhōng fŭ xué','肃降肺气，和胃利水，止咳平喘，清泻肺热，健脾补气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,1,'云门穴','yún mén xué','清宣肺气，泻四肢之热邪。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,1,'天府穴','tiān fŭ xué','清宣肺气，止衄，明目。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,1,'孔最穴','kŏng zuì xué','清热、发表、利咽。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,1,'经渠穴','jīng qú xué','降浊分清。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,2,'迎香穴','yíng xiāng xué','疏散风热，通利鼻窍。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,2,'合谷穴','hé gŭ xué','镇静止痛，通经活经，清热解表。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,2,'曲池穴','qŭ chí xué','转化脾土之热，燥化大肠经湿热，提供天部阳热之气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,2,'下廉穴','xià lián xué','疏泄阳明经热。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,2,'商阳穴','shāng yáng xué','气化大肠经体内水液，向大肠经体表经脉输送高温水湿气体。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,2,'上廉穴','shàng lián xué','调理肠胃，通经活络。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,2,'二间穴','èr jiān xué','解表，清热，利咽。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,2,'手五里穴','shŏu wŭ lĭ xué','理气散结，通经活络。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,2,'偏历穴','piān lì xué','治疗肘臂部痪痛、麻木、拘挛、瘰疬等。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,2,'巨骨穴','jù gŭ xué','消肿散结。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,2,'天鼎穴','tiān dĭng xué','利咽喉，清肺气。



',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,2,'温溜穴','wēn liū xué','治疗头痛、面肿、肩臂酸痛、肠鸣腹痛等。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,2,'扶突穴','fú tū xué','消肿散结，清咽开音。



',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,2,'口禾髎穴','kŏu hé liáo xué','开关通窍。

',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,2,'臂臑穴','bì nào xué','清热明目，通经通络。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,2,'阳溪穴','yáng xī xué','祛风泄火。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,2,'手三里穴','shŏu sān lĭ xué','通经活络，清热明目，调理肠胃。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,2,'肩髃穴','jiān yú xué','疏散经络风湿，清泄阳明气火，通利关节，祛邪解热。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,2,'三间穴','sān jiān xué','泄热利咽，调腑通便。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,2,'肘髎穴','zhŏu liáo xué','舒筋活络。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'足三里穴','zú sān lĭ xué','具有调理脾胃、补中益气、通经活络、疏风化湿、扶正祛邪之功能。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'丰隆穴','fēng lóng xué','止咳平喘，健脾化痰，和胃降逆，开窍。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'水道穴','shuĭ dào xué','利水通淋消肿，调经止痛。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'乳根穴','rŭ gēn xué','通乳化瘀，宣肺利气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'承泣穴','chéng qì xué','疏风清热，明目止痛。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'人迎穴','rén yíng xué','接收胃经气血并分流胸腹。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'四白穴','sì bái xué','散发脾热，向天部提供水湿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'天枢穴','tiān shū xué','疏调肠腑、理气行滞、消食。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'地仓穴','dì cāng xué','分流胃经地部经水，为阳跷脉提供阳热之气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'上巨虚穴','shàng jù xū xué','调和肠胃，通经活络。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'内庭穴','nèi tíng xué','清胃热，化积滞。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'下关穴','xià guān xué','利口舌咽喉。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'气冲穴','qì chōng xué','将冲脉之气渗灌胃经。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'犊鼻穴','dú bí xué','祛风湿，通经活络，疏风散寒，理气消肿，利关节止痛。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'大巨穴','dà jù xué','调肠，利气，固肾气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'头维穴','tóu wéi xué','祛风泄火，止痛明目。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'解溪穴','jiĕ xī xué','理脾，化湿，清胃热。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'缺盆穴','quē pén xué','理气活血止痛。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'冲阳穴','chōng yáng xué','和胃化痰，通络宁神。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'大迎穴','dà yíng xué','祛风，利口齿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'水突穴','shuĭ tū xué','冷却循颈项上炎的火热之气并为天部提供水湿阳气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'气舍穴','qì shĕ xué','冷却循颈项上炎的火热之气并为天部提供水湿阳气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'气户穴','qì hù xué','燥化胃经水湿，向天部输送阳热之气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'库房穴','kù fáng xué','存储脾土微粒，燥化脾土水湿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'屋翳穴','wū yì xué','散化胸部之热，为胸部提供阳热之气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'条口穴','tiáo kŏu xué','调肠胃，利气，清热。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'膺窗穴','yīng chuāng xué','冷却循颈项上炎的火热之气并为天部提供水湿阳气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'不容穴','bù róng xué','冷却循颈项上炎的火热之气并为天部提供水湿阳气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'梁丘穴','liáng qiū xué','祛风除湿，理气和胃，通经活络。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'承满穴','chéng măn xué','理气和胃，降逆止呕。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'归来穴','guī lái xué','理气，提胞，治疝。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'伏兔穴','fú tù xué','祛寒湿，利腰膝。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'梁门穴','liáng mén xué','缓解治疗胃痛、呕吐、泄泻。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'关门穴','guān mén xué','脾土微粒屯留穴周内外，经水则循胃经下行。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'太乙穴','tài yĭ xué','食欲缺乏，腹泻，腹胀，涤痰，安神。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'外陵穴','wài líng xué','沉降胃经经气中的脾土尘埃。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'阴市穴','yīn shì xué','湿下焦、强腰膝、散寒湿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'颊车穴','jiá chē xué','祛风清热，开关通络。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'厉兑穴','lì duì xué','清热和胃，苏厥醒神，通经活络。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'乳中穴','rŭ zhōng xué','男子为定位标志，女子为喂乳之用。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'巨髎穴','jù liáo xué','冷降胃浊。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'滑肉门穴','huá ròu mén xué','运化脾土。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'下巨虚穴','xià jù xū xué','',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'髀关穴','bì guān xué','强腰膝，通经络。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,3,'陷谷穴','xiàn gŭ xué','用于感冒，胸膜炎，胃炎，肠炎，肾炎。下肢瘫痪，足扭伤的治疗。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,4,'血海穴','xuè hăi xué','活血通络，祛风止痒。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,4,'三阴交穴','sān yīn jiāo xué','益气壮阳，健脾胃，益肝肾，调经带。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,4,'阴陵泉穴','yīn líng quán xué','清利湿热，健脾理气，益肾调经，通经活络。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,4,'太白穴','tài bái xué','健脾补脾。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,4,'大横穴','dà héng xué','转运脾经水湿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,4,'公孙穴','gōng sūn xué','扶脾胃，理气机，调血海，和冲脉。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,4,'商丘穴','shāng qiū xué','健脾化湿，通调肠胃。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,4,'大包穴','dà bāo xué','统血养经，宽胸止痛。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,4,'地机穴','dì jī xué','和脾理血，调燮胞宫。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,4,'冲门穴','chōng mén xué','理血，调下焦。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,4,'大都穴','dà dū xué','散发脾热。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,4,'府舍穴','fŭ shĕ xué','气血物质为地部经水。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,4,'食窦穴','shí dòu xué','气血物质为脾土微粒与经水的混合物。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,4,'天溪穴','tiān xī xué','宽胸通乳，理气止咳。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,4,'胸乡穴','xiōng xiāng xué','由本穴输散于脾经之外的胸部。外传脾气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,4,'隐白穴','yĭn bái xué','开窍醒神，调经统血，健脾回阳。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,4,'腹结穴','fù jié xué','去湿健脾，理气调肠。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,4,'漏谷穴','lòu gŭ xué','沉降脾经阴浊。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,4,'箕门穴','jī mén xué','运化脾土微粒输送人体各部。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,4,'腹哀穴','fù āi xué','健脾和胃，理气调肠。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,4,'周荣穴','zhōu róng xué','咳嗽，气逆；胸胁胀满',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,5,'少冲穴','shào chōng xué','生发心气，清热熄风，醒神开窍。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,5,'少府穴','shào fŭ xué','发散心火。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,5,'神门穴','shén mén xué','补益心气，安定心神。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,5,'极泉穴','jí quán xué','宽胸宁神。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,5,'青灵穴','qīng líng xué','运化心血。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,5,'通里穴','tōng lĭ xué','通经活络、养血安神',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,5,'少海穴','shào hăi xué','理气通络，益心安神，降浊升清。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,5,'灵道穴','líng dào xué','安神，宁心，通络。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,5,'阴郄穴','yīn qiè xué','沟通心肾。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,6,'后溪穴','hòu xī xué','清心安神， 通经活络。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,6,'养老穴','yăng lăo xué','清头明目，舒筋活络。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,6,'天宗穴','tiān zōng xué','舒筋活络，理气消肿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,6,'天窗穴','tiān chuāng xué','疏散内热',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,6,'肩贞穴','jiān zhēn xué','舒筋利节，通络散结。

',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,6,'天容穴','tiān róng xué','传递水湿',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,6,'颧髎穴','quán liáo xué','治疗三叉神经痛、面神经麻痹、面肌痉挛等。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,6,'少泽穴','shào zé xué','生发金气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,6,'臑俞穴','nào shū xué','舒筋活络，化痰消肿。



',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,6,'曲垣穴','qŭ yuán xué','舒筋活络， 疏风止痛。



',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,6,'肩外俞穴','jiān wài shū xué','舒筋活络， 祛风止痛。



',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,6,'肩中俞穴','jiān zhōng shū xué','解表宣肺。



',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,6,'阳谷穴','yáng gŭ xué','疏风清热，通经活络。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,6,'听宫穴','tīng gōng xué','聪耳开窍。 ',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,6,'支正穴','zhī zhèng xué','安神定志，清热解表，通经活络。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,6,'小海穴','xiăo hăi xué','生发小肠之气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,6,'腕骨穴','wàn gŭ xué','舒筋活络，泌别清浊。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,6,'秉风穴','bĭng fēng xué','散风活络，止咳化痰。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,6,'前谷穴','qián gŭ xué','疏风清热，活络通乳。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'膏肓穴','gāo huāng xué','散热排脂。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'昆仑穴','kūn lún xué','安神清热，舒筋活络。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'肺俞穴','fèi shū xué','温肺润燥，止咳平喘。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'申脉穴','shēn mài xué','补阳益气，疏导水湿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'承山穴','chéng shān xué','理气止痛，舒筋活络，消痔。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'肾俞穴','shèn shū xué','外散肾脏之热。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'委中穴','wĕi zhōng xué','通经活络，活血化瘀，清热凉血，开窍启闭，定志安神。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'睛明穴','jīng míng xué','降温除浊。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'攒竹穴','cuán zhú xué','吸热生气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'心俞穴','xīn shū xué','散发心室之热。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'天柱穴','tiān zhù xué','清头明目，强筋骨。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'肝俞穴','gān shū xué','疏肝利胆，理气明目。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'殷门穴','yīn mén xué','舒筋通络，强腰膝。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'秩边穴','zhì biān xué','健腰腿、利下焦。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'合阳穴','hé yáng xué','舒筋通络，调经止带，强健腰膝。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'飞扬穴','fēi yáng xué','清热安神，舒筋活络。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'脾俞穴','pí shū xué','健脾和胃，利湿升清。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'大肠俞穴','dà cháng shū xué','理气降逆，调和肠胃。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'至阴穴','zhì yīn xué','正胎催产，理气活血，清头明目。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'膈俞穴','gé shū xué','理气宽胸，活血通脉。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'风门穴','fēng mén xué','伤风咳嗽，头痛发热，胸背彻痛，项强，痈疽发背等。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'通天穴','tōng tiān xué','清热除湿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'玉枕穴','yù zhĕn xué','升清降浊。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'志室穴','zhì shì xué','益肾固精，清热利湿，强壮腰膝。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'次髎穴','cì liáo xué','补益下焦，强腰利湿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'大杼穴','dà zhù xué','清热解表，强筋骨。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'京骨穴','jīng gŭ xué','清热止痉，明目舒筋。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'束骨穴','shù gŭ xué','通经活络，清头明目。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'膀胱俞穴','páng guāng shū xué','外膀胱腑之热。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'胃俞穴','wèi shū xué','和胃健脾，理中降逆。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'承扶穴','chéng fú xué','通便消痔，舒筋活络。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'胆俞穴','dăn shū xué','外散胆腑之热。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'三焦俞穴','sān jiāo shū xué','外散三焦腑之热。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'眉冲穴','méi chōng xué','疏风清热，通络明目。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'曲差穴','qū chā xué','疏风清热，通络明目。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'承光穴','chéng guāng xué','疏风清热，通络明目。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'络却穴','luò què xué','清热安神，平肝熄风。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'厥阴俞穴','jué yīn shū xué','宽胸理气，活血止痛。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'督俞穴','dū shū xué','理气止痛，强心通脉。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'气海俞穴','qì hăi shū xué','生发阳气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'关元俞穴','guān yuán shū xué','外散小腹内部之热。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'小肠俞穴','xiăo cháng shū xué','外散小肠腑之热。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'承筋穴','chéng jīn xué','舒筋活络，强健腰膝，清泄肠热。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'跗阳穴','fū yáng xué','吸热化湿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'金门穴','jīn mén xué','补阳益气，疏导水湿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'中膂俞穴','zhōng lǚ shū xué','益肾温阳，调理下焦。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'上髎穴','shàng liáo xué','调理下焦，通经活络。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'中髎穴','zhōng liáo xué','补益下焦，强腰利湿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'浮郄穴','fú qiè xué','清热降温。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'委阳穴','wĕi yáng xué','益气补阳。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'附分穴','fù fēn xué','运化膀胱经水湿上行天部。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'魄户穴','pò hù xué','理气降逆，舒筋活络。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'譩譆穴','yī xī xué','宣肺理气，通络止痛。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'膈关穴','gé guān xué','宽胸理气，和胃降逆。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'魂门穴','hún mén xué','疏肝理气，降逆和胃。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'阳纲穴','yáng gāng xué','疏肝利胆，健脾和中。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'意舍穴','yì shĕ xué','健脾和胃，利胆化湿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'胃仓穴','wèi cāng xué','和胃健脾，消食导滞。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'肓门穴','huāng mén xué','理气和胃，清热消肿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'胞肓穴','bāo huāng xué','补肾强腰，通利二便。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'足通谷穴','zú tōng gŭ xué','清热安神，清头明目。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'白环俞穴','bái huán shū xué','调经止带，益肾固精。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'下髎穴','xià liáo xué','调经止带，补益下焦，强腰利湿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'会阳穴','huì yáng xué','温里止痛，清热利湿，益肾固带。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'神堂穴','shén táng xué','宽胸理气，宁心安神。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'仆参穴','pú cān xué','益气壮阳，舒筋活络，强壮腰膝。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,7,'五处穴','wŭ chù xué','疏风清热，通络明目。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,8,'太溪穴','tài xī xué','滋补肾阴。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,8,'涌泉穴','yŏng quán xué','散热生气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,8,'照海穴','zhào hăi xué','吸热生气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,8,'复溜穴','fù liū xué','补肾益阴，温阳利水',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,8,'阴谷穴','yīn gŭ xué','益肾调经，理气止痛。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,8,'然谷穴','rán gŭ xué','泻热、消胀、宁神。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,8,'筑宾穴','zhù bīn xué','理下焦、清神。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,8,'横骨穴','héng gŭ xué','受热后循肾经上传大赫穴及输散腹部各处。清热除燥。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,8,'大钟穴','dà zhōng xué','益肾平喘，调理二便。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,8,'大赫穴','dà hè xué','循肾经上传。散热生气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,8,'四满穴','sì măn xué','散热冷降下行于中注穴。除湿降浊。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,8,'中注穴','zhōng zhù xué','利湿健脾。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,8,'商曲穴','shāng qŭ xué','运化水湿，清热降温。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,8,'阴都穴','yīn dū xué','调肠胃、理气滞',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,8,'气穴','qì xué','补益肾气、调理下焦。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,8,'交信穴','jiāo xìn xué','益肾调经，调理二便。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,8,'腹通谷穴','fù tōng gŭ xué','主治消化不良等。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,8,'幽门穴','yōu mén xué','降逆和胃.',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,8,'步廊穴','bù láng xué','宽胸、利气、降逆。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,8,'神封穴','shén fēng xué','降浊升清。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,8,'灵墟穴','líng xū xué','宽胸、利气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,8,'神藏穴','shén cáng xué','宽胸、利气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,8,'彧中穴','yù zhōng xué','生气壮阳。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,8,'俞府穴','shū fŭ xué','利气、平喘',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,8,'水泉穴','shuĭ quán xué','清热益肾，通经活络。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,8,'肓俞穴','huāng shū xué','积脂散热。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,8,'石关穴','shí guān xué','益气壮阳，攻坚消满，调理气血。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,9,'内关穴','nèi guān xué','疏导水湿、宁心安神、理气镇痛。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,9,'天泉穴','tiān quán xué','散热增湿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,9,'大陵穴','dà líng xué','燥湿生气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,9,'劳宫穴','láo gōng xué','散热燥湿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,9,'曲泽穴','qŭ zé xué','清热除烦，舒筋活血。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,9,'郄门穴','qiè mén xué','宁心，理气，活血。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,9,'间使穴','jiān shĭ xué','宽胸和胃，清心安神，截疟。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,9,'天池穴','tiān chí xué','宽胸、消胀。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,9,'中冲穴','zhōng chōng xué','苏厥开窍，清心泄热。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,10,'会宗穴','huì zōng xué','清利三焦，安神定志，疏通经络。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,10,'三阳络穴','sān yáng luò xué','舒筋通络，开窍镇痛。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,10,'清冷渊穴','qīng lĕng yuān xué','运化水湿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,10,'消泺穴','xiāo luò xué','除湿降浊。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,10,'臑会穴','nào huì xué','降浊除湿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,10,'天髎穴','tiān liáo xué','收引天部湿浊。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,10,'天牖穴','tiān yŏu xué','清头明目，通经活络。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,10,'颅息穴','lú xī xué','清热降浊。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,10,'耳和髎穴','ĕr hé liáo xué','清热降浊',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,10,'阳池穴','yáng chí xué','生发阳气，沟通表里。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,10,'丝竹空穴','sī zhú kōng xué','疏风清热，明目安神。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,10,'肩髎穴','jiān liáo xué','升清降浊。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,10,'翳风穴','yì fēng xué','聪耳通窍，散内泄热。 ',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,10,'四渎穴','sì dú xué','开窍聪耳，清利咽喉。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,10,'天井穴','tiān jĭng xué','行气散结，安神通络。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,10,'瘛脉穴','zhì mài xué','熄风解痉，活络通窍。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,10,'支沟穴','zhī gōu xué','清利三焦，通腑降逆。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,10,'耳门穴','ĕr mén xué','聪耳，利牙关。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,10,'关冲穴','guān chōng xué','泄热、利喉舌、开窍、活血通络。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,10,'中渚穴','zhōng zhŭ xué','传递气血，生发风气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,10,'液门穴','yè mén xué','降浊升清。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,10,'角孙穴','jiăo sūn xué','吸湿降浊。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,10,'外关穴','wài guān xué','联络气血，补阳益气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'阳陵泉穴','yáng líng quán xué','利胆祛湿，通经活络。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'五枢穴','wŭ shū xué','调带脉，理下焦。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'维道穴','wéi dào xué','调带脉，理下焦，舒筋，益肾。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'阳交穴','yáng jiāo xué','利腿足、镇惊、清热。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'环跳穴','huán tiào xué','健脾益气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'听会穴','tīng huì xué','清降寒浊。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'完骨穴','wán gŭ xué','疏导水液',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'渊腋穴','yuān yè xué','排泄水液',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'风池穴','fēng chí xué','壮阳益气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'外丘穴','wài qiū xué','舒肝理气，通络安神。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'阳辅穴','yáng fŭ xué','祛风湿、利筋骨，泻胆火。



',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'地五会穴','dì wŭ huì xué','利胸胁、消乳肿。

',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'足窍阴穴','zú qiào yīn xué','泄热、利胁、通窍。

',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'膝阳关穴','xī yáng guān xué','运动系统疾病：膝关节炎，下肢瘫痪，膝关节及周围软组织疾患，脚气；

精神神经系统疾病：股外侧皮神经麻痹，坐骨神经痛。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'肩井穴','jiān jĭng xué','疏导水液。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'带脉穴','dài mài xué','健脾利湿，调经止带。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'悬钟穴','xuán zhōng xué','舒筋活络、清热生气、舒肝益肾。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'日月穴','rì yuè xué','收募胆经气血。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'风市穴','fēng shì xué','舒筋活络，祛风化湿，通经活络。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'京门穴','jīng mén xué','健腰，利水，消胀。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'侠溪穴','xiá xī xué','平肝熄风，消肿止痛。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'中渎穴','zhōng dú xué','疏导水湿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'阳白穴','yáng bái xué','生气壮阳。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'光明穴','guāng míng xué','联络肝胆气血。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'丘墟穴','qiū xū xué','生发风气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'瞳子髎穴','tóng zĭ liáo xué','降浊去湿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'率谷穴','shuài gŭ xué','有疏风活络、镇惊止痛的作用。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'浮白穴','fú bái xué','有疏肝利胆、散风通经的作用。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'脑空穴','năo kōng xué','降浊分清。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'足临泣穴','zú lín qì xué','运化风气，冷降水湿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'居髎穴','jū liáo xué','舒筋活络，益肾强健。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'上关穴','shàng guān xué','祛风镇惊，聪耳利齿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'颔厌穴','hàn yàn xué','祛风镇惊。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'悬颅穴','xuán lú xué','祛风明目，清热消肿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'悬厘穴','xuán lí xué','祛风镇惊。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'曲鬓穴','qŭ bìn xué','祛头风，利口颊。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'天冲穴','tiān chōng xué','祛风，定惊，清热消肿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'头窍阴穴','tóu qiào yīn xué','祛风，清热，舒筋。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'本神穴','bĕn shén xué','宁神，祛风，舒筋。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'头临泣穴','tóu lín qì xué','明目，祛风，清神。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'目窗穴','mù chuāng xué','明目开窍，祛风定惊。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'正营穴','zhèng yíng xué','祛风，利口齿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'承灵穴','chéng líng xué','祛风，通窍。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,11,'辄筋穴','zhé jīn xué','降逆平喘，理气止痛。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,12,'太冲穴','tài chōng xué','行气解郁，活血化淤，清肝利胆。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,12,'章门穴','zhāng mén xué','有息风的作用。中医认为各种过敏多多少少都与“风”有关。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,12,'曲泉穴','qŭ quán xué','清肝火、祛湿热。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,12,'中封穴','zhōng fēng xué','清泄肝胆，通利下焦，舒筋通络。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,12,'中都穴','zhōng dū xué','舒肝理气，调经止血。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,12,'足五里穴','zú wŭ lĭ xué','有舒理肝经之气，清利下焦湿热之功。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,12,'阴廉穴','yīn lián xué','调经止带，通利下焦。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,12,'急脉穴','jí mài xué','治疗少腹痛,月经不调,应挺,疝气,应茎痛,腿痛等。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,12,'行间穴','háng jiān xué','清肝泻热，凉血安神，熄风活络。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,12,'期门穴','qī mén xué','健脾疏肝，理气活血。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,12,'蠡沟穴','lí gōu xué','有疏肝理气、调理经脉的作用。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,12,'大敦穴','dà dūn xué','回阳救逆，调经通淋。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,12,'膝关穴','xī guān xué','散风祛湿，疏通关节。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,12,'阴包穴','yīn bāo xué','调经止痛，利尿通淋。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,13,'膻中穴','shān zhōng xué','调理肺气不降之上逆、心之气血郁滞以及肝气郁结等症。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,13,'关元穴','guān yuán xué','具有补肾壮阳、温通经络、理气和血、补虚益损，壮一身之元气等作用。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,13,'气海穴','qì hăi xué','温阳益气、化湿理气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,13,'神阙穴','shén què xué','温补元阳，健运脾胃，复苏固脱之效。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,13,'会阴穴','huì yīn xué','醒神镇惊，通调二阴。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,13,'阴交穴','yīn jiāo xué','收引浊气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,13,'中庭穴','zhōng tíng xué','宽胸理气、疏膈利气、和胃降逆。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,13,'紫宫穴','zĭ gōng xué','散热益气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,13,'璇玑穴','xuán jī xué','宽胸利肺、止咳平喘。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,13,'中脘穴','zhōng wăn xué','和胃健脾、降逆利水。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,13,'下脘穴','xià wăn xué','疏导水湿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,13,'天突穴','tiān tū xué','吸热生气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,13,'廉泉穴','lián quán xué','利喉舒舌、消肿止痛。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,13,'水分穴','shuĭ fēn xué','分流水湿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,13,'巨阙穴','jù què xué','安神宁心，宽胸止痛。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,13,'上脘穴','shàng wăn xué','和胃降逆、化痰宁神。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,13,'石门穴','shí mén xué','募集三焦经气血。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,13,'中极穴','zhōng jí xué','',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,13,'玉堂穴','yù táng xué','宽胸理气、止咳利咽。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,13,'承浆穴','chéng jiāng xué','清热疏风。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,13,'曲骨穴','qŭ gŭ xué','通利小便，调经止痛。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,13,'鸠尾穴','jiū wĕi xué','理气，安心宁神、宽胸定喘。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,13,'建里穴','jiàn lĭ xué','消食导滞，和胃健脾、通降腑气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,13,'华盖穴','huá gài xué','宽胸利肺、止咳平喘。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,14,'悬枢穴','xuán shū xué','壮阳益气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,14,'脊中穴','jĭ zhōng xué','壮阳益气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,14,'陶道穴','táo dào xué','补益肺气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,14,'强间穴','qiáng jiān xué','升阳益气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,14,'后顶穴','hòu dĭng xué','祛风、明目。



',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,14,'囟会穴','xìn huì xué','补益肺气，传导水湿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,14,'兑端穴','duì duān xué','开窍醒脑，宁神醒脑，生津止渴。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,14,'龈交穴','yín jiāo xué','开窍，明目。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,14,'身柱穴','shēn zhù xué','补气壮阳。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,14,'大椎穴','dà zhuī xué','清热解表、截虐止痫。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,14,'百会穴','băi huì xué','开窍醒脑、回阳固脱。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,14,'神庭穴','shén tíng xué','除湿化湿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,14,'命门穴','mìng mén xué','接续督脉气血。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,14,'神道穴','shén dào xué','壮阳益气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,14,'风府穴','fēng fŭ xué','散热吸湿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,14,'长强穴','cháng qiáng xué','向体表输送阳热之气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,14,'腰阳关穴','yāo yáng guān xué','祛寒除湿，舒筋活络。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,14,'筋缩穴','jīn suō xué','平肝熄风、宁神镇痉。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,14,'素髎穴','sù liáo xué','除湿降浊。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,14,'至阳穴','zhì yáng xué','理气，利胆退黄、宽胸利膈。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,14,'腰俞穴','yāo shū xué','调经清热，散寒除湿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,14,'上星穴','shàng xīng xué','降浊升清。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,14,'脑户穴','năo hù xué','醒神开窍、平肝熄风。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,14,'哑门穴','yă mén xué','散风熄风、开窍醒神。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,14,'中枢穴','zhōng shū xué','理气，健脾利湿、清热止痛。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,14,'灵台穴','líng tái xué','益气补阳。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,14,'前顶穴','qián dĭng xué','熄风醒脑、宁神镇静。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,14,'水沟穴','shuĭ gōu xué','醒神开窍、清热熄风。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,14,'印堂穴','yìn táng xué','清头明目，通鼻开窍。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,15,'五枢穴','wŭ shū xué','调带脉，理下焦。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,15,'维道穴','wéi dào xué','调带脉，理下焦，舒筋，益肾。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,15,'带脉穴','dài mài xué','健脾利湿，调经止带。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,16,'会阴穴','huì yīn xué','醒神镇惊，通调二阴。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,16,'阴交穴','yīn jiāo xué','收引浊气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,16,'气冲穴','qì chōng xué','将冲脉之气渗灌胃经。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,16,'横骨穴','héng gŭ xué','受热后循肾经上传大赫穴及输散腹部各处。清热除燥。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,16,'大赫穴','dà hè xué','循肾经上传。散热生气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,16,'四满穴','sì măn xué','散热冷降下行于中注穴。除湿降浊。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,16,'中注穴','zhōng zhù xué','利湿健脾。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,16,'商曲穴','shāng qŭ xué','运化水湿，清热降温。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,16,'阴都穴','yīn dū xué','调肠胃、理气滞',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,16,'气穴','qì xué','补益肾气、调理下焦。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,16,'腹通谷穴','fù tōng gŭ xué','主治消化不良等。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,16,'幽门穴','yōu mén xué','降逆和胃.',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,16,'肓俞穴','huāng shū xué','积脂散热。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,16,'石关穴','shí guān xué','益气壮阳，攻坚消满，调理气血。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,17,'大横穴','dà héng xué','转运脾经水湿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,17,'天突穴','tiān tū xué','吸热生气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,17,'廉泉穴','lián quán xué','利喉舒舌、消肿止痛。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,17,'期门穴','qī mén xué','健脾疏肝，理气活血。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,17,'筑宾穴','zhù bīn xué','理下焦、清神。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,17,'府舍穴','fŭ shĕ xué','气血物质为地部经水。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,17,'腹哀穴','fù āi xué','健脾和胃，理气调肠。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,18,'阳交穴','yáng jiāo xué','利腿足、镇惊、清热。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,18,'天髎穴','tiān liáo xué','收引天部湿浊。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,18,'风池穴','fēng chí xué','壮阳益气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,18,'肩井穴','jiān jĭng xué','疏导水液。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,18,'风府穴','fēng fŭ xué','散热吸湿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,18,'头维穴','tóu wéi xué','祛风泄火，止痛明目。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,18,'臑俞穴','nào shū xué','舒筋活络，化痰消肿。



',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,18,'阳白穴','yáng bái xué','生气壮阳。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,18,'哑门穴','yă mén xué','散风熄风、开窍醒神。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,18,'脑空穴','năo kōng xué','降浊分清。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,18,'金门穴','jīn mén xué','补阳益气，疏导水湿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,18,'本神穴','bĕn shén xué','宁神，祛风，舒筋。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,18,'头临泣穴','tóu lín qì xué','明目，祛风，清神。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,18,'目窗穴','mù chuāng xué','明目开窍，祛风定惊。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,18,'正营穴','zhèng yíng xué','祛风，利口齿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,18,'承灵穴','chéng líng xué','祛风，通窍。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,19,'照海穴','zhào hăi xué','吸热生气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,19,'睛明穴','jīng míng xué','降温除浊。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,19,'交信穴','jiāo xìn xué','益肾调经，调理二便。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,20,'天髎穴','tiān liáo xué','收引天部湿浊。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,20,'申脉穴','shēn mài xué','补阳益气，疏导水湿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,20,'承泣穴','chéng qì xué','疏风清热，明目止痛。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,20,'地仓穴','dì cāng xué','分流胃经地部经水，为阳跷脉提供阳热之气。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,20,'睛明穴','jīng míng xué','降温除浊。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,20,'巨骨穴','jù gŭ xué','消肿散结。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,20,'臑俞穴','nào shū xué','舒筋活络，化痰消肿。



',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,20,'肩髃穴','jiān yú xué','疏散经络风湿，清泄阳明气火，通利关节，祛邪解热。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,20,'巨髎穴','jù liáo xué','冷降胃浊。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,20,'跗阳穴','fū yáng xué','吸热化湿。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,20,'居髎穴','jū liáo xué','舒筋活络，益肾强健。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,20,'仆参穴','pú cān xué','益气壮阳，舒筋活络，强壮腰膝。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'四神聪穴','sì shén cōng xué','现代常用于治疗神经性头痛、脑血管病、高血压、神经衰弱、精神病、小儿多动症、血管性痴呆、大脑发育不全等。配神门、三阴交主治失眠；配太冲、风池主治头痛、头昏。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'当阳穴','dāng yáng xué','疏风通络，清头明目。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'鱼腰穴','yú yāo xué','镇惊安神，疏风通络。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'太阳穴','tài yáng xué','清肝明目，通络止痛。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'耳尖穴','ĕr jiān xué','清热祛风，解痉止痛。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'球后穴','qiú hòu xué','清热明目。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'上迎香穴','shàng yíng xiāng xué','清热散风，宣通鼻窍。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'内迎香穴','nèi yíng xiāng xué','',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'聚泉穴','jù quán xué','清散风热，祛邪开窍',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'海泉穴','hăi quán xué','舌缓不收、重舌肿胀',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'金津穴','jīn jīn xué','清泻热邪，生津止渴',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'玉液穴','yù yè xué','清泻热邪，生津止渴',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'翳明穴','yì míng xué','明目聪耳，宁心安神',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'颈百劳穴','jĭng băi láo xué','滋补肺阴，舒筋活络',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'子宫穴','zĭ gōng xué','调经理气，升提下陷',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'定喘穴','dìng chuăn xué','止咳平喘，通宣理肺',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'夹脊穴','jiā jĭ xué','调节脏腹机能',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'胃脘下俞穴','wèi wăn xià shū xué','健脾和胃，理气止痛',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'痞根穴','pĭ gēn xué','健脾和胃，理气止痛',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'下极俞穴','xià jí shū xué','强腰健肾。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'腰宜穴','yāo yí xué','理气和中。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'腰眼穴','yāo yăn xué','强腰健肾',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'十七椎穴','shí qī zhuī xué','强腰补肾，主理胞宫',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'腰奇穴','yāo qí xué','安神志',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'肘尖穴','zhŏu jiān xué','散结化瘀，清热解毒',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'二白穴','èr bái xué','调和气血，提肛消痔',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'中泉穴','zhōng quán xué','宽胸理气，和胃止痛',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'中魁穴','zhōng kuí xué','',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'大骨空穴','dà gŭ kōng xué','退翼明目',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'小骨空穴','xiăo gŭ kōng xué','明目止痛。',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'腰痛点穴','yāo tòng diăn xué','舒筋通络，化瘀止痛',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'外劳宫穴','wài láo gōng xué','通经活络，祛风止痛',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'八邪穴','bā xié xué','祛风通络，清热解毒',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'四缝穴','sì fèng xué','消食导滞，祛痰化积',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'十宣穴','shí xuān xué','清热开窍醒神',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'髋骨穴','kuān gŭ xué','',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'鹤顶穴','hè dĭng xué','通利关节',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'百虫窝穴','băi chóng wō xué','祛风活血，驱虫止痒',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'内膝眼穴','nèi xī yăn xué','活血通络，疏利关节',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'膝眼穴','xī yăn xué','活血通络，疏利关节',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'胆囊穴','dăn náng xué','利胆通腑',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'阑尾穴','lán wĕi xué','清热解毒，化瘀通腑',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'内踝尖穴','nèi huái jiān xué','舒筋活络',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'外踝尖穴','wài huái jiān xué','舒筋活络',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'八风穴','bā fēng xué','祛风通络，清热解毒',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'独阴穴','dú yīn xué','调理冲任',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'气端穴','qì duān xué','通络开窍',null,null,null);
INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES (null,null,null,21,'安眠穴','','平肝熄风，宁神定志，镇静助眠。',null,null,null);
