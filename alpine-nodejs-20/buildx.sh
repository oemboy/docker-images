#!/bin/bash
#docker buildx build --platform=linux/amd64,linux/arm64 -t dimpt.site:8180/platform/alpine-nodejs:20.19.2 .
docker buildx build --platform=linux/amd64,linux/arm64 -t bingzic/alpine-nodejs:20.19.2 --push .
