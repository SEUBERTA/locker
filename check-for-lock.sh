#!/usr/bin/env bash

#get original sources --> file with updated timestamp via
#forced git pull
git fetch --all
git reset --hard origin/master

#current time for comparison
current_time=$(date +%s)

# read seconds from file
last_time=$(cat filename.txt)
diff=$(( $current_time - $last_time ))

echo "lock age $diff seconds"

if (( $diff < 420 )); then
    echo '!!!STOP!!! Resource already locked'
    exit 1
else
    echo 'Lock not in use --> You can continue'
    exit 0
fi
