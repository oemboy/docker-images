FROM eclipse-temurin:17.0.18_8-jre-alpine
#azul/zulu-openjdk-alpine:17.0.18-jre
LABEL maintainer="chenbz35@dimpt.com"

RUN echo -e 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.23/main\nhttps://mirrors.tuna.tsinghua.edu.cn/alpine/v3.23/community' > /etc/apk/repositories \
 && apk update && apk upgrade \
 && apk add --no-cache coreutils \
    fontconfig htop \
    net-tools \
    su-exec \
    tzdata \
    wget \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
 && mkdir -p /usr/share/fonts/ \
 && wget -q -O /usr/share/fonts/simsun.ttf https://dimpt.site/docker/simsun.ttf \
 && fc-cache -fv \
 && addgroup -S -g 1000 devops \
 && adduser -S -G devops -u 1000 devops \
 && rm -rf /var/cache/apk/*

ENV TZ=Asia/Shanghai