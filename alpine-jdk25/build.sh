#!/bin/bash
docker build --add-host dimpt.site:10.100.240.25 -t dimpt.site:8181/platform/alpine-jdk25:latest --push .
