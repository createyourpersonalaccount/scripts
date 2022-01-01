#!/bin/bash

printf "Running:\n"
printf "    umount /mnt/encrypted-storage &&\n"
printf "    cryptsetup luksClose /dev/mapper/secret\n"

umount /mnt/encrypted-storage &&
cryptsetup luksClose /dev/mapper/secret &&
printf "Closed the luks containter and unmounted.\n"
