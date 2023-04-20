#!/bin/bash

dir_path=$1

if [ -d "$dir_path" ]; then
    files=$(ls -a $dir_path | grep -i -E ".+\.(bak|tmp|backup)")

    for file in $files
    do
        rm $dir_path/$file
    done
    exit 0    
else 
    echo "$dir_path does not exist."
    exit 1
fi