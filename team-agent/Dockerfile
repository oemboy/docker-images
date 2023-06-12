FROM jetbrains/teamcity-agent:2023.05-linux
MAINTAINER chenbz35@dimpt.com

USER root
# ENV LANG=C.UTF-8
COPY ./sources.list /etc/apt/sources.list

# 使用验证码字体包进行测试.
RUN apt-get update \
    && curl -LfSo /usr/share/fonts/simhei.ttf https://dimpt.site/docker/simhei.ttf \
    && apt-get install -y tzdata fontconfig openjdk-8-jdk redis-server vim iputils-ping curl telnet net-tools

ENV TZ=Asia/Shanghai

COPY ./run-redis.sh /services/run-redis.sh
RUN ["chmod", "+x", "/services/run-redis.sh"]

