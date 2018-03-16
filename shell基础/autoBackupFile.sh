#!/bin/bash
#Program
#使用输入的参数来进行日期自动生成当天的备份文件，达到每日备份数据的目的
#Histroy
#2018/03/16

#1.让使用者输入文件名，并取得fileUser这个变量
echo -e "I will 'touch' command to create 3 files "  #纯粹显示信息
read -p "please input your filename:" fileuser #提示使用者输入


#2.为了避免使用者随意按Enter，利用变量功能分析挡名是否有设定？
filename=${fileuser:-"filename"} #开始判断有否配置文件名


#3.开始利用date指令来取得所需要的挡名了
date1=$(date --date='2 days ago' +%Y%m%d) #前两天的日期
date2=$(date --date='1 days ago' +%Y%m%d) #前一天的日期
date3=$(date +%Y%m%d) #今天的日期
file1=${filename}${date1} #配置三个文件名
file2=${filename}${date2}
file3=${filename}${date3}

#4.将档名建立吧！
touch "$file1" #开始创建三个文件
touch "$file2"
touch "$file3"


