#!/bin/awk -f

# 读取整个文本内容到一个变量中
BEGIN	{
			#str = readfile_1("filename")
			str = readfile_2("filename")
			if(0 == length(str))
			{
				printf("empty file!\n")
				exit
			}
			printf("%s", str)
		}

# 速度快
function readfile_1(file,     tmp, save_rs)
{
    save_rs = RS
    RS = "^$"
    getline tmp < file
    close(file)
    RS = save_rs

    return tmp
}

# not very efficient
function readfile_2(file,    tmp, contents)
{
    if ((getline tmp < file) < 0)
        return

    contents = tmp
    while ((getline tmp < file) > 0)
        contents = contents RT tmp

    close(file)
    return contents
}

