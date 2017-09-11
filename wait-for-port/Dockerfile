FROM debian:jessie
MAINTAINER Nicolas Brugneaux <nicolas.brugneaux@gmail.com>

RUN apt-get update \
  && apt-get -y install netcat

WORKDIR /home

ADD run.sh /home
RUN chmod +x /home/run.sh

ENTRYPOINT ["./run.sh"]

