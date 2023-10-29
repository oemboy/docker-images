#!/bin/bash
#docker buildx build --platform=linux/amd64,linux/arm64 -t dimpt.site:8180/platform/alpine-nodejs:20.9.0 .
docker buildx build --add-host dimpt.site:10.100.240.69 --platform=linux/amd64,linux/arm64 -t bingzic/alpine-nodejs:20.9.0. --push

