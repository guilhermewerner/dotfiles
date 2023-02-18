#!/usr/bin/env sh

sudo ufw allow 9001
sudo ufw reload

docker run -d \
    --name "Portainer" \
    --restart always \
    -p 9001:9001 \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v /var/lib/docker/volumes:/var/lib/docker/volumes \
    portainer/agent:latest
