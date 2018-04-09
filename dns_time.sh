#!/bin/sh

alias dig='/usr/bin/dig'

cd /home/pi/dns_response_time
for domain in $(cat domains.txt)
do
    for server in $(cat servers.txt)
    do
        datetime=$(date +"%Y-%m-%d %H:%M:%S")
        response_time=$(dig @$server $domain | grep -o "Query time: [0-9]*" | grep -o "[0-9]*")
        echo $datetime,$server,$domain,$response_time
    done
done
exit
