#!/bin/bash

if [ -z "$1" ]
  then
    echo "You need to supply the fd to wait for"
    exit 1
fi

WAIT=${2:="1"}

echo "Waiting for $1 to be accessible..." 
while fuser $1 >/dev/null 2>&1 ; do
     echo "Waiting $WAIT..."
     sleep $WAIT
done

echo "Released."
