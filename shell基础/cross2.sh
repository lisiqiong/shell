#!/bin/bash
#Program
# 输入两个数字，并显示两个数字的乘积结果

#History
#2018/03/16
echo -e " You should input 2 numbers,I will cross them!\n "
read -p "first number: " firstnu
read -p "second number: " secnu
declare -i total=$firstnu*$secnu
echo -e "\nThe result of $firstnu*$secnu is==>$total"
