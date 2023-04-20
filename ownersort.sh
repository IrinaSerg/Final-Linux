#!/bin/bash

target_dir_path=$1
user_name=$(whoami)
user_path=$HOME/copied 

mkdir $user_path

files=$(ls $target_dir_path)

for file in $files // 123.bak
do
    if [[ "$user_name" == "$(echo $file | stat -f '%Su')" ]]
    then
        cp "$target_dir_path/$file" "$user_path/$file"
    fi
done

exit 0