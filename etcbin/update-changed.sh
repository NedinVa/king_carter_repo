#! /usr/bin/env bash

# Get list of changed files.
changed=$(svn diff -rPREV:HEAD --summarize)

# Check for public/ revisions
for LINE in ${changed} ; do
  if [[ "$LINE" == public/*C*.xml ]]
  then
    ./etcbin/run-carter.sh $LINE
  fi
done
