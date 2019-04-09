# this is a python image ready to receive a django project

FROM hbolzan/services-base

# setup
RUN apk add postgresql-dev gcc python3 python3-dev musl-dev
RUN apk add libffi-dev zlib-dev
RUN apk add postgresql-client
RUN pip install gunicorn
