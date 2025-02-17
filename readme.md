# Flask-App-Kubernetes-Deployments
## Overview
This repository demonstrates contanerizing a simple "Hello World" Python Flask app & using GitHub Actions CI/CD pipelines to automate pulling the image from AWS ECR, then deploying the app onto an AWS EKS cluster. 
## Features
- Dockerfile:
Builds lightweight Docker image for the application.  
- GitHub Actions CI/CD pipeline deploy.yml: <br> 1st job automates building, tagging, then pushing Docker images to AWS ECR. <br> 2nd job automates pulling images from AWS ECR, then running app on an AWS EKS cluster.  
