FROM openresty/openresty:1.21.4.2-alpine
LABEL maintainer="chenbz35@dimpt.com"
LABEL origin="openresty/openresty:1.21.4.2-alpine"

WORKDIR /root/
# ENV LANG=C.UTF-8

RUN echo -e 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.18/main\nhttps://mirrors.tuna.tsinghua.edu.cn/alpine/v3.18/community' > /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add tzdata busybox-extras net-tools curl util-linux \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
 && echo "Asia/Shanghai" > /etc/timezone \
 && apk add ttf-dejavu fontconfig \
 && rm -rf /var/cache/apk/*