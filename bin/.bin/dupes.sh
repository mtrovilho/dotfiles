#!/bin/sh
###############
# Dupe finder #
###############

echo "Findind duplicates on ${1}"
cd ${1}
find . -size 20 \! -type d -exec cksum {} \; | sort | tee /tmp/f.tmp | 
cut -f 1,2 -d ' ' | uniq -d | grep -hif - /tmp/f.tmp > ~/Desktop/dupes.txt
