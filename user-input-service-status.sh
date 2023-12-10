#!/bin/bash

#############################################################
# Date: 12/10/2023
# Author: Sagar Pitalekar
# Title: Shell Script User Input Service Status
# Description: In this shell script, we are taking name of 
#              service as input from user & printing the 
#              current status of service.
#############################################################

echo "Package or Software Service Status Checking"
read -p "enter name of service to check it's status: " service_name
echo "Name of Service: "${service_name}
if [ -z $service_name ];
then
    echo "please enter valid service name"
else
    systemctl status $service_name
fi
