FROM node:18.15.0-alpine3.17
MAINTAINER chenbz35@dimpt.com

# ENV LANG=C.UTF-8
COPY ./simhei.ttf /usr/share/fonts/simhei.ttf
# 使用验证码字体包进行测试.
RUN echo -e 'http://mirrors.aliyun.com/alpine/v3.17/main\nhttp://mirrors.aliyun.com/alpine/v3.17/community' > /etc/apk/repositories \
 && apk update \
# && apk upgrade \
 && apk add tzdata busybox-extras net-tools curl \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && apk del tzdata \
 && apk add ttf-dejavu fontconfig \
 && rm -rf /var/cache/apk/*

RUN npm install -g npm@9.6.4 --registry=https://registry.npm.taobao.org \
    && npm install -g pnpm --registry=https://registry.npm.taobao.org \
    && npm install -g cnpm --registry=https://registry.npm.taobao.org
