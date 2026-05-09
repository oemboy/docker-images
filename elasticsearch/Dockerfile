FROM elasticsearch:9.3.4
LABEL maintainer="chenbz35@dimpt.com"
USER root

# 1. 设置时区
# 2. 安装插件 (root权限安装，默认生成的文件就是 0:0)
# 3. 核心：全部设为 0:0，并确保组(Group)有写入权
# 这样无论容器以 UID 1000 还是随机 UID 启动，只要它在 GID 0 里就能跑
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
    ./bin/elasticsearch-plugin install --batch https://release.infinilabs.com/analysis-ik/stable/elasticsearch-analysis-ik-9.3.4.zip && \
    ./bin/elasticsearch-plugin install --batch https://release.infinilabs.com/analysis-pinyin/stable/elasticsearch-analysis-pinyin-9.3.4.zip && \
    ./bin/elasticsearch-plugin install --batch ingest-attachment && \
    chown -R 0:0 /usr/share/elasticsearch && \
    chmod -R g+rwX /usr/share/elasticsearch

# 依然切回到官方推荐的用户，但他现在是通过“组权限”来干活的
USER 1000:0