#!/bin/bash

USERID=$(id -u)

#echo "user id is $USERID"

if [ $USERID -ne 0 ]
then
    echo "please run the script with root priviliges"
    exit 1
fi

dnf install git -y

