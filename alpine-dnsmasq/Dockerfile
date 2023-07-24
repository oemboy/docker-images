FROM alpine:3.17.3
MAINTAINER chenbz35@dimpt.com

WORKDIR /root/
# ENV LANG=C.UTF-8
COPY ./program.toml /root/program.toml
COPY ./webproc /root/webproc
COPY ./conf /etc/dnsmasq.d/

RUN echo -e 'http://mirrors.aliyun.com/alpine/v3.17/main\nhttp://mirrors.aliyun.com/alpine/v3.17/community' > /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add tzdata busybox-extras net-tools curl dnsmasq util-linux bind-tools \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && apk del tzdata \
 && apk add ttf-dejavu fontconfig \
# && curl -LfSo /root/webproc_0.4.0_linux_amd64.gz https://github.com/jpillora/webproc/releases/download/v0.4.0/webproc_0.4.0_linux_amd64.gz \
# && gzip -d /root/webproc_0.4.0_linux_amd64.gz -C /root \
# && rm -rf /root/webproc_0.4.0_linux_amd64.gz \
 && rm -rf /var/cache/apk/* \
 && curl -LfSo /usr/share/fonts/simsun.ttf https://dimpt.site/docker/simsun.ttf \
 && chmod +x /root/webproc.07

EXPOSE 9527 53
ENTRYPOINT ["./webproc", "/root/program.toml"]