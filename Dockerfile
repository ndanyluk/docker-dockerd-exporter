FROM alpine:3.9.3

RUN apk update && \
    apk add --no-cache socat

ENV IN="172.18.0.1:9323" \
    OUT="9323"

EXPOSE "9323"

ENTRYPOINT socat -d -d -d TCP-L:$OUT,fork TCP:$IN
