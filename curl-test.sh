#!/bin/bash

#############################################################
# Date: 12/10/2023
# Author: Sagar Pitalekar
# Title: Shell Script Curl Test
# Description: In this shell script, we are exploring the 
#              curl linux command.
#############################################################

URL="https://www.google.com"

# response=$(curl -s -w "%{http_code}" $URL)
response=$(curl -o /dev/null -s -w "%{http_code}\n" $URL)

http_code1=$(tail -n1 <<< "$response")
content=$(sed '$ d' <<< "$response")

echo "HTTP CODE: "${http_code1}
if [ $http_code1 == 200 ];
then
    echo "request is working fine!"
else
    echo "send slack message that request is denied"
fi
