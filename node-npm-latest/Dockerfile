FROM node:5.7

RUN mv /usr/local/lib/node_modules/npm /tmp/.npm
RUN node /tmp/.npm/bin/npm-cli.js i -g npm@latest
RUN rm -rf /tmp/.npm

ENV NPM_CONFIG_LOGLEVEL "warn"

