#!/bin/bash
URL=""

# CRONTAB every 5 minutes
# */5 * * * * wget -O /dev/null -o /dev/null example.com

while :
do
    wget -O /dev/null -o /dev/null $URL
    # wget $URL > /dev/null
    sleep 5m
done
