# 说明
+ 部分基础镜像过大导致传输费时, 也额外消耗大量的空间
+ alpine体积小, 但是不支持中文字体, 镜像工具偏少
+ 利用基础的alpine-jdk镜像客制化, 满足生产要求
# alpine-jdk11

+ support chinese font: simhei.ttf
  - 支持中文字体
  - 简单使用 simhei
+ timezone
    - 设置时区+8
+ busybox-extras net-tools curl
    - 增加常用软件工具

+ source

```
FROM adoptopenjdk/openjdk11:x86_64-alpine-jdk-11.0.16.1_1-slim
# ENV LANG=C.UTF-8
COPY ./simhei.ttf /usr/share/fonts/simhei.ttf
# 使用验证码字体包进行测试.
RUN echo -e 'http://mirrors.aliyun.com/alpine/v3.16/main\nhttp://mirrors.aliyun.com/alpine/v3.16/community' > /etc/apk/repositories \
&& apk update \
# && apk upgrade \
&& apk add tzdata busybox-extras net-tools curl \
&& cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && apk del tzdata \
&& apk add ttf-dejavu fontconfig \
&& rm -rf /var/cache/apk/*
```

