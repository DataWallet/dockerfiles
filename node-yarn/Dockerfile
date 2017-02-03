FROM node:7.4

ENV NPM_CONFIG_LOGLEVEL "warn"

RUN mv /usr/local/lib/node_modules/npm /tmp/.npm \
  && node /tmp/.npm/bin/npm-cli.js i -g yarn@latest \
  && rm -rf /tmp/.npm \

