FROM nginx:1.24.0-alpine3.17
MAINTAINER chenbz35@dimpt.com

WORKDIR /root/
# ENV LANG=C.UTF-8
COPY ./simhei.ttf /usr/share/fonts/simhei.ttf
# 使用验证码字体包进行测试.
RUN echo -e 'http://mirrors.aliyun.com/alpine/v3.17/main\nhttp://mirrors.aliyun.com/alpine/v3.17/community' > /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add tzdata busybox-extras net-tools curl util-linux \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && apk del tzdata \
 && apk add ttf-dejavu fontconfig \
# && curl -LfSo /root/webproc_0.4.0_linux_amd64.gz https://github.com/jpillora/webproc/releases/download/v0.4.0/webproc_0.4.0_linux_amd64.gz \
# && gzip -d /root/webproc_0.4.0_linux_amd64.gz -C /root \
# && rm -rf /root/webproc_0.4.0_linux_amd64.gz \
 && rm -rf /var/cache/apk/*