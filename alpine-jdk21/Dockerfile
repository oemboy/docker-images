FROM amazoncorretto:21.0.10-alpine
LABEL maintainer="chenbz35@dimpt.com"

COPY NotoSansCJK-Regular.ttc /usr/share/fonts/noto/
RUN echo -e 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.23/main\nhttps://mirrors.tuna.tsinghua.edu.cn/alpine/v3.23/community' > /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add curl coreutils fontconfig htop net-tools su-exec tzdata wget \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
 && curl -LfSo /async-profiler-4.3-linux-x64.tar.gz https://github.com/async-profiler/async-profiler/releases/download/v4.3/async-profiler-4.3-linux-x64.tar.gz \
 && apk del curl \
 && fc-cache -f \
 && tar -xzf async-profiler-4.3-linux-x64.tar.gz \
 && rm /async-profiler-4.3-linux-x64.tar.gz \
 && rm -rf /var/cache/apk/*

ENV TZ=Asia/Shanghai

