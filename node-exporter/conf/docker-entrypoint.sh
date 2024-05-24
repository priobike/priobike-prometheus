#!/bin/sh -e
echo "node_meta{node_id=\"$NODE_ID\"} 1" > /etc/node-exporter/node-meta.prom
exec "$@"