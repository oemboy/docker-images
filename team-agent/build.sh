#!/bin/bash
docker build --add-host dimpt.site:10.100.240.25 -t dimpt.site:8180/platform/team-agent:2023.05.4-linux .