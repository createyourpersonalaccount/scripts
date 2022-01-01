#!/bin/sh

if [ $# -lt 1 ]
then
    printf "%s [files...]\n\nDecrypts the provided files.\n\n" "$(basename $0)"
    printf "Runs:\n    gpg --decrypt --output file file.123.enc\n"
    exit 0
fi

for input in "${@:1}"
do
    output=$(echo "$input" | rev | cut -c16- | rev)
    printf "Decrypting %s... " "$input"
    gpg --decrypt --output "$output" "$input" &&
    printf " done:\n%s -> %s\n" "$input" "$output"
done
