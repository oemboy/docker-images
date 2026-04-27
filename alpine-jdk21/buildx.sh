#!/bin/bash
docker buildx build --platform=linux/amd64,linux/arm64 -t dimpt.site:8180/platform/alpine-jdk21:21.0.11 --push --provenance=false .
#docker buildx build --platform=linux/amd64,linux/arm64 -t oemboy.site:8180/platform/alpine-jdk21:21.0.11 --push .
#docker buildx build --platform=linux/amd64,linux/arm64 -t bingzic/alpine-jdk21:21.0.11 --push .