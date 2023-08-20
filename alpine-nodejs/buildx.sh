#!/bin/bash
docker buildx build --platform=linux/amd64,linux/arm64 -t bingzic/alpine-nodejs:18.17.1 --push .