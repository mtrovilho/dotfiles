#!/bin/sh

echo "checking dns entries for ${1}"
echo

echo "default DNS status:"
nslookup ${1}

echo "4.2.2.2 status:"
nslookup ${1} 4.2.2.2

echo "8.8.8.8 status:"
nslookup ${1} 8.8.8.8

echo "208.67.222.222 status:"
nslookup ${1} 208.67.222.222
