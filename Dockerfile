FROM docker.io/python:3.9-alpine

COPY . /build
WORKDIR /build

RUN apk --update add --no-cache --virtual .build-deps postgresql-dev && \
    python setup.py install && \
    apk --purge del .build-deps && \
    apk --update add --no-cache postgresql-libs postgresql-client

ENTRYPOINT ["chameleon"]