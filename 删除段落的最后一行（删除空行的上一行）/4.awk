#!/bin/awk -f

BEGIN	{
		RS = "^$"
		FS = "\n"
	}
	{
		for(i = 1; i < NF; ++i )
		{
			if($(i+1) ~ /^$/)
				continue
			print $i
		}
	}
