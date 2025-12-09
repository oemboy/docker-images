FROM oraclelinux:9-slim

RUN set -eux; \
	groupadd --system --gid 999 mysql; \
	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql

COPY gosu /usr/local/bin/gosu

RUN set -eux; \
	chmod +x /usr/local/bin/gosu; \
	gosu --version; \
	gosu nobody true

RUN set -eux; \
	microdnf install -y procps-ng tzdata \
    bzip2 google-noto-sans-cjk-ttc-fonts \
    gzip vim-minimal \
    openssl \
    xz \
    zstd \
    findutils \
	; \
	microdnf clean all

RUN curl -fsSL https://repo.mysql.com/RPM-GPG-KEY-mysql-2023 \
    -o /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql

ENV MYSQL_MAJOR=8.4
ENV MYSQL_VERSION=8.4.7-1.el9

RUN set -eu; \
	{ \
		echo '[mysql8.4-server-minimal]'; \
		echo 'name=MySQL 8.4 Server Minimal'; \
		echo 'enabled=1'; \
		echo 'baseurl=https://repo.mysql.com/yum/mysql-8.4-community/docker/el/9/$basearch/'; \
		echo 'gpgcheck=1'; \
		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; \
		echo 'module_hotfixes=true'; \
	} | tee /etc/yum.repos.d/mysql-community-minimal.repo

RUN set -eux; \
	microdnf install -y "mysql-community-server-minimal-$MYSQL_VERSION"; \
	microdnf clean all; \
	grep -F 'socket=/var/lib/mysql/mysql.sock' /etc/my.cnf; \
	sed -i 's!^socket=.*!socket=/var/run/mysqld/mysqld.sock!' /etc/my.cnf; \
	grep -F 'socket=/var/run/mysqld/mysqld.sock' /etc/my.cnf; \
	{ echo '[client]'; echo 'socket=/var/run/mysqld/mysqld.sock'; } >> /etc/my.cnf; \
	\
	! grep -F '!includedir' /etc/my.cnf; \
	{ echo; echo '!includedir /etc/mysql/conf.d/'; } >> /etc/my.cnf; \
	mkdir -p /etc/mysql/conf.d; \
	mkdir -p /var/lib/mysql /var/run/mysqld; \
	chown mysql:mysql /var/lib/mysql /var/run/mysqld; \
	chmod 1777 /var/lib/mysql /var/run/mysqld; \
	\
	mkdir /docker-entrypoint-initdb.d; \
	\
	mysqld --version; \
	mysql --version

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone

ENV TZ=Asia/Shanghai \
    LANG=C.UTF-8 \
    LC_ALL=C.UTF-8 \
    GOSU_VERSION=1.19

VOLUME /var/lib/mysql

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 3306 33060
CMD ["mysqld"]
