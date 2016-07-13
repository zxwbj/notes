#!/bin/awk -f

{
	y = x
	x = $0
	print y
}