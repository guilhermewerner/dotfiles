#!/usr/bin/env sh

sudo ufw allow 8000
sudo ufw allow 9443
sudo ufw reload

docker volume create PortainerData
docker run -d \
    --name "Portainer" \
    --restart always \
    -p 8000:8000 \
    -p 9443:9443 \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v PortainerData:/data \
    portainer/portainer-ce:latest
