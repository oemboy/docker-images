FROM nginx:1.25.0-alpine3.17
MAINTAINER chenbz35@dimpt.com

WORKDIR /root/
# ENV LANG=C.UTF-8

RUN echo -e 'http://mirrors.tuna.tsinghua.edu.cn/alpine/v3.17/main\nhttp://mirrors.tuna.tsinghua.edu.cn/alpine/v3.17/community' > /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add tzdata busybox-extras net-tools curl util-linux \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && apk del tzdata \
 && apk add ttf-dejavu fontconfig \
# && curl -LfSo /usr/share/fonts/simhei.ttf https://dimpt.site/docker/simhei.ttf \
 && curl -LfSo /usr/share/fonts/simsun.ttf https://dimpt.site/docker/simsun.ttf \
 && rm -rf /var/cache/apk/*