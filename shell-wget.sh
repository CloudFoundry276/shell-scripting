#!/bin/bash

#############################################################
# Date: 12/09/2023
# Author: Sagar Pitalekar
# Title: Shell Script Wget Command
# Description: In this shell script, we are downloading & 
#              installing softwares using wget command.
#############################################################

echo "download prometheus binaries"
if [ -e /home/ec2-user/prometheus-2.48.1.linux-amd64.tar.gz ];
then
    echo "file already exists"
    tar -zxvf /home/ec2-user/prometheus-2.48.1.linux-amd64.tar.gz
else
    echo "file not exists, file downloading is in progress"
    wget https://github.com/prometheus/prometheus/releases/download/v2.48.1/prometheus-2.48.1.linux-amd64.tar.gz
    tar -zxvf /home/ec2-user/prometheus-2.48.1.linux-amd64.tar.gz
    echo "file downloaded & extracted"
fi
