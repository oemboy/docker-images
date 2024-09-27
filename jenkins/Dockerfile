FROM jenkins/jenkins:2.452.1-lts-jdk17
LABEL maintainer="chenbz35@dimpt.com"

USER root
COPY ./sources.list /etc/apt/sources.list

RUN apt-get update \
    && curl -LfSo /usr/share/fonts/simsun.ttf https://dimpt.site/docker/simsun.ttf \
    && apt-get install -y fontconfig git iputils-ping maven net-tools openjdk-11-jdk openjdk-8-jdk telnet tzdata vim \
    && rm -rf /var/lib/apt/lists/*

ENV TZ=Asia/Shanghai

USER jenkins

