#!/bin/awk -f

BEGIN	{
		RS = ""
		FS = OFS = "\n"
	}
	{
		$NF = ""
		print $0
	}
