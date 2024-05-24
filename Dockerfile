FROM prom/prometheus:v2.45.0

COPY prometheus.yml /etc/prometheus/prometheus.yml
COPY rules/swarm_node.rules.yml /etc/prometheus/swarm_node.rules.yml
COPY rules/swarm_task.rules.yml /etc/prometheus/swarm_task.rules.yml

COPY start_prometheus.sh /usr/local/bin/start_prometheus.sh

# Set permissions (required to set the API keys in the prometheus.yml file dynamically)
USER root
RUN chmod +x /usr/local/bin/start_prometheus.sh
RUN chmod 777 /etc/prometheus/prometheus.yml
USER nobody

ENTRYPOINT [ "/bin/sh", "-c", "/usr/local/bin/start_prometheus.sh" ]