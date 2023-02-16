#!/bin/bash

TRIES=$1

echo "try" >> try.log

COUNT=$(wc -l < try.log)

if [ "$COUNT" -lt "$TRIES" ]; then
    exit 1
fi

echo "it-does-now" > this-file-does-not-exist