# coding=utf-8

import json;
import sys


template = '''INSERT INTO `cmssp_channel`(`id`, `pic`, `effect`, `visc`, `name`, `time`, `shichen`, `ext_data`) VALUES ([value-1],[value-2],[value-3],[value-4],[value-5],[value-6],[value-7],[value-8]);'''

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
		tempstr = tempstr.replace("[value-1]" , "null")\
		.replace("[value-2]" , "'"+pointjson['picurl']+"'")\
		.replace("[value-3]" , "'"+pointjson['disease']+"'")\
		.replace("[value-4]" , "'"+pointjson['visc']+"'")\
		.replace("[value-5]" , "'"+pointjson['name']+"'")\
		.replace("[value-6]" , "'"+pointjson['time']+"'")\
		.replace("[value-7]" , "'"+pointjson['shichen']+"'")\
		.replace("[value-8]" , "'"+pointjson['info']+"'")
		result = result + tempstr+"\n"
		
	writeFile(result)
		