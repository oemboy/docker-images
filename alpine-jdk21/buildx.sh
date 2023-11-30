#!/bin/bash
docker buildx build --platform=linux/amd64,linux/arm64 -t dimpt.site:8180/platform/alpine-jdk21:latest --push --provenance=false .
#docker buildx build --platform=linux/amd64,linux/arm64 -t oemboy.site:8180/platform/alpine-jdk17:latest --push .
#docker buildx build --platform=linux/amd64,linux/arm64 -t bingzic/alpine-jdk17:latest --push .