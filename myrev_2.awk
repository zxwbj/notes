#!/bin/awk -f

BEGIN	{ FS = OFS = "" }
		{
			for(i = NF; i > 0; --i)
				printf("%s", $i)
			printf("\n")	
		}