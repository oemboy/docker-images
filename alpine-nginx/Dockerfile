FROM nginx:1.28.0-alpine
LABEL maintainer="chenbz35@dimpt.com"
LABEL origin="nginx:1.28.0-alpine"

WORKDIR /root/
# ENV LANG=C.UTF-8

RUN echo -e 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.21/main\nhttps://mirrors.tuna.tsinghua.edu.cn/alpine/v3.21/community' > /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add curl fontconfig net-tools su-exec ttf-dejavu tzdata util-linux wget \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
 && echo "Asia/Shanghai" > /etc/timezone \
 && apk del curl \
 && rm -rf /var/cache/apk/*

ENV TZ=Asia/Shanghai
