#!/bin/bash

USERID=$(id -u)

#echo "user id is $USERID"

if [ $USERID -ne 0 ]
then
    echo "please run the script with root priviliges"
    exit 1
fi

dnf list installed git

if [ $? -ne 0 ]
then 
    echo "git is not installed,going to install"
    dnf install git -y
    if [ $? -ne 0 ]
    then
        echo "git installation is nto success..chheck it"
        exit 1
    else
        echo "git installation is success"
    fi
else
    echo "git is already installed nothing to do"
fi

dnf list install mysql

if [ $? -ne 0 ]
then
    echo "mysal is not installed going to install"
    dnf install mysql -y
    if [ $? -ne 0 ]
    then
        echo "mysql installation is failure..please check"
        exit 1
    else
        echo "myinstallation is success"
    fi
else
    echo "mysql is already installed nothing to do"
fi

