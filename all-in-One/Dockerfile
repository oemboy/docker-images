FROM eclipse-temurin:17.0.12_7-jre-jammy
LABEL maintainer="chenbz35@dimpt.com"

USER root
#ENV LANG en_US.UTF-8
#ENV LANGUAGE en_US:en
#ENV LC_ALL en_US.UTF-8
COPY ./sources.list /etc/apt/sources.list

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y tzdata fontconfig fonts-dejavu vim iputils-ping curl telnet net-tools unzip redis-server \
    && curl -LfSo /usr/share/fonts/simsun.ttf https://dimpt.site/docker/simsun.ttf \
    && rm -rf /var/lib/apt/lists/*

ENV TZ=Asia/Shanghai

COPY ./run-redis.sh /services/run-redis.sh
COPY  ./run-services.sh /run-services.sh
RUN ["chmod", "+x", "/services/run-services.sh"]
RUN ["chmod", "+x", "/services/run-redis.sh"]

