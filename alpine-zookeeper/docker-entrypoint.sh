#!/bin/sh
set -e
# 设置默认 ZK_HOME
#: ${ZK_HOME:=/opt/zookeeper}

# 如果以 root 运行 zkServer.sh，则降权
if [ "$1" = 'zkServer.sh' ] && [ "$(id -u)" = '0' ]; then
    # 只修复需要写入的目录
    chown -R devops:devops "$ZK_HOME"
    # 重新执行自身，但以 devops 用户
    exec su-exec devops "$0" "$@"
fi

# 正常执行命令
exec "$@"
