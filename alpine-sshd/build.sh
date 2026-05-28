#!/bin/bash
#docker build --build-arg PASSWORD=admin -t bingzic/alpine-sshd:latest --push .
docker build --build-arg PASSWORD=admin -t dimpt.site:8180/platform/alpine-sshd:latest --push .