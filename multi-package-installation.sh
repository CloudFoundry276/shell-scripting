#!/bin/bash

#############################################################
# Date: 12/10/2023
# Author: Sagar Pitalekar
# Title: Shell Script Multiple Packages/Softwares Installation
# Description: In this shell script, we are installing multiple 
#              packages or softwares by passing the name(s) of 
#              package(s) or software(s) as command argument.
#############################################################

echo "Multi Package/Software Installation"

if [[ $# -eq 0 ]]
then
    echo "please provide package or software name(s) as command line argument(s)"
    exit 1
fi

if [[ $(id -u) -ne 0 ]]
then
    echo "please run the command(s) as root user or using sudo priviledge(s)"
    exit 2
fi

for softpack in $@
do
    if which $softpack &> /dev/null
    then
        echo ${softpack}' already installed'
    else
        echo 'Installing '${softpack}'....'
        sudo yum update
        sudo yum install $softpack -y &> /dev/null
        if [[ $? -eq 0 ]]
        then
            echo ${softpack}' installed successfully'
        else
            echo 'unable to install '${softpack}
        fi
    fi
done
