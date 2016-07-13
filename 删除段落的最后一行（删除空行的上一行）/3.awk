#!/bin/awk -f

	{	a[i++] = $0	}
END	{
		for(i = 0; i < NR-1; ++i)
		{
			if(a[i+1] ~ /^$/)
				continue
			print a[i]
		}
	}
