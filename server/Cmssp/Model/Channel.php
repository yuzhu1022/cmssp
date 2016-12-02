<?php
/**
 * Model_Channel
 * @author hch 2016-11-22 09:43:24
 */

class Model_Channel extends PhalApi_Model_NotORM {

    protected function getTableName($id) {
        return 'channel';
    }
}
