#!/bin/bash
set -e
source "$(dirname "$0")/config.env"

echo "🚀 Running containers..."

docker run -d --restart unless-stopped \
  -p ${FLASK_PORT}:5000 \
  --name ${FLASK_CONTAINER} \
  ${FLASK_IMAGE}

docker run -d --restart unless-stopped \
  -p ${NODE_EXPORTER_PORT}:9100 \
  --name ${NODE_EXPORTER_CONTAINER} \
  ${NODE_EXPORTER_IMAGE}

docker run -d --restart unless-stopped \
  -p ${PROMETHEUS_PORT}:9090 \
  -v ${PROMETHEUS_YML_PATH}:/etc/prometheus/prometheus.yml \
  -v ${PROMETHEUS_DATA_PATH}:/prometheus \
  --name ${PROMETHEUS_CONTAINER} \
  ${PROMETHEUS_IMAGE}

docker run -d --restart unless-stopped \
  -p ${GRAFANA_PORT}:3000 \
  --name ${GRAFANA_CONTAINER} \
  ${GRAFANA_IMAGE}

echo "✅ All containers are running."
