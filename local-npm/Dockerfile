FROM philplckthun/node-npm-latest

ENV LOCALNPM_VERSION 1.5.8

RUN npm install -g local-npm@${LOCALNPM_VERSION}

ENTRYPOINT [ "local-npm", "-d", "/data" ]
CMD [ "-p", "5080", "-u", "http://local-npm.dev:5080" ]

VOLUME [ "/data" ]
EXPOSE 5080

