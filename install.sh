#!/bin/bash

# files in subfolders
mapfile -t files < <(find ./*/ -type f)

for file in "${files[@]#*/}"; do
    # creating folders in the home directory
    mkdir -p "$HOME/$(dirname "${file#*/}")"

    # creating links with overwrites
    ln -sf "$PWD/$file" "$HOME/${file#*/}"
done
