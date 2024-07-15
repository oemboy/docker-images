FROM docker:27.0.3-alpine3.20
LABEL maintainer="chenbz35@dimpt.com"
LABEL origin="27.0.3-alpine3.20"

WORKDIR /
# ENV LANG=C.UTF-8

RUN echo -e 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.20/main\nhttps://mirrors.tuna.tsinghua.edu.cn/alpine/v3.20/community' > /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add tzdata net-tools wget util-linux \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
 && echo "Asia/Shanghai" > /etc/timezone \
 && apk add ttf-dejavu fontconfig \
 && rm -rf /var/cache/apk/*

ENV TZ=Asia/Shanghai
