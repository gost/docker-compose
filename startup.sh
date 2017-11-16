#!/bin/bash
echo create GOST-network
docker network create gost-network

echo run nginx-proxy and join gost-network
docker run -d -p 80:80 --name nginx-proxy -v /var/run/docker.sock:/tmp/docker.sock:ro jwilder/nginx-proxy
docker network connect gost-network nginx-proxy

# start production version on port 8080
echo start production...
export PORT=8080
export VIRTUAL_HOST=bert.lvh.me
docker-compose -p bert up -d

# start qa version on port 8081
echo start qa...
export PORT=8081
export VIRTUAL_HOST=paul.lvh.me
docker-compose -p paul up -d 


echo end of script
# to stop a project do: 
# $ docker-compose -p test down
# $ docker-compose -p prod down
