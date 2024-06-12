#!/bin/bash

file_name=stats_`date +%Y%m%d`.txt

# Print line numbers of all files
wc -l `find ./../repos -name \*.h -or -name \*.c -or -name \*.md -or -name Makefile` > ../data/$file_name

# Do the double check by one-liner program.
sed '$d' ../data/$file_name | ruby -e "total = 0; ARGF.each do |line| splited = line.chomp.split(' '); STDERR.puts \"#{splited[1]}, #{total}, #{splited[0]}\"; total = total + splited[0].to_i; end; puts total;"
