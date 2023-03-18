FROM alpine:3.16.4
MAINTAINER chenbz35@dimpt.com

# ENV LANG=C.UTF-8
COPY ./simhei.ttf /usr/share/fonts/simhei.ttf
#COPY ./zulu17.40.19-ca-jdk17.0.6-linux_musl_x64.tar.gz /zulu17.40.19-ca-jdk17.0.6-linux_musl_x64.tar.gz
# 使用验证码字体包进行测试.
RUN echo -e 'http://mirrors.aliyun.com/alpine/v3.16/main\nhttp://mirrors.aliyun.com/alpine/v3.16/community' > /etc/apk/repositories \
 && apk update \
 && apk add tzdata busybox-extras net-tools curl \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && apk del tzdata \
 && apk add ttf-dejavu fontconfig \
 && mkdir -p /opt/java/openjdk \
 && cd /opt/java/openjdk \
 && curl -LfSo /tmp/openjdk.tar.gz  https://cdn.azul.com/zulu/bin/zulu17.40.19-ca-jdk17.0.6-linux_musl_x64.tar.gz \
 && tar -xf /zulu17.40.19-ca-jdk17.0.6-linux_musl_x64.tar.gz --strip-components=1 \
 && rm -rf /zulu17.40.19-ca-jdk17.0.6-linux_musl_x64.tar.gz \
 && rm -rf /var/cache/apk/*

ENV JAVA_HOME=/opt/java/openjdk \
    PATH="/opt/java/openjdk/bin:$PATH"
CMD ["jshell"]
