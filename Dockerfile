FROM python:3.7.0-alpine
MAINTAINER Philip Henning <mail@philip-henning.com>

ENV PACKAGES "unzip curl openssl ca-certificates openssh-client git rsync libc6-compat bash"
ENV MKDOCS_VERSION "1.0.4"
ENV MKINCLUDE_VERSION "0.5.1"
ENV PYMD_EXT_VERSION "5.0"

RUN apk add --update $PACKAGES && \
  rm /var/cache/apk/*

RUN pip install --upgrade pip && \
  pip install mkdocs==${MKDOCS_VERSION} && \
  pip install markdown-include==${MKINCLUDE_VERSION} && \
  pip install pymdown-extensions==${PYMD_EXT_VERSION}

VOLUME /src

WORKDIR /src
