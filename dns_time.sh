#!/bin/sh

alias dig='/usr/bin/dig'


for domain in $(cat domains.txt)
do
    for server in $(cat servers.txt)
    do
        response_time=$(dig @$server $domain | grep -o "Query time: [0-9]*" | grep -o "[0-9]*")
        echo $server,$domain,$response_time
    done
done
exit