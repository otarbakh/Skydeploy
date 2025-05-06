#!/bin/bash
set -e
echo "🌐 Starting SkyDeploy setup..."

./scripts/install_docker.sh
./scripts/run_containers.sh
# ./scripts/setup_firewall.sh # Uncomment if needed

echo "🚀 SkyDeploy environment is ready!"
