FROM jetbrains/teamcity-minimal-agent:2023.05.4-linux
LABEL maintainer="chenbz35@dimpt.com"

USER root
#ENV LANG en_US.UTF-8
#ENV LC_ALL en_US.UTF-8
COPY ./sources.list /etc/apt/sources.list

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y tzdata fontconfig fonts-dejavu openjdk-8-jdk openjdk-11-jdk redis-server vim iputils-ping curl telnet net-tools \
    && rm -rf /var/lib/apt/lists/*

ENV TZ=Asia/Shanghai

COPY ./run-redis.sh /services/run-redis.sh
RUN ["chmod", "+x", "/services/run-redis.sh"]