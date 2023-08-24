#!/bin/bash
#docker buildx build --platform=linux/amd64,linux/arm64 -t dimpt.site:8180/platform/alpine-redis:6.2.13 --push --provenance=false .
docker buildx build --platform=linux/amd64,linux/arm64 -t oemboy.site:8180/platform/alpine-redis:6.2.13 --push .
#docker buildx build --platform=linux/amd64,linux/arm64 -t bingzic/alpine-redis:6.2.13 --push .