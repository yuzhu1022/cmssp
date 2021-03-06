
/**
 * DB: localhost  cmssp
 */

CREATE TABLE `cmssp_drug` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `tag` VARCHAR(200) COMMENT '标签',
`name` VARCHAR(45) COMMENT '药名', 
`pinyin` VARCHAR(45) COMMENT '拼音', 
`icon` text COMMENT 'icon', 
`summary` text COMMENT '概述', 
`usage` text COMMENT '应用', 
`pieces` text COMMENT '饮片', 
`processing` text COMMENT '加工炮制',
    `ext_data` text COMMENT 'json data here',
     PRIMARY KEY (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=UTF8;
            
