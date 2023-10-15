#!/bin/bash
docker build --add-host dimpt.site:10.100.240.25 -t bingzic/alpine-nginx:1.25.2 --push .