#!/bin/bash

#############################################################
# Date: 12/09/2023
# Author: Sata Pitalekar
# Title: Clean Log Files
# Description: In this shell script, we are cleaning all the
#              previous 30 days logs from log files & maintain latest
#              logs.
#############################################################

path=$(1)
echo $path
find $path -mtime +30 -delete
if [[ $? -eq 0 ]];
then
    echo "DELETE"
else
    echo "END"
fi
