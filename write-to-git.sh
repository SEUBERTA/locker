#!/bin/bash  
#while script; do sleep 10; done
while true
do 
. ./writeFile/write-to-file.sh

git add .  

git commit -m `date "+%Y%m%d-%H%M%S"`

git push origin master

sleep 120
done
