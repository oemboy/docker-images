#!/bin/bash
docker  build --add-host dimpt.site:10.100.240.25 -t bingzic/alpine-redis:6.2.13 --push .