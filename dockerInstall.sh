#!/bin/bash
sudo yum update
sudo yum search docker
sudo yum info docker
sudo yum install docker
sudo usermod -a -G docker ec2-user
#Reload a Linux user's group assignments to docker w/o logout
id ec2-user
newgrp docker
sudo systemctl enable docker.service
sudo systemctl start docker.service
# https://www.cyberciti.biz/faq/how-to-install-docker-on-amazon-linux-2/