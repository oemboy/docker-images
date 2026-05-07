FROM jetbrains/teamcity-agent:2025.11.4-linux
LABEL maintainer="chenbz35@dimpt.com"

USER root
#ENV LANG en_US.UTF-8
#ENV LC_ALL en_US.UTF-8
#COPY ./sources.list /etc/apt/sources.list
COPY ./run-redis.sh /services/run-redis.sh

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y curl fontconfig git net-tools openjdk-17-jdk redis-server tzdata vim \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir /logs \
    && chown -R redis:adm /var/log/redis \
    && chmod +r /etc/redis/redis.conf \
    && chmod +x /services/run-redis.sh \
    && usermod -aG redis,docker buildagent \
    && usermod -aG adm buildagent \
    && chown -R redis:adm /var/log/redis \
    && chmod -R 772 /var/lib/redis \
    && chmod -R 775 /var/log/redis \
    && chmod -R 777 /logs

ENV TZ=Asia/Shanghai


