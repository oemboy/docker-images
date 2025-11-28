FROM dimpt.site:8181/platform/alpine-jre11:11.0.29 AS prepare

ARG PKG_VERSION=zookeeper-3.8.5
ARG ARCHIVE_NAME=apache-zookeeper-3.8.5-bin
ARG ZOO_URL=https://mirrors.tuna.tsinghua.edu.cn/apache/zookeeper/${PKG_VERSION}/${ARCHIVE_NAME}.tar.gz

ARG ZK_HOME=/opt/zookeeper

# ENV LANG=C.UTF-8
RUN wget -q "${ZOO_URL}" \
    && tar -xzf ${ARCHIVE_NAME}.tar.gz -C /opt \
    && mv /opt/${ARCHIVE_NAME} "${ZK_HOME}" \
    && mv ${ZK_HOME}/conf/zoo_sample.cfg ${ZK_HOME}/conf/zoo.cfg \
    && mkdir  "${ZK_HOME}/data"  \
    && sed -i '/^dataDir/c #dataDir' ${ZK_HOME}/conf/zoo.cfg \
    && echo "1"  > /opt/zookeeper/data/myid \
    && echo -e "dataDir=${ZK_HOME}/data" >> ${ZK_HOME}/conf/zoo.cfg


FROM dimpt.site:8181/platform/alpine-jre11:11.0.29
LABEL maintainer="chenbz35@dimpt.com"

ARG ZK_HOME=/opt/zookeeper
ARG ZK_CLIENT_PORT=2181

ENV PATH=$PATH:$ZK_HOME/bin
ENV ZK_HOME=${ZK_HOME}
ENV TZ=Asia/Shanghai

COPY --from=prepare ${ZK_HOME} ${ZK_HOME}
VOLUME ["${ZK_HOME}/data", "${ZK_HOME}/logs", "${ZK_HOME}/conf"]
EXPOSE ${ZK_CLIENT_PORT} 2888 3888

RUN apk update \
    && apk upgrade \
    && apk add --no-cache bash su-exec \
    && apk del curl \
    && rm -rf /var/cache/apk/*

WORKDIR ${ZK_HOME}
ENTRYPOINT ["zkServer.sh", "start-foreground"]
