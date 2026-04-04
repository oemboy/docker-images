#!/bin/bash
#docker run -d --name redis_junit -p 6379:6379 platform/alpine-redis:6.2.21 redis-server --bind 0.0.0.0 --protected-mode no
#docker run -d --name redis_junit --network=host platform/alpine-redis:6.2.21 redis-server --bind 0.0.0.0 --protected-mode no
#docker run -d --name redis_junit -p 6379:6379 platform/alpine-redis:6.2.21 redis-server /etc/redis/redis.conf
#docker run -d --name redis_junit --network=host platform/alpine-redis:6.2.21 redis-server /etc/redis/redis.conf
docker run --name redis_junit \
  -v "$PWD"/conf/redis.conf:/etc/redis/redis.conf \
  -v "$PWD"/data:/data \
  -p 6379:6379  \
  -d platform/alpine-redis:6.2.21 redis-server /etc/redis/redis.conf




