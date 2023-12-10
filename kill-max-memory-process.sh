#!/bin/bash

#############################################################
# Date: 12/10/2023
# Author: Sagar Pitalekar
# Title: Shell Script Curl Test
# Description: In this shell script, we are killing the process
#              which take maximum memory of the system.
#############################################################

echo "This script kill Process which is taking maximum memory"
Processid=$(ps au --sort -%mem | head -10 | awk '{print $2}' | awk ' NR==2')
echo $Processid
kill -9 $Processid
if [[ $? -eq 0 ]];
then
    echo "Process is killed successfully"
else
    echo "some issue in kill"
fi
