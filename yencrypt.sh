#!/bin/bash

if [ $# -lt 2 ]
then
    printf "%s [file] [recipients...]\n\nEncrypts the provided file.\n\n" "$(basename $0)"
    printf "Runs:\n    gpg --encrypt --armor --output file.enc -r recipient file\n"
    printf "Use --symmetric to also add a password; drop recipients to only use a password.\n"
    exit 0
fi

input="$1"
output="$1.$(date +%s).enc"
shift
for r
do
    recipients=(--recipient "$r")
done

printf "Encrypting %s... " "$input"
gpg --encrypt --armor --output "$output" "${recipients[@]}" "$input" &&
printf "done:\n%s -> %s\n" "$input" "$output"
