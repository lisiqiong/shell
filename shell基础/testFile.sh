#!/bin/bash
#Program
# 用户输入一个文件名称，检查1文件是否存在，2是文件还是目录，3文件权限
#2018/03/16

#1.让使用者输入挡名，并且判断使用者是否真的有输入字符串
echo -e "请输入文件名称，输入后将检查是否真的有输入字符串"
read -p "输入文件名称：" filename
test -z $filename && echo "You must input a filename " && exit 0



#2.判断档案是否存在？若不存在则显示讯息并结束脚本
test ! -e $filename && echo "the filename '$filename' DO NOT exist" && exit 0


#3.开始判断文件类型和属性
test -f $filename && filetype="regulare file"
test -d $filename && filetype="directory"
test -r $filename && perm="readable"
test -w $filename && perm="$perm writable"
test -x $filename && perm="$perm executable"

#4.开始输出信息
echo "the filename:$filename is a $filetype "
echo "and the permissions are:$perm"


