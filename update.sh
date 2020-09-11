#!/bin/bash
cd /tmp
wget https://raw.githubusercontent.com/chauncey5566/docker-compose.yaml/master/docker-compose.yaml
mv -f /tmp/docker-compose.yaml /php-nginx-compose/docker-compose.yaml
/bin/cp -f /php-nginx-compose/docker-compose.yaml /root/docker-compose.yaml
rm -f /tmp/docker-compose.yaml
cd /php-nginx-compose
docker-compose down
docker rmi docker.io/chauncey5566/dockercomposephp5.3
docker rmi docker.io/chauncey5566/dockercomposephp5.6
docker-compose up -d
exit 0
