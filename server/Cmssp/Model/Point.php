<?php
/**
 * Model_Point
 * @author hch 2016-11-22 09:43:24
 */

class Model_Point extends PhalApi_Model_NotORM {

	
	/**
     * getPointsByChannelId
     * @desc 根据经脉id获得穴位列表
     * @return array [] 穴位列表
	 * @return array [].id 穴位id
	 * @return string [].channelId 穴位所属经脉
	 * @return string [].effect 穴位主治
	 * @return string [].name 穴位名称
	 * @return string [].tone 穴位发音
     */
	public function getPointsByChannelId($channelId) {
		
		$rs = array();
		
		$mysql = $this->getORM();
		
		$rs = $mysql->select('*')->where("channelId = ?" , $channelId)->fetchAll();
		return $rs;
    }

    protected function getTableName($id) {
        return 'point';
    }
}
