#!/bin/bash
docker buildx build --provenance=false --platform=linux/amd64,linux/arm64 \
            -t dimpt.site:8180/platform/elasticsearch:8.19.21 --push .