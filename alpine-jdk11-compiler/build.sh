#!/bin/bash
docker build --add-host dimpt.site:10.100.240.25 -t dimpt.site:8180/platform/alpine-jdk11:compiler --push .