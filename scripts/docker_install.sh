#!/bin/bash
set -e

echo "🔧 Installing Docker..."
sudo apt-get update
sudo apt-get install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER
echo "✅ Docker installed successfully. Please log out and log back in to apply permissions."
