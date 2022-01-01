#!/usr/bin/env bash

# We wish to remove everything before and including
# the double dash, and by using
#
#     ##*--
#
# we tell bash to do so.

for f in *; do echo "${f##*--}"; done
