#!/bin/awk -f

#	打印文档的最后两行，未处理特殊情形

	{
		y = x "\n" $0
		x = $0
	}
END	{
		print y
	}
	