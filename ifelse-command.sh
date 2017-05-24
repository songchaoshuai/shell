#!/bin/bash -x 
num=23;
if [ `ls / |wc -l` -eq ${num} ];then
    echo "success ls /";
else
    echo " fail ls /";
fi
