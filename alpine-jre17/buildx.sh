#!/bin/bash
docker buildx build --add-host dimpt.site:10.100.240.25 \
    --platform=linux/amd64,linux/arm64 --provenance=false \
    -t oemboy.site:8180/platform/openjdk-alpine:17.0.11-jre --push .
