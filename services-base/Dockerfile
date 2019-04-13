# services-base
# base image to python services

FROM python:3.5-alpine
ENV PYTHONUNBUFFERED 1

# setup
RUN apk update
RUN apk upgrade
RUN apk add git
ENV LIBRARY_PATH=/lib:/usr/lib
RUN pip3 install -U pip
