#!/bin/bash
#cp /usr/share/fonts/opentype/noto/NotoSansCJK-Regular.ttc .
docker build --add-host dimpt.site:10.100.240.25 -t dimpt.site:8180/platform/alpine-jdk17:17.0.18 --push .
