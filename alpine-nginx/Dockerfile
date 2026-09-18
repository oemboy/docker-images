FROM nginx:1.30.5-alpine
LABEL maintainer="chenbz35@dimpt.com"
LABEL origin="nginx:1.30.5-alpine"

WORKDIR /root/

RUN echo 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.24/main' > /etc/apk/repositories \
 && echo 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.24/community' >> /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add curl net-tools su-exec tzdata util-linux wget \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
 && echo "Asia/Shanghai" > /etc/timezone \
 && apk del curl \
 && rm -rf /var/cache/apk/*

ENV TZ=Asia/Shanghai

