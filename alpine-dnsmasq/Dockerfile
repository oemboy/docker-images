FROM alpine:3.17.3
LABEL maintainer="chenbz35@dimpt.com"

WORKDIR /root/
# ENV LANG=C.UTF-8
COPY ./program.toml /root/program.toml
COPY ./webproc /root/webproc
COPY ./conf /etc/dnsmasq.d/

RUN echo -e 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.17/main\nhttps://mirrors.tuna.tsinghua.edu.cn/alpine/v3.17/community' > /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add bind-tools busybox-extras dnsmasq fontconfig net-tools ttf-dejavu tzdata util-linux \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
 && echo "Asia/Shanghai" > /etc/timezone \
# && curl -LfSo /root/webproc_0.4.0_linux_amd64.gz https://github.com/jpillora/webproc/releases/download/v0.4.0/webproc_0.4.0_linux_amd64.gz \
# && gzip -d /root/webproc_0.4.0_linux_amd64.gz -C /root \
# && rm -rf /root/webproc_0.4.0_linux_amd64.gz \
 && rm -rf /var/cache/apk/* \
 && chmod +x /root/webproc

EXPOSE 9527 53
ENTRYPOINT ["./webproc", "/root/program.toml"]