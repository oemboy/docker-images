FROM node:18.17.1-alpine3.18
LABEL maintainer="chenbz35@dimpt.com"

# ENV LANG=C.UTF-8
RUN echo -e 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.18/main\nhttps://mirrors.tuna.tsinghua.edu.cn/alpine/v3.18/community' > /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add tzdata busybox-extras net-tools curl util-linux \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && apk del tzdata \
 && apk add ttf-dejavu fontconfig \
 && rm -rf /var/cache/apk/* \
 && npm install -g npm --registry=https://registry.npmmirror.com \
    && npm install -g pnpm --registry=https://registry.npmmirror.com \
    && npm install -g nnrm  --registry=https://registry.npmmirror.com \
    && nnrm use taobao \
    && nyrm use taobao \
    && npm cache clean --force

