#!/bin/bash
# 
# echo 'Public IP:'
# curl -s http://checkip.dyndns.org | sed 's/[a-zA-Z/<> :]//g'
# curl -s whatsmyip.islayer.com | grep [0-9]
# echo 'Private IP:'
# ifconfig | grep 'inet ' | grep -v 127.0.0.1 | cut -d\   -f2

echo 'Public IP:'
curl -s http://checkip.dyndns.org | sed 's/[a-zA-Z/<> :]//g'
echo 'Private IP:'
ifconfig | grep 'inet ' | grep -v 127.0.0.1 | cut -d\   -f2
