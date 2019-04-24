#!/bin/bash

#empty file
cat /dev/null > filename.txt

#get current timestamp --> converted to seconds since Unix epoch
current_time=$(date +%s)

#write timestamp to file for later comparison
echo -e $current_time >> filename.txt
