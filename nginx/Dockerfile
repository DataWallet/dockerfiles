FROM buildpack-deps:jessie
MAINTAINER Phil Plückthun <phil@plckthn.me>

ENV OPENSSL_VERSION 1.0.2h
ENV NGINX_VERSION 1.11.3

RUN apt-get update && apt-get install -y \
  ca-certificates \
  libpcre3-dev \
  zlib1g-dev \
  libssl-dev

RUN cd /usr/src \
  && curl -O https://www.openssl.org/source/openssl-${OPENSSL_VERSION}.tar.gz \
  && tar -xvzf /usr/src/openssl-${OPENSSL_VERSION}.tar.gz

RUN cd /usr/src \
  && git clone https://github.com/cloudflare/ngx_brotli_module.git ngx_brotli_module

RUN cd /usr/src \
  && curl -O http://nginx.org/download/nginx-${NGINX_VERSION}.tar.gz \
  && tar -xvzf /usr/src/nginx-${NGINX_VERSION}.tar.gz \
  && cd /usr/src/nginx-${NGINX_VERSION} \
  && ./configure \
    --prefix=/usr/local/nginx \
    --sbin-path=/usr/sbin/nginx \
    --conf-path=/etc/nginx/nginx.conf \
    --pid-path=/var/run/nginx.pid \
    --error-log-path=/var/log/nginx/error.log \
    --http-log-path=/var/log/nginx/access.log \
    --with-http_ssl_module \
    --with-http_v2_module \
    --with-http_realip_module \
    --with-http_stub_status_module \
    --with-threads \
    --with-ipv6 \
    --with-http_gzip_static_module \
    --add-module=/usr/src/ngx_brotli_module \
    --with-pcre \
    --with-openssl=/usr/src/openssl-${OPENSSL_VERSION} \
  && make \
  && make install

# Forward output to std outputs
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
  && ln -sf /dev/stderr /var/log/nginx/error.log

ADD nginx.conf /etc/nginx/nginx.conf
WORKDIR /etc/nginx

VOLUME ["/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx"]

EXPOSE 80
EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]

