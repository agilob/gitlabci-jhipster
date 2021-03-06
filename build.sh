#!/bin/bash -e

REPO="gitlabci_jhipster"

docker build . | tee .log.txt
TAG=`cat .log.txt | tail -n1 | awk 'NF>1{printf $NF}'`
docker tag $TAG agilob/$REPO:latest
docker push agilob/$REPO
