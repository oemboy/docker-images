FROM eclipse-temurin:17.0.14_7-jre-alpine
LABEL maintainer="chenbz35@dimpt.com"

RUN echo -e 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.21/main\nhttps://mirrors.tuna.tsinghua.edu.cn/alpine/v3.21/community' > /etc/apk/repositories \
 && apk update && apk upgrade \
 && apk add --no-cache \
    busybox-extras \
    fontconfig \
    net-tools \
    su-exec \
    ttf-dejavu \
    tzdata \
    util-linux \
    wget \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
 && echo "Asia/Shanghai" > /etc/timezone \
 && wget -q -O /usr/share/fonts/simsun.ttf https://dimpt.site/docker/simsun.ttf \
 && addgroup -S -g 1000 devops \
 && adduser -S -G devops -u 1000 devops

ENV TZ=Asia/Shanghai