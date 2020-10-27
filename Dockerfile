FROM alpine:latest

RUN apk add --update --no-cache \
    tor

RUN mkdir -p /tor && chmod 0700 /tor
ADD torrc /etc/tor/torrc
ADD docker-entrypoint.sh .
ENTRYPOINT ["sh", "docker-entrypoint.sh"]
