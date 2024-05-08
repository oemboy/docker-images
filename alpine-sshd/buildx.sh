#!/bin/bash
#docker buildx build --build-arg PASSWORD=admin --platform=linux/amd64,linux/arm64 -t dimpt.site:8180/platform/alpine-sshd:latest --push --provenance=false .
#docker buildx build --build-arg PASSWORD=admin --platform=linux/amd64,linux/arm64 -t oemboy.site:8180/platform/alpine-sshd:latest --push .
docker buildx build --build-arg PASSWORD=admin --platform=linux/amd64,linux/arm64 -t bingzic/alpine-sshd:latest --push .
