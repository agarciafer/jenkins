#!/bin/bash
##Instalar jenkins 
#sudo yum update -y
sudo yum install java-11-openjdk.x86_64 git -y
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo --no-check-certificate
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install jenkins -y
sudo systemctl start jenkins
sudo  systemctl enable jenkins
sudo  systemctl status jenkins
cat /var/lib/jenkins/secrets/initialAdminPassword 
