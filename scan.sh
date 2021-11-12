#!/bin/sh
NOW=$(date +"%m-%d-%Y")
HOST='HOST OR IP'
USER='admin'
PASSWD='pass
CMD='enable'
CMD2='terminal length 0'
CMD3='show mac address-table'

(echo "$host - " ; (
    echo open "$host"
    sleep 1
    echo "$user"
    sleep 1
    echo "$passwd"
    sleep 1
    echo "$cmd"
    sleep 1
    echo "$cmd2"
    sleep 1
    echo "$cmd3\n"
    sleep 30
    echo "exit"
    ) | telnet   )| grep 'STATIC\|DYNAMIC'  > file.$NOW.txt
