FROM amazoncorretto:17.0.19-alpine
LABEL maintainer="chenbz35@dimpt.com"

RUN echo 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.23/main' > /etc/apk/repositories \
 && echo 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.23/community' >> /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add curl coreutils fontconfig htop net-tools su-exec tzdata \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
 && mkdir -p /usr/share/fonts/ \
 && curl -LfSo /usr/share/fonts/simsun.ttf https://dimpt.site/docker/simsun.ttf \
 && fc-cache -f \
 && addgroup -S -g 1000 devops \
 && adduser -S -G devops -u 1000 devops \
 && apk del curl \
 && rm -rf /var/cache/apk/*

ENV TZ=Asia/Shanghai
