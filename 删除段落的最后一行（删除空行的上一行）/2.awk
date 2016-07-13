#!/bin/awk -f

# 删除每个段落中的最后一行（删除空行的前一行）

BEGIN 	{ RS = "^$" }
	{
	  gsub(/[^\n]+\n*$/, "", $0)
	  gsub(/[^\n]+\n\n/, "\n", $0)
	  print $0
	}