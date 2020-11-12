#!/bin/bash
trap "exit" SIGINT
echo Configured to generate a new fortune every $INTERVAL seconds
mkdir -p /var/htdocs
while : 
do 
   echo $(date) Writing Fortune to /var/htdocs/index.html
   /usr/games/fortune > /var/htdocs/index.html
   sleep $INTERVAL
done
