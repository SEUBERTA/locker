#!/bin/bash 
#sed -i -e 's/something/other/g' filename.txt
#truncate -s 0 filename.txt;

# count length of file
#a= wc -m < filename.txt
#chars=$($a|cut -d' ' -f3)
#echo '$chars'
#a=($(wc filename.txt))
#chars=${a[2]}

#read lines words chars filename.txt <<< $(wc x)
#echo "$chars"

#files="*.fastq"
#echo "$files"

#if [ "$chars"- lt "1" ]
if [ -s filename.txt ]
then
	cat /dev/null > filename.txt
else
	echo -e "1" >> filename.txt
fi

#cat /dev/null > filename.txt
#echo -e "1" >> filename.txt