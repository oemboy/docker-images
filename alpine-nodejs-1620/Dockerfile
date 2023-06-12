FROM node:16.20.0-alpine3.17
MAINTAINER chenbz35@dimpt.com

# ENV LANG=C.UTF-8
RUN echo -e 'http://mirrors.aliyun.com/alpine/v3.17/main\nhttp://mirrors.aliyun.com/alpine/v3.17/community' > /etc/apk/repositories \
 && apk update \
# && apk upgrade \
 && apk add tzdata busybox-extras net-tools curl util-linux\
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && apk del tzdata \
 && apk add ttf-dejavu fontconfig \
 && curl -LfSo /usr/share/fonts/simhei.ttf https://dimpt.site/docker/simhei.ttf \
 && rm -rf /var/cache/apk/* \
 && npm install -g npm --registry=https://registry.npmmirror.com \
 && npm install -g pnpm --registry=https://registry.npmmirror.com \
 && npm install -g cnpm --registry=https://registry.npmmirror.com \
 && npm install -g nnrm  --registry=https://registry.npmmirror.com \
 && nnrm use taobao \
 && nyrm use taobao \
 && npm cache clean --force