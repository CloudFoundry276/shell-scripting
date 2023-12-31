#!/bin/bash

#############################################################
# Date: 12/09/2023
# Author: Sagar Pitalekar
# Title: Check Disk Utilization
# Description: In this shell script, we are checking the 
#              utilization of disk of system.
#############################################################

echo "Check Disk Utilization in Linux System"
# disk_size=$(df -h | grep "/dev/xvda1" | awk '{print $5}' | cut -d '%' -f 1)
disk_size=$(df -h | grep "/dev/xvda1" | awk '{print $5}' | cut -d '%' -f 1 | head -n 1)
echo ${disk_size}'% of disk is filled'
if [ $disk_size -gt 80 ];
then
    echo 'disk is utilized more than 80%, expand or clean up disk'
else
    echo 'enough disk is available'
fi