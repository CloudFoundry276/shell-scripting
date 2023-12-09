#!/bin/bash

#############################################################
# Date: 12/09/2023
# Author: Sagar Pitalekar
# Title: Git Installation
# Description: In this shell script, we are detecting the OS 
#              installed in ec2 & accordingly install git as 
#              per respective OS.
#############################################################

echo "Git Installation:"
if [ "$(uname)" == "Linux" ];
then
    echo "OS: Linux"
    sudo yum install git -y
elif [ "$(uname)" == "Darwin" ];
then
    echo "OS: MacOS"
    brew install git
else
    echo "OS not found"
fi
