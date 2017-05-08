FROM python:3.5-alpine
MAINTAINER Philip Henning <mail@philip-henning.com>

RUN apk add --update openssl openssh-client ca-certificates git && \
  pip install --upgrade pip && \
  pip install mkdocs && \
  rm /var/cache/apk/*

VOLUME /src

WORKDIR /src
