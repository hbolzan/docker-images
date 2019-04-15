# services-base
# base image to python services

FROM python:3.5-alpine
ENV PYTHONUNBUFFERED 1

# setup
RUN apk update
RUN apk upgrade
RUN apk add git
RUN apk add gcc python3 python3-dev musl-dev
RUN apk add libffi-dev zlib-dev
ENV LIBRARY_PATH=/lib:/usr/lib
RUN pip3 install -U pip
