#!/bin/bash
# Program name: pingall.sh
date
cat /opt/list.txt |  while read output
do
    ping -c 1 "$output" > /dev/null
    if [ $? -eq 0 ]; then
    echo "RMQ Server $output is up"
    else
    echo "RMQ Server $output is down"
    fi
done

