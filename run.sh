#!/bin/bash
set -m
 
mongodb_cmd="mongod --bind_ip_all"
cmd="$mongodb_cmd"

if [ "$AUTH" == "yes" ]; then
    cmd="$cmd --auth"
fi

echo $cmd
$cmd & /set_mongodb_password.sh

fg