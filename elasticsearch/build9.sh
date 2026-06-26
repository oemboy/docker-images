#!/bin/bash
docker build --add-host dimpt.site:10.100.240.25 --provenance=false \
            -f Dockerfile9 \
            -t dimpt.site:8180/platform/elasticsearch:9.4.2 --push .