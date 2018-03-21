#!/bin/bash
#Program 
#History
#2018/03/21 by lisiqiong

echo "Total paramter number is ==>$#"
echo "Your whole parameter is ==>'$@'"
shift #进行第一次【一个变量的shift】
echo "Total parameter number is ==>'$@'"
shift 3 #进行第二次【三个变量的shift】
echo "Total parameter number is ==>$#"
echo "Your whole parameter is ==>'$@'"
