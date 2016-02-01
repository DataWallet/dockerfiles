FROM philplckthun/node-npm-latest

RUN npm install -g npm_lazy
ADD config.js /etc/npm-lazy/config.js

EXPOSE 80
VOLUME ["/data"]

ENV EXTERNAL_URL "http://localhost"

CMD ["npm_lazy", "--show-config", "--config", "/etc/npm-lazy/config.js"]

