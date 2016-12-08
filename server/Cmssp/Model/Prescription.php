<?php
/**
 * Model_Prescription
 * @author hch 2016-12-08 08:11:31
 */

class Model_Prescription extends PhalApi_Model_NotORM {

	private $NUMBER_PER_PAGE = 5;

	public function getList($pageNumber , $id) {
		
		$rs = array();
		
		$mysql = $this->getORM();
		
		$totalCount = $mysql->count();
		
		$totalPage = ceil($totalCount/$this->NUMBER_PER_PAGE);
		
		if($pageNumber >= $totalPage ){
			return $rs;
		}
		
		if($id == 0){
			$rs = $mysql->select('*')->limit($pageNumber * $this->NUMBER_PER_PAGE , $this->NUMBER_PER_PAGE)->fetchAll();
		}else{
			$rs = $mysql->select('*')->where('id = ? ', $id)->limit($pageNumber * $this->NUMBER_PER_PAGE , $this->NUMBER_PER_PAGE)->fetchAll();
		}
		return $rs;
    }

    protected function getTableName($id) {
        return 'prescription';
    }
}
