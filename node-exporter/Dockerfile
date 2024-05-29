FROM prom/node-exporter:v1.6.1

COPY docker-entrypoint.sh /etc/node-exporter/docker-entrypoint.sh
RUN chmod +x /etc/node-exporter/docker-entrypoint.sh
ENTRYPOINT  [ "/etc/node-exporter/docker-entrypoint.sh" ]