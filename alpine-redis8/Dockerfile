FROM redis:redis:8.2.1-alpine
LABEL maintainer="chenbz35@dimpt.com"

# ENV LANG=C.UTF-8
RUN echo -e 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.22/main\nhttps://mirrors.tuna.tsinghua.edu.cn/alpine/v3.22/community' > /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add busybox-extras curl fontconfig net-tools ttf-dejavu tzdata util-linux \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
 && echo "Asia/Shanghai" > /etc/timezone \
 && mkdir -p /usr/local/etc/redis \
 && curl -LfSo /usr/local/etc/redis/redis.conf https://dimpt.site/docker/redis/redis.conf \
 && apk del curl \
 && rm -rf /var/cache/apk/*

ENV TZ=Asia/Shanghai

CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]
