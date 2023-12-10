#!/bin/bash

#############################################################
# Date: 12/10/2023
# Author: Sagar Pitalekar
# Title: Shell Script Argument Demo
# Description: In this shell script, we are passing arguments 
#              for argument demo testing.
#############################################################

test_arg="Hello"
echo "Shell Script Name: $0"
echo "First Argument: $1"
echo "Second Argument: $2"
echo ${test_arg}' Arg'
echo 'Arg '${test_arg}
