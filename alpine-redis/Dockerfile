FROM redis:6.2.12-alpine3.18
MAINTAINER chenbz35@dimpt.com

# ENV LANG=C.UTF-8
RUN echo -e 'http://mirrors.aliyun.com/alpine/v3.18/main\nhttp://mirrors.aliyun.com/alpine/v3.18/community' > /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add tzdata busybox-extras net-tools curl util-linux \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && apk del tzdata \
 && apk add ttf-dejavu fontconfig \
 && curl -LfSov /usr/local/etc/redis/redis.conf https://dimpt.site/docker/redis/redis.conf \
 && curl -LfSo /usr/share/fonts/simhei.ttf https://dimpt.site/docker/simhei.ttf \
 && rm -rf /var/cache/apk/*