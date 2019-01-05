FROM node:alpine
MAINTAINER "Slavisa Lukic" <slavisa.lukic@gmail.com>

ENV LOG_FILES=""

RUN apk --no-cache upgrade && apk add --no-cache git
RUN npm install frontail@4.5.1 --global --production

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
EXPOSE 9001
CMD ["--help"]
