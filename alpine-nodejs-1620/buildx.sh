#!/bin/bash
docker buildx build --platform=linux/amd64,linux/arm64 -t dimpt.site:8180/platform/alpine-nodejs:16.20.0 .