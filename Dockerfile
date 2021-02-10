FROM gradle:4.6-jdk8

LABEL maintainer "euledge"

USER root

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    nodejs \
    npm \
    && apt-get -y clean \
    && rm -rf /var/lib/apt/lists/*
