<?php
/**
 * Domain_FTS
 * @author hch 2016-11-17 04:56:58
 */

class Domain_FTS {

    public function loadFTS() {
        $rs = array();
		
		$diseaseModel = new Model_disease();
		$pointModel = new Model_Point();
		
        $diseaseFTS = $diseaseModel->loadFTS();
		
		$pointFTS = $pointModel->loadFTS();
		
		return array_merge($diseaseFTS , $pointFTS);
    }
}

