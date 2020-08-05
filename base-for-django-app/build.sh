#!/bin/bash

cp ../../django/minipcp-ws/requirements.txt ./project-files/.
docker build -t base-for-django-app:latest .

