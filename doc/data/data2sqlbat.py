# coding=utf-8

import json;
import sys

# 从命令行读取参数
# channelId = sys.argv[1]

template = '''INSERT INTO `cmssp_point`(`id`, `tag`, `pic`, `channelId`, `name`, `tone`, `effect`, `locate`, `expr`, `ext_data`) VALUES ([value-1],[value-2],[value-3],[value-4],[value-5],[value-6],[value-7],[value-8],[value-9],[value-10]);'''

def readFile(index):
	file_object = open("channel_"+str(index), 'r')
	return file_object.read()
	
def writeFile(fcontent):
	file_object = open("result.sql"  , 'w')
	return file_object.write(fcontent)
	
def setCoding():
	reload(sys)
	sys.setdefaultencoding('utf-8')
	
if __name__ == '__main__':

	setCoding()
	
	start = 1
	
	end = 22
	
	result = ""
	
	for i in range(start , end):
		jsoncontent = json.loads(readFile(i))
		for pointjson in jsoncontent['points']:
			tempstr = template
			tempstr = tempstr.replace("[value-1]" , "null")\
			.replace("[value-2]" , "null")\
			.replace("[value-3]" , "null")\
			.replace("[value-4]" , str(i))\
			.replace("[value-5]" , "'"+pointjson['name']+"'")\
			.replace("[value-6]" , "'"+pointjson['name_tone_py']+"'")\
			.replace("[value-7]" , "'"+pointjson['func']+"'")\
			.replace("[value-8]" , "null")\
			.replace("[value-9]" , "null")\
			.replace("[value-10]" , "null")
			result = result + tempstr+"\n"
			
	writeFile(result)
		