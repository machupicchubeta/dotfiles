#!/bin/bash
set -eu

docker system prune --all --force
docker system prune --volumes --force
docker builder prune --all --force
docker container prune --force
if [ $(docker container ls --all --quiet | wc -l) -gt 0 ]; then
  docker container stop $(docker container ls --all --quiet)
  docker container rm --volumes $(docker container ls --all --quiet)
fi
docker image prune --all --force
docker volume prune --force
docker network prune --force
