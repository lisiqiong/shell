#!/bin/bash
#Program
#History
#2018/03/21

read -p "Please input (Y/N):" yn
if [ "$yn" == 'Y' ] || [ "$yn" == "y" ];then
    echo "OK,continue"
    exit 0
fi
if [ "$yn" == "N" ] || [ "$yn" == "n" ];then
    echo "oh,interrupt!"
    exit 0
fi
echo "I don't know what your choice is" && exit 0
