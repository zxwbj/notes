#!/bin/awk -f

# 删除空行的上一行

{
	y = x
	x = $0
	if(x !~ /^$/)
		print y	
}
