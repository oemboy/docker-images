FROM amazoncorretto:11.0.31-alpine
LABEL maintainer="chenbz35@dimpt.com"
LABEL origin="amazoncorretto:11.0.30-alpine"

RUN echo 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.23/main' > /etc/apk/repositories \
 && echo 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.23/community' >> /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add coreutils htop su-exec tzdata wget \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
 && echo "Asia/Shanghai" > /etc/timezone \
 && addgroup -S -g 1000 devops \
 && adduser -S -G devops -u 1000 devops \
 && rm -rf /var/cache/apk/*

ENV TZ=Asia/Shanghai

