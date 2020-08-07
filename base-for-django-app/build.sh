#!/bin/bash

cp ../../django/minipcp-ws/requirements.txt ./project-files/.
docker build --no-cache -t hbolzan/base-for-django-app:latest .

