# coding=utf-8

import json;
import sys


template = '''INSERT INTO `cmssp_point`(`id`, `tag`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES 
(
"template_id",
"template_tag",
"template_channelId",
"template_name",
"template_tone",
"template_effect",
"template_locate",
"template_expr",
"template_ext_data");'''

def readFile():
	file_object = open("temp.txt" , 'r')
	return file_object.read()
	
def writeFile(fcontent):
	file_object = open("result.sql" , 'w')
	return file_object.write(fcontent)
	
def setCoding():
	reload(sys)
	sys.setdefaultencoding('utf-8')
	
if __name__ == '__main__':

	setCoding()

	jsoncontent = json.loads(readFile())
	result = ""
	for pointjson in jsoncontent:
		tempstr = template
		tempstr = tempstr.replace("template_id" , "")\
		.replace("template_tag" , "")\
		.replace("template_channelId" , "")\
		.replace("template_name" , pointjson['name'])\
		.replace("template_tone" , pointjson['name_tone_py'])\
		.replace("template_effect" , pointjson['func'])\
		.replace("template_locate" , "")\
		.replace("template_expr" , "")\
		.replace("template_ext_data" , "")
		result = result + tempstr+"\n"
		
	writeFile(result)
		