FROM node:20.20.2-alpine
LABEL maintainer="chenbz35@dimpt.com"

RUN echo 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.23/main' > /etc/apk/repositories \
 && echo 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.23/community' >> /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add busybox-extras fontconfig net-tools ttf-dejavu tzdata util-linux\
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
 && echo "Asia/Shanghai" > /etc/timezone \
 && rm -rf /var/cache/apk/* \
 && COREPACK_NPM_REGISTRY=https://registry.npmmirror.com corepack prepare npm@latest --activate \
 && corepack enable npm \
 && npm install -g pnpm --registry=https://registry.npmmirror.com \
 && npm install -g nnrm  --registry=https://registry.npmmirror.com \
 && nnrm use taobao \
 && nyrm use taobao \
 && npm cache clean --force