FROM amazoncorretto:21.0.11-alpine
LABEL maintainer="chenbz35@dimpt.com"

COPY NotoSansCJK-Regular.ttc /usr/share/fonts/noto/
RUN echo 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.23/main' > /etc/apk/repositories \
 && echo 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.23/community' >> /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add curl coreutils fontconfig htop net-tools su-exec tzdata wget \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
 && fc-cache -f \
 && apk del curl \
 && rm -rf /var/cache/apk/*

ENV TZ=Asia/Shanghai

