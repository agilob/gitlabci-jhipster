FROM gradle:jre10
MAINTAINER dockerhub@agilob.net

USER root
RUN  curl -sL https://deb.nodesource.com/setup_8.x | bash - && apt-get install -y nodejs
