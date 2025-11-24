ARG BUILD_FROM=ghcr.io/hassio-addons/base:14.0.3
FROM ${BUILD_FROM}

# Installer Node.js et npm
RUN apk add --no-cache nodejs npm

# Installer evohome2mqtt globalement
RUN npm install -g evohome2mqtt

# Copier le script de démarrage
COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD [ "/run.sh" ]