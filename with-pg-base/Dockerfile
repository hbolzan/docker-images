# with-pg-base
# base image for services that depend on postgres

ARG VERSION
ARG USER
FROM ${USER}/services-base:${VERSION}

# setup
RUN apk add postgresql-dev
RUN apk add postgresql-client
