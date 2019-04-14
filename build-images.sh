#!/bin/bash

VERSION=$1

cd services-base
docker build -t "${DOCKER_USER_ID}/services-base:latest" \
       -t "${DOCKER_USER_ID}/services-base:${VERSION}" .
docker push "${DOCKER_USER_ID}/services-base:${VERSION}"
docker push "${DOCKER_USER_ID}/services-base:latest"

cd ../with-pg-base
docker build --build-arg VERSION=$VERSION --build-arg USER=$DOCKER_USER_ID \
       -t "${DOCKER_USER_ID}/with-pg-base:latest" \
       -t "${DOCKER_USER_ID}/with-pg-base:${VERSION}" .
docker push "${DOCKER_USER_ID}/with-pg-base:${VERSION}"
docker push "${DOCKER_USER_ID}/with-pg-base:latest"

cd ../base-for-django
docker build --build-arg VERSION=$VERSION --build-arg USER=$DOCKER_USER_ID \
       -t "${DOCKER_USER_ID}/base-for-django:latest" \
       -t "${DOCKER_USER_ID}/base-for-django:${VERSION}" .
docker push "${DOCKER_USER_ID}/base-for-django:${VERSION}"
docker push "${DOCKER_USER_ID}/base-for-django:latest"
