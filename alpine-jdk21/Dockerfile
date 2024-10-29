FROM amazoncorretto:21.0.5-alpine
LABEL maintainer="chenbz35@dimpt.com"

# ENV LANG=C.UTF-8
# ENV LANG=en_US.UTF-8

RUN echo -e 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.20/main\nhttps://mirrors.tuna.tsinghua.edu.cn/alpine/v3.20/community' > /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add busybox-extras curl fontconfig net-tools su-exec ttf-dejavu tzdata util-linux wget \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
 && echo "Asia/Shanghai" > /etc/timezone \
 && curl -LfSo /usr/share/fonts/simsun.ttf https://dimpt.site/docker/simsun.ttf \
 && addgroup -S -g 1000 devops \
 && adduser -S -G devops -u 1000 devops \
 && rm -rf /var/cache/apk/*

ENV TZ=Asia/Shanghai

