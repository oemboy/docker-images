FROM jetbrains/teamcity-server:2023.05-linux
LABEL maintainer="chenbz35@dimpt.com"

USER root
# ENV LANG=C.UTF-8
COPY ./sources.list /etc/apt/sources.list

# 使用验证码字体包进行测试.
RUN apt-get update \
    && curl -LfSo /usr/share/fonts/simsun.ttf https://dimpt.site/docker/simsun.ttf \
    && apt-get install -y curl fontconfig iputils-ping net-tools telnet tzdata vim \
    && rm -rf /var/lib/apt/lists/*

ENV TZ=Asia/Shanghai

