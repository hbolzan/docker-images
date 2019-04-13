# with-pg-base
# base image for services that depend on postgres

ARG VERSION
ARG USER
FROM ${USER}/services-base:${VERSION}

# setup
RUN apk add postgresql-dev gcc python3 python3-dev musl-dev
RUN apk add libffi-dev zlib-dev
RUN apk add postgresql-client
RUN apk add netcat-openbsd
