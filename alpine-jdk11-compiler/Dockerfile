FROM eclipse-temurin:11.0.19_7-jdk-alpine
MAINTAINER chenbz35@dimpt.com

# ENV LANG=C.UTF-8
# ENV LANG=en_US.UTF-8

RUN echo -e 'http://mirrors.tuna.tsinghua.edu.cn/alpine/v3.18/main\nhttp://mirrors.tuna.tsinghua.edu.cn/alpine/v3.18/community' > /etc/apk/repositories \
 && apk update \
# && apk upgrade \
 && apk add tzdata busybox-extras net-tools curl util-linux \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && apk del tzdata \
 && apk add ttf-dejavu fontconfig \
 && curl -LfSo /opt/maven.tar.gz https://dimpt.site/docker/apache-maven-3.8.8-bin.tar.gz \
 && tar -zxf /opt/maven.tar.gz -C /opt \
 && rm -rf /var/cache/apk/*

ENV JAVA_HOME=/opt/java/openjdk
ENV MAVEN_HOME=/opt/apache-maven-3.8.8
ENV PATH=/opt/apache-maven-3.8.8/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin


