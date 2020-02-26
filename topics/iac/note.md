# Infrastructure as Code

## Manual Operations
Imagine you have developed a new cool application called raddit.
1. Provision Compute Resources
2. Install Application Dependencies: ruby, git, db, etc...
3. Prepare Database
4. Start the Application

## Scripts
1. Provision Compute Resources
2. Config script: Install ruby, db ...
3. Deployment script: git clone, install, start ...
4. Run the scripts.

## Packer
https://www.packer.io/

1. Create custom machine images with required configuration and software installed using Packer.
2. Launch a VM with your custom built machine image
3. Deploy Application - scripts.

## Terraform

## Ansible

## Vagrant
Dev environment.

## Docker
The idea was to package all application dependencies and application itself inside a machine image, so that we don't have to configure the system after start.

1. Install Docker Engine
2. Create Dockerfile
3. Build Container Image
4. Bridge Network
5. MongoDB Container
6. Start Application Container

## Docker Compose
To make the management of our local container infrastructure easier and more reliable, we need a tool that would allow us to describe the desired state of a local environment and then it would create it from our description.

1. Install Docker Compose
2. Describe Local Container Infrastructure
3. Create Local Infrastructure

## Kubernetes
Our production environment may include tens or hundreds of VMs to have enough capacity to provide service to a large number of users. What do you do in that case?

1. Install Kubectl
2. Infrastructure as Code project
3. Describe Kubernetes cluster in Terraform
4. Create Kubernetes Cluster
5. Deployment manifest
6. Create Deployment Objects
7. Service manifests
8. Create Service Objects


