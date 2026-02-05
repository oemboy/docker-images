#!/bin/bash
docker buildx build --platform=linux/amd64,linux/arm64 -t dimpt.site:8181/platform/alpine-jdk25:latest --push --provenance=false .
#docker buildx build --platform=linux/amd64,linux/arm64 -t oemboy.site:8180/platform/alpine-jdk25:latest --push .
#docker buildx build --platform=linux/amd64,linux/arm64 -t bingzic/alpine-jdk25:latest --push .