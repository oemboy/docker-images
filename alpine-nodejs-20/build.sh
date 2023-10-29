#!/bin/bash
docker build --add-host dimpt.site:10.100.240.69 -t dimpt.site:8180/platform/alpine-nodejs:16.20.0  --push .

