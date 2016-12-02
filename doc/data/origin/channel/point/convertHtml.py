# coding=utf-8

import json;
import sys
from bs4 import BeautifulSoup


# 1.解析html
# 2.替换字符串 /zhongyibang/yian/ ===> /
# 3.去掉js标签


# 从命令行读取参数
# channelId = sys.argv[1]

def readFile(index):
	file_object = open(str(index), 'r')
	return file_object.read()
	
def writeFile(fname , fcontent):
	file_object = open(fname  , 'w')
	return file_object.write(fcontent)
	
def html2Soup(content):
	soup = BeautifulSoup(content,"lxml")
	return soup

def removeAllScript(soup):
	for tag in soup.find_all('script'):
		tag.extract()
		
def replaceCSS(soup):
	for tag in soup.find_all('link'):
		tag['href'] = tag['href'].replace("/zhongyibang/yian/" , "./")
	
def setCoding():
	reload(sys)
	sys.setdefaultencoding('utf-8')
	
if __name__ == '__main__':

	setCoding()
	
	start = 1
	
	end = 461
	
	result = ""
	
	for i in range(start , end):
		soup = html2Soup(readFile(i))
		removeAllScript(soup)
		replaceCSS(soup)
		writeFile(str(i)+".html" ,str(soup))
		