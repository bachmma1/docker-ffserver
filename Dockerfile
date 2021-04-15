FROM ghcr.io/linuxserver/baseimage-alpine:3.13

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="bachmma1 version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="bachmma1"

# environment settings
ENV S6_BEHAVIOUR_IF_STAGE2_FAILS=2

# install packages
RUN \
echo "**** install packages ****" && \
apk add --no-cache --upgrade \
	curl \
	bash \
	ffmpeg=3.4.6-r0

COPY root/ /

EXPOSE 8080

VOLUME /config /data