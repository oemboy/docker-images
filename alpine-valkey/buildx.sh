#!/bin/bash
#docker buildx build --platform=linux/amd64,linux/arm64 -t dimpt.site:8180/platform/alpine-valkey:7.2.5 --push --provenance=false .
#docker buildx build --platform=linux/amd64,linux/arm64 -t oemboy.site:8180/platform/alpine-valkey:7.2.5 --push .
docker buildx build --add-host dimpt.site:10.100.240.25 --platform=linux/amd64,linux/arm64 -t bingzic/alpine-valkey:7.2.5 --push .