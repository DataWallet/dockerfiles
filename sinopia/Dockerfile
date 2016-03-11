FROM philplckthun/node-npm-latest

ENV SINOPIA_VERSION 1.4.0

RUN npm install -g sinopia@${SINOPIA_VERSION}

ADD config.yaml /etc/sinopia.yaml

ENTRYPOINT [ "sinopia" ]
CMD [ "-l", "0.0.0.0:80", "-c", "/etc/sinopia.yaml" ]

EXPOSE 80

