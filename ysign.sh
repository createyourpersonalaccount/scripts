#!/bin/bash

if [ $# -lt 1 ]
then
    printf "%s [files...]\n\nSigns the provided files.\n\n" "$(basename $0)"
    printf "Runs:\n    gpg --clearsign --output file.sig file\n"
    exit 0
fi

for input
do
    output="$input.sig"
    printf "Signing %s... " "$input"
    gpg --clearsign --output "$output" "$input" &&
    printf "done:\n%s -> %s\n" "$input" "$output"
done
