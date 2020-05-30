#!/bin/bash -e

REPO="gitlabci_jhipster"
TAG_NAME="jdk11"
docker build . | tee .log.txt
TAG=`cat .log.txt | tail -n1 | awk 'NF>1{printf $NF}'`
docker tag $TAG agilob/$REPO:$TAG_NAME
docker push agilob/$REPO
