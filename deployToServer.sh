docker run -d --restart unless-stopped terraquium
docker update --restart unless-stopped terraquium

scp -r build ec2-user@3.226.216.35:/home/ec2-user
ssh ec2-user@3.226.216.35 rm -r /home/ec2-user/build
docker cp demo.sedena terraquium:/usr/share/nginx/html
# docker cp build terraquium:/usr/share/nginx/html


docker container exec -it terraquium bash

docker container run -p 80:80 -d --name terraquiumhub jorge3004/terraquiumhub
docker container run -p 8003:80 -d --name demosedena jorge3004/terraquium.demo.sedena-nginx


# https://www.dataset.com/blog/create-docker-image/