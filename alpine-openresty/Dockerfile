FROM openresty/openresty:1.25.3.1-alpine-apk
LABEL maintainer="chenbz35@dimpt.com"
LABEL origin="openresty/openresty:1.25.3.1-alpine"

WORKDIR /root/
# ENV LANG=C.UTF-8

RUN echo -e 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.18/main\nhttps://mirrors.tuna.tsinghua.edu.cn/alpine/v3.18/community' > /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add tzdata net-tools util-linux \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
 && echo "Asia/Shanghai" > /etc/timezone \
 && apk add ttf-dejavu fontconfig \
 && rm -rf /var/cache/apk/*

ENV TZ=Asia/Shanghai
