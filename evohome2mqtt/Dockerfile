
# Utilise l'image de base Home Assistant (adaptée automatiquement à l'architecture)
ARG BUILD_FROM=ghcr.io/home-assistant/amd64-base:latest
FROM ${BUILD_FROM}

# Définir la locale
ENV LANG C.UTF-8

# 👉 Installe les dépendances nécessaires (exemple pour Python)
# Si ton bridge Evohome2MQTT est en Python, décommente ces lignes :
# RUN apk add --no-cache python3 py3-pip
# COPY requirements.txt /tmp/
# RUN pip3 install --no-cache-dir -r /tmp/requirements.txt

# Copie la structure rootfs (incluant /etc/services.d/evohome/run)
COPY rootfs/ /

# Rends le script exécutable
RUN chmod +x /etc/services.d/evohome/run

# IMPORTANT : s6 doit être PID 1
CMD ["/init"]
