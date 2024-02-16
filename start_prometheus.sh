#!/bin/sh

PROMETHEUS_CONFIG=$(cat /etc/prometheus/prometheus.yml)
# Replace the API key placeholders in the config file with the actual API keys
PROMETHEUS_CONFIG_UPDATED=$(echo "${PROMETHEUS_CONFIG/TRACKING_SERVICE_API_KEY/$TRACKING_SERVICE_API_KEY}")
PROMETHEUS_CONFIG_UPDATED=$(echo "${PROMETHEUS_CONFIG_UPDATED/BIKER_SWARM_MONITOR_API_KEY/$BIKER_SWARM_MONITOR_API_KEY}")
PROMETHEUS_CONFIG_UPDATED=$(echo "${PROMETHEUS_CONFIG_UPDATED/LOAD_SERVICE_API_KEY/$LOAD_SERVICE_API_KEY}")
# Write updated config to /etc/prometheus/prometheus.yml
echo "$PROMETHEUS_CONFIG_UPDATED" > /etc/prometheus/prometheus.yml

/bin/prometheus --config.file=/etc/prometheus/prometheus.yml --storage.tsdb.path=/prometheus --storage.tsdb.retention.time=1y