#!/bin/sh
# Reload the stubs from $GNUPGHOME
# Useful when switching between yubikeys
gpg-connect-agent "scd serialno" "learn --force" /bye

