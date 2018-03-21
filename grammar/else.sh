#!/bin/bash
#Program
#History
#2018/03/21

read -p "Please input (Y/N):" yn
if [ "$yn" == 'Y' ] || [ "$yn" == 'y' ];then
    echo "ok,continue"
elif [ "$yn" == "N" ] || [ "$yn" == "n" ];then
    echo "oh,interrupt!"
else 
    echo "I don't know what your choice is"
fi
