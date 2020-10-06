FROM python:3.8-alpine
ENV TZ=America/Los_Angeles
ARG DOCKER_PORT

RUN apk add --update --no-cache \
    alpine-sdk \
    build-base \
    linux-headers \
    tor

RUN mkdir /data && chmod 0700 /data
ADD torrc /etc/tor/torrc
RUN sed -i "s/DOCKER_PORT/${DOCKER_PORT}/" /etc/tor/torrc && \
    cat /etc/tor/torrc

ENTRYPOINT ["tor"]
