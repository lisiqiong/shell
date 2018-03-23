#!/bin/bash

s=0 #这是加总的数字变数
i=0 #这是累计的数字，也就是1，2,3,4,5
while [ "$i" != "100" ]
do
    i=$(($i+1)) #每次i都会增加1
    s=$(($s+$i))
done
echo "The result of '1+2+3....+100' is ==>$s "
