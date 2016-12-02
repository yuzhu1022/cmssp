<?php
/**
 * Api_Disease
 * @author hch 2016-11-17 04:56:58
 */

class Api_Disease extends PhalApi_Api {

    public function getRules() {
        return array(
            'getList' => array(
				'pageNumber' => array('name' => 'pageNumber', 'type' => 'int', 'default' => 0, 'require' => true, 'desc' => '疾病列表页数'),
				'cateId' => array('name' => 'cateId', 'type' => 'int', 'default' => 0, 'require' => true, 'desc' => '疾病分类id'),
            ),
        );
    }

    /**
     * getList接口
     * @desc 获取症状列表
	 * @return ret 返回码 类似http请求 2XX 4XX 5XX
	 * @return msg 请求描述
	 * @return data 实际返回数据
	 * @return int pageNumber 当前读取页数
     * @return array diseaseEntityList 症状列表数据
     * @return String diseaseEntityList[].tag 症状标签
     * @return int diseaseEntityList[].cateId 症状分类ID
     * @return string diseaseEntityList[].name 症状名称
     * @return string diseaseEntityList[].symptom 症状
	 * @return string diseaseEntityList[].cure 治疗思路
     * @return string diseaseEntityList[].material 药方
     * @return string diseaseEntityList[].msg 提示信息
     */
    public function getList() {
		
		$rs = array();
		
        $rs['pageNumber'] = $this->pageNumber;
		
		//check params
		$this->pageNumber = intval($this->pageNumber) or 0;
		$this->cateId = intval($this->cateId) or 0;
		
		//fetch data
        $domain = new Domain_Disease();
        $rs['diseaseEntityList'] = $domain->getList($this->pageNumber , $this->cateId);
		// return
        return $rs;
    }


}
