#!/bin/bash
#Program
#备份mysql数据库，备份数量保持5个如果大于5个进行删除
#History
#20180330
PATH=/bin:/sbin:/usr/bin/:usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin:/usr/local/mysql/bin
export PATH

#保存的备份数量
nums=4

#mysql的host
mysqlHost=172.18.6.50
#定义mysql数据库用户变量
mysqlUser=root

#定义数据库名称
dbName=test

#定义数据库密码
mysqlPwd=password

#定义备份到的文件路径,并判断文件路径是否存在不存在给提示
bakPath=/data/mysqlbak
if [ ! -d "$bakPath" ];then
    echo "备份文件夹:$bakPath 不存在请先创建"
    exit 0
fi

#定义备份文件名头部
fileHead=yuyan_dev_

#备份的文件名路径
sqlDate=$(date +%Y%m%d%H%M);
bakFileName="$bakPath/$fileHead$sqlDate.sql";

#定义备份日志文件
logFilePath="$bakPath/log.txt" 

#文件不存在则创建
if [ ! -f "$logFilePath" ];then
    echo "备份日志文件不存在请先创建文件:$logFilePath";
    exit 0
fi

#备份数据
#echo $bakFileName
mysqldump -h $mysqlHost -u $mysqlUser -p$mysqlPwd $dbName > $bakFileName 

#写入日志记录备份文件日志
echo "$sqlDate创建mysql备份文件:$bakFileName" >> $logFilePath

#找出需要删除的文件(如果超过5条备份记录删除最旧的一条)
delFile=`ls -l -crt $bakPath/*.sql | awk '{print $9}' |head -1`

#判断保存的备份数量是否大于$nums，大于则删除
count=`ls -l -crt $bakPath/*.sql | awk '{print $9}' |wc -l  `

if [ $count -gt $nums ];then
    rm $delFile
    #写删除日志
    echo "delete $delFile" >> $logFilePath
fi





                              
