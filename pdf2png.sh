#!/bin/bash

if [ $# -lt 1 ]
then
    printf "%s [pdf files...]\n\nConverts the provided pdf files to png images.\n\n" "$(basename $0)"
    printf "Runs:\n    convert -density 300 file.pdf -quality 90 file.png\n"
    exit 0
fi

for input
do
    output="${input%.pdf}.png"
    printf "Converting %s... " "$input"
    convert -density 300 "$input" -quality 90 "$output" &&
    printf "done:\n%s -> %s\n" "$input" "$output"
done
