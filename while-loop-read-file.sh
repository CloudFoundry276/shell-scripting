#!/bin/bash

#############################################################
# Date: 12/10/2023
# Author: Sagar Pitalekar
# Title: Shell Script While Loop Read File
# Description: In this shell script, we are using while loop 
#              to read each line of text file.
#############################################################

echo "while loop demo"
while read -r line;
do
    echo $line
done < while-test.txt
