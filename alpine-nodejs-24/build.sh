#!/bin/bash
docker build --progress=plain -t dimpt.site:8180/platform/alpine-nodejs:24.21  --push .
#docker build -t bingzic/alpine-nodejs:24.14.0 --push .
