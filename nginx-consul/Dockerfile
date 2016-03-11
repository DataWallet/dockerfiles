FROM philplckthun/nginx
MAINTAINER Phil Plückthun <phil@plckthn.me>

ENV CONSUL_TEMPLATE_VERSION 0.14.0

RUN DEBIAN_FRONTEND=noninteractive \
    apt-get update -qq && \
    apt-get -y install wget runit unzip && \
    rm -rf /var/lib/apt/lists/*

RUN wget https://releases.hashicorp.com/consul-template/${CONSUL_TEMPLATE_VERSION}/consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.zip \
  && unzip -d /usr/local/bin consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.zip

ADD nginx.service /etc/service/nginx/run
ADD consul-template.service /etc/service/consul-template/run

RUN mkdir /etc/consul-template \
  && chmod +x /etc/service/nginx/run \
  && chmod +x /etc/service/consul-template/run

CMD ["/usr/bin/runsvdir", "/etc/service"]
