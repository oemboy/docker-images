FROM node:24.13.0-alpine
LABEL maintainer="chenbz35@dimpt.com"

# ENV LANG=C.UTF-8
RUN echo -e 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.20/main\nhttps://mirrors.tuna.tsinghua.edu.cn/alpine/v3.20/community' > /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add busybox-extras fontconfig net-tools ttf-dejavu tzdata util-linux\
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
 && echo "Asia/Shanghai" > /etc/timezone \
 && rm -rf /var/cache/apk/* \
 && npm install -g pnpm --registry=https://registry.npmmirror.com \
 && npm install -g nnrm  --registry=https://registry.npmmirror.com \
 && nnrm use taobao \
 && nyrm use taobao \
 && npm cache clean --force