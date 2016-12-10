<?php
/**
 * Api_FTS
 * @author hch 2016-11-22 09:43:24
 */

class Api_FTS extends PhalApi_Api {

    public function getRules() {
        return array(
            'load' => array(

            ),
        );
    }

    /**
     * load
     * @desc 获取FTS数据
	 * @return ret 返回码 类似http请求 2XX 4XX 5XX
	 * @return msg 请求描述
	 * @return data 实际返回数据
	 * @return array FTS 检索数据
     */
    public function load() {
        $rs = array();

		//fetch data
        $domain = new Domain_FTS();
        $rs['FTS'] = $domain->loadFTS();
		// return
        return $rs;
    }

    /**
     * hotTag
     * @desc 获取热门疾病标签
    * @return ret 返回码 类似http请求 2XX 4XX 5XX
    * @return msg 请求描述
    * @return data 实际返回数据
    * @return array 疾病标签列表
     */
    public function hotTag(){
      $rs = array("感冒","发烧","便秘","肚子痛","咳嗽","腰痛","关节炎","头晕","头痛","头胀","四肢麻木","手脚冰冷");

      return $rs;
    }
}
