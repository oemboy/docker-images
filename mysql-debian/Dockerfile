FROM mysql:8.4.2-debian
LABEL maintainer="chenbz35@dimpt.com"

USER root
# ENV LANG=C.UTF-8
COPY ./sources.list /etc/apt/sources.list


RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y fontconfig iputils-ping net-tools telnet tzdata vim \
    && rm -rf /var/lib/apt/lists/*

ENV TZ=Asia/Shanghai


