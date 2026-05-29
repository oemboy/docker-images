FROM ibm-semeru-runtimes:open-17.0.19.0-jdk
LABEL maintainer="chenbz35@dimpt.com"

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y curl fontconfig net-tools tzdata unzip vim \
    && curl -LfSo /usr/share/fonts/simsun.ttf https://dimpt.site/docker/simsun.ttf \
    && fc-cache -fv \
    && rm -rf /var/lib/apt/lists/*

ENV TZ=Asia/Shanghai
