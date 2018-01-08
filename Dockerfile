FROM gradle:alpine
MAINTAINER dockerhub@agilob.net

USER root
RUN apk add --update wget ca-certificates && \
    apk --update add curl yarn nodejs nodejs-npm
