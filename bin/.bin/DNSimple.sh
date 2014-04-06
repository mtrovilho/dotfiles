#!/bin/sh
 
LOGIN=""
PASSWORD=""
DOMAIN_ID=""
RECORD_ID=""
IP=`curl http://icanhazip.com/`
 
curl -H "Accept: application/json" \
     --basic -u "$LOGIN:$PASSWORD" \
     -H "Content-Type: application/json" \
     -i -X PUT https://DNSimple.com/domains/$DOMAIN_ID/records/$RECORD_ID.json \
     -d {"record":{"content":"$IP"}}
