#!/bin/bash
#program
#this program show the input choice
#histroy
#2018/03/21
read -p "please input(Y/N):" yn
[ "$yn" == "Y" -o "$yn" == "y" ] && echo "OK,continue" && exit 0
[ "$yn" == "N" -o "$yn" == "n" ] && echo "ok,interrupt" && exit 0
echo "I don't know what your choice is" && exit 0
