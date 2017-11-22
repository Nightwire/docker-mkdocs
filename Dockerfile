FROM python:alpine3.6
MAINTAINER Philip Henning <mail@philip-henning.com>

ENV PACKAGES "unzip curl openssl ca-certificates openssh-client git libc6-compat bash"
ENV MKDOCS_VERSION "0.17.2"
ENV MKINCLUDE_VERSION "0.5.1"
ENV PYMD_EXT_VERSION "4.1"

RUN apk add --update $PACKAGES && \
  rm /var/cache/apk/*

RUN pip install --upgrade pip && \
  pip install mkdocs==${MKDOCS_VERSION} && \
  pip install markdown-include==${MKINCLUDE_VERSION} && \
  pip install pymdown-extensions==${PYMD_EXT_VERSION}

VOLUME /src

WORKDIR /src