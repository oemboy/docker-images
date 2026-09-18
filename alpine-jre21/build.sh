#!/bin/bash
docker build --no-cache --add-host dimpt.site:10.100.240.25 -t dimpt.site:8180/platform/alpine-jre21:21.0.12 --push .