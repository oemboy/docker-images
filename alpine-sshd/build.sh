#!/bin/bash
docker build --build-arg PASSWORD=admin -t bingzic/alpine-sshd:latest --push .
