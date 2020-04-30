#!/bin/sh -e

while [ 1 ]
do
  if [ -d "$DOCROOT" ]
  then
    cd "$DOCROOT"
    browser-sync start --no-open --no-ui --directory --server --files .
  else
    echo "watiting for $DOCROOT"
  fi
  sleep 2
done
