# Secure DevSecOps Flask App

This is a lightweight simulation of a DevSecOps pipeline using GitHub, Docker, GitHub Actions, and simulated integrations for SonarQube, Kubernetes, and Grafana.

## 🔧 Tech Stack
- Python Flask (Web App)
- Docker (Containerization)
- GitHub Actions (CI Pipeline)
- Flake8 (Linting)
- SonarQube (Static Code Analysis - Simulated)
- Kubernetes (Deployment.yaml)
- Grafana (Monitoring - Simulated)

## ⚙️ Pipeline Overview
1. Code pushed to GitHub triggers GitHub Actions.
2. Code is linted with flake8.
3. (Simulated) SonarQube scan for bugs, security vulnerabilities.
4. Docker image is built with best practices (non-root, slim base).
5. Application is deployed via Kubernetes manifest.
6. (Simulated) Metrics are exposed to Grafana dashboards.

## 🐳 Docker Commands
```bash
docker build -t mersedyes/secure-devsecops-mini-proj .
docker run -p 5001:5001 mersedyes/secure-devsecops-mini-proj
```

## 📦 Project Structure
```bash
secure-devsecops-mini-proj/
├── app.py # Flask application
├── deployment/
│ ├── flask-deployment.yaml # Kubernetes deployment
│ └── flask-service.yaml # Kubernetes service
├── Dockerfile # Docker build file
├── README.txt # Project overview
└── requirements.txt # Python dependencies
