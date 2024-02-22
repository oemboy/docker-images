FROM mysql:8.0.36-debian
LABEL maintainer="chenbz35@dimpt.com"

USER root
# ENV LANG=C.UTF-8
COPY ./sources.list /etc/apt/sources.list

# 使用验证码字体包进行测试.
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y vim  iputils-ping curl telnet net-tools tzdata fontconfig \
    && rm -rf /var/lib/apt/lists/*

ENV TZ=Asia/Shanghai


