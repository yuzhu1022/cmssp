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
		// 'db_cmssp_sae' => array(                         //服务器标记
            // 'host'      => SAE_MYSQL_HOST_M,             //数据库域名
            // 'name'      => SAE_MYSQL_DB,               //数据库名字
            // 'user'      => SAE_MYSQL_USER,                  //数据库用户名
            // 'password'  => SAE_MYSQL_PASS,	                    //数据库密码
            // 'port'      => SAE_MYSQL_PORT,                  //数据库端口
            // 'charset'   => 'UTF8',                  //数据库字符集
        // ),
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

        /**
        'demo' => array(                                                //表名
            'prefix' => 'cmssp_',                                         //表名前缀
            'key' => 'id',                                              //表主键名
            'map' => array(                                             //表路由配置
                array('db' => 'db_cmssp'),                               //单表配置：array('db' => 服务器标记)
                array('start' => 0, 'end' => 2, 'db' => 'db_cmssp'),     //分表配置：array('start' => 开始下标, 'end' => 结束下标, 'db' => 服务器标记)
            ),
        ),
         */
    ),
);
