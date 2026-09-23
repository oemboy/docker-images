FROM oraclelinux:9-slim

ARG TARGETARCH

RUN set -eux; \
	groupadd --system --gid 999 mysql; \
	useradd --system --uid 999 --gid 999 --home-dir /var/lib/mysql --no-create-home mysql

ENV GOSU_VERSION=1.19

COPY gosu-${TARGETARCH} /usr/local/bin/gosu

RUN set -eux; \
	chmod +x /usr/local/bin/gosu; \
	gosu --version; \
	gosu nobody true

RUN set -eux; \
    microdnf update -y; \
  	microdnf install -y procps-ng tzdata \
        bzip2 google-noto-sans-cjk-ttc-fonts\
		gzip vim-minimal \
		openssl \
		xz \
		zstd \
		findutils \
	; \
	microdnf clean all

RUN set -eux; \
	key='BCA4 3417 C3B4 85DD 128E C6D4 B7B3 B788 A8D3 785C'; \
	export GNUPGHOME="$(mktemp -d)"; \
	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; \
	gpg --batch --export --armor "$key" > /etc/pki/rpm-gpg/RPM-GPG-KEY-mysql; \
	rm -rf "$GNUPGHOME"

ENV MYSQL_MAJOR=8.4
ENV MYSQL_VERSION=8.4.11-1.el9

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
    LC_ALL=C.UTF-8

#RUN set -eu; \
#	{ \
#		echo '[mysql-tools-community]'; \
#		echo 'name=MySQL Tools Community'; \
#		echo 'baseurl=https://repo.mysql.com/yum/mysql-tools-8.4-community/el/9/$basearch/'; \
#		echo 'enabled=1'; \
#		echo 'gpgcheck=1'; \
#		echo 'gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-mysql'; \
#		echo 'module_hotfixes=true'; \
#	} | tee /etc/yum.repos.d/mysql-community-tools.repo
#ENV MYSQL_SHELL_VERSION=8.4.10-1.el9
#RUN set -eux; \
#	microdnf install -y "mysql-shell-$MYSQL_SHELL_VERSION"; \
#	microdnf clean all; \
#	\
#	mysqlsh --version

VOLUME /var/lib/mysql

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 3306 33060
CMD ["mysqld"]