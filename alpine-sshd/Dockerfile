FROM alpine:3.19
LABEL maintainer="chenbz35@dimpt.com"

ARG PASSWORD=admin

RUN echo -e 'https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.19/main\nhttps://mirrors.tuna.tsinghua.edu.cn/alpine/v3.19/community' > /etc/apk/repositories \
 && apk update \
 && apk upgrade \
 && apk add tzdata busybox-extras net-tools util-linux wget openssh openrc \
 && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && apk del tzdata \
 && apk add ttf-dejavu fontconfig \
 && sed -i "s/#PermitRootLogin.*/PermitRootLogin yes/g" /etc/ssh/sshd_config \
 && sed -i "s/AllowTcpForwarding.*/AllowTcpForwarding yes/g" /etc/ssh/sshd_config \
 && sed -i "s/X11Forwarding.*/X11Forwarding yes/g" /etc/ssh/sshd_config \
 && mkdir -p /root/.ssh \
 && chmod 700 /root/.ssh/ \
 && ssh-keygen -A \
 && rm -rf /var/cache/apk/* \
 && echo "root:$PASSWORD" | chpasswd

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]


