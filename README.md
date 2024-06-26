# ⚠️ Don't merge `main`/`stable`/`release` branch ⚠️

Similiar to our [priobike-deploylment-docker](https://github.com/priobike/priobike-deployment-docker) repo, those branches include deployment specific differences and are diverging on purpose.

# Prometheus

Base-Image: [Prometheus](https://hub.docker.com/r/prom/prometheus)

We use this repository to build our own prometheus image with our configuration (prometheus.yml) baked in.
