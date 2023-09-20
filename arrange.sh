#!/bin/bash

for file in *; do
    if [ "$file" = "arrange.sh" ]; then
        continue
    fi
    if [ -f "$file" ]; then
        first_letter=${file:0:1}
        lower_first_letter=$(echo $first_letter | tr '[:upper:]' '[:lower:]')
        
        if [ ! -d "../$lower_first_letter" ]; then
            mkdir "../$lower_first_letter"
        fi
        
        mv "$file" "../$lower_first_letter/"
    fi
done
