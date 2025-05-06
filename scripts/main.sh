#!/bin/bash
set -e
echo "🌐 Starting SkyDeploy setup..."

./scripts/docker_install.sh

./scripts/run_containers.sh
# ./scripts/setup_firewall.sh # Uncomment if needed

echo "🚀 SkyDeploy environment is ready!"
