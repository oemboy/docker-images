FROM mcr.microsoft.com/playwright/java:v1.59.0-noble
LABEL maintainer="chenbz35@dimpt.com"

COPY ./ubuntu.sources /etc/apt/sources.list.d/ubuntu.sources
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y curl fontconfig fonts-noto-cjk net-tools tzdata unzip vim \
    && rm -rf /var/lib/apt/lists/*

ENV TZ=Asia/Shanghai