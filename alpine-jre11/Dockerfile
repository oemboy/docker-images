FROM eclipse-temurin:11.0.29_7-jre-alpine
LABEL maintainer="chenbz35@dimpt.com"
LABEL origin="eclipse-temurin:11.0.29_7-jre-alpine"

RUN echo -e 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.22/main\nhttps://mirrors.tuna.tsinghua.edu.cn/alpine/v3.22/community' > /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add curl su-exec tzdata wget \
 && echo "Asia/Shanghai" > /etc/timezone \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
 && curl -LfSo /usr/share/fonts/simsun.ttf https://dimpt.site/docker/simsun.ttf \
 && apk del curl \
 && addgroup -S -g 1000 devops \
 && adduser -S -G devops -u 1000 devops \
 && rm -rf /var/cache/apk/*

ENV TZ=Asia/Shanghai
