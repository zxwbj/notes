#!/bin/awk -f

{ print myrev($0) }

function myrev(str,	len) {
	len = length(str)
	if(0 == len) return
	return substr(str, len) myrev(substr(str,1,len-1))
}
