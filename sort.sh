#!/bin/bash

shopt -s dotglob  

if [ $# -eq 0 ]; then
	echo "The target directory is not specified"
    exit 1
fi

DIR_PATH="${1%/}/"

if [ ! -d "$DIR_PATH" ]; then
    echo "$DIR_PATH is not a directory."
    exit 1
fi

if [ ! -w "$DIR_PATH" ]; then
    echo "No write permissions for $DIR_PATH"
    exit 1
fi

for file in "$DIR_PATH"*; do
    
    if [[ ! -f "$file" || -L "$file" ]]; then
        continue
    fi

    EXT="${file##*.}"

    if [ -z "$EXT" ]; then
        FILES_DIR_PATH="${DIR_PATH}no_extension"
    else
        FILES_DIR_PATH="$DIR_PATH$EXT"
    fi

    mkdir -p "$FILES_DIR_PATH"
    mv -n "$file" "$FILES_DIR_PATH"

done

exit 0