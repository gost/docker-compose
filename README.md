# docker-compose

This repository contains docker-compose files for GOST

Running (unstable) latest build of GOST:
```
$ wget https://raw.githubusercontent.com/gost/docker-compose/master/mosquitto.conf 
$ wget https://raw.githubusercontent.com/gost/docker-compose/master/docker-compose.yml 
$ docker-compose up
```
Running (stable) 0.5 build of GOST
```
$ wget https://raw.githubusercontent.com/gost/docker-compose/master/docker-compose-0.5.yml 
$ docker-compose -f docker-compose-0.5.yml up
```

or on Raspberry Pi (experimental):
```
$ wget https://raw.githubusercontent.com/gost/docker-compose/master/docker-compose-rpi.yml

$ sudo docker-compose -f docker-compose-rpi.yml up
```
