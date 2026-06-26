#!/bin/bash
docker build --add-host dimpt.site:10.100.240.25 --provenance=false \
            -t dimpt.site:8180/platform/elasticsearch:8.19.17 --push .