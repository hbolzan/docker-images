# this is a python image ready to receive a django project

FROM python:3.5-alpine
ENV PYTHONUNBUFFERED 1

# setup
RUN apk update
RUN apk upgrade
RUN apk add postgresql-dev gcc python3 python3-dev musl-dev
RUN apk add libffi-dev zlib-dev
RUN apk add postgresql-client
ENV LIBRARY_PATH=/lib:/usr/lib
RUN pip3 install -U pip
RUN pip install gunicorn
