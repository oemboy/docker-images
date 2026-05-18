#!/bin/bash
docker buildx build --platform=linux/amd64,linux/arm64 -t bingzic/alpine-nginx:1.30.1 --push .
#docker buildx build --add-host dimpt.site:10.100.240.25 --platform=linux/amd64,linux/arm64 -t oemboy.site:8180/platform/alpine-nginx:1.28.0 .
#docker buildx build --add-host dimpt.site:10.100.240.25 \
#    --platform=linux/amd64,linux/arm64 --provenance=false \
#    -t dimpt.site:8180/platform/alpine-nginx:1.30.1 --push .
