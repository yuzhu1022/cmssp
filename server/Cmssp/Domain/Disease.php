<?php
/**
 * Domain_Disease
 * @author hch 2016-11-17 04:56:58
 */

class Domain_Disease {

    public function getList($pageNumber , $cateId) {
        $rs = array();
        $model = new Model_Disease();
		$rs = $model->getList($pageNumber , $cateId);
		return $rs;
    }

}

