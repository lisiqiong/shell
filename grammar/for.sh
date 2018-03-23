#!/bin/bash

users=$(cut -d ':' -f1 /etc/passwd ) #截取账号名称
for username in $users
do
    id $username
    finger $username
done
