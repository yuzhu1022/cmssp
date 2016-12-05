<?php
/**
 * Model_Channel
 * @author hch 2016-11-22 09:43:24
 */

class Model_Channel extends PhalApi_Model_NotORM {

	private $NUMBER_PER_PAGE = 3;

	public function getList($pageNumber) {
		
		$rs = array();
		
		$mysql = $this->getORM();
		
		$totalCount = $mysql->count();
		
		$totalPage = ceil($totalCount/$this->NUMBER_PER_PAGE);
		
		if($pageNumber >= $totalPage ){
			return $rs;
		}
		
		$rs = $mysql->select('*')->limit($pageNumber * $this->NUMBER_PER_PAGE , $this->NUMBER_PER_PAGE)->fetchAll();
		return $rs;
    }

    protected function getTableName($id) {
        return 'channel';
    }
}
