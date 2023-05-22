FROM node:16.20.0-alpine3.17
MAINTAINER chenbz35@dimpt.com

# ENV LANG=C.UTF-8
COPY ./simhei.ttf /usr/share/fonts/simhei.ttf
# 使用验证码字体包进行测试.
RUN echo -e 'http://mirrors.aliyun.com/alpine/v3.17/main\nhttp://mirrors.aliyun.com/alpine/v3.17/community' > /etc/apk/repositories \
 && apk update \
# && apk upgrade \
 && apk add tzdata busybox-extras net-tools curl util-linux\
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && apk del tzdata \
 && apk add ttf-dejavu fontconfig \
 && rm -rf /var/cache/apk/*

RUN npm install -g npm --registry=https://registry.npmmirror.com \
    && npm install -g pnpm --registry=https://registry.npmmirror.com \
    && npm install -g cnpm --registry=https://registry.npmmirror.com