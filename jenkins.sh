#!/bin/bash   
sudo yum install wget -y
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat/jenkins.repo 
sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
sudo yum upgrade -y
sudo yum install jenkins java-1.8.0-openjdk-devel -y
sudo systemctl daemon-reload
sudo systemctl start jenkins
sudo systemctl status jenkins
sudo amazon-linux-extras install ansible2
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

