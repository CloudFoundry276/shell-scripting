#!/bin/bash

#############################################################
# Date: 12/09/2023
# Author: Sata Pitalekar
# Title: First 10 Biggest File
# Description: In this shell script, we are finding first 10 
#              biggest file in the file system & write the 
#              output to a file.
#############################################################

path=$(1)
echo $path
du -ah $path | sort -hr | head -n 5 > /tmp/filesize.txt
echo 'list of big files in file system: '${path}
cat /tmp/filesize.txt
