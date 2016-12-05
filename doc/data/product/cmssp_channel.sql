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


INSERT INTO `cmssp_channel`(`id`, `pic`, `effect`, `visc`, `name`, `time`, `shichen`, `ext_data`) VALUES (null,'http://img04.sogoucdn.com/app/a/200574/3b86bbf038dae7bb874708fc06cde0bf.jpg','是动则病，肺胀满，膨膨而喘咳，缺盆中痛，甚则交两手而瞀，此为臂厥。 是主肺所生病者，咳，上气，喘喝，烦心，胸满，臑臂内前廉痛厥，掌中热。 气盛有余，则肩背痛，风寒汗出中风，小便数而欠；气虚则肩背痛、寒，少气不足以息，溺色变。','肺','手太阴肺经','3-5点','寅时','肺手太阴之脉，起于中焦,下络大肠,还循胃口,上隔属肺。从肺系，横出腋下,下循臑内，行少阴、心主之前，下肘中，循臂内上骨下廉，入寸口，上鱼，循鱼际，出大指之端。 其支者：从腕后，直出次指内廉，出其端。');
INSERT INTO `cmssp_channel`(`id`, `pic`, `effect`, `visc`, `name`, `time`, `shichen`, `ext_data`) VALUES (null,'http://img03.sogoucdn.com/app/a/200574/3c4b9f94a694ac32d4f25508de399a0f.jpg','是动则病，齿痛，颈肿。是主津所生病者：目黄，口干，鼽衄，喉痹，肩前臑痛，大指次指痛不可用。气有余，则当脉所过者热肿；虚，则寒栗不复。','大肠','手阳明大肠经','5-7点','卯时','大肠手阳明之脉，起于大指次指之端，循指上廉，出合谷两骨之间，上入两筋之中，循臂上廉，入肘外廉，上臑外前廉，上肩，出颙骨之前廉，上出于柱骨之会上，下入缺盆，络肺，下隔，属大肠。其支者:从缺盆上颈，贯颊，入下齿中；还出夹口，交人中-左之右，右之左，上夹鼻孔。');
INSERT INTO `cmssp_channel`(`id`, `pic`, `effect`, `visc`, `name`, `time`, `shichen`, `ext_data`) VALUES (null,'http://img01.sogoucdn.com/app/a/200574/00dcadca455d31da5dcb4ac314b05aac.jpg','是动则病，洒洒振寒，善伸，数欠，颜黑，病至则恶人与火，闻木声则惕然而惊，心欲动，独闭户塞牖而处；甚则欲上高而歌，弃衣而走；贲响腹胀，是为骭厥。是主血所生病者：狂，疟，温淫，汗出，鼽衄，口歪，唇胗，颈肿，喉痹，大腹水肿，膝髌肿痛；循膺、乳、气街、股、伏兔、骭外廉、足跗上皆痛，中指不用。气盛，则身以前皆热，其有余于胃，则消谷善饥，溺色黄；气不足，则身以前皆寒栗，胃中寒，则胀满。','胃','足阳明胃经','7-9点','辰时','胃足阳明之脉，起于鼻，交頞中，旁约太阳之脉，下循鼻外，入上齿中，还出夹口，环唇，下交承浆，却循颐后下廉，出大迎，循颊车，上耳前，过客主人，循发际，至额颅。其支者：从大迎前，下人迎，循喉咙，入缺盆，下膈，属胃，络脾。其直者：从缺盆下乳内廉，下夹脐，入气街中。其支者：起于胃口，下循腹里，下至气街中而合。以下髀关，抵伏兔，下膝髌中，下循胫外廉，下足跗，入中指内间。其支者：下膝三寸而别，下入中指外间。其支者：别跗上，入大指间，出其端。');
INSERT INTO `cmssp_channel`(`id`, `pic`, `effect`, `visc`, `name`, `time`, `shichen`, `ext_data`) VALUES (null,'http://img01.sogoucdn.com/app/a/200574/9a24e16cb01eee2bdaf22125d4819c8e.jpg','是动则病，舌本强，食则呕，胃脘痛，腹胀善噫，得后与气，则快然如衰，身体皆重。是主脾所生病者：舌本痛，体重不能动摇，食不下，烦心，心下急痛，溏葭泄，水闭，黄疸，不能卧，强立（欠）股膝内肿、厥、足大指不用。脾之大络……实则身尽痛，虚则百节皆纵。','脾','足太阴脾经','9-11点','巳时','脾足太阴之脉，起于大指之端，循指内侧白肉际，过核骨后，上内踝前廉，上踹内，循胫骨后，交出厥阴之前，上膝股内前廉，入腹，属脾，络胃，上隔，夹咽，连舌本，散舌下。其支者：复从胃，别上隔，注心中。脾之大络，名曰大包，出渊腋下三寸，布胸胁。');
INSERT INTO `cmssp_channel`(`id`, `pic`, `effect`, `visc`, `name`, `time`, `shichen`, `ext_data`) VALUES (null,'http://img04.sogoucdn.com/app/a/200574/afff6ed7d97b494d2fe21cdc1094dda3.jpg','是动则病，益干，心痛，渴而欲饮，是为臂厥。是主心所生病者：目黄，胁痛，臑臂内后廉痛、厥，掌中热。','心','手少阴心经','11-13点','午时','心手少阴之脉，起于心中，出属心系，下膈，络小肠。其支者：从心系，上夹咽，系目系。其直者：复从心系，却上肺，下出腋下，下循臑内后廉，行太阴、心主之后，下肘内，循臂内后廉，抵掌后锐骨之端，入掌内后廉，循小指之内，出其端。');
INSERT INTO `cmssp_channel`(`id`, `pic`, `effect`, `visc`, `name`, `time`, `shichen`, `ext_data`) VALUES (null,'http://img02.sogoucdn.com/app/a/200574/496811badd08e5b44db483425cf8136f.jpg','是动则病，益痛，颔肿，不可以顾，肩似拔，臑似折  是主“液”所生病者，耳聋，目黄，颊肿，颈，颔，肩，臑，肘臂外后廉痛。','小肠','手太阳小肠经','13-15点','未时','小肠手太阳之脉，起于小指之端，循手外侧上腕，出踝中，直上循臂骨下廉，出肘内侧两骨之间，上循臑外后廉，出肩解，绕肩胛，交肩上，入缺盆，络心，循咽下膈，抵胃，属小肠。其支者：从缺盆循颈，上颊，至目锐眦，却入耳中。其支者：别颊上拙，抵鼻，至目内眦（斜络于颧）。');
INSERT INTO `cmssp_channel`(`id`, `pic`, `effect`, `visc`, `name`, `time`, `shichen`, `ext_data`) VALUES (null,'http://img03.sogoucdn.com/app/a/200574/53a1d9b4a01d2b66f66b7743bba82b68.jpg','是动则病，冲头痛，目似脱，项如拔，脊痛，腰似折，髀不可以屈，腘如结，踹如裂，是为踝厥。是主筋所生病者，痔，疟，狂，癫疾，头囟项痛，目黄，泪出，鼽衄、项、背、腰、尻、腘、踹、脚皆痛，小指不用。','膀胱经','足太阳膀胱经','15-17点','申时','膀胱足太阳之脉，起于目内眦，上额，交巅。其支者：从巅至耳上角。其直者：从巅入络脑，还出别下项，循肩髆内，夹脊抵腰中，入循膂，络肾，属膀胱。其支者，从腰中，下夹脊，贯臀，入腘中。其支者，从髆内左右别下贯胛，夹脊内，过髀枢，循髀外后廉下合腘中-以后贯踹内，出外踝之后，循京骨至小指外侧。');
INSERT INTO `cmssp_channel`(`id`, `pic`, `effect`, `visc`, `name`, `time`, `shichen`, `ext_data`) VALUES (null,'http://img04.sogoucdn.com/app/a/200574/d51d1b5ca0d0a6a8f29d27e4454fa205.jpg','是动则病，饥不欲食，面如漆柴，咳唾则有血，喝喝而喘，坐而欲起，目荒荒如无所见，心如悬若饥状，气不足则善恐，心惕惕如人将捕之，是为骨厥。是主肾所生病者，口热、舌干、咽肿，上气，益干及痛，烦心，心痛，黄疸，肠辟，脊、股内后廉痛，痿厥，嗜卧，足下热而痛。','肾','足少阴肾经','17-19点','酉时','肾足少阴之脉，起于小指之下，邪走足心，出于然骨之下，循内踝之后，别入跟中，以上踹内，出腘内廉，上股内后廉，贯脊属肾，络膀胱。其直者，从肾上贯肝、膈，入肺中，循喉咙，夹舌本。其支者，从肺出，络心，注胸中。');
INSERT INTO `cmssp_channel`(`id`, `pic`, `effect`, `visc`, `name`, `time`, `shichen`, `ext_data`) VALUES (null,'http://img02.sogoucdn.com/app/a/200574/3fd4c5d8c939c18f694742c800b1cc37.jpg','是动则病，手心热，臂，肘挛急，腋肿；甚则胸胁支满，心中澹澹大动，面赤，目黄，喜笑不休。是主脉所生病者，烦心，心痛，掌中热。','心包','手厥阴心包经','19-21点','戌时','心主手厥阴心包络之脉，起于胸中，出属心包络，下膈，历络三焦。其支者，循胸出胁，下腋三寸，上抵腋下，循臑内，行太阴、少阴之间，入肘中，下臂，行两筋之间，入掌中，循中指，出其端。其支者，别掌中，循小指次指出其端。');
INSERT INTO `cmssp_channel`(`id`, `pic`, `effect`, `visc`, `name`, `time`, `shichen`, `ext_data`) VALUES (null,'http://img03.sogoucdn.com/app/a/200574/e9a92ec3e5b95c3c4fb6423054d2fa08.jpg','是动则病，耳聋，浑浑焞焞，嗌肿，喉痹。是主气所生病者，汗出，目锐眦痛，颊肿，耳后、肩、臑、肘、臂外皆痛，小指次指不用。','三焦','手少阳三焦经','21-23点','亥时','三焦手少阳之脉，起于小指次指之端，上出两指之间，循手表腕，出臂外两骨之间，上贯肘，循臑外上肩，而交出足少阳之后，入缺盆，布膻中，散络心包，下膈，遍属三焦。其支者，从膻中，上出缺盆，上项，系耳后，直上出耳上角，以屈下颊至拙。其支者，从耳后入耳中，出走耳前，过客主人，前交颊，至目锐眦。');
INSERT INTO `cmssp_channel`(`id`, `pic`, `effect`, `visc`, `name`, `time`, `shichen`, `ext_data`) VALUES (null,'http://img01.sogoucdn.com/app/a/200574/ead245d1bc9813e3f91e3a6c12f047bc.jpg','是动则病，口苦，善太息，心胁痛，不能转侧，甚则面微有尘，体无膏泽，足外反热，是为阳厥。是主骨所生病者，头痛，颔痛，目锐眦痛，缺盆中肿痛，腋下肿，马刀、侠瘿，汗出振寒，疟，胸胁、肋、髀、膝外至胫、绝骨、外踝前及诸节皆痛，小指次指不用。','胆','足少阳胆经','23-1点','子时','胆足少阳之脉，起于目锐眦，上抵头角，下耳后，循颈，行手少阳之前，至肩上，却交出手少阳之后，入缺盆。其支者，从耳后入耳中，出走耳前，至目锐眦后。其支者，别锐眦，下大迎，合于手少阳，抵于拙，下加颊车，下颈，合缺盆，以下胸中，贯膈，络肝，属胆，循胁里，出气街，绕毛际，横入髀厌中。其直者，从缺盆下腋，循胸，过季胁，下合髀厌中。以下循髀阳，出膝外廉，下外辅骨之前，直下抵绝骨之端，下出外踝之前，循足跗上，入小指次指之间。其支者，别跗上，入大指之间，循大指岐骨内，出其端，还贯爪甲，出三毛。');
INSERT INTO `cmssp_channel`(`id`, `pic`, `effect`, `visc`, `name`, `time`, `shichen`, `ext_data`) VALUES (null,'http://img01.sogoucdn.com/app/a/200574/e5ff539681562a16e2059c09bd631d87.jpg','是动则病，腰痛不可以俯仰，丈夫㿉疝，妇人少腹肿，甚则嗌干，面尘脱色。是主肝所生病者，胸满，呕逆，飧泄，遗溺，闭癃。','肝','足厥阴肝经','1-3点','丑时','肝足厥阴之脉，起于大指丛毛之际，上循足跗上廉，去内踝一寸，上踝八寸，交出太阴之后，上腘内廉，循股阴，入毛中，环阴器，抵小腹，挟胃，属肝，络胆，上贯膈，布胁肋，循喉咙之后，上入颃颡 ，连目系，上出额，与督脉会于巅。其支者，从目系下颊里，环唇内。其支者，复从肝别，贯膈，上注肺。');
INSERT INTO `cmssp_channel`(`id`, `pic`, `effect`, `visc`, `name`, `time`, `shichen`, `ext_data`) VALUES (null,'http://img03.sogoucdn.com/app/a/200574/dc077a622e79995dffb5dc02eed50c21.jpg','任脉为病，男子内结、七疝，女子带下，瘕聚。','','任脉','','','任脉者，起于中极之下，以上毛际，循腹里，上关元，至咽喉，上颐循面入目。络脉：任脉之别，名曰尾翳，下鸠尾，散于腹。');
INSERT INTO `cmssp_channel`(`id`, `pic`, `effect`, `visc`, `name`, `time`, `shichen`, `ext_data`) VALUES (null,'http://img03.sogoucdn.com/app/a/200574/d0806642f3c2323a2a655296471325e5.jpg','督脉为病，脊强反折。','','督脉','','','起于少腹，以下骨中央（胞中），下出会阴，经长强，行于后背正中，上至风府，入属于脑，上巅，循额，至鼻柱，经素髎、水沟，会手足阳明，至兑端，入龈交。分支：其少腹直上者，贯脐中央，上贯心，入喉，上颐，环唇，上系两目之下中央。络脉：督脉之别，名曰长强，挟膂上项，散头上，下当肩胛左右，别走太阳，入贯膂。');
INSERT INTO `cmssp_channel`(`id`, `pic`, `effect`, `visc`, `name`, `time`, `shichen`, `ext_data`) VALUES (null,'http://img02.sogoucdn.com/app/a/200574/137acccd67f5f18a2caec7ccdcdaa99a.jpg','阳明虚则宗筋纵，带脉不引，故足痿不用也。','','带脉','','','起于季胁，回身一周。');
INSERT INTO `cmssp_channel`(`id`, `pic`, `effect`, `visc`, `name`, `time`, `shichen`, `ext_data`) VALUES (null,'http://img04.sogoucdn.com/app/a/200574/58bcba71234d381076d39552f4f6719e.jpg','冲脉为病，逆气、里急。','','冲脉','','','起于肾下胞中，经会阴,出于气街,并足少阴肾经,挟脐上行,至胸中而散。分支：1.从胸中上行，会咽喉，络唇口，其气血渗诸阳，灌诸精。2.从气街下行，并足少阴经。循阴股内廉，入腘中，行胫内廉，至内踝后，渗三阴。3.从内踝后分出，行足背，入大趾内间。4.从胞中向后，行于脊内。');
INSERT INTO `cmssp_channel`(`id`, `pic`, `effect`, `visc`, `name`, `time`, `shichen`, `ext_data`) VALUES (null,'http://img03.sogoucdn.com/app/a/200574/6b24f739b0d2c4a8b6188525182a788e.jpg','阳维维于阳,阴维维于阴,阴阳不能自相维,则怅然失志,溶溶不能自收持。阳维为病苦寒热；阴维为病苦心痛。','','阴维脉','','','阴维脉起于“诸阴交”，各穴分布在小腿内侧和腹部第三侧线，于颈部与任脉交会于天突、廉泉。');
INSERT INTO `cmssp_channel`(`id`, `pic`, `effect`, `visc`, `name`, `time`, `shichen`, `ext_data`) VALUES (null,'http://img04.sogoucdn.com/app/a/200574/f977adedeafe4a0d6e2813e5cfe79625.jpg','阳维维于阳,阴维维于阴,阴阳不能自相维,则怅然失志,溶溶不能自收持。阳维为病苦寒热；阴维为病苦心痛。','','阳维脉','','','阳维起于“诸阳会” ,各穴分布在小腿外侧和头肩外侧,于后项与督脉交会于风府、哑门. ');
INSERT INTO `cmssp_channel`(`id`, `pic`, `effect`, `visc`, `name`, `time`, `shichen`, `ext_data`) VALUES (null,'http://img01.sogoucdn.com/app/a/200574/2518312915b858ba864dede657648ef9.jpg','阴跷为病，阳缓而阴急；阳跷为病，阴缓而阳急。','','阴跷脉','','','起于跟中，出足少阴然骨之后（照海），上内踝之上，直上循阴股，入阴，上循胸里，至咽喉，交贯冲脉，入頄，属目内眦，合于太阳、阳跷而上行。 ');
INSERT INTO `cmssp_channel`(`id`, `pic`, `effect`, `visc`, `name`, `time`, `shichen`, `ext_data`) VALUES (null,'http://img02.sogoucdn.com/app/a/200574/302d1eae09a75ffb7500567ff523a882.jpg','阴跷为病，阳缓而阴急；阳跷为病，阴缓而阳急。','','阳跷脉','','','起于跟中，出足太阳之申脉，循外踝上行，沿髀胁上肩，循面，交目内眦、会睛明，入脑，下耳后，入风池。');
INSERT INTO `cmssp_channel`(`id`, `pic`, `effect`, `visc`, `name`, `time`, `shichen`, `ext_data`) VALUES (null,'http://img04.sogoucdn.com/app/a/200574/f977adedeafe4a0d6e2813e5cfe79625.jpg','经外奇穴，《黄帝内经》中已有零散记载，如《素问.刺症论》、“刺十指间”、“刺舌下两脉”等，后《备急千金要方》、《外台秘要》等书记载甚多，至《奇效良方》才列“奇穴”一门。经外奇穴分布比较分散，但与经络仍有密切联系，如印堂穴与督脉，太阳穴与三焦等。其中少数腧穴，后来又补充到十四经穴，如督脉的阳关穴、中枢穴、灵台穴，膀胱经的眉冲穴、膏肓俞穴、厥阴俞穴等。随着针灸学术的发展，现代的一些新穴，诸如阑尾穴、球后穴等，亦入经外奇穴之列。','','经外奇穴','','','');
