#!/bin/bash
#Program
# using netstat and grep to detect www,ssh,ftp and mail services
#History
#2018/03/22

#1.先作一些告知动作而已
echo "now,I will detect your linux server's services!"
echo -e "The www,ftp,ssh,mysql,redis and mail will be detect!\n"
#2.检测90端口
testing=$(netstat -tuln|grep ":80")
if [ "$testing" != "" ];then
    echo "www is running in your system."
fi
testing=$(netstat -tuln|grep ":22")
if [ "$testing" != "" ];then
    echo "ssh is running in your system."
fi
testing=$(netstat -tuln|grep ":3306")
if [ "$testing" != "" ];then
    echo "mysql is running in your system"
fi
testing=$(netstat -tuln|grep ":6379")
if [ "$testing" != "" ];then
    echo "redis is running your system"
fi
testing=$(netstat -tuln|grep ":25")
if [ "$testing" != "" ];then
    echo "Mail is running your system"
fi
