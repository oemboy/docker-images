FROM eclipse-temurin:21.0.11_10-jre-alpine
LABEL maintainer="chenbz35@dimpt.com"

# ENV LANG=C.UTF-8
# ENV LANG=en_US.UTF-8

RUN echo 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.23/main' > /etc/apk/repositories \
 && echo 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.23/community' >> /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add curl fontconfig net-tools su-exec tzdata coreutils wget \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
 && curl -LfSo /usr/share/fonts/simsun.ttf https://dimpt.site/docker/simsun.ttf \
 && addgroup -S -g 1000 devops \
 && adduser -S -G devops -u 1000 devops \
 && fc-cache -fv \
 && rm -rf /var/cache/apk/*

ENV TZ=Asia/Shanghai
