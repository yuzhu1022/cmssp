<?php
/**
 * 请在下面放置任何您需要的应用配置
 */

return array(

    /**
     * 应用接口层的统一参数
     */
    'apiCommonRules' => array(
        //'sign' => array('name' => 'sign', 'require' => true),
		'token'=> array('name' => 'token', 'type' => 'string', 'require' => true, 'desc' => '授权信息')
    ),

);
