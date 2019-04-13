#!/bin/bash

VERSION=$1

cd services-base
docker build -t "hbolzan/services-base:${VERSION}" .

cd ../with-pg-base
docker build --build-arg VERSION=$VERSION -t "hbolzan/with-pg-base:${VERSION}" .

cd ../base-for-django
docker build --build-arg VERSION=$VERSION -t "hbolzan/base-for-django:${VERSION}" .
