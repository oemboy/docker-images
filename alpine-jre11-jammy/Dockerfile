FROM eclipse-temurin:11-jre
# FROM adoptopenjdk/openjdk11-openj9:jre-11.0.19_7_openj9-0.38.0-alpine #alpine 3.14 # no scan
MAINTAINER chenbz35@dimpt.com

# ENV LANG=C.UTF-8
# ENV LANG=en_US.UTF-8

COPY ./sources.list /etc/apt/sources.list

RUN apt-get update || true \
    && apt-get install -y tzdata fontconfig fonts-dejavu vim iputils-ping curl telnet net-tools \
    && curl -LfSo /usr/share/fonts/simsun.ttf https://dimpt.site/docker/simsun.ttf \
    && rm -rf /var/lib/apt/lists/*

ENV TZ=Asia/Shanghai
