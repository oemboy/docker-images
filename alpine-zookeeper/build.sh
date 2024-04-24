#!/bin/bash
docker  build --add-host dimpt.site:10.100.240.25 -t dimpt.site:8180/platform/alpine-zookeeper:3.8.4 --provenance=false --push .
