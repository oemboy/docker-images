#!/bin/bash
#docker buildx build --platform=linux/amd64,linux/arm64 --add-host dimpt.site:10.100.240.25 -t dimpt.site:8180/platform/alpine-nodejs:20.20.2 .
docker buildx build --platform=linux/amd64,linux/arm64 -t bingzic/alpine-nodejs:20.20.2 --push .
