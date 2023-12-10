#!/bin/bash

#############################################################
# Date: 12/10/2023
# Author: Sagar Pitalekar
# Title: Shell Script Read Test
# Description: In this shell script, we are testing the read 
#              functionality.
#############################################################

read -p "please enter your name: " name
read -p "please enter password: " -s password
echo ""
echo "name is "${name}
echo "password is "${password}
read -p "it will timeout in 10 seconds: " -t 10
echo ""