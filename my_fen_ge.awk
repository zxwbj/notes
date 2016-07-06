#!/bin/awk -f


{
	print(my_fen_ge($0))
}

# 将数字加上逗号分隔符：1234567 --> 1,234,567
function my_fen_ge(str,		len) {
	len = length(str)
	if(len <= 3)
		return str
	else
		return my_fen_ge(substr(str, 1, len-3)) "," substr(str, len-2)
}
