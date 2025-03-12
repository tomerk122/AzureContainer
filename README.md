# Azure Container Project

## Project Overview
This project demonstrates a Docker container workflow with Azure DevOps pipelines. It includes building a Docker image based on Ubuntu 20.04 with Python installed, pushing it to Azure Container Registry (ACR), and running tasks within the container.

## Components

### 1. Dockerfile
Creates a lightweight Ubuntu 20.04 image with Python 3 installed:
- Installs Python3 and pip
- Creates a symbolic link for the Python command
- Performs a simple version check to verify functionality

### 2. Azure DevOps Pipelines

#### Push-and-pull-pipeline.yml
- Triggers on changes to the main branch
- Builds the Docker image from the Dockerfile
- Pushes the image to Azure Container Registry (tomercontainer.azurecr.io)
- Tags the image with both build ID and 'latest'
- Uses a service connection named 'TomerARG' to authenticate with ACR

#### azure-pipelines-1.yml
- Runs a job inside the previously built container
- Executes a simple "Hello, world!" script to demonstrate container execution
- Retrieves the container from ACR using the 'TomerARG' service connection

## Configuration
- ACR Login Server: tomercontainer.azurecr.io
- Image Name: tomer-image
- Service Connection: TomerARG