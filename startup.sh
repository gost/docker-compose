# start production version on port 8080
export DASHBOARD_PORT=8080
docker-compose -p prod up -d

# start test version on port 8081
export DASHBOARD_PORT=8081
docker-compose -p test up -d

# to stop a project do: 
# $ docker-compose -p test down
# $ docker-compose -p prod down
