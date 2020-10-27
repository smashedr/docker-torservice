#!/usr/bin/env sh

set -e

ls -lah /tor

(sleep 15 && printf "\n\n***Hostname: " && cat /tor/hostname) &

exec "tor"
