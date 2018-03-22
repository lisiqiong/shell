#!/bin/bash
#Program 
#Your input you date,calcuate how many days before you demobilize
#Hisotry
#2018/03/22

#1.告知用户的用途，说明输入的格式
echo "This program will try to calculate"
echo "How many days before your demobilization date..."
read -p "Please input your demobilization date(YYYYMMDD)ex>20180615:" date2

#2.测试输入的格式是否正确，正则表达式
date_d=$(echo $date2|grep '[0-9]\{8\}') #看看是否有八个数字

if [ "$date_d" == "" ];then
    echo "Your input the wrong date format..."
    exit 1
fi

#开始计算日期啰
declare -i date_dem=`date --date="$date2" +%s` #退伍日期秒数
declare -i date_now=`date +%s` #现在日期秒数
declare -i date_total_s=$(($date_dem-$date_now)) #剩余秒数统计
declare -i date_d=$(($date_total_s/60/60/24)) #转为日期
if [ "$date_d" -lt "0" ];then #小于0说明已经退出，输出已经退出日期，大于输出还有多少天，多少小时退伍
    echo "You had been demobilization before:" $((-1*$date_d)) "ago";
else
    declare -i date_h=$(($(($date_total_s-$date_d*60*60*24))/60/60))
    echo "You will demobilize after $date_d days and $date_h hours."
fi



