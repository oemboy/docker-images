#!/bin/bash
docker build --add-host dimpt.site:10.100.240.25 -t dimpt.site:8180/platform/playwright:v1.59.0-noble-jdk21 --push .
docker tag  dimpt.site:8180/platform/playwright:v1.59.0-noble-jdk21 registry.cn-guangzhou.aliyuncs.com/platform2022/playwright:v1.59.0-noble-jdk21
docker push registry.cn-guangzhou.aliyuncs.com/platform2022/playwright:v1.59.0-noble-jdk21
