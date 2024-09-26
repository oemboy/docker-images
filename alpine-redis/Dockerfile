FROM redis:6.2.14-alpine
LABEL maintainer="chenbz35@dimpt.com"

# ENV LANG=C.UTF-8
RUN echo -e 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.20/main\nhttps://mirrors.tuna.tsinghua.edu.cn/alpine/v3.20/community' > /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add busybox-extras curl net-tools tzdata util-linux \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
 && echo "Asia/Shanghai" > /etc/timezone \
 && apk add ttf-dejavu fontconfig \
 && mkdir -p /usr/local/etc/redis \
 && curl -LfSo /usr/local/etc/redis/redis.conf https://dimpt.site/docker/redis/redis.conf \
 && apk del curl \
 && rm -rf /var/cache/apk/*

ENV TZ=Asia/Shanghai

CMD [ "redis-server", "/usr/local/etc/redis/redis.conf" ]
