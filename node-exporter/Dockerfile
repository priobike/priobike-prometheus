FROM prom/node-exporter:v1.6.1

# IMPORTANT: docker-entrypoint.sh needs to be executable
COPY docker-entrypoint.sh /etc/node-exporter/docker-entrypoint.sh

ENTRYPOINT  [ "/etc/node-exporter/docker-entrypoint.sh" ]