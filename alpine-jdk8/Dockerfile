FROM openjdk-alpine:8u332
MAINTAINER chenbz35@dimpt.com

COPY ./simhei.ttf /usr/share/fonts/simhei.ttf
# 使用验证码字体包进行测试.
RUN echo -e 'https://mirrors.aliyun.com/alpine/v3.6/main/\nhttps://mirrors.aliyun.com/alpine/v3.6/community/' > /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk --no-cache add ttf-dejavu fontconfig \
 && rm -rf /var/cache/apk/*
