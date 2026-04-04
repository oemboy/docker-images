#!/bin/bash
#docker build -t platform/alpine-redis:6.2.21 .
docker build --add-host dimpt.site:10.100.240.25 -t dimpt.site:8180/platform/alpine-redis:6.2.21 --push .
