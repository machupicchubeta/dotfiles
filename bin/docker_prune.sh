#!/bin/bash
set -eu

docker system prune -a
docker system prune --volumes
docker container prune
if [ $(docker container ls -aq | wc -l) -gt 0 ]; then
  docker container stop $(docker container ls -aq)
  docker container rm --volumes $(docker container ls -aq)
fi
docker image prune -a
docker volume prune
docker network prune
