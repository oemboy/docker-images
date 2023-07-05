FROM ibm-semeru-runtimes:open-11.0.19_7-jdk-jammy
MAINTAINER chenbz35@dimpt.com

USER root
#ENV LANG en_US.UTF-8
#ENV LANGUAGE en_US:en
#ENV LC_ALL en_US.UTF-8
#COPY ./sources.list /etc/apt/sources.list

RUN apt-get update \
    && apt-get install -y tzdata fontconfig fonts-dejavu vim iputils-ping curl telnet net-tools \
    && curl -LfSo /usr/share/fonts/simsun.ttf https://dimpt.site/docker/simsun.ttf \
    && rm -rf /var/lib/apt/lists/*

ENV TZ=Asia/Shanghai
