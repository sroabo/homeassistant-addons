
ARG BUILD_FROM=ghcr.io/home-assistant/amd64-base:latest
FROM ${BUILD_FROM}

ENV LANG=C.UTF-8

RUN apk add --no-cache nodejs npm
RUN npm install -g evohome2mqtt

COPY rootfs/ /

# Pas besoin de CMD, la base Home Assistant utilise /init par défaut

