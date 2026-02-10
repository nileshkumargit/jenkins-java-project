#!/bin/bash

# Add Jenkins repository
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo

# Import Jenkins GPG key
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

#upgrade the system to install packages.
sudo yum upgrade

# Install Java 17 (required) and Jenkins
sudo yum install java-17-amazon-corretto jenkins -y

# Reload systemd, enable and start Jenkins
sudo systemctl daemon-reload
sudo systemctl enable jenkins
sudo systemctl start jenkins
