<?php
/**
 * Model_Disease
 * @author hch 2016-11-17 04:56:58
 */

class Model_Disease extends PhalApi_Model_NotORM {

	private $NUMBER_PER_PAGE = 5;

	public function getList($pageNumber , $cateId) {
		
		$rs = array();
		
		$mysql = $this->getORM();
		
		$totalCount = $mysql->count();
		
		$totalPage = ceil($totalCount/$this->NUMBER_PER_PAGE);
		
		if($pageNumber >= $totalPage ){
			return $rs;
		}
		
		if($cateId == 0){
			$rs = $mysql->select('*')->limit($pageNumber * $this->NUMBER_PER_PAGE , $this->NUMBER_PER_PAGE)->fetchAll();
		}else{
			$rs = $mysql->select('*')->where('cateId = ? ', $cateId)->limit($pageNumber * $this->NUMBER_PER_PAGE , $this->NUMBER_PER_PAGE)->fetchAll();
		}
		return $rs;
    }
	
	public function loadFTS(){
		$rs = array();
		
		$mysql = $this->getORM();
		
		$rs = $mysql->select('id , tag , name')->fetchAll();
		
		foreach($rs as $key=>&$val){
			$val['type'] = 0;
		}
		
		return $rs;
	}

    protected function getTableName($id) {
        return 'disease';
    }
}
