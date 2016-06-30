#!/bin/awk -f

#	打印文档的最后三行，未处理特殊情形

	{
		z = y "\n" x "\n" $0
		y = x
		x = $0
	}
END	{
		print z
	}
	