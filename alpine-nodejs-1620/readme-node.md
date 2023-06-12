# 说明
+ 部分基础镜像过大导致传输费时, 也额外消耗大量的空间
+ alpine体积小, 但是不支持中文字体, 镜像工具偏少
+ 利用基础的alpine-jdk镜像客制化, 满足生产要求
# alpine-node

+ support chinese font: simhei.ttf
  - 支持中文字体
  - 简单使用 simhei
+ timezone
    - 设置时区+8
+ busybox-extras net-tools curl
    - 增加常用软件工具

+ source


