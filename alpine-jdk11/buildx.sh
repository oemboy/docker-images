#!/bin/bash
#docker buildx build --add-host dimpt.site:10.100.240.25 --platform=linux/amd64,linux/arm64 -t dimpt.site:8180/platform/alpine-jdk11:11.0.32 --push --provenance=false .
#docker buildx build --add-host dimpt.site:10.100.240.25 --platform=linux/amd64,linux/arm64 -t oemboy.site:8180/platform/alpine-jdk11:11.0.32 --push .
docker buildx build --add-host dimpt.site:10.100.240.25 --platform=linux/amd64,linux/arm64 -t bingzic/alpine-jdk11:11.0.32 --push .
