#!/bin/bash

file_name=stats_`date +%Y%m%d`.txt

# Print line numbres of all files
wc -l `find ./../repos -name \*.h -or -name \*.c -or -name \*.md -or -name Makefile` > $file_name

# Do the double check by one-liner program.
sed '$d' $file_name | ruby -e "total = 0; ARGF.each do |line| splited = line.chomp.split(' '); total = total + splited[0].to_i; end; puts total;"