
/**
 * DB: localhost  cmssp
 */

CREATE TABLE `cmssp_prescription` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `tag` VARCHAR(200) COMMENT '标签',
`name` VARCHAR(45) COMMENT '方名', 
`book` VARCHAR(45) COMMENT '书名（出处），书名为《伤寒论》的称为经方，出自其他书籍的为非经方', 
`summary` text COMMENT '概述', 
`indications` text COMMENT '主治', 
`explanation` text COMMENT '方义方解',
    `ext_data` text COMMENT 'json data here',
     PRIMARY KEY (`id`)
 ) ENGINE=InnoDB DEFAULT CHARSET=UTF8;
            
