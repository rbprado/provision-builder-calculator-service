#!/bin/bash

set -x

while true; do
    sleep 5
    wget http://localhost:8200/calculator/multiply?a=8\&b=6
    
    if [ $? -eq 0 ]; then
        echo 'Service UP'
        break
    fi
done
