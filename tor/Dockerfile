FROM python:3.8-alpine
ENV TZ=America/Los_Angeles
ARG DOCKER_PORT

RUN apk add --update --no-cache \
    alpine-sdk \
    build-base \
    linux-headers \
    tor

RUN mkdir -p /data/tor && chmod 0700 /data/tor && chown root.root /data/tor
ADD torrc /etc/tor/torrc
RUN sed -i "s/DOCKER_PORT/${DOCKER_PORT}/" /etc/tor/torrc
ADD docker-entrypoint.sh .
ENTRYPOINT ["sh", "docker-entrypoint.sh"]
