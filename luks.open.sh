#!/bin/sh

if [ $# -eq 0 ]
    then
        printf "%s [device]\n\n" "$(basename $0)"
        printf "Provide the device to be unlocked and mounted.\n\n"
        printf "Runs:\n    cryptsetup luksOpen device secret &&\n    mount /dev/mapper/secret /mnt/encrypted-storage\n"
    exit 0
fi
cryptsetup luksOpen "$1" secret && mount /dev/mapper/secret /mnt/encrypted-storage && printf "Opened $1 under /mnt/encrypted-storage\n"
