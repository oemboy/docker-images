#!/bin/bash
docker build --add-host dimpt.site:10.100.240.25 --add-host gitlab.dimpt.site:10.10.46.2 --provenance=false \
            -t dimpt.site:8180/platform/jenkins/jenkins:2.452.1-lts-jdk17 --push .

