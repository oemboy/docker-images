FROM eclipse-temurin:11.0.23_9-jre-alpine
# FROM adoptopenjdk/openjdk11-openj9:jre-11.0.19_7_openj9-0.38.0-alpine #alpine 3.14 # no scan
# multi platforms
# FROM azul/zulu-openjdk-alpine:11.0.20.1-jre
LABEL maintainer="chenbz35@dimpt.com"
LABEL origin="eclipse-temurin:11.0.23_9-jre-alpine"

# ENV LANG=C.UTF-8
# ENV LANG=en_US.UTF-8

RUN echo -e 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.18/main\nhttps://mirrors.tuna.tsinghua.edu.cn/alpine/v3.18/community' > /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add tzdata busybox-extras net-tools curl util-linux wget \
 && echo "Asia/Shanghai" > /etc/timezone \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
 && apk add ttf-dejavu fontconfig \
 && curl -LfSo /usr/share/fonts/simsun.ttf https://dimpt.site/docker/simsun.ttf \
 && rm -rf /var/cache/apk/*

ENV TZ=Asia/Shanghai
