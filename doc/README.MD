git 地址：
    http://github.com/hucaihua/cmssp

PhalApi doc ： 
	http://www.phalapi.net/wikis/
	
	

1.线上服务器
	api地址：
		http://cmssp.applinzi.com/Public/cmssp/?service=Channel.GetList&token=PHJlCTx5Orlt50vJYytlTkpa3xJQdXPzUggllQNUEodMxntAcwCMzxEGkPM8v5QU&pageNumber=1
	
	接口查询地址：
		http://cmssp.applinzi.com/Public/cmssp/listAllApis.php



2.本地测试服务器
	api地址：
		http://localhost/cmssp/?service=Channel.GetList&token=PHJlCTx5Orlt50vJYytlTkpa3xJQdXPzUggllQNUEodMxntAcwCMzxEGkPM8v5QU&pageNumber=1&__test__=1

	接口查询地址：
		http://localhost/cmssp/listAllApis.php&__test__=1
		
		

	
3.文档相关
	client - 客户端代码地址
	server - 服务端代码地址
	doc - 文档地址
		project - CMSSP设计文档
		res - 项目最终资源
		UI - 项目设计资源
		
4.数据库相关
	库名:cmssp
	table前缀：cmssp_
	用户名：cmssp
	pass : cmssp2016
	
5.如需看sql执行情况，可在请求地址后加参数 &__sql__=1