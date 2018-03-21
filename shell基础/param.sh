#!/bin/bash
#Program
#History
#2018/03/21
echo "The script name is ==> $0"
echo "Total parameter number is ==>$#"
[ "$#" -lt 2 ] && echo "The number of parameter is less than 2.stop here." && exit 0
echo "Your whole parameter is ==>'$@'"
echo "The first parameter ==> $1"
echo "The 2nd parameter ==>$2"

