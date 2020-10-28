#!/usr/bin/env sh

set -e

sed -i "s/TOR_PORT/${TOR_PORT}/" /etc/tor/torrc

echo "Set tor to listen on port: ${TOR_PORT}"

ls -lah /tor

(sleep 5;while true;do until [ -f /tor/hostname ];do sleep 5;done;echo;cat /tor/hostname;echo;break;done) &

exec "tor"
