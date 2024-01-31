FROM prom/prometheus:v2.32.1

COPY prometheus.yml /etc/prometheus/prometheus.yml

COPY start_prometheus.sh /usr/local/bin/start_prometheus.sh

# Install sed (used to set API Keys)
# RUN apt-get update && apt-get install -y sed

# Set permissions
USER root
RUN chmod +x /usr/local/bin/start_prometheus.sh
RUN chmod 777 /etc/prometheus/prometheus.yml
USER nobody

ENTRYPOINT [ "/bin/sh", "-c", "/usr/local/bin/start_prometheus.sh" ]