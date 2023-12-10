#!/bin/bash

#############################################################
# Date: 12/10/2023
# Author: Sagar Pitalekar
# Title: Shell Script Errors in Error Logs
# Description: In this shell script, we are checking the errors 
#              in error logs.
#############################################################

error_file=`cat /var/log/messages`
matched_error=`grep -i error /var/log/messages`
echo $matched_error
if [[ $? -eq 0 ]];
then
    echo "found error in OS logs: "${matched_error}
else
    echo "no error in message logs"
fi
