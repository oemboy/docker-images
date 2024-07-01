#!/bin/bash
docker build --add-host dimpt.site:10.100.240.25 \
            --add-host gitlab.dimpt.site:10.10.46.2 --provenance=false \
            -t dimpt.site:8180/platform/teamcity-agent:2024.03.3-linux --push .

