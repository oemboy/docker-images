#!/bin/bash
docker buildx build --platform=linux/amd64,linux/arm64 -t oemboy.site:8180/platform/alpine-nginx:1.25.2 .