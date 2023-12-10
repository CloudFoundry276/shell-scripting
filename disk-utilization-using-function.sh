#!/bin/bash

#############################################################
# Date: 12/10/2023
# Author: Sagar Pitalekar
# Title: Shell Script Disk Utilization using Function
# Description: In this shell script, we are using function(s) 
#              to check disk utilization.
#############################################################

echo "Checking Disk Utilization using Function"

disk_utilization() {
    disk=`df -h`
    echo "Disk Utilization is:"
    echo $disk
}

if [[ $? -eq 0 ]];
then
    echo "Find Disk Utilization Report as follows:"
    disk_utilization
else
    echo "Disk Utilization Report Issue"
fi
