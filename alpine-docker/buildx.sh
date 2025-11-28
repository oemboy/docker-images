#!/bin/bash
docker buildx build --platform=linux/amd64,linux/arm64 -t bingzic/alpine-docker:27.0.3 --push .
#docker buildx build --add-host dimpt.site:10.100.240.25 --platform=linux/amd64,linux/arm64 -t oemboy.site:8180/platform/alpine-docker:27.0.3 .
#docker buildx build --add-host dimpt.site:10.100.240.25 \
#    --platform=linux/amd64,linux/arm64 --provenance=false \
#    -t dimpt.site:8180/platform/alpine-docker:27.0.3 --push .
