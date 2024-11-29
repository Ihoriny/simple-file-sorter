#!/bin/bash

shopt -s dotglob  

if [ $# -eq 0 ]; then
	echo "The target directory is not specified"
    exit 1
fi

DIR_PATH="${1%/}/"

for file in "$DIR_PATH"*; do
    
    if [ -f "$file" ] && [ ! -L "$file" ]; then
        FILES_DIR_PATH="$DIR_PATH${file##*.}"

        mkdir -p $FILES_DIR_PATH
        mv -n $file $FILES_DIR_PATH
    fi
done

exit 0