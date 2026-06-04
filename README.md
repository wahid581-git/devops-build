# DevOps Build Deployment Project

## Project Overview

This project demonstrates the deployment of a React application in a production-ready environment using Docker, Jenkins, Docker Hub, AWS EC2, and Uptime Kuma monitoring.

---

## Repository

GitHub Repository:

https://github.com/wahid581-git/devops-build

---

## Application URL

http://52.66.20.6

---

## Docker Images

DEV Image:

wahid581doc/wahid581-dev:latest

PROD Image:

wahid581doc/wahid581-prod:latest

---

## Technologies Used

* React
* Docker
* Docker Compose
* Jenkins
* Git & GitHub
* Docker Hub
* AWS EC2
* Uptime Kuma

---

## Project Structure

* Dockerfile
* docker-compose.yaml
* build.sh
* deploy.sh
* Jenkinsfile
* .gitignore
* .dockerignore

---

## CI/CD Workflow

### DEV Branch

1. Developer pushes code to the dev branch.
2. Jenkins automatically triggers a build.
3. Docker image is built.
4. Image is pushed to Docker Hub DEV repository.

### MAIN Branch

1. Code is merged from dev to main.
2. Jenkins triggers the production pipeline.
3. Docker image is pushed to Docker Hub PROD repository.

---

## Monitoring

Uptime Kuma is configured to monitor application availability.

Monitoring URL:

http://52.66.20.6:3001

---

## AWS Configuration

* EC2 Instance: Amazon Linux 2023
* Application Port: 80
* Jenkins Port: 8080
* Uptime Kuma Port: 3001

---

## Screenshots Included

* AWS EC2 Console
* Security Group Configuration
* Jenkins Login Page
* Jenkins Configuration Settings
* Jenkins Pipeline Console Output
* Docker Hub Repositories and Tags
* Application Deployment Page
* Uptime Kuma Health Status

---

## Author

Abdul Wahid
