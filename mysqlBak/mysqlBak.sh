#!/bin/bash
PATH=/bin:/sbin:/usr/bin/:usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin:/usr/local/mysql/bin
export PATH

sqlName=$(date +%Y%m%d%H%M);
fileName="/data/mysqlbak/dev_yuyan_$sqlName.sql";
#echo $fileName
mysqldump -h 172.18.6.50 -uroot -ppassword test >"$fileName"
