#!/bin/bash


#History 2018/03/23
#检查目录是否存在
#循环遍历目录，并获取文件名字，以及打印文件类型

read -p "Please input a directory:" dir
if [ "$dir" == "" -o ! -d "$dir" ];then
    echo "The $dir is NOT exist in your system "
    exit 1
fi

#开始测试档案啰~
filelist=$(ls $dir) #列出所有在该目录下的文件名
for filename in $filelist
do
    perm=""
    test -r "$dir/$filename" && perm="$perm readable"
    test -w "$dir/$filename" && perm="$perm writable"
    test -x "$dir/$filename" && perm="$perm executable"
    echo "The file $dir/$filename's permission is $perm"
done
