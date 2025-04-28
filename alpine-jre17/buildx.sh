#!/bin/bash
docker buildx build --add-host dimpt.site:10.100.240.25 \
    --platform=linux/amd64,linux/arm64 --provenance=false \
    -t bingzic/alpine-jre17:17.0.15 --push .
