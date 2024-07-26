#!/bin/bash
docker build --add-host dimpt.site:10.100.240.25 -t dimpt.site:8180/platform/alpine-openresty:1.25.3.2 --push . --provenance=false

