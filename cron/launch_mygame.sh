#!/bin/bash
for t in {1..12}
do
    if [ -z "$(ps -C DreamDaemon | grep DreamDaemon)" ]
    then
        /home/purlek/byond/bin/DreamDaemon /home/purlek/byond/bestrp/bestrp.dmb 22000 -safe &
    fi
    sleep 5
done
