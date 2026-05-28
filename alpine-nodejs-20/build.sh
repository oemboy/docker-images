#!/bin/bash
docker build --add-host dimpt.site:10.100.240.25 -t dimpt.site:8180/platform/alpine-nodejs:20.20.2  --push .
#docker build -t bingzic/alpine-nodejs:20.20.2 --push .
