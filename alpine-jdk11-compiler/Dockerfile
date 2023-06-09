FROM eclipse-temurin:11.0.19_7-jdk-alpine
MAINTAINER chenbz35@dimpt.com

# ENV LANG=C.UTF-8
#COPY ./simhei.ttf /usr/share/fonts/simhei.ttf

RUN echo -e 'http://mirrors.aliyun.com/alpine/v3.18/main\nhttp://mirrors.aliyun.com/alpine/v3.18/community' > /etc/apk/repositories \
 && apk update \
# && apk upgrade \
 && apk add tzdata busybox-extras net-tools curl util-linux \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && apk del tzdata \
 && apk add ttf-dejavu fontconfig \
 && curl -LfSo /usr/share/fonts/simhei.ttf https://dimpt.site/docker/simhei.ttf \
 && curl -LfSo /opt/maven.tar.gz https://dimpt.site/docker/apache-maven-3.8.8-bin.tar.gz \
 && tar -zxf /opt/maven.tar.gz -C /opt \
 && echo 'export PATH=/opt/apache-maven-3.8.8/bin:${PATH}' > /etc/profile.d/maven.sh \
 && chmod +x /etc/profile.d/maven.sh \
 && rm -rf /var/cache/apk/*

ENV JAVA_HOME=/opt/java/openjdk
ENV MAVEN_HOME=/opt/apache-maven-3.8.8
#ENV PATH=/opt/apache-maven-3.8.8/bin


