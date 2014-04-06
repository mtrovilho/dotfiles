#!/bin/sh
# git fetch all projects

for project in `ls`
do
  if [ -d $project ]; then
    echo "checking if $project is a git repo"
    cd "$project"
    if [ -d .git ]; then
      echo "found git repo, fetching all"
      git fetch --all --prune
      echo "done.\n\n"
    else
      echo "git repo not found.\n\n"
    fi
    cd ..
  fi
done
