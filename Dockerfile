#
# Dockerfile for ffserver
#

FROM alpine:3.8

RUN apk add curl bash ffmpeg && \
    rm -rf /var/cache/apk/*

MAINTAINER kev <bachmma1@gmail.com>

COPY ffserver.conf /etc/

EXPOSE 554 8090

ENTRYPOINT ["ffserver"]
