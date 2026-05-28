FROM alpine:3.23
LABEL maintainer="chenbz35@dimpt.com"

RUN echo 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.23/main' > /etc/apk/repositories \
 && echo 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.23/community' >> /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add busybox-extras fontconfig net-tools openrc openssh ttf-dejavu tzdata util-linux wget \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
 && echo "Asia/Shanghai" > /etc/timezone \
 && sed -i "s/#PermitRootLogin.*/PermitRootLogin yes/g" /etc/ssh/sshd_config \
 && sed -i "s/AllowTcpForwarding.*/AllowTcpForwarding yes/g" /etc/ssh/sshd_config \
 && sed -i "s/X11Forwarding.*/X11Forwarding yes/g" /etc/ssh/sshd_config \
 && mkdir -p /root/.ssh \
 && chmod 700 /root/.ssh/ \
 && ssh-keygen -A \
 && rm -rf /var/cache/apk/*

EXPOSE 22

CMD ["sh", "-c", "echo \"root:${PASSWORD:-admin}\" | chpasswd && /usr/sbin/sshd -D"]


