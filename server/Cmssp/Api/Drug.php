<?php
/**
 * Api_Drug
 * @author hch 2016-12-08 08:11:15
 */

class Api_Drug extends PhalApi_Api {

    public function getRules() {
        return array(
            'getList' => array(
				'pageNumber' => array('name' => 'pageNumber', 'type' => 'int', 'default' => 0, 'require' => true, 'desc' => '中药页数'),
				'id' => array('name' => 'id', 'type' => 'int', 'default' => 0, 'require' => true, 'desc' => '中药id'),
            ),
        );
    }

    /**
     * getList接口
     * @desc 获取中药列表
	 * @return ret 返回码 类似http请求 2XX 4XX 5XX
	 * @return msg 请求描述
	 * @return data 实际返回数据
	 * @return int pageNumber 当前读取页数
     * @return array entityList 中药数据
     * @return String entityList[].tag 中药标签
     * @return int entityList[].id 中药ID
     * @return string entityList[].name 名称
     * @return string entityList[].tone 名称的拼音
	 * @return string entityList[].summary 概述
     * @return string entityList[].usage 应用
     * @return string entityList[].icon 图片
     */
    public function getList() {
		
		$rs = array();
		
        $rs['pageNumber'] = $this->pageNumber;
		
		//check params
		$this->pageNumber = intval($this->pageNumber) or 0;
		$this->id = intval($this->id) or 0;
		
		//fetch data
        $domain = new Domain_Drug();
        $rs['entityList'] = $domain->getList($this->pageNumber , $this->id);
		// return
        return $rs;
    }

}
