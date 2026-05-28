#!/bin/bash
#docker buildx build --platform=linux/amd64,linux/arm64 -t dimpt.site:8180/platform/alpine-redis:6.2.22 --push --provenance=false .
#docker buildx build --platform=linux/amd64,linux/arm64 -t oemboy.site:8180/platform/alpine-redis:6.2.22 --push .
docker buildx build --add-host dimpt.site:10.100.240.25 --platform=linux/amd64,linux/arm64 -t bingzic/alpine-redis:6.2.22 --push .