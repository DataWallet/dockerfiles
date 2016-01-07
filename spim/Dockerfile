FROM buildpack-deps:jessie

RUN apt-get update \
  && apt-get -y install bison flex

RUN mkdir -p /usr/src \
  && cd /usr/src \
  && svn checkout svn://svn.code.sf.net/p/spimsimulator/code/ spim \
  && cd /usr/src/spim/spim \
  && make install

ENTRYPOINT ["/usr/bin/spim"]

