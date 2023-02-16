#!/bin/bash

echo "destroy" >> destroy.log

COUNT=$(wc -l < destroy.log)

if [ "$COUNT" -lt 5 ]; then
    exit 1
fi