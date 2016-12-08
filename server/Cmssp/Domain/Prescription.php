<?php
/**
 * Domain_Prescription
 * @author hch 2016-12-08 08:11:31
 */

class Domain_Prescription {

    public function getList($pageNumber , $id) {
        $rs = array();
        $model = new Model_Prescription();
		$rs = $model->getList($pageNumber , $id);
		return $rs;
    }
}

