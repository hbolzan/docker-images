# Systems base image
FROM ubuntu:bionic

ENV DEBIAN_FRONTEND noninteractive

# enable required ubuntu packages
RUN echo "deb http://archive.canonical.com/ubuntu bionic partner" >> /etc/apt/sources.list \
    && echo "deb-src http://archive.canonical.com/ubuntu bionic partner" >> /etc/apt/sources.list

# set locale
RUN apt-get update && apt-get -y upgrade && apt-get install -y apt-utils \
    && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
    && localedef -i pt_BR -c -f UTF-8 -A /usr/share/locale/locale.alias pt_BR.UTF-8
ENV LANG pt_BR.utf8

# required packages
RUN apt-get update && apt-get install -y python3-pip build-essential libffi-dev python-cairocffi python3-dev python3-setuptools libxrender1 wkhtmltopdf netcat nginx vim --no-install-recommends
