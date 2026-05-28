#!/bin/bash
#docker buildx build --platform=linux/amd64,linux/arm64 -t dimpt.site:8180/platform/alpine-nodejs:24.16.0 .
docker buildx build --platform=linux/amd64,linux/arm64 -t bingzic/alpine-nodejs:24.16.0 --push .
