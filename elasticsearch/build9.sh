#!/bin/bash
docker buildx build --provenance=false --platform=linux/amd64,linux/arm64 \
            -f Dockerfile9 \
            -t dimpt.site:8180/platform/elasticsearch:9.4.6 --push .