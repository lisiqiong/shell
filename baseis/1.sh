#!/bin/bash
#get parameters
#$#是传递参数的个数，$1是具体的参数
LANG=en_US.UTF-8
sourceFile="/data/wwwroot"
if [ $# == 1 ]
    then sourceFile=$1
else
    echo "$1 required!"
fi
echo $sourceFile
