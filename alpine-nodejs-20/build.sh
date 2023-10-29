#!/bin/bash
docker build --add-host dimpt.site:10.100.240.69 -t dimpt.site:8180/platform/alpine-nodejs:20.9.0  --push .

