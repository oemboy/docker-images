#!/bin/bash
docker build --add-host dimpt.site:10.100.240.25 -t dimpt.site:8180/platform/openj9-jdk17:17.0.16 . --push --provenance=false


