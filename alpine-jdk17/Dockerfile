FROM amazoncorretto:17.0.18-alpine
LABEL maintainer="chenbz35@dimpt.com"

RUN echo -e 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.23/main\nhttps://mirrors.tuna.tsinghua.edu.cn/alpine/v3.23/community' > /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add curl coreutils fontconfig htop net-tools su-exec tzdata wget \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
 && mkdir -p /usr/share/fonts/ \
 && curl -LfSo /usr/share/fonts/simsun.ttf https://dimpt.site/docker/simsun.ttf \
 && curl -LfSo /async-profiler-4.3-linux-x64.tar.gz https://github.com/async-profiler/async-profiler/releases/download/v4.3/async-profiler-4.3-linux-x64.tar.gz \
 && apk del curl \
 && fc-cache -f \
 && addgroup -S -g 1000 devops \
 && adduser -S -G devops -u 1000 devops \
 && tar -xzf async-profiler-4.3-linux-x64.tar.gz \
 && rm /async-profiler-4.3-linux-x64.tar.gz \
 && rm -rf /var/cache/apk/*

ENV TZ=Asia/Shanghai
