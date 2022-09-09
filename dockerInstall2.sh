sudo yum update
sudo yum search docker
sudo yum info docker
sudo yum install docker
sudo usermod -a -G docker ec2-user
id ec2-user
newgrp docker
sudo systemctl enable docker.service
sudo systemctl start docker.service
