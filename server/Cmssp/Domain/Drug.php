<?php
/**
 * Domain_Drug
 * @author hch 2016-12-08 08:11:15
 */

class Domain_Drug {

    public function getList($pageNumber , $id) {
        $rs = array();
        $model = new Model_Drug();
		$rs = $model->getList($pageNumber , $id);
		return $rs;
    }
}

