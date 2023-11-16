#!/bin/bash
docker build --add-host dimpt.site:10.100.240.25 -t dimpt.site:8180/platform/alpine-jre8:8u392 --push .