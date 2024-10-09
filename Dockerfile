FROM docker.io/python:3.9-alpine

RUN apk --update add --no-cache --virtual .build-deps postgresql-dev
COPY . /build
WORKDIR /build
RUN python setup.py install

ENTRYPOINT ["chameleon"]