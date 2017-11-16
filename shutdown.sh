#!/bin/bash
export DASHBOARD_PORT=8080
docker-compose -p prod down -v
docker-compose -p qa down -v
docker network rm gost-network

