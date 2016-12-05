<?php
/**
 * 分库分表的自定义数据库路由配置
 */

return array(
    /**
     * DB数据库服务器集群
     */
    'servers' => array(
        'db_cmssp' => array(                         //服务器标记
            'host'      => 'localhost',             //数据库域名
            'name'      => 'cmssp',               //数据库名字
            'user'      => 'root',                  //数据库用户名
            'password'  => 'cmssp2016',	                    //数据库密码
            'port'      => '3306',                  //数据库端口
            'charset'   => 'UTF8',                  //数据库字符集
        ),
		
    ),
	
    /**
     * 自定义路由表
     */
    'tables' => array(
        //通用路由
        '__default__' => array(
            'prefix' => 'cmssp_',
            'key' => 'id',
            'map' => array(
                array('db' => 'db_cmssp'),
				// array('db' => 'db_cmssp_sae'),
            ),
        ),
    ),
);
