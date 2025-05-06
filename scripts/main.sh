#!/bin/bash
set -e
echo "🚀 SkyDeploy launching services via Docker Compose..."

cd "$(dirname "$0")/.."

docker-compose down
docker-compose pull
docker-compose up -d

echo "✅ All containers are up!"
docker ps
