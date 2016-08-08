FROM buildpack-deps:jessie
MAINTAINER Phil Plückthun <phil@plckthn.me>

ENV INFINIT_VERSION 0.6.1
ENV INFINIT_HOME /usr/local/etc/infinit
ENV INFINIT_CACHE_HOME /tmp/infinit
ENV INFINIT_STATE_HOME /usr/local/etc/infinit/state
ENV INFINIT_DATA_HOME /usr/local/etc/infinit/data

RUN mkdir -p /usr/local/etc/infinit/data \
  && mkdir -p /usr/local/etc/infinit/state \
  && cd /usr/src \
  && curl -o infinit-${INFINIT_VERSION}.tbz \
    https://storage.googleapis.com/sh_infinit_releases/linux64/Infinit-x86_64-linux_debian_oldstable-gcc4-${INFINIT_VERSION}.tbz \
  && tar -xjvf infinit-${INFINIT_VERSION}.tbz \
  && mv Infinit-x86_64-linux_debian_oldstable-gcc4-${INFINIT_VERSION} infinit-${INFINIT_VERSION} \
  && cd /usr/src/infinit-${INFINIT_VERSION} \
  && mv bin/* /usr/local/bin \
  && mv lib/* /usr/local/lib

VOLUME ["/usr/local/etc/infinit/data", "/usr/local/etc/infinit/state"]

