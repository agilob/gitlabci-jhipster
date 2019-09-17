#!/bin/bash -e
TAG_NAME="jdk12"
REPO="gitlabci_jhipster"

docker build . | tee .log.txt
TAG=`cat .log.txt | tail -n1 | awk 'NF>1{printf $NF}'`
docker tag $TAG agilob/$REPO:$TAG_NAME
docker push agilob/$REPO
