# coding=utf-8

import json;
import sys;
import os;


# 从命令行读取参数
# channelId = sys.argv[1]

template = '''INSERT INTO `cmssp_drug`(`id`, `tag`, `name`, `tone`, `icon`, `summary`, `usage`, `ext_data`) VALUES ([value-1],[value-2],[value-3],[value-4],[value-5],[value-6],[value-7],[value-8]);'''

root = "./data";
def readFile(f):
	print f

	pa=os.path.join(root,f)
	file_object = open(pa)
	jsoncontent = json.loads(file_object.read())

	tempstr = template
	tempstr = tempstr.replace("[value-1]" , "null")\
	.replace("[value-2]" , "null")\
	.replace("[value-3]" , "'"+jsoncontent['name']+"'")\
	.replace("[value-4]" , "'"+jsoncontent['pinyin']+"'")\
	.replace("[value-5]" , "null")\
	.replace("[value-6]" , "'"+jsoncontent['summary']+"'")\
	.replace("[value-7]" , "'"+jsoncontent['usage']+"'")\
	.replace("[value-8]" , "null")
	return tempstr
	
def writeFile(fcontent):
	file_object = open("result.sql"  , 'w')
	return file_object.write(fcontent)
	
def setCoding():
	reload(sys)
	sys.setdefaultencoding('utf-8')
	
if __name__ == '__main__':

	setCoding()

	result = ""

	for rt, dirs, files in os.walk(root):
		for f in files:
			tempstr = readFile(f)
			result = result + tempstr+"\n"

	writeFile(result)



		