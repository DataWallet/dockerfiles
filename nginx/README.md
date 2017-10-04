# nginx Dockerfile

This Dockerfile compiles nginx `1.13.5` with:

- OpenSSL 1.1.0f
- HTTP/2 support (with SPDY fallback)
- Brotli support

The default configuration enables gzip and brotli,
and optimises the nginx instance for performance.

You can put your server configuration files into a
volume mounting at `/etc/nginx/conf.d`.
