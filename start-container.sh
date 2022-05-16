#!/usr/bin/env bash
CONTAINER_NAME="wicket"
OLD="$(docker ps --all --quiet --filter=name="$CONTAINER_NAME")"
if [ -n "$OLD" ]; then
  docker rm -f $OLD
fi
docker run -d --name wicket -p 10900:8080 wicket-app