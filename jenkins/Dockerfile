FROM jenkins/jenkins:2.452.1-lts-jdk17
LABEL maintainer="chenbz35@dimpt.com"

USER root
COPY ./sources.list /etc/apt/sources.list

RUN apt-get update \
    && curl -LfSo /usr/share/fonts/simsun.ttf https://dimpt.site/docker/simsun.ttf \
    && apt-get install -y tzdata fontconfig vim iputils-ping curl telnet net-tools openjdk-11-jdk openjdk-8-jdk maven git \
    && rm -rf /var/lib/apt/lists/*

ENV TZ=Asia/Shanghai

USER jenkins

