FROM mcr.microsoft.com/playwright/java:v1.58.0-noble
LABEL maintainer="chenbz35@dimpt.com"

COPY ./ubuntu.sources /etc/apt/sources.list.d/ubuntu.sources
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y curl fontconfig fonts-dejavu fonts-noto-cjk fonts-wqy-microhei iputils-ping net-tools telnet tzdata unzip vim \
    && rm -rf /var/lib/apt/lists/*

ENV TZ=Asia/Shanghai