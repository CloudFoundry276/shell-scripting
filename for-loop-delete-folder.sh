#!/bin/bash

#############################################################
# Date: 12/09/2023
# Author: Sagar Pitalekar
# Title: Shell Script For Loop with Find & Remove Command
# Description: In this shell script, we are using for loop to 
#              check iteratively whether test folder exists or 
#              not & if exists then delete it.
#############################################################

for folder in $(find -type d);
do
    echo "folder: "${folder}
    if [ -d test ];
    then
        echo "test folder exists"
        echo "removing test folder"
        rm -rf test
    else
        echo "test folder not exists"
    fi
done
