#!/bin/bash
set -eu

docker system prune --all
docker system prune --volumes
docker builder prune --all
docker container prune
if [ $(docker container ls --all --quiet | wc -l) -gt 0 ]; then
  docker container stop $(docker container ls --all --quiet)
  docker container rm --volumes $(docker container ls --all --quiet)
fi
docker image prune --all
docker volume prune
docker network prune
