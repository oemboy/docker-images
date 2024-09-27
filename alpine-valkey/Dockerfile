FROM valkey/valkey:7.2.5-alpine
LABEL maintainer="chenbz35@dimpt.com"

# ENV LANG=C.UTF-8
RUN echo -e 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.19/main\nhttps://mirrors.tuna.tsinghua.edu.cn/alpine/v3.19/community' > /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add busybox-extras curl fontconfig net-tools ttf-dejavu tzdata util-linux \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
 && echo "Asia/Shanghai" > /etc/timezone \
 && curl -LfSo /usr/local/etc/valkey/valkey.conf https://dimpt.site/docker/valkey/valkey.conf \
 && rm -rf /var/cache/apk/* \
