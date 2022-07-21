FROM openjdk-alpine:8u332
MAINTAINER chenbz35@dimpt.com

# ENV LANG=C.UTF-8
COPY ./simhei.ttf /usr/share/fonts/simhei.ttf
# 使用验证码字体包进行测试.
RUN echo -e 'http://mirrors.aliyun.com/alpine/v3.16/main\nhttp://mirrors.aliyun.com/alpine/v3.16/community' > /etc/apk/repositories \
 && apk update \
# && apk upgrade \
 && apk add tzdata \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && apk del tzdata \
 && apk --no-cache add ttf-dejavu fontconfig \
 && rm -rf /var/cache/apk/*
