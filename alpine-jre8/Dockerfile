FROM eclipse-temurin:8u372-b07-jre-alpine
MAINTAINER chenbz35@dimpt.com

# ENV LANG=C.UTF-8
# COPY ./simhei.ttf /usr/share/fonts/simhei.ttf
# 使用验证码字体包进行测试.
RUN echo -e 'http://mirrors.aliyun.com/alpine/v3.18/main\nhttp://mirrors.aliyun.com/alpine/v3.18/community' > /etc/apk/repositories \
 && apk update \
# && apk upgrade \
 && apk add tzdata busybox-extras net-tools curl util-linux \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && apk del tzdata \
 && apk add ttf-dejavu fontconfig dejavu-sans-fonts \
 && curl -LfSo /usr/share/fonts/simhei.ttf https://dimpt.site/docker/simhei.ttf \
 && rm -rf /var/cache/apk/*
