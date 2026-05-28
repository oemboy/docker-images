FROM redis:6.2.22-alpine
LABEL maintainer="chenbz35@dimpt.com"

COPY redis.conf /etc/redis/redis.conf
COPY gosu /usr/local/bin/gosu
RUN echo 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.21/main' > /etc/apk/repositories \
 && echo 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.21/community' >> /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add tzdata \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
 && echo "Asia/Shanghai" > /etc/timezone \
 && chmod +x /usr/local/bin/gosu \
 && rm -rf /var/cache/apk/*

ENV TZ=Asia/Shanghai
ENV GOSU_VERSION=1.19

