#!/bin/bash
#set lock

#reset to tag "startTag1" and remove all commits, which where done afterwards
git reset --hard startTag1
git push --force origin master
git prune --v

while true
do
	#write current timestamp to file
	. ./write-to-file.sh

	git add .
	#commit with timestamp as message
	git commit -m `date "+%Y%m%d-%H%M%S"`

	git push origin master

	#wait 5 minutes
	sleep 300
done
