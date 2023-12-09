#!/bin/bash

#############################################################
# Date: 12/09/2023
# Author: Sata Pitalekar
# Title: Shell Script Crontab Management in Linux
# Description: In this shell script, we are using crontab to 
#              manage & schedule jobs in linux.
#############################################################

echo "Check Docker Service Status"
status="`systemctl status docker|awk 'NR==3 {print}'|cut -d ':' -f 2|cut -d '(' -f 1`"
echo $status
if [ $status = "active"  ];
then
	echo "service is running fine....."
else
	echo "service is not running"
    sudo systemctl start docker.service
    echo "service started now"
fi
