# Skydeploy 🚀

Skydeploy is a cloud-native DevOps monitoring and deployment project built using Docker, Prometheus, Grafana, and Flask. It showcases a production-style setup ideal for monitoring infrastructure metrics while running a Python-based application on an EC2 instance.

![Deployment](https://img.shields.io/badge/deployment-EC2-blue)
![Docker](https://img.shields.io/badge/docker-ready-blue)
![Grafana](https://img.shields.io/badge/monitoring-Grafana%2FPrometheus-green)
![License](https://img.shields.io/badge/license-MIT-lightgrey)

---

## 📌 Features

- Python Flask app with Docker
- Monitoring with Prometheus + Node Exporter
- Beautiful Grafana dashboard
- EC2-based deployment
- System metrics tracking (CPU, RAM, etc.)
- Dockerized end-to-end
- Infrastructure as code (Terraform)
- Bash scripting for automation
- Production-ready project structure
- Prometheus scrapes metrics from Node Exporter
- Grafana visualizes the metrics via Prometheus datasource
- Flask app is served via Docker container (port 5000)



⚙️ Prerequisites
AWS Account (to launch EC2)

Ubuntu EC2 instance (t2.micro recommended)

Docker & Docker Compose installed on EC2

Git installed


🚀 Quick Start
Option 1: Clone & Run
bash
Copy
Edit
# SSH into your EC2 instance
ssh ubuntu@your-ec2-ip

# Clone the repo
git clone https://github.com/otarbakh/Skydeploy.git
cd Skydeploy

# Run containers (manually or with script)
bash scripts/start.sh
Option 2: Use Docker Image Only (Flask App)
bash
Copy
Edit
docker pull otarbakhtadze/skydeploy:latest
docker run -d -p 5000:5000 otarbakhtadze/skydeploy:latest


📊 Access Services
Service	Port
Flask App	http://<EC2-IP>:5000
Prometheus	http://<EC2-IP>:9090
Grafana	http://<EC2-IP>:3000

Default Grafana login:
Username: admin
Password: admin