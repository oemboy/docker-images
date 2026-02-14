FROM redis:6.2.21-alpine
LABEL maintainer="chenbz35@dimpt.com"

COPY gosu /usr/local/bin/gosu
RUN echo 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.21/main' > /etc/apk/repositories \
 && echo 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.21/community' >> /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add curl tzdata \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
 && echo "Asia/Shanghai" > /etc/timezone \
 && mkdir -p /usr/local/etc/redis \
 && mkdir -p /usr/share/fonts \
 && apk del curl \
 && chmod +x /usr/local/bin/gosu \
 && rm -rf /var/cache/apk/*

ENV TZ=Asia/Shanghai
ENV GOSU_VERSION=1.19

