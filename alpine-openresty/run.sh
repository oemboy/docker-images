#!/bin/bash
docker run -d -v /data/custom/conf.d:/etc/nginx/conf.d --name openresty \
    dimpt.site:8181/platform/alpine-openresty:1.25.3.1