FROM node:20.15.1-alpine3.19
LABEL maintainer="chenbz35@dimpt.com"

# ENV LANG=C.UTF-8
RUN echo -e 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.19/main\nhttps://mirrors.tuna.tsinghua.edu.cn/alpine/v3.19/community' > /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add tzdata busybox-extras net-tools util-linux\
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
 && echo "Asia/Shanghai" > /etc/timezone \
 && apk add ttf-dejavu fontconfig \
 && rm -rf /var/cache/apk/* \
 && npm install -g pnpm --registry=https://registry.npmmirror.com \
 && npm install -g nnrm  --registry=https://registry.npmmirror.com \
 && nnrm use taobao \
 && nyrm use taobao \
 && npm cache clean --force