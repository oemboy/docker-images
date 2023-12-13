#!/bin/bash
#docker buildx build --platform=linux/amd64,linux/arm64 -t bingzic/alpine-nodejs:18.18.2 --push .
docker buildx build --add-host dimpt.site:10.100.240.25 \
    --platform=linux/amd64,linux/arm64 --provenance=false \
    -t dimpt.site:8180/platform/alpine-nodejs:18.19.0 --push .
