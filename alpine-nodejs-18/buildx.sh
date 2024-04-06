#!/bin/bash
#docker buildx build --platform=linux/amd64,linux/arm64 -t bingzic/alpine-nodejs:18.20.1 --push .
docker buildx build --platform=linux/amd64,linux/arm64 --provenance=false \
    -t dimpt.site:8180/platform/alpine-nodejs:18.20.1 --push .
