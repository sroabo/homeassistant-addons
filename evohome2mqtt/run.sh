#!/usr/bin/with-contenv bashio
set -e

USERNAME="$(bashio::config 'username')"
PASSWORD="$(bashio::config 'password')"
MQTT_HOST="$(bashio::config 'mqtt_host')"
MQTT_PORT="$(bashio::config 'mqtt_port')"

echo "Starting Evohome2MQTT..."
exec evohome2mqtt   --username "${USERNAME}"   --password "${PASSWORD}"   --mqtt-host "${MQTT_HOST}"   --mqtt-port "${MQTT_PORT}"