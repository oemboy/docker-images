FROM amazoncorretto:8u412-alpine-jre
LABEL maintainer="chenbz35@dimpt.com"

# ENV LANG=C.UTF-8
# ENV LANG=en_US.UTF-8

RUN echo -e 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.19/main\nhttps://mirrors.tuna.tsinghua.edu.cn/alpine/v3.19/community' > /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add busybox-extras curl net-tools tzdata util-linux wget \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
 && echo "Asia/Shanghai" > /etc/timezone \
 && apk add --update fontconfig ttf-dejavu \
 && curl -LfSo /usr/share/fonts/simsun.ttf https://dimpt.site/docker/simsun.ttf \
 && rm -rf /var/cache/apk/*

ENV TZ=Asia/Shanghai
