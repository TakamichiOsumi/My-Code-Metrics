#!/bin/bash

# Create a new file name
master_commit_id=`git --no-pager log --abbrev-commit | head -1 | ruby -e "ARGF.each do |line| splited = line.chomp.split(' '); puts splited[1]; end;"`
created_time=`date +%Y%m%d`
commit_id_logs=${created_time}-${master_commit_id}.txt

# Write the latest commit ids of all repositories
git submodule foreach git --no-pager show --stat HEAD > commits/$commit_id_logs
