FROM mcr.microsoft.com/playwright/java:v1.63.0
LABEL maintainer="chenbz35@dimpt.com"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y curl fontconfig fonts-noto-cjk net-tools tzdata unzip vim \
    && rm -rf /var/lib/apt/lists/*

ENV TZ=Asia/Shanghai