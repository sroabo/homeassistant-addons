
# L'image de base Home Assistant fournit s6-overlay et bashio
ARG BUILD_FROM=ghcr.io/home-assistant/aarch64-base:latest
FROM ${BUILD_FROM}

# Locale
ENV LANG=C.UTF-8

# Installe Node.js et npm (nécessaire pour evohome2mqtt)
RUN apk add --no-cache nodejs npm

# Installe evohome2mqtt en global
# (le paquet publie un binaire "evohome2mqtt" accessible dans PATH)
RUN npm install -g evohome2mqtt

# Copie la structure s6 (services.d/evohome/run)
COPY rootfs/ /

# Rend le script exécutable
RUN chmod +x /etc/services.d/evohome/run

# IMPORTANT : s6 doit être PID 1
CMD ["/init"]
