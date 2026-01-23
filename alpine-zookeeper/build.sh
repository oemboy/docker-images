#!/bin/bash
docker  build --add-host dimpt.site:10.100.240.25 -t dimpt.site:8181/platform/alpine-zookeeper:3.8.5 --provenance=false --push .
