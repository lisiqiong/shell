#!/bin/bash

#History 2018/03/23

#read -p "Please input a number,I will count for 1+2+3..+Your input:" nu



if [ "$1" == "" ];then
    echo "输入不对请输入数字"
    exit 0
fi
s=0
for ((i=1;i<$1;i=i+1))
do
    s=$(($s+$i))
done
echo "The result of '1=2+3+4...+$i' is ==>$s "
