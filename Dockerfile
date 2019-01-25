FROM node:alpine
MAINTAINER "Slavisa Lukic" <slavisa.lukic@gmail.com>

ENV LOG_FILES="--help"

RUN apk --no-cache upgrade && apk add --no-cache git
RUN npm install frontail@4.5.1 --global --production

COPY default.css /usr/local/lib/node_modules/frontail/web/assets/styles/
COPY default.json /usr/local/lib/node_modules/frontail/preset/
COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
EXPOSE 9001
