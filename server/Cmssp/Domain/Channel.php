<?php
/**
 * Domain_Channel
 * @author hch 2016-11-22 09:43:24
 */

class Domain_Channel {

    public function getList($pageNumber) {
		
		//todo check 	
        $model = new Model_Channel();
		$channels = $model->getList($pageNumber);
		
		$pointModel = new Model_Point();
		
		foreach($channels as $key=>$channel){
			$points = $pointModel->getPointsByChannelId($channel['id']);
			$channels[$key]['points'] = $points;
		}
		
		return $channels;
    }
	
}

