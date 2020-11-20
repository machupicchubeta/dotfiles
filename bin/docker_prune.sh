#!/bin/bash
set -eu

docker system prune -a
docker system prune --volumes
docker container prune
docker container stop $(docker container ls -aq)
docker container rm $(docker container ls -aq)
docker image prune -a
docker volume prune
docker network prune
