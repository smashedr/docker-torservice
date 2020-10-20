#!/usr/bin/env sh

set -e

ls -lah /data/tor

(sleep 10 && printf "\n\n***Hostname: " && cat /data/tor/hostname) &

exec "tor"
