#!/bin/bash
docker build --add-host dimpt.site:8180/platform/playwright:v1.63.0-jdk25 --push .
docker tag  dimpt.site:8180/platform/playwright:v1.63.0-jdk25 registry.cn-guangzhou.aliyuncs.com/platform2022/playwright:v1.63.0-jdk25
docker push registry.cn-guangzhou.aliyuncs.com/platform2022/playwright:v1.63.0-jdk25
