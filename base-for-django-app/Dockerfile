# MiniPCP Web Service
FROM hbolzan/base-for-django-xt:latest

ENV DEBIAN_FRONTEND noninteractive

# copy requirements.txt
RUN mkdir -p /var/app/minipcp-ws
COPY ./project-files/requirements.txt /var/app/minipcp-ws/requirements.txt

# install requirements
WORKDIR /var/app/minipcp-ws
RUN pip3 install pip --upgrade
RUN pip install -r requirements.txt
RUN pip install uwsgi

