#!/bin/bash

if [ "$1" == "" ];then
    echo "请输入数值进行1到指定数的累计"
    exit 0
fi

s=0 #这是加总的数值变数
i=0 #这是累计的数值，亦即是1,2,3
while [ "$i" != "$1" ]
do
    i=$(($i+1))  #累计的数字每次加1
    s=$(($s+$i)) #加总的值
done
echo "The result of '1+2+...$1' is ==> $s"
