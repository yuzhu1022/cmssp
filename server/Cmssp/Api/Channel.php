<?php
/**
 * Api_Channel
 * @author hch 2016-11-22 09:43:24
 */

class Api_Channel extends PhalApi_Api {

    public function getRules() {
        return array(
            'getList' => array(
				'pageNumber' => array('name' => 'pageNumber', 'type' => 'int', 'default' => 0, 'require' => true, 'desc' => '疾病列表页数'),
            ),
        );
    }

    /**
     * getList接口
     * @desc 获取经脉列表
	 * @return ret 返回码 类似http请求 2XX 4XX 5XX
	 * @return msg 请求描述
	 * @return data 实际返回数据
	 * @return int pageNumber 当前读取页数
     * @return array channelEntityList 经脉列表数据
	 * @return int channelEntityList[].id 经脉id
     * @return String channelEntityList[].pic 症状标签
     * @return string channelEntityList[].effect 症状名称
     * @return string channelEntityList[].visc 症状
	 * @return string channelEntityList[].name 治疗思路
     * @return string channelEntityList[].shichen 药方
     * @return string channelEntityList[].time 提示信息
	 * @return string channelEntityList[].ext_data 附件信息-循环路线
	 * @return array channelEntityList[].points 经脉包含的穴位列表
	 * @return array channelEntityList[].points[].id 穴位id
	 * @return string channelEntityList[].points[].channelId 穴位所属经脉
	 * @return string channelEntityList[].points[].effect 穴位主治
	 * @return string channelEntityList[].points[].name 穴位名称
	 * @return string channelEntityList[].points[].tone 穴位发音
     */
    public function getList() {
        $rs = array();
		
        $rs['pageNumber'] = $this->pageNumber;
		
		//check params
		$this->pageNumber = intval($this->pageNumber) or 0;
		
		//fetch data
        $domain = new Domain_Channel();
        $rs['channelEntityList'] = $domain->getList($this->pageNumber);
		// return
        return $rs;
    }
}
