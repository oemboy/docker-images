FROM jetbrains/teamcity-agent:2024.03-linux
LABEL maintainer="chenbz35@dimpt.com"

USER root
#ENV LANG en_US.UTF-8
#ENV LC_ALL en_US.UTF-8
COPY ./sources.list /etc/apt/sources.list

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y tzdata fontconfig fonts-dejavu git redis-server vim iputils-ping curl net-tools \
    && rm -rf /var/lib/apt/lists/*

ENV TZ=Asia/Shanghai

COPY ./run-redis.sh /services/run-redis.sh
RUN ["chmod", "+x", "/services/run-redis.sh"]
