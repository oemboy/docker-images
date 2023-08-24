#!/bin/bash
## ubuntu 的镜像地址是ubuntu-ports， 而不是ubuntu
## http://mirrors.tuna.tsinghua.edu.cn/ubuntu-ports/
## http://mirrors.tuna.tsinghua.edu.cn/ubuntu/
docker build -t oemboy.site:8180/platform/alpine-jre11-jammy:latest . --push