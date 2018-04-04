#!/bin/sh

alias dig='/usr/bin/dig'

domains="google.com uol.com.br estadao.com.br facebook.com amazon.com terra.com.br dev.andreanidr.com fenrir.andreanidr.com"
dns_servers="8.8.8.8 1.1.1.1 208.67.222.222 9.9.9.9"
for d in $domains; do
    for s in $dns_servers; do
        response_time=$(dig @$s $d | grep -i "Query time:")
        echo Domain: $d DNS: $s 
        echo $response_time 
        echo 
        sleep 1
    done

done