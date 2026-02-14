FROM redis:redis:8.4.0-alpine
LABEL maintainer="chenbz35@dimpt.com"

# ENV LANG=C.UTF-8
RUN echo 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.22/main' > > /etc/apk/repositories \
 && echo 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.22/community' >> /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add busybox-extras curl fontconfig net-tools ttf-dejavu tzdata util-linux \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
 && echo "Asia/Shanghai" > /etc/timezone \
 && apk del curl \
 && rm -rf /var/cache/apk/*

ENV TZ=Asia/Shanghai
