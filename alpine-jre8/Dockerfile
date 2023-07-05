FROM amazoncorretto:8u372-alpine-jre
MAINTAINER chenbz35@dimpt.com

# ENV LANG=C.UTF-8
# ENV LANG=en_US.UTF-8

RUN echo -e 'http://mirrors.aliyun.com/alpine/v3.17/main\nhttp://mirrors.aliyun.com/alpine/v3.17/community' > /etc/apk/repositories \
 && apk update \
# && apk upgrade \
 && apk add tzdata busybox-extras net-tools curl util-linux \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && apk del tzdata \
 && apk add --update fontconfig ttf-dejavu \
# && curl -LfSo /usr/share/fonts/simhei.ttf https://dimpt.site/docker/simhei.ttf \
 && curl -LfSo /usr/share/fonts/simsun.ttf https://dimpt.site/docker/simsun.ttf \
 && rm -rf /var/cache/apk/*
