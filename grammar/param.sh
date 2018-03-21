#!/bin/bash
#Program
# Check $1 is equal to "hello"
# History
#2018/03/21

if [ "$1" == "hello" ];then
    echo "Hello,how area you?"
elif [ "$1" == "" ];then
    echo "You MUST input parameters,ex>{$0 someword}"
else
    echo "The only parameeter is 'hello',ex>{$0 hello}"
fi
