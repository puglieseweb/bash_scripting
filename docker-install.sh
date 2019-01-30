#!/usr/bin/env bash

# Script to install Docker

#Install needed packages
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

#Configure the docker-ce repo:
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

#Install docker-ce:
sudo yum install -y docker-ce

#Add your user to the docker group with the following command.
sudo usermod -aG docker $(whoami)

#Set Docker to start automatically at boot time:
sudo systemctl enable docker.service

#Finally, start the Docker service:
sudo systemctl start docker.service

#Install Docker Compose
#install Extra Packages for Enterprise Linux
sudo yum install -y  epel-release


#Install python-pip
sudo yum install -y python-pip

#Then install Docker Compose:
sudo pip install docker-compose

#upgrade your Python packages on CentOS 7 to get docker-compose to run successfully:
sudo yum upgrade python*

#verify a successful Docker Compose installation, run:
docker-compose version
