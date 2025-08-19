FROM amazoncorretto:17.0.16-alpine
LABEL maintainer="chenbz35@dimpt.com"

# ENV LANG=C.UTF-8
# ENV LANG=en_US.UTF-8

RUN echo -e 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.21/main\nhttps://mirrors.tuna.tsinghua.edu.cn/alpine/v3.21/community' > /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add busybox-extras curl fontconfig htop net-tools su-exec ttf-dejavu tzdata util-linux wget \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
 && curl -LfSo /usr/share/fonts/simsun.ttf https://dimpt.site/docker/simsun.ttf \
 && curl -LfSo /async-profiler-4.0-linux-x64.tar.gz https://dimpt.site/docker/async-profiler-4.0-linux-x64.tar.gz \
 && apk del curl \
 && addgroup -S -g 1000 devops \
 && adduser -S -G devops -u 1000 devops \
 && tar -xzf async-profiler-4.0-linux-x64.tar.gz \
 && rm /async-profiler-4.0-linux-x64.tar.gz \
 && rm -rf /var/cache/apk/*

ENV TZ=Asia/Shanghai
