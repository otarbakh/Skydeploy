# Skydeploy 🚀

Skydeploy is a cloud-native DevOps monitoring and deployment project built using Docker, Prometheus, Grafana, and Flask. It showcases a production-style setup ideal for monitoring infrastructure metrics while running a Python-based application on an EC2 instance.


![Deployment](https://img.shields.io/badge/deployment-EC2-blue)
![Docker](https://img.shields.io/badge/docker-ready-blue)
![Grafana](https://img.shields.io/badge/monitoring-Grafana%2FPrometheus-green)
![License](https://img.shields.io/badge/license-MIT-lightgrey)
![Terraform](https://img.shields.io/badge/IaC-Terraform-purple)
![Docker Hub](https://img.shields.io/badge/image-Docker_Hub-blue)
![AWS EC2](https://img.shields.io/badge/AWS-EC2-orange)
![AWS S3](https://img.shields.io/badge/AWS-S3-yellow)
![Bash](https://img.shields.io/badge/script-Bash-black)
![Python](https://img.shields.io/badge/language-Python-blue)
![Linux](https://img.shields.io/badge/OS-Ubuntu-orange)
![CI/CD](https://img.shields.io/badge/GitHub-CI%2FCD-black?logo=github)
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


## ⚙️ Prerequisites

- AWS Account (to launch EC2)  
- Ubuntu EC2 instance (`t2.micro` recommended)  
- Docker & Docker Compose installed on EC2  
- Git installed  


## 🚀 Quick Start
ssh ubuntu@your-ec2-ip

git clone
```
https://github.com/otarbakh/Skydeploy.git
```  
cd Skydeploy  

bash scripts/main.sh

## 🐳 Run via Docker

```bash
docker pull otarbakhtadze/skydeploy:latest  
docker run -d -p 5000:5000 otarbakhtadze/skydeploy:latest
```



## 📊 Access Services
Service	URL
Flask App 
```http://<EC2-IP>:5000```
Prometheus	
```http://<EC2-IP>:9090```
Grafana	
```http://<EC2-IP>:3000```

## 🔐 Default Grafana Credentials
Username: admin

Password: admin

## 📈 Grafana Dashboards
![Screenshot from 2025-05-15 21-10-48](https://github.com/user-attachments/assets/2c6ec7e4-0d25-4698-93c9-4078cf97f666)





