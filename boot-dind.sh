#!/bin/sh
set -e

dockerd-entrypoint.sh \
  --tls=false \
  --host=tcp://0.0.0.0:2375 \
  --host=unix:///var/run/docker.sock &

until docker info > /dev/null 2>&1; do
  sleep 1
done

if ! docker ps -a --format '{{.Names}}' | grep -q '^inner-mysql$'; then
  docker run -d \
    --name inner-mysql \
    -e MYSQL_ROOT_PASSWORD=secretpass \
    -e MYSQL_DATABASE=demo \
    -e MYSQL_USER=demo_user \
    -e MYSQL_PASSWORD=demopass \
    -p 3306:3306 \
    mysql:8.0
fi

wait
