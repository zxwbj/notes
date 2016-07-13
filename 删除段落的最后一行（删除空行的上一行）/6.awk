#!/bin/awk -f

# 删除空行的上一行

!/^$/ { print a }
{ a = $0 }