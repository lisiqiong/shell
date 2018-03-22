#!/bin/bash

case $1 in
    "hello")
        echo "Hello,how are you?"
        ;;
"")
    echo "You must input parameters,ex>{$0 someword}"
    ;;
*)  #其实就相当于通配符，0~无穷多个任意字符之意
    echo "usage $0 {hello}"
    ;;
esac;
