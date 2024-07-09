# priobike-prometheus

This repository contains a custom [Prometheus](https://hub.docker.com/r/prom/prometheus) setup and a custom [Node Exporter](https://github.com/prometheus/node_exporter) setup.

The node exporter is configured to insert metadata about the current node name into the exported metrics. In this way, we can run one instance of the node exporter on each physical node and monitor the deployment load. This feature is used by https://github.com/priobike/priobike-load-service

We use this repository to build our own prometheus image with our configuration (prometheus.yml) baked in.

[Learn more about PrioBike](https://github.com/priobike)

## What else to know

### ⚠️ Don't merge `main`/`stable`/`release` branch ⚠️

Similar to our [priobike-deployment-docker](https://github.com/priobike/priobike-deployment-docker) repo, those branches include deployment specific differences and are diverging on purpose.

## Contributing

We highly encourage you to open an issue or a pull request. You can also use our repository freely with the `MIT` license. 

Every service runs through testing before it is deployed in our release setup. Read more in our [PrioBike deployment readme](https://github.com/priobike/.github/blob/main/wiki/deployment.md) to understand how specific branches/tags are deployed.

## Anything unclear?

Help us improve this documentation. If you have any problems or unclarities, feel free to open an issue.
