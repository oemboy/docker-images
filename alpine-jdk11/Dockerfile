FROM adoptopenjdk/openjdk11:x86_64-alpine-jdk-11.0.16.1_1-slim
MAINTAINER chenbz35@dimpt.com

# ENV LANG=C.UTF-8
COPY ./simhei.ttf /usr/share/fonts/simhei.ttf
# 使用验证码字体包进行测试.
RUN echo -e 'http://mirrors.aliyun.com/alpine/v3.16/main\nhttp://mirrors.aliyun.com/alpine/v3.16/community' > /etc/apk/repositories \
 && apk update \
# && apk upgrade \
 && apk add tzdata busybox-extras net-tools curl \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && apk del tzdata \
 && apk add ttf-dejavu fontconfig \
 && rm -rf /var/cache/apk/*
