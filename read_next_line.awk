#!/bin/awk -f

#打印匹配行的下一行
/abc/ { if(getline d > 0) print d }
