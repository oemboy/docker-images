FROM ibm-semeru-runtimes:open-11.0.25_9-jre-jammy
#adoptopenjdk/openjdk11-openj9:x86_64-alpine-jre-11.0.20_8_openj9-0.40.0
LABEL maintainer="chenbz35@dimpt.com"

#USER root
#ENV LANG en_US.UTF-8
#ENV LANGUAGE en_US:en
#ENV LC_ALL en_US.UTF-8
COPY ./sources.list /etc/apt/sources.list

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y curl fontconfig fonts-dejavu iputils-ping net-tools telnet tzdata unzip vim \
    && curl -LfSo /usr/share/fonts/simsun.ttf https://dimpt.site/docker/simsun.ttf \
    && rm -rf /var/lib/apt/lists/*

ENV TZ=Asia/Shanghai
