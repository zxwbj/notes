#!/bin/awk -f

{
	z = y
	y = x
	x = $0
	print z
}
