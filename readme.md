# Flask-App-Kubernetes-Deployments
## Overview
This repository demonstrates contanerizing a simple "Hello World" Python Flask app & using GitHub Actions CI/CD pipelines to automate pulling the image from AWS ECR, then deploying the app onto an AWS EKS cluster. 
## Features
- Dockerfile:
Builds lightweight Docker image for the application.  
- GitHub Actions CI/CD pipeline deploy.yml: <br> 1st job automates building, tagging, then pushing Docker images to AWS ECR. <br> 2nd job automates pulling images from AWS ECR, then running app on an AWS EKS cluster.  
## Getting Started
## 1. Clone Repository
- Clone the Repository.   
git clone  https://github.com/1ahmedharris/python-flask-app.git  
cd python-flask-app  
- Build and Run Locally.   
docker build -t app .    
- Run Docker container.  
docker run app
## 2. Configure AWS ECR Repository 
- Login to Your AWS Account.
- Navigate to Amazon Elastic Container Registry (ECR).
- Click Create repository.
- Enter Repository name.
- Configure necessary settings.
- Create repository.
## 3. Configure GitHub Actions Secrets
- Go to docker-image-builder repository.
- Click Settings.
- Navigate to Secrets and variables, Click Actions.
- Click New repository secret, add the following secrets:  
$ AWS_ACCESS_KEY_ID: Your AWS access key ID  
$ AWS_SECRET_ACCESS_KEY: Your AWS secret access key   
$ AWS_REGION: Your ECR region      
$ ECR_REPOSITORY: Your AWS ECR repository name  
$ ECR_REGISTRY: Your full registry URL  
$ EC2_HOST: EC2 IP address  
$ EC2_USERNAME: EC2 Host username  
$ SSH_PRIVATE_KEY: EC2 Private Key  
## 4. Push Images to AWS ECR
- Commit to repository
## 5. Monitoring 
- Navigate to Actions tab
- Check status of workflow 
