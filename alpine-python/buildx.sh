#!/bin/bash
docker buildx build --add-host dimpt.site:10.100.240.25 \
    --platform=linux/amd64,linux/arm64 --provenance=false \
    -t bingzic/python:3.14.0-alpine --push .
